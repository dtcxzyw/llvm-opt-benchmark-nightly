inline.NumInlined: 8054
inline.NumDeleted: 3226
begin_hunk_0_@_RINvMNtCsbvkFyIu7lgC_4core3stre16trim_end_matchescECs14kWLkQVSKO_14deltalake_core:_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str7patterncNtB5_7Pattern13into_searcher.exit
  %i.a = ptrtoint ptr %0 to i64
  br label %bb.a

bb.a:                                             ; preds = %_RNvXs0_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i, %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str7patterncNtB5_7Pattern13into_searcher.exit
  %.reass6.i = phi i64 [ %.reass.i, %_RNvXs0_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i ], [ %1, %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str7patterncNtB5_7Pattern13into_searcher.exit ] ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.reass6.i ; 4 uses
  %i.c = icmp samesign eq i64 %.reass6.i, 0
  br i1 %i.c, label %_RNvYNtNtNtCsbvkFyIu7lgC_4core3str7pattern12CharSearcherNtB4_15ReverseSearcher16next_reject_backCs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -1 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !noalias !22, !noundef !12 ; 3 uses
  %i.f = icmp sgt i8 %i.e, -1
  br i1 %i.f, label %bb.c, label %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs14kWLkQVSKO_14deltalake_core.exit17.i.i.i

_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs14kWLkQVSKO_14deltalake_core.exit17.i.i.i: ; preds = %bb.b
  %i.g = icmp ne i64 %.reass6.i, 1
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds i8, ptr %i.b, i64 -2 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !22, !noundef !12 ; 3 uses
  %i.j = and i8 %i.i, 31
  %i.k = zext nneg i8 %i.j to i32
  %i.l = icmp slt i8 %i.i, -64
  br i1 %i.l, label %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs14kWLkQVSKO_14deltalake_core.exit19.i.i.i, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = zext nneg i8 %i.e to i32
  br label %_RNvXs0_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i

_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs14kWLkQVSKO_14deltalake_core.exit19.i.i.i: ; preds = %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs14kWLkQVSKO_14deltalake_core.exit17.i.i.i
  %i.n = icmp ne i64 %.reass6.i, 2
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds i8, ptr %i.b, i64 -3 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !noalias !22, !noundef !12 ; 3 uses
  %i.q = and i8 %i.p, 15
  %i.r = zext nneg i8 %i.q to i32
  %i.s = icmp slt i8 %i.p, -64
  br i1 %i.s, label %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs14kWLkQVSKO_14deltalake_core.exit21.i.i.i, label %bb.e

bb.d:                                             ; preds = %bb.e, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs14kWLkQVSKO_14deltalake_core.exit17.i.i.i
  %.sroa.6.0.i.i = phi ptr [ %.sroa.6.1.i.i, %bb.e ], [ %i.h, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs14kWLkQVSKO_14deltalake_core.exit17.i.i.i ]
  %.sroa.010.0.i.i.i = phi i32 [ %i.aj, %bb.e ], [ %i.k, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs14kWLkQVSKO_14deltalake_core.exit17.i.i.i ]
  %i.t = shl nuw nsw i32 %.sroa.010.0.i.i.i, 6
  %i.u = and i8 %i.e, 63
  %i.v = zext nneg i8 %i.u to i32
  %i.w = or disjoint i32 %i.t, %i.v
  br label %_RNvXs0_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i

_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs14kWLkQVSKO_14deltalake_core.exit21.i.i.i: ; preds = %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs14kWLkQVSKO_14deltalake_core.exit19.i.i.i
  %i.x = icmp ne i64 %.reass6.i, 3
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds i8, ptr %i.b, i64 -4 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !noalias !22, !noundef !12
  %i.aa = and i8 %i.z, 7
  %i.ab = zext nneg i8 %i.aa to i32
  %i.ac = shl nuw nsw i32 %i.ab, 6
  %i.ad = and i8 %i.p, 63
  %i.ae = zext nneg i8 %i.ad to i32
  %i.af = or disjoint i32 %i.ac, %i.ae
  br label %bb.e

bb.e:                                             ; preds = %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs14kWLkQVSKO_14deltalake_core.exit21.i.i.i, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs14kWLkQVSKO_14deltalake_core.exit19.i.i.i
  %.sroa.6.1.i.i = phi ptr [ %i.y, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs14kWLkQVSKO_14deltalake_core.exit21.i.i.i ], [ %i.o, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs14kWLkQVSKO_14deltalake_core.exit19.i.i.i ]
  %.sroa.010.1.i.i.i = phi i32 [ %i.af, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs14kWLkQVSKO_14deltalake_core.exit21.i.i.i ], [ %i.r, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs14kWLkQVSKO_14deltalake_core.exit19.i.i.i ]
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
  br i1 %.not.i, label %bb.a, label %_RNvYNtNtNtCsbvkFyIu7lgC_4core3str7pattern12CharSearcherNtB4_15ReverseSearcher16next_reject_backCs14kWLkQVSKO_14deltalake_core.exit

_RNvYNtNtNtCsbvkFyIu7lgC_4core3str7pattern12CharSearcherNtB4_15ReverseSearcher16next_reject_backCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %_RNvXs0_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i
  %i.am = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.an = insertvalue { ptr, i64 } %i.am, i64 %.reass6.i, 1
  ret { ptr, i64 } %i.an
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMNtCsbvkFyIu7lgC_4core3stre9ends_withcECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i32 noundef range(i32 0, 1114112) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31
  store i32 0, ptr %i.a, align 4, !noalias !31
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
  store i8 %i.r, ptr %i.a, align 4, !alias.scope !34, !noalias !31
  br label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str7patterncNtB5_7Pattern12is_suffix_of.exit

bb.d:                                             ; preds = %bb.b
  %i.s = or disjoint i8 %i.h, -64
  store i8 %i.s, ptr %i.a, align 4, !alias.scope !34, !noalias !31
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.f, ptr %i.t, align 1, !alias.scope !34, !noalias !31
  br label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str7patterncNtB5_7Pattern12is_suffix_of.exit

bb.e:                                             ; preds = %bb.b
  %i.u = icmp samesign ult i32 %2, 65536
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = or disjoint i8 %i.l, -32
  store i8 %i.v, ptr %i.a, align 4, !alias.scope !34, !noalias !31
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.j, ptr %i.w, align 1, !alias.scope !34, !noalias !31
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.f, ptr %i.x, align 2, !alias.scope !34, !noalias !31
  br label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str7patterncNtB5_7Pattern12is_suffix_of.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.q, ptr %i.a, align 4, !alias.scope !34, !noalias !31
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.n, ptr %i.y, align 1, !alias.scope !34, !noalias !31
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.j, ptr %i.z, align 2, !alias.scope !34, !noalias !31
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.f, ptr %i.aa, align 1, !alias.scope !34, !noalias !31
  br label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str7patterncNtB5_7Pattern12is_suffix_of.exit

_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str7patterncNtB5_7Pattern12is_suffix_of.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.ab = call noundef zeroext i1 @_RNvMNtCsbvkFyIu7lgC_4core5sliceSh9ends_withCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %.sroa.0.05.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !31
  ret i1 %i.ab
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly captures(address_is_null) %1, i64 %2, ptr %.0.val, ptr %.8.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !43
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !43
  %i.b = load i64, ptr %i.a, align 8, !range !49, !noalias !43, !noundef !12
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !50, !noalias !43, !noundef !12 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.c, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, !prof !51

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %i.f, align 8, !noalias !43
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #50, !noalias !43
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.b
  %i.h = load ptr, ptr %i.f, align 8, !noalias !43, !nonnull !12, !noundef !12 ; 2 uses
  %i.i = icmp ule i64 %2, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !43
  %.not.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i, label %_RNvYNvYeNtNtCs6Po7BT7Nknu_5alloc6borrow7ToOwned8to_ownedINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTReEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit, label %bb.d

bb.d:                                             ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false), !noalias !52
  br label %_RNvYNvYeNtNtCs6Po7BT7Nknu_5alloc6borrow7ToOwned8to_ownedINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTReEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit

_RNvYNvYeNtNtCs6Po7BT7Nknu_5alloc6borrow7ToOwned8to_ownedINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTReEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %bb.d
  store i64 %i.e, ptr %0, align 8, !alias.scope !53, !noalias !54
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !53, !noalias !54
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !53, !noalias !54
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %.0.val, ptr noundef nonnull %.8.val)
  br label %bb.f

bb.f:                                             ; preds = %_RNvYNvYeNtNtCs6Po7BT7Nknu_5alloc6borrow7ToOwned8to_ownedINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTReEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB3_8Snapshot10files_fromINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEB7_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(192) %2, ptr noundef %3, i64 noundef %4, ptr noalias noundef nonnull align 8 %5, ptr noundef %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [96 x i8], align 16               ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 2 uses
  %i.e = alloca [96 x i8], align 16               ; 7 uses
  %i.f = alloca [17 x i8], align 1                ; 4 uses
  %i.g = alloca [96 x i8], align 16               ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [96 x i8], align 16               ; 8 uses
  %i.j = alloca [8 x i8], align 8                 ; 9 uses
  %i.k = alloca [8 x i8], align 8                 ; 6 uses
  store ptr %6, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !12, !noundef !12 ; 4 uses
  %i.n = atomicrmw add ptr %i.m, i64 1 monotonic, align 8
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.m, ptr %i.h, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.44.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  invoke void @_RINvMs_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB5_11ScanBuilder14with_predicateINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB7_11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noundef %3)
          to label %bb.d unwind label %.thread

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.body12:                                          ; preds = %.body, %bb.l
  br i1 %.sroa.01.2.lpad-body, label %.body12.thread, label %common.resume

.thread:                                          ; preds = %bb.b, %bb.d
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body12.thread

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB2_11ScanBuilder5build(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.i, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h)
          to label %bb.e unwind label %.thread

bb.e:                                             ; preds = %bb.d
  %i.p = load i64, ptr %i.i, align 16, !range !55, !noundef !12
  %.not = icmp eq i64 %i.p, -9223372036854775711
  br i1 %.not, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.g, ptr noundef nonnull align 16 dereferenceable(96) %i.i, i64 96, i1 false)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !56
  %i.q = call noundef align 16 dereferenceable_or_null(96) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef range(i64 1, 17) 16) #51, !noalias !56 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.g, label %bb.ae, !prof !59

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 96) #50
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream4once4OnceINtNtNtBN_6future5ready5ReadyINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEB3l_(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.g) #52
          to label %.body12.thread unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.j:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !12, !noundef !12
  store ptr %i.v, ptr %i.j, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 0, ptr %i.f, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.x = load ptr, ptr %i.w, align 8, !invariant.load !12, !nonnull !12
  %i.y = invoke { ptr, ptr } %i.x(ptr noundef nonnull %1, ptr noalias noundef nonnull align 1 captures(address) dereferenceable(17) %i.f)
          to label %bb.m unwind label %bb.k       ; 2 uses

bb.k:                                             ; preds = %bb.o, %bb.m, %bb.j
  %.sroa.01.2 = phi i1 [ true, %bb.j ], [ false, %bb.m ], [ false, %bb.o ]
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.x, %bb.t, %bb.k
  %.sroa.01.2.lpad-body = phi i1 [ false, %bb.t ], [ %.sroa.01.2, %bb.k ], [ false, %bb.x ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.ao, %bb.t ], [ %i.z, %bb.k ], [ %i.at, %bb.x ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !60)
  call void @llvm.experimental.noalias.scope.decl(metadata !63)
  call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %i.aa = load ptr, ptr %i.j, align 8, !alias.scope !69, !nonnull !12, !noundef !12
  %i.ab = atomicrmw sub ptr %i.aa, i64 1 release, align 8, !noalias !69
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.l, label %.body12

bb.l:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan4ScanE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j) #54
          to label %.body12 unwind label %bb.ad

bb.m:                                             ; preds = %bb.j
  %i.ad = extractvalue { ptr, ptr } %i.y, 0
  %i.ae = extractvalue { ptr, ptr } %i.y, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.af = load ptr, ptr %i.k, align 8, !noundef !12
  %i.ag = invoke { ptr, ptr } @_RINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB6_4Scan18scan_metadata_fromINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEBc_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noundef nonnull %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ae, i64 noundef %4, ptr noalias noundef nonnull align 8 %5, ptr noundef %i.af)
          to label %bb.n unwind label %bb.k       ; 2 uses

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ah = atomicrmw add ptr %i.m, i64 1 monotonic, align 8
  %i.ai = icmp slt i64 %i.ah, 0
  br i1 %i.ai, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = extractvalue { ptr, ptr } %i.ag, 1
  %i.ak = extractvalue { ptr, ptr } %i.ag, 0
  invoke void @_RNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_rowINtB2_16ScanRowOutStreamINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB2D_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtBa_6errors15DeltaTableErrorENtNtB2D_6marker4SendEL_EENCINvMB6_NtB6_8Snapshot10files_fromINtNtNtB39_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEE0EE7try_newBa_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.e, ptr noundef nonnull %i.m, ptr noundef nonnull %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.aj)
          to label %bb.q unwind label %bb.k

bb.p:                                             ; preds = %bb.n
  call void @llvm.trap()
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.al = load i64, ptr %i.e, align 16, !range !55, !noundef !12
  %.not8 = icmp eq i64 %i.al, -9223372036854775711
  br i1 %.not8, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.c, ptr noundef nonnull align 16 dereferenceable(96) %i.e, i64 96, i1 false)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !70
  %i.am = call noundef align 16 dereferenceable_or_null(96) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef range(i64 1, 17) 16) #51, !noalias !70 ; 3 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.s, label %bb.ab, !prof !59

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 96) #50
          to label %.noexc20 unwind label %bb.t

.noexc20:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream4once4OnceINtNtNtBN_6future5ready5ReadyINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEB3l_(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.c) #52
          to label %.body unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.v:                                             ; preds = %bb.q
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.aq, i64 40, i1 false)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !73
  %i.ar = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, 17) 8) #51, !noalias !73 ; 3 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.w, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16ScanRowOutStreamINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinIBv_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB3c_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtBP_6errors15DeltaTableErrorENtNtB3c_6marker4SendEL_EENCINvMBL_NtBL_8Snapshot10files_fromINtNtNtB4_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEE0EEE3newBP_.exit, !prof !59

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #50
          to label %.noexc22 unwind label %bb.x

.noexc22:                                         ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16ScanRowOutStreamINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3map3MapINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtBR_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EENCINvMBN_NtBN_8Snapshot10files_fromINtNtNtB3u_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEE0EEEBR_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.d) #52
end_hunk_0
begin_hunk_1_@_RINvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators18round_ms_datetimesNvB2_13ceil_datetimeEB8_:bb.a
  %i.x = alloca [96 x i8], align 16               ; 21 uses
  %i.y = alloca [96 x i8], align 16               ; 5 uses
  %i.z = alloca [96 x i8], align 8                ; 8 uses
  %i.aa = alloca [48 x i8], align 8               ; 5 uses
  %i.ab = alloca [24 x i8], align 8               ; 9 uses
  %i.ac = alloca [24 x i8], align 8               ; 9 uses
  %i.ad = alloca [48 x i8], align 8               ; 9 uses
  %i.ae = load i64, ptr %1, align 16, !range !3996, !noundef !12 ; 4 uses
  %i.af = xor i64 %i.ae, -9223372036854775808
  %i.ag = icmp slt i64 %i.ae, 0
  %i.ah = select i1 %i.ag, i64 %i.af, i64 16
  switch i64 %i.ah, label %bb.b [
    i64 8, label %bb.c
    i64 9, label %bb.e
    i64 14, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %1, i64 96, i1 false)
  br label %bb.af

bb.c:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !12 ; 3 uses
  %i.ak = srem i64 %i.aj, 1000
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.d, label %_RNvYNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators13ceil_datetimeINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTxEE4callBa_.exit

bb.d:                                             ; preds = %bb.c
  %i.am = sitofp i64 %i.aj to double
  %i.an = fdiv double %i.am, 1.000000e+03
  %i.ao = tail call double @llvm.floor.f64(double %i.an)
  %i.ap = tail call i64 @llvm.fptosi.sat.i64.f64(double %i.ao)
  %i.aq = mul i64 %i.ap, 1000
  %i.ar = add i64 %i.aq, 1000
  br label %_RNvYNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators13ceil_datetimeINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTxEE4callBa_.exit

bb.e:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load i64, ptr %i.as, align 8, !noundef !12 ; 3 uses
  %i.au = srem i64 %i.at, 1000
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.f, label %_RNvYNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators13ceil_datetimeINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTxEE4callBa_.exit12

bb.f:                                             ; preds = %bb.e
  %i.aw = sitofp i64 %i.at to double
  %i.ax = fdiv double %i.aw, 1.000000e+03
  %i.ay = tail call double @llvm.floor.f64(double %i.ax)
  %i.az = tail call i64 @llvm.fptosi.sat.i64.f64(double %i.ay)
  %i.ba = mul i64 %i.az, 1000
  %i.bb = add i64 %i.ba, 1000
  br label %_RNvYNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators13ceil_datetimeINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTxEE4callBa_.exit12

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noundef nonnull align 8 dereferenceable(48) %i.bc, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !noundef !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, i64 noundef %i.be, i1 noundef zeroext false, i64 noundef 8, i64 noundef 96)
          to label %bb.l unwind label %bb.k

bb.h:                                             ; preds = %.body.thread9, %bb.i
  %.pn9 = phi { ptr, i32 } [ %i.bh, %bb.i ], [ %.pn7, %.body.thread9 ]
  %i.bf = load i64, ptr %1, align 16, !range !3996, !noundef !12
  %i.bg = icmp eq i64 %i.bf, -9223372036854775794
  br i1 %i.bg, label %bb.bz, label %bb.ca

bb.i:                                             ; preds = %bb.ad
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

_RNvYNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators13ceil_datetimeINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTxEE4callBa_.exit: ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i = phi i64 [ %i.ar, %bb.d ], [ %i.aj, %bb.c ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.i.i, ptr %i.bi, align 8
  store i64 -9223372036854775800, ptr %0, align 16
  br label %bb.j

bb.j:                                             ; preds = %bb.ae, %_RNvYNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators13ceil_datetimeINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTxEE4callBa_.exit12, %_RNvYNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators13ceil_datetimeINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTxEE4callBa_.exit
  %i.bj = phi i64 [ %.pre, %bb.ae ], [ %i.ae, %_RNvYNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators13ceil_datetimeINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTxEE4callBa_.exit12 ], [ %i.ae, %_RNvYNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators13ceil_datetimeINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTxEE4callBa_.exit ]
  %i.bk = icmp eq i64 %i.bj, -9223372036854775794
  br i1 %i.bk, label %bb.af, label %bb.ag

_RNvYNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators13ceil_datetimeINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTxEE4callBa_.exit12: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i11 = phi i64 [ %i.bb, %bb.f ], [ %i.at, %bb.e ]
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.i.i11, ptr %i.bl, align 8
  store i64 -9223372036854775799, ptr %0, align 16
  br label %bb.j

.body.thread9:                                    ; preds = %bb.aa, %.body, %bb.by, %bb.k
  %.pn7 = phi { ptr, i32 } [ %i.bm, %bb.k ], [ %.pn.ph, %bb.by ], [ %lpad.thr_comm.split-lp, %.body ], [ %i.dq, %bb.aa ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(48) %i.ad) #52
          to label %bb.h unwind label %bb.bw

bb.k:                                             ; preds = %bb.m, %bb.g
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread9

bb.l:                                             ; preds = %bb.g
  %i.bn = load i64, ptr %i.t, align 8, !range !49, !noundef !12
  %i.bo = trunc nuw i64 %i.bn to i1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !range !50, !noundef !12 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  br i1 %i.bo, label %bb.m, label %bb.n, !prof !51

bb.m:                                             ; preds = %bb.l
  %i.bs = load i64, ptr %i.br, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.bq, i64 %i.bs) #50
          to label %bb.bx unwind label %bb.k

bb.n:                                             ; preds = %bb.l
  %i.bt = load ptr, ptr %i.br, align 8, !nonnull !12, !noundef !12
  %i.bu = icmp ule i64 %i.be, %i.bq
  tail call void @llvm.assume(i1 %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  store i64 %i.bq, ptr %i.ac, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  store ptr %i.bt, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 3 uses
  store i64 0, ptr %i.bw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ad, i64 40 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !noundef !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, i64 noundef %i.by, i1 noundef zeroext false, i64 noundef 16, i64 noundef 96)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.q, %bb.n
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.p:                                             ; preds = %bb.n
  %i.ca = load i64, ptr %i.s, align 8, !range !49, !noundef !12
  %i.cb = trunc nuw i64 %i.ca to i1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !range !50, !noundef !12 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  br i1 %i.cb, label %bb.q, label %bb.r, !prof !51

bb.q:                                             ; preds = %bb.p
  %i.cf = load i64, ptr %i.ce, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.cd, i64 %i.cf) #50
          to label %bb.bx unwind label %bb.o

bb.r:                                             ; preds = %bb.p
  %i.cg = load ptr, ptr %i.ce, align 8, !nonnull !12, !noundef !12
  %i.ch = icmp ule i64 %i.by, %i.cd
  tail call void @llvm.assume(i1 %i.ch)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  store i64 %i.cd, ptr %i.ab, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  store ptr %i.cg, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 3 uses
  store i64 0, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.cm = load i64, ptr %i.bd, align 8, !noundef !12
  %i.cn = getelementptr inbounds nuw [96 x i8], ptr %i.cl, i64 %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.cp = load ptr, ptr %i.co, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.cq = load i64, ptr %i.bx, align 8, !noundef !12
  %i.cr = getelementptr inbounds nuw [96 x i8], ptr %i.cp, i64 %i.cq
  invoke void @_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEIBX_NtNtNtB1q_11expressions7scalars6ScalarEEINtB5_7ZipImplBW_B2d_E3newCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.aa, ptr noundef nonnull %i.cl, ptr noundef nonnull %i.cn, ptr noundef nonnull %i.cp, ptr noundef nonnull %i.cr)
          to label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_NtNtNtBN_11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit unwind label %.body.thread13.loopexit.split-lp

.body.thread13.loopexit:                          ; preds = %bb.bb, %bb.ba, %bb.ay, %bb.at, %bb.s, %bb.bj, %_RNvXsH_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalarsNtB5_6ScalarNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit, %bb.be
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread13.loopexit.split-lp:                 ; preds = %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body:                                            ; preds = %.thread16
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread9

_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_NtNtNtBN_11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.r
  %.sroa.0.0.copyload = load ptr, ptr %i.aa, align 8 ; 2 uses
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 2 uses
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %.sroa.52.0.copyload = load i64, ptr %.sroa.52.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %i.cs = icmp ult i64 %.sroa.52.0.copyload, %.sroa.7.0.copyload
  br i1 %i.cs, label %.lr.ph, label %.thread16

.lr.ph:                                           ; preds = %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_NtNtNtBN_11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload) ]
  %i.ct = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.cu = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.cv = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  %i.cw = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.cx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.cy = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.cz = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.da = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.db = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.dc = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.dd = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph, %bb.bv
  %.sroa.52.021 = phi i64 [ %.sroa.52.0.copyload, %.lr.ph ], [ %i.df, %bb.bv ] ; 3 uses
  %i.df = add i64 %.sroa.52.021, 1                ; 2 uses
  %i.dg = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.52.021 ; 4 uses
  %i.dh = getelementptr inbounds nuw [96 x i8], ptr %.sroa.41.0.copyload, i64 %.sroa.52.021 ; 26 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.experimental.noalias.scope.decl(metadata !5948)
  call void @llvm.experimental.noalias.scope.decl(metadata !5951)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !5953
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.dg)
          to label %.noexc unwind label %.body.thread13.loopexit

.noexc:                                           ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !5953
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  invoke fastcc void @_RNvXs1G_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.di)
          to label %bb.v unwind label %bb.u, !noalias !5948

bb.t:                                             ; preds = %bb.w, %bb.u
  %.pn.i = phi { ptr, i32 } [ %i.dn, %bb.w ], [ %i.dj, %bb.u ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q) #52
          to label %.body.thread unwind label %bb.x, !noalias !5948

bb.u:                                             ; preds = %.noexc
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.v:                                             ; preds = %.noexc
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 88
  %i.dl = load i8, ptr %i.dk, align 8, !range !208, !alias.scope !5951, !noalias !5948, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !5953
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dm)
          to label %bb.ah unwind label %bb.w, !noalias !5948

bb.w:                                             ; preds = %bb.v
  %i.dn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.p) #52
          to label %bb.t unwind label %bb.x, !noalias !5948

bb.x:                                             ; preds = %bb.w, %bb.t
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !5948
  unreachable

.thread16:                                        ; preds = %bb.bv, %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_NtNtNtBN_11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  invoke void @_RNvMs1_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalarsNtB5_10StructData7try_new(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.w, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.v, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.u)
          to label %bb.y unwind label %.body

bb.y:                                             ; preds = %.thread16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.experimental.noalias.scope.decl(metadata !5954)
  %i.dp = load i64, ptr %i.w, align 16, !range !359, !alias.scope !5954, !noalias !5957, !noundef !12
  %.not.i = icmp eq i64 %i.dp, -9223372036854775743
  br i1 %.not.i, label %bb.ad, label %bb.z, !prof !105

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !5959
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.r, ptr noundef nonnull readonly align 16 dereferenceable(96) %i.w, i64 96, i1 false), !noalias !5957
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @411, i64 noundef 43, ptr noundef nonnull %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @412, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #50
          to label %bb.ab unwind label %bb.aa, !noalias !5959

bb.aa:                                            ; preds = %bb.z
  %i.dq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.r) #52
          to label %.body.thread9 unwind label %bb.ac, !noalias !5959

bb.ab:                                            ; preds = %bb.z
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.dr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !5959
  unreachable

bb.ad:                                            ; preds = %bb.y
  %i.ds = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dt, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.ds, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  store i64 -9223372036854775794, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(48) %i.ad)
          to label %bb.ae unwind label %bb.i

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %.pre = load i64, ptr %1, align 16, !range !3996
  br label %bb.j

bb.af:                                            ; preds = %bb.ag, %bb.j, %bb.b
  ret void

bb.ag:                                            ; preds = %bb.j
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(96) %1)
  br label %bb.af

bb.ah:                                            ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ct, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 48, i1 false), !noalias !5951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !5953
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !5951
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false), !noalias !5951
  store i8 %i.dl, ptr %i.cv, align 8, !alias.scope !5948, !noalias !5951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !5953
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !5953
  %i.du = load i64, ptr %i.bw, align 8, !alias.scope !5960, !noalias !5963, !noundef !12 ; 3 uses
  %i.dv = load i64, ptr %i.ac, align 8, !range !378, !alias.scope !5960, !noalias !5963, !noundef !12
  %i.dw = icmp eq i64 %i.du, %i.dv
  br i1 %i.dw, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE8grow_oneBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %bb.al unwind label %bb.aj, !noalias !5963

