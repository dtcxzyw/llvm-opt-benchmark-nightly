Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_catalog_unity-3798fba31c5b02c8.deltalake_catalog_unity.c3c83283175c5f03-cgu.11?download=true
inline.NumInlined: 1026
inline.NumDeleted: 496
begin_hunk_0_@_RINvMNtCsbvkFyIu7lgC_4core3stre16trim_end_matchescECsgO8S5jLFugx_23deltalake_catalog_unity:_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str7patterncNtB5_7Pattern13into_searcher.exit
  %i.j = and i8 %i.i, 31
  %i.k = zext nneg i8 %i.j to i32
  %i.l = icmp slt i8 %i.i, -64
  br i1 %i.l, label %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsgO8S5jLFugx_23deltalake_catalog_unity.exit19.i.i.i, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = zext nneg i8 %i.e to i32
  br label %_RNvXs0_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i

_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsgO8S5jLFugx_23deltalake_catalog_unity.exit19.i.i.i: ; preds = %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsgO8S5jLFugx_23deltalake_catalog_unity.exit17.i.i.i
  %i.n = icmp ne i64 %.reass5.i, 2
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds i8, ptr %i.b, i64 -3 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !noalias !37, !noundef !5 ; 3 uses
  %i.q = and i8 %i.p, 15
  %i.r = zext nneg i8 %i.q to i32
  %i.s = icmp slt i8 %i.p, -64
  br i1 %i.s, label %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsgO8S5jLFugx_23deltalake_catalog_unity.exit21.i.i.i, label %bb.e

bb.d:                                             ; preds = %bb.e, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsgO8S5jLFugx_23deltalake_catalog_unity.exit17.i.i.i
  %.sroa.6.0.i.i = phi ptr [ %.sroa.6.1.i.i, %bb.e ], [ %i.h, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsgO8S5jLFugx_23deltalake_catalog_unity.exit17.i.i.i ]
  %.sroa.010.0.i.i.i = phi i32 [ %i.aj, %bb.e ], [ %i.k, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsgO8S5jLFugx_23deltalake_catalog_unity.exit17.i.i.i ]
  %i.t = shl nuw nsw i32 %.sroa.010.0.i.i.i, 6
  %i.u = and i8 %i.e, 63
  %i.v = zext nneg i8 %i.u to i32
  %i.w = or disjoint i32 %i.t, %i.v
  br label %_RNvXs0_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i

_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsgO8S5jLFugx_23deltalake_catalog_unity.exit21.i.i.i: ; preds = %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsgO8S5jLFugx_23deltalake_catalog_unity.exit19.i.i.i
  %i.x = icmp ne i64 %.reass5.i, 3
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds i8, ptr %i.b, i64 -4 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !noalias !37, !noundef !5
  %i.aa = and i8 %i.z, 7
  %i.ab = zext nneg i8 %i.aa to i32
  %i.ac = shl nuw nsw i32 %i.ab, 6
  %i.ad = and i8 %i.p, 63
  %i.ae = zext nneg i8 %i.ad to i32
  %i.af = or disjoint i32 %i.ac, %i.ae
  br label %bb.e

bb.e:                                             ; preds = %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsgO8S5jLFugx_23deltalake_catalog_unity.exit21.i.i.i, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsgO8S5jLFugx_23deltalake_catalog_unity.exit19.i.i.i
  %.sroa.6.1.i.i = phi ptr [ %i.y, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsgO8S5jLFugx_23deltalake_catalog_unity.exit21.i.i.i ], [ %i.o, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsgO8S5jLFugx_23deltalake_catalog_unity.exit19.i.i.i ]
  %.sroa.010.1.i.i.i = phi i32 [ %i.af, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsgO8S5jLFugx_23deltalake_catalog_unity.exit21.i.i.i ], [ %i.r, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsgO8S5jLFugx_23deltalake_catalog_unity.exit19.i.i.i ]
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
  br i1 %.not.i, label %bb.a, label %_RNvYNtNtNtCsbvkFyIu7lgC_4core3str7pattern12CharSearcherNtB4_15ReverseSearcher16next_reject_backCsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RNvYNtNtNtCsbvkFyIu7lgC_4core3str7pattern12CharSearcherNtB4_15ReverseSearcher16next_reject_backCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a, %_RNvXs0_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i
  %i.am = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.an = insertvalue { ptr, i64 } %i.am, i64 %.reass5.i, 1
  ret { ptr, i64 } %i.an
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMNtCsbvkFyIu7lgC_4core3stre9ends_withcECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i32 noundef range(i32 0, 1114112) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !42
  store i32 0, ptr %i.a, align 4, !noalias !42
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
  store i8 %i.r, ptr %i.a, align 4, !alias.scope !43, !noalias !42
  br label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str7patterncNtB5_7Pattern12is_suffix_of.exit