bb.aj:                                            ; preds = %bb.ai
  %i.dx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.z) #52
          to label %.body.thread unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.al:                                            ; preds = %bb.ai, %bb.ah
  %i.dz = load ptr, ptr %i.bv, align 8, !alias.scope !5960, !noalias !5963, !nonnull !12, !noundef !12
  %i.ea = getelementptr inbounds nuw [96 x i8], ptr %i.dz, i64 %i.du
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ea, ptr noundef nonnull align 8 dereferenceable(96) %i.z, i64 96, i1 false)
  %i.eb = add i64 %i.du, 1
  store i64 %i.eb, ptr %i.bw, align 8, !alias.scope !5960, !noalias !5963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.experimental.noalias.scope.decl(metadata !5965)
  call void @llvm.experimental.noalias.scope.decl(metadata !5968)
  %i.ec = load i64, ptr %i.dh, align 16, !range !3996, !alias.scope !5968, !noalias !5965, !noundef !12 ; 2 uses
  %i.ed = xor i64 %i.ec, -9223372036854775808
  %i.ee = icmp slt i64 %i.ec, 0
  %i.ef = select i1 %i.ee, i64 %i.ed, i64 16
  switch i64 %i.ef, label %bb.am [
    i64 0, label %bb.an
    i64 1, label %bb.ao
    i64 2, label %bb.ap
    i64 3, label %bb.aq
    i64 4, label %bb.ar
    i64 5, label %bb.as
    i64 6, label %bb.at
    i64 7, label %bb.au
    i64 8, label %bb.av
    i64 9, label %bb.aw
    i64 10, label %bb.ax
    i64 11, label %bb.ay
    i64 12, label %bb.az
    i64 13, label %bb.ba
    i64 14, label %bb.bb
    i64 15, label %bb.be
    i64 16, label %bb.bj
  ]

bb.am:                                            ; preds = %bb.al
  unreachable

bb.an:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.x, ptr noundef nonnull readonly align 16 dereferenceable(96) %i.dh, i64 96, i1 false), !alias.scope !5970
  br label %_RNvXsH_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalarsNtB5_6ScalarNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.ao:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.x, ptr noundef nonnull readonly align 16 dereferenceable(96) %i.dh, i64 96, i1 false), !alias.scope !5970
  br label %_RNvXsH_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalarsNtB5_6ScalarNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.ap:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.x, ptr noundef nonnull readonly align 16 dereferenceable(96) %i.dh, i64 96, i1 false), !alias.scope !5970
end_hunk_1
begin_hunk_2_@_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations7restore7execute0B7_:bb.a

bb.jf:                                            ; preds = %bb.je
  %i.zy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !8241
  unreachable

bb.jg:                                            ; preds = %bb.jd
  %i.zz = landingpad { ptr, i32 }
          cleanup
  br label %.body246

bb.jh:                                            ; preds = %.noexc245
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.zs, ptr noundef nonnull align 8 dereferenceable(48) %i.s, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !8241
  %.val195 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %.val196 = load i64, ptr %.sroa.5657.0..sroa_idx, align 8, !noundef !12
  %i.aaa = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !8244
  %i.aab = invoke { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @37)
          to label %.noexc251 unwind label %bb.jk ; 2 uses

.noexc251:                                        ; preds = %bb.jh
  %i.aac = getelementptr inbounds nuw [48 x i8], ptr %.val195, i64 %.val196
  %i.aad = extractvalue { i64, i64 } %i.aab, 0
  %i.aae = extractvalue { i64, i64 } %i.aab, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) @39, i64 32, i1 false), !noalias !8244
  %.sroa.43.0..sroa_idx.i248 = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store i64 %i.aad, ptr %.sroa.43.0..sroa_idx.i248, align 8, !noalias !8244
  %.sroa.54.0..sroa_idx.i249 = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store i64 %i.aae, ptr %.sroa.54.0..sroa_idx.i249, align 8, !noalias !8244
  invoke void @_RINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB6_7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtB2l_8adapters3map3MapINtNtNtB2n_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewENCNCNvNtNtB4j_10operations7restore7execute0s1_0EEB4j_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef nonnull %.val195, ptr noundef nonnull %i.aac)
          to label %bb.jl unwind label %bb.ji, !noalias !8244

bb.ji:                                            ; preds = %.noexc251
  %i.aaf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.r)
          to label %.body252 unwind label %bb.jj, !noalias !8244

bb.jj:                                            ; preds = %bb.ji
  %i.aag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !8244
  unreachable

bb.jk:                                            ; preds = %bb.jh
  %i.aah = landingpad { ptr, i32 }
          cleanup
  br label %.body252

bb.jl:                                            ; preds = %.noexc251
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aaa, ptr noundef nonnull align 8 dereferenceable(48) %i.r, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !8244
  %.val193 = load ptr, ptr %i.zq, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %.val194 = load i64, ptr %i.zr, align 8, !noundef !12
  %i.aai = getelementptr inbounds nuw [48 x i8], ptr %.val193, i64 %.val194
  %i.aaj = getelementptr inbounds nuw i8, ptr %1, i64 616 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !8247
  store ptr %.val193, ptr %i.q, align 8, !alias.scope !8254, !noalias !8258
  %.sroa.5512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.aai, ptr %.sroa.5512.0..sroa_idx, align 8, !alias.scope !8254, !noalias !8258
  %.sroa.6513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.aaa, ptr %.sroa.6513.0..sroa_idx, align 8, !alias.scope !8254, !noalias !8258
  invoke void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEINtB2_12SpecFromIterBU_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB2p_6filter6FilterINtNtNtB2t_5slice4iter4IterNtNtNtB10_8snapshot9iterators15LogicalFileViewENCNCNvNtNtB12_10operations7restore7execute0s2_0ENCB4J_s3_0EE9from_iterB12_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aaj, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.q)
          to label %bb.jn unwind label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.aak = landingpad { ptr, i32 }
          cleanup
  br label %.body393

bb.jn:                                            ; preds = %bb.jl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !8247
  %i.aal = getelementptr inbounds nuw i8, ptr %1, i64 1552
  store i8 1, ptr %i.aal, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  %i.aam = invoke { i64, i32 } @_RNvMs5_NtCs2pqxYH9ZEk8_3std4timeNtB5_10SystemTime3now()
          to label %bb.jp unwind label %bb.jo     ; 2 uses

bb.jo:                                            ; preds = %bb.jp, %bb.jn
  %i.aan = landingpad { ptr, i32 }
          cleanup
  br label %bb.js

bb.jp:                                            ; preds = %bb.jn
  %i.aao = extractvalue { i64, i32 } %i.aam, 0
  %i.aap = extractvalue { i64, i32 } %i.aam, 1
  store i64 %i.aao, ptr %i.bs, align 8
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i32 %i.aap, ptr %i.aaq, align 8
  invoke void @_RNvMs5_NtCs2pqxYH9ZEk8_3std4timeNtB5_10SystemTime14duration_since(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bs, i64 noundef 0, i32 noundef 0)
          to label %bb.jq unwind label %bb.jo

bb.jq:                                            ; preds = %bb.jp
  call void @llvm.experimental.noalias.scope.decl(metadata !8259)
  %i.aar = load i64, ptr %i.bt, align 8, !range !49, !alias.scope !8259, !noalias !8262, !noundef !12
  %i.aas = trunc nuw i64 %i.aar to i1
  br i1 %i.aas, label %bb.jr, label %bb.ju, !prof !51

bb.jr:                                            ; preds = %bb.jq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !8264
  %i.aat = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.aau = load i64, ptr %i.aat, align 8, !alias.scope !8259, !noalias !8262, !noundef !12
  %i.aav = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.aaw = load i32, ptr %i.aav, align 8, !range !4873, !alias.scope !8259, !noalias !8262, !noundef !12
  store i64 %i.aau, ptr %i.ak, align 8, !noalias !8264
  %i.aax = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i32 %i.aaw, ptr %i.aax, align 8, !noalias !8264
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @411, i64 noundef 43, ptr noundef nonnull %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @414, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @227) #50
          to label %.noexc142 unwind label %bb.jt

.noexc142:                                        ; preds = %bb.jr
  unreachable

bb.js:                                            ; preds = %bb.jt, %bb.jo
  %.pn38 = phi { ptr, i32 } [ %i.aay, %bb.jt ], [ %i.aan, %bb.jo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  br label %bb.kb

bb.jt:                                            ; preds = %bb.jr
  %i.aay = landingpad { ptr, i32 }
          cleanup
  br label %bb.js

bb.ju:                                            ; preds = %bb.jq
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.aba = load i64, ptr %i.aaz, align 8, !alias.scope !8259, !noalias !8262, !noundef !12
  %i.abb = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.abc = load i32, ptr %i.abb, align 8, !range !4873, !alias.scope !8259, !noalias !8262, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  %i.abd = mul i64 %i.aba, 1000
  %i.abe = udiv i32 %i.abc, 1000000
  %i.abf = zext nneg i32 %i.abe to i64
  %i.abg = add i64 %i.abd, %i.abf
  %i.abh = getelementptr inbounds nuw i8, ptr %1, i64 640 ; 2 uses
  store i64 %i.abg, ptr %i.abh, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  %.val191 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %.val192 = load i64, ptr %.sroa.5657.0..sroa_idx, align 8, !noundef !12
  %i.abi = getelementptr inbounds nuw [48 x i8], ptr %.val191, i64 %.val192
  %i.abj = getelementptr inbounds nuw i8, ptr %1, i64 648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !8265
  store ptr %.val191, ptr %i.p, align 8, !alias.scope !8272, !noalias !8276
  %.sroa.0517.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.abi, ptr %.sroa.0517.sroa.5.0..sroa_idx, align 8, !alias.scope !8272, !noalias !8276
  %.sroa.0517.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.zs, ptr %.sroa.0517.sroa.6.0..sroa_idx, align 8, !alias.scope !8272, !noalias !8276
  %.sroa.5518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr %i.abh, ptr %.sroa.5518.0..sroa_idx, align 8, !alias.scope !8272, !noalias !8276
  invoke void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions6RemoveEINtB2_12SpecFromIterBU_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB2s_6filter6FilterINtNtNtB2w_5slice4iter4IterNtNtNtB10_8snapshot9iterators15LogicalFileViewENCNCNvNtNtB12_10operations7restore7execute0s4_0ENCB4M_s5_0EE9from_iterB12_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.abj, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.p)
          to label %bb.jw unwind label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %i.abk = landingpad { ptr, i32 }
          cleanup
  br label %.body388

bb.jw:                                            ; preds = %bb.ju
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !8265
  %i.abl = getelementptr inbounds nuw i8, ptr %1, i64 1551
  store i8 1, ptr %i.abl, align 1
  %i.abm = getelementptr inbounds nuw i8, ptr %1, i64 1547
  %i.abn = load i8, ptr %i.abm, align 1, !range !208, !noundef !12
  %i.abo = trunc nuw i8 %i.abn to i1
  br i1 %i.abo, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit286, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  %i.abp = getelementptr inbounds nuw i8, ptr %1, i64 168
  %.val184 = load ptr, ptr %i.abp, align 8, !nonnull !12, !noundef !12
  %i.abq = getelementptr i8, ptr %1, i64 176
  %.val185 = load ptr, ptr %i.abq, align 8, !nonnull !12, !align !209, !noundef !12 ; 2 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %.val185, i64 16
  %i.abs = load i64, ptr %i.abr, align 8, !range !490, !invariant.load !12
  %i.abt = add nsw i64 %i.abs, -1
  %i.abu = and i64 %i.abt, -16
  %i.abv = getelementptr inbounds nuw i8, ptr %.val184, i64 %i.abu
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  store i8 0, ptr %i.br, align 1
  %i.abx = getelementptr inbounds nuw i8, ptr %.val185, i64 112
  %i.aby = load ptr, ptr %i.abx, align 8, !invariant.load !12, !nonnull !12
  %i.abz = invoke { ptr, ptr } %i.aby(ptr noundef nonnull %i.abw, ptr noalias noundef nonnull align 1 captures(address) dereferenceable(17) %i.br)
          to label %.thread860 unwind label %bb.jy ; 2 uses

bb.jy:                                            ; preds = %bb.jx
  %i.aca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit

.thread860:                                       ; preds = %bb.jx
  %i.acb = extractvalue { ptr, ptr } %i.abz, 0    ; 3 uses
  %i.acc = extractvalue { ptr, ptr } %i.abz, 1    ; 4 uses
  store ptr %i.acb, ptr %i.zl, align 8
  %i.acd = getelementptr inbounds nuw i8, ptr %1, i64 1568
  store ptr %i.acc, ptr %i.acd, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.acb) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.acc) ]
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acc, i64 16
  %i.acf = load i64, ptr %i.ace, align 8, !range !490, !invariant.load !12
  %i.acg = add nsw i64 %i.acf, -1
  %i.ach = and i64 %i.acg, -16
  %i.aci = getelementptr inbounds nuw i8, ptr %i.acb, i64 %i.ach
  %i.acj = getelementptr inbounds nuw i8, ptr %i.aci, i64 16
  %i.ack = getelementptr inbounds nuw i8, ptr %1, i64 1576
  store ptr %i.acj, ptr %i.ack, align 8
  %.sroa.8533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1584
  store ptr %i.acc, ptr %.sroa.8533.0..sroa_idx, align 8
  %.sroa.9534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1592
  store ptr %i.aaj, ptr %.sroa.9534.0..sroa_idx, align 8
  %.sroa.11536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1680
  store i8 0, ptr %.sroa.11536.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10541.sroa.6)
  %i.acl = getelementptr inbounds nuw i8, ptr %1, i64 1576
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1055.i.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  %i.acm = getelementptr inbounds nuw i8, ptr %1, i64 1680
  br label %bb.kj

bb.jz:                                            ; preds = %bb.mf, %.body279
  %.pn49 = phi { ptr, i32 } [ %i.ahc, %bb.mf ], [ %eh.lpad-body280, %.body279 ] ; 2 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %1, i64 1560 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8277)
  call void @llvm.experimental.noalias.scope.decl(metadata !8280)
  %i.aco = load ptr, ptr %i.acn, align 8, !alias.scope !8283, !nonnull !12, !noundef !12
  %i.acp = atomicrmw sub ptr %i.aco, i64 1 release, align 8, !noalias !8283
  %i.acq = icmp eq i64 %i.acp, 1
  br i1 %i.acq, label %bb.ka, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.ka:                                            ; preds = %bb.jz
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.acn) #54
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.y

.body388:                                         ; preds = %bb.tr, %bb.to, %bb.jv, %bb.ul, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit
  %.pn111 = phi { ptr, i32 } [ %i.axp, %bb.to ], [ %.pn108.pn, %bb.ul ], [ %.pn108.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit ], [ %i.abk, %bb.jv ], [ %i.axr, %bb.tr ]
  %i.acr = getelementptr inbounds nuw i8, ptr %1, i64 1551
  store i8 0, ptr %i.acr, align 1
  br label %bb.kb

bb.kb:                                            ; preds = %.body388, %bb.js
  %.pn111.pn = phi { ptr, i32 } [ %.pn111, %.body388 ], [ %.pn38, %bb.js ] ; 2 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %1, i64 1552
  %i.act = load i8, ptr %i.acs, align 8, !range !208, !noundef !12
  %i.acu = trunc nuw i8 %i.act to i1
  br i1 %i.acu, label %bb.um, label %.body393

.body393:                                         ; preds = %bb.tw, %bb.tt, %bb.jm, %bb.um, %bb.kb
  %.pn114 = phi { ptr, i32 } [ %i.axu, %bb.tt ], [ %.pn111.pn, %bb.um ], [ %.pn111.pn, %bb.kb ], [ %i.aak, %bb.jm ], [ %i.axw, %bb.tw ]
  %i.acv = getelementptr inbounds nuw i8, ptr %1, i64 1552
  store i8 0, ptr %i.acv, align 8
  %i.acw = getelementptr inbounds nuw i8, ptr %1, i64 568
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.acw)
          to label %.body252 unwind label %bb.y

.body252:                                         ; preds = %.body393, %bb.jk, %bb.ji, %bb.ri
  %.pn116 = phi { ptr, i32 } [ %i.atp, %bb.ri ], [ %i.aaf, %bb.ji ], [ %.pn114, %.body393 ], [ %i.aah, %bb.jk ]
  %i.acx = getelementptr inbounds nuw i8, ptr %1, i64 520
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.acx)
          to label %.body246 unwind label %bb.y

.body246:                                         ; preds = %.body252, %bb.jg, %bb.je, %bb.rj
  %.pn118 = phi { ptr, i32 } [ %i.atr, %bb.rj ], [ %i.zx, %bb.je ], [ %.pn116, %.body252 ], [ %i.zz, %bb.jg ]
  %i.acy = getelementptr inbounds nuw i8, ptr %1, i64 496
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEEB1l_(ptr noalias noundef align 8 dereferenceable(24) %i.acy) #52
          to label %.body363 unwind label %bb.y

bb.kc:                                            ; preds = %bb.jc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.39.sroa.15, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.5504, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEEB1l_.exit401

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEEB1l_.exit401: ; preds = %bb.ty, %bb.kc
  %.sroa.0602.2 = phi i64 [ %i.zm, %bb.kc ], [ %.sroa.0602.4, %bb.ty ]
  %.sroa.17.2 = phi i64 [ %.sroa.3503.sroa.0.0.copyload, %bb.kc ], [ %.sroa.17.4, %bb.ty ]
  %.sroa.30.2 = phi i64 [ %.sroa.3503.sroa.3.0.copyload, %bb.kc ], [ %.sroa.30.4, %bb.ty ]
  %.sroa.39.sroa.0.2 = phi i64 [ %.sroa.3503.sroa.5.0.copyload, %bb.kc ], [ %.sroa.39.sroa.0.4, %bb.ty ]
  %i.acz = getelementptr inbounds nuw i8, ptr %1, i64 472 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acz)
          to label %bb.ke unwind label %bb.kd

bb.kd:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEEB1l_.exit401
  %i.ada = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBU_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acz)
          to label %.body261 unwind label %bb.kf

bb.ke:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEEB1l_.exit401
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBU_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acz)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEEB1l_.exit unwind label %bb.ht

bb.kf:                                            ; preds = %bb.kd
  %i.adb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

.body363:                                         ; preds = %bb.tx, %bb.rk, %bb.rn, %.body246, %bb.iu
  %.pn120.pn = phi { ptr, i32 } [ %.pn120, %bb.iu ], [ %.pn118, %.body246 ], [ %i.att, %bb.rk ], [ %i.atv, %bb.rn ], [ %i.axz, %bb.tx ]
  %i.adc = getelementptr inbounds nuw i8, ptr %1, i64 472
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEEB1l_(ptr noalias noundef align 8 dereferenceable(24) %i.adc) #52
          to label %.body261 unwind label %bb.y

bb.kg:                                            ; preds = %bb.kl, %bb.kk
  %i.add = landingpad { ptr, i32 }
          cleanup
  br label %.body279

.body279:                                         ; preds = %.body23.i, %bb.kg
  %i.ade = phi ptr [ %i.adf, %bb.kg ], [ %i.adi, %.body23.i ]
  %eh.lpad-body280 = phi { ptr, i32 } [ %i.add, %bb.kg ], [ %.pn14.pn.pn.i, %.body23.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10541.sroa.6)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations7restore21check_files_available0EBO_(ptr noundef nonnull align 8 %i.ade) #52
          to label %bb.jz unwind label %bb.y

bb.kh:                                            ; preds = %bb.a
  %.phi.trans.insert800 = getelementptr inbounds nuw i8, ptr %1, i64 1680
  %.pre801 = load i8, ptr %.phi.trans.insert800, align 8, !range !1459, !noalias !8284
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10541.sroa.6)
  %i.adf = getelementptr inbounds nuw i8, ptr %1, i64 1576 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1055.i.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  %i.adg = getelementptr inbounds nuw i8, ptr %1, i64 1680 ; 2 uses
  switch i8 %.pre801, label %default.unreachable859 [
    i8 0, label %bb.kj
    i8 1, label %bb.kk
    i8 2, label %bb.kl
    i8 3, label %bb.ki
  ]

bb.ki:                                            ; preds = %bb.kh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !8284
  br label %bb.kn

.body23.i:                                        ; preds = %bb.le, %bb.lj, %bb.lx, %bb.la, %bb.kx, %.body.i263
  %i.adh = phi ptr [ %i.aee, %bb.lx ], [ %i.aee, %bb.la ], [ %i.aew, %.body.i263 ], [ %i.aee, %bb.kx ], [ %i.adx, %bb.le ], [ %i.adx, %bb.lj ]
  %i.adi = phi ptr [ %i.aef, %bb.lx ], [ %i.aef, %bb.la ], [ %i.aex, %.body.i263 ], [ %i.aef, %bb.kx ], [ %i.ady, %bb.le ], [ %i.ady, %bb.lj ]
  %.pn14.pn.pn.i = phi { ptr, i32 } [ %i.agx, %bb.lx ], [ %i.afj, %bb.la ], [ %.pn12.i, %.body.i263 ], [ %i.afh, %bb.kx ], [ %.pn.i271, %bb.le ], [ %i.afu, %bb.lj ]
  store i8 2, ptr %i.adh, align 8, !noalias !8284
  br label %.body279

bb.kj:                                            ; preds = %.thread860, %bb.kh
  %i.adj = phi ptr [ %i.acm, %.thread860 ], [ %i.adg, %bb.kh ]
  %i.adk = phi ptr [ %i.acl, %.thread860 ], [ %i.adf, %bb.kh ] ; 2 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %1, i64 1600
  %i.adm = load ptr, ptr %i.adk, align 8, !noalias !8284, !nonnull !12, !noundef !12
  %i.adn = getelementptr inbounds nuw i8, ptr %1, i64 1584
  %i.ado = load ptr, ptr %i.adn, align 8, !noalias !8284, !nonnull !12, !align !209, !noundef !12
  store ptr %i.adm, ptr %i.adl, align 8, !noalias !8284
  %i.adp = getelementptr inbounds nuw i8, ptr %1, i64 1608
  store ptr %i.ado, ptr %i.adp, align 8, !noalias !8284
  %i.adq = getelementptr inbounds nuw i8, ptr %1, i64 1592
  %i.adr = load ptr, ptr %i.adq, align 8, !noalias !8284, !nonnull !12, !align !209, !noundef !12 ; 2 uses
  %i.ads = getelementptr i8, ptr %i.adr, i64 8
  %.val21.i = load ptr, ptr %i.ads, align 8, !noalias !8288, !nonnull !12, !noundef !12 ; 3 uses
  %i.adt = getelementptr i8, ptr %i.adr, i64 16
  %.val22.i = load i64, ptr %i.adt, align 8, !noalias !8288, !noundef !12
  %i.adu = getelementptr inbounds nuw [272 x i8], ptr %.val21.i, i64 %.val22.i ; 2 uses
  %i.adv = getelementptr inbounds nuw i8, ptr %1, i64 1616
  store ptr %.val21.i, ptr %i.adv, align 8, !noalias !8284
  %i.adw = getelementptr inbounds nuw i8, ptr %1, i64 1624
  store ptr %i.adu, ptr %i.adw, align 8, !noalias !8284
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit.i270

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit.i270: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit_crit_edge.i, %bb.kj
  %i.adx = phi ptr [ %i.aee, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit_crit_edge.i ], [ %i.adj, %bb.kj ] ; 6 uses
  %i.ady = phi ptr [ %i.aef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit_crit_edge.i ], [ %i.adk, %bb.kj ] ; 6 uses
  %i.adz = phi ptr [ %.pre79.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit_crit_edge.i ], [ %i.adu, %bb.kj ]
  %i.aea = phi ptr [ %.pre.i269, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit_crit_edge.i ], [ %.val21.i, %bb.kj ] ; 4 uses
  %i.aeb = icmp eq ptr %i.aea, %i.adz
  br i1 %i.aeb, label %bb.me, label %bb.lb

bb.kk:                                            ; preds = %bb.kh
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @224) #56
          to label %.noexc281 unwind label %bb.kg

.noexc281:                                        ; preds = %bb.kk
  unreachable

bb.kl:                                            ; preds = %bb.kh
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @224) #56
          to label %.noexc282 unwind label %bb.kg

.noexc282:                                        ; preds = %bb.kl
  unreachable

bb.km:                                            ; preds = %bb.kn
  %i.aec = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !8284
  %.val19.i = load ptr, ptr %i.aeg, align 8, !noalias !8284
  %i.aed = getelementptr i8, ptr %1, i64 1672
  %.val20.i = load ptr, ptr %i.aed, align 8, !noalias !8284, !nonnull !12, !align !209, !noundef !12
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr %.val19.i, ptr nonnull %.val20.i) #52
          to label %.body.i263 unwind label %bb.mc, !noalias !8288

end_hunk_2
begin_hunk_3_@_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot16resolve_snapshot0B7_:bb.a
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collect10TryCollectINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEINtNtB2k_3vec3VecB41_EEEB51_(ptr noalias noundef align 8 dereferenceable(40) %i.fq)
          to label %bb.bv unwind label %bb.bt, !noalias !8546

bb.bt:                                            ; preds = %bb.bs
  %i.fr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8555)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8558)
  %i.ft = load ptr, ptr %i.fs, align 8, !alias.scope !8561, !noalias !8499, !nonnull !12, !noundef !12
  %i.fu = atomicrmw sub ptr %i.ft, i64 1 release, align 8, !noalias !8562
  %i.fv = icmp eq i64 %i.fu, 1
  br i1 %i.fv, label %bb.bu, label %.body33.i

bb.bu:                                            ; preds = %bb.bt
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8SnapshotE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fs) #54
          to label %.body33.i unwind label %bb.bw, !noalias !8546

bb.bv:                                            ; preds = %bb.bs
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8563)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8566)
  %i.fx = load ptr, ptr %i.fw, align 8, !alias.scope !8569, !noalias !8499, !nonnull !12, !noundef !12
  %i.fy = atomicrmw sub ptr %i.fx, i64 1 release, align 8, !noalias !8570
  %i.fz = icmp eq i64 %i.fy, 1
  br i1 %i.fz, label %common.ret.sink.split.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_13EagerSnapshot21try_new_with_snapshot0EBR_.exit.i

bb.bw:                                            ; preds = %bb.bu
  %i.ga = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !8546
  unreachable

bb.bx:                                            ; preds = %common.ret.sink.split.i.i
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %.body33.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_13EagerSnapshot21try_new_with_snapshot0EBR_.exit.i: ; preds = %bb.bv, %bb.br, %common.ret.sink.split.i.i, %bb.bq
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.gd = load i64, ptr %i.gc, align 8, !range !186, !alias.scope !8571, !noalias !8499, !noundef !12
  %i.ge = icmp eq i64 %i.gd, 3
  br i1 %i.ge, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigEBM_.exit36.i, label %bb.by

bb.by:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_13EagerSnapshot21try_new_with_snapshot0EBR_.exit.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime9IORuntimeEBO_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.gc)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigEBM_.exit36.i unwind label %bb.bz, !noalias !8546

bb.bz:                                            ; preds = %bb.by
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigEBM_.exit30.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigEBM_.exit36.i: ; preds = %bb.by, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_13EagerSnapshot21try_new_with_snapshot0EBR_.exit.i
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 184
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotEBM_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.gg)
          to label %bb.cd unwind label %bb.cb, !noalias !8546

bb.ca:                                            ; preds = %bb.cb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigEBM_.exit30.i
  %i.gh = phi ptr [ %i.fe, %bb.cb ], [ %i.fa, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigEBM_.exit30.i ]
  %i.gi = phi ptr [ %i.ff, %bb.cb ], [ %i.fb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigEBM_.exit30.i ]
  %.pn14.i = phi { ptr, i32 } [ %i.gj, %bb.cb ], [ %.pn10.pn.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigEBM_.exit30.i ]
  store i8 2, ptr %i.gh, align 8, !noalias !8499
  br label %.body

bb.cb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigEBM_.exit36.i
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.cc:                                            ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8499
  store i8 3, ptr %i.fe, align 8, !noalias !8499
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  store i64 -9223372036854775710, ptr %0, align 16
  br label %common.ret

bb.cd:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigEBM_.exit36.i, %bb.ab
  %i.gk = phi ptr [ %i.bv, %bb.ab ], [ %i.fe, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigEBM_.exit36.i ]
  %i.gl = phi ptr [ %i.bw, %bb.ab ], [ %i.ff, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigEBM_.exit36.i ]
  %.sroa.3.i.sroa.0.0 = phi i64 [ %.sroa.3.i.sroa.0.0.copyload72, %bb.ab ], [ %.sroa.3.i.sroa.0.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigEBM_.exit36.i ]
  %.sroa.3.i.sroa.5.0 = phi ptr [ %.sroa.3.i.sroa.5.0.copyload73, %bb.ab ], [ %.sroa.3.i.sroa.5.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigEBM_.exit36.i ]
  %.sroa.0.0.i = phi i64 [ -9223372036854775711, %bb.ab ], [ %i.fh, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigEBM_.exit36.i ]
  %i.gm = phi <2 x i64> [ %i.ce, %bb.ab ], [ %i.fj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigEBM_.exit36.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.743.sroa.9, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.i, i64 56, i1 false)
  store i8 1, ptr %i.gk, align 8, !noalias !8499
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_13EagerSnapshot10with_files0EBR_(ptr noundef nonnull align 8 %i.gl)
          to label %bb.r unwind label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.cf:                                            ; preds = %bb.p
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 104
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotEBM_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.go) #52
          to label %bb.l unwind label %bb.u

bb.cg:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigEBM_.exit34, %bb.l
  %.pn24.pn = phi { ptr, i32 } [ %.pn24, %bb.l ], [ %.pn14.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigEBM_.exit34 ]
  store i8 2, ptr %i.k, align 1
  resume { ptr, i32 } %.pn24.pn

bb.ch:                                            ; preds = %bb.ci
  %i.gp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_13EagerSnapshot7try_new0EBR_(ptr noundef nonnull align 8 %i.gq) #52
          to label %bb.v unwind label %bb.u

bb.ci:                                            ; preds = %bb.c, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  invoke fastcc void @_RNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB6_13EagerSnapshot7try_new0Ba_(ptr noalias noundef align 16 captures(none) dereferenceable(96) %i.h, ptr noundef nonnull align 8 %i.gq, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.cj unwind label %bb.ch

bb.cj:                                            ; preds = %bb.ci
  %i.gr = load i64, ptr %i.h, align 16, !range !7395, !noundef !12 ; 2 uses
  %i.gs = icmp eq i64 %i.gr, -9223372036854775710
  br i1 %i.gs, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store i64 -9223372036854775710, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %common.ret

bb.cl:                                            ; preds = %bb.cj
  %.sroa.58.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.58.sroa.0.0.copyload58 = load i64, ptr %.sroa.58.0..sroa_idx10, align 8
  %.sroa.58.sroa.5.0..sroa.58.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.58.sroa.5.0.copyload61 = load ptr, ptr %.sroa.58.sroa.5.0..sroa.58.0..sroa_idx10.sroa_idx, align 16
  %.sroa.58.sroa.6.0..sroa.58.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.gt = load <2 x i64>, ptr %.sroa.58.sroa.6.0..sroa.58.0..sroa_idx10.sroa_idx, align 8
  %.sroa.58.sroa.7.sroa.4.0..sroa.58.sroa.7.0..sroa.58.0..sroa_idx10.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.743.sroa.9, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.58.sroa.7.sroa.4.0..sroa.58.sroa.7.0..sroa.58.0..sroa_idx10.sroa_idx.sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_13EagerSnapshot7try_new0EBR_(ptr noundef nonnull align 8 %i.gq)
          to label %bb.cn unwind label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.cn:                                            ; preds = %bb.cl
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 98
  store i8 0, ptr %i.gv, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.o

bb.co:                                            ; preds = %bb.v
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime9IORuntimeEBO_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigEBM_.exit34 unwind label %bb.u
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i16 noundef range(i16 1, 0) %2, i1 noundef zeroext %3) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 11 uses
  br i1 %3, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %i.c = getelementptr i8, ptr %i.b, i64 %1       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !12, !noundef !12 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !12 ; 4 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8576)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8579)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = getelementptr i8, ptr %i.n, i64 %i.g
  call void @_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly %i.n, ptr noundef nonnull readonly %i.o, ptr noundef nonnull readonly %i.e, ptr noundef nonnull readonly %i.i)
  %.sroa.0.0.copyload.i.us = load ptr, ptr %i.a, align 8, !noalias !8581 ; 2 uses
  %.sroa.522.0.copyload.i.us = load ptr, ptr %.sroa.522.0..sroa_idx.i, align 8, !noalias !8581 ; 2 uses
  %.sroa.623.0.copyload.i.us = load i64, ptr %.sroa.623.0..sroa_idx.i, align 8, !noalias !8581 ; 3 uses
  %.sroa.8.0.copyload.i.us = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !8581 ; 2 uses
  %umax.i.us = tail call i64 @llvm.umax.i64(i64 %.sroa.623.0.copyload.i.us, i64 %.sroa.8.0.copyload.i.us)
  %exitcond.not.i.us18.not = icmp ult i64 %.sroa.623.0.copyload.i.us, %.sroa.8.0.copyload.i.us
  br i1 %exitcond.not.i.us18.not, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.us.preheader, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.us.preheader: ; preds = %.preheader.split.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.us) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.522.0.copyload.i.us) ]
  br label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.us

bb.b:                                             ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.us
  %i.p = add i64 %.sroa.623.0.i.us19, 1           ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.p, %umax.i.us
  br i1 %exitcond.not.i.us, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.us

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.us: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.us.preheader, %bb.b
  %.sroa.623.0.i.us19 = phi i64 [ %i.p, %bb.b ], [ %.sroa.623.0.copyload.i.us, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.us.preheader ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.us, i64 %.sroa.623.0.i.us19
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.522.0.copyload.i.us, i64 %.sroa.623.0.i.us19
  %i.s = load i8, ptr %i.q, align 1, !noundef !12
  %i.t = load i8, ptr %i.r, align 1, !noundef !12
  %.not21.i.us = icmp eq i8 %i.s, %i.t
  br i1 %.not21.i.us, label %bb.b, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.us
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8576)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8579)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.g
  %i.ad = getelementptr i8, ptr %i.ac, i64 -4     ; 3 uses
  %i.ae = icmp ult ptr %i.ab, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit

.lr.ph.i:                                         ; preds = %.preheader.split, %bb.c
  %.sroa.08.030.i = phi ptr [ %i.ag, %bb.c ], [ %i.e, %.preheader.split ] ; 2 uses
  %.sroa.04.029.i = phi ptr [ %i.af, %bb.c ], [ %i.ab, %.preheader.split ] ; 2 uses
  %.sroa.011.0.copyload.i = load i32, ptr %.sroa.04.029.i, align 1, !alias.scope !8576, !noalias !8579
  %.sroa.013.0.copyload.i = load i32, ptr %.sroa.08.030.i, align 1, !alias.scope !8579, !noalias !8576
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
  %.sroa.015.0.copyload.i = load i32, ptr %i.ad, align 1, !alias.scope !8576, !noalias !8579
  %.sroa.017.0.copyload.i = load i32, ptr %i.j, align 1, !alias.scope !8579, !noalias !8576
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
define internal void @_RNCNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations10add_columnNtB7_16AddColumnBuilderNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future0Bb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 16 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.3.i141.sroa.7 = alloca [32 x i8], align 8 ; 6 uses
  %.sroa.3.i141.sroa.9 = alloca [16 x i8], align 8 ; 6 uses
  %i.a = alloca [96 x i8], align 16               ; 13 uses
  %i.b = alloca [16 x i8], align 1                ; 6 uses
  %.sroa.3.i.sroa.7 = alloca [32 x i8], align 8   ; 6 uses
  %.sroa.3.i.sroa.9 = alloca [16 x i8], align 8   ; 6 uses
  %i.c = alloca [96 x i8], align 16               ; 13 uses
  %i.d = alloca [16 x i8], align 1                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.35.sroa.10 = alloca [32 x i8], align 8   ; 8 uses
  %.sroa.38 = alloca [32 x i8], align 16          ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [16 x i8], align 8                ; 6 uses
  %i.j = alloca [120 x i8], align 8               ; 13 uses
  %.sroa.3316.sroa.5 = alloca [32 x i8], align 8  ; 2 uses
  %.sroa.3316.sroa.7 = alloca [16 x i8], align 8  ; 2 uses
  %.sroa.8313.sroa.9 = alloca [32 x i8], align 8  ; 7 uses
  %.sroa.8313.sroa.11 = alloca [16 x i8], align 8 ; 7 uses
  %.sroa.3293.sroa.9 = alloca [32 x i8], align 8  ; 3 uses
  %.sroa.5294.sroa.2 = alloca [16 x i8], align 8  ; 2 uses
  %i.k = alloca [96 x i8], align 16               ; 13 uses
  %i.l = alloca [408 x i8], align 8               ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  %i.n = alloca [88 x i8], align 8                ; 5 uses
  %i.o = alloca [144 x i8], align 8               ; 5 uses
  %i.p = alloca [144 x i8], align 8               ; 6 uses
  %i.q = alloca [144 x i8], align 8               ; 5 uses
  %i.r = alloca [144 x i8], align 8               ; 6 uses
  %i.s = alloca [584 x i8], align 8               ; 6 uses
  %i.t = alloca [272 x i8], align 8               ; 6 uses
  %.sroa.5283 = alloca [256 x i8], align 8        ; 4 uses
  %.sroa.8274.sroa.11 = alloca [32 x i8], align 8 ; 3 uses
  %.sroa.3280 = alloca [176 x i8], align 8        ; 2 uses
  %i.u = alloca [256 x i8], align 8               ; 5 uses
  %i.v = alloca [256 x i8], align 8               ; 13 uses
  %i.w = alloca [32 x i8], align 8                ; 8 uses
  %i.x = alloca [24 x i8], align 8                ; 5 uses
  %i.y = alloca [408 x i8], align 8               ; 13 uses
  %i.z = alloca [56 x i8], align 8                ; 6 uses
  %i.aa = alloca [72 x i8], align 8               ; 12 uses
  %.sroa.8261.sroa.9.sroa.8 = alloca [32 x i8], align 8 ; 7 uses
  %i.ab = alloca [56 x i8], align 8               ; 9 uses
  %.sroa.5258 = alloca [104 x i8], align 8        ; 4 uses
  %i.ac = alloca [144 x i8], align 8              ; 11 uses
  %i.ad = alloca [24 x i8], align 8               ; 7 uses
  %i.ae = alloca [72 x i8], align 8               ; 7 uses
  %i.af = alloca [24 x i8], align 8               ; 11 uses
  %.sroa.8243.sroa.12 = alloca [32 x i8], align 8 ; 4 uses
  %.sroa.8243.sroa.14 = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.5249 = alloca [32 x i8], align 16        ; 4 uses
  %i.ag = alloca [24 x i8], align 8               ; 5 uses
  %i.ah = alloca [144 x i8], align 16             ; 22 uses
  %.sroa.8235.sroa.9 = alloca [32 x i8], align 8  ; 2 uses
  %.sroa.8235.sroa.11 = alloca [16 x i8], align 8 ; 2 uses
  %i.ai = alloca [24 x i8], align 8               ; 3 uses
  %.sroa.5214.sroa.0 = alloca [32 x i8], align 8  ; 2 uses
  %.sroa.5214.sroa.3 = alloca [16 x i8], align 8  ; 2 uses
  %i.aj = alloca [96 x i8], align 16              ; 13 uses
  %.sroa.6211 = alloca [16 x i8], align 8         ; 5 uses
  %.sroa.8205.sroa.9 = alloca [16 x i8], align 8  ; 8 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 888 ; 3 uses
  %i.al = load i8, ptr %i.ak, align 8, !range !1527, !noundef !12
  switch i8 %i.al, label %default.unreachable557 [
    i8 0, label %bb.b
    i8 1, label %bb.l
    i8 2, label %bb.m
    i8 3, label %bb.i
    i8 4, label %bb.at
    i8 5, label %bb.j
    i8 6, label %bb.fh
  ]

default.unreachable557:                           ; preds = %bb.fh, %bb.at, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 889
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 894
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.am, i8 0, i64 5, i1 false)
  store i8 1, ptr %i.an, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8205.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6211)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8582)
  %i.ap = load i64, ptr %i.ao, align 8, !range !50, !alias.scope !8582, !noalias !8585, !noundef !12
  %.not.i = icmp eq i64 %i.ap, -9223372036854775808
  br i1 %.not.i, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8587)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !8590
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !8592, !noalias !8593, !nonnull !12, !noundef !12 ; 4 uses
  %i.as = atomicrmw add ptr %i.ar, i64 1 monotonic, align 8, !noalias !8590
  %i.at = icmp slt i64 %i.as, 0
  br i1 %i.at, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.ar, ptr %i.g, align 8, !noalias !8590
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8590
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ao)
          to label %_RNvXs5_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB5_13EagerSnapshotNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i unwind label %bb.f, !noalias !8593

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = atomicrmw sub ptr %i.ar, i64 1 release, align 8, !noalias !8594
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.g, label %.body

bb.g:                                             ; preds = %bb.f
  fence acquire
end_hunk_3
begin_hunk_4_@_RNCNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations11constraintsNtB7_17ConstraintBuilderNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future0Bb_:bb.a
bb.he:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  br label %bb.ea

bb.hf:                                            ; preds = %bb.gv, %.body384
  %.pn178.pn = phi { ptr, i32 } [ %i.uo, %bb.gv ], [ %.pn176, %.body384 ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.cg) #52
          to label %bb.hd unwind label %bb.ak

bb.hg:                                            ; preds = %bb.gw
  %.sroa.10621.0..sroa_idx622 = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %.sroa.3625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.3625.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.10621.0..sroa_idx622, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  %.sroa.2624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2624.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8619, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !9026)
  %i.uw = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %i.up, ptr %i.uw, align 16, !alias.scope !9029
  store i64 1, ptr %i.x, align 16, !alias.scope !9031, !noalias !9026
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8619)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.cg)
          to label %bb.hh unwind label %.loopexit.split-lp861

bb.hh:                                            ; preds = %bb.hi, %bb.hg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core5table7columns10ConstraintEEB1j_.exit

.loopexit.split-lp853:                            ; preds = %bb.gq, %.loopexit.split-lp853.loopexit, %.loopexit.split-lp853.loopexit.split-lp, %.loopexit852, %bb.gs
  %.pn181 = phi { ptr, i32 } [ %i.ul, %bb.gs ], [ %i.ue, %bb.gq ], [ %lpad.loopexit854, %.loopexit852 ], [ %lpad.loopexit857, %.loopexit.split-lp853.loopexit ], [ %lpad.loopexit.split-lp858, %.loopexit.split-lp853.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8612)
  br label %bb.hd

bb.hi:                                            ; preds = %bb.gt
  %i.ux = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %.sroa.8612.16..sroa_idx614 = getelementptr inbounds nuw i8, ptr %.sroa.8612, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.8612.16..sroa_idx614, ptr noundef nonnull align 16 dereferenceable(96) %i.ux, i64 96, i1 false), !alias.scope !9016
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  %i.uy = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.uy, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.8612.16..sroa_idx614, i64 96, i1 false)
  store i64 1, ptr %i.x, align 16, !alias.scope !9032, !noalias !9035
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8612)
  br label %bb.hh

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRNtNtCs6Po7BT7Nknu_5alloc6string6StringB1C_EECs14kWLkQVSKO_14deltalake_core.exit523: ; preds = %bb.ql, %bb.dw, %bb.pe, %.body414
  %.pn187 = phi { ptr, i32 } [ %i.aku, %bb.pe ], [ %.pn181.pn.pn.pn.pn, %bb.ql ], [ %.pn181.pn.pn.pn.pn, %.body414 ], [ %i.mj, %bb.dw ]
  %i.uz = getelementptr inbounds nuw i8, ptr %1, i64 745
  store i8 0, ptr %i.uz, align 1
  %i.va = getelementptr inbounds nuw i8, ptr %1, i64 600
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(56) %i.va) #52
          to label %bb.hn unwind label %bb.ak

bb.hj:                                            ; preds = %bb.du
  %i.vb = landingpad { ptr, i32 }
          cleanup
  br label %bb.hn

bb.hk:                                            ; preds = %bb.du
  store i64 1, ptr %i.x, align 16, !alias.scope !9037, !noalias !9040
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.hl

bb.hl:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRNtNtCs6Po7BT7Nknu_5alloc6string6StringB1C_EECs14kWLkQVSKO_14deltalake_core.exit, %bb.hk
  %i.vc = getelementptr inbounds nuw i8, ptr %1, i64 584 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9042)
  call void @llvm.experimental.noalias.scope.decl(metadata !9045)
  %i.vd = load ptr, ptr %i.vc, align 8, !alias.scope !9048, !nonnull !12, !noundef !12
  %i.ve = atomicrmw sub ptr %i.vd, i64 1 release, align 8, !noalias !9048
  %i.vf = icmp eq i64 %i.ve, 1
  br i1 %i.vf, label %bb.hm, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.hm:                                            ; preds = %bb.hl
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.vc) #54
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.oq

bb.hn:                                            ; preds = %bb.dr, %bb.hj, %bb.on, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRNtNtCs6Po7BT7Nknu_5alloc6string6StringB1C_EECs14kWLkQVSKO_14deltalake_core.exit523
  %.pn189.pn = phi { ptr, i32 } [ %.pn187, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRNtNtCs6Po7BT7Nknu_5alloc6string6StringB1C_EECs14kWLkQVSKO_14deltalake_core.exit523 ], [ %i.ajl, %bb.on ], [ %i.vb, %bb.hj ], [ %i.ma, %bb.dr ] ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %1, i64 584 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9049)
  call void @llvm.experimental.noalias.scope.decl(metadata !9052)
  %i.vh = load ptr, ptr %i.vg, align 8, !alias.scope !9055, !nonnull !12, !noundef !12
  %i.vi = atomicrmw sub ptr %i.vh, i64 1 release, align 8, !noalias !9055
  %i.vj = icmp eq i64 %i.vi, 1
  br i1 %i.vj, label %bb.ho, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs14kWLkQVSKO_14deltalake_core.exit389

bb.ho:                                            ; preds = %bb.hn
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.vg) #54
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs14kWLkQVSKO_14deltalake_core.exit389 unwind label %bb.ak

bb.hp:                                            ; preds = %bb.dp
  store i64 1, ptr %i.x, align 16, !alias.scope !8901, !noalias !9056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.hq:                                            ; preds = %bb.hr
  %i.vk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  %.val257 = load ptr, ptr %i.vm, align 8
  %i.vl = getelementptr i8, ptr %1, i64 784
  %.val258 = load ptr, ptr %i.vl, align 8, !nonnull !12, !align !209, !noundef !12
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr %.val257, ptr nonnull %.val258) #52
          to label %.body391 unwind label %bb.ak

bb.hr:                                            ; preds = %bb.j, %bb.et
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  %i.vm = getelementptr inbounds nuw i8, ptr %1, i64 776 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.bj, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.vm, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.hs unwind label %bb.hq

bb.hs:                                            ; preds = %bb.hr
  %i.vn = load i64, ptr %i.bj, align 8, !range !8900, !noundef !12 ; 3 uses
  %i.vo = icmp eq i64 %i.vn, 21
  br i1 %i.vo, label %bb.ht, label %bb.hu

bb.ht:                                            ; preds = %bb.hs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  store i64 2, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  br label %common.ret

bb.hu:                                            ; preds = %bb.hs
  %.sroa.3673.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.sroa.3673.0.copyload = load ptr, ptr %.sroa.3673.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5674.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %.sroa.5674.0.copyload = load ptr, ptr %.sroa.5674.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7675.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7675, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7675.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  %.val255 = load ptr, ptr %i.vm, align 8         ; 5 uses
  %i.vp = getelementptr i8, ptr %1, i64 784
  %.val256 = load ptr, ptr %i.vp, align 8, !nonnull !12, !align !209, !noundef !12 ; 5 uses
  %i.vq = load ptr, ptr %.val256, align 8, !invariant.load !12 ; 2 uses
  %.not.i.i390 = icmp eq ptr %i.vq, null
  br i1 %.not.i.i390, label %bb.hw, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val255) ]
  invoke void %i.vq(ptr noundef nonnull %.val255)
          to label %bb.hw unwind label %bb.hy

bb.hw:                                            ; preds = %bb.hv, %bb.hu
  %i.vr = getelementptr inbounds nuw i8, ptr %.val256, i64 8
  %i.vs = load i64, ptr %i.vr, align 8, !range !378, !invariant.load !12 ; 2 uses
  %i.vt = icmp eq i64 %i.vs, 0
  br i1 %i.vt, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.vu = getelementptr inbounds nuw i8, ptr %.val256, i64 16
  %i.vv = load i64, ptr %i.vu, align 8, !range !490, !invariant.load !12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val255) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val255, i64 noundef range(i64 1, 0) %i.vs, i64 noundef range(i64 1, 536870913) %i.vv) #51
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit

bb.hy:                                            ; preds = %bb.hv
  %i.vw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %.val256, i64 8
  %i.vy = load i64, ptr %i.vx, align 8, !range !378, !invariant.load !12 ; 2 uses
  %i.vz = icmp eq i64 %i.vy, 0
  br i1 %i.vz, label %.body391, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.wa = getelementptr inbounds nuw i8, ptr %.val256, i64 16
  %i.wb = load i64, ptr %i.wa, align 8, !range !490, !invariant.load !12
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val255, i64 noundef range(i64 1, 0) %i.vy, i64 noundef range(i64 1, 536870913) %i.wb) #51
  br label %.body391

.body391:                                         ; preds = %bb.hz, %bb.hy, %bb.hq
  %.pn65 = phi { ptr, i32 } [ %i.vk, %bb.hq ], [ %i.vw, %bb.hy ], [ %i.vw, %bb.hz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit521

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.hx, %bb.hw
  %.not.i393 = icmp eq i64 %i.vn, 20
  br i1 %.not.i393, label %bb.ib, label %bb.ia

bb.ia:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.4679.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4679.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7675, i64 16, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !9058)
  store i64 %i.vn, ptr %i.k, align 8, !noalias !9058
  %.sroa.2677.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.sroa.3673.0.copyload, ptr %.sroa.2677.0..sroa_idx, align 8, !noalias !9058
  %.sroa.3678.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %.sroa.5674.0.copyload, ptr %.sroa.3678.0..sroa_idx, align 8, !noalias !9058
  %i.wc = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.wc, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.k)
          to label %bb.jf unwind label %bb.je

bb.ib:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3673.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5674.0.copyload) ]
  store ptr %.sroa.3673.0.copyload, ptr %i.bk, align 8
  %i.wd = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  store ptr %.sroa.5674.0.copyload, ptr %i.wd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8682)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  %i.we = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 2 uses
  %.val260 = load ptr, ptr %i.we, align 8, !nonnull !12, !noundef !12
  %i.wf = getelementptr i8, ptr %1, i64 576       ; 2 uses
  %.val261 = load ptr, ptr %i.wf, align 8, !nonnull !12, !align !209, !noundef !12 ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %.val261, i64 16
  %i.wh = load i64, ptr %i.wg, align 8, !range !490, !invariant.load !12
  %i.wi = add nsw i64 %i.wh, -1
  %i.wj = and i64 %i.wi, -16
  %i.wk = getelementptr inbounds nuw i8, ptr %.val260, i64 %i.wj
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 16
  %i.wm = getelementptr inbounds nuw i8, ptr %1, i64 600
  %i.wn = getelementptr i8, ptr %1, i64 712
  %.val235 = load ptr, ptr %i.wn, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.wo = getelementptr i8, ptr %1, i64 720
  %.val236 = load i64, ptr %i.wo, align 8, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !9061
  %i.wp = getelementptr inbounds nuw [48 x i8], ptr %.val235, i64 %.val236
  call void @llvm.experimental.noalias.scope.decl(metadata !9066)
  store ptr %.val235, ptr %i.i, align 8, !alias.scope !9069, !noalias !9071
  %i.wq = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.wp, ptr %i.wq, align 8, !alias.scope !9069, !noalias !9071
  %i.wr = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.wm, ptr %i.wr, align 8, !alias.scope !9072, !noalias !9061
  %.sroa.41.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.wl, ptr %.sroa.41.0..sroa_idx.i, align 8, !alias.scope !9072, !noalias !9061
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %.val261, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !9072, !noalias !9061
  invoke void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtNtCs14kWLkQVSKO_14deltalake_core5table7columns10ConstraintENCINvNtNtB1C_16delta_datafusion15data_validation20constraints_to_exprsRINtNtCs6Po7BT7Nknu_5alloc3vec3VecB1w_EE0ENtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1C_6errors15DeltaTableErrorENCINvXso_B57_IB55_IB3H_B4l_EB5R_EINtNtNtB4_6traits7collect12FromIteratorIB55_B4l_B5R_EE9from_iterBQ_E0B6G_EB1C_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.j, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.i)
          to label %.noexc399 unwind label %bb.id

.noexc399:                                        ; preds = %bb.ib
  %i.ws = load i64, ptr %i.j, align 16, !range !55, !noalias !9061, !noundef !12 ; 2 uses
  %.not.i397 = icmp eq i64 %i.ws, -9223372036854775711
  %i.wt = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(24) %i.wt, i64 24, i1 false), !noalias !9061
  br i1 %.not.i397, label %.thread772, label %bb.ic

bb.ic:                                            ; preds = %.noexc399
  %.sroa.68.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.3.0..sroa_idx.i398 = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !9061
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.3.0..sroa_idx.i398, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.68.0..sroa_idx.i, i64 64, i1 false), !noalias !9061
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !9061
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i, i64 24, i1 false), !noalias !9061
  store i64 %i.ws, ptr %i.h, align 16, !noalias !9061
  invoke void @_RNvXNtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtB4_6errors15DeltaTableErrorE4from(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.bi, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(96) %i.h)
          to label %bb.ie unwind label %bb.id

.thread772:                                       ; preds = %.noexc399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !9061
  %i.wu = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.wu, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i, i64 24, i1 false), !noalias !9073
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ih