bb.d:                                             ; preds = %bb.b
  %i.s = or disjoint i8 %i.h, -64
  store i8 %i.s, ptr %i.a, align 4, !alias.scope !43, !noalias !42
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.f, ptr %i.t, align 1, !alias.scope !43, !noalias !42
  br label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str7patterncNtB5_7Pattern12is_suffix_of.exit

bb.e:                                             ; preds = %bb.b
  %i.u = icmp samesign ult i32 %2, 65536
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = or disjoint i8 %i.l, -32
  store i8 %i.v, ptr %i.a, align 4, !alias.scope !43, !noalias !42
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.j, ptr %i.w, align 1, !alias.scope !43, !noalias !42
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.f, ptr %i.x, align 2, !alias.scope !43, !noalias !42
  br label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str7patterncNtB5_7Pattern12is_suffix_of.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.q, ptr %i.a, align 4, !alias.scope !43, !noalias !42
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.n, ptr %i.y, align 1, !alias.scope !43, !noalias !42
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.j, ptr %i.z, align 2, !alias.scope !43, !noalias !42
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.f, ptr %i.aa, align 1, !alias.scope !43, !noalias !42
  br label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str7patterncNtB5_7Pattern12is_suffix_of.exit

_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str7patterncNtB5_7Pattern12is_suffix_of.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.ab = call noundef zeroext i1 @_RNvMNtCsbvkFyIu7lgC_4core5sliceSh9ends_withCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %.sroa.0.05.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !42
  ret i1 %i.ab
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6dequesINtB6_6DequesNtNtCs6Po7BT7Nknu_5alloc6string6StringE12push_back_aoNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEB23_(ptr noalias noundef align 8 dereferenceable(192) %0, i8 noundef range(i8 0, 4) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store ptr %2, ptr %i.b, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !46
  %i.d = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #31, !noalias !46 ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtNtCs95DO3lnzZ3L_4moka6common5deque7DeqNodeINtNtBJ_10concurrent11KeyHashDateNtNtB4_6string6StringEEE3newCsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #32
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arcINtB5_7MiniArcINtNtB7_10entry_info9EntryInfoNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

common.resume:                                    ; preds = %bb.l, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.c ], [ %lpad.thr_comm.split-lp, %bb.l ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtNtCs95DO3lnzZ3L_4moka6common5deque7DeqNodeINtNtBJ_10concurrent11KeyHashDateNtNtB4_6string6StringEEE3newCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.h = zext nneg i8 %1 to i64
  switch i8 %1, label %default.unreachable14 [
    i8 0, label %bb.h
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
  ], !prof !7

default.unreachable14:                            ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtNtCs95DO3lnzZ3L_4moka6common5deque7DeqNodeINtNtBJ_10concurrent11KeyHashDateNtNtB4_6string6StringEEE3newCsgO8S5jLFugx_23deltalake_catalog_unity.exit
  unreachable

bb.e:                                             ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtNtCs95DO3lnzZ3L_4moka6common5deque7DeqNodeINtNtBJ_10concurrent11KeyHashDateNtNtB4_6string6StringEEE3newCsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.h

bb.f:                                             ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtNtCs95DO3lnzZ3L_4moka6common5deque7DeqNodeINtNtBJ_10concurrent11KeyHashDateNtNtB4_6string6StringEEE3newCsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.h

bb.g:                                             ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtNtCs95DO3lnzZ3L_4moka6common5deque7DeqNodeINtNtBJ_10concurrent11KeyHashDateNtNtB4_6string6StringEEE3newCsgO8S5jLFugx_23deltalake_catalog_unity.exit
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #32
          to label %bb.k unwind label %bb.l

bb.h:                                             ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtNtCs95DO3lnzZ3L_4moka6common5deque7DeqNodeINtNtBJ_10concurrent11KeyHashDateNtNtB4_6string6StringEEE3newCsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.f, %bb.e
  %.sink = phi ptr [ %i.j, %bb.f ], [ %i.i, %bb.e ], [ %0, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtNtCs95DO3lnzZ3L_4moka6common5deque7DeqNodeINtNtBJ_10concurrent11KeyHashDateNtNtB4_6string6StringEEE3newCsgO8S5jLFugx_23deltalake_catalog_unity.exit ]
  %i.k = tail call noundef nonnull ptr @_RNvMs1_NtNtCs95DO3lnzZ3L_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9push_backCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sink, ptr noalias noundef nonnull align 8 %i.d) ; 2 uses
  %i.l = icmp ult ptr %i.k, inttoptr (i64 4 to ptr)
  %i.m = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.n = or i64 %i.m, %i.h
  %i.o = inttoptr i64 %i.n to ptr
  br i1 %i.l, label %.noexc6, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtCsgtZWsW6JDnL_6tagptr10TagNonNullINtNtNtCs95DO3lnzZ3L_4moka6common5deque7DeqNodeINtNtB1m_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEKj2_ENtBK_4NullE6expectCsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !6