bb.id:                                            ; preds = %bb.ic, %bb.ib
  %i.wv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.experimental.noalias.scope.decl(metadata !9074)
  call void @llvm.experimental.noalias.scope.decl(metadata !9077)
  %i.ww = load ptr, ptr %i.bk, align 8, !alias.scope !9080, !nonnull !12, !noundef !12
  %i.wx = atomicrmw sub ptr %i.ww, i64 1 release, align 8, !noalias !9080
  %i.wy = icmp eq i64 %i.wx, 1
  br i1 %i.wy, label %bb.if, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit403

bb.ie:                                            ; preds = %bb.ic
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !9061
  %.pr = load i64, ptr %i.bi, align 8, !alias.scope !9081, !noalias !9084 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !9084)
  %.not.i401 = icmp eq i64 %.pr, 20
  br i1 %.not.i401, label %bb.ih, label %bb.ig

bb.if:                                            ; preds = %bb.id
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bk) #54
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit403 unwind label %bb.ak

bb.ig:                                            ; preds = %bb.ie
  %.sroa.8682.0..sroa_idx683 = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8682, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8682.0..sroa_idx683, i64 24, i1 false), !alias.scope !9086
  %.sroa.10684.0..sroa_idx685 = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %.sroa.10684.0.copyload686 = load i64, ptr %.sroa.10684.0..sroa_idx685, align 8, !alias.scope !9086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  %.sroa.2688.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2688.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8682, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !9087)
  store i64 %.pr, ptr %i.g, align 8, !noalias !9087
  %.sroa.3689.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 %.sroa.10684.0.copyload686, ptr %.sroa.3689.0..sroa_idx, align 8, !noalias !9087
  %i.wz = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.wz, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.g)
          to label %bb.iz unwind label %bb.jc

bb.ih:                                            ; preds = %bb.ie, %.thread772
  %i.xa = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8682, ptr noundef nonnull align 8 dereferenceable(24) %i.xa, i64 24, i1 false), !alias.scope !9086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8682, i64 24, i1 false)
  %i.xb = getelementptr inbounds nuw i8, ptr %1, i64 760
  %i.xc = load ptr, ptr %i.xb, align 8, !nonnull !12, !noundef !12
  %i.xd = getelementptr inbounds nuw i8, ptr %1, i64 768
  %i.xe = load ptr, ptr %i.xd, align 8, !nonnull !12, !align !209, !noundef !12
  %i.xf = load ptr, ptr %i.bk, align 8, !nonnull !12, !noundef !12
  %i.xg = load ptr, ptr %i.wd, align 8, !nonnull !12, !align !209, !noundef !12
  invoke void @_RNvMs3_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validationNtB5_18DataValidationExec23try_new_with_predicates(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.bl, ptr noundef nonnull %i.xc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.xe, ptr noundef nonnull %i.xf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %i.xg, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.bh)
          to label %bb.ii unwind label %.thread779

.thread779:                                       ; preds = %bb.ih
  %i.xh = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit421

bb.ii:                                            ; preds = %bb.ih
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @llvm.experimental.noalias.scope.decl(metadata !9090)
  %i.xi = load i64, ptr %i.bl, align 8, !range !558, !alias.scope !9093, !noalias !9090, !noundef !12 ; 2 uses
  %.not.i406 = icmp eq i64 %i.xi, 20
  %i.xj = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.xk = load ptr, ptr %i.xj, align 8, !alias.scope !9095 ; 3 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.xm = load ptr, ptr %i.xl, align 8, !alias.scope !9095 ; 3 uses
  br i1 %.not.i406, label %bb.ik, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %.sroa.14660.0..sroa_idx661 = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %.sroa.4693.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4693.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14660.0..sroa_idx661, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  call void @llvm.experimental.noalias.scope.decl(metadata !9096)
  store i64 %i.xi, ptr %i.f, align 8, !noalias !9096
  %.sroa.2691.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.xk, ptr %.sroa.2691.0..sroa_idx, align 8, !noalias !9096
  %.sroa.3692.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.xm, ptr %.sroa.3692.0..sroa_idx, align 8, !noalias !9096
  %i.xn = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.xn, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.f)
          to label %_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtBO_6errors15DeltaTableErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEE13from_residualBO_.exit409 unwind label %bb.ix

_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtBO_6errors15DeltaTableErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEE13from_residualBO_.exit409: ; preds = %bb.ij
  store i64 1, ptr %i.x, align 16, !alias.scope !9096, !noalias !9099
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.iy

bb.ik:                                            ; preds = %bb.ii
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  %i.xo = getelementptr inbounds nuw i8, ptr %1, i64 753
  store ptr %i.xk, ptr %i.bm, align 8
  %i.xp = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %i.xm, ptr %i.xp, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8682)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  store i8 0, ptr %i.xo, align 1
  store ptr %i.xk, ptr %i.bf, align 8
  %i.xq = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  store ptr %i.xm, ptr %i.xq, align 8
  %.val284 = load ptr, ptr %i.we, align 8, !nonnull !12, !noundef !12
  %.val285 = load ptr, ptr %i.wf, align 8, !nonnull !12, !align !209, !noundef !12 ; 2 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %.val285, i64 16
  %i.xs = load i64, ptr %i.xr, align 8, !range !490, !invariant.load !12
  %i.xt = add nsw i64 %i.xs, -1
  %i.xu = and i64 %i.xt, -16
  %i.xv = getelementptr inbounds nuw i8, ptr %.val284, i64 %i.xu
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 16
  %i.xx = getelementptr inbounds nuw i8, ptr %.val285, i64 136
  %i.xy = load ptr, ptr %i.xx, align 8, !invariant.load !12, !nonnull !12
  %i.xz = invoke noundef nonnull ptr %i.xy(ptr noundef nonnull %i.xw)
          to label %bb.im unwind label %.thread792

.thread792:                                       ; preds = %bb.ik
  %i.ya = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9101)
  call void @llvm.experimental.noalias.scope.decl(metadata !9104)
  %i.yb = load ptr, ptr %i.bf, align 8, !alias.scope !9107, !nonnull !12, !noundef !12
  %i.yc = atomicrmw sub ptr %i.yb, i64 1 release, align 8, !noalias !9107
  %i.yd = icmp eq i64 %i.yc, 1
  br i1 %i.yd, label %bb.iv, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit417

bb.il:                                            ; preds = %bb.im
  %i.ye = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit417

bb.im:                                            ; preds = %bb.ik
  %i.yf = load ptr, ptr %i.bf, align 8, !nonnull !12, !noundef !12
end_hunk_4
begin_hunk_5_@_RNCNvXs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB7_13VacuumBuilderNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future0Bb_:bb.a
  store i8 0, ptr %i.nk, align 1, !noalias !9707
  %i.nl = getelementptr inbounds nuw i8, ptr %1, i64 1300
  %i.nm = load i8, ptr %i.nl, align 4, !range !208, !noalias !9707, !noundef !12
  %i.nn = trunc nuw i8 %i.nm to i1
  br i1 %i.nn, label %bb.kj, label %bb.ji

bb.fa:                                            ; preds = %bb.jh, %bb.je
  store i8 0, ptr %i.vu, align 4, !noalias !9707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !9707
  %.phi.trans.insert305.i = getelementptr inbounds nuw i8, ptr %1, i64 1301 ; 3 uses
  %.pre306.i = load i8, ptr %.phi.trans.insert305.i, align 1, !range !208, !noalias !9707
  %i.no = trunc nuw i8 %.pre306.i to i1
  br i1 %i.no, label %..thread322.i_crit_edge, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit.i

..thread322.i_crit_edge:                          ; preds = %bb.fa
  %.phi.trans.insert468 = getelementptr inbounds nuw i8, ptr %1, i64 704
  %.pre469 = load ptr, ptr %.phi.trans.insert468, align 8, !alias.scope !9754, !noalias !9707
  br label %.thread322.i

bb.fb:                                            ; preds = %bb.cv
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @208) #56
          to label %.noexc107 unwind label %bb.cu

.noexc107:                                        ; preds = %bb.fb
  unreachable

bb.fc:                                            ; preds = %bb.cv
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @208) #56
          to label %.noexc108 unwind label %bb.cu

.noexc108:                                        ; preds = %bb.fc
  unreachable

bb.fd:                                            ; preds = %bb.fe
  %i.np = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !9707
  %.val82.i = load ptr, ptr %i.nt, align 8, !noalias !9707
  %i.nq = getelementptr i8, ptr %1, i64 1320
  %.val83.i = load ptr, ptr %i.nq, align 8, !noalias !9707, !nonnull !12, !align !209, !noundef !12
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction15FinalizedCommitNtNtB2A_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2A_(ptr %.val82.i, ptr nonnull %.val83.i) #52
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction15FinalizedCommitEBM_.exit.i unwind label %bb.ep, !noalias !9718

bb.fe:                                            ; preds = %bb.em, %bb.cw
  %i.nr = phi ptr [ %i.iu, %bb.em ], [ %i.it, %bb.cw ] ; 9 uses
  %i.ns = phi ptr [ %i.iv, %bb.em ], [ %i.is, %bb.cw ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !9707
  %i.nt = getelementptr inbounds nuw i8, ptr %1, i64 1312 ; 4 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction15FinalizedCommitNtNtB2h_6errors15DeltaTableErrorENtNtB8_6marker4SendEL_EEB1v_4pollB2h_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.ad, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.nt, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ff unwind label %bb.fd, !noalias !9718

bb.ff:                                            ; preds = %bb.fe
  %i.nu = load i64, ptr %i.ad, align 16, !range !7395, !noalias !9707, !noundef !12 ; 3 uses
  %i.nv = icmp eq i64 %i.nu, -9223372036854775710
  br i1 %i.nv, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !9707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !9707
  br label %bb.kq

bb.fh:                                            ; preds = %bb.ff
  %.sroa.3.0..sroa_idx.i99 = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.3.sroa.0.0.copyload.i = load i64, ptr %.sroa.3.0..sroa_idx.i99, align 8, !noalias !9707 ; 2 uses
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.3.sroa.3.i.sroa.0.0.copyload = load ptr, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i, align 16, !noalias !9707 ; 2 uses
  %.sroa.3.sroa.3.i.sroa.5.0..sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.3.i.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.3.i.sroa.5.0..sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i.sroa_idx, i64 16, i1 false), !noalias !9707
  %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx.i, i64 24, i1 false), !noalias !9707
  %.sroa.3.sroa.7.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %.sroa.3.sroa.7.0.copyload.i = load i8, ptr %.sroa.3.sroa.7.0..sroa.3.0..sroa_idx.sroa_idx.i, align 16, !noalias !9707 ; 2 uses
  %.sroa.3.sroa.9.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.sroa.9.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.sroa.9.0..sroa.3.0..sroa_idx.sroa_idx.i, i64 7, i1 false), !noalias !9707
  %.sroa.5208.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5208.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5208.0..sroa_idx.i, i64 24, i1 false), !noalias !9707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !9707
  %.val80.i = load ptr, ptr %i.nt, align 8, !noalias !9707 ; 5 uses
  %i.nw = getelementptr i8, ptr %1, i64 1320
  %.val81.i = load ptr, ptr %i.nw, align 8, !noalias !9707, !nonnull !12, !align !209, !noundef !12 ; 5 uses
  %i.nx = load ptr, ptr %.val81.i, align 8, !invariant.load !12, !noalias !9718 ; 2 uses
  %.not.i.i112.i = icmp eq ptr %i.nx, null
  br i1 %.not.i.i112.i, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val80.i) ]
  invoke void %i.nx(ptr noundef nonnull %.val80.i)
          to label %bb.fj unwind label %bb.fl, !noalias !9718

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %i.ny = getelementptr inbounds nuw i8, ptr %.val81.i, i64 8
  %i.nz = load i64, ptr %i.ny, align 8, !range !378, !invariant.load !12, !noalias !9718 ; 2 uses
  %i.oa = icmp eq i64 %i.nz, 0
  br i1 %i.oa, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction15FinalizedCommitNtNtB2A_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2A_.exit.i, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.ob = getelementptr inbounds nuw i8, ptr %.val81.i, i64 16
  %i.oc = load i64, ptr %i.ob, align 8, !range !490, !invariant.load !12, !noalias !9718
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val80.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val80.i, i64 noundef range(i64 1, 0) %i.nz, i64 noundef range(i64 1, 536870913) %i.oc) #51, !noalias !9718
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction15FinalizedCommitNtNtB2A_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2A_.exit.i

bb.fl:                                            ; preds = %bb.fi
  %i.od = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %.val81.i, i64 8
  %i.of = load i64, ptr %i.oe, align 8, !range !378, !invariant.load !12, !noalias !9718 ; 2 uses
  %i.og = icmp eq i64 %i.of, 0
  br i1 %i.og, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction15FinalizedCommitEBM_.exit.i, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.oh = getelementptr inbounds nuw i8, ptr %.val81.i, i64 16
  %i.oi = load i64, ptr %i.oh, align 8, !range !490, !invariant.load !12, !noalias !9718
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val80.i, i64 noundef range(i64 1, 0) %i.of, i64 noundef range(i64 1, 536870913) %i.oi) #51, !noalias !9718
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction15FinalizedCommitEBM_.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction15FinalizedCommitNtNtB2A_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2A_.exit.i: ; preds = %bb.fk, %bb.fj
  %.not.i115.i = icmp eq i64 %i.nu, -9223372036854775711
  br i1 %.not.i115.i, label %bb.fn, label %bb.gd

bb.fn:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction15FinalizedCommitNtNtB2A_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2A_.exit.i
  %i.oj = getelementptr inbounds nuw i8, ptr %1, i64 1216
  store i64 %.sroa.3.sroa.0.0.copyload.i, ptr %i.oj, align 8, !noalias !9707
  %.sroa.4271.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1224
  store ptr %.sroa.3.sroa.3.i.sroa.0.0.copyload, ptr %.sroa.4271.0..sroa_idx.i, align 8, !noalias !9707
  %.sroa.3.sroa.3.i.sroa.5.0..sroa.4271.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.3.i.sroa.5.0..sroa.4271.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.3.i.sroa.5, i64 16, i1 false), !noalias !9707
  %.sroa.5272.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5272.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.sroa.5.i, i64 24, i1 false), !noalias !9707
  %.sroa.6273.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1272
  store i8 %.sroa.3.sroa.7.0.copyload.i, ptr %.sroa.6273.0..sroa_idx.i, align 8, !noalias !9707
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1273
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.sroa.9.i, i64 7, i1 false), !noalias !9707
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !9707
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !9707
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !9707
  %i.ok = getelementptr inbounds nuw i8, ptr %1, i64 1303
  store i8 0, ptr %i.ok, align 1, !noalias !9707
  %i.ol = getelementptr inbounds nuw i8, ptr %1, i64 520
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ol, i64 24, i1 false), !noalias !9707
  invoke void @_RINvNtNtCs8CRAYtH5WmW_12futures_util6stream4iter4iterINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjyY8HP3IvQ6_12object_store4path4PathEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ab, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.aa)
          to label %bb.fp unwind label %bb.fo, !noalias !9718

bb.fo:                                            ; preds = %bb.fn
  %i.om = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !9707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !9707
  br label %bb.fq

bb.fp:                                            ; preds = %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !9707
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ab, i64 32, i1 false), !alias.scope !9757, !noalias !9707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !9707
  %i.on = invoke { ptr, ptr } @_RNvYINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3map3MapINtNtB9_4iter4IterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjyY8HP3IvQ6_12object_store4path4PathEENcNtINtNtCsbvkFyIu7lgC_4core6result6ResultB25_NtB29_5ErrorE2Ok0ENtB7_9StreamExt5boxedCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ac)
          to label %bb.fs unwind label %bb.fr, !noalias !9718 ; 2 uses

bb.fq:                                            ; preds = %bb.fr, %bb.fo
  %.pn27.i = phi { ptr, i32 } [ %i.oo, %bb.fr ], [ %i.om, %bb.fo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !9707
  br label %bb.gc

bb.fr:                                            ; preds = %bb.fp
  %i.oo = landingpad { ptr, i32 }
          cleanup
  br label %bb.fq

bb.fs:                                            ; preds = %bb.fp
  %i.op = extractvalue { ptr, ptr } %i.on, 0      ; 5 uses
  %i.oq = extractvalue { ptr, ptr } %i.on, 1      ; 5 uses
  %i.or = getelementptr inbounds nuw i8, ptr %1, i64 1305 ; 2 uses
  store i8 1, ptr %i.or, align 1, !noalias !9707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !9707
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !9707
  %i.os = getelementptr inbounds nuw i8, ptr %1, i64 584
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !9707
  %i.ot = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.ou = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ou, ptr noundef nonnull align 8 dereferenceable(16) %i.ot, i64 16, i1 false), !noalias !9707
  store i8 1, ptr %i.x, align 1, !noalias !9707
  %i.ov = invoke { ptr, ptr } @_RNvXs8_NtCs14kWLkQVSKO_14deltalake_core8logstoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB5_8LogStoreEL_EB1j_12object_storeB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.os, ptr noalias noundef nonnull align 1 captures(address) dereferenceable(17) %i.x)
          to label %bb.fu unwind label %bb.ft, !noalias !9718 ; 2 uses

bb.ft:                                            ; preds = %bb.fs
  %i.ow = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !9707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !9707
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit.i

bb.fu:                                            ; preds = %bb.fs
  %i.ox = getelementptr inbounds nuw i8, ptr %1, i64 1280 ; 2 uses
  %i.oy = extractvalue { ptr, ptr } %i.ov, 0
  %i.oz = extractvalue { ptr, ptr } %i.ov, 1
  store ptr %i.oy, ptr %i.ox, align 8, !noalias !9707
  %i.pa = getelementptr inbounds nuw i8, ptr %1, i64 1288
  store ptr %i.oz, ptr %i.pa, align 8, !noalias !9707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !9707
  store i8 0, ptr %i.or, align 1, !noalias !9707
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.op) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.oq) ]
  %i.pb = invoke { ptr, ptr } @_RNvXsc_CsjyY8HP3IvQ6_12object_storeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB5_11ObjectStoreEL_EB16_13delete_stream(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ox, ptr noundef nonnull %i.op, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.oq)
          to label %bb.fw unwind label %bb.fv, !noalias !9718 ; 2 uses

bb.fv:                                            ; preds = %bb.fu
  %i.pc = landingpad { ptr, i32 }
          cleanup
  br label %bb.fy

bb.fw:                                            ; preds = %bb.fu
  %i.pd = extractvalue { ptr, ptr } %i.pb, 0
  %i.pe = extractvalue { ptr, ptr } %i.pb, 1
  invoke void @_RINvYINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB15_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3n_5ErrorENtNtB15_6marker4SendEL_EENCNCNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB4L_10VacuumPlan7execute00ENtNtBa_10try_stream12TryStreamExt11try_collectINtNtB1B_3vec3VecNtNtB1B_6string6StringEEB4P_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.y, ptr noundef nonnull %i.pd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.pe)
          to label %bb.fz unwind label %bb.fx, !noalias !9718

bb.fx:                                            ; preds = %bb.fw
  %i.pf = landingpad { ptr, i32 }
          cleanup
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fv
  %.pn29.i = phi { ptr, i32 } [ %i.pc, %bb.fv ], [ %i.pf, %bb.fx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !9707
  br label %bb.ga

bb.fz:                                            ; preds = %bb.fw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.z, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.y, i64 40, i1 false), !alias.scope !9761, !noalias !9707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !9707
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.nt, ptr noundef nonnull align 8 dereferenceable(40) %i.z, i64 40, i1 false), !noalias !9707
  br label %bb.gf

bb.ga:                                            ; preds = %bb.gj, %bb.ge, %bb.fy
  %i.pg = phi ptr [ %i.pt, %bb.gj ], [ %i.pt, %bb.ge ], [ %i.nr, %bb.fy ] ; 2 uses
  %i.ph = phi ptr [ %i.pu, %bb.gj ], [ %i.pu, %bb.ge ], [ %i.ns, %bb.fy ] ; 2 uses
  %.sroa.11.1.i = phi ptr [ %.sroa.11.0.i, %bb.gj ], [ %.sroa.11.0.i, %bb.ge ], [ %i.oq, %bb.fy ] ; 2 uses
  %.sroa.0211.1.i = phi ptr [ %.sroa.0211.0.i, %bb.gj ], [ %.sroa.0211.0.i, %bb.ge ], [ %i.op, %bb.fy ] ; 2 uses
  %.pn48.i = phi { ptr, i32 } [ %i.py, %bb.gj ], [ %i.ps, %bb.ge ], [ %.pn29.i, %bb.fy ] ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %1, i64 1280 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9765)
  call void @llvm.experimental.noalias.scope.decl(metadata !9768)
  %i.pj = load ptr, ptr %i.pi, align 8, !alias.scope !9771, !noalias !9707, !nonnull !12, !noundef !12
  %i.pk = atomicrmw sub ptr %i.pj, i64 1 release, align 8, !noalias !9772
  %i.pl = icmp eq i64 %i.pk, 1
  br i1 %i.pl, label %bb.gb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit.i

bb.gb:                                            ; preds = %bb.ga
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.pi) #54
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.ep, !noalias !9718

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.id, %bb.gb, %bb.ga, %bb.ft
  %i.pm = phi ptr [ %i.pt, %bb.id ], [ %i.nr, %bb.ft ], [ %i.pg, %bb.gb ], [ %i.pg, %bb.ga ]
  %i.pn = phi ptr [ %i.pu, %bb.id ], [ %i.ns, %bb.ft ], [ %i.ph, %bb.gb ], [ %i.ph, %bb.ga ]
  %.sroa.11.2.i = phi ptr [ %.sroa.11.0.i, %bb.id ], [ %i.oq, %bb.ft ], [ %.sroa.11.1.i, %bb.gb ], [ %.sroa.11.1.i, %bb.ga ]
  %.sroa.0211.2.i = phi ptr [ %.sroa.0211.0.i, %bb.id ], [ %i.op, %bb.ft ], [ %.sroa.0211.1.i, %bb.gb ], [ %.sroa.0211.1.i, %bb.ga ]
  %.pn50.i = phi { ptr, i32 } [ %i.ss, %bb.id ], [ %i.ow, %bb.ft ], [ %.pn48.i, %bb.gb ], [ %.pn48.i, %bb.ga ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %.body151.i

bb.gc:                                            ; preds = %bb.kf, %.body151.i, %bb.fq
  %i.po = phi ptr [ %i.sy, %bb.kf ], [ %i.sy, %.body151.i ], [ %i.nr, %bb.fq ]
  %i.pp = phi ptr [ %i.sz, %bb.kf ], [ %i.sz, %.body151.i ], [ %i.ns, %bb.fq ]
  %.pn50.pn.pn.i = phi { ptr, i32 } [ %.pn50.pn.i, %bb.kf ], [ %.pn50.pn.i, %.body151.i ], [ %.pn27.i, %bb.fq ]
  %i.pq = getelementptr inbounds nuw i8, ptr %1, i64 1305
  store i8 0, ptr %i.pq, align 1, !noalias !9707
  %i.pr = getelementptr inbounds nuw i8, ptr %1, i64 1216
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotEBM_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.pr)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction15FinalizedCommitEBM_.exit.i unwind label %bb.ep, !noalias !9718

bb.gd:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction15FinalizedCommitNtNtB2A_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2A_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.i.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.3.i.sroa.5, i64 16, i1 false), !noalias !9707
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.sroa.5.i, i64 24, i1 false), !noalias !9707
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.18.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.sroa.9.i, i64 7, i1 false), !noalias !9707
  %.sroa.18.72..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.18.i, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.18.72..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5208.i, i64 24, i1 false), !noalias !9707
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction15FinalizedCommitEBM_.exit156.i

bb.ge:                                            ; preds = %bb.gf
  %i.ps = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !9707
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collect10TryCollectINtNtNtBN_6stream3map3MapINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB4u_5ErrorENtNtB4_6marker4SendEL_EENCNCNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB5R_10VacuumPlan7execute00EINtNtB2J_3vec3VecNtNtB2J_6string6StringEEEB5V_(ptr noalias noundef align 8 dereferenceable(40) %i.pv) #52
          to label %bb.ga unwind label %bb.ep, !noalias !9718

bb.gf:                                            ; preds = %bb.fz, %bb.cx
  %i.pt = phi ptr [ %i.nr, %bb.fz ], [ %i.it, %bb.cx ] ; 11 uses
  %i.pu = phi ptr [ %i.ns, %bb.fz ], [ %i.is, %bb.cx ] ; 10 uses
  %.sroa.11.0.i = phi ptr [ %i.oq, %bb.fz ], [ undef, %bb.cx ] ; 9 uses
  %.sroa.0211.0.i = phi ptr [ %i.op, %bb.fz ], [ undef, %bb.cx ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !9707
  %i.pv = getelementptr inbounds nuw i8, ptr %1, i64 1312 ; 4 uses
  invoke void @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collectINtB5_10TryCollectINtNtNtB9_6stream3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1V_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB4d_5ErrorENtNtB1V_6marker4SendEL_EENCNCNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB5B_10VacuumPlan7execute00EINtNtB2r_3vec3VecNtNtB2r_6string6StringEENtNtNtB1V_6future6future6Future4pollB5F_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.pv, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.gg unwind label %bb.ge, !noalias !9718

bb.gg:                                            ; preds = %bb.gf
  %i.pw = load i64, ptr %i.w, align 8, !range !508, !noalias !9707, !noundef !12 ; 3 uses
  %i.px = icmp eq i64 %i.pw, -9223372036854775789
  br i1 %i.px, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !9707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !9707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.kq

bb.gi:                                            ; preds = %bb.gg
  %.sroa.3218.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.3218.i.sroa.0.0.copyload = load ptr, ptr %.sroa.3218.0..sroa_idx.i, align 8, !noalias !9707 ; 2 uses
  %.sroa.3218.i.sroa.5.0..sroa.3218.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3218.i.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3218.i.sroa.5.0..sroa.3218.0..sroa_idx.i.sroa_idx, i64 16, i1 false), !noalias !9707
  %.sroa.5219.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5219.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5219.0..sroa_idx.i, i64 24, i1 false), !noalias !9707
  %.sroa.5219.sroa.2.0..sroa.5219.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %.sroa.5219.sroa.2.0.copyload.i = load i8, ptr %.sroa.5219.sroa.2.0..sroa.5219.0..sroa_idx.sroa_idx.i, align 8, !noalias !9707
  %.sroa.5219.sroa.3.0..sroa.5219.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.5219.sroa.3.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.5219.sroa.3.0..sroa.5219.0..sroa_idx.sroa_idx.i, i64 15, i1 false), !noalias !9707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !9707
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collect10TryCollectINtNtNtBN_6stream3map3MapINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB4u_5ErrorENtNtB4_6marker4SendEL_EENCNCNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB5R_10VacuumPlan7execute00EINtNtB2J_3vec3VecNtNtB2J_6string6StringEEEB5V_(ptr noalias noundef align 8 dereferenceable(40) %i.pv)
          to label %bb.gk unwind label %bb.gj, !noalias !9718

bb.gj:                                            ; preds = %bb.gi
  %i.py = landingpad { ptr, i32 }
          cleanup
  br label %bb.ga

bb.gk:                                            ; preds = %bb.gi
  %.not.i118.i = icmp eq i64 %i.pw, -9223372036854775790
  %i.pz = getelementptr inbounds nuw i8, ptr %1, i64 1280 ; 4 uses
  br i1 %.not.i118.i, label %bb.gl, label %bb.ib

bb.gl:                                            ; preds = %bb.gk
  %i.qa = getelementptr inbounds nuw i8, ptr %1, i64 1304
  store i8 1, ptr %i.qa, align 8, !noalias !9707
  store ptr %.sroa.3218.i.sroa.0.0.copyload, ptr %i.pv, align 8, !noalias !9707
  %.sroa.3218.i.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3218.i.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3218.i.sroa.5, i64 16, i1 false), !noalias !9707
  call void @llvm.experimental.noalias.scope.decl(metadata !9773)
  call void @llvm.experimental.noalias.scope.decl(metadata !9776)
  %i.qb = load ptr, ptr %i.pz, align 8, !alias.scope !9779, !noalias !9707, !nonnull !12, !noundef !12
  %i.qc = atomicrmw sub ptr %i.qb, i64 1 release, align 8, !noalias !9780
  %i.qd = icmp eq i64 %i.qc, 1
  br i1 %i.qd, label %bb.gm, label %bb.go

bb.gm:                                            ; preds = %bb.gl
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.pz) #54
          to label %bb.go unwind label %bb.gn, !noalias !9718

bb.gn:                                            ; preds = %bb.gm
  %i.qe = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %.body159.i

bb.go:                                            ; preds = %bb.gm, %bb.gl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.qf = getelementptr i8, ptr %1, i64 1328
  %.val96.i = load i64, ptr %i.qf, align 8, !noalias !9707, !noundef !12 ; 2 uses
  %i.qg = icmp ult i64 %.val96.i, 384307168202282326
  call void @llvm.assume(i1 %i.qg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !9707
  %i.qh = getelementptr inbounds nuw i8, ptr %1, i64 600
  %i.qi = getelementptr inbounds nuw i8, ptr %1, i64 624
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !9707
  call void @llvm.experimental.noalias.scope.decl(metadata !9781)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !9784
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef range(i64 0, -9223372036854775808) 16, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc124.i unwind label %bb.gq, !noalias !9718

.noexc124.i:                                      ; preds = %bb.go
  %i.qj = load i64, ptr %i.f, align 8, !range !49, !noalias !9784, !noundef !12
  %i.qk = trunc nuw i64 %i.qj to i1
  %i.ql = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.qm = load i64, ptr %i.ql, align 8, !range !50, !noalias !9784, !noundef !12 ; 3 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.qk, label %bb.gp, label %bb.gr, !prof !51

bb.gp:                                            ; preds = %.noexc124.i
  %i.qo = load i64, ptr %i.qn, align 8, !noalias !9784
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.qm, i64 %i.qo) #50
          to label %.noexc125.i unwind label %bb.gq, !noalias !9718

.noexc125.i:                                      ; preds = %bb.gp
  unreachable

bb.gq:                                            ; preds = %bb.gp, %bb.go
  %i.qp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !9707
  br label %bb.ia

bb.gr:                                            ; preds = %.noexc124.i
  %i.qq = load ptr, ptr %i.qn, align 8, !noalias !9784, !nonnull !12, !noundef !12 ; 2 uses
  %i.qr = icmp ugt i64 %i.qm, 15
  call void @llvm.assume(i1 %i.qr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !9784
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.qq, ptr noundef nonnull readonly align 1 dereferenceable(16) @206, i64 range(i64 0, -9223372036854775808) 16, i1 false), !noalias !9789
  store i64 %i.qm, ptr %i.u, align 8, !alias.scope !9781, !noalias !9790
  %.sroa.4.0..sroa_idx.i122.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.qq, ptr %.sroa.4.0..sroa_idx.i122.i, align 8, !alias.scope !9781, !noalias !9790
  %.sroa.5.0..sroa_idx.i123.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
end_hunk_5
begin_hunk_6_@_RNCNvYNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableNtNtBa_5table13TableProvider14scan_with_args0Cs14kWLkQVSKO_14deltalake_core:bb.a
default.unreachable53:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !12, !align !209, !noundef !12
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.h = getelementptr i8, ptr %1, i64 88
  %.val8 = load ptr, ptr %i.h, align 8, !align !503, !noundef !12 ; 2 uses
  %i.i = getelementptr i8, ptr %1, i64 96
  %.val9 = load i64, ptr %i.i, align 8
  %.not.i = icmp eq ptr %.val8, null              ; 2 uses
  %..i = select i1 %.not.i, ptr inttoptr (i64 16 to ptr), ptr %.val8
  %.5.i = select i1 %.not.i, i64 0, i64 %.val9
  %i.j = getelementptr i8, ptr %1, i64 104
  %.val10 = load ptr, ptr %i.j, align 8, !align !209, !noundef !12 ; 2 uses
  %i.k = getelementptr i8, ptr %1, i64 112
  %.val11 = load i64, ptr %i.k, align 8           ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10321)
  %.not.i14 = icmp eq ptr %.val10, null
  br i1 %.not.i14, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10324
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 1152921504606846976) %.val11, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.c
  %i.m = load i64, ptr %i.a, align 8, !range !49, !noalias !10324, !noundef !12
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !50, !noalias !10324, !noundef !12 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.n, label %bb.d, label %bb.e, !prof !51

bb.d:                                             ; preds = %.noexc
  %i.r = load i64, ptr %i.q, align 8, !noalias !10324
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.p, i64 %i.r) #50
          to label %.noexc15 unwind label %bb.h

.noexc15:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.noexc
  %i.s = load ptr, ptr %i.q, align 8, !noalias !10324, !nonnull !12, !noundef !12 ; 2 uses
  %i.t = icmp samesign ule i64 %.val11, %i.p
  tail call void @llvm.assume(i1 %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10324
  %.not.i.i = icmp eq i64 %.val11, 0
  br i1 %.not.i.i, label %_RNCNCNvYNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableNtNtBc_5table13TableProvider14scan_with_args00Cs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = shl nuw nsw i64 %.val11, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull readonly align 8 %.val10, i64 %i.u, i1 false), !noalias !10329
  br label %_RNCNCNvYNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableNtNtBc_5table13TableProvider14scan_with_args00Cs14kWLkQVSKO_14deltalake_core.exit.i

_RNCNCNvYNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableNtNtBc_5table13TableProvider14scan_with_args00Cs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.f, %bb.e
  store i64 %i.p, ptr %i.l, align 8, !alias.scope !10321, !noalias !10330
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  store ptr %i.s, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !10321, !noalias !10330
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i64 %.val11, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !10321, !noalias !10330
  %i.v = icmp eq i64 %i.p, -9223372036854775808
  %i.w = select i1 %i.v, ptr null, ptr %i.l
  br label %bb.i

bb.g:                                             ; preds = %bb.b
  store i64 -9223372036854775808, ptr %i.l, align 8, !alias.scope !10321, !noalias !10330
  br label %bb.i

bb.h:                                             ; preds = %bb.d, %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body20

bb.i:                                             ; preds = %bb.g, %_RNCNCNvYNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableNtNtBc_5table13TableProvider14scan_with_args00Cs14kWLkQVSKO_14deltalake_core.exit.i
  %.not.i16 = phi ptr [ null, %bb.g ], [ %i.w, %_RNCNCNvYNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableNtNtBc_5table13TableProvider14scan_with_args00Cs14kWLkQVSKO_14deltalake_core.exit.i ]
  %.val12 = load i64, ptr %i.g, align 8, !range !49, !noundef !12
  %i.y = getelementptr i8, ptr %1, i64 80
  %.val13 = load i64, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !12, !noundef !12
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !12, !align !209, !noundef !12
  %i.ad = invoke { ptr, ptr } @_RNvXs3_NtNtCsanCXJAiNsO_18datafusion_catalog6memory5tableNtB5_8MemTableNtNtB9_5table13TableProvider4scan(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.f, ptr noundef nonnull %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %.not.i16, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %..i, i64 noundef %.5.i, i64 noundef %.val12, i64 %.val13)
          to label %bb.k unwind label %bb.j       ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.i
  %i.af = extractvalue { ptr, ptr } %i.ad, 0
  %i.ag = extractvalue { ptr, ptr } %i.ad, 1
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 144
  store ptr %i.af, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 152
  store ptr %i.ag, ptr %i.ai, align 8
  br label %bb.o

.body:                                            ; preds = %bb.w, %bb.v, %bb.n, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.v ], [ %i.ak, %bb.n ], [ %i.ax, %bb.w ], [ %i.ae, %bb.j ]
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 120
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.aj) #52
          to label %.body20 unwind label %bb.ag

.body20:                                          ; preds = %bb.ae, %bb.z, %bb.ab, %bb.h, %.body
  %.pn3 = phi { ptr, i32 } [ %i.bm, %bb.ae ], [ %.pn, %.body ], [ %i.x, %bb.h ], [ %i.bh, %bb.z ], [ %i.bj, %bb.ab ]
  store i8 2, ptr %i.c, align 8
  resume { ptr, i32 } %.pn3

bb.l:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @391) #56
  unreachable

bb.m:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @391) #56
  unreachable

bb.n:                                             ; preds = %bb.o
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val6 = load ptr, ptr %i.am, align 8
  %i.al = getelementptr i8, ptr %1, i64 152
  %.val7 = load ptr, ptr %i.al, align 8, !nonnull !12, !align !209, !noundef !12
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr %.val6, ptr nonnull %.val7) #52
          to label %.body unwind label %bb.ag

bb.o:                                             ; preds = %bb.a, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.am, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.p unwind label %bb.n

bb.p:                                             ; preds = %bb.o
  %i.an = load i64, ptr %i.b, align 8, !range !8900, !noundef !12 ; 3 uses
  %i.ao = icmp eq i64 %i.an, 21
  br i1 %i.ao, label %bb.q, label %bb.r

common.ret:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs14kWLkQVSKO_14deltalake_core.exit, %bb.q
  %storemerge = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs14kWLkQVSKO_14deltalake_core.exit ], [ 3, %bb.q ]
  store i8 %storemerge, ptr %i.c, align 8
  ret void

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 21, ptr %0, align 8
  br label %common.ret

bb.r:                                             ; preds = %bb.p
  %.sroa.343.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ap = load <2 x ptr>, ptr %.sroa.343.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val = load ptr, ptr %i.am, align 8            ; 5 uses
  %i.aq = getelementptr i8, ptr %1, i64 152
  %.val5 = load ptr, ptr %i.aq, align 8, !nonnull !12, !align !209, !noundef !12 ; 5 uses
  %i.ar = load ptr, ptr %.val5, align 8, !invariant.load !12 ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i18, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.ar(ptr noundef nonnull %.val)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.as = getelementptr inbounds nuw i8, ptr %.val5, i64 8
  %i.at = load i64, ptr %i.as, align 8, !range !378, !invariant.load !12 ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.av = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !range !490, !invariant.load !12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.at, i64 noundef range(i64 1, 536870913) %i.aw) #51
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit

bb.v:                                             ; preds = %bb.s
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.val5, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !range !378, !invariant.load !12 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %.body, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bb = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !range !490, !invariant.load !12
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.az, i64 noundef range(i64 1, 536870913) %i.bc) #51
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.u, %bb.t
  %.not.i19 = icmp eq i64 %i.an, 20
  br i1 %.not.i19, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit
  %i.bd = extractelement <2 x ptr> %i.ap, i64 0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bd) ]
  %i.be = extractelement <2 x ptr> %i.ap, i64 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.be) ]
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.bf = load i64, ptr %3, align 8, !range !50, !alias.scope !10331, !noundef !12
  %i.bg = icmp eq i64 %i.bf, -9223372036854775808
  br i1 %i.bg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs14kWLkQVSKO_14deltalake_core.exit.i24.invoke unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %.body20 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.ab:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs14kWLkQVSKO_14deltalake_core.exit.i24.invoke
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body20

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs14kWLkQVSKO_14deltalake_core.exit.i24.invoke, %bb.ac, %bb.x
  store i64 %i.an, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.ap, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  br label %common.ret

bb.ac:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.bk = load i64, ptr %4, align 8, !range !50, !alias.scope !10334, !noundef !12
  %i.bl = icmp eq i64 %i.bk, -9223372036854775808
  br i1 %i.bl, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %4)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs14kWLkQVSKO_14deltalake_core.exit.i24.invoke unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %4)
          to label %.body20 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs14kWLkQVSKO_14deltalake_core.exit.i24.invoke: ; preds = %bb.y, %bb.ad
  %5 = phi ptr [ %4, %bb.ad ], [ %3, %bb.y ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ab

bb.ag:                                            ; preds = %bb.n, %.body
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EBD_9into_data6vtableCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !12, !noundef !12
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !12, !align !209, !noundef !12
  tail call void @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_9into_data(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noundef nonnull %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.c)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMNtNtCskQDtHcQtBkN_5tokio7runtime7builderNtBa_7Builder11thread_nameNtNtCs6Po7BT7Nknu_5alloc6string6StringE0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_once6vtableCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %_RNCINvMNtNtCskQDtHcQtBkN_5tokio7runtime7builderNtB5_7Builder11thread_nameNtNtCs6Po7BT7Nknu_5alloc6string6StringE0Cs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCskQDtHcQtBkN_5tokio7runtime7builderNtBM_7Builder11thread_nameNtNtCs6Po7BT7Nknu_5alloc6string6StringE0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #52
          to label %common.resume.i unwind label %bb.e, !noalias !10337

_RNCINvMNtNtCskQDtHcQtBkN_5tokio7runtime7builderNtB5_7Builder11thread_nameNtNtCs6Po7BT7Nknu_5alloc6string6StringE0Cs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RNvYNCINvMNtNtCskQDtHcQtBkN_5tokio7runtime7builderNtB8_7Builder11thread_nameNtNtCs6Po7BT7Nknu_5alloc6string6StringE0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceCs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.c, !noalias !10337

bb.c:                                             ; preds = %_RNCINvMNtNtCskQDtHcQtBkN_5tokio7runtime7builderNtB5_7Builder11thread_nameNtNtCs6Po7BT7Nknu_5alloc6string6StringE0Cs14kWLkQVSKO_14deltalake_core.exit.i
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume.i unwind label %bb.d, !noalias !10337

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !10337
  unreachable

common.resume.i:                                  ; preds = %bb.c, %bb.b
  %common.resume.op.i = phi { ptr, i32 } [ %i.b, %bb.c ], [ %i.a, %bb.b ]
  resume { ptr, i32 } %common.resume.op.i

bb.e:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !10337
  unreachable

_RNvYNCINvMNtNtCskQDtHcQtBkN_5tokio7runtime7builderNtB8_7Builder11thread_nameNtNtCs6Po7BT7Nknu_5alloc6string6StringE0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNCINvMNtNtCskQDtHcQtBkN_5tokio7runtime7builderNtB5_7Builder11thread_nameNtNtCs6Po7BT7Nknu_5alloc6string6StringE0Cs14kWLkQVSKO_14deltalake_core.exit.i
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !10337
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCs3JXekYNd0JR_7dashmap7DashMapNtCseo6ZV82fEK1_3url3UrlIB1M_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE10initializeNCINvB1f_11get_or_initNCNvB3m_18logstore_factories0E0zE0E0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB3q_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !12, !align !209, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8, !noalias !10340
  call void @_RNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCs3JXekYNd0JR_7dashmap7DashMapNtCseo6ZV82fEK1_3url3UrlIB1H_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE10initializeNCINvB1a_11get_or_initNCNvB3h_18logstore_factories0E0zE0E0B3l_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr nonnull readnone align 4 poison)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCs3JXekYNd0JR_7dashmap7DashMapNtCseo6ZV82fEK1_3url3UrlIB1M_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE10initializeNCINvB1f_11get_or_initNCNvB3m_22object_store_factories0E0zE0E0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB3q_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !12, !align !209, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8, !noalias !10343
  call void @_RNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCs3JXekYNd0JR_7dashmap7DashMapNtCseo6ZV82fEK1_3url3UrlIB1H_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE10initializeNCINvB1a_11get_or_initNCNvB3h_22object_store_factories0E0zE0E0B3l_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr nonnull readnone align 4 poison)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockNtCsjyY8HP3IvQ6_12object_store10PutOptionsE10initializeNCINvB1f_11get_or_initNCNvNtNtCs14kWLkQVSKO_14deltalake_core8logstore16default_logstore11put_options0E0zE0E0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB38_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.0.i.i.i.i = alloca [104 x i8], align 8   ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !12, !align !209, !noundef !12 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10346)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !10346, !noalias !10349, !align !209, !noundef !12 ; 5 uses
  store ptr null, ptr %i.c, align 8, !alias.scope !10346, !noalias !10349
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.g, label %bb.b, !prof !51

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10352
  store i64 -9223372036854775806, ptr %i.b, align 8, !noalias !10352
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10352
  store i64 0, ptr %i.a, align 8, !noalias !10352
  %.sroa.42.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i, align 8, !noalias !10352
  %.sroa.53.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i, align 8, !noalias !10352
  %i.e = invoke { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @37)
          to label %_RNvYNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockNtCsjyY8HP3IvQ6_12object_store10PutOptionsE10initializeNCINvB1d_11get_or_initNCNvNtNtCs14kWLkQVSKO_14deltalake_core8logstore16default_logstore11put_options0E0zE0E0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB36_.exit unwind label %bb.c, !noalias !10352 ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4tags6TagSetECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a) #52
          to label %bb.e unwind label %bb.d, !noalias !10352

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !10352
  unreachable

bb.e:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store7PutModeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(48) %i.b) #52
          to label %bb.f unwind label %bb.d, !noalias !10352

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.f

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @150) #56, !noalias !10357
  unreachable

_RNvYNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockNtCsjyY8HP3IvQ6_12object_store10PutOptionsE10initializeNCINvB1d_11get_or_initNCNvNtNtCs14kWLkQVSKO_14deltalake_core8logstore16default_logstore11put_options0E0zE0E0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB36_.exit: ; preds = %bb.b
  %i.h = extractvalue { i64, i64 } %i.e, 0
  %i.i = extractvalue { i64, i64 } %i.e, 1
  %.sroa.0.24..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.24..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !noalias !10357
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !10357
  %.sroa.0.72..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i.i, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.72..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) @39, i64 32, i1 false), !noalias !10357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.0.i.i.i.i, i64 104, i1 false), !noalias !10357
  %.sroa.412.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store i64 %i.h, ptr %.sroa.412.0..sroa_idx.i.i.i, align 8, !noalias !10357
  %.sroa.513.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store i64 %i.i, ptr %.sroa.513.0..sroa_idx.i.i.i, align 8, !noalias !10357
  %.sroa.614.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  store ptr null, ptr %.sroa.614.0..sroa_idx.i.i.i, align 8, !noalias !10357
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockNtNtCs6Po7BT7Nknu_5alloc6string6StringE10initializeNCINvB1f_11get_or_initNCNvB1f_10try_insert0E0zE0E0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCs14kWLkQVSKO_14deltalake_core(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.47.i.i.i = alloca [16 x i8], align 8     ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !align !209, !noundef !12 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10358)
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8, !alias.scope !10358, !noalias !10361 ; 4 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !10358, !noalias !10361 ; 3 uses
  store ptr null, ptr %i.a, align 8, !alias.scope !10358, !noalias !10361
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !51

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10367)
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.0.0.copyload.i.i, align 8, !alias.scope !10370, !noalias !10371 ; 2 uses
  store i64 -9223372036854775808, ptr %.sroa.0.0.copyload.i.i, align 8, !alias.scope !10370, !noalias !10371
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_RNvYNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockNtNtCs6Po7BT7Nknu_5alloc6string6StringE10initializeNCINvB1d_11get_or_initNCNvB1d_10try_insert0E0zE0E0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit, !prof !51

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @175) #56, !noalias !10374
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @150) #56, !noalias !10375
  unreachable

_RNvYNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockNtNtCs6Po7BT7Nknu_5alloc6string6StringE10initializeNCINvB1d_11get_or_initNCNvB1d_10try_insert0E0zE0E0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.47.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.47.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i.i, i64 16, i1 false), !noalias !10375
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload.i.i) ]
  store i64 %.sroa.0.0.copyload.i.i.i.i.i, ptr %.sroa.5.sroa.0.0.copyload.i.i, align 8, !noalias !10375
  %.sroa.47.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.0.0.copyload.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.47.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.47.i.i.i, i64 16, i1 false), !noalias !10375
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.47.i.i.i)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockNtNtNtCskQDtHcQtBkN_5tokio7runtime7runtime7RuntimeE10initializeNCINvB1f_11get_or_initNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime5io_rt0E0zE0E0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB3i_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
end_hunk_6
begin_hunk_7_@_RNvXs1I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_14ScalarFunctionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !12
  %i.m = icmp eq i64 %i.j, %i.l
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.e
  %.sroa.0.0 = phi i1 [ %i.r, %bb.e ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.sroa.0.0

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !12, !noundef !12
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !12, !noundef !12
  %i.r = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.q, ptr noundef nonnull %i.o, i64 noundef %i.j)
  br label %bb.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RNvXs1K_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_14ScalarFunctionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !12, !noundef !12
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !12, !noundef !12
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = tail call noundef i8 @_RNvXs_NtCs8VI8w5SIoU4_15datafusion_expr3udfNtB4_9ScalarUDFNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f) ; 2 uses
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.b, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !12, !noundef !12
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !12 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !12, !noundef !12
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noundef !12 ; 2 uses
  %.sroa.0.0.i4 = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 0, 82351536043346213) %i.p, i64 range(i64 0, 82351536043346213) %i.l) ; 2 uses
  %exitcond.not7 = icmp eq i64 %.sroa.0.0.i4, 0
  br i1 %exitcond.not7, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.q = add nuw i64 %.sroa.01.0.i8, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.q, %.sroa.0.0.i4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %i.r = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %i.l, i64 %i.p)
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.01.0.i8 = phi i64 [ %i.q, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.s = getelementptr inbounds nuw [112 x i8], ptr %i.j, i64 %.sroa.01.0.i8
  %i.t = getelementptr inbounds nuw [112 x i8], ptr %i.n, i64 %.sroa.01.0.i8
  %i.u = tail call fastcc noundef i8 @_RNvXsY_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.s, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.t) #55, !inline_history !13668 ; 2 uses
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.c, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.lr.ph, %._crit_edge, %bb.a
  %.sroa.0.0 = phi i8 [ %i.g, %bb.a ], [ %i.r, %._crit_edge ], [ %i.u, %.lr.ph ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs1L_NtCs6Po7BT7Nknu_5alloc6stringnNtB6_12SpecToString14spec_to_string(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, i128 %.0.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 14 uses
  %i.d = alloca [39 x i8], align 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = icmp slt i128 %.0.val, 0
  br i1 %i.e, label %.noexc16, label %.noexc

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 39, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.f = load i64, ptr %i.b, align 8, !range !49, !noundef !12
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !50, !noundef !12 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.g, label %.noexc15, label %bb.b, !prof !51

.noexc15:                                         ; preds = %.noexc
  %i.k = load i64, ptr %i.j, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #50
  unreachable

.noexc16:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 40, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.l = load i64, ptr %i.a, align 8, !range !49, !noundef !12
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !50, !noundef !12 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.m, label %.noexc17, label %bb.d, !prof !51

.noexc17:                                         ; preds = %.noexc16
  %i.q = load i64, ptr %i.p, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.o, i64 %i.q) #50
  unreachable

bb.b:                                             ; preds = %.noexc
  %i.r = load ptr, ptr %i.j, align 8, !nonnull !12, !noundef !12
  %i.s = icmp ugt i64 %i.i, 38
  tail call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.i, ptr %i.c, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.r, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.511.0..sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.012.0 = phi i128 [ %i.aa, %bb.e ], [ %.0.val, %bb.b ]
  %i.t = invoke { ptr, i64 } @_RNvMs0_NtNtCsbvkFyIu7lgC_4core3fmt3numo4__fmt(i128 noundef %.sroa.012.0, ptr noalias noundef nonnull %i.d, i64 noundef 39)
          to label %bb.f unwind label %bb.j       ; 2 uses

bb.d:                                             ; preds = %.noexc16
  %i.u = load ptr, ptr %i.p, align 8, !nonnull !12, !noundef !12
  %i.v = icmp ugt i64 %i.o, 39
  tail call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.o, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.u, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 0, ptr %.sroa.55.0..sroa_idx, align 8
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 1)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %.sroa.44.0..sroa_idx, align 8, !alias.scope !13669, !nonnull !12, !noundef !12
  %i.x = load i64, ptr %.sroa.55.0..sroa_idx, align 8, !alias.scope !13669, !noundef !12 ; 2 uses
  %i.y = icmp sgt i64 %i.x, -1
  call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.x
  store i8 45, ptr %i.z, align 1
  store i64 1, ptr %.sroa.55.0..sroa_idx, align 8, !alias.scope !13669
  %i.aa = sub i128 0, %.0.val
  br label %bb.c

bb.f:                                             ; preds = %bb.c
  %i.ab = extractvalue { ptr, i64 } %i.t, 0       ; 2 uses
  %i.ac = extractvalue { ptr, i64 } %i.t, 1       ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ab) ]
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.ac)
          to label %.noexc20 unwind label %bb.j

.noexc20:                                         ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !13672, !noundef !12 ; 3 uses
  %i.af = icmp sgt i64 %i.ae, -1
  call void @llvm.assume(i1 %i.af)
  %.not.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.noexc20
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !13672, !nonnull !12, !noundef !12
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ae
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ai, ptr nonnull readonly align 1 %i.ab, i64 %i.ac, i1 false)
  %.pre.i = load i64, ptr %i.ad, align 8, !alias.scope !13672
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.noexc20
  %i.aj = phi i64 [ %.pre.i, %bb.g ], [ %i.ae, %.noexc20 ]
  %i.ak = add i64 %i.aj, %i.ac
  store i64 %i.ak, ptr %i.ad, align 8, !alias.scope !13672
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.i:                                             ; preds = %bb.j
  resume { ptr, i32 } %lpad.thr_comm.split-lp

bb.j:                                             ; preds = %bb.c, %bb.d, %bb.f
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #52
          to label %bb.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1N_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13DescribeTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr captures(address, read_provenance) %.0.val, ptr nofree readonly captures(address) %.8.val, ptr captures(address, read_provenance) %.0.val1, ptr nofree readonly captures(address) %.8.val3) unnamed_addr #2 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val1) ]
  %i.a = icmp eq ptr %.0.val, %.0.val1
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13678)
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !13675, !noalias !13678, !noundef !12 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !13678, !noalias !13675, !noundef !12
  %i.f = icmp eq i64 %i.c, %i.e
  br i1 %i.f, label %bb.c, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val1, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.i = load ptr, ptr %i.g, align 8, !alias.scope !13678, !noalias !13675, !nonnull !12, !noundef !12
  %i.j = load ptr, ptr %i.h, align 8, !alias.scope !13675, !noalias !13678, !nonnull !12, !noundef !12
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.m = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, i64 noundef %i.c), !noalias !13680
  br i1 %i.m, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %.0.val1, i64 32
  %i.p = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o)
  br i1 %i.p, label %bb.d, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.a, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val3) ]
  %i.q = icmp eq ptr %.8.val, %.8.val3
  br i1 %i.q, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.e