.noexc6:                                          ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.m, ptr %i.a, align 8
  call void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 92, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @57, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #32
  unreachable

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtCsgtZWsW6JDnL_6tagptr10TagNonNullINtNtNtCs95DO3lnzZ3L_4moka6common5deque7DeqNodeINtNtB1m_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEKj2_ENtBK_4NullE6expectCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.h
  %i.p = load ptr, ptr %3, align 8, !nonnull !5, !noundef !5
  %i.q = getelementptr i8, ptr %i.p, i64 272
  %.val = load ptr, ptr %i.q, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 4 uses
  %i.s = cmpxchg weak ptr %i.r, i8 0, i8 1 acquire monotonic, align 1
  %i.t = extractvalue { i8, i1 } %i.s, 1
  br i1 %i.t, label %.noexc7, label %bb.i, !prof !8

bb.i:                                             ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtCsgtZWsW6JDnL_6tagptr10TagNonNullINtNtNtCs95DO3lnzZ3L_4moka6common5deque7DeqNodeINtNtB1m_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEKj2_ENtBK_4NullE6expectCsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.u = tail call noundef zeroext i1 @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.r, i64 undef, i32 noundef 1000000000) ; 0 uses
  br label %.noexc7

.noexc7:                                          ; preds = %bb.i, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtCsgtZWsW6JDnL_6tagptr10TagNonNullINtNtNtCs95DO3lnzZ3L_4moka6common5deque7DeqNodeINtNtB1m_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEKj2_ENtBK_4NullE6expectCsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 16
  store ptr %i.o, ptr %i.v, align 8
  %i.w = cmpxchg ptr %i.r, i8 1, i8 0 release monotonic, align 1
  %i.x = extractvalue { i8, i1 } %i.w, 1
  br i1 %i.x, label %_RNvMs7_NtNtCs95DO3lnzZ3L_4moka6common10concurrentINtB5_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE23set_access_order_q_nodeB1J_.exit, label %bb.j, !prof !8

bb.j:                                             ; preds = %.noexc7
  tail call void @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.r, i1 noundef zeroext false)
  br label %_RNvMs7_NtNtCs95DO3lnzZ3L_4moka6common10concurrentINtB5_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE23set_access_order_q_nodeB1J_.exit

_RNvMs7_NtNtCs95DO3lnzZ3L_4moka6common10concurrentINtB5_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE23set_access_order_q_nodeB1J_.exit: ; preds = %bb.j, %.noexc7
  ret void

bb.k:                                             ; preds = %bb.g
  unreachable

bb.l:                                             ; preds = %bb.g
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtCs95DO3lnzZ3L_4moka6common5deque7DeqNodeINtNtB1k_10concurrent11KeyHashDateNtNtBL_6string6StringEEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %i.d) #34
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6dequesINtB6_6DequesNtNtCs6Po7BT7Nknu_5alloc6string6StringE12push_back_woNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEB23_(ptr noalias noundef align 8 dereferenceable(192) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store ptr %1, ptr %i.a, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !49
  %i.c = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #31, !noalias !49 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtNtCs95DO3lnzZ3L_4moka6common5deque7DeqNodeINtNtBJ_10concurrent11KeyHashDateNtNtB4_6string6StringEEE3newCsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #32
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arcINtB5_7MiniArcINtNtB7_10entry_info9EntryInfoNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common5deque7DeqNodeINtNtBL_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common5deque7DeqNodeINtNtBL_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.e

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtNtCs95DO3lnzZ3L_4moka6common5deque7DeqNodeINtNtBJ_10concurrent11KeyHashDateNtNtB4_6string6StringEEE3newCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = tail call noundef nonnull ptr @_RNvMs1_NtNtCs95DO3lnzZ3L_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9push_backCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.g, ptr noalias noundef nonnull align 8 %i.c)
  %i.i = load ptr, ptr %2, align 8, !nonnull !5, !noundef !5
  %i.j = getelementptr i8, ptr %i.i, i64 272
  %.val = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 4 uses
  %i.l = cmpxchg weak ptr %i.k, i8 0, i8 1 acquire monotonic, align 1
  %i.m = extractvalue { i8, i1 } %i.l, 1
  br i1 %i.m, label %bb.f, label %bb.e, !prof !8