_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.c, %bb.b, %bb.k, %bb.j, %bb.i, %bb.h, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, %bb.g, %bb.f, %bb.d, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  %.sroa.0.0 = phi i1 [ false, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %bb.g ], [ true, %bb.d ], [ %i.be, %bb.k ], [ false, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.f ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.sroa.0.0

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13681)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13684)
  %i.r = getelementptr inbounds nuw i8, ptr %.8.val, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !13681, !noalias !13684, !nonnull !12, !noundef !12 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.8.val3, i64 64
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !13684, !noalias !13681, !nonnull !12, !noundef !12 ; 4 uses
  %i.v = icmp eq ptr %i.s, %i.u
  br i1 %i.v, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13686)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13689)
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !13686, !noalias !13691, !noundef !12 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !13689, !noalias !13692, !noundef !12
  %i.aa = icmp eq i64 %i.x, %i.z
  br i1 %i.aa, label %bb.g, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ad = load ptr, ptr %i.ab, align 8, !alias.scope !13689, !noalias !13692, !nonnull !12, !noundef !12
  %i.ae = load ptr, ptr %i.ac, align 8, !alias.scope !13686, !noalias !13691, !nonnull !12, !noundef !12
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ah = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.af, ptr noundef nonnull %i.ag, i64 noundef %i.x), !noalias !13693
  br i1 %i.ah, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.ak = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aj), !noalias !13694
  br i1 %i.ak, label %bb.h, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !13681, !noalias !13684, !noundef !12 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.8.val3, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !13684, !noalias !13681, !noundef !12
  %i.ap = icmp eq i64 %i.am, %i.ao
  br i1 %i.ap, label %bb.i, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %.8.val3, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !13684, !noalias !13681, !nonnull !12, !noundef !12
  %i.as = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !13681, !noalias !13684, !nonnull !12, !noundef !12
  %i.au = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtB9_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.at, ptr noundef nonnull %i.ar, i64 noundef %i.am), !noalias !13694
  br i1 %i.au, label %bb.j, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %.8.val, i64 56
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !13681, !noalias !13684, !noundef !12 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.8.val3, i64 56
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !13684, !noalias !13681, !noundef !12
  %i.az = icmp eq i64 %i.aw, %i.ay
  br i1 %i.az, label %bb.k, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %.8.val3, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !13684, !noalias !13681, !nonnull !12, !noundef !12
  %i.bc = getelementptr inbounds nuw i8, ptr %.8.val, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !13681, !noalias !13684, !nonnull !12, !noundef !12
  %i.be = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.bd, ptr noundef nonnull %i.bb, i64 noundef %i.aw), !noalias !13694
  br label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RNvXs1O_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_16ArrayElemTypeDefNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !5303, !noundef !12 ; 4 uses
  %i.b = icmp ne i64 %i.a, 4
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -2
  %.inv = icmp samesign ult i64 %i.a, 2
  %i.d = select i1 %.inv, i64 2, i64 %i.c         ; 2 uses
  %i.e = load i64, ptr %1, align 8, !range !5303, !noundef !12 ; 4 uses
  %i.f = icmp ne i64 %i.e, 4
  tail call void @llvm.assume(i1 %i.f)
  %i.g = add nsw i64 %i.e, -2
  %.inv4 = icmp samesign ult i64 %i.e, 2
  %i.h = select i1 %.inv4, i64 2, i64 %i.g        ; 4 uses
  switch i64 %i.d, label %bb.b [
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 0, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.g, label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.j = icmp eq i64 %i.h, 2
  br i1 %i.j, label %bb.i, label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.k = icmp eq i64 %i.h, 3
  br i1 %i.k, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.l = tail call i8 @llvm.scmp.i8.i64(i64 %i.d, i64 %i.h)
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !12, !noundef !12
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !12, !noundef !12
  %i.q = tail call fastcc noundef i8 @_RNvXsk_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.p) #55
  br label %bb.h

bb.h:                                             ; preds = %bb.k, %bb.l, %bb.m, %bb.i, %bb.n, %bb.g, %bb.f
  %.sroa.0.0 = phi i8 [ %i.q, %bb.g ], [ %i.l, %bb.f ], [ %i.ad, %bb.m ], [ %i.v, %bb.i ], [ %., %bb.l ], [ %i.ai, %bb.n ], [ 1, %bb.k ]
  ret i8 %.sroa.0.0

bb.i:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !12, !noundef !12
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !12, !noundef !12
  %i.v = tail call fastcc noundef i8 @_RNvXsk_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.u) #55 ; 2 uses
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.j, label %bb.h

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = trunc nuw i64 %i.a to i1
  %i.z = trunc nuw i64 %i.e to i1                 ; 2 uses
  br i1 %i.y, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  br i1 %i.z, label %bb.m, label %bb.h

bb.l:                                             ; preds = %bb.j
  %. = sext i1 %i.z to i8
  br label %bb.h

bb.m:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load i64, ptr %i.x, align 8, !noundef !12
  %i.ac = load i64, ptr %i.aa, align 8, !noundef !12
  %i.ad = tail call i8 @llvm.ucmp.i8.i64(i64 %i.ab, i64 %i.ac)
  br label %bb.h

bb.n:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !12, !noundef !12
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !12, !noundef !12
  %i.ai = tail call fastcc noundef i8 @_RNvXsk_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.af, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ah) #55
  br label %bb.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RNvXs1Q_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_7SetExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2696) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2696) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !2808, !noundef !12 ; 3 uses
  %i.b = load i8, ptr %1, align 8, !range !2808, !noundef !12 ; 2 uses
  %.not69 = icmp eq i8 %i.a, %i.b
  br i1 %.not69, label %.lr.ph, label %tailrecurse._crit_edge

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %i.c = phi i8 [ %i.dh, %tailrecurse ], [ %i.a, %bb.a ]
  %.tr1771 = phi ptr [ %i.dg, %tailrecurse ], [ %1, %bb.a ] ; 14 uses
  %.tr70 = phi ptr [ %i.de, %tailrecurse ], [ %0, %bb.a ] ; 14 uses
  switch i8 %i.c, label %default.unreachable119 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.h
    i8 5, label %bb.i
    i8 6, label %bb.j
    i8 7, label %bb.k
    i8 8, label %bb.l
  ]

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.lcssa30 = phi i8 [ %i.a, %bb.a ], [ %i.dh, %tailrecurse ]
  %.lcssa19 = phi i8 [ %i.b, %bb.a ], [ %i.di, %tailrecurse ]
  %i.d = zext nneg i8 %.lcssa30 to i64
  %i.e = zext nneg i8 %.lcssa19 to i64
  %i.f = tail call i8 @llvm.scmp.i8.i64(i64 %i.d, i64 %i.e)
  br label %_RNvXse8_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

default.unreachable119:                           ; preds = %.lr.ph
end_hunk_7
begin_hunk_8_@_RNvXs1w_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_5QueryNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp:bb.a

bb.av:                                            ; preds = %bb.as
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.do = load ptr, ptr %i.dn, align 8, !nonnull !12, !noundef !12
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.dq = load i64, ptr %i.dp, align 8, !noundef !12
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 1264
  %i.ds = load ptr, ptr %i.dr, align 8, !nonnull !12, !noundef !12
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 1272
  %i.du = load i64, ptr %i.dt, align 8, !noundef !12
  %i.dv = tail call fastcc noundef i8 @_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2K_s_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.do, i64 noundef %i.dq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ds, i64 noundef %i.du) #55 ; 2 uses
  %i.dw = icmp eq i8 %i.dv, 0
  br i1 %i.dw, label %bb.au, label %_RNvXs3m_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4WithNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread

bb.aw:                                            ; preds = %bb.au
  br i1 %.not54, label %_RNvXs3m_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4WithNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread, label %bb.az

bb.ax:                                            ; preds = %bb.au
  br i1 %.not54, label %bb.ay, label %_RNvXs3m_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4WithNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread

bb.ay:                                            ; preds = %bb.az, %bb.ax
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.dy = load ptr, ptr %i.dx, align 8, !nonnull !12, !noundef !12
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.ea = load i64, ptr %i.dz, align 8, !noundef !12
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 1120
  %i.ec = load ptr, ptr %i.eb, align 8, !nonnull !12, !noundef !12
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 1128
  %i.ee = load i64, ptr %i.ed, align 8, !noundef !12
  %i.ef = tail call fastcc noundef i8 @_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query12PipeOperatorINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2Q_s_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.dy, i64 noundef %i.ea, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ec, i64 noundef %i.ee) #55
  br label %_RNvXs3m_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4WithNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread

bb.az:                                            ; preds = %bb.aw
  %i.eg = tail call fastcc noundef i8 @_RNvXseM_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12FormatClauseNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.dj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.dl) #55 ; 2 uses
  %i.eh = icmp eq i8 %i.eg, 0
  br i1 %i.eh, label %bb.ay, label %_RNvXs3m_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4WithNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread

_RNvXs3m_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4WithNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread: ; preds = %bb.t, %bb.q, %bb.p, %bb.u, %_RNvXs3G_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_3CteNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit, %bb.k, %bb.l, %_RNvXsai_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_19TableAliasColumnDefNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit, %bb.ac, %bb.ad, %bb.aw, %bb.ax, %bb.as, %bb.at, %bb.ao, %bb.ap, %bb.aj, %bb.ak, %bb.af, %bb.ag, %bb.y, %bb.z, %bb.b, %bb.c, %_RNvXsbg_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_7OrderByNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit, %bb.am, %bb.al, %bb.av, %bb.az, %bb.ay, %bb.ar, %bb.ai, %bb.d, %_RNvXs3m_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4WithNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit
  %.sroa.0.0 = phi i8 [ %i.ef, %bb.ay ], [ %i.eg, %bb.az ], [ -1, %bb.ax ], [ 1, %bb.as ], [ %i.dv, %bb.av ], [ -1, %bb.at ], [ 1, %bb.ao ], [ %i.dh, %bb.ar ], [ -1, %bb.ap ], [ 1, %bb.aj ], [ %i.cx, %bb.al ], [ %i.cz, %bb.am ], [ -1, %bb.ak ], [ 1, %bb.af ], [ %i.cn, %bb.ai ], [ -1, %bb.ag ], [ 1, %bb.y ], [ %.sroa.0.0.i56, %_RNvXsbg_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_7OrderByNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit ], [ -1, %bb.z ], [ 1, %bb.b ], [ %i.i, %bb.d ], [ %.sroa.0.0.i, %_RNvXs3m_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4WithNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit ], [ -1, %bb.c ], [ 1, %bb.aw ], [ -1, %bb.ad ], [ -1, %bb.l ], [ 1, %bb.ac ], [ 1, %bb.k ], [ %.sroa.0.0.i63, %_RNvXsai_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_19TableAliasColumnDefNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit ], [ 1, %bb.p ], [ -1, %bb.q ], [ 1, %bb.t ], [ -1, %bb.u ], [ %.sroa.0.0.i60, %_RNvXs3G_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_3CteNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs22_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_7TryCastNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !12, !noundef !12
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !12, !noundef !12
  %i.e = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.b, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.d) #55
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call fastcc noundef zeroext i1 @_RNvXs5_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #55
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RNvXs24_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_7TryCastNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !12, !noundef !12
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !12, !noundef !12
  %i.e = tail call fastcc noundef i8 @_RNvXsY_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.b, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.d) #55 ; 2 uses
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call fastcc noundef i8 @_RNvXs8_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #55
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i8 [ %i.g, %bb.b ], [ %i.e, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs25_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7AnalyzeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !208, !noundef !12
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i8, ptr %i.c, align 8, !range !208, !noundef !12
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = tail call fastcc noundef zeroext i1 @_RNvXsK_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.i, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.j) #55
  br i1 %i.k, label %bb.d, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !12, !noundef !12 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !12, !noundef !12 ; 6 uses
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.e

_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, %bb.g, %bb.f, %bb.d, %bb.c, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.c ], [ true, %bb.d ], [ false, %bb.a ], [ %i.bd, %bb.k ], [ false, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.f ], [ false, %bb.g ]
  ret i1 %.sroa.0.0

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14022)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14025)
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !14022, !noalias !14025, !nonnull !12, !noundef !12 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !14025, !noalias !14022, !nonnull !12, !noundef !12 ; 4 uses
  %i.u = icmp eq ptr %i.r, %i.t
  br i1 %i.u, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14027)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14030)
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !14027, !noalias !14032, !noundef !12 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !14030, !noalias !14033, !noundef !12
  %i.z = icmp eq i64 %i.w, %i.y
  br i1 %i.z, label %bb.g, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ac = load ptr, ptr %i.aa, align 8, !alias.scope !14030, !noalias !14033, !nonnull !12, !noundef !12
  %i.ad = load ptr, ptr %i.ab, align 8, !alias.scope !14027, !noalias !14032, !nonnull !12, !noundef !12
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ag = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.ae, ptr noundef nonnull %i.af, i64 noundef %i.w), !noalias !14034
  br i1 %i.ag, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.aj = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ai), !noalias !14035
  br i1 %i.aj, label %bb.h, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !14022, !noalias !14025, !noundef !12 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !14025, !noalias !14022, !noundef !12
  %i.ao = icmp eq i64 %i.al, %i.an
  br i1 %i.ao, label %bb.i, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !14025, !noalias !14022, !nonnull !12, !noundef !12
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !14022, !noalias !14025, !nonnull !12, !noundef !12
  %i.at = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtB9_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.as, ptr noundef nonnull %i.aq, i64 noundef %i.al), !noalias !14035
  br i1 %i.at, label %bb.j, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !14022, !noalias !14025, !noundef !12 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !14025, !noalias !14022, !noundef !12
  %i.ay = icmp eq i64 %i.av, %i.ax
  br i1 %i.ay, label %bb.k, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !14025, !noalias !14022, !nonnull !12, !noundef !12
  %i.bb = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !14022, !noalias !14025, !nonnull !12, !noundef !12
  %i.bd = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.bc, ptr noundef nonnull %i.ba, i64 noundef %i.av), !noalias !14035
  br label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs2B_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_14WindowFunctionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(288) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(288) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 272
  %.val = load i64, ptr %i.a, align 16, !range !49, !noundef !12 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280
  %.val1 = load ptr, ptr %i.c, align 8            ; 4 uses
  %.val2 = load i64, ptr %i.b, align 16, !range !49, !noundef !12
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 280
  %.val3 = load ptr, ptr %i.d, align 8            ; 4 uses
  %i.e = icmp eq i64 %.val, %.val2
  br i1 %i.e, label %bb.b, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.f = trunc nuw i64 %.val to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  %i.g = icmp eq ptr %.val1, %.val3               ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %i.g, label %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.b
  br i1 %i.g, label %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.j = tail call noundef zeroext i1 @_RNvXNtCs8VI8w5SIoU4_15datafusion_expr4udafNtB2_12AggregateUDFNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i)
  br i1 %i.j, label %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.m = tail call noundef zeroext i1 @_RNvXs_NtCs8VI8w5SIoU4_15datafusion_expr4udwfNtB4_9WindowUDFNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l)
  br i1 %i.m, label %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.c, %bb.d, %bb.e, %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14036)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14039)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.o = load i8, ptr %i.n, align 16, !range !208, !alias.scope !14036, !noalias !14039, !noundef !12
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.q = load i8, ptr %i.p, align 16, !range !208, !alias.scope !14039, !noalias !14036, !noundef !12
  %i.r = icmp eq i8 %i.o, %i.q
  br i1 %i.r, label %bb.f, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.t = load i64, ptr %i.s, align 16, !alias.scope !14036, !noalias !14039, !noundef !12 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.v = load i64, ptr %i.u, align 16, !alias.scope !14039, !noalias !14036, !noundef !12
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %bb.g, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !14039, !noalias !14036, !nonnull !12, !noundef !12
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !14036, !noalias !14039, !nonnull !12, !noundef !12
  %i.ab = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.y, i64 noundef %i.t), !noalias !14041, !inline_history !14042
  br i1 %i.ab, label %bb.h, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !14036, !noalias !14039, !noundef !12 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !14039, !noalias !14036, !noundef !12
  %i.ag = icmp eq i64 %i.ad, %i.af
  br i1 %i.ag, label %bb.i, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.ai = load ptr, ptr %i.ah, align 16, !alias.scope !14039, !noalias !14036, !nonnull !12, !noundef !12
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ak = load ptr, ptr %i.aj, align 16, !alias.scope !14036, !noalias !14039, !nonnull !12, !noundef !12
  %i.al = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.ai, i64 noundef %i.ad), !noalias !14041, !inline_history !14042
  br i1 %i.al, label %bb.j, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.an = load i64, ptr %i.am, align 16, !alias.scope !14036, !noalias !14039, !noundef !12 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.ap = load i64, ptr %i.ao, align 16, !alias.scope !14039, !noalias !14036, !noundef !12
  %i.aq = icmp eq i64 %i.an, %i.ap
  br i1 %i.aq, label %bb.k, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !14039, !noalias !14036, !nonnull !12, !noundef !12
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !14036, !noalias !14039, !nonnull !12, !noundef !12
  %i.av = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.au, ptr noundef nonnull %i.as, i64 noundef %i.an), !noalias !14041, !inline_history !14042
  br i1 %i.av, label %bb.l, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.k
  %i.aw = tail call fastcc noundef zeroext i1 @_RNvXs9_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB5_11WindowFrameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(272) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(272) %1) #55, !inline_history !14042
  br i1 %i.aw, label %bb.m, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !14036, !noalias !14039, !align !503, !noundef !12 ; 2 uses
  %.not.i = icmp eq ptr %i.ay, null
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !14039, !noalias !14036, !align !503, !noundef !12 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null                 ; 2 uses
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %i.bb, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.p

bb.o:                                             ; preds = %bb.m
  br i1 %i.bb, label %bb.q, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %bb.n
  %i.bc = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ay, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ba) #55, !inline_history !14042
  br i1 %i.bc, label %bb.q, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 257
  %i.be = load i8, ptr %i.bd, align 1, !range !470, !alias.scope !14036, !noalias !14039, !noundef !12 ; 2 uses
  %.not5.i = icmp eq i8 %i.be, 2
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 257
  %i.bg = load i8, ptr %i.bf, align 1, !range !470, !alias.scope !14039, !noalias !14036, !noundef !12 ; 2 uses
  br i1 %.not5.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bh = icmp eq i8 %i.be, %i.bg
  br label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %bb.q
  %i.bi = icmp eq i8 %i.bg, 2
  br label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.r, %bb.a, %bb.s, %bb.o, %bb.n, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, %bb.p, %bb.e, %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  %.sroa.0.0 = phi i1 [ false, %bb.e ], [ false, %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %bb.p ], [ false, %bb.a ], [ false, %bb.g ], [ %i.bi, %bb.s ], [ false, %bb.n ], [ false, %bb.l ], [ false, %bb.j ], [ false, %bb.h ], [ false, %bb.f ], [ false, %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread ], [ false, %bb.o ], [ false, %bb.k ], [ false, %bb.i ], [ %i.bh, %bb.r ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RNvXs2D_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_14WindowFunctionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(288) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(288) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 272
  %.val = load i64, ptr %i.a, align 16, !range !49, !noundef !12 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280
  %.val4 = load ptr, ptr %i.c, align 8            ; 6 uses
  %.val5 = load i64, ptr %i.b, align 16, !range !49, !noundef !12 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 280
  %.val6 = load ptr, ptr %i.d, align 8            ; 6 uses
  %i.e = trunc nuw i64 %.val to i1
  %i.f = trunc nuw i64 %.val5 to i1               ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.f, label %bb.d

bb.c:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = sub nsw i64 %.val, %.val5
  %i.h = trunc nsw i64 %i.g to i8
  br label %_RNvXs2x_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6) ]
  %i.i = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !12, !noundef !12
  %i.k = getelementptr inbounds nuw i8, ptr %.val4, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !12, !align !209, !noundef !12 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !490, !invariant.load !12
  %i.o = add nsw i64 %i.n, -1
  %i.p = and i64 %i.o, -16
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !12, !noundef !12
  %i.u = getelementptr inbounds nuw i8, ptr %.val6, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !12, !align !209, !noundef !12 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !490, !invariant.load !12
  %i.y = add nsw i64 %i.x, -1
  %i.z = and i64 %i.y, -16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = tail call noundef i8 @_RNvXs5_NtCs8VI8w5SIoU4_15datafusion_expr4udafDNtB5_16AggregateUDFImplEL_NtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noundef nonnull %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(280) %i.l, ptr noundef nonnull %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(280) %i.v)
  br label %_RNvXs2x_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.f:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !12, !noundef !12
  %i.af = getelementptr inbounds nuw i8, ptr %.val4, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !12, !align !209, !noundef !12 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !range !490, !invariant.load !12
  %i.aj = add nsw i64 %i.ai, -1
  %i.ak = and i64 %i.aj, -16
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !12, !noundef !12
  %i.ap = getelementptr inbounds nuw i8, ptr %.val6, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !12, !align !209, !noundef !12 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !range !490, !invariant.load !12
  %i.at = add nsw i64 %i.as, -1
  %i.au = and i64 %i.at, -16
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = tail call noundef i8 @_RNvXs5_NtCs8VI8w5SIoU4_15datafusion_expr4udwfDNtB5_13WindowUDFImplEL_NtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noundef nonnull %i.am, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.ag, ptr noundef nonnull %i.aw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.aq)
  br label %_RNvXs2x_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

_RNvXs2x_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.sroa.0.0.i = phi i8 [ %i.ax, %bb.f ], [ %i.h, %bb.d ], [ %i.ac, %bb.e ] ; 2 uses
  %i.ay = icmp eq i8 %.sroa.0.0.i, 0
  br i1 %i.ay, label %bb.g, label %_RNvXs2K_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.g:                                             ; preds = %_RNvXs2x_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14043)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14046)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !14043, !noalias !14046, !nonnull !12, !noundef !12
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bc = load i64, ptr %i.bb, align 16, !alias.scope !14043, !noalias !14046, !noundef !12 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !14046, !noalias !14043, !nonnull !12, !noundef !12
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.bg = load i64, ptr %i.bf, align 16, !alias.scope !14046, !noalias !14043, !noundef !12 ; 3 uses
  %.sroa.0.0.i.i18 = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 0, 82351536043346213) %i.bg, i64 range(i64 0, 82351536043346213) %i.bc) ; 2 uses
  %exitcond.not59 = icmp eq i64 %.sroa.0.0.i.i18, 0
  br i1 %exitcond.not59, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit25, label %.lr.ph

bb.h:                                             ; preds = %.lr.ph
  %i.bh = add nuw i64 %.sroa.01.0.i2060, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.bh, %.sroa.0.0.i.i18
  br i1 %exitcond.not, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit25, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.h
  %.sroa.01.0.i2060 = phi i64 [ %i.bh, %bb.h ], [ 0, %bb.g ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [112 x i8], ptr %i.ba, i64 %.sroa.01.0.i2060
  %i.bj = getelementptr inbounds nuw [112 x i8], ptr %i.be, i64 %.sroa.01.0.i2060
  %i.bk = tail call fastcc noundef i8 @_RNvXsY_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.bi, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.bj) #55, !noalias !14048, !inline_history !14049 ; 2 uses
  %i.bl = icmp eq i8 %i.bk, 0
  br i1 %i.bl, label %bb.h, label %_RNvXs2K_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit25: ; preds = %bb.h, %bb.g
  %i.bm = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %i.bc, i64 %i.bg)
  %i.bn = icmp eq i64 %i.bc, %i.bg
  br i1 %i.bn, label %bb.i, label %_RNvXs2K_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.i:                                             ; preds = %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit25
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bp = load ptr, ptr %i.bo, align 16, !alias.scope !14043, !noalias !14046, !nonnull !12, !noundef !12
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !14043, !noalias !14046, !noundef !12 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.bt = load ptr, ptr %i.bs, align 16, !alias.scope !14046, !noalias !14043, !nonnull !12, !noundef !12
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !14046, !noalias !14043, !noundef !12 ; 3 uses
  %.sroa.0.0.i.i11 = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 0, 82351536043346213) %i.bv, i64 range(i64 0, 82351536043346213) %i.br) ; 2 uses
  %exitcond41.not61 = icmp eq i64 %.sroa.0.0.i.i11, 0
  br i1 %exitcond41.not61, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph63

bb.j:                                             ; preds = %.lr.ph63
  %i.bw = add nuw i64 %.sroa.01.0.i1362, 1        ; 2 uses
  %exitcond41.not = icmp eq i64 %i.bw, %.sroa.0.0.i.i11
  br i1 %exitcond41.not, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph63

.lr.ph63:                                         ; preds = %bb.i, %bb.j
  %.sroa.01.0.i1362 = phi i64 [ %i.bw, %bb.j ], [ 0, %bb.i ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [112 x i8], ptr %i.bp, i64 %.sroa.01.0.i1362
  %i.by = getelementptr inbounds nuw [112 x i8], ptr %i.bt, i64 %.sroa.01.0.i1362
  %i.bz = tail call fastcc noundef i8 @_RNvXsY_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.bx, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.by) #55, !noalias !14048, !inline_history !14049 ; 2 uses
  %i.ca = icmp eq i8 %i.bz, 0
  br i1 %i.ca, label %bb.j, label %_RNvXs2K_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.j, %bb.i
  %i.cb = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %i.br, i64 %i.bv)
  %i.cc = icmp eq i64 %i.br, %i.bv
  br i1 %i.cc, label %bb.k, label %_RNvXs2K_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.k:                                             ; preds = %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ce = load ptr, ptr %i.cd, align 8, !alias.scope !14043, !noalias !14046, !nonnull !12, !noundef !12
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.cg = load i64, ptr %i.cf, align 16, !alias.scope !14043, !noalias !14046, !noundef !12 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.ci = load ptr, ptr %i.ch, align 8, !alias.scope !14046, !noalias !14043, !nonnull !12, !noundef !12
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.ck = load i64, ptr %i.cj, align 16, !alias.scope !14046, !noalias !14043, !noundef !12 ; 3 uses
  %.sroa.0.0.i.i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 0, 72057594037927936) %i.ck, i64 range(i64 0, 72057594037927936) %i.cg) ; 2 uses
  %exitcond42.not64 = icmp eq i64 %.sroa.0.0.i.i, 0
  br i1 %exitcond42.not64, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph66

bb.l:                                             ; preds = %_RNvXs2b_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4SortNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit
  %exitcond42.not = icmp eq i64 %i.cl, %.sroa.0.0.i.i
  br i1 %exitcond42.not, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph66

.lr.ph66:                                         ; preds = %bb.k, %bb.l
  %.sroa.01.0.i65 = phi i64 [ %i.cl, %bb.l ], [ 0, %bb.k ] ; 3 uses
  %i.cl = add nuw i64 %.sroa.01.0.i65, 1          ; 2 uses
  %i.cm = getelementptr inbounds nuw [128 x i8], ptr %i.ce, i64 %.sroa.01.0.i65 ; 3 uses
  %i.cn = getelementptr inbounds nuw [128 x i8], ptr %i.ci, i64 %.sroa.01.0.i65 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14050)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14053)
  %i.co = tail call fastcc noundef i8 @_RNvXsY_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.cm, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.cn) #55, !noalias !14048, !inline_history !14055 ; 2 uses
  %i.cp = icmp eq i8 %i.co, 0
  br i1 %i.cp, label %bb.m, label %_RNvXs2b_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4SortNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.m:                                             ; preds = %.lr.ph66
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 112
  %i.cr = load i8, ptr %i.cq, align 16, !range !208, !alias.scope !14050, !noalias !14056, !noundef !12
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 112
  %i.ct = load i8, ptr %i.cs, align 16, !range !208, !alias.scope !14053, !noalias !14057, !noundef !12
  %i.cu = sub nsw i8 %i.cr, %i.ct                 ; 2 uses
  %i.cv = icmp eq i8 %i.cu, 0
  br i1 %i.cv, label %bb.n, label %_RNvXs2b_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4SortNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.n:                                             ; preds = %bb.m
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cm, i64 113
  %i.cx = load i8, ptr %i.cw, align 1, !range !208, !alias.scope !14050, !noalias !14056, !noundef !12
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cn, i64 113
  %i.cz = load i8, ptr %i.cy, align 1, !range !208, !alias.scope !14053, !noalias !14057, !noundef !12
  %i.da = sub nsw i8 %i.cx, %i.cz
  br label %_RNvXs2b_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4SortNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

_RNvXs2b_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4SortNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit: ; preds = %.lr.ph66, %bb.m, %bb.n
  %.sroa.0.0.i26 = phi i8 [ %i.co, %.lr.ph66 ], [ %i.da, %bb.n ], [ %i.cu, %bb.m ] ; 2 uses
  %i.db = icmp eq i8 %.sroa.0.0.i26, 0
  br i1 %i.db, label %bb.l, label %_RNvXs2K_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.l, %bb.k
  %i.dc = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %i.cg, i64 %i.ck)
  %i.dd = icmp eq i64 %i.cg, %i.ck
  br i1 %i.dd, label %bb.o, label %_RNvXs2K_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.o:                                             ; preds = %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit
  %i.de = tail call fastcc noundef i8 @_RNvXsb_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB5_11WindowFrameNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(272) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(272) %1) #55, !inline_history !14058 ; 2 uses
  %i.df = icmp eq i8 %i.de, 0
  br i1 %i.df, label %bb.p, label %_RNvXs2K_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.p:                                             ; preds = %bb.o
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.dh = load ptr, ptr %i.dg, align 8, !alias.scope !14043, !noalias !14046, !align !503, !noundef !12 ; 2 uses
  %.not.i = icmp eq ptr %i.dh, null
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.dj = load ptr, ptr %i.di, align 8, !alias.scope !14046, !noalias !14043, !align !503, !noundef !12 ; 2 uses
  %.not25.i = icmp eq ptr %i.dj, null             ; 2 uses
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  br i1 %.not25.i, label %_RNvXs2K_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit, label %bb.t

bb.r:                                             ; preds = %bb.p
  br i1 %.not25.i, label %bb.s, label %_RNvXs2K_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.s:                                             ; preds = %bb.t, %bb.r
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 257
  %i.dl = load i8, ptr %i.dk, align 1, !range !470, !alias.scope !14043, !noalias !14046, !noundef !12 ; 2 uses
  %.not27.i = icmp eq i8 %i.dl, 2
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 257
  %i.dn = load i8, ptr %i.dm, align 1, !range !470, !alias.scope !14046, !noalias !14043, !noundef !12 ; 2 uses
  %.not28.i = icmp eq i8 %i.dn, 2                 ; 2 uses
  br i1 %.not27.i, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.q
  %i.do = tail call fastcc noundef i8 @_RNvXsY_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.dh, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.dj) #55, !inline_history !14058 ; 2 uses
  %i.dp = icmp eq i8 %i.do, 0
  br i1 %i.dp, label %bb.s, label %_RNvXs2K_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.u:                                             ; preds = %bb.s
  br i1 %.not28.i, label %_RNvXs2K_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit, label %bb.x

bb.v:                                             ; preds = %bb.s
  br i1 %.not28.i, label %bb.w, label %_RNvXs2K_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.w:                                             ; preds = %bb.x, %bb.v
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.dr = load i8, ptr %i.dq, align 16, !range !208, !alias.scope !14043, !noalias !14046, !noundef !12
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.dt = load i8, ptr %i.ds, align 16, !range !208, !alias.scope !14046, !noalias !14043, !noundef !12
  %i.du = sub nsw i8 %i.dr, %i.dt
  br label %_RNvXs2K_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.x:                                             ; preds = %bb.u
  %i.dv = sub nsw i8 %i.dl, %i.dn                 ; 2 uses
  %i.dw = icmp eq i8 %i.dv, 0
  br i1 %i.dw, label %bb.w, label %_RNvXs2K_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

end_hunk_8
begin_hunk_9_@_RNvXs7_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB5_6ColumnNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone:bb.a
bb.q:                                             ; preds = %bb.p, %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.af)
          to label %bb.u unwind label %bb.t

bb.r:                                             ; preds = %bb.v, %bb.t
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.v ], [ %i.ai, %bb.t ]
  %i.ag = load i64, ptr %i.d, align 8, !range !186, !alias.scope !14880, !noundef !12
  %i.ah = icmp eq i64 %i.ag, 3
  br i1 %i.ah, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.x

bb.t:                                             ; preds = %bb.q
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.u:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aj)
          to label %bb.w unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #52
          to label %bb.r unwind label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.x:                                             ; preds = %bb.s, %bb.v
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.r, %bb.s
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs7_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validationINtB5_20DataValidationStreamINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB1J_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB1J_6marker4SendEL_EEENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(40) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 10 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [40 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [40 x i8], align 8                ; 5 uses
  %.sroa.663 = alloca [32 x i8], align 8          ; 6 uses
  %i.l = alloca [40 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 10 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 8 uses
  %i.s = alloca [24 x i8], align 8                ; 2 uses
  %i.t = alloca [64 x i8], align 16               ; 12 uses
  %i.u = alloca [32 x i8], align 8                ; 7 uses
  %i.v = alloca [24 x i8], align 8                ; 2 uses
  %i.w = alloca [96 x i8], align 16               ; 6 uses
  %i.x = alloca [40 x i8], align 8                ; 8 uses
  %i.y = alloca [200 x i8], align 8               ; 7 uses
  %.sroa.635 = alloca [32 x i8], align 8          ; 6 uses
  %i.z = alloca [200 x i8], align 8               ; 8 uses
  %i.aa = alloca [40 x i8], align 8               ; 2 uses
  %i.ab = alloca [88 x i8], align 8               ; 7 uses
  %.sroa.625 = alloca [32 x i8], align 8          ; 6 uses
  %i.ac = alloca [88 x i8], align 8               ; 10 uses
  %i.ad = alloca [40 x i8], align 8               ; 6 uses
  %.sroa.6 = alloca [32 x i8], align 8            ; 6 uses
  %i.ae = alloca [40 x i8], align 8               ; 8 uses
  %i.af = alloca [72 x i8], align 8               ; 4 uses
  %i.ag = alloca [8 x i8], align 8                ; 2 uses
  %i.ah = alloca [16 x i8], align 8               ; 12 uses
  %.sroa.6.sroa.8 = alloca [24 x i8], align 16    ; 3 uses
  %i.ai = alloca [64 x i8], align 16              ; 9 uses
  %i.aj = alloca [40 x i8], align 8               ; 12 uses
  %i.ak = alloca [48 x i8], align 8               ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RNvXs_NtCs7cL0Iqqqcdm_12futures_core6streamINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtBK_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtBK_6marker4SendEL_EENtB4_6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.ak, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.am, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.an = load i64, ptr %i.ak, align 8, !range !186, !noundef !12
  switch i64 %i.an, label %default.unreachable [
    i64 3, label %bb.b
    i64 2, label %bb.c
    i64 0, label %bb.e
    i64 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store i64 3, ptr %0, align 8
  br label %bb.bw

bb.c:                                             ; preds = %bb.a
  store i64 2, ptr %0, align 8
  br label %bb.bw

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.d:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.ak, i64 48, i1 false)
  br label %bb.bw

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aj, ptr noundef nonnull align 8 dereferenceable(40) %i.ao, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %i.ap = load ptr, ptr %1, align 8, !nonnull !12, !noundef !12
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !12, !align !209, !noundef !12 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load i64, ptr %i.as, align 8, !range !490, !invariant.load !12
  %i.au = add nsw i64 %i.at, -1
  %i.av = and i64 %i.au, -16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 120
  %i.az = load ptr, ptr %i.ay, align 8, !invariant.load !12, !nonnull !12
  invoke void %i.az(ptr noalias noundef nonnull sret([64 x i8]) align 16 captures(address) dereferenceable(64) %i.ai, ptr noundef nonnull %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.aj)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.aw, %bb.w, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit190, %bb.bc, %bb.e
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.g:                                             ; preds = %bb.e
  %i.bb = load i128, ptr %i.ai, align 16, !range !14883, !noundef !12 ; 5 uses
  %i.bc = icmp eq i128 %i.bb, 51
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.078.0.copyload = load ptr, ptr %i.bd, align 16 ; 5 uses
  %.sroa.579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %.sroa.579.0.copyload = load ptr, ptr %.sroa.579.0..sroa_idx, align 8 ; 4 uses
  %.sroa.680.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.6.sroa.8, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.680.0..sroa_idx, i64 24, i1 false)
  br i1 %i.bc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  %.sroa.691.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.691.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.6.sroa.8, i64 24, i1 false)
  store i64 1, ptr %0, align 8
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.078.0.copyload, ptr %.sroa.489.0..sroa_idx, align 8
  %.sroa.590.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.579.0.copyload, ptr %.sroa.590.0..sroa_idx, align 8
  br label %bb.ba

bb.i:                                             ; preds = %bb.g
  %.sroa.874.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %.sroa.874.0.copyload = load i64, ptr %.sroa.874.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  %.not149 = icmp eq i128 %i.bb, 50
  br i1 %.not149, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i128 %i.bb, ptr %i.t, align 16
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %.sroa.078.0.copyload, ptr %.sroa.3.0..sroa_idx, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr %.sroa.579.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.69.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.6.sroa.8, i64 24, i1 false)
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  store i64 %.sroa.874.0.copyload, ptr %.sroa.610.0..sroa_idx, align 8
  %i.be = icmp ne i128 %i.bb, 10
  call void @llvm.assume(i1 %i.be)
  %i.bf = icmp ne i128 %i.bb, 3
  %i.bg = ptrtoint ptr %.sroa.078.0.copyload to i64
  %i.bh = and i64 %i.bg, 1
  %or.cond.not = icmp eq i64 %i.bh, 0
  %or.cond = select i1 %i.bf, i1 true, i1 %or.cond.not
  br i1 %or.cond, label %bb.bb, label %bb.bc

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.078.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.579.0.copyload) ]
  store ptr %.sroa.078.0.copyload, ptr %i.ah, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %.sroa.579.0.copyload, ptr %i.bi, align 8
  %i.bj = invoke noundef nonnull align 8 ptr @_RNvYINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtBF_4cast7AsArray10as_booleanCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ah)
          to label %bb.n unwind label %bb.m       ; 2 uses

.body165:                                         ; preds = %bb.p, %bb.q, %bb.m, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeANtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchj1_ECs14kWLkQVSKO_14deltalake_core.exit, %bb.ad
  %.pn152 = phi { ptr, i32 } [ %.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeANtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchj1_ECs14kWLkQVSKO_14deltalake_core.exit ], [ %i.fg, %bb.ad ], [ %i.bn, %bb.m ], [ %i.dy, %bb.q ], [ %i.dy, %bb.p ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14884)
  call void @llvm.experimental.noalias.scope.decl(metadata !14887)
  %i.bk = load ptr, ptr %i.ah, align 8, !alias.scope !14890, !nonnull !12, !noundef !12
  %i.bl = atomicrmw sub ptr %i.bk, i64 1 release, align 8, !noalias !14890
  %i.bm = icmp eq i64 %i.bl, 1
  br i1 %i.bm, label %bb.l, label %bb.by

bb.l:                                             ; preds = %.body165
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ah) #54
          to label %bb.by unwind label %bb.at

bb.m:                                             ; preds = %bb.t, %bb.ax, %bb.as, %bb.ab, %bb.x, %bb.n, %bb.k
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.body165

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  invoke void @_RNvMs7_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB5_12BooleanArray4iter(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.bj)
          to label %bb.o unwind label %bb.m

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14891
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %i.af, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.experimental.noalias.scope.decl(metadata !14894)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !14897, !noalias !14891, !noundef !12 ; 5 uses
  %.promoted.i.i = load i64, ptr %i.bo, align 8, !alias.scope !14897, !noalias !14891 ; 8 uses
  %i.br = icmp eq i64 %.promoted.i.i, %i.bq
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !14894, !noalias !14891 ; 4 uses
  br i1 %i.br, label %_RNvXs_NtCs1N9T06jgEdt_11arrow_array8iteratorINtB4_9ArrayIterRNtNtNtB6_5array13boolean_array12BooleanArrayENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, null
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !14894, !noalias !14891 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !14894, !noalias !14891
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !14894, !noalias !14891
  %.val.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !14894, !noalias !14891, !nonnull !12, !align !209 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 24 ; 2 uses
  br i1 %.not.i.i.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.preheader.i

.lr.ph.split.i.preheader.i:                       ; preds = %.lr.ph.i.i
  %i.ca = icmp ult i64 %.promoted.i.i, %i.bt
  br i1 %i.ca, label %_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterRNtNtNtB4_5array13boolean_array12BooleanArrayE7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %.lr.ph.split.i._crit_edge.i, !prof !14900

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i
  %i.cb = load ptr, ptr %i.by, align 8, !noalias !14901, !noundef !12 ; 3 uses
  %i.cc = load i64, ptr %i.bz, align 8, !noalias !14901, !noundef !12 ; 3 uses
  %i.cd = sub i64 %i.bq, %.promoted.i.i           ; 3 uses
  %.neg = add i64 %.promoted.i.i, 1
  %xtraiter = and i64 %i.cd, 1
  %i.ce = icmp eq i64 %i.bq, %.neg
  br i1 %i.ce, label %_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterRNtNtNtB4_5array13boolean_array12BooleanArrayE7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i.us.i.i.epil.preheader, label %.lr.ph.split.us.i.i.new

.lr.ph.split.us.i.i.new:                          ; preds = %.lr.ph.split.us.i.i
  %unroll_iter = and i64 %i.cd, -2
  %invariant.op = add i64 1, %i.cc
  br label %_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterRNtNtNtB4_5array13boolean_array12BooleanArrayE7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i.us.i.i

_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterRNtNtNtB4_5array13boolean_array12BooleanArrayE7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i.us.i.i: ; preds = %_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterRNtNtNtB4_5array13boolean_array12BooleanArrayE7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i.us.i.i, %.lr.ph.split.us.i.i.new
  %.sroa.0.012.us.i.i = phi i64 [ 0, %.lr.ph.split.us.i.i.new ], [ %i.db, %_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterRNtNtNtB4_5array13boolean_array12BooleanArrayE7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i.us.i.i ]
  %i.cf = phi i64 [ %.promoted.i.i, %.lr.ph.split.us.i.i.new ], [ %i.cr, %_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterRNtNtNtB4_5array13boolean_array12BooleanArrayE7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i.us.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.split.us.i.i.new ], [ %niter.next.1, %_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterRNtNtNtB4_5array13boolean_array12BooleanArrayE7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i.us.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !14902)
  %i.cg = add i64 %i.cf, %i.cc                    ; 2 uses
  %i.ch = lshr i64 %i.cg, 3
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !noalias !14901, !noundef !12
  %i.ck = trunc i64 %i.cg to i8
  %i.cl = and i8 %i.ck, 7
  %i.cm = lshr i8 %i.cj, %i.cl
  %i.cn = and i8 %i.cm, 1
  %i.co = xor i8 %i.cn, 1
  %i.cp = zext nneg i8 %i.co to i64
  %i.cq = add i64 %.sroa.0.012.us.i.i, %i.cp
  %i.cr = add i64 %i.cf, 2                        ; 2 uses
  %.reass = add i64 %i.cf, %invariant.op          ; 2 uses
  %i.cs = lshr i64 %.reass, 3
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !noalias !14903, !noundef !12
  %i.cv = trunc i64 %.reass to i8
  %i.cw = and i8 %i.cv, 7
  %i.cx = lshr i8 %i.cu, %i.cw
  %i.cy = and i8 %i.cx, 1
  %i.cz = xor i8 %i.cy, 1
  %i.da = zext nneg i8 %i.cz to i64
  %i.db = add i64 %i.cq, %i.da                    ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterRNtNtNtB4_5array13boolean_array12BooleanArrayE7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i.us.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.r
  %exitcond.not.i = icmp eq i64 %.sink.i.i, %i.bt
  br i1 %exitcond.not.i, label %.lr.ph.split.i._crit_edge.i, label %_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterRNtNtNtB4_5array13boolean_array12BooleanArrayE7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, !prof !14905

.lr.ph.split.i._crit_edge.i:                      ; preds = %.lr.ph.split.i.i, %.lr.ph.split.i.preheader.i
  %.sink.i10.lcssa.i = phi i64 [ %.promoted.i.i, %.lr.ph.split.i.preheader.i ], [ %i.bt, %.lr.ph.split.i.i ]
  store i64 %.sink.i10.lcssa.i, ptr %i.bo, align 8, !noalias !14891
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @407, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @409) #56
          to label %.noexc.i.i unwind label %bb.p, !noalias !14906

.noexc.i.i:                                       ; preds = %.lr.ph.split.i._crit_edge.i
  unreachable

_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterRNtNtNtB4_5array13boolean_array12BooleanArrayE7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %.lr.ph.split.i.preheader.i, %.lr.ph.split.i.i
  %i.dc = phi i64 [ %.sink.i.i, %.lr.ph.split.i.i ], [ %.promoted.i.i, %.lr.ph.split.i.preheader.i ] ; 3 uses
  %.sroa.0.012.i11.i = phi i64 [ %i.eb, %.lr.ph.split.i.i ], [ 0, %.lr.ph.split.i.preheader.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !14902)
  %i.dd = add i64 %i.dc, %i.bx                    ; 2 uses
  %i.de = lshr i64 %i.dd, 3
  %i.df = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !noalias !14907, !noundef !12
  %i.dh = trunc i64 %i.dd to i8
  %i.di = and i8 %i.dh, 7
  %i.dj = xor i8 %i.dg, -1
  %i.dk = lshr i8 %i.dj, %i.di
  %i.dl = trunc i8 %i.dk to i1
  br i1 %i.dl, label %bb.r, label %_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterRNtNtNtB4_5array13boolean_array12BooleanArrayE7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i

_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterRNtNtNtB4_5array13boolean_array12BooleanArrayE7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i: ; preds = %_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterRNtNtNtB4_5array13boolean_array12BooleanArrayE7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %i.dm = load ptr, ptr %i.by, align 8, !noalias !14901, !noundef !12
  %i.dn = load i64, ptr %i.bz, align 8, !noalias !14901, !noundef !12
  %i.do = add i64 %i.dn, %i.dc                    ; 2 uses
  %i.dp = lshr i64 %i.do, 3
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !noalias !14901, !noundef !12
  %i.ds = trunc i64 %i.do to i8
  %i.dt = and i8 %i.ds, 7
  %i.du = lshr i8 %i.dr, %i.dt
  %i.dv = and i8 %i.du, 1
  %i.dw = xor i8 %i.dv, 1
  %i.dx = zext nneg i8 %i.dw to i64
  br label %bb.r

bb.p:                                             ; preds = %.lr.ph.split.i._crit_edge.i
  %i.dy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dz = atomicrmw sub ptr %.pre.i.i, i64 1 release, align 8, !noalias !14910
  %i.ea = icmp eq i64 %i.dz, 1
  br i1 %i.ea, label %bb.q, label %.body165

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.phi.trans.insert.i.i) #54
          to label %.body165 unwind label %bb.u, !noalias !14891

bb.r:                                             ; preds = %_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterRNtNtNtB4_5array13boolean_array12BooleanArrayE7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i, %_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterRNtNtNtB4_5array13boolean_array12BooleanArrayE7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %.sroa.0.0.i.ph.i.i = phi i64 [ %i.dx, %_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterRNtNtNtB4_5array13boolean_array12BooleanArrayE7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i ], [ 1, %_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterRNtNtNtB4_5array13boolean_array12BooleanArrayE7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  %.sink.i.i = add i64 %i.dc, 1                   ; 3 uses
  %i.eb = add i64 %.sroa.0.0.i.ph.i.i, %.sroa.0.012.i11.i ; 2 uses
  %i.ec = icmp eq i64 %.sink.i.i, %i.bq
  br i1 %i.ec, label %_RNvXs_NtCs1N9T06jgEdt_11arrow_array8iteratorINtB4_9ArrayIterRNtNtNtB6_5array13boolean_array12BooleanArrayENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i.loopexit.i, label %.lr.ph.split.i.i

_RNvXs_NtCs1N9T06jgEdt_11arrow_array8iteratorINtB4_9ArrayIterRNtNtNtB6_5array13boolean_array12BooleanArrayENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i.loopexit.i: ; preds = %bb.r
  store i64 %i.bq, ptr %i.bo, align 8, !noalias !14891
  br label %_RNvXs_NtCs1N9T06jgEdt_11arrow_array8iteratorINtB4_9ArrayIterRNtNtNtB6_5array13boolean_array12BooleanArrayENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i

_RNvXs_NtCs1N9T06jgEdt_11arrow_array8iteratorINtB4_9ArrayIterRNtNtNtB6_5array13boolean_array12BooleanArrayENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %_RNvXs_NtCs1N9T06jgEdt_11arrow_array8iteratorINtB4_9ArrayIterRNtNtNtB6_5array13boolean_array12BooleanArrayENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i.loopexit.i, %bb.o
  %.sroa.0.0.lcssa.i.i = phi i64 [ 0, %bb.o ], [ %i.eb, %_RNvXs_NtCs1N9T06jgEdt_11arrow_array8iteratorINtB4_9ArrayIterRNtNtNtB6_5array13boolean_array12BooleanArrayENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i.loopexit.i ] ; 3 uses
  %i.ed = icmp eq ptr %.pre.i.i, null
  br i1 %i.ed, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %_RNvXs_NtCs1N9T06jgEdt_11arrow_array8iteratorINtB4_9ArrayIterRNtNtNtB6_5array13boolean_array12BooleanArrayENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.ee = atomicrmw sub ptr %.pre.i.i, i64 1 release, align 8, !noalias !14925
  %i.ef = icmp eq i64 %i.ee, 1
  br i1 %i.ef, label %bb.t, label %.loopexit

bb.t:                                             ; preds = %bb.s
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.phi.trans.insert.i.i) #54
          to label %.loopexit unwind label %bb.m

bb.u:                                             ; preds = %bb.q
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !14891
  unreachable

.loopexit.loopexit.unr-lcssa:                     ; preds = %_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterRNtNtNtB4_5array13boolean_array12BooleanArrayE7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i.us.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterRNtNtNtB4_5array13boolean_array12BooleanArrayE7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i.us.i.i.epil.preheader

_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterRNtNtNtB4_5array13boolean_array12BooleanArrayE7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i.us.i.i.epil.preheader: ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.split.us.i.i
  %.sroa.0.012.us.i.i.epil.init = phi i64 [ 0, %.lr.ph.split.us.i.i ], [ %i.db, %.loopexit.loopexit.unr-lcssa ]
end_hunk_9
begin_hunk_10_@_RNvXs7_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validationINtB5_20DataValidationStreamINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB1J_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB1J_6marker4SendEL_EEENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB9_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch7try_new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.k, ptr noundef nonnull %i.ge, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.gf = load i64, ptr %i.k, align 8, !range !50, !noundef !12 ; 2 uses
  %i.gg = icmp eq i64 %i.gf, -9223372036854775808
  %i.gh = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.663, ptr noundef nonnull align 8 dereferenceable(32) %i.gh, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br i1 %i.gg, label %bb.bg, label %bb.bh

bb.bf:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.trap()
  unreachable

bb.bg:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.663, i64 32, i1 false)
  %.sroa.4146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvXs2_NtCsjhHCjzi9uUI_17datafusion_common5errorNtB5_15DataFusionErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorE4from(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %.sroa.4146.0..sroa_idx, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.663)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.bi

bb.bh:                                            ; preds = %bb.be
  %.sroa.560.sroa.5.0..sroa.560.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.560.sroa.5.0..sroa.560.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.663, i64 32, i1 false)
  store i64 0, ptr %0, align 8
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.gf, ptr %.sroa.560.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.663)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.bw

bb.bi:                                            ; preds = %bb.bg, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.bw

bb.bj:                                            ; preds = %bb.z
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.m) #52
          to label %bb.bx unwind label %bb.at

.body187:                                         ; preds = %bb.bs, %bb.bk, %.body182
  %.pn154.pn = phi { ptr, i32 } [ %.pn154, %.body182 ], [ %i.gi, %bb.bk ], [ %i.gv, %bb.bs ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(64) %i.t) #52
          to label %bb.by unwind label %bb.at

bb.bk:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i186, %bb.bb
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %.body187

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit179: ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bm unwind label %bb.bl

.body182:                                         ; preds = %bb.bq, %bb.bl, %bb.bp
  %.pn154 = phi { ptr, i32 } [ %i.gs, %bb.bp ], [ %i.gj, %bb.bl ], [ %i.gt, %bb.bq ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r) #52
          to label %.body187 unwind label %bb.at

bb.bl:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.bn, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit179
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %.body182

bb.bm:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit179
  %i.gk = load i64, ptr %i.c, align 8, !range !49, !noundef !12
  %i.gl = trunc nuw i64 %i.gk to i1
  %i.gm = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.gn = load i64, ptr %i.gm, align 8, !range !50, !noundef !12 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.gl, label %bb.bn, label %bb.bo, !prof !51

bb.bn:                                            ; preds = %bb.bm
  %i.gp = load i64, ptr %i.go, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.gn, i64 %i.gp) #50
          to label %bb.bv unwind label %bb.bl

bb.bo:                                            ; preds = %bb.bm
  %i.gq = load ptr, ptr %i.go, align 8, !nonnull !12, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.gn, ptr %i.o, align 8
  %.sroa.4129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.gq, ptr %.sroa.4129.0..sroa_idx, align 8
  %.sroa.5130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 0, ptr %.sroa.5130.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.r, ptr %i.n, align 8
  %.sroa.4134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.4134.0..sroa_idx, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.o, ptr %i.gr, align 8
  %.sroa.4138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.4138.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noundef nonnull @230, ptr noundef nonnull %i.n)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit181 unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o) #52
          to label %.body182 unwind label %bb.at

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit181: ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.bq

bb.bq:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit181
  %i.gt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body182 unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.gu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit181
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.bl

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i186 unwind label %bb.bs