bb.e:                                             ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtNtCs95DO3lnzZ3L_4moka6common5deque7DeqNodeINtNtBJ_10concurrent11KeyHashDateNtNtB4_6string6StringEEE3newCsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.n = tail call noundef zeroext i1 @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.k, i64 undef, i32 noundef 1000000000) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtNtCs95DO3lnzZ3L_4moka6common5deque7DeqNodeINtNtBJ_10concurrent11KeyHashDateNtNtB4_6string6StringEEE3newCsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 24
  store ptr %i.h, ptr %i.o, align 8
  %i.p = cmpxchg ptr %i.k, i8 1, i8 0 release monotonic, align 1
  %i.q = extractvalue { i8, i1 } %i.p, 1
  br i1 %i.q, label %_RNvMs7_NtNtCs95DO3lnzZ3L_4moka6common10concurrentINtB5_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE22set_write_order_q_nodeB1J_.exit, label %bb.g, !prof !8

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.k, i1 noundef zeroext false)
  br label %_RNvMs7_NtNtCs95DO3lnzZ3L_4moka6common10concurrentINtB5_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE22set_write_order_q_nodeB1J_.exit

_RNvMs7_NtNtCs95DO3lnzZ3L_4moka6common10concurrentINtB5_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE22set_write_order_q_nodeB1J_.exit: ; preds = %bb.f, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6dequesINtB6_6DequesNtNtCs6Po7BT7Nknu_5alloc6string6StringE15move_to_back_aoNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEB26_(ptr noalias noundef align 8 dereferenceable(192) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr i8, ptr %i.a, i64 272
  %.val = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 4 uses
  %i.d = cmpxchg weak ptr %i.c, i8 0, i8 1 acquire monotonic, align 1
  %i.e = extractvalue { i8, i1 } %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.c, i64 undef, i32 noundef 1000000000) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !noundef !5 ; 2 uses
  %i.i = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.j = extractvalue { i8, i1 } %i.i, 1
  br i1 %i.j, label %_RNvMs7_NtNtCs95DO3lnzZ3L_4moka6common10concurrentINtB5_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE19access_order_q_nodeB1J_.exit, label %bb.d, !prof !8

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
  br label %_RNvMs7_NtNtCs95DO3lnzZ3L_4moka6common10concurrentINtB5_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE19access_order_q_nodeB1J_.exit

_RNvMs7_NtNtCs95DO3lnzZ3L_4moka6common10concurrentINtB5_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE19access_order_q_nodeB1J_.exit: ; preds = %bb.c, %bb.d
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RNvMs7_NtNtCs95DO3lnzZ3L_4moka6common10concurrentINtB5_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE19access_order_q_nodeB1J_.exit
  %i.k = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.l = and i64 %i.k, -4                         ; 2 uses
  %i.m = inttoptr i64 %i.l to ptr                 ; 7 uses
  %i.n = and i64 %i.k, 3
  %i.o = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = tail call noundef i8 @_RNvXNtCs95DO3lnzZ3L_4moka6commonNtB2_11CacheRegionINtNtCsbvkFyIu7lgC_4core7convert4FromjE4from(i64 noundef %i.n)
  switch i8 %i.p, label %default.unreachable10 [
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.j
  ], !prof !7

.sink.split:                                      ; preds = %bb.g, %bb.k, %bb.o, %bb.m
  %.sink = phi ptr [ %i.ag, %bb.o ], [ %i.ac, %bb.m ], [ %0, %bb.k ], [ %0, %bb.g ]
  tail call void @_RNvMs1_NtNtCs95DO3lnzZ3L_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEE12move_to_backCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sink, ptr noundef nonnull %i.m)
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %_RNvMs7_NtNtCs95DO3lnzZ3L_4moka6common10concurrentINtB5_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE19access_order_q_nodeB1J_.exit
  ret void

default.unreachable10:                            ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !noundef !5
  %.not6 = icmp eq ptr %i.r, null
  br i1 %.not6, label %bb.k, label %.sink.split

bb.h:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !noundef !5
  %.not4 = icmp eq ptr %i.t, null
  br i1 %.not4, label %bb.l, label %bb.m

bb.i:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !noundef !5
  %.not2 = icmp eq ptr %i.v, null
  br i1 %.not2, label %bb.n, label %bb.o

bb.j:                                             ; preds = %bb.n, %bb.l, %bb.k, %bb.e
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #35
  unreachable

bb.k:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !noundef !5
  %i.y = icmp eq ptr %i.x, %i.m
  br i1 %i.y, label %.sink.split, label %bb.j, !prof !50

bb.l:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !noundef !5
end_hunk_0