bb.bs:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
  %i.gv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.body187 unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.gw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i186: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit190 unwind label %bb.bk

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit190: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %.sroa.453.sroa.4.0..sroa.453.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.453.sroa.4.0..sroa.453.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  store i64 1, ptr %0, align 8
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 10, ptr %.sroa.453.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(64) %i.t)
          to label %bb.bu unwind label %bb.f

bb.bu:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.ba

bb.bv:                                            ; preds = %bb.bn
  unreachable

bb.bw:                                            ; preds = %bb.b, %bb.bh, %bb.d, %bb.c, %bb.bi
  ret void

bb.bx:                                            ; preds = %bb.bj, %bb.by
  %.pn157197 = phi { ptr, i32 } [ %.pn157.ph, %bb.by ], [ %lpad.thr_comm.split-lp, %bb.bj ]
  resume { ptr, i32 } %.pn157197

bb.by:                                            ; preds = %bb.f, %.body187, %bb.l, %.body165
  %.pn157.ph = phi { ptr, i32 } [ %i.ba, %bb.f ], [ %.pn154.pn, %.body187 ], [ %.pn152, %bb.l ], [ %.pn152, %.body165 ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.aj) #52
          to label %bb.bx unwind label %bb.at
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs7_NtNtCs14kWLkQVSKO_14deltalake_core5table6configNtB5_16DeltaConfigErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1012, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @843)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8ProtocolNtB7_9PartialEq2neCs14kWLkQVSKO_14deltalake_core(ptr nofree readonly captures(none) %.0.val, ptr nofree readonly captures(none) %.0.val1) unnamed_addr #2 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val1) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14962)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14965)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14967)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14970)
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 48
  %i.b = load i32, ptr %i.a, align 8, !alias.scope !14972, !noalias !14973, !noundef !12
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !alias.scope !14973, !noalias !14972, !noundef !12
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvYNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8ProtocolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 52
  %i.g = load i32, ptr %i.f, align 4, !alias.scope !14972, !noalias !14973, !noundef !12
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val1, i64 52
  %i.i = load i32, ptr %i.h, align 4, !alias.scope !14973, !noalias !14972, !noundef !12
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_RNvYNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8ProtocolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %.0.val, align 8, !range !50, !alias.scope !14972, !noalias !14973, !noundef !12
  %.not.i.i = icmp eq i64 %i.k, -9223372036854775808
  %i.l = load i64, ptr %.0.val1, align 8, !range !50, !alias.scope !14973, !noalias !14972, !noundef !12
  %i.m = icmp eq i64 %i.l, -9223372036854775808   ; 2 uses
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.m, label %_RNvYNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8ProtocolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.m, label %bb.h, label %_RNvYNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8ProtocolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit

bb.f:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !14972, !noalias !14973, !noundef !12 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val1, i64 16
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !14973, !noalias !14972, !noundef !12
  %i.r = icmp eq i64 %i.o, %i.q
  br i1 %i.r, label %bb.g, label %_RNvYNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8ProtocolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %.0.val1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !14973, !noalias !14972, !nonnull !12, !noundef !12
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !14972, !noalias !14973, !nonnull !12, !noundef !12
  %i.w = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.v, ptr noundef nonnull %i.t, i64 noundef %i.o), !noalias !14974
  br i1 %i.w, label %bb.h, label %_RNvYNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8ProtocolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.y = load i64, ptr %i.x, align 8, !range !50, !alias.scope !14972, !noalias !14973, !noundef !12
  %.not4.i.i = icmp eq i64 %i.y, -9223372036854775808 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0.val1, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !range !50, !alias.scope !14973, !noalias !14972, !noundef !12
  %i.ab = icmp eq i64 %i.aa, -9223372036854775808 ; 2 uses
  %brmerge.i.i = or i1 %.not4.i.i, %i.ab
  %.mux.i.i = and i1 %.not4.i.i, %i.ab
  br i1 %brmerge.i.i, label %_RNvYNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8ProtocolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.val, i64 40
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !14972, !noalias !14973, !noundef !12 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.val1, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !14973, !noalias !14972, !noundef !12
  %i.ag = icmp eq i64 %i.ad, %i.af
  br i1 %i.ag, label %bb.j, label %_RNvYNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8ProtocolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.val1, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !14973, !noalias !14972, !nonnull !12, !noundef !12
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !14972, !noalias !14973, !nonnull !12, !noundef !12
  %i.al = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.ai, i64 noundef %i.ad), !noalias !14974
  br label %_RNvYNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8ProtocolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit

_RNvYNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8ProtocolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %.sroa.0.0.shrunk.i.i = phi i1 [ %i.al, %bb.j ], [ %.mux.i.i, %bb.h ], [ false, %bb.e ], [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.i ]
  %i.am = xor i1 %.sroa.0.0.shrunk.i.i, true
  ret i1 %i.am
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs7_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB5_10WriteErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = load i64, ptr %0, align 8, !range !4231, !noundef !12 ; 3 uses
  %i.f = icmp ne i64 %i.e, -9223372036854775786
  tail call void @llvm.assume(i1 %i.f)
  %i.g = add nsw i64 %i.e, 9223372036854775788
  %i.h = icmp ugt i64 %i.e, -9223372036854775789
  %i.i = select i1 %i.h, i64 %i.g, i64 2
  switch i64 %i.i, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %i.d, align 8
  %i.l = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1015, i64 noundef 14, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1016, i64 noundef 6, ptr noundef nonnull %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1013, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1017, i64 noundef 15, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1014)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.c, align 8
  %i.n = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1018, i64 noundef 9, ptr noalias noundef nonnull readonly captures(address, read_provenance) @857, i64 noundef 6, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @855)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.o = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @877, i64 noundef 5, ptr noalias noundef nonnull readonly captures(address, read_provenance) @857, i64 noundef 6, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @876)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.a, align 8
  %i.q = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1019, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @843)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.l, %bb.c ], [ %i.n, %bb.d ], [ %i.o, %bb.e ], [ %i.q, %bb.f ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i8 -1, 2) i8 @_RNvXs7_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loadingNtB5_17StageParamsObjectNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(136) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i64, ptr %i.a, align 8, !range !50, !noundef !12
  %.not = icmp eq i64 %i.b, -9223372036854775808
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = load i64, ptr %i.c, align 8, !range !50, !noundef !12
  %.not35 = icmp eq i64 %i.d, -9223372036854775808 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not35, label %bb.r, label %bb.h

bb.c:                                             ; preds = %bb.a
  br i1 %.not35, label %bb.d, label %bb.r

bb.d:                                             ; preds = %bb.c, %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14975)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14978)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !14975, !noalias !14978, !nonnull !12, !noundef !12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !14975, !noalias !14978, !noundef !12 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !14978, !noalias !14975, !nonnull !12, !noundef !12
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !14978, !noalias !14975, !noundef !12 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14980)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14983)
  %.sroa.0.0.i.i.i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 0, 164703072086692426) %i.l, i64 range(i64 0, 164703072086692426) %i.h) ; 2 uses
  %exitcond.not.i.i45 = icmp eq i64 %.sroa.0.0.i.i.i, 0
  br i1 %exitcond.not.i.i45, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17key_value_options14KeyValueOptionNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.i.i
  %exitcond.not.i.i = icmp eq i64 %i.n, %.sroa.0.0.i.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %bb.d
  %i.m = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 164703072086692426) %i.h, i64 range(i64 0, 164703072086692426) %i.l)
  br label %_RNvXs5_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17key_value_optionsNtB5_15KeyValueOptionsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %.sroa.01.0.i.i46 = phi i64 [ %i.n, %bb.e ], [ 0, %bb.d ] ; 3 uses
  %i.n = add nuw nsw i64 %.sroa.01.0.i.i46, 1     ; 2 uses
  %i.o = getelementptr inbounds nuw [56 x i8], ptr %i.f, i64 %.sroa.01.0.i.i46 ; 5 uses
  %i.p = getelementptr inbounds nuw [56 x i8], ptr %i.j, i64 %.sroa.01.0.i.i46 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14985)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14988)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14990)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14993)
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !14995, !noalias !14996, !nonnull !12, !noundef !12
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !14995, !noalias !14996, !noundef !12 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !14997, !noalias !14998, !nonnull !12, !noundef !12
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !14997, !noalias !14998, !noundef !12 ; 2 uses
end_hunk_10
begin_hunk_11_@_RNvXsK_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq:bb.a
  %i.h = add nsw i64 %i.f, -11
  %i.i = icmp samesign ugt i64 %i.f, 10
  %i.j = select i1 %i.i, i64 %i.h, i64 20
  %i.k = icmp eq i64 %i.e, %i.j
  br i1 %i.k, label %.lr.ph, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

.lr.ph:                                           ; preds = %bb.a, %tailrecurse.backedge
  %i.l = phi i64 [ %i.fi, %tailrecurse.backedge ], [ %i.e, %bb.a ]
  %.tr1488 = phi ptr [ %.tr14.be, %tailrecurse.backedge ], [ %1, %bb.a ] ; 41 uses
  %.tr87 = phi ptr [ %.tr.be, %tailrecurse.backedge ], [ %0, %bb.a ] ; 41 uses
  switch i64 %i.l, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.t
    i64 9, label %bb.u
    i64 10, label %bb.ad
    i64 11, label %bb.ae
    i64 12, label %bb.af
    i64 13, label %bb.ao
    i64 14, label %bb.ap
    i64 15, label %bb.aq
    i64 16, label %bb.az
    i64 17, label %bb.ba
    i64 18, label %bb.bb
    i64 19, label %bb.bc
    i64 20, label %bb.bd
    i64 21, label %bb.be
    i64 22, label %bb.bf
    i64 23, label %bb.bg
    i64 24, label %bb.bh
  ]

_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %tailrecurse.backedge, %bb.am, %bb.ai, %bb.ag, %bb.ah, %bb.ak, %bb.al, %bb.an, %bb.bh, %bb.bi, %bb.bj, %bb.bl, %bb.bm, %bb.a, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.as, %bb.ar, %bb.aq, %bb.ac, %bb.ab, %bb.aa, %bb.z, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i10, %bb.y, %bb.x, %bb.v, %bb.u, %bb.s, %bb.r, %bb.q, %bb.p, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i, %bb.o, %bb.n, %bb.l, %bb.k, %bb.j, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ap, %bb.ao, %bb.ae, %bb.ad, %bb.t, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.shrunk = phi i1 [ %i.o, %bb.c ], [ %i.r, %bb.d ], [ %i.u, %bb.e ], [ %i.x, %bb.f ], [ %i.aa, %bb.g ], [ %i.ad, %bb.h ], [ %i.ag, %bb.i ], [ false, %bb.aw ], [ %i.cm, %bb.t ], [ false, %bb.o ], [ %i.ej, %bb.ad ], [ %i.em, %bb.ae ], [ false, %bb.y ], [ %i.fr, %bb.ao ], [ %i.fu, %bb.ap ], [ false, %bb.au ], [ %i.hm, %bb.az ], [ %i.hp, %bb.ba ], [ %i.hs, %bb.bb ], [ %i.hv, %bb.bc ], [ %i.hw, %bb.bd ], [ %i.hz, %bb.be ], [ %i.ie, %bb.bf ], [ %i.ih, %bb.bg ], [ true, %bb.ax ], [ false, %bb.k ], [ true, %bb.l ], [ false, %bb.j ], [ %i.cj, %bb.s ], [ false, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i ], [ false, %bb.p ], [ false, %bb.q ], [ false, %bb.r ], [ false, %bb.n ], [ false, %bb.u ], [ true, %bb.v ], [ %i.eg, %bb.ac ], [ false, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i10 ], [ false, %bb.z ], [ false, %bb.aa ], [ false, %bb.ab ], [ false, %bb.x ], [ false, %bb.as ], [ %i.hj, %bb.ay ], [ false, %bb.av ], [ false, %bb.ar ], [ false, %bb.aq ], [ false, %bb.a ], [ true, %bb.an ], [ false, %bb.bh ], [ false, %bb.bj ], [ false, %bb.bi ], [ false, %bb.am ], [ false, %bb.al ], [ false, %bb.ak ], [ false, %bb.ai ], [ false, %bb.ah ], [ false, %bb.bl ], [ false, %bb.ag ], [ false, %tailrecurse.backedge ], [ true, %bb.bm ]
  ret i1 %.sroa.0.0.shrunk

bb.b:                                             ; preds = %.lr.ph
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.o = tail call fastcc noundef zeroext i1 @_RNvXs19_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10ProjectionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.n) #55
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %.tr87, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %.tr1488, i64 16
  %i.r = tail call fastcc noundef zeroext i1 @_RNvXs1m_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6FilterNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.p, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.q) #55
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.u = tail call fastcc noundef zeroext i1 @_RNvXs1t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6WindowNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.t) #55
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.x = tail call fastcc noundef zeroext i1 @_RNvXs2z_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9AggregateNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.w) #55
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.aa = tail call fastcc noundef zeroext i1 @_RNvXs2F_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4SortNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.y, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.z) #55
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %.tr87, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %.tr1488, i64 16
  %i.ad = tail call fastcc noundef zeroext i1 @_RNvXs2M_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4JoinNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(176) %i.ab, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(176) %i.ac) #55
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.ag = tail call fastcc noundef zeroext i1 @_RNvXs1A_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11RepartitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.af) #55
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15439)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15442)
  %i.ah = getelementptr inbounds nuw i8, ptr %.tr87, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !15439, !noalias !15442, !noundef !12 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.tr1488, i64 24
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !15442, !noalias !15439, !noundef !12
  %i.al = icmp eq i64 %i.ai, %i.ak
  br i1 %i.al, label %bb.k, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %.tr1488, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !15442, !noalias !15439, !nonnull !12, !noundef !12
  %i.ao = getelementptr inbounds nuw i8, ptr %.tr87, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !15439, !noalias !15442, !nonnull !12, !noundef !12
  %i.aq = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.an, i64 noundef %i.ai), !noalias !15444
  br i1 %i.aq, label %bb.l, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %.tr87, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !15439, !noalias !15442, !nonnull !12, !noundef !12 ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.tr1488, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !15442, !noalias !15439, !nonnull !12, !noundef !12 ; 6 uses
  %i.av = icmp eq ptr %i.as, %i.au
  br i1 %i.av, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15445)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15448)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !15445, !noalias !15450, !nonnull !12, !noundef !12 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !15448, !noalias !15451, !nonnull !12, !noundef !12 ; 4 uses
  %i.ba = icmp eq ptr %i.ax, %i.az
  br i1 %i.ba, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15452)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15455)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !15452, !noalias !15457, !noundef !12 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !15455, !noalias !15458, !noundef !12
  %i.bf = icmp eq i64 %i.bc, %i.be
  br i1 %i.bf, label %bb.o, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bi = load ptr, ptr %i.bg, align 8, !alias.scope !15455, !noalias !15458, !nonnull !12, !noundef !12
  %i.bj = load ptr, ptr %i.bh, align 8, !alias.scope !15452, !noalias !15457, !nonnull !12, !noundef !12
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bm = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.bk, ptr noundef nonnull %i.bl, i64 noundef %i.bc), !noalias !15459
  br i1 %i.bm, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i: ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bp = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bo), !noalias !15460
  br i1 %i.bp, label %bb.p, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i, %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !15445, !noalias !15450, !noundef !12 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !15448, !noalias !15451, !noundef !12
  %i.bu = icmp eq i64 %i.br, %i.bt
  br i1 %i.bu, label %bb.q, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !15448, !noalias !15451, !nonnull !12, !noundef !12
  %i.bx = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !alias.scope !15445, !noalias !15450, !nonnull !12, !noundef !12
  %i.bz = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtB9_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.by, ptr noundef nonnull %i.bw, i64 noundef %i.br), !noalias !15460
  br i1 %i.bz, label %bb.r, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %bb.q
  %i.ca = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !15445, !noalias !15450, !noundef !12 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !15448, !noalias !15451, !noundef !12
  %i.ce = icmp eq i64 %i.cb, %i.cd
  br i1 %i.ce, label %bb.s, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %bb.r
  %i.cf = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.cg = load ptr, ptr %i.cf, align 8, !alias.scope !15448, !noalias !15451, !nonnull !12, !noundef !12
  %i.ch = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.ci = load ptr, ptr %i.ch, align 8, !alias.scope !15445, !noalias !15450, !nonnull !12, !noundef !12
  %i.cj = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.ci, ptr noundef nonnull %i.cg, i64 noundef %i.cb), !noalias !15460
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.t:                                             ; preds = %.lr.ph
  %i.ck = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.cm = tail call noundef zeroext i1 @_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_9TableScanNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.ck, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.cl)
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.u:                                             ; preds = %.lr.ph
  %i.cn = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %.val = load ptr, ptr %i.cn, align 8            ; 7 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.tr87, i64 16
  %.val2 = load i8, ptr %i.cp, align 8, !range !208, !noundef !12
  %.val3 = load ptr, ptr %i.co, align 8           ; 7 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.tr1488, i64 16
  %.val4 = load i8, ptr %i.cq, align 8, !range !208, !noundef !12
  %i.cr = icmp eq i8 %.val2, %.val4
  br i1 %i.cr, label %bb.v, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.v:                                             ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  %i.cs = icmp eq ptr %.val, %.val3
  br i1 %i.cs, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15461)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15464)
  %i.ct = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.cu = load ptr, ptr %i.ct, align 8, !alias.scope !15461, !noalias !15464, !nonnull !12, !noundef !12 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.val3, i64 64
  %i.cw = load ptr, ptr %i.cv, align 8, !alias.scope !15464, !noalias !15461, !nonnull !12, !noundef !12 ; 4 uses
  %i.cx = icmp eq ptr %i.cu, %i.cw
  br i1 %i.cx, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15469)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cz = load i64, ptr %i.cy, align 8, !alias.scope !15466, !noalias !15471, !noundef !12 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !15469, !noalias !15472, !noundef !12
  %i.dc = icmp eq i64 %i.cz, %i.db
  br i1 %i.dc, label %bb.y, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.y:                                             ; preds = %bb.x
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.df = load ptr, ptr %i.dd, align 8, !alias.scope !15469, !noalias !15472, !nonnull !12, !noundef !12
  %i.dg = load ptr, ptr %i.de, align 8, !alias.scope !15466, !noalias !15471, !nonnull !12, !noundef !12
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dj = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.dh, ptr noundef nonnull %i.di, i64 noundef %i.cz), !noalias !15473
  br i1 %i.dj, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i10, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i10: ; preds = %bb.y
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %i.dm = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dl), !noalias !15474
  br i1 %i.dm, label %bb.z, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.z:                                             ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i10, %bb.w
  %i.dn = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.do = load i64, ptr %i.dn, align 8, !alias.scope !15461, !noalias !15464, !noundef !12 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.val3, i64 32
  %i.dq = load i64, ptr %i.dp, align 8, !alias.scope !15464, !noalias !15461, !noundef !12
  %i.dr = icmp eq i64 %i.do, %i.dq
  br i1 %i.dr, label %bb.aa, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.aa:                                            ; preds = %bb.z
  %i.ds = getelementptr inbounds nuw i8, ptr %.val3, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8, !alias.scope !15464, !noalias !15461, !nonnull !12, !noundef !12
  %i.du = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.dv = load ptr, ptr %i.du, align 8, !alias.scope !15461, !noalias !15464, !nonnull !12, !noundef !12
  %i.dw = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtB9_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.dv, ptr noundef nonnull %i.dt, i64 noundef %i.do), !noalias !15474
  br i1 %i.dw, label %bb.ab, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ab:                                            ; preds = %bb.aa
  %i.dx = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.dy = load i64, ptr %i.dx, align 8, !alias.scope !15461, !noalias !15464, !noundef !12 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.val3, i64 56
  %i.ea = load i64, ptr %i.dz, align 8, !alias.scope !15464, !noalias !15461, !noundef !12
  %i.eb = icmp eq i64 %i.dy, %i.ea
  br i1 %i.eb, label %bb.ac, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ac:                                            ; preds = %bb.ab
  %i.ec = getelementptr inbounds nuw i8, ptr %.val3, i64 48
  %i.ed = load ptr, ptr %i.ec, align 8, !alias.scope !15464, !noalias !15461, !nonnull !12, !noundef !12
  %i.ee = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.ef = load ptr, ptr %i.ee, align 8, !alias.scope !15461, !noalias !15464, !nonnull !12, !noundef !12
  %i.eg = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.ef, ptr noundef nonnull %i.ed, i64 noundef %i.dy), !noalias !15474
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ad:                                            ; preds = %.lr.ph
  %i.eh = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.ej = tail call fastcc noundef zeroext i1 @_RNvXs2R_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.eh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ei) #55
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ae:                                            ; preds = %.lr.ph
  %i.ek = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.em = tail call fastcc noundef zeroext i1 @_RNvXs1g_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13SubqueryAliasNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ek, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.el) #55
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.af:                                            ; preds = %.lr.ph
  %i.en = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15478)
  %i.ep = getelementptr inbounds nuw i8, ptr %.tr87, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8, !alias.scope !15475, !noalias !15478, !align !503, !noundef !12 ; 2 uses
  %.not.i = icmp eq ptr %i.eq, null
  %i.er = getelementptr inbounds nuw i8, ptr %.tr1488, i64 16
  %i.es = load ptr, ptr %i.er, align 8, !alias.scope !15478, !noalias !15475, !align !503, !noundef !12 ; 2 uses
  %i.et = icmp eq ptr %i.es, null                 ; 2 uses
  br i1 %.not.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  br i1 %i.et, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ai

bb.ah:                                            ; preds = %bb.af
  br i1 %i.et, label %bb.aj, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ai:                                            ; preds = %bb.ag
  %i.eu = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.eq, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.es) #55, !noalias !15480, !inline_history !15481
  br i1 %i.eu, label %bb.aj, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.ev = getelementptr inbounds nuw i8, ptr %.tr87, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8, !alias.scope !15475, !noalias !15478, !align !503, !noundef !12 ; 2 uses
  %.not5.i = icmp eq ptr %i.ew, null
  %i.ex = getelementptr inbounds nuw i8, ptr %.tr1488, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8, !alias.scope !15478, !noalias !15475, !align !503, !noundef !12 ; 2 uses
  %i.ez = icmp eq ptr %i.ey, null                 ; 2 uses
  br i1 %.not5.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.ez, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.am

bb.al:                                            ; preds = %bb.aj
  br i1 %i.ez, label %bb.an, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.am:                                            ; preds = %bb.ak
  %i.fa = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ew, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ey) #55, !noalias !15480, !inline_history !15481
  br i1 %i.fa, label %bb.an, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.fb = load ptr, ptr %i.en, align 8, !alias.scope !15475, !noalias !15478, !nonnull !12, !noundef !12 ; 2 uses
  %i.fc = load ptr, ptr %i.eo, align 8, !alias.scope !15478, !noalias !15475, !nonnull !12, !noundef !12 ; 2 uses
  %i.fd = icmp eq ptr %i.fb, %i.fc
  br i1 %i.fd, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %bb.bm, %bb.an
  %.pn = phi ptr [ %i.fb, %bb.an ], [ %i.jg, %bb.bm ]
  %.pn112 = phi ptr [ %i.fc, %bb.an ], [ %i.ji, %bb.bm ]
  %.tr14.be = getelementptr inbounds nuw i8, ptr %.pn112, i64 16 ; 2 uses
  %.tr.be = getelementptr inbounds nuw i8, ptr %.pn, i64 16 ; 2 uses
  %i.fe = load i64, ptr %.tr.be, align 16, !range !15438, !noundef !12 ; 3 uses
  %i.ff = icmp ne i64 %i.fe, 31
  tail call void @llvm.assume(i1 %i.ff)
  %i.fg = add nsw i64 %i.fe, -11
  %i.fh = icmp samesign ugt i64 %i.fe, 10
  %i.fi = select i1 %i.fh, i64 %i.fg, i64 20      ; 2 uses
  %i.fj = load i64, ptr %.tr14.be, align 16, !range !15438, !noundef !12 ; 3 uses
  %i.fk = icmp ne i64 %i.fj, 31
  tail call void @llvm.assume(i1 %i.fk)
  %i.fl = add nsw i64 %i.fj, -11
  %i.fm = icmp samesign ugt i64 %i.fj, 10
  %i.fn = select i1 %i.fm, i64 %i.fl, i64 20
  %i.fo = icmp eq i64 %i.fi, %i.fn
  br i1 %i.fo, label %.lr.ph, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ao:                                            ; preds = %.lr.ph
  %i.fp = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.fq = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.fr = tail call fastcc noundef zeroext i1 @_RNvXs2_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_9StatementNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fq) #55
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ap:                                            ; preds = %.lr.ph
  %i.fs = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.ft = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.fu = tail call fastcc noundef zeroext i1 @_RNvXs14_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.fs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ft) #55
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.aq:                                            ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15482)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15485)
  %i.fv = getelementptr inbounds nuw i8, ptr %.tr87, i64 48
  %i.fw = load i8, ptr %i.fv, align 8, !range !208, !alias.scope !15482, !noalias !15485, !noundef !12
  %i.fx = getelementptr inbounds nuw i8, ptr %.tr1488, i64 48
  %i.fy = load i8, ptr %i.fx, align 8, !range !208, !alias.scope !15485, !noalias !15482, !noundef !12
  %i.fz = icmp eq i8 %i.fw, %i.fy
  br i1 %i.fz, label %bb.ar, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ar:                                            ; preds = %bb.aq
  %i.ga = getelementptr inbounds nuw i8, ptr %.tr87, i64 49
  %i.gb = load i8, ptr %i.ga, align 1, !range !208, !alias.scope !15482, !noalias !15485, !noundef !12
  %i.gc = getelementptr inbounds nuw i8, ptr %.tr1488, i64 49
  %i.gd = load i8, ptr %i.gc, align 1, !range !208, !alias.scope !15485, !noalias !15482, !noundef !12
  %i.ge = icmp eq i8 %i.gb, %i.gd
  br i1 %i.ge, label %bb.as, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.as:                                            ; preds = %bb.ar
  %i.gf = getelementptr inbounds nuw i8, ptr %.tr87, i64 50
  %i.gg = load i8, ptr %i.gf, align 2, !range !1459, !alias.scope !15482, !noalias !15485, !noundef !12
  %i.gh = getelementptr inbounds nuw i8, ptr %.tr1488, i64 50
  %i.gi = load i8, ptr %i.gh, align 2, !range !1459, !alias.scope !15485, !noalias !15482, !noundef !12
  %i.gj = icmp eq i8 %i.gg, %i.gi
  br i1 %i.gj, label %bb.at, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.at:                                            ; preds = %bb.as
  %i.gk = getelementptr inbounds nuw i8, ptr %.tr87, i64 32
  %i.gl = load ptr, ptr %i.gk, align 8, !alias.scope !15482, !noalias !15485, !nonnull !12, !noundef !12 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.tr1488, i64 32
  %i.gn = load ptr, ptr %i.gm, align 8, !alias.scope !15485, !noalias !15482, !nonnull !12, !noundef !12 ; 2 uses
  %i.go = icmp eq ptr %i.gl, %i.gn
  br i1 %i.go, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
end_hunk_11
