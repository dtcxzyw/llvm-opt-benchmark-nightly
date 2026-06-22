inline.NumInlined: 1026
inline.NumDeleted: 496
begin_hunk_0_@_RINvMs0_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6dequesINtB6_6DequesNtNtCs6Po7BT7Nknu_5alloc6string6StringE9unlink_aoNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEB1Z_
define hidden void @_RINvMs0_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6dequesINtB6_6DequesNtNtCs6Po7BT7Nknu_5alloc6string6StringE9unlink_aoNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEB1Z_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(192) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !12, !noundef !12
  %i.b = getelementptr i8, ptr %i.a, i64 272
  %.val = load ptr, ptr %i.b, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 4 uses
  %i.d = cmpxchg weak ptr %i.c, i8 0, i8 1 acquire monotonic, align 1
  %i.e = extractvalue { i8, i1 } %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.b, !prof !24

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.c, i64 undef, i32 noundef 1000000000) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !noundef !12 ; 5 uses
  store ptr null, ptr %i.g, align 8
  %i.i = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.j = extractvalue { i8, i1 } %i.i, 1
  br i1 %i.j, label %_RNvMs7_NtNtCs95DO3lnzZ3L_4moka6common10concurrentINtB5_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE24take_access_order_q_nodeB1J_.exit, label %bb.d, !prof !24

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
  br label %_RNvMs7_NtNtCs95DO3lnzZ3L_4moka6common10concurrentINtB5_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE24take_access_order_q_nodeB1J_.exit

_RNvMs7_NtNtCs95DO3lnzZ3L_4moka6common10concurrentINtB5_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE24take_access_order_q_nodeB1J_.exit: ; preds = %bb.c, %bb.d
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %_RNvMs0_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6dequesINtB5_6DequesNtNtCs6Po7BT7Nknu_5alloc6string6StringE14unlink_node_aoCsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.e

bb.e:                                             ; preds = %_RNvMs7_NtNtCs95DO3lnzZ3L_4moka6common10concurrentINtB5_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE24take_access_order_q_nodeB1J_.exit
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = and i64 %i.k, 3
  %i.m = tail call noundef i8 @_RNvXNtCs95DO3lnzZ3L_4moka6commonNtB2_11CacheRegionINtNtCsbvkFyIu7lgC_4core7convert4FromjE4from(i64 noundef %i.l), !noalias !30
  switch i8 %i.m, label %default.unreachable [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
  ], !prof !23

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_RNvMs0_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6dequesINtB5_6DequesNtNtCs6Po7BT7Nknu_5alloc6string6StringE25unlink_node_ao_from_dequeCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 6, ptr noalias noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull %i.h)
  br label %_RNvMs0_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6dequesINtB5_6DequesNtNtCs6Po7BT7Nknu_5alloc6string6StringE14unlink_node_aoCsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call fastcc void @_RNvMs0_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6dequesINtB5_6DequesNtNtCs6Po7BT7Nknu_5alloc6string6StringE25unlink_node_ao_from_dequeCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 9, ptr noalias noundef align 8 dereferenceable(48) %i.n, ptr noundef nonnull %i.h)
  br label %_RNvMs0_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6dequesINtB5_6DequesNtNtCs6Po7BT7Nknu_5alloc6string6StringE14unlink_node_aoCsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.h:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call fastcc void @_RNvMs0_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6dequesINtB5_6DequesNtNtCs6Po7BT7Nknu_5alloc6string6StringE25unlink_node_ao_from_dequeCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 9, ptr noalias noundef align 8 dereferenceable(48) %i.o, ptr noundef nonnull %i.h)
  br label %_RNvMs0_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6dequesINtB5_6DequesNtNtCs6Po7BT7Nknu_5alloc6string6StringE14unlink_node_aoCsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.i:                                             ; preds = %bb.e
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #35, !noalias !30
  unreachable

_RNvMs0_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6dequesINtB5_6DequesNtNtCs6Po7BT7Nknu_5alloc6string6StringE14unlink_node_aoCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.h, %bb.g, %bb.f, %_RNvMs7_NtNtCs95DO3lnzZ3L_4moka6common10concurrentINtB5_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE24take_access_order_q_nodeB1J_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6dequesINtB6_6DequesNtNtCs6Po7BT7Nknu_5alloc6string6StringE9unlink_woNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEB1Z_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !12, !noundef !12
  %i.b = getelementptr i8, ptr %i.a, i64 272
  %.val = load ptr, ptr %i.b, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 4 uses
  %i.d = cmpxchg weak ptr %i.c, i8 0, i8 1 acquire monotonic, align 1
  %i.e = extractvalue { i8, i1 } %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.b, !prof !24

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.c, i64 undef, i32 noundef 1000000000) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !noundef !12 ; 8 uses
  store ptr null, ptr %i.g, align 8
  %i.i = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.j = extractvalue { i8, i1 } %i.i, 1
  br i1 %i.j, label %_RNvMs7_NtNtCs95DO3lnzZ3L_4moka6common10concurrentINtB5_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE23take_write_order_q_nodeB1J_.exit, label %bb.d, !prof !24

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
  br label %_RNvMs7_NtNtCs95DO3lnzZ3L_4moka6common10concurrentINtB5_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE23take_write_order_q_nodeB1J_.exit

_RNvMs7_NtNtCs95DO3lnzZ3L_4moka6common10concurrentINtB5_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE23take_write_order_q_nodeB1J_.exit: ; preds = %bb.c, %bb.d
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %_RNvMs0_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6dequesINtB5_6DequesNtNtCs6Po7BT7Nknu_5alloc6string6StringE14unlink_node_woCsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.e

bb.e:                                             ; preds = %_RNvMs7_NtNtCs95DO3lnzZ3L_4moka6common10concurrentINtB5_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE23take_write_order_q_nodeB1J_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !noalias !33, !noundef !12 ; 2 uses
  %.not.i = icmp ne ptr %i.l, null                ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !33
  %i.o = icmp eq ptr %i.n, %i.h
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.o
  br i1 %or.cond.i, label %bb.f, label %_RNvMs0_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6dequesINtB5_6DequesNtNtCs6Po7BT7Nknu_5alloc6string6StringE14unlink_node_woCsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  %i.p = load i64, ptr %0, align 8, !range !39, !alias.scope !40, !noundef !12
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = trunc nuw i64 %i.p to i1
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.q, align 8, !alias.scope !40, !noundef !12 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.h
  br i1 %i.t, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g, %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !noalias !40, !noundef !12 ; 4 uses
  br i1 %.not.i, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !noalias !40, !noundef !12
  store i64 1, ptr %0, align 8, !alias.scope !40
  store ptr %i.x, ptr %i.q, align 8, !alias.scope !40
  br label %bb.h

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.v, ptr %i.y, align 8, !noalias !40
  %.pre.i = load ptr, ptr %i.k, align 8, !noalias !40
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  store ptr %i.v, ptr %i.m, align 8, !alias.scope !40
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.z = phi ptr [ null, %bb.k ], [ %.pre.i, %bb.j ] ; 2 uses
  %.not4.i.i = icmp eq ptr %i.v, null
  br i1 %.not4.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %i.z, ptr %i.aa, align 8, !noalias !40
  br label %_RNvMs1_NtNtCs95DO3lnzZ3L_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEE6unlinkCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

bb.n:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.z, ptr %i.ab, align 8, !alias.scope !40
  br label %_RNvMs1_NtNtCs95DO3lnzZ3L_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEE6unlinkCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

_RNvMs1_NtNtCs95DO3lnzZ3L_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEE6unlinkCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.n, %bb.m
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false), !noalias !40
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !40, !noundef !12
  %i.ae = add i64 %i.ad, -1
  store i64 %i.ae, ptr %i.ac, align 8, !alias.scope !40
  invoke void @_RNvXs4_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arcINtB5_7MiniArcINtNtB7_10entry_info9EntryInfoNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtCs95DO3lnzZ3L_4moka6common5deque7DeqNodeINtNtB1k_10concurrent11KeyHashDateNtNtBL_6string6StringEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.o, !noalias !33

bb.o:                                             ; preds = %_RNvMs1_NtNtCs95DO3lnzZ3L_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEE6unlinkCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef 24, i64 noundef 8) #31, !noalias !33
  resume { ptr, i32 } %i.af

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtCs95DO3lnzZ3L_4moka6common5deque7DeqNodeINtNtB1k_10concurrent11KeyHashDateNtNtBL_6string6StringEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %_RNvMs1_NtNtCs95DO3lnzZ3L_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEE6unlinkCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef 24, i64 noundef 8) #31, !noalias !33
  br label %_RNvMs0_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6dequesINtB5_6DequesNtNtCs6Po7BT7Nknu_5alloc6string6StringE14unlink_node_woCsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RNvMs0_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6dequesINtB5_6DequesNtNtCs6Po7BT7Nknu_5alloc6string6StringE14unlink_node_woCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtCs95DO3lnzZ3L_4moka6common5deque7DeqNodeINtNtB1k_10concurrent11KeyHashDateNtNtBL_6string6StringEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %bb.e, %_RNvMs7_NtNtCs95DO3lnzZ3L_4moka6common10concurrentINtB5_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE23take_write_order_q_nodeB1J_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtB11_6string6StringENtB2B_17UnityCatalogErrorENtNtB4_6marker4SendEL_EEEB2B_(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !12 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !41, !invariant.load !12 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtBL_6string6StringENtB2l_17UnityCatalogErrorENtNtB4_6marker4SendEL_EEB2l_.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !42, !invariant.load !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.f) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtBL_6string6StringENtB2l_17UnityCatalogErrorENtNtB4_6marker4SendEL_EEB2l_.exit

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !41, !invariant.load !12 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtB7_6string6StringENtB23_17UnityCatalogErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropB23_.exit5.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !42, !invariant.load !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) %i.l) #31
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtB7_6string6StringENtB23_17UnityCatalogErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropB23_.exit5.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtB7_6string6StringENtB23_17UnityCatalogErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropB23_.exit5.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.d
  resume { ptr, i32 } %i.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtBL_6string6StringENtB2l_17UnityCatalogErrorENtNtB4_6marker4SendEL_EEB2l_.exit: ; preds = %bb.c, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtB11_6string6StringNtCsgO8S5jLFugx_23deltalake_catalog_unity17UnityCatalogErrorENtNtB4_6marker4SendEL_EEEB2S_(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !12 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !41, !invariant.load !12 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtBL_6string6StringNtCsgO8S5jLFugx_23deltalake_catalog_unity17UnityCatalogErrorENtNtB4_6marker4SendEL_EEB2B_.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !42, !invariant.load !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.f) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtBL_6string6StringNtCsgO8S5jLFugx_23deltalake_catalog_unity17UnityCatalogErrorENtNtB4_6marker4SendEL_EEB2B_.exit

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !41, !invariant.load !12 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultNtNtB7_6string6StringNtCsgO8S5jLFugx_23deltalake_catalog_unity17UnityCatalogErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropB2j_.exit5.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !42, !invariant.load !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) %i.l) #31
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultNtNtB7_6string6StringNtCsgO8S5jLFugx_23deltalake_catalog_unity17UnityCatalogErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropB2j_.exit5.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultNtNtB7_6string6StringNtCsgO8S5jLFugx_23deltalake_catalog_unity17UnityCatalogErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropB2j_.exit5.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.d
  resume { ptr, i32 } %i.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtBL_6string6StringNtCsgO8S5jLFugx_23deltalake_catalog_unity17UnityCatalogErrorENtNtB4_6marker4SendEL_EEB2B_.exit: ; preds = %bb.c, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCsgO6CtM78C4N_7reqwest10async_impl8response8ResponseNtNtCsjkRrtHEnRPD_18reqwest_middleware5error5ErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !12 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !41, !invariant.load !12 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCsgO6CtM78C4N_7reqwest10async_impl8response8ResponseNtNtCsjkRrtHEnRPD_18reqwest_middleware5error5ErrorENtNtB4_6marker4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !42, !invariant.load !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.f) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCsgO6CtM78C4N_7reqwest10async_impl8response8ResponseNtNtCsjkRrtHEnRPD_18reqwest_middleware5error5ErrorENtNtB4_6marker4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !41, !invariant.load !12 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultNtNtNtCsgO6CtM78C4N_7reqwest10async_impl8response8ResponseNtNtCsjkRrtHEnRPD_18reqwest_middleware5error5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !42, !invariant.load !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) %i.l) #31
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultNtNtNtCsgO6CtM78C4N_7reqwest10async_impl8response8ResponseNtNtCsjkRrtHEnRPD_18reqwest_middleware5error5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultNtNtNtCsgO6CtM78C4N_7reqwest10async_impl8response8ResponseNtNtCsjkRrtHEnRPD_18reqwest_middleware5error5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.d
  resume { ptr, i32 } %i.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCsgO6CtM78C4N_7reqwest10async_impl8response8ResponseNtNtCsjkRrtHEnRPD_18reqwest_middleware5error5ErrorENtNtB4_6marker4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.c, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %i.a = load i64, ptr %0, align 8, !range !39, !alias.scope !43, !noundef !12
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !43, !noundef !12 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.d, align 8, !alias.scope !43 ; 6 uses
  %i.e = icmp eq ptr %.val.i, null
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.f = load ptr, ptr %.val1.i, align 8, !invariant.load !12, !noalias !43 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void %i.f(ptr noundef nonnull %.val.i)
          to label %bb.e unwind label %bb.f, !noalias !43

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !41, !invariant.load !12, !noalias !43 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !42, !invariant.load !12, !noalias !43
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) %i.k) #31, !noalias !43
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.f:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !41, !invariant.load !12, !noalias !43 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !42, !invariant.load !12, !noalias !43
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %i.q) #31, !noalias !43
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.f
  resume { ptr, i32 } %i.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a, %bb.b, %bb.e, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1X_4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !invariant.load !12 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !41, !invariant.load !12 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !42, !invariant.load !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %i.g) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !41, !invariant.load !12 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !42, !invariant.load !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) %i.m) #31
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.e
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCseo6ZV82fEK1_3url3UrlEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !46, !noundef !12
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.f, %bb.e, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(88) %0)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i = load i64, ptr %0, align 8, !alias.scope !47 ; 2 uses
  %i.d = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !56, !nonnull !12, !noundef !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !57
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i

bb.e:                                             ; preds = %bb.b
  %.val.i.i.i = load i64, ptr %0, align 8, !alias.scope !47 ; 2 uses
  %i.f = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !56, !nonnull !12, !noundef !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !60
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !46, !noundef !12
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.f, %bb.e, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i = load i64, ptr %0, align 8, !alias.scope !63 ; 2 uses
  %i.d = icmp eq i64 %.val2.i.i, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i = load ptr, ptr %i.e, align 8, !alias.scope !70, !nonnull !12, !noundef !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !71
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
end_hunk_0
begin_hunk_1_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs27OhNon2q2q_6rustls6client3ech7EchModeEECsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
  unreachable

.body.i.i.i.i:                                    ; preds = %bb.h, %bb.g, %.body.i.i.i.i.i
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.b, %.body.i.i.i.i.i ], [ %i.i, %bb.g ], [ %i.i, %bb.h ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2ZFErcPd99l_16rustls_pki_types11server_name7DnsNameECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.q) #34
          to label %.body2.i.i.i.i unwind label %bb.u

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs27OhNon2q2q_6rustls4msgs9handshake13HpkeKeyConfigECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.s = load i64, ptr %i.r, align 8, !range !46, !alias.scope !260, !noundef !12
  %i.t = icmp eq i64 %i.s, -9223372036854775808
  br i1 %i.t, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2ZFErcPd99l_16rustls_pki_types11server_name7DnsNameECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs27OhNon2q2q_6rustls4msgs9handshake13HpkeKeyConfigECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %bb.o unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !265 ; 2 uses
  %i.v = icmp eq i64 %.val2.i.i.i.i.i.i.i.i, 0
  br i1 %i.v, label %.body2.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val3.i.i.i.i.i.i.i.i = load ptr, ptr %i.w, align 8, !alias.scope !272, !nonnull !12, !noundef !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !273
  br label %.body2.i.i.i.i

bb.o:                                             ; preds = %bb.l
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !265 ; 2 uses
  %i.x = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.x, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2ZFErcPd99l_16rustls_pki_types11server_name7DnsNameECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.y, align 8, !alias.scope !272, !nonnull !12, !noundef !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !276
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2ZFErcPd99l_16rustls_pki_types11server_name7DnsNameECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i

.body2.i.i.i.i:                                   ; preds = %bb.n, %bb.m, %.body.i.i.i.i
  %.pn.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ], [ %i.u, %bb.m ], [ %i.u, %bb.n ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs27OhNon2q2q_6rustls4msgs9handshake18EchConfigExtensionEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.z) #34
          to label %common.resume.i unwind label %bb.u

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2ZFErcPd99l_16rustls_pki_types11server_name7DnsNameECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i: ; preds = %bb.p, %bb.o, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs27OhNon2q2q_6rustls4msgs9handshake13HpkeKeyConfigECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs27OhNon2q2q_6rustls4msgs9handshake18EchConfigExtensionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %bb.s unwind label %bb.q

bb.q:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2ZFErcPd99l_16rustls_pki_types11server_name7DnsNameECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i = load i64, ptr %i.aa, align 8, !alias.scope !279 ; 2 uses
  %i.ac = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.ac, label %common.resume.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val3.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !284, !nonnull !12, !noundef !12
  %i.ae = shl nuw i64 %.val2.i.i.i.i.i, 5
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !285
  br label %common.resume.i

bb.s:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2ZFErcPd99l_16rustls_pki_types11server_name7DnsNameECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i
  %.val.i.i.i.i.i = load i64, ptr %i.aa, align 8, !alias.scope !279 ; 2 uses
  %i.af = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.af, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs27OhNon2q2q_6rustls6client3ech7EchModeECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val1.i.i.i.i.i = load ptr, ptr %i.ag, align 8, !alias.scope !284, !nonnull !12, !noundef !12
  %i.ah = shl nuw i64 %.val.i.i.i.i.i, 5
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %i.ah, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !288
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs27OhNon2q2q_6rustls6client3ech7EchModeECsgO8S5jLFugx_23deltalake_catalog_unity.exit

common.resume.i:                                  ; preds = %bb.ac, %bb.ab, %bb.x, %bb.w, %bb.r, %bb.q, %.body2.i.i.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.ak, %bb.w ], [ %.pn.i.i.i.i, %.body2.i.i.i.i ], [ %i.ab, %bb.q ], [ %i.ab, %bb.r ], [ %i.ak, %bb.x ], [ %i.aq, %bb.ac ], [ %i.aq, %bb.ab ]
  resume { ptr, i32 } %common.resume.op.i

bb.u:                                             ; preds = %.body2.i.i.i.i, %.body.i.i.i.i
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.v:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %bb.y unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i1.i.i.i = load i64, ptr %i.aj, align 8, !alias.scope !291 ; 2 uses
  %i.al = icmp eq i64 %.val2.i.i1.i.i.i, 0
  br i1 %i.al, label %common.resume.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i2.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !298, !nonnull !12, !noundef !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i2.i.i.i, i64 noundef %.val2.i.i1.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !299
  br label %common.resume.i

bb.y:                                             ; preds = %bb.v
  %.val.i.i3.i.i.i = load i64, ptr %i.aj, align 8, !alias.scope !291 ; 2 uses
  %i.an = icmp eq i64 %.val.i.i3.i.i.i, 0
  br i1 %i.an, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs27OhNon2q2q_6rustls6client3ech7EchModeECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i4.i.i.i = load ptr, ptr %i.ao, align 8, !alias.scope !298, !nonnull !12, !noundef !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i4.i.i.i, i64 noundef %.val.i.i3.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !302
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs27OhNon2q2q_6rustls6client3ech7EchModeECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.aa:                                            ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ap)
          to label %bb.ad unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i = load i64, ptr %i.ap, align 8, !alias.scope !305 ; 2 uses
  %i.ar = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.ar, label %common.resume.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i.i.i = load ptr, ptr %i.as, align 8, !alias.scope !314, !nonnull !12, !noundef !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val2.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !315
  br label %common.resume.i

bb.ad:                                            ; preds = %bb.aa
  %.val.i.i.i.i = load i64, ptr %i.ap, align 8, !alias.scope !305 ; 2 uses
  %i.at = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.at, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs27OhNon2q2q_6rustls6client3ech7EchModeECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i.i.i = load ptr, ptr %i.au, align 8, !alias.scope !314, !nonnull !12, !noundef !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !318
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs27OhNon2q2q_6rustls6client3ech7EchModeECsgO8S5jLFugx_23deltalake_catalog_unity.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsgO6CtM78C4N_7reqwest10async_impl4body4BodyEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !39, !noundef !12
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl4body4BodyECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl4body4BodyECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.f, %bb.c, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !321)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !327, !noundef !12 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !331)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !334, !nonnull !12, !noundef !12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !334, !noundef !12
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !334, !noundef !12
  tail call void %i.f(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.i, i64 noundef %i.k), !inline_history !335
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl4body4BodyECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i = load ptr, ptr %i.l, align 8, !alias.scope !327 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i = load ptr, ptr %i.m, align 8, !alias.scope !327, !nonnull !12, !align !336, !noundef !12 ; 5 uses
  %i.n = load ptr, ptr %.val1.i.i, align 8, !invariant.load !12, !noalias !327 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.n(ptr noundef nonnull %.val.i.i)
          to label %bb.f unwind label %bb.g, !noalias !327

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !41, !invariant.load !12, !noalias !327 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl4body4BodyECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !42, !invariant.load !12, !noalias !327
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) %i.s) #31, !noalias !327
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl4body4BodyECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.g:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !41, !invariant.load !12, !noalias !327 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtCs574AjYkQ1m0_9http_body4Bodyp4DataNtNtCs9Ct3XQYJhun_5bytes5bytes5Bytesp5ErrorIBy_DNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtB29_6marker4SyncNtB2G_4SendEL_EB2E_B2Y_EL_ENtNtNtB29_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i.i.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i: ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !42, !invariant.load !12, !noalias !327
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) %i.y) #31, !noalias !327
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtCs574AjYkQ1m0_9http_body4Bodyp4DataNtNtCs9Ct3XQYJhun_5bytes5bytes5Bytesp5ErrorIBy_DNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtB29_6marker4SyncNtB2G_4SendEL_EB2E_B2Y_EL_ENtNtNtB29_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i.i.i.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtCs574AjYkQ1m0_9http_body4Bodyp4DataNtNtCs9Ct3XQYJhun_5bytes5bytes5Bytesp5ErrorIBy_DNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtB29_6marker4SyncNtB2G_4SendEL_EB2E_B2Y_EL_ENtNtNtB29_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i.i.i.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i, %bb.g
  resume { ptr, i32 } %i.t
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCsgO6CtM78C4N_7reqwest10async_impl7request7RequestNtNtB18_5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(264) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !77, !noundef !12
  %.not = icmp eq i64 %i.a, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl7request7RequestECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(264) %0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !invariant.load !12 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !41, !invariant.load !12 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !42, !invariant.load !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %i.g) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !41, !invariant.load !12 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !42, !invariant.load !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) %i.m) #31
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.e
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !12
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(8) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuEp6OutputuNtNtB15_6marker4SendEL_EENtNtB13_4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2 = load i64, ptr %0, align 8              ; 2 uses
  %i.b = icmp eq i64 %.val2, 0
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtNtBL_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.c, align 8, !nonnull !12, !noundef !12
  %i.d = shl nuw i64 %.val2, 4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 8) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtNtBL_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.e = icmp eq i64 %.val, 0
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtNtBL_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit4, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.f, align 8, !nonnull !12, !noundef !12
  %i.g = shl nuw i64 %.val, 4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtNtBL_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit4

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtNtBL_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit4: ; preds = %bb.d, %bb.e
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtNtBL_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtB1i_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2 = load i64, ptr %0, align 8, !alias.scope !337 ; 2 uses
  %i.b = icmp eq i64 %.val2, 0
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtB1p_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.c, align 8, !nonnull !12, !noundef !12
  %i.d = mul nuw i64 %.val2, 72
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !340
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtB1p_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %0, align 8, !alias.scope !337 ; 2 uses
  %i.e = icmp eq i64 %.val, 0
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtB1p_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit4, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.f, align 8, !nonnull !12, !noundef !12
  %i.g = mul nuw i64 %.val, 72
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !343
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtB1p_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit4

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtB1p_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit4: ; preds = %bb.d, %bb.e
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtB1p_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1i_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtBK_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2 = load i64, ptr %0, align 8, !alias.scope !346 ; 2 uses
  %i.b = icmp eq i64 %.val2, 0
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1p_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.c, align 8, !nonnull !12, !noundef !12
  %i.d = mul nuw i64 %.val2, 104
end_hunk_1
begin_hunk_2_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerINtNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle6PacketuEEECsgO8S5jLFugx_23deltalake_catalog_unity:bb.a

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !42, !invariant.load !12, !noalias !479
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef %i.u, i64 noundef range(i64 1, -9223372036854775807) %i.x) #31, !noalias !479
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i.i.i, %bb.f
  store i64 0, ptr %i.d, align 8, !alias.scope !480
  %i.y = extractvalue { ptr, i32 } %i.s, 0
  %i.z = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.y)
          to label %bb.h unwind label %bb.g, !noalias !469 ; 2 uses

bb.g:                                             ; preds = %.body.i.i.i.i.i.i
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #33, !noalias !469
  unreachable

.thread.i.i:                                      ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i, %bb.e, %bb.b, %bb.a
  store i64 0, ptr %i.d, align 8, !alias.scope !480
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i

bb.h:                                             ; preds = %.body.i.i.i.i.i.i
  %i.ab = extractvalue { ptr, ptr } %i.z, 0       ; 2 uses
  %i.ac = extractvalue { ptr, ptr } %i.z, 1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ac) ]
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !469
  %i.ad = invoke noundef ptr @_RNvYNtNtNtNtCs2pqxYH9ZEk8_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_fmtCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull %i.a, ptr noundef nonnull @78, ptr noundef nonnull inttoptr (i64 125 to ptr))
          to label %bb.k unwind label %bb.j, !noalias !469 ; 2 uses

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.h, %.thread.i.i
  %i.ae = load ptr, ptr %i.c, align 8, !alias.scope !463, !noundef !12 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.ae, null
  br i1 %.not5.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6scoped9ScopeDataEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit4.i, label %bb.o

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %bb.l, %bb.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %i.ab, ptr nonnull %i.ac) #34
          to label %.body.i unwind label %bb.n, !noalias !469

bb.k:                                             ; preds = %bb.i
  store ptr %i.ad, ptr %i.b, align 8, !noalias !469
  %i.ag = icmp eq ptr %i.ad, null
  br i1 %i.ag, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.j, !noalias !469

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !469
  invoke void @_RNvNtCs2pqxYH9ZEk8_3std7process5abort() #32
          to label %bb.m unwind label %bb.j, !noalias !469

bb.m:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  unreachable

bb.n:                                             ; preds = %bb.j
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !469
  unreachable

bb.o:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  invoke void @_RNvMNtNtCs2pqxYH9ZEk8_3std6thread6scopedNtB2_9ScopeData29decrement_num_running_threads(ptr noundef nonnull align 8 %i.ai, i1 noundef zeroext %.sroa.0.0.i.i)
          to label %bb.s unwind label %bb.p, !noalias !463

bb.p:                                             ; preds = %bb.o
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.p, %bb.j
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.aj, %bb.p ], [ %i.af, %bb.j ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !481)
  %i.ak = load ptr, ptr %i.c, align 8, !alias.scope !484, !noundef !12 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6scoped9ScopeDataEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.q

bb.q:                                             ; preds = %.body.i
  %i.am = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !485
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.r, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6scoped9ScopeDataEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

bb.r:                                             ; preds = %bb.q
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6scoped9ScopeDataE9drop_slowCskQDtHcQtBkN_5tokio(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c) #36
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6scoped9ScopeDataEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.aa

bb.s:                                             ; preds = %bb.o
  %i.ao = atomicrmw sub ptr %i.ae, i64 1 release, align 8, !noalias !490
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.t, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6scoped9ScopeDataEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit4.i

bb.t:                                             ; preds = %bb.s
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6scoped9ScopeDataE9drop_slowCskQDtHcQtBkN_5tokio(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c) #36
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6scoped9ScopeDataEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit4.i unwind label %bb.u

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6scoped9ScopeDataEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.u, %bb.r, %bb.q, %.body.i
  %.pn.i = phi { ptr, i32 } [ %i.aq, %bb.u ], [ %eh.lpad-body.i, %bb.r ], [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body.i, %bb.q ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.d) #34
          to label %common.resume.i unwind label %bb.aa

bb.u:                                             ; preds = %bb.t
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6scoped9ScopeDataEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6scoped9ScopeDataEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit4.i: ; preds = %bb.t, %bb.s, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !500)
  %i.ar = load i64, ptr %i.d, align 8, !range !39, !alias.scope !503, !noundef !12
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle6PacketuEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.v

bb.v:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6scoped9ScopeDataEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit4.i
  %.val.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !503, !noundef !12 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i.i.i = load ptr, ptr %i.at, align 8, !alias.scope !503 ; 6 uses
  %i.au = icmp eq ptr %.val.i.i.i, null
  br i1 %i.au, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle6PacketuEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i) ]
  %i.av = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !12, !noalias !504 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  invoke void %i.av(ptr noundef nonnull %.val.i.i.i)
          to label %bb.y unwind label %bb.z, !noalias !504

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.aw = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !range !41, !invariant.load !12, !noalias !504 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle6PacketuEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.y
  %i.az = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !range !42, !invariant.load !12, !noalias !504
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.ax, i64 noundef range(i64 1, -9223372036854775807) %i.ba) #31, !noalias !504
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle6PacketuEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.z:                                             ; preds = %bb.x
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !range !41, !invariant.load !12, !noalias !504 ; 2 uses
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %common.resume.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i: ; preds = %bb.z
  %i.bf = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !range !42, !invariant.load !12, !noalias !504
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.bd, i64 noundef range(i64 1, -9223372036854775807) %i.bg) #31, !noalias !504
  br label %common.resume.i

common.resume.i:                                  ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i, %bb.z, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6scoped9ScopeDataEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.bb, %bb.z ], [ %i.bb, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i ], [ %.pn.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6scoped9ScopeDataEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.aa:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6scoped9ScopeDataEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %bb.r
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle6PacketuEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6scoped9ScopeDataEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit4.i, %bb.v, %bb.y, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !12 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !41, !invariant.load !12 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i: ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !42, !invariant.load !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.f) #31
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.c, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i
  ret void

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !41, !invariant.load !12 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !42, !invariant.load !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) %i.l) #31
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4, %bb.d
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !12 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !41, !invariant.load !12 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i: ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !42, !invariant.load !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.f) #31
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.c, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i
  ret void

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !41, !invariant.load !12 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !42, !invariant.load !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) %i.l) #31
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4, %bb.d
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential15TokenCredentialEL_EEB1k_(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !12 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !41, !invariant.load !12 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential15TokenCredentialEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBM_.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i: ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !42, !invariant.load !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.f) #31
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential15TokenCredentialEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBM_.exit

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential15TokenCredentialEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBM_.exit: ; preds = %bb.c, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i
  ret void

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !41, !invariant.load !12 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential15TokenCredentialEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBM_.exit5, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !42, !invariant.load !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) %i.l) #31
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential15TokenCredentialEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBM_.exit5

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential15TokenCredentialEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBM_.exit5: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4, %bb.d
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtCs95DO3lnzZ3L_4moka6common5deque7DeqNodeINtNtB1k_10concurrent11KeyHashDateNtNtBL_6string6StringEEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs4_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arcINtB5_7MiniArcINtNtB7_10entry_info9EntryInfoNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common5deque7DeqNodeINtNtBL_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common5deque7DeqNodeINtNtBL_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 24, i64 noundef 8) #31
  ret void

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 24, i64 noundef 8) #31
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCseo6ZV82fEK1_3url3UrlEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(88) %.0.val)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i = load i64, ptr %.0.val, align 8, !alias.scope !505 ; 2 uses
  %i.b = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.b, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %.val3.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !514, !nonnull !12, !noundef !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !515
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %.val.i.i.i = load i64, ptr %.0.val, align 8, !alias.scope !505 ; 2 uses
  %i.d = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %.val1.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !514, !nonnull !12, !noundef !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !518
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.e, %bb.d
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 88, i64 noundef 8) #31
  ret void

bb.f:                                             ; preds = %bb.c, %bb.b
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 88, i64 noundef 8) #31
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtBL_4sync3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware10middleware10MiddlewareEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.0.val, i64 %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = icmp eq i64 %.8.val, 0
  br i1 %i.a, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxSINtNtB7_4sync3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware10middleware10MiddlewareEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware10middleware10MiddlewareEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %.sroa.0.09.i = phi i64 [ %i.c, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware10middleware10MiddlewareEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %.0.val, i64 %.sroa.0.09.i ; 2 uses
  %i.c = add nuw i64 %.sroa.0.09.i, 1             ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !521)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !524)
  %i.d = load ptr, ptr %i.b, align 8, !alias.scope !527, !nonnull !12, !noundef !12
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !530
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware10middleware10MiddlewareEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware10middleware10MiddlewareEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #36
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware10middleware10MiddlewareEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware10middleware10MiddlewareEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.g = icmp eq i64 %i.c, %.8.val
  br i1 %i.g, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = icmp eq i64 %i.c, %.8.val
  br i1 %i.i, label %.loopexit, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.c, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware10middleware10MiddlewareEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.k, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware10middleware10MiddlewareEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit8.i ], [ %i.c, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %.0.val, i64 %.sroa.0.110.i ; 2 uses
  %i.k = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !531)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !534)
  %i.l = load ptr, ptr %i.j, align 8, !alias.scope !537, !nonnull !12, !noundef !12
  %i.m = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !538
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware10middleware10MiddlewareEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit8.i

bb.d:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware10middleware10MiddlewareEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #36
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware10middleware10MiddlewareEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit8.i unwind label %bb.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware10middleware10MiddlewareEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit8.i: ; preds = %bb.d, %.lr.ph12.i
  %i.o = icmp eq i64 %i.k, %.8.val
  br i1 %i.o, label %.loopexit, label %.lr.ph12.i

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware10middleware10MiddlewareEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.q = shl nuw nsw i64 %.8.val, 4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.q, i64 noundef 8) #31
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxSINtNtB7_4sync3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware10middleware10MiddlewareEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxSINtNtB7_4sync3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware10middleware10MiddlewareEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5: ; preds = %bb.a, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4
  ret void

.loopexit:                                        ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware10middleware10MiddlewareEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit8.i, %bb.c
  %i.r = shl nuw nsw i64 %.8.val, 4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.r, i64 noundef 8) #31
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtBL_4sync3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware8req_init18RequestInitialiserEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.0.val, i64 %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = icmp eq i64 %.8.val, 0
  br i1 %i.a, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxSINtNtB7_4sync3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware8req_init18RequestInitialiserEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware8req_init18RequestInitialiserEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %.sroa.0.09.i = phi i64 [ %i.c, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware8req_init18RequestInitialiserEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %.0.val, i64 %.sroa.0.09.i ; 2 uses
  %i.c = add nuw i64 %.sroa.0.09.i, 1             ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !539)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !542)
  %i.d = load ptr, ptr %i.b, align 8, !alias.scope !545, !nonnull !12, !noundef !12
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !548
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware8req_init18RequestInitialiserEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware8req_init18RequestInitialiserEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #36
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware8req_init18RequestInitialiserEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware8req_init18RequestInitialiserEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.g = icmp eq i64 %i.c, %.8.val
  br i1 %i.g, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = icmp eq i64 %i.c, %.8.val
  br i1 %i.i, label %.loopexit, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.c, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware8req_init18RequestInitialiserEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.k, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware8req_init18RequestInitialiserEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit8.i ], [ %i.c, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %.0.val, i64 %.sroa.0.110.i ; 2 uses
  %i.k = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !549)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !552)
  %i.l = load ptr, ptr %i.j, align 8, !alias.scope !555, !nonnull !12, !noundef !12
  %i.m = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !556
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware8req_init18RequestInitialiserEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit8.i

bb.d:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware8req_init18RequestInitialiserEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #36
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware8req_init18RequestInitialiserEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit8.i unwind label %bb.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware8req_init18RequestInitialiserEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit8.i: ; preds = %bb.d, %.lr.ph12.i
  %i.o = icmp eq i64 %i.k, %.8.val
  br i1 %i.o, label %.loopexit, label %.lr.ph12.i

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware8req_init18RequestInitialiserEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.q = shl nuw nsw i64 %.8.val, 4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.q, i64 noundef 8) #31
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxSINtNtB7_4sync3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware8req_init18RequestInitialiserEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxSINtNtB7_4sync3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware8req_init18RequestInitialiserEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5: ; preds = %bb.a, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4
  ret void

.loopexit:                                        ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware8req_init18RequestInitialiserEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit8.i, %bb.c
  %i.r = shl nuw nsw i64 %.8.val, 4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.r, i64 noundef 8) #31
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3eCsZ2Mx498_14http_body_util11combinators7collect7CollectINtNtBL_8box_body7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB3E_4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !557, !alias.scope !558, !noundef !12
  %i.b = icmp eq i64 %i.a, 4
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  invoke void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB4_8VecDequeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !561 ; 2 uses
  %i.e = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.e, label %.body.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val3.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !570, !nonnull !12, !noundef !12
  %i.g = shl nuw i64 %.val2.i.i.i.i, 5
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !571
  br label %.body.i.i

bb.e:                                             ; preds = %bb.b
  %.val.i.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !561 ; 2 uses
  %i.h = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val1.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !570, !nonnull !12, !noundef !12
  %i.j = shl nuw i64 %.val.i.i.i.i, 5
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !574
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i

.body.i.i:                                        ; preds = %bb.d, %bb.c
  %i.k = load i64, ptr %0, align 8, !range !94, !alias.scope !577, !noundef !12
  %i.l = icmp eq i64 %i.k, 3
  br i1 %i.l, label %.body, label %bb.g

bb.g:                                             ; preds = %.body.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(128) %0)
          to label %.body unwind label %bb.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.f, %bb.e
  %i.m = load i64, ptr %0, align 8, !range !94, !alias.scope !580, !noundef !12
  %i.n = icmp eq i64 %i.m, 3
  br i1 %i.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.h

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(128) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i.i, %bb.g, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.p, %bb.j ], [ %i.d, %bb.g ], [ %i.d, %.body.i.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val2 = load ptr, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.val3 = load ptr, ptr %i.r, align 8, !nonnull !12, !align !336, !noundef !12
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3eCsZ2Mx498_14http_body_util11combinators8box_body7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB3g_4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val2, ptr nonnull %.val3) #34
          to label %common.resume unwind label %bb.n

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %bb.a, %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val = load ptr, ptr %i.s, align 8             ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.val1 = load ptr, ptr %i.t, align 8, !nonnull !12, !align !336, !noundef !12 ; 5 uses
  %i.u = load ptr, ptr %.val1, align 8, !invariant.load !12 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.u(ptr noundef nonnull %.val)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.v = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !41, !invariant.load !12 ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3eCsZ2Mx498_14http_body_util11combinators8box_body7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB3g_4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.y = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.z = load i64, ptr %i.y, align 8, !range !42, !invariant.load !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) %i.z) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3eCsZ2Mx498_14http_body_util11combinators8box_body7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB3g_4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.m:                                             ; preds = %bb.k
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !41, !invariant.load !12 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %common.resume, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !range !42, !invariant.load !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.ac, i64 noundef range(i64 1, -9223372036854775807) %i.af) #31
  br label %common.resume

common.resume:                                    ; preds = %.body, %bb.m, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.aa, %bb.m ], [ %i.aa, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3eCsZ2Mx498_14http_body_util11combinators8box_body7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB3g_4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.l, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i
  ret void

bb.n:                                             ; preds = %.body
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3eCsZ2Mx498_14http_body_util11combinators8box_body7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB3g_4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !12 ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !41, !invariant.load !12 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtCs574AjYkQ1m0_9http_body4Bodyp4DataNtNtCs9Ct3XQYJhun_5bytes5bytes5Bytesp5ErrorIBX_DNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB3e_4SendEL_EB3c_B3v_EL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !42, !invariant.load !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.f) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtCs574AjYkQ1m0_9http_body4Bodyp4DataNtNtCs9Ct3XQYJhun_5bytes5bytes5Bytesp5ErrorIBX_DNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB3e_4SendEL_EB3c_B3v_EL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !41, !invariant.load !12 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtCs574AjYkQ1m0_9http_body4Bodyp4DataNtNtCs9Ct3XQYJhun_5bytes5bytes5Bytesp5ErrorIBy_DNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtB29_6marker4SyncNtB2G_4SendEL_EB2E_B2Y_EL_ENtNtNtB29_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !42, !invariant.load !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) %i.l) #31
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtCs574AjYkQ1m0_9http_body4Bodyp4DataNtNtCs9Ct3XQYJhun_5bytes5bytes5Bytesp5ErrorIBy_DNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtB29_6marker4SyncNtB2G_4SendEL_EB2E_B2Y_EL_ENtNtNtB29_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtCs574AjYkQ1m0_9http_body4Bodyp4DataNtNtCs9Ct3XQYJhun_5bytes5bytes5Bytesp5ErrorIBy_DNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtB29_6marker4SyncNtB2G_4SendEL_EB2E_B2Y_EL_ENtNtNtB29_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.d
  resume { ptr, i32 } %i.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtCs574AjYkQ1m0_9http_body4Bodyp4DataNtNtCs9Ct3XQYJhun_5bytes5bytes5Bytesp5ErrorIBX_DNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB3e_4SendEL_EB3c_B3v_EL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.c, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtCs6Po7BT7Nknu_5alloc6string6StringEEBN_(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i = load i64, ptr %0, align 8, !alias.scope !583 ; 2 uses
  %i.b = icmp eq i64 %.val2.i.i, 0
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i = load ptr, ptr %i.c, align 8, !alias.scope !590, !nonnull !12, !noundef !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !591
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i

bb.d:                                             ; preds = %bb.a
  %.val.i.i = load i64, ptr %0, align 8, !alias.scope !583 ; 2 uses
  %i.d = icmp eq i64 %.val.i.i, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load ptr, ptr %i.e, align 8, !alias.scope !590, !nonnull !12, !noundef !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !594
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBM_8Response4jsonNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseE0EB1U_(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.b = load i8, ptr %i.a, align 8, !range !29, !noundef !12
  switch i8 %i.b, label %common.ret [
    i8 0, label %bb.b
    i8 3, label %bb.c
  ]

common.ret:                                       ; preds = %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl8response8ResponseECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(136) %0)
  br label %common.ret

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response5bytes0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.c)
  br label %common.ret
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBM_8Response4jsonNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models28TableTempCredentialsResponseE0EB1U_(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.b = load i8, ptr %i.a, align 8, !range !29, !noundef !12
  switch i8 %i.b, label %common.ret [
    i8 0, label %bb.b
    i8 3, label %bb.c
  ]

common.ret:                                       ; preds = %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl8response8ResponseECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(136) %0)
  br label %common.ret

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response5bytes0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.c)
  br label %common.ret
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBP_12UnityCatalog42get_temp_table_credentials_with_permissionReB2t_B2t_B2t_E0EBP_(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 391
  %i.b = load i8, ptr %i.a, align 1, !range !597, !noundef !12
  switch i8 %i.b, label %common.ret [
    i8 6, label %bb.q
    i8 3, label %bb.b
    i8 4, label %bb.d
    i8 5, label %bb.p
  ]

common.ret:                                       ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBO_12UnityCatalog14get_credential0EBO_.exit
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.d = load i8, ptr %i.c, align 8, !range !29, !noundef !12
  %cond.i = icmp eq i8 %i.d, 3
  br i1 %cond.i, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBO_12UnityCatalog14get_credential0EBO_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 448
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5tokenINtBO_10TokenCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringE18get_or_insert_withNCNCNvMs5_BS_NtBS_12UnityCatalog14get_credential00INtNtB4_3pin3PinINtNtB24_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtBO_14TemporaryTokenB20_ENtBS_17UnityCatalogErrorENtNtB4_6marker4SendEL_EEB5K_E0EBS_(ptr noundef nonnull align 8 %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBO_12UnityCatalog14get_credential0EBO_.exit unwind label %bb.t

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 506
  %i.g = load i8, ptr %i.f, align 2, !range !598, !noundef !12
  switch i8 %i.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBP_12UnityCatalog9get_tableReB1V_B1V_E0EBP_.exit [
    i8 5, label %bb.h
    i8 3, label %bb.e
    i8 4, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.i = load i8, ptr %i.h, align 8, !range !29, !noundef !12
  %cond.i.i = icmp eq i8 %i.i, 3
  br i1 %cond.i.i, label %bb.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBO_12UnityCatalog14get_credential0EBO_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 520
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5tokenINtBO_10TokenCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringE18get_or_insert_withNCNCNvMs5_BS_NtBS_12UnityCatalog14get_credential00INtNtB4_3pin3PinINtNtB24_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtBO_14TemporaryTokenB20_ENtBS_17UnityCatalogErrorENtNtB4_6marker4SendEL_EEB5K_E0EBS_(ptr noundef nonnull align 8 %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBO_12UnityCatalog14get_credential0EBO_.exit.i unwind label %bb.k

bb.g:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 512
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs2_NtCsjkRrtHEnRPD_18reqwest_middleware6clientNtBO_14RequestBuilder4send0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBM_8Response4jsonNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseE0EB1U_.exit.i unwind label %bb.m

bb.h:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.m = load i8, ptr %i.l, align 8, !range !29, !noundef !12
  switch i8 %i.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBM_8Response4jsonNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseE0EB1U_.exit.i [
    i8 0, label %bb.i
    i8 3, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 512
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl8response8ResponseECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBM_8Response4jsonNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseE0EB1U_.exit.i unwind label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 648
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response5bytes0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBM_8Response4jsonNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseE0EB1U_.exit.i unwind label %bb.o

bb.k:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBO_12UnityCatalog14get_credential0EBO_.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBM_8Response4jsonNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseE0EB1U_.exit.i, %bb.f, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 505
  store i8 0, ptr %i.q, align 1
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBP_12UnityCatalog9get_tableReB1V_B1V_E0EBP_.exit

bb.l:                                             ; preds = %bb.n, %bb.k
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.n ], [ %i.p, %bb.k ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 505
  store i8 0, ptr %i.r, align 1
  br label %.body

bb.m:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBM_8Response4jsonNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseE0EB1U_.exit.i: ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 504
  store i8 0, ptr %i.t, align 8
end_hunk_2
begin_hunk_3_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBP_12UnityCatalog42get_temp_table_credentials_with_permissionReB2t_B2t_B2t_E0EBP_:bb.a
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit13

bb.af:                                            ; preds = %.body
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.experimental.noalias.scope.decl(metadata !611)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !614)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !617)
  %i.bk = load ptr, ptr %i.bj, align 8, !alias.scope !620, !nonnull !12, !align !336, !noundef !12
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !noalias !620, !nonnull !12, !noundef !12
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !620, !noundef !12
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !620, !noundef !12
  invoke void %i.bm(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bn, ptr noundef %i.bp, i64 noundef %i.br)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit13 unwind label %bb.aa, !inline_history !610
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBP_12UnityCatalog9get_tableReB1V_B1V_E0EBP_(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 114
  %i.b = load i8, ptr %i.a, align 2, !range !598, !noundef !12
  switch i8 %i.b, label %common.ret [
    i8 5, label %bb.e
    i8 3, label %bb.b
    i8 4, label %bb.d
  ]

common.ret:                                       ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBO_12UnityCatalog14get_credential0EBO_.exit
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.d = load i8, ptr %i.c, align 8, !range !29, !noundef !12
  %cond.i = icmp eq i8 %i.d, 3
  br i1 %cond.i, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBO_12UnityCatalog14get_credential0EBO_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5tokenINtBO_10TokenCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringE18get_or_insert_withNCNCNvMs5_BS_NtBS_12UnityCatalog14get_credential00INtNtB4_3pin3PinINtNtB24_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtBO_14TemporaryTokenB20_ENtBS_17UnityCatalogErrorENtNtB4_6marker4SendEL_EEB5K_E0EBS_(ptr noundef nonnull align 8 %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBO_12UnityCatalog14get_credential0EBO_.exit unwind label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs2_NtCsjkRrtHEnRPD_18reqwest_middleware6clientNtBO_14RequestBuilder4send0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBM_8Response4jsonNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseE0EB1U_.exit unwind label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.h = load i8, ptr %i.g, align 8, !range !29, !noundef !12
  switch i8 %i.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBM_8Response4jsonNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseE0EB1U_.exit [
    i8 0, label %bb.f
    i8 3, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl8response8ResponseECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBM_8Response4jsonNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseE0EB1U_.exit unwind label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 256
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response5bytes0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBM_8Response4jsonNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseE0EB1U_.exit unwind label %bb.l

bb.h:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBO_12UnityCatalog14get_credential0EBO_.exit: ; preds = %bb.b, %bb.c, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBM_8Response4jsonNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseE0EB1U_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 113
  store i8 0, ptr %i.l, align 1
  br label %common.ret

bb.i:                                             ; preds = %bb.k, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.k ], [ %i.k, %bb.h ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 113
  store i8 0, ptr %i.m, align 1
  resume { ptr, i32 } %.pn.pn

bb.j:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBM_8Response4jsonNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseE0EB1U_.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 0, ptr %i.o, align 8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBO_12UnityCatalog14get_credential0EBO_.exit

bb.k:                                             ; preds = %bb.l, %bb.j
  %.pn = phi { ptr, i32 } [ %i.q, %bb.l ], [ %i.n, %bb.j ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 0, ptr %i.p, align 8
  br label %bb.i

bb.l:                                             ; preds = %bb.g, %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5tokenINtBO_10TokenCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringE18get_or_insert_withNCNCNvMs5_BS_NtBS_12UnityCatalog14get_credential00INtNtB4_3pin3PinINtNtB24_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtBO_14TemporaryTokenB20_ENtBS_17UnityCatalogErrorENtNtB4_6marker4SendEL_EEB5K_E0EBS_(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.b = load i8, ptr %i.a, align 1, !range !621, !noundef !12
  switch i8 %i.b, label %common.ret [
    i8 4, label %bb.k
    i8 3, label %bb.b
  ]

common.ret:                                       ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs8_NtNtCskQDtHcQtBkN_5tokio4sync5mutexINtBO_5MutexINtNtB4_6option6OptionINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE4lock0EB22_.exit
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load i8, ptr %i.c, align 8, !range !29, !noundef !12
  %cond.i = icmp eq i8 %i.d, 3
  br i1 %cond.i, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs8_NtNtCskQDtHcQtBkN_5tokio4sync5mutexINtBO_5MutexINtNtB4_6option6OptionINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE4lock0EB22_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.f = load i8, ptr %i.e, align 8, !range !29, !noundef !12
  %cond.i.i = icmp eq i8 %i.f, 3
  br i1 %cond.i.i, label %bb.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs8_NtNtCskQDtHcQtBkN_5tokio4sync5mutexINtBO_5MutexINtNtB4_6option6OptionINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE4lock0EB22_.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load i8, ptr %i.g, align 8, !range !621, !noundef !12
  %cond.i.i.i = icmp eq i8 %i.h, 4
  br i1 %cond.i.i.i, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs8_NtNtCskQDtHcQtBkN_5tokio4sync5mutexINtBO_5MutexINtNtB4_6option6OptionINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE4lock0EB22_.exit

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke void @_RNvXs3_NtNtCskQDtHcQtBkN_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.i)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.val2.i.i.i.i = load ptr, ptr %i.k, align 8, !align !336, !noundef !12 ; 2 uses
  %i.l = icmp eq ptr %.val2.i.i.i.i, null
  br i1 %i.l, label %.body, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr i8, ptr %0, i64 144
  %.val3.i.i.i.i = load ptr, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !12, !noundef !12
  invoke void %i.o(ptr noundef %.val3.i.i.i.i)
          to label %.body unwind label %bb.j, !inline_history !622

bb.h:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.val.i.i.i.i = load ptr, ptr %i.p, align 8, !align !336, !noundef !12 ; 2 uses
  %i.q = icmp eq ptr %.val.i.i.i.i, null
  br i1 %i.q, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs8_NtNtCskQDtHcQtBkN_5tokio4sync5mutexINtBO_5MutexINtNtB4_6option6OptionINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE4lock0EB22_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr i8, ptr %0, i64 144
  %.val1.i.i.i.i = load ptr, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !12, !noundef !12
  invoke void %i.t(ptr noundef %.val1.i.i.i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs8_NtNtCskQDtHcQtBkN_5tokio4sync5mutexINtBO_5MutexINtNtB4_6option6OptionINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE4lock0EB22_.exit unwind label %bb.o, !inline_history !623

bb.j:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.k:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val = load ptr, ptr %i.v, align 8             ; 5 uses
  %i.w = getelementptr i8, ptr %0, i64 72
  %.val3 = load ptr, ptr %i.w, align 8, !nonnull !12, !align !336, !noundef !12 ; 5 uses
  %i.x = load ptr, ptr %.val3, align 8, !invariant.load !12 ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.x(ptr noundef nonnull %.val)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %.val3, i64 8
  %i.z = load i64, ptr %i.y, align 8, !range !41, !invariant.load !12 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtB11_6string6StringENtB2B_17UnityCatalogErrorENtNtB4_6marker4SendEL_EEEB2B_.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !42, !invariant.load !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.z, i64 noundef range(i64 1, -9223372036854775807) %i.ac) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtB11_6string6StringENtB2B_17UnityCatalogErrorENtNtB4_6marker4SendEL_EEEB2B_.exit

bb.n:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = getelementptr inbounds nuw i8, ptr %.val3, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !range !41, !invariant.load !12 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %.body4, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.n
  %i.ah = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !range !42, !invariant.load !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) %i.ai) #31
  br label %.body4

bb.o:                                             ; preds = %bb.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body4:                                           ; preds = %bb.n, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RNvXsd_NtNtCskQDtHcQtBkN_5tokio4sync5mutexINtB5_10MutexGuardINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtCs6Po7BT7Nknu_5alloc6string6StringEEENtNtNtB11_3ops4drop4Drop4dropB1F_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ak)
          to label %.body unwind label %bb.q

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtB11_6string6StringENtB2B_17UnityCatalogErrorENtNtB4_6marker4SendEL_EEEB2B_.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RNvXsd_NtNtCskQDtHcQtBkN_5tokio4sync5mutexINtB5_10MutexGuardINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtCs6Po7BT7Nknu_5alloc6string6StringEEENtNtNtB11_3ops4drop4Drop4dropB1F_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs8_NtNtCskQDtHcQtBkN_5tokio4sync5mutexINtBO_5MutexINtNtB4_6option6OptionINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE4lock0EB22_.exit unwind label %bb.p

bb.p:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtB11_6string6StringENtB2B_17UnityCatalogErrorENtNtB4_6marker4SendEL_EEEB2B_.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs8_NtNtCskQDtHcQtBkN_5tokio4sync5mutexINtBO_5MutexINtNtB4_6option6OptionINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE4lock0EB22_.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtB11_6string6StringENtB2B_17UnityCatalogErrorENtNtB4_6marker4SendEL_EEEB2B_.exit, %bb.h, %bb.d, %bb.c, %bb.b, %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %i.an, align 8
  br label %common.ret

bb.q:                                             ; preds = %.body4
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

.body:                                            ; preds = %.body4, %bb.o, %bb.g, %bb.f, %bb.p
  %.pn = phi { ptr, i32 } [ %i.am, %bb.p ], [ %i.j, %bb.f ], [ %i.aj, %bb.o ], [ %i.j, %bb.g ], [ %i.ad, %.body4 ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %i.ap, align 8
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtBL_8snapshotNtB1V_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3J_5error5ErrorEEs_0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !624)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !627)
  %i.a = load i64, ptr %0, align 8, !range !39, !alias.scope !630, !noundef !12
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !631)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !634)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !637, !nonnull !12, !noundef !12
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !637
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10SubscriberNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #36
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(40) %i.h) #34
          to label %bb.e unwind label %bb.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.b, %bb.a, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(40) %i.i)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.f, %bb.d
  %.pn = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.g, %bb.d ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_8Snapshot19try_new_with_engine00ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(120) %i.j) #34
          to label %bb.i unwind label %bb.h

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_8Snapshot19try_new_with_engine00ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(120) %i.l)
  ret void

bb.h:                                             ; preds = %bb.e, %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.i:                                             ; preds = %bb.e
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle15spawn_uncheckedNCNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB1Q_19UnityCatalogBuilder17execute_uc_futureNCNvB1M_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtBP_11collections4hash3map7HashMapB4a_B4a_EENtB1Q_17UnityCatalogErrorEEs_00uEs_0EB1Q_(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtBO_19UnityCatalogBuilder25get_uc_location_and_token0EBO_(ptr noundef nonnull align 8 %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle15spawn_unchecked13MaybeDanglingNCNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB25_19UnityCatalogBuilder17execute_uc_futureNCNvB21_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtBP_11collections4hash3map7HashMapB4p_B4p_EENtB25_17UnityCatalogErrorEEs_00EEB25_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread9spawnhook15ChildSpawnHooksECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(32) %0) #34
          to label %bb.c unwind label %bb.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle15spawn_unchecked13MaybeDanglingNCNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB25_19UnityCatalogBuilder17execute_uc_futureNCNvB21_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtBP_11collections4hash3map7HashMapB4p_B4p_EENtB25_17UnityCatalogErrorEEs_00EEB25_.exit: ; preds = %bb.a
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread9spawnhook15ChildSpawnHooksECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(32) %0)
          to label %bb.f unwind label %bb.e

bb.c:                                             ; preds = %bb.e, %bb.b
  %.pn = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.b, %bb.b ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !641)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !644, !nonnull !12, !noundef !12
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !644
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle6PacketuEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle6PacketuEE9drop_slowCskQDtHcQtBkN_5tokio(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #36
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle6PacketuEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.h

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle15spawn_unchecked13MaybeDanglingNCNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB25_19UnityCatalogBuilder17execute_uc_futureNCNvB21_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtBP_11collections4hash3map7HashMapB4p_B4p_EENtB25_17UnityCatalogErrorEEs_00EEB25_.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle15spawn_unchecked13MaybeDanglingNCNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB25_19UnityCatalogBuilder17execute_uc_futureNCNvB21_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtBP_11collections4hash3map7HashMapB4p_B4p_EENtB25_17UnityCatalogErrorEEs_00EEB25_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !645)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !648)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !651, !nonnull !12, !noundef !12
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !651
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle6PacketuEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit2

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle6PacketuEE9drop_slowCskQDtHcQtBkN_5tokio(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h) #36
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle6PacketuEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit2

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle6PacketuEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit2: ; preds = %bb.f, %bb.g
  ret void

bb.h:                                             ; preds = %bb.d, %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle6PacketuEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_8Snapshot19try_new_with_engine00ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !652 ; 2 uses
  %i.c = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.c, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val3.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !661, !nonnull !12, !noundef !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !662
  br label %.body

end_hunk_3
begin_hunk_4_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_8Snapshot19try_new_with_engine00ECsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %.body, %bb.f
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMs8_NtNtCskQDtHcQtBkN_5tokio4sync5mutexINtBQ_5MutexINtNtB4_6option6OptionINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE4lock00EB24_(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i8, ptr %i.a, align 8, !range !29, !noundef !12
  %cond = icmp eq i8 %i.b, 3
  br i1 %cond, label %bb.b, label %common.ret

common.ret:                                       ; preds = %bb.g, %bb.f, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !621, !noundef !12
  %cond.i = icmp eq i8 %i.d, 4
  br i1 %cond.i, label %bb.c, label %common.ret

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RNvXs3_NtNtCskQDtHcQtBkN_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.e)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val2.i.i = load ptr, ptr %i.g, align 8, !align !336, !noundef !12 ; 2 uses
  %i.h = icmp eq ptr %.val2.i.i, null
  br i1 %i.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4sync15batch_semaphore6WaiterECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 48
  %.val3.i.i = load ptr, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !12, !noundef !12
  invoke void %i.k(ptr noundef %.val3.i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4sync15batch_semaphore6WaiterECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.h, !inline_history !622

bb.f:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val.i.i = load ptr, ptr %i.l, align 8, !align !336, !noundef !12 ; 2 uses
  %i.m = icmp eq ptr %.val.i.i, null
  br i1 %i.m, label %common.ret, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr i8, ptr %0, i64 48
  %.val1.i.i = load ptr, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !12, !noundef !12
  tail call void %i.p(ptr noundef %.val1.i.i), !inline_history !682
  br label %common.ret

bb.h:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4sync15batch_semaphore6WaiterECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response5bytes0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.b = load i8, ptr %i.a, align 8, !range !29, !noundef !12
  switch i8 %i.b, label %common.ret [
    i8 0, label %bb.b
    i8 3, label %bb.c
  ]

common.ret:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCseo6ZV82fEK1_3url3UrlEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl8response8ResponseECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(136) %0)
  br label %common.ret

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3eCsZ2Mx498_14http_body_util11combinators7collect7CollectINtNtBL_8box_body7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB3E_4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(144) %i.c)
          to label %bb.e unwind label %bb.d

common.resume:                                    ; preds = %bb.d, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.j ], [ %i.d, %bb.d ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264
  %.val2 = load ptr, ptr %i.e, align 8, !nonnull !12, !noundef !12
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCseo6ZV82fEK1_3url3UrlEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val2) #34
          to label %common.resume unwind label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 264
  %.val = load ptr, ptr %i.f, align 8, !nonnull !12, !noundef !12 ; 7 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(88) %.val)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i = load i64, ptr %.val, align 8, !alias.scope !683 ; 2 uses
  %i.h = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.h, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.val3.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !692, !nonnull !12, !noundef !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val2.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !693
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  %.val.i.i.i.i = load i64, ptr %.val, align 8, !alias.scope !683 ; 2 uses
  %i.j = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCseo6ZV82fEK1_3url3UrlEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !692, !nonnull !12, !noundef !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !696
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCseo6ZV82fEK1_3url3UrlEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.j:                                             ; preds = %bb.g, %bb.f
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 88, i64 noundef 8) #31
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCseo6ZV82fEK1_3url3UrlEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.h, %bb.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 88, i64 noundef 8) #31
  br label %common.ret

bb.k:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs2_NtCsjkRrtHEnRPD_18reqwest_middleware6clientNtBO_14RequestBuilder4send0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.b = load i8, ptr %i.a, align 8, !range !29, !noundef !12
  switch i8 %i.b, label %common.ret [
    i8 0, label %bb.b
    i8 3, label %bb.c
  ]

common.ret:                                       ; preds = %bb.b, %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http10extensions10ExtensionsECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  ret void

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjkRrtHEnRPD_18reqwest_middleware6client14RequestBuilderECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(312) %0)
  br label %common.ret

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.d = load i8, ptr %i.c, align 8, !range !29, !noundef !12
  switch i8 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtCsjkRrtHEnRPD_18reqwest_middleware6clientNtBN_20ClientWithMiddleware23execute_with_extensions0ECsgO8S5jLFugx_23deltalake_catalog_unity.exit [
    i8 0, label %bb.d
    i8 3, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 936
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl7request7RequestECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(264) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtCsjkRrtHEnRPD_18reqwest_middleware6clientNtBN_20ClientWithMiddleware23execute_with_extensions0ECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %.val.i = load ptr, ptr %i.f, align 8           ; 5 uses
  %i.g = getelementptr i8, ptr %0, i64 1224
  %.val2.i = load ptr, ptr %i.g, align 8, !nonnull !12, !align !336, !noundef !12 ; 5 uses
  %i.h = load ptr, ptr %.val2.i, align 8, !invariant.load !12 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.h(ptr noundef nonnull %.val.i)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !41, !invariant.load !12 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCsgO6CtM78C4N_7reqwest10async_impl8response8ResponseNtNtCsjkRrtHEnRPD_18reqwest_middleware5error5ErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.l = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !42, !invariant.load !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) %i.m) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCsgO6CtM78C4N_7reqwest10async_impl8response8ResponseNtNtCsjkRrtHEnRPD_18reqwest_middleware5error5ErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

bb.h:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !41, !invariant.load !12 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %.body.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !42, !invariant.load !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) %i.s) #31
  br label %.body.i

.body.i:                                          ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1233
  store i8 0, ptr %i.t, align 1
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCsgO6CtM78C4N_7reqwest10async_impl8response8ResponseNtNtCsjkRrtHEnRPD_18reqwest_middleware5error5ErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1233
  store i8 0, ptr %i.u, align 1
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtCsjkRrtHEnRPD_18reqwest_middleware6clientNtBN_20ClientWithMiddleware23execute_with_extensions0ECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.i:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.v, %bb.i ], [ %i.n, %.body.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 632
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjkRrtHEnRPD_18reqwest_middleware6client20ClientWithMiddlewareECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(40) %i.w) #34
          to label %bb.j unwind label %bb.o

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtCsjkRrtHEnRPD_18reqwest_middleware6clientNtBN_20ClientWithMiddleware23execute_with_extensions0ECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCsgO6CtM78C4N_7reqwest10async_impl8response8ResponseNtNtCsjkRrtHEnRPD_18reqwest_middleware5error5ErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %bb.c, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 632
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjkRrtHEnRPD_18reqwest_middleware6client20ClientWithMiddlewareECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(40) %i.x)
          to label %bb.l unwind label %bb.k

bb.j:                                             ; preds = %bb.k, %.body
  %.pn = phi { ptr, i32 } [ %i.z, %bb.k ], [ %eh.lpad-body, %.body ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 624
  %.val8 = load ptr, ptr %i.y, align 8, !align !336, !noundef !12
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http10extensions10ExtensionsECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val8) #34
          to label %.body9 unwind label %bb.o

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtCsjkRrtHEnRPD_18reqwest_middleware6clientNtBN_20ClientWithMiddleware23execute_with_extensions0ECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtCsjkRrtHEnRPD_18reqwest_middleware6clientNtBN_20ClientWithMiddleware23execute_with_extensions0ECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 624
  %.val = load ptr, ptr %i.aa, align 8, !align !336, !noundef !12 ; 4 uses
  %i.ab = icmp eq ptr %.val, null
  br i1 %i.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http10extensions10ExtensionsECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtBT_6marker4SyncNtB2H_4SendEL_EEENtNtNtBT_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBH_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3h_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtB2z_8IdHasherEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 32, i64 noundef 8) #31
  br label %.body9

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBH_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3h_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtB2z_8IdHasherEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.m
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 32, i64 noundef 8) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http10extensions10ExtensionsECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http10extensions10ExtensionsECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBH_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3h_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtB2z_8IdHasherEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1241
  store i8 0, ptr %i.ad, align 1
  br label %common.ret

bb.o:                                             ; preds = %bb.j, %.body
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

.body9:                                           ; preds = %bb.n, %bb.j
  %.pn4 = phi { ptr, i32 } [ %.pn, %bb.j ], [ %i.ac, %bb.n ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1241
  store i8 0, ptr %i.af, align 1
  resume { ptr, i32 } %.pn4
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtBO_19UnityCatalogBuilder25get_uc_location_and_token0EBO_(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 283
  %i.b = load i8, ptr %i.a, align 1, !range !598, !noundef !12
  switch i8 %i.b, label %common.ret [
    i8 5, label %bb.g
    i8 3, label %bb.b
    i8 4, label %bb.f
  ]

common.ret:                                       ; preds = %bb.x, %bb.w, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 288
  %.val = load ptr, ptr %i.c, align 8             ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 296
  %.val14 = load ptr, ptr %i.d, align 8, !nonnull !12, !align !336, !noundef !12 ; 5 uses
  %i.e = load ptr, ptr %.val14, align 8, !invariant.load !12 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.e(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val14, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !41, !invariant.load !12 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtB11_6string6StringNtCsgO8S5jLFugx_23deltalake_catalog_unity17UnityCatalogErrorENtNtB4_6marker4SendEL_EEEB2S_.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.i = getelementptr inbounds nuw i8, ptr %.val14, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !42, !invariant.load !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) %i.j) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtB11_6string6StringNtCsgO8S5jLFugx_23deltalake_catalog_unity17UnityCatalogErrorENtNtB4_6marker4SendEL_EEEB2S_.exit

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val14, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !41, !invariant.load !12 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.body, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %.val14, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !42, !invariant.load !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) %i.p) #31
  br label %.body

bb.f:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 288
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBP_12UnityCatalog42get_temp_table_credentials_with_permissionReB2t_B2t_B2t_E0EBP_(ptr noundef nonnull align 8 %i.q)
          to label %bb.j unwind label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2352
  %i.s = load i8, ptr %i.r, align 8, !range !29, !noundef !12
  %cond.i = icmp eq i8 %i.s, 3
  br i1 %cond.i, label %bb.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBP_12UnityCatalog26get_temp_table_credentialsReB2d_B2d_E0EBP_.exit

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 416
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBP_12UnityCatalog42get_temp_table_credentials_with_permissionReB2t_B2t_B2t_E0EBP_(ptr noundef nonnull align 8 %i.t)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBP_12UnityCatalog26get_temp_table_credentialsReB2d_B2d_E0EBP_.exit unwind label %bb.p

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtB11_6string6StringNtCsgO8S5jLFugx_23deltalake_catalog_unity17UnityCatalogErrorENtNtB4_6marker4SendEL_EEEB2S_.exit: ; preds = %bb.n, %bb.m, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 282
  store i8 0, ptr %i.u, align 2
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsgO8S5jLFugx_23deltalake_catalog_unity12UnityCatalogEBI_(ptr noalias noundef align 8 dereferenceable(160) %0)
          to label %bb.t unwind label %bb.s

.body:                                            ; preds = %bb.l, %bb.k, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.e, %bb.o
  %.pn8 = phi { ptr, i32 } [ %i.k, %bb.e ], [ %.pn, %bb.o ], [ %i.aa, %bb.k ], [ %i.k, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i ], [ %i.aa, %bb.l ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 282
  store i8 0, ptr %i.v, align 2
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsgO8S5jLFugx_23deltalake_catalog_unity12UnityCatalogEBI_(ptr noalias noundef align 8 dereferenceable(160) %0) #34
          to label %bb.r unwind label %bb.y

bb.i:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBP_12UnityCatalog26get_temp_table_credentialsReB2d_B2d_E0EBP_.exit, %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i8 0, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 281
  store i8 0, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.z, align 8, !alias.scope !699 ; 2 uses
  %i.ab = icmp eq i64 %.val2.i.i, 0
  br i1 %i.ab, label %.body, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 264
  %.val3.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !706, !nonnull !12, !noundef !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !707
  br label %.body

bb.m:                                             ; preds = %bb.j
  %.val.i.i = load i64, ptr %i.z, align 8, !alias.scope !699 ; 2 uses
  %i.ad = icmp eq i64 %.val.i.i, 0
  br i1 %i.ad, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtB11_6string6StringNtCsgO8S5jLFugx_23deltalake_catalog_unity17UnityCatalogErrorENtNtB4_6marker4SendEL_EEEB2S_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 264
  %.val1.i.i = load ptr, ptr %i.ae, align 8, !alias.scope !706, !nonnull !12, !noundef !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !710
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtB11_6string6StringNtCsgO8S5jLFugx_23deltalake_catalog_unity17UnityCatalogErrorENtNtB4_6marker4SendEL_EEEB2S_.exit

bb.o:                                             ; preds = %bb.p, %bb.q, %bb.i
  %.pn = phi { ptr, i32 } [ %i.al, %bb.q ], [ %i.ai, %bb.p ], [ %i.w, %bb.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i8 0, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 281
  store i8 0, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 256
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.ah) #34
          to label %.body unwind label %bb.y

bb.p:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 288
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models13ErrorResponseEBK_(ptr noalias noundef align 8 dereferenceable(72) %i.aj) #34
          to label %bb.o unwind label %bb.y

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBP_12UnityCatalog26get_temp_table_credentialsReB2d_B2d_E0EBP_.exit: ; preds = %bb.g, %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 288
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models13ErrorResponseEBK_(ptr noalias noundef align 8 dereferenceable(72) %i.ak)
          to label %bb.j unwind label %bb.q

bb.q:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBP_12UnityCatalog26get_temp_table_credentialsReB2d_B2d_E0EBP_.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.r:                                             ; preds = %bb.s, %.body
  %.pn10 = phi { ptr, i32 } [ %i.an, %bb.s ], [ %.pn8, %.body ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 232
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecReEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.am) #34
          to label %common.resume unwind label %bb.y

bb.s:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtB11_6string6StringNtCsgO8S5jLFugx_23deltalake_catalog_unity17UnityCatalogErrorENtNtB4_6marker4SendEL_EEEB2S_.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.t:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtB11_6string6StringNtCsgO8S5jLFugx_23deltalake_catalog_unity17UnityCatalogErrorENtNtB4_6marker4SendEL_EEEB2S_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecReENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %bb.w unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %i.ao, align 8, !alias.scope !713 ; 2 uses
  %i.aq = icmp eq i64 %.val2.i, 0
  br i1 %i.aq, label %common.resume, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.val3.i = load ptr, ptr %i.ar, align 8, !alias.scope !718, !nonnull !12, !noundef !12
  %i.as = shl nuw i64 %.val2.i, 4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.as, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !719
  br label %common.resume

bb.w:                                             ; preds = %bb.t
  %.val.i = load i64, ptr %i.ao, align 8, !alias.scope !713 ; 2 uses
  %i.at = icmp eq i64 %.val.i, 0
  br i1 %i.at, label %common.ret, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.val1.i = load ptr, ptr %i.au, align 8, !alias.scope !718, !nonnull !12, !noundef !12
  %i.av = shl nuw i64 %.val.i, 4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.av, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !722
  br label %common.ret

common.resume:                                    ; preds = %bb.r, %bb.u, %bb.v
  %common.resume.op = phi { ptr, i32 } [ %i.ap, %bb.u ], [ %i.ap, %bb.v ], [ %.pn10, %bb.r ]
  resume { ptr, i32 } %common.resume.op

bb.y:                                             ; preds = %bb.r, %bb.p, %bb.o, %.body
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs8_NtNtCskQDtHcQtBkN_5tokio4sync5mutexINtBO_5MutexINtNtB4_6option6OptionINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE4lock0EB22_(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i8, ptr %i.a, align 8, !range !29, !noundef !12
  %cond = icmp eq i8 %i.b, 3
  br i1 %cond, label %bb.b, label %common.ret

common.ret:                                       ; preds = %bb.h, %bb.g, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load i8, ptr %i.c, align 8, !range !29, !noundef !12
  %cond.i = icmp eq i8 %i.d, 3
  br i1 %cond.i, label %bb.c, label %common.ret

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i8, ptr %i.e, align 8, !range !621, !noundef !12
  %cond.i.i = icmp eq i8 %i.f, 4
  br i1 %cond.i.i, label %bb.d, label %common.ret

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_RNvXs3_NtNtCskQDtHcQtBkN_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.g)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val2.i.i.i = load ptr, ptr %i.i, align 8, !align !336, !noundef !12 ; 2 uses
  %i.j = icmp eq ptr %.val2.i.i.i, null
  br i1 %i.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4sync15batch_semaphore6WaiterECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr i8, ptr %0, i64 56
  %.val3.i.i.i = load ptr, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !12, !noundef !12
  invoke void %i.m(ptr noundef %.val3.i.i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4sync15batch_semaphore6WaiterECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i unwind label %bb.i, !inline_history !622

bb.g:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val.i.i.i = load ptr, ptr %i.n, align 8, !align !336, !noundef !12 ; 2 uses
  %i.o = icmp eq ptr %.val.i.i.i, null
  br i1 %i.o, label %common.ret, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr i8, ptr %0, i64 56
  %.val1.i.i.i = load ptr, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !12, !noundef !12
  tail call void %i.r(ptr noundef %.val1.i.i.i), !inline_history !725
  br label %common.ret

bb.i:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4sync15batch_semaphore6WaiterECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs8_NtNtCskQDtHcQtBkN_5tokio4sync5mutexINtBO_5MutexINtNtB4_6option6OptionINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE7acquire0EB22_(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !621, !noundef !12
  %cond = icmp eq i8 %i.b, 4
  br i1 %cond, label %bb.b, label %common.ret

common.ret:                                       ; preds = %bb.a, %bb.f, %bb.e
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXs3_NtNtCskQDtHcQtBkN_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.c)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val2.i = load ptr, ptr %i.e, align 8, !align !336, !noundef !12 ; 2 uses
  %i.f = icmp eq ptr %.val2.i, null
  br i1 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4sync15batch_semaphore6WaiterECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %0, i64 40
  %.val3.i = load ptr, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !12, !noundef !12
  invoke void %i.i(ptr noundef %.val3.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4sync15batch_semaphore6WaiterECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.g, !inline_history !622

bb.e:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i = load ptr, ptr %i.j, align 8, !align !336, !noundef !12 ; 2 uses
  %i.k = icmp eq ptr %.val.i, null
  br i1 %i.k, label %common.ret, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr i8, ptr %0, i64 40
  %.val1.i = load ptr, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !12, !noundef !12
  tail call void %i.n(ptr noundef %.val1.i), !inline_history !726
  br label %common.ret

bb.g:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4sync15batch_semaphore6WaiterECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtCsjkRrtHEnRPD_18reqwest_middleware6clientNtBN_20ClientWithMiddleware23execute_with_extensions0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = load i8, ptr %i.a, align 8, !range !29, !noundef !12
  switch i8 %i.b, label %common.ret [
    i8 0, label %bb.b
    i8 3, label %bb.c
  ]

common.ret:                                       ; preds = %bb.b, %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCsgO6CtM78C4N_7reqwest10async_impl8response8ResponseNtNtCsjkRrtHEnRPD_18reqwest_middleware5error5ErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  ret void

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl7request7RequestECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(264) %0)
  br label %common.ret

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280
  %.val = load ptr, ptr %i.c, align 8             ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 288
  %.val2 = load ptr, ptr %i.d, align 8, !nonnull !12, !align !336, !noundef !12 ; 5 uses
  %i.e = load ptr, ptr %.val2, align 8, !invariant.load !12 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.e(ptr noundef nonnull %.val)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !41, !invariant.load !12 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCsgO6CtM78C4N_7reqwest10async_impl8response8ResponseNtNtCsjkRrtHEnRPD_18reqwest_middleware5error5ErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.i = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !42, !invariant.load !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) %i.j) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCsgO6CtM78C4N_7reqwest10async_impl8response8ResponseNtNtCsjkRrtHEnRPD_18reqwest_middleware5error5ErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !41, !invariant.load !12 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.body, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !42, !invariant.load !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) %i.p) #31
  br label %.body

.body:                                            ; preds = %bb.f, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 297
  store i8 0, ptr %i.q, align 1
  resume { ptr, i32 } %i.k

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCsgO6CtM78C4N_7reqwest10async_impl8response8ResponseNtNtCsjkRrtHEnRPD_18reqwest_middleware5error5ErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 297
  store i8 0, ptr %i.r, align 1
  br label %common.ret
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsgO8S5jLFugx_23deltalake_catalog_unity12UnityCatalogEBI_(ptr noalias noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjkRrtHEnRPD_18reqwest_middleware6client20ClientWithMiddlewareECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(40) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential18CredentialProviderEBK_(ptr noalias noundef align 8 dereferenceable(96) %i.c) #34
          to label %bb.d unwind label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential18CredentialProviderEBK_(ptr noalias noundef align 8 dereferenceable(96) %i.d)
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.b
  %.pn = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.b, %bb.b ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %0) #34
          to label %common.resume unwind label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %0, align 8, !alias.scope !727 ; 2 uses
  %i.g = icmp eq i64 %.val2.i.i, 0
  br i1 %i.g, label %common.resume, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i = load ptr, ptr %i.h, align 8, !alias.scope !734, !nonnull !12, !noundef !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !735
  br label %common.resume

bb.i:                                             ; preds = %bb.f
  %.val.i.i = load i64, ptr %0, align 8, !alias.scope !727 ; 2 uses
  %i.i = icmp eq i64 %.val.i.i, 0
  br i1 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load ptr, ptr %i.j, align 8, !alias.scope !734, !nonnull !12, !noundef !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !738
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit

common.resume:                                    ; preds = %bb.d, %bb.g, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.g ], [ %i.f, %bb.h ], [ %.pn, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.i, %bb.j
  ret void

bb.k:                                             ; preds = %bb.d, %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsgO8S5jLFugx_23deltalake_catalog_unity19UnityCatalogBuilderEBI_(ptr noalias noundef nonnull align 8 dereferenceable(640) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !range !46, !alias.scope !741, !noundef !12
  %i.c = icmp eq i64 %i.b, -9223372036854775808
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !744 ; 2 uses
  %i.e = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.e, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 336
  %.val3.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !751, !nonnull !12, !noundef !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !752
  br label %.body

bb.e:                                             ; preds = %bb.b
  %.val.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !744 ; 2 uses
  %i.g = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 336
  %.val1.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !751, !nonnull !12, !noundef !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !755
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

.body:                                            ; preds = %bb.c, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 352
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.i) #34
          to label %.body23 unwind label %bb.az

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.f, %bb.e, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 4 uses
  %i.k = load i64, ptr %i.j, align 8, !range !46, !alias.scope !758, !noundef !12
  %i.l = icmp eq i64 %i.k, -9223372036854775808
  br i1 %i.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit25, label %bb.g

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i18 = load i64, ptr %i.j, align 8, !alias.scope !761 ; 2 uses
  %i.n = icmp eq i64 %.val2.i.i.i18, 0
  br i1 %i.n, label %.body23, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.val3.i.i.i19 = load ptr, ptr %i.o, align 8, !alias.scope !768, !nonnull !12, !noundef !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i19, i64 noundef %.val2.i.i.i18, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !769
  br label %.body23

bb.j:                                             ; preds = %bb.g
  %.val.i.i.i21 = load i64, ptr %i.j, align 8, !alias.scope !761 ; 2 uses
  %i.p = icmp eq i64 %.val.i.i.i21, 0
  br i1 %i.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit25, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.val1.i.i.i22 = load ptr, ptr %i.q, align 8, !alias.scope !768, !nonnull !12, !noundef !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i22, i64 noundef %.val.i.i.i21, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !772
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit25

.body23:                                          ; preds = %bb.i, %bb.h, %.body
  %.pn = phi { ptr, i32 } [ %i.d, %.body ], [ %i.m, %bb.h ], [ %i.m, %bb.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 376
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.r) #34
          to label %.body31 unwind label %bb.az

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit25: ; preds = %bb.k, %bb.j, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 4 uses
  %i.t = load i64, ptr %i.s, align 8, !range !46, !alias.scope !775, !noundef !12
  %i.u = icmp eq i64 %i.t, -9223372036854775808
  br i1 %i.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit33, label %bb.l

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit25
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.o unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i26 = load i64, ptr %i.s, align 8, !alias.scope !778 ; 2 uses
  %i.w = icmp eq i64 %.val2.i.i.i26, 0
  br i1 %i.w, label %.body31, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 384
  %.val3.i.i.i27 = load ptr, ptr %i.x, align 8, !alias.scope !785, !nonnull !12, !noundef !12
end_hunk_4
begin_hunk_5_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
          to label %.body.i.i unwind label %bb.n

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error4KindECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.c, %bb.b, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 128
  %.val.i.i = load ptr, ptr %i.q, align 8, !alias.scope !1123, !noundef !12 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 136
  %.val2.i.i = load ptr, ptr %i.r, align 8, !alias.scope !1123 ; 6 uses
  %i.s = icmp eq ptr %.val.i.i, null
  br i1 %i.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1X_4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error4KindECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ]
  %i.t = load ptr, ptr %.val2.i.i, align 8, !invariant.load !12 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void %i.t(ptr noundef nonnull %.val.i.i)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !41, !invariant.load !12 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1X_4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !42, !invariant.load !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) %i.y) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1X_4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !range !41, !invariant.load !12 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %.body.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !range !42, !invariant.load !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.ab, i64 noundef range(i64 1, -9223372036854775807) %i.ae) #31
  br label %.body.i.i

.body.i.i:                                        ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, %bb.h, %bb.d
  %.pn.i.i = phi { ptr, i32 } [ %i.n, %bb.d ], [ %i.z, %bb.h ], [ %i.z, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCseo6ZV82fEK1_3url3UrlEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(144) %.val) #34
          to label %bb.o unwind label %bb.n

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1X_4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.g, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error4KindECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %i.af = load i64, ptr %.val, align 8, !range !46, !alias.scope !1146, !noundef !12
  %i.ag = icmp eq i64 %i.af, -9223372036854775808
  br i1 %i.ag, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsgO6CtM78C4N_7reqwest5error5InnerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.i

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1X_4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(144) %.val)
          to label %bb.l unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i.i = load i64, ptr %.val, align 8, !alias.scope !1149 ; 2 uses
  %i.ai = icmp eq i64 %.val2.i.i.i.i.i.i, 0
  br i1 %i.ai, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.val3.i.i.i.i.i.i = load ptr, ptr %i.aj, align 8, !alias.scope !1158, !nonnull !12, !noundef !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !1159
  br label %bb.o

bb.l:                                             ; preds = %bb.i
  %.val.i.i.i.i.i.i = load i64, ptr %.val, align 8, !alias.scope !1149 ; 2 uses
  %i.ak = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.ak, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsgO6CtM78C4N_7reqwest5error5InnerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.al, align 8, !alias.scope !1158, !nonnull !12, !noundef !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !1162
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsgO6CtM78C4N_7reqwest5error5InnerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.n:                                             ; preds = %.body.i.i, %bb.d
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.o:                                             ; preds = %bb.k, %bb.j, %.body.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %.pn.i.i, %.body.i.i ], [ %i.ah, %bb.j ], [ %i.ah, %bb.k ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 144, i64 noundef 8) #31
  resume { ptr, i32 } %eh.lpad-body.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsgO6CtM78C4N_7reqwest5error5InnerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1X_4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %bb.l, %bb.m
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 144, i64 noundef 8) #31
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5retry7BuilderECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1165)
  %i.a = load i64, ptr %0, align 8, !range !77, !alias.scope !1165, !noundef !12
  %switch.i = icmp samesign ult i64 %i.a, 2
  br i1 %switch.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest5retry8classify10ClassifierECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1168)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1171)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1174, !nonnull !12, !noundef !12
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !1174
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest5retry8classify10ClassifierECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsgO6CtM78C4N_7reqwest5retry8classify8ClassifyEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #36
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest5retry8classify10ClassifierECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1175)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !1175, !noundef !12 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest5retry5scope6ScopedECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !1178
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest5retry5scope6ScopedECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsgO6CtM78C4N_7reqwest5retry5scope5ScopeEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g) #36
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest5retry5scope6ScopedECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest5retry8classify10ClassifierECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.b, %bb.a, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1183)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !1183, !noundef !12 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest5retry5scope6ScopedECsgO8S5jLFugx_23deltalake_catalog_unity.exit2, label %bb.g

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest5retry8classify10ClassifierECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.o = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !1186
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest5retry5scope6ScopedECsgO8S5jLFugx_23deltalake_catalog_unity.exit2

bb.h:                                             ; preds = %bb.g
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsgO6CtM78C4N_7reqwest5retry5scope5ScopeEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l) #36
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest5retry5scope6ScopedECsgO8S5jLFugx_23deltalake_catalog_unity.exit2

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest5retry5scope6ScopedECsgO8S5jLFugx_23deltalake_catalog_unity.exit2: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest5retry8classify10ClassifierECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.g, %bb.h
  ret void

bb.i:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest5retry5scope6ScopedECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.e, %bb.d, %bb.f
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest8redirect6PolicyECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1191)
  %i.a = load i64, ptr %0, align 8, !range !77, !alias.scope !1191, !noundef !12
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest8redirect10PolicyKindECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !1191 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.d, align 8, !alias.scope !1191, !nonnull !12, !align !336, !noundef !12 ; 5 uses
  %i.e = load ptr, ptr %.val1.i, align 8, !invariant.load !12, !noalias !1191 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.e(ptr noundef nonnull %.val.i)
          to label %bb.d unwind label %bb.e, !noalias !1191

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !41, !invariant.load !12, !noalias !1191 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest8redirect10PolicyKindECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !42, !invariant.load !12, !noalias !1191
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) %i.j) #31, !noalias !1191
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest8redirect10PolicyKindECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !41, !invariant.load !12, !noalias !1191 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDG_INtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTINtNtCsgO6CtM78C4N_7reqwest8redirect7AttemptL0_EEEp6OutputNtB1u_6ActionNtNtBR_6marker4SyncNtB2C_4SendEL_ENtNtBP_4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !42, !invariant.load !12, !noalias !1191
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) %i.p) #31, !noalias !1191
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDG_INtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTINtNtCsgO6CtM78C4N_7reqwest8redirect7AttemptL0_EEEp6OutputNtB1u_6ActionNtNtBR_6marker4SyncNtB2C_4SendEL_ENtNtBP_4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDG_INtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTINtNtCsgO6CtM78C4N_7reqwest8redirect7AttemptL0_EEEp6OutputNtB1u_6ActionNtNtBR_6marker4SyncNtB2C_4SendEL_ENtNtBP_4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.e
  resume { ptr, i32 } %i.k

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest8redirect10PolicyKindECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a, %bb.d, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential18CredentialProviderEBK_(ptr noalias noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !12
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.c, align 8, !alias.scope !1194 ; 2 uses
  %i.e = icmp eq i64 %.val2.i.i, 0
  br i1 %i.e, label %common.resume, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i = load ptr, ptr %i.f, align 8, !alias.scope !1201, !nonnull !12, !noundef !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !1202
  br label %common.resume

bb.e:                                             ; preds = %bb.b
  %.val.i.i = load i64, ptr %i.c, align 8, !alias.scope !1194 ; 2 uses
  %i.g = icmp eq i64 %.val.i.i, 0
  br i1 %i.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.h, align 8, !alias.scope !1201, !nonnull !12, !noundef !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !1205
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit

common.resume:                                    ; preds = %.body, %bb.o, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.c, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.y, %bb.o ], [ %i.d, %bb.c ], [ %i.d, %bb.d ], [ %i.y, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i ], [ %i.l, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !range !46, !alias.scope !1208, !noundef !12
  %i.k = icmp eq i64 %i.j, -9223372036854775808
  br i1 %i.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token10TokenCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringEEBN_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.i)
          to label %bb.k unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !1217 ; 2 uses
  %i.m = icmp eq i64 %.val2.i.i.i.i.i.i.i, 0
  br i1 %i.m, label %.body, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val3.i.i.i.i.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !1226, !nonnull !12, !noundef !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !1227
  br label %.body

bb.k:                                             ; preds = %bb.h
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !1217 ; 2 uses
  %i.o = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token10TokenCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringEEBN_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !1226, !nonnull !12, !noundef !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !1230
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token10TokenCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringEEBN_.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i, %bb.n, %bb.f, %bb.e
  ret void

.body:                                            ; preds = %bb.i, %bb.j
  %.val2 = load ptr, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.q, align 8, !nonnull !12, !align !336, !noundef !12
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential15TokenCredentialEL_EEB1k_(ptr %.val2, ptr nonnull %.val3) #34
          to label %common.resume unwind label %bb.p

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token10TokenCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringEEBN_.exit: ; preds = %bb.l, %bb.k, %bb.g
  %.val = load ptr, ptr %0, align 8               ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.r, align 8, !nonnull !12, !align !336, !noundef !12 ; 5 uses
  %i.s = load ptr, ptr %.val1, align 8, !invariant.load !12 ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token10TokenCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringEEBN_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.s(ptr noundef nonnull %.val)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token10TokenCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringEEBN_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !41, !invariant.load !12 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.w = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !42, !invariant.load !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.u, i64 noundef range(i64 1, -9223372036854775807) %i.x) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.o:                                             ; preds = %bb.m
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !41, !invariant.load !12 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %common.resume, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.o
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !42, !invariant.load !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) %i.ad) #31
  br label %common.resume

bb.p:                                             ; preds = %.body
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client13ClientOptionsEBK_(ptr noalias noundef nonnull align 8 dereferenceable(328) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1233)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.b = load i8, ptr %i.a, align 8, !range !1236, !alias.scope !1233, !noundef !12
  %i.c = icmp eq i8 %i.b, 2
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 280
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1243)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1246, !nonnull !12, !align !336, !noundef !12
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !noalias !1246, !nonnull !12, !noundef !12
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !1246, !noundef !12
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !1246, !noundef !12
  invoke void %i.g(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef %i.j, i64 noundef %i.l)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.c, !inline_history !1247

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !range !94, !alias.scope !1248, !noundef !12
  %i.p = icmp eq i64 %i.o, 3
  br i1 %i.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !range !94, !alias.scope !1251, !noundef !12
  %i.s = icmp eq i64 %i.r, 3
  br i1 %i.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapEECsgO8S5jLFugx_23deltalake_catalog_unity.exit4, label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapEECsgO8S5jLFugx_23deltalake_catalog_unity.exit4 unwind label %bb.f

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.c, %bb.d, %bb.f
  %.pn = phi { ptr, i32 } [ %i.u, %bb.f ], [ %i.m, %bb.d ], [ %i.m, %bb.c ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.t) #34
          to label %common.resume unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapEECsgO8S5jLFugx_23deltalake_catalog_unity.exit4: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.w = load i64, ptr %i.v, align 8, !range !46, !alias.scope !1254, !noundef !12
  %i.x = icmp eq i64 %i.w, -9223372036854775808
  br i1 %i.x, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapEECsgO8S5jLFugx_23deltalake_catalog_unity.exit4
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i = load i64, ptr %i.v, align 8, !alias.scope !1257 ; 2 uses
  %i.z = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.z, label %common.resume, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val3.i.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !1264, !nonnull !12, !noundef !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !1265
  br label %common.resume

bb.j:                                             ; preds = %bb.g
  %.val.i.i.i = load i64, ptr %i.v, align 8, !alias.scope !1257 ; 2 uses
  %i.ab = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val1.i.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !1264, !nonnull !12, !noundef !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !1268
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

common.resume:                                    ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.h, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.y, %bb.h ], [ %i.y, %bb.i ], [ %.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapEECsgO8S5jLFugx_23deltalake_catalog_unity.exit ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapEECsgO8S5jLFugx_23deltalake_catalog_unity.exit4, %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %bb.d, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models13ErrorResponseEBK_(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i = load i64, ptr %0, align 8, !alias.scope !1271 ; 2 uses
  %i.b = icmp eq i64 %.val2.i.i, 0
  br i1 %i.b, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i = load ptr, ptr %i.c, align 8, !alias.scope !1278, !nonnull !12, !noundef !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !1279
  br label %.body

bb.d:                                             ; preds = %bb.a
  %.val.i.i = load i64, ptr %0, align 8, !alias.scope !1271 ; 2 uses
  %i.d = icmp eq i64 %.val.i.i, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load ptr, ptr %i.e, align 8, !alias.scope !1278, !nonnull !12, !noundef !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !1282
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit

.body:                                            ; preds = %bb.b, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.f) #34
          to label %.body7 unwind label %bb.n

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.e, %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i2 = load i64, ptr %i.g, align 8, !alias.scope !1285 ; 2 uses
  %i.i = icmp eq i64 %.val2.i.i2, 0
  br i1 %i.i, label %.body7, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i.i3 = load ptr, ptr %i.j, align 8, !alias.scope !1292, !nonnull !12, !noundef !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i3, i64 noundef %.val2.i.i2, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !1293
  br label %.body7

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %.val.i.i5 = load i64, ptr %i.g, align 8, !alias.scope !1285 ; 2 uses
  %i.k = icmp eq i64 %.val.i.i5, 0
  br i1 %i.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit9, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i.i6 = load ptr, ptr %i.l, align 8, !alias.scope !1292, !nonnull !12, !noundef !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i6, i64 noundef %.val.i.i5, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !1296
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit9

.body7:                                           ; preds = %bb.g, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %i.a, %.body ], [ %i.h, %bb.f ], [ %i.h, %bb.g ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models12ErrorDetailsEEB1h_(ptr noalias noundef align 8 dereferenceable(24) %i.m) #34
          to label %common.resume unwind label %bb.n

end_hunk_5
begin_hunk_6_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjkRrtHEnRPD_18reqwest_middleware6client14RequestBuilderECsgO8S5jLFugx_23deltalake_catalog_unity:bb.a

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.i, %bb.g ], [ %i.e, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 272
  %.val7 = load ptr, ptr %i.j, align 8, !nonnull !12, !noundef !12
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 280
  %.val8 = load i64, ptr %i.k, align 8, !noundef !12
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtBL_4sync3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware10middleware10MiddlewareEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %.val7, i64 %.val8) #34
          to label %bb.h unwind label %bb.p

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl7request14RequestBuilderECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.d, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 272
  %.val5 = load ptr, ptr %i.l, align 8, !nonnull !12, !noundef !12
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 280
  %.val6 = load i64, ptr %i.m, align 8, !noundef !12
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtBL_4sync3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware10middleware10MiddlewareEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %.val5, i64 %.val6)
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %.body, %bb.i
  %.pn = phi { ptr, i32 } [ %i.p, %bb.i ], [ %eh.lpad-body, %.body ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 288
  %.val11 = load ptr, ptr %i.n, align 8, !nonnull !12, !noundef !12
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 296
  %.val12 = load i64, ptr %i.o, align 8, !noundef !12
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtBL_4sync3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware8req_init18RequestInitialiserEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %.val11, i64 %.val12) #34
          to label %bb.k unwind label %bb.p

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl7request14RequestBuilderECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl7request14RequestBuilderECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 288
  %.val9 = load ptr, ptr %i.q, align 8, !nonnull !12, !noundef !12
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 296
  %.val10 = load i64, ptr %i.r, align 8, !noundef !12
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtBL_4sync3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware8req_init18RequestInitialiserEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %.val9, i64 %.val10)
          to label %bb.m unwind label %bb.l

bb.k:                                             ; preds = %bb.h, %bb.l
  %.pn2 = phi { ptr, i32 } [ %i.t, %bb.l ], [ %.pn, %bb.h ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 304
  %.val4 = load ptr, ptr %i.s, align 8, !align !336, !noundef !12
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http10extensions10ExtensionsECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val4) #34
          to label %common.resume unwind label %bb.p

bb.l:                                             ; preds = %bb.j
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.m:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 304
  %.val = load ptr, ptr %i.u, align 8, !align !336, !noundef !12 ; 4 uses
  %i.v = icmp eq ptr %.val, null
  br i1 %i.v, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http10extensions10ExtensionsECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtBT_6marker4SyncNtB2H_4SendEL_EEENtNtNtBT_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBH_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3h_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtB2z_8IdHasherEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.o

common.resume:                                    ; preds = %bb.k, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.o ], [ %.pn2, %bb.k ]
  resume { ptr, i32 } %common.resume.op

bb.o:                                             ; preds = %bb.n
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 32, i64 noundef 8) #31
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBH_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3h_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtB2z_8IdHasherEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.n
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 32, i64 noundef 8) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http10extensions10ExtensionsECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http10extensions10ExtensionsECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.m, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBH_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3h_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtB2z_8IdHasherEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  ret void

bb.p:                                             ; preds = %bb.h, %.body, %bb.k
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjkRrtHEnRPD_18reqwest_middleware6client20ClientWithMiddlewareECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1573)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1576)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1579)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !1582, !nonnull !12, !noundef !12
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !1582
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl6client6ClientECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCsgO6CtM78C4N_7reqwest10async_impl6client9ClientRefE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0) #36
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl6client6ClientECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.e, align 8, !nonnull !12, !noundef !12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val4 = load i64, ptr %i.f, align 8, !noundef !12
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtBL_4sync3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware10middleware10MiddlewareEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %.val3, i64 %.val4) #34
          to label %bb.d unwind label %bb.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl6client6ClientECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.g, align 8, !nonnull !12, !noundef !12
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2 = load i64, ptr %i.h, align 8, !noundef !12
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtBL_4sync3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware10middleware10MiddlewareEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %.val, i64 %.val2)
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.e
  %.pn = phi { ptr, i32 } [ %i.k, %bb.e ], [ %i.d, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val7 = load ptr, ptr %i.i, align 8, !nonnull !12, !noundef !12
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val8 = load i64, ptr %i.j, align 8, !noundef !12
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtBL_4sync3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware8req_init18RequestInitialiserEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %.val7, i64 %.val8) #34
          to label %bb.h unwind label %bb.g

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl6client6ClientECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl6client6ClientECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val5 = load ptr, ptr %i.l, align 8, !nonnull !12, !noundef !12
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val6 = load i64, ptr %i.m, align 8, !noundef !12
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtBL_4sync3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware8req_init18RequestInitialiserEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %.val5, i64 %.val6)
  ret void

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.h:                                             ; preds = %bb.d
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12 ; 4 uses
  %i.a = ptrtoint ptr %.val to i64
  %i.b = and i64 %i.a, 3
  switch i64 %i.b, label %default.unreachable [
    i64 2, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECsgO8S5jLFugx_23deltalake_catalog_unity.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECsgO8S5jLFugx_23deltalake_catalog_unity.exit
    i64 1, label %bb.c
  ], !prof !1583

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult ptr %.val, inttoptr (i64 180388626432 to ptr)
  tail call void @llvm.assume(i1 %i.c)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.val, i64 -1      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %.val.i.i.i.i = load ptr, ptr %i.d, align 8     ; 5 uses
  %i.e = getelementptr i8, ptr %.val, i64 7
  %.val1.i.i.i.i = load ptr, ptr %i.e, align 8, !nonnull !12, !align !336, !noundef !12 ; 5 uses
  %i.f = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !12 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  invoke void %i.f(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !41, !invariant.load !12 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  %i.j = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !42, !invariant.load !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) %i.k) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !41, !invariant.load !12 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.g, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i: ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !42, !invariant.load !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %i.q) #31
  br label %bb.g

bb.g:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i, %bb.f
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 24, i64 noundef 8) #31
  resume { ptr, i32 } %i.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, %bb.e
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 24, i64 noundef 8) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a, %bb.a, %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i = load i64, ptr %0, align 8, !alias.scope !1584 ; 2 uses
  %i.b = icmp eq i64 %.val2.i.i, 0
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i = load ptr, ptr %i.c, align 8, !alias.scope !1591, !nonnull !12, !noundef !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !1592
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i

bb.d:                                             ; preds = %bb.a
  %.val.i.i = load i64, ptr %0, align 8, !alias.scope !1584 ; 2 uses
  %i.d = icmp eq i64 %.val.i.i, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std3sys6os_str5bytes3BufECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load ptr, ptr %i.e, align 8, !alias.scope !1591, !nonnull !12, !noundef !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !1595
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std3sys6os_str5bytes3BufECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std3sys6os_str5bytes3BufECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle10ThreadInitECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1598)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1601)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1604)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1607)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !1610, !nonnull !12, !noundef !12
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !1610
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread6thread6ThreadECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0) #36
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread6thread6ThreadECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3 = load ptr, ptr %i.f, align 8, !nonnull !12, !align !336, !noundef !12
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val2, ptr nonnull %.val3) #34
          to label %common.resume unwind label %bb.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread6thread6ThreadECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.g, align 8             ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.h, align 8, !nonnull !12, !align !336, !noundef !12 ; 5 uses
  %i.i = load ptr, ptr %.val1, align 8, !invariant.load !12 ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread6thread6ThreadECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.i(ptr noundef nonnull %.val)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread6thread6ThreadECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.j = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !41, !invariant.load !12 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.m = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !42, !invariant.load !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) %i.n) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.f:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !41, !invariant.load !12 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %common.resume, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !range !42, !invariant.load !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) %i.t) #31
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %bb.f, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.f ], [ %i.o, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i ], [ %i.d, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.e, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i
  ret void

bb.g:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread9spawnhook15ChildSpawnHooksECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  invoke void @_RNvXNtNtCs2pqxYH9ZEk8_3std6thread9spawnhookNtB2_10SpawnHooksNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1611)
  %i.c = load ptr, ptr %i.a, align 8, !alias.scope !1614, !noundef !12 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !1617
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %.body

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread9spawnhook9SpawnHookE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #36
          to label %.body unwind label %bb.h

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1622)
  %i.g = load ptr, ptr %i.a, align 8, !alias.scope !1625, !noundef !12 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread9spawnhook10SpawnHooksECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !1626
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread9spawnhook10SpawnHooksECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread9spawnhook9SpawnHookE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #36
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread9spawnhook10SpawnHooksECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.c, %bb.d, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.l, %bb.i ], [ %i.b, %bb.d ], [ %i.b, %bb.c ], [ %i.b, %bb.b ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %0) #34
          to label %common.resume unwind label %bb.n

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread9spawnhook10SpawnHooksECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.f, %bb.e, %bb.g
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuEp6OutputuNtNtB15_6marker4SendEL_EENtNtB13_4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.l unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread9spawnhook10SpawnHooksECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %0, align 8, !alias.scope !1631 ; 2 uses
  %i.n = icmp eq i64 %.val2.i, 0
  br i1 %i.n, label %common.resume, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i = load ptr, ptr %i.o, align 8, !alias.scope !1631, !nonnull !12, !noundef !12
  %i.p = shl nuw i64 %.val2.i, 4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #31
  br label %common.resume

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread9spawnhook10SpawnHooksECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %.val.i = load i64, ptr %0, align 8, !alias.scope !1631 ; 2 uses
  %i.q = icmp eq i64 %.val.i, 0
  br i1 %i.q, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.r, align 8, !alias.scope !1631, !nonnull !12, !noundef !12
  %i.s = shl nuw i64 %.val.i, 4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 8) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

common.resume:                                    ; preds = %.body, %bb.j, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.j ], [ %i.m, %bb.k ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.l, %bb.m
  ret void

bb.n:                                             ; preds = %.body
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val2 = load i64, ptr %i.a, align 8, !noundef !12 ; 2 uses
  %i.b = icmp eq i64 %.val2, 0
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSNtNtNtCs4j34XAPZOn0_4http6header3map3PosEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val = load ptr, ptr %i.c, align 8, !nonnull !12, !noundef !12
  %i.d = shl nuw nsw i64 %.val2, 2
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.d, i64 noundef 2) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSNtNtNtCs4j34XAPZOn0_4http6header3map3PosEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSNtNtNtCs4j34XAPZOn0_4http6header3map3PosEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtBK_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSNtNtNtCs4j34XAPZOn0_4http6header3map3PosEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  %.val2.i = load i64, ptr %i.e, align 8, !alias.scope !1634 ; 2 uses
  %i.g = icmp eq i64 %.val2.i, 0
  br i1 %i.g, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i = load ptr, ptr %i.h, align 8, !alias.scope !1639, !nonnull !12, !noundef !12
  %i.i = mul nuw i64 %.val2.i, 104
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !1640
  br label %.body

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSNtNtNtCs4j34XAPZOn0_4http6header3map3PosEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %.val.i = load i64, ptr %i.e, align 8, !alias.scope !1634 ; 2 uses
  %i.j = icmp eq i64 %.val.i, 0
  br i1 %i.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1i_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i = load ptr, ptr %i.k, align 8, !alias.scope !1639, !nonnull !12, !noundef !12
  %i.l = mul nuw i64 %.val.i, 104
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !1643
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1i_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

.body:                                            ; preds = %bb.c, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtB1i_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.m) #34
          to label %common.resume unwind label %bb.j

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1i_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.e, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1i_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i3 = load i64, ptr %i.n, align 8, !alias.scope !1646 ; 2 uses
  %i.p = icmp eq i64 %.val2.i3, 0
  br i1 %i.p, label %common.resume, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val3.i4 = load ptr, ptr %i.q, align 8, !alias.scope !1651, !nonnull !12, !noundef !12
  %i.r = mul nuw i64 %.val2.i3, 72
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i4, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !1652
  br label %common.resume

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1i_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %.val.i5 = load i64, ptr %i.n, align 8, !alias.scope !1646 ; 2 uses
  %i.s = icmp eq i64 %.val.i5, 0
  br i1 %i.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtB1i_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val1.i6 = load ptr, ptr %i.t, align 8, !alias.scope !1651, !nonnull !12, !noundef !12
  %i.u = mul nuw i64 %.val.i5, 72
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i6, i64 noundef %i.u, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !1655
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtB1i_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

common.resume:                                    ; preds = %.body, %bb.f, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.f ], [ %i.o, %bb.g ], [ %i.f, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtB1i_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.h, %bb.i
  ret void

bb.j:                                             ; preds = %.body
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl6client13ClientBuilderECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(1016) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(1016) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsgO6CtM78C4N_7reqwest3tls8IdentityEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(56) %i.b) #34
          to label %bb.d unwind label %bb.be

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsgO6CtM78C4N_7reqwest3tls8IdentityEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(56) %i.c)
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 576
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsgO6CtM78C4N_7reqwest5proxy7MatcherEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.d) #34
          to label %.body.i unwind label %bb.be

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsgO6CtM78C4N_7reqwest5proxy7MatcherENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.f, align 8, !alias.scope !1658 ; 2 uses
  %i.h = icmp eq i64 %.val2.i.i, 0
  br i1 %i.h, label %.body.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 584
  %.val3.i.i = load ptr, ptr %i.i, align 8, !alias.scope !1665, !nonnull !12, !noundef !12
  %i.j = mul nuw i64 %.val2.i.i, 464
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !1666
  br label %.body.i

bb.i:                                             ; preds = %bb.f
  %.val.i.i = load i64, ptr %i.f, align 8, !alias.scope !1658 ; 2 uses
  %i.k = icmp eq i64 %.val.i.i, 0
  br i1 %i.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsgO6CtM78C4N_7reqwest5proxy7MatcherEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 584
  %.val1.i.i = load ptr, ptr %i.l, align 8, !alias.scope !1665, !nonnull !12, !noundef !12
  %i.m = mul nuw i64 %.val.i.i, 464
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !1669
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsgO6CtM78C4N_7reqwest5proxy7MatcherEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

.body.i:                                          ; preds = %bb.h, %bb.g, %bb.d
  %.pn2.i = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.g, %bb.g ], [ %i.g, %bb.h ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest8redirect6PolicyECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.n) #34
          to label %.body24.i unwind label %bb.be

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsgO6CtM78C4N_7reqwest5proxy7MatcherEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.j, %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1672)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1675)
  %i.p = load i64, ptr %i.o, align 8, !range !77, !alias.scope !1678, !noundef !12
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest8redirect6PolicyECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsgO6CtM78C4N_7reqwest5proxy7MatcherEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !1678 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val1.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !1678, !nonnull !12, !align !336, !noundef !12 ; 5 uses
  %i.t = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !12, !noalias !1679 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  invoke void %i.t(ptr noundef nonnull %.val.i.i.i)
          to label %bb.m unwind label %bb.n, !noalias !1679

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !41, !invariant.load !12, !noalias !1679 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest8redirect6PolicyECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !42, !invariant.load !12, !noalias !1679
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) %i.y) #31, !noalias !1679
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest8redirect6PolicyECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

bb.n:                                             ; preds = %bb.l
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !range !41, !invariant.load !12, !noalias !1679 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %.body24.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.n
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !range !42, !invariant.load !12, !noalias !1679
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.ab, i64 noundef range(i64 1, -9223372036854775807) %i.ae) #31, !noalias !1679
  br label %.body24.i

.body24.i:                                        ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, %bb.n, %.body.i
  %.pn4.i = phi { ptr, i32 } [ %.pn2.i, %.body.i ], [ %i.z, %bb.n ], [ %i.z, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 120
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5retry7BuilderECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(56) %i.af) #34
          to label %.body26.i unwind label %bb.be

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest8redirect6PolicyECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.m, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsgO6CtM78C4N_7reqwest5proxy7MatcherEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1680)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1683)
  %i.ah = load i64, ptr %i.ag, align 8, !range !77, !alias.scope !1686, !noundef !12
  %switch.i.i.i = icmp samesign ult i64 %i.ah, 2
  br i1 %switch.i.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest5retry8classify10ClassifierECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest8redirect6PolicyECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1687)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1690)
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !1693, !nonnull !12, !noundef !12
  %i.ak = atomicrmw sub ptr %i.aj, i64 1 release, align 8, !noalias !1694
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest5retry8classify10ClassifierECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsgO6CtM78C4N_7reqwest5retry8classify8ClassifyEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ai) #36
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest5retry8classify10ClassifierECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1695)
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !1698, !noundef !12 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %.body26.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aq = atomicrmw sub ptr %i.ao, i64 1 release, align 8, !noalias !1699
  %i.ar = icmp eq i64 %i.aq, 1
  br i1 %i.ar, label %bb.s, label %.body26.i

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsgO6CtM78C4N_7reqwest5retry5scope5ScopeEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.an) #36
          to label %.body26.i unwind label %bb.v

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest5retry8classify10ClassifierECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.p, %bb.o, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest8redirect6PolicyECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1704)
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !1707, !noundef !12 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5retry7BuilderECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.t

bb.t:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest5retry8classify10ClassifierECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %i.av = atomicrmw sub ptr %i.at, i64 1 release, align 8, !noalias !1708
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5retry7BuilderECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsgO6CtM78C4N_7reqwest5retry5scope5ScopeEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.as) #36
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5retry7BuilderECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

.body26.i:                                        ; preds = %bb.w, %bb.s, %bb.r, %bb.q, %.body24.i
  %.pn6.i = phi { ptr, i32 } [ %.pn4.i, %.body24.i ], [ %i.az, %bb.w ], [ %i.am, %bb.s ], [ %i.am, %bb.r ], [ %i.am, %bb.q ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 600
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsgO6CtM78C4N_7reqwest3tls11CertificateEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.ay) #34
          to label %.body32.i unwind label %bb.be

bb.w:                                             ; preds = %bb.u
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body26.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5retry7BuilderECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.u, %bb.t, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest5retry8classify10ClassifierECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsgO6CtM78C4N_7reqwest3tls11CertificateENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %bb.z unwind label %bb.x

bb.x:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5retry7BuilderECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i28.i = load i64, ptr %i.ba, align 8, !alias.scope !1713 ; 2 uses
  %i.bc = icmp eq i64 %.val2.i28.i, 0
  br i1 %i.bc, label %.body32.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 608
  %.val3.i29.i = load ptr, ptr %i.bd, align 8, !alias.scope !1718, !nonnull !12, !noundef !12
  %i.be = shl nuw i64 %.val2.i28.i, 5
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i29.i, i64 noundef %i.be, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !1719
  br label %.body32.i

bb.z:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5retry7BuilderECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %.val.i30.i = load i64, ptr %i.ba, align 8, !alias.scope !1713 ; 2 uses
  %i.bf = icmp eq i64 %.val.i30.i, 0
  br i1 %i.bf, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsgO6CtM78C4N_7reqwest3tls11CertificateEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 608
  %.val1.i31.i = load ptr, ptr %i.bg, align 8, !alias.scope !1718, !nonnull !12, !noundef !12
  %i.bh = shl nuw i64 %.val.i30.i, 5
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i31.i, i64 noundef %i.bh, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !1722
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsgO6CtM78C4N_7reqwest3tls11CertificateEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

.body32.i:                                        ; preds = %bb.y, %bb.x, %.body26.i
  %.pn8.i = phi { ptr, i32 } [ %.pn6.i, %.body26.i ], [ %i.bb, %bb.x ], [ %i.bb, %bb.y ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 624
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsgO6CtM78C4N_7reqwest3tls25CertificateRevocationListEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.bi) #34
          to label %.body38.i unwind label %bb.be

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsgO6CtM78C4N_7reqwest3tls11CertificateEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.aa, %bb.z
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsgO6CtM78C4N_7reqwest3tls25CertificateRevocationListENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bj)
          to label %bb.ad unwind label %bb.ab

bb.ab:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsgO6CtM78C4N_7reqwest3tls11CertificateEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i34.i = load i64, ptr %i.bj, align 8, !alias.scope !1725 ; 2 uses
  %i.bl = icmp eq i64 %.val2.i34.i, 0
  br i1 %i.bl, label %.body38.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 632
  %.val3.i35.i = load ptr, ptr %i.bm, align 8, !alias.scope !1730, !nonnull !12, !noundef !12
  %i.bn = mul nuw i64 %.val2.i34.i, 24
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i35.i, i64 noundef %i.bn, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !1731
  br label %.body38.i

bb.ad:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsgO6CtM78C4N_7reqwest3tls11CertificateEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %.val.i36.i = load i64, ptr %i.bj, align 8, !alias.scope !1725 ; 2 uses
  %i.bo = icmp eq i64 %.val.i36.i, 0
  br i1 %i.bo, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsgO6CtM78C4N_7reqwest3tls25CertificateRevocationListEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 632
  %.val1.i37.i = load ptr, ptr %i.bp, align 8, !alias.scope !1730, !nonnull !12, !noundef !12
  %i.bq = mul nuw i64 %.val.i36.i, 24
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i37.i, i64 noundef %i.bq, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !1734
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsgO6CtM78C4N_7reqwest3tls25CertificateRevocationListEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

.body38.i:                                        ; preds = %bb.ac, %bb.ab, %.body32.i
  %.pn10.i = phi { ptr, i32 } [ %.pn8.i, %.body32.i ], [ %i.bk, %bb.ab ], [ %i.bk, %bb.ac ]
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 232
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest3tls10TlsBackendECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(344) %i.br) #34
          to label %bb.af unwind label %bb.be

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsgO6CtM78C4N_7reqwest3tls25CertificateRevocationListEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.ae, %bb.ad
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 232
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest3tls10TlsBackendECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(344) %i.bs)
          to label %bb.ah unwind label %bb.ag

bb.af:                                            ; preds = %bb.ag, %.body38.i
  %.pn12.i = phi { ptr, i32 } [ %i.bu, %bb.ag ], [ %.pn10.i, %.body38.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 648
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtNtCsaL8FCyi0GlJ_5tower4util5boxed16layer_clone_sync24BoxCloneSyncServiceLayerINtNtB1k_16boxed_clone_sync19BoxCloneSyncServiceNtNtNtCsgO6CtM78C4N_7reqwest7connect6sealed10UnnameableNtB3n_4ConnINtNtBL_5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB53_4SendEL_EEB3l_B4e_B4p_EEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.bt) #34
          to label %.body44.i unwind label %bb.be

bb.ag:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsgO6CtM78C4N_7reqwest3tls25CertificateRevocationListEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ah:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsgO6CtM78C4N_7reqwest3tls25CertificateRevocationListEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtNtCsaL8FCyi0GlJ_5tower4util5boxed16layer_clone_sync24BoxCloneSyncServiceLayerINtNtBM_16boxed_clone_sync19BoxCloneSyncServiceNtNtNtCsgO6CtM78C4N_7reqwest7connect6sealed10UnnameableNtB2O_4ConnINtNtB7_5boxed3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtB4d_6marker4SyncNtB4K_4SendEL_EEB2M_B3F_B3Q_EENtNtNtB4d_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bv)
          to label %bb.ak unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i40.i = load i64, ptr %i.bv, align 8, !alias.scope !1737 ; 2 uses
  %i.bx = icmp eq i64 %.val2.i40.i, 0
  br i1 %i.bx, label %.body44.i, label %bb.aj

end_hunk_6
begin_hunk_7_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl6client13ClientBuilderECsgO8S5jLFugx_23deltalake_catalog_unity:bb.a

bb.av:                                            ; preds = %bb.au
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsgO6CtM78C4N_7reqwest3dns7resolve7ResolveEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cv) #36
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCsgO6CtM78C4N_7reqwest3dns7resolve7ResolveEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.be

bb.aw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsgO6CtM78C4N_7reqwest5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit50.i
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1F_3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1F_3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit53.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsgO6CtM78C4N_7reqwest5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit50.i
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 944 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1781)
  %i.dc = load ptr, ptr %i.db, align 8, !alias.scope !1784, !noundef !12 ; 2 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCsgO6CtM78C4N_7reqwest3dns7resolve7ResolveEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit56.i, label %bb.ax

bb.ax:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1F_3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit53.i
  %i.de = atomicrmw sub ptr %i.dc, i64 1 release, align 8, !noalias !1785
  %i.df = icmp eq i64 %i.de, 1
  br i1 %i.df, label %bb.ay, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCsgO6CtM78C4N_7reqwest3dns7resolve7ResolveEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit56.i

bb.ay:                                            ; preds = %bb.ax
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsgO6CtM78C4N_7reqwest3dns7resolve7ResolveEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.db) #36
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCsgO6CtM78C4N_7reqwest3dns7resolve7ResolveEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit56.i unwind label %bb.bb

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCsgO6CtM78C4N_7reqwest3dns7resolve7ResolveEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.bb, %bb.av, %bb.au, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1F_3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %.pn22.i = phi { ptr, i32 } [ %i.dl, %bb.bb ], [ %.pn20.i, %bb.av ], [ %.pn20.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1F_3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ], [ %.pn20.i, %bb.au ]
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1790)
  %i.dh = load ptr, ptr %i.dg, align 8, !alias.scope !1793, !noundef !12 ; 2 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2pqxYH9ZEk8_3std4path4PathEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.az

bb.az:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCsgO6CtM78C4N_7reqwest3dns7resolve7ResolveEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.dj = atomicrmw sub ptr %i.dh, i64 1 release, align 8, !noalias !1794
  %i.dk = icmp eq i64 %i.dj, 1
  br i1 %i.dk, label %bb.ba, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2pqxYH9ZEk8_3std4path4PathEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

bb.ba:                                            ; preds = %bb.az
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs2pqxYH9ZEk8_3std4path4PathE9drop_slowCsgO6CtM78C4N_7reqwest(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.dg) #36
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2pqxYH9ZEk8_3std4path4PathEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.be

bb.bb:                                            ; preds = %bb.ay
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCsgO6CtM78C4N_7reqwest3dns7resolve7ResolveEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCsgO6CtM78C4N_7reqwest3dns7resolve7ResolveEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit56.i: ; preds = %bb.ay, %bb.ax, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1F_3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit53.i
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1799)
  %i.dn = load ptr, ptr %i.dm, align 8, !alias.scope !1802, !noundef !12 ; 2 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl6client6ConfigECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.bc

bb.bc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCsgO6CtM78C4N_7reqwest3dns7resolve7ResolveEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit56.i
  %i.dp = atomicrmw sub ptr %i.dn, i64 1 release, align 8, !noalias !1803
  %i.dq = icmp eq i64 %i.dp, 1
  br i1 %i.dq, label %bb.bd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl6client6ConfigECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.bd:                                            ; preds = %bb.bc
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs2pqxYH9ZEk8_3std4path4PathE9drop_slowCsgO6CtM78C4N_7reqwest(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.dm) #36
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl6client6ConfigECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.be:                                            ; preds = %bb.ba, %bb.av, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsgO6CtM78C4N_7reqwest5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %bb.ar, %.body44.i, %bb.af, %.body38.i, %.body32.i, %.body26.i, %.body24.i, %.body.i, %bb.d, %bb.b
  %i.dr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2pqxYH9ZEk8_3std4path4PathEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.ba, %bb.az, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCsgO6CtM78C4N_7reqwest3dns7resolve7ResolveEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  resume { ptr, i32 } %.pn22.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl6client6ConfigECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCsgO6CtM78C4N_7reqwest3dns7resolve7ResolveEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit56.i, %bb.bc, %bb.bd
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl7request7RequestECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(264) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1808)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1811)
  %i.b = load i8, ptr %i.a, align 8, !range !1814, !alias.scope !1815, !noundef !12
  %switch.i.i = icmp samesign ult i8 %i.b, 10
  br i1 %switch.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http6method6MethodECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.val1.i.i = load i64, ptr %i.c, align 8, !alias.scope !1815, !noundef !12 ; 2 uses
  %i.d = icmp eq i64 %.val1.i.i, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http6method6MethodECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.val.i.i = load ptr, ptr %i.e, align 8, !alias.scope !1815, !nonnull !12, !noundef !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %.val1.i.i, i64 noundef 1) #31, !noalias !1815
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http6method6MethodECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http6method6MethodECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.f)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http6method6MethodECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !1816 ; 2 uses
  %i.h = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.h, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.val3.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !1825, !nonnull !12, !noundef !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !1826
  br label %.body

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http6method6MethodECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %.val.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !1816 ; 2 uses
  %i.j = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.val1.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !1825, !nonnull !12, !noundef !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !1829
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsgO8S5jLFugx_23deltalake_catalog_unity.exit

.body:                                            ; preds = %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(96) %i.l) #34
          to label %bb.g unwind label %bb.s

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.f, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(96) %i.m)
          to label %bb.i unwind label %bb.h

bb.g:                                             ; preds = %bb.h, %.body
  %.pn2 = phi { ptr, i32 } [ %i.n, %bb.h ], [ %i.g, %.body ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsgO6CtM78C4N_7reqwest10async_impl4body4BodyEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(40) %0) #34
          to label %.body9 unwind label %bb.s

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1832)
  %i.o = load i64, ptr %0, align 8, !range !39, !alias.scope !1832, !noundef !12
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsgO6CtM78C4N_7reqwest10async_impl4body4BodyEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1835)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1838)
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !1841, !noundef !12 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1842)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1845)
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !noalias !1848, !nonnull !12, !noundef !12
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !1848, !noundef !12
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !1848, !noundef !12
  invoke void %i.t(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef %i.w, i64 noundef %i.y)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsgO6CtM78C4N_7reqwest10async_impl4body4BodyEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.p, !inline_history !1849

bb.l:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i7 = load ptr, ptr %i.z, align 8, !alias.scope !1841 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i8 = load ptr, ptr %i.aa, align 8, !alias.scope !1841, !nonnull !12, !align !336, !noundef !12 ; 5 uses
  %i.ab = load ptr, ptr %.val1.i.i.i8, align 8, !invariant.load !12, !noalias !1841 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i7) ]
  invoke void %i.ab(ptr noundef nonnull %.val.i.i.i7)
          to label %bb.n unwind label %bb.o, !noalias !1841

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i.i.i8, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !range !41, !invariant.load !12, !noalias !1841 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsgO6CtM78C4N_7reqwest10async_impl4body4BodyEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i7) ]
  %i.af = getelementptr inbounds nuw i8, ptr %.val1.i.i.i8, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !range !42, !invariant.load !12, !noalias !1841
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i7, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) %i.ag) #31, !noalias !1841
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsgO6CtM78C4N_7reqwest10async_impl4body4BodyEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.o:                                             ; preds = %bb.m
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val1.i.i.i8, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !range !41, !invariant.load !12, !noalias !1841 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %.body9, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i: ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %.val1.i.i.i8, i64 16
  %i.am = load i64, ptr %i.al, align 8, !range !42, !invariant.load !12, !noalias !1841
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i7, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) %i.am) #31, !noalias !1841
  br label %.body9

.body9:                                           ; preds = %bb.p, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i, %bb.o, %bb.g
  %.pn4 = phi { ptr, i32 } [ %.pn2, %bb.g ], [ %i.ao, %bb.p ], [ %i.ah, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i ], [ %i.ah, %bb.o ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.val6 = load ptr, ptr %i.an, align 8, !align !336, !noundef !12
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http10extensions10ExtensionsECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val6) #34
          to label %common.resume unwind label %bb.s

bb.p:                                             ; preds = %bb.k
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body9

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsgO6CtM78C4N_7reqwest10async_impl4body4BodyEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, %bb.n, %bb.i, %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.val = load ptr, ptr %i.ap, align 8, !align !336, !noundef !12 ; 4 uses
  %i.aq = icmp eq ptr %.val, null
  br i1 %i.aq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http10extensions10ExtensionsECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.q

bb.q:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsgO6CtM78C4N_7reqwest10async_impl4body4BodyEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtBT_6marker4SyncNtB2H_4SendEL_EEENtNtNtBT_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBH_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3h_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtB2z_8IdHasherEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.r

common.resume:                                    ; preds = %.body9, %bb.r
  %common.resume.op = phi { ptr, i32 } [ %i.ar, %bb.r ], [ %.pn4, %.body9 ]
  resume { ptr, i32 } %common.resume.op

bb.r:                                             ; preds = %bb.q
  %i.ar = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 32, i64 noundef 8) #31
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBH_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3h_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtB2z_8IdHasherEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.q
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 32, i64 noundef 8) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http10extensions10ExtensionsECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http10extensions10ExtensionsECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsgO6CtM78C4N_7reqwest10async_impl4body4BodyEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBH_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3h_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtB2z_8IdHasherEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  ret void

bb.s:                                             ; preds = %.body9, %bb.g, %.body
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl8response8ResponseECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(128) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val1.i.i = load ptr, ptr %i.b, align 8, !alias.scope !1850, !align !336, !noundef !12
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http10extensions10ExtensionsECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val1.i.i) #34
          to label %.body.i unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !1850, !align !336, !noundef !12 ; 4 uses
  %i.d = icmp eq ptr %.val.i.i, null
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http8response5PartsECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtBT_6marker4SyncNtB2H_4SendEL_EEENtNtNtBT_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBH_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3h_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtB2z_8IdHasherEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 32, i64 noundef 8) #31
  br label %.body.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBH_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3h_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtB2z_8IdHasherEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i: ; preds = %bb.d
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 32, i64 noundef 8) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http8response5PartsECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

bb.f:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

.body.i:                                          ; preds = %bb.e, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.a, %bb.b ], [ %i.e, %bb.e ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val2.i = load ptr, ptr %i.g, align 8, !alias.scope !1855
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val3.i = load ptr, ptr %i.h, align 8, !alias.scope !1855, !nonnull !12, !align !336, !noundef !12
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3eCsZ2Mx498_14http_body_util11combinators8box_body7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB3g_4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val2.i, ptr nonnull %.val3.i) #34
          to label %.body unwind label %bb.j

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http8response5PartsECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBH_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3h_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtB2z_8IdHasherEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val.i = load ptr, ptr %i.i, align 8, !alias.scope !1855 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val1.i = load ptr, ptr %i.j, align 8, !alias.scope !1855, !nonnull !12, !align !336, !noundef !12 ; 5 uses
  %i.k = load ptr, ptr %.val1.i, align 8, !invariant.load !12 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http8response5PartsECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.k(ptr noundef nonnull %.val.i)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http8response5PartsECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !41, !invariant.load !12 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs4j34XAPZOn0_4http8response8ResponseINtNtNtCs3eCsZ2Mx498_14http_body_util11combinators8box_body7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB3W_4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !42, !invariant.load !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) %i.p) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs4j34XAPZOn0_4http8response8ResponseINtNtNtCs3eCsZ2Mx498_14http_body_util11combinators8box_body7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB3W_4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.i:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !41, !invariant.load !12 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %.body, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !42, !invariant.load !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) %i.v) #31
  br label %.body

bb.j:                                             ; preds = %.body.i
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

.body:                                            ; preds = %.body.i, %bb.i, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i
  %eh.lpad-body = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.q, %bb.i ], [ %i.q, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val1 = load ptr, ptr %i.x, align 8, !nonnull !12, !noundef !12
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCseo6ZV82fEK1_3url3UrlEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val1) #34
          to label %common.resume unwind label %bb.p

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs4j34XAPZOn0_4http8response8ResponseINtNtNtCs3eCsZ2Mx498_14http_body_util11combinators8box_body7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB3W_4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val = load ptr, ptr %i.y, align 8, !nonnull !12, !noundef !12 ; 7 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(88) %.val)
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs4j34XAPZOn0_4http8response8ResponseINtNtNtCs3eCsZ2Mx498_14http_body_util11combinators8box_body7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB3W_4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i = load i64, ptr %.val, align 8, !alias.scope !1856 ; 2 uses
  %i.aa = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.aa, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.val3.i.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !1865, !nonnull !12, !noundef !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val2.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !1866
  br label %bb.o

bb.m:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs4j34XAPZOn0_4http8response8ResponseINtNtNtCs3eCsZ2Mx498_14http_body_util11combinators8box_body7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB3W_4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %.val.i.i.i.i = load i64, ptr %.val, align 8, !alias.scope !1856 ; 2 uses
  %i.ac = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.ac, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCseo6ZV82fEK1_3url3UrlEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !1865, !nonnull !12, !noundef !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !1869
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCseo6ZV82fEK1_3url3UrlEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

common.resume:                                    ; preds = %.body, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.z, %bb.o ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.o:                                             ; preds = %bb.l, %bb.k
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 88, i64 noundef 8) #31
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCseo6ZV82fEK1_3url3UrlEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.m, %bb.n
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 88, i64 noundef 8) #31
  ret void

bb.p:                                             ; preds = %.body
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4sync15batch_semaphore7AcquireECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs3_NtNtCskQDtHcQtBkN_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.b, align 8, !align !336, !noundef !12 ; 2 uses
  %i.c = icmp eq ptr %.val2, null
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4sync15batch_semaphore6WaiterECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 16
  %.val3 = load ptr, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %.val2, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !12, !noundef !12
  invoke void %i.f(ptr noundef %.val3)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4sync15batch_semaphore6WaiterECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.f, !inline_history !622

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.g, align 8, !align !336, !noundef !12 ; 2 uses
  %i.h = icmp eq ptr %.val, null
  br i1 %i.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4sync15batch_semaphore6WaiterECsgO8S5jLFugx_23deltalake_catalog_unity.exit4, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !12, !noundef !12
  tail call void %i.k(ptr noundef %.val1), !inline_history !1872
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4sync15batch_semaphore6WaiterECsgO8S5jLFugx_23deltalake_catalog_unity.exit4

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4sync15batch_semaphore6WaiterECsgO8S5jLFugx_23deltalake_catalog_unity.exit4: ; preds = %bb.d, %bb.e
  ret void

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4sync15batch_semaphore6WaiterECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1873)
  %i.a = load i64, ptr %0, align 8, !range !39, !alias.scope !1873, !noundef !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = icmp eq i64 %i.a, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1876)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1879)
  %i.d = load ptr, ptr %i.b, align 8, !alias.scope !1882, !nonnull !12, !noundef !12
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !1882
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler6HandleECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #36
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler6HandleECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1883)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1886)
  %i.g = load ptr, ptr %i.b, align 8, !alias.scope !1889, !nonnull !12, !noundef !12
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !1889
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler6HandleECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #36
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler6HandleECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler6HandleECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs2pqxYH9ZEk8_3std6thread6scoped5scopeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtBR_19UnityCatalogBuilder17execute_uc_futureNCNvBN_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtB6_11collections4hash3map7HashMapB3p_B3p_EENtBR_17UnityCatalogErrorEEs_0uEBR_(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(2632) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [2632 x i8], align 16             ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  %i.f = alloca [40 x i8], align 8                ; 8 uses
  %i.g = alloca [8 x i8], align 8                 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke noundef nonnull ptr @_RNvNtNtCs2pqxYH9ZEk8_3std6thread7current18current_or_unnamed()
          to label %bb.b unwind label %.thread41  ; 2 uses

.thread41:                                        ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread37

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 1, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store ptr %i.h, ptr %i.k, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !1890
  %i.l = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef 8) #31, !noalias !1890 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.c, label %bb.g, !prof !22

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #32
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !1893
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.e, label %.thread37

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k) #36
          to label %.thread37 unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.g:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store ptr %i.l, ptr %i.g, align 8
  %.sroa.04.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1906
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(2616) %i.r, ptr noundef nonnull align 8 dereferenceable(2616) %.sroa.04.sroa.5.0..sroa_idx, i64 2616, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1906
  %i.s = load <2 x ptr>, ptr %0, align 8
  store <2 x ptr> %i.s, ptr %i.d, align 16, !noalias !1906
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1906
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1906
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 -9223372036854775808, ptr %i.t, align 8, !noalias !1906
  store i64 0, ptr %i.b, align 8, !noalias !1906
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i8 0, ptr %i.u, align 8, !noalias !1906
  invoke void @_RINvMs0_NtNtCs2pqxYH9ZEk8_3std6thread6scopedNtNtB8_7builder7Builder12spawn_scopedNCNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB1s_19UnityCatalogBuilder17execute_uc_futureNCNvB1o_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtBa_11collections4hash3map7HashMapB42_B42_EENtB1s_17UnityCatalogErrorEEs_00uEB1s_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(2632) %i.d)
          to label %.noexc28 unwind label %bb.s

.noexc28:                                         ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1906
  call void @llvm.experimental.noalias.scope.decl(metadata !1914)
  call void @llvm.experimental.noalias.scope.decl(metadata !1917)
  %i.v = load ptr, ptr %i.c, align 8, !alias.scope !1917, !noalias !1919, !noundef !12
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.h, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtCs2pqxYH9ZEk8_3std6thread6scoped16ScopedJoinHandleuENtNtNtBO_2io5error5ErrorE6expectCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i, !prof !22

bb.h:                                             ; preds = %.noexc28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1920
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !1917, !noalias !1919, !nonnull !12, !noundef !12
  store ptr %i.y, ptr %i.a, align 8, !noalias !1920
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 22, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @58, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #32
          to label %bb.j unwind label %bb.i, !noalias !1921

bb.i:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #34
          to label %.body29 unwind label %bb.k, !noalias !1921

bb.j:                                             ; preds = %bb.h
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !1921
  unreachable

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtCs2pqxYH9ZEk8_3std6thread6scoped16ScopedJoinHandleuENtNtNtBO_2io5error5ErrorE6expectCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i: ; preds = %.noexc28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.c, i64 24, i1 false), !alias.scope !1922, !noalias !1906
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1906
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1906
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  invoke void @_RNvXs1_NtNtNtCs2pqxYH9ZEk8_3std3sys6thread4unixNtB5_6ThreadNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std3sys6thread4unix6ThreadECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i unwind label %bb.l, !noalias !1923

bb.l:                                             ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtCs2pqxYH9ZEk8_3std6thread6scoped16ScopedJoinHandleuENtNtNtBO_2io5error5ErrorE6expectCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
          catch ptr null                          ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1924)
  call void @llvm.experimental.noalias.scope.decl(metadata !1927)
  call void @llvm.experimental.noalias.scope.decl(metadata !1930)
  call void @llvm.experimental.noalias.scope.decl(metadata !1933)
  %i.ad = load ptr, ptr %i.e, align 8, !alias.scope !1936, !noalias !1906, !nonnull !12, !noundef !12
  %i.ae = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !1941
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread6thread6ThreadECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #36
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread6thread6ThreadECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i unwind label %bb.r, !noalias !1923

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std3sys6thread4unix6ThreadECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i: ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtCs2pqxYH9ZEk8_3std6thread6scoped16ScopedJoinHandleuENtNtNtBO_2io5error5ErrorE6expectCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1942)
  call void @llvm.experimental.noalias.scope.decl(metadata !1945)
  call void @llvm.experimental.noalias.scope.decl(metadata !1948)
  call void @llvm.experimental.noalias.scope.decl(metadata !1951)
  %i.ag = load ptr, ptr %i.e, align 8, !alias.scope !1954, !noalias !1906, !nonnull !12, !noundef !12
  %i.ah = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !noalias !1955
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread6thread6ThreadECsgO8S5jLFugx_23deltalake_catalog_unity.exit3.i.i.i.i.i.i

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std3sys6thread4unix6ThreadECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #36
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread6thread6ThreadECsgO8S5jLFugx_23deltalake_catalog_unity.exit3.i.i.i.i.i.i unwind label %bb.p, !noalias !1923

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread6thread6ThreadECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i: ; preds = %bb.p, %bb.m, %bb.l
  %.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.an, %bb.p ], [ %i.ac, %bb.m ], [ %i.ac, %bb.l ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1956)
  call void @llvm.experimental.noalias.scope.decl(metadata !1959)
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !1962, !noalias !1906, !nonnull !12, !noundef !12
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !1963
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.o, label %.body29

bb.o:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread6thread6ThreadECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle6PacketuEE9drop_slowCskQDtHcQtBkN_5tokio(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aj) #36
          to label %.body29 unwind label %bb.r, !noalias !1923

bb.p:                                             ; preds = %bb.n
  %i.an = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread6thread6ThreadECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread6thread6ThreadECsgO8S5jLFugx_23deltalake_catalog_unity.exit3.i.i.i.i.i.i: ; preds = %bb.n, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std3sys6thread4unix6ThreadECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1964)
  call void @llvm.experimental.noalias.scope.decl(metadata !1967)
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !1970, !noalias !1906, !nonnull !12, !noundef !12
  %i.aq = atomicrmw sub ptr %i.ap, i64 1 release, align 8, !noalias !1971
  %i.ar = icmp eq i64 %i.aq, 1
  br i1 %i.ar, label %bb.q, label %bb.u

bb.q:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread6thread6ThreadECsgO8S5jLFugx_23deltalake_catalog_unity.exit3.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle6PacketuEE9drop_slowCskQDtHcQtBkN_5tokio(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ao) #36
          to label %bb.u unwind label %bb.s

bb.r:                                             ; preds = %bb.o, %bb.m
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !1923
  unreachable

bb.s:                                             ; preds = %bb.q, %bb.g
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  br label %.body29

.body29:                                          ; preds = %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread6thread6ThreadECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i, %bb.o, %bb.s
  %eh.lpad-body30 = phi { ptr, i32 } [ %i.at, %bb.s ], [ %i.z, %bb.i ], [ %.pn.i.i.i.i.i.i, %bb.o ], [ %.pn.i.i.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread6thread6ThreadECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i ]
  %i.au = extractvalue { ptr, i32 } %eh.lpad-body30, 0
  %i.av = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.au)
          to label %bb.v unwind label %bb.t       ; 2 uses

bb.t:                                             ; preds = %.body29
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #33
  unreachable

bb.u:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread6thread6ThreadECsgO8S5jLFugx_23deltalake_catalog_unity.exit3.i.i.i.i.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1906
  br label %bb.w

bb.v:                                             ; preds = %.body29
  %i.ax = extractvalue { ptr, ptr } %i.av, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ax) ]
  %i.ay = extractvalue { ptr, ptr } %i.av, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ay) ]
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.sroa.7.0 = phi ptr [ undef, %bb.u ], [ %i.ay, %bb.v ] ; 4 uses
  %.sroa.0.0 = phi ptr [ null, %bb.u ], [ %i.ax, %bb.v ] ; 4 uses
  br label %bb.y

.thread46:                                        ; preds = %bb.af, %bb.ab
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.x:                                             ; preds = %bb.aa
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not51 = icmp eq ptr %.sroa.0.0, null
  br i1 %.not51, label %bb.ah, label %bb.aj

bb.y:                                             ; preds = %bb.w, %bb.aa
  %i.az = load ptr, ptr %i.g, align 8, !nonnull !12, !noundef !12
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load atomic i64, ptr %i.ba acquire, align 8
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %.not = icmp eq ptr %.sroa.0.0, null
  br i1 %.not, label %bb.ac, label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.bd = load ptr, ptr %i.g, align 8, !nonnull !12, !noundef !12
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  invoke void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.be)
          to label %bb.y unwind label %bb.x

bb.ab:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0) ]
  invoke void @_RNvNtCs2pqxYH9ZEk8_3std5panic13resume_unwind(ptr noundef nonnull %.sroa.0.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.7.0) #32
          to label %bb.ag unwind label %.thread46

bb.ac:                                            ; preds = %bb.z
  %i.bf = load ptr, ptr %i.g, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load atomic i8, ptr %i.bg monotonic, align 1
  %i.bi = icmp eq i8 %i.bh, 0
  br i1 %i.bi, label %bb.ad, label %bb.af, !prof !24

bb.ad:                                            ; preds = %bb.ac
  %i.bj = atomicrmw sub ptr %i.bf, i64 1 release, align 8, !noalias !1972
  %i.bk = icmp eq i64 %i.bj, 1
  br i1 %i.bk, label %bb.ae, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread6scoped5ScopeECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.ae:                                            ; preds = %bb.ad
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6scoped9ScopeDataE9drop_slowCskQDtHcQtBkN_5tokio(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g) #36
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread6scoped5ScopeECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.af:                                            ; preds = %bb.ac
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @15, ptr noundef nonnull inttoptr (i64 49 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #32
          to label %bb.ag unwind label %.thread46

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread6scoped5ScopeECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.ae, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.ag:                                            ; preds = %bb.af, %bb.ab
  unreachable

bb.ah:                                            ; preds = %.thread46, %bb.aj, %bb.x
  %lpad.phi50 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread46 ], [ %lpad.thr_comm.split-lp, %bb.aj ], [ %lpad.thr_comm.split-lp, %bb.x ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1979)
  call void @llvm.experimental.noalias.scope.decl(metadata !1982)
  call void @llvm.experimental.noalias.scope.decl(metadata !1985)
  %i.bl = load ptr, ptr %i.g, align 8, !alias.scope !1988, !nonnull !12, !noundef !12
  %i.bm = atomicrmw sub ptr %i.bl, i64 1 release, align 8, !noalias !1988
  %i.bn = icmp eq i64 %i.bm, 1
  br i1 %i.bn, label %bb.ai, label %.thread

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6scoped9ScopeDataE9drop_slowCskQDtHcQtBkN_5tokio(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g) #36
          to label %.thread unwind label %bb.ak

bb.aj:                                            ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0) ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %.sroa.0.0, ptr nonnull %.sroa.7.0) #34
          to label %bb.ah unwind label %bb.ak

bb.ak:                                            ; preds = %.thread37, %bb.ai, %bb.aj
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

.thread:                                          ; preds = %.thread37, %bb.ai, %bb.ah
  %.pn36 = phi { ptr, i32 } [ %eh.lpad-body40, %.thread37 ], [ %lpad.phi50, %bb.ai ], [ %lpad.phi50, %bb.ah ]
  resume { ptr, i32 } %.pn36

.thread37:                                        ; preds = %bb.d, %bb.e, %.thread41
  %eh.lpad-body40 = phi { ptr, i32 } [ %i.i, %.thread41 ], [ %i.n, %bb.e ], [ %i.n, %bb.d ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtBO_19UnityCatalogBuilder25get_uc_location_and_token0EBO_(ptr noundef nonnull align 8 %i.bp)
          to label %.thread unwind label %bb.ak
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle15spawn_uncheckedNCNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB17_19UnityCatalogBuilder17execute_uc_futureNCNvB13_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtB6_11collections4hash3map7HashMapB3H_B3H_EENtB17_17UnityCatalogErrorEEs_00uEB17_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3, i1 noundef zeroext %4, ptr noundef %5, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(2632) %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [2672 x i8], align 8              ; 4 uses
  %i.g = alloca [2672 x i8], align 8              ; 9 uses
  %i.h = alloca [8 x i8], align 8                 ; 9 uses
  %i.i = alloca [32 x i8], align 8                ; 10 uses
  %i.j = alloca [8 x i8], align 8                 ; 11 uses
  %i.k = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %5, ptr %i.k, align 8
  %i.l = trunc nuw i64 %2 to i1
  br i1 %i.l, label %_RNCINvNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle15spawn_uncheckedNCNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB19_19UnityCatalogBuilder17execute_uc_futureNCNvB15_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtB8_11collections4hash3map7HashMapB3J_B3J_EENtB19_17UnityCatalogErrorEEs_00uE0B19_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load atomic i64, ptr @_RNvNCNvNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle15spawn_unchecked03MIN monotonic, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RINvNtCs2pqxYH9ZEk8_3std3env6var_osReECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 14)
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.c
  %i.o = load i64, ptr %i.c, align 8, !range !46, !noundef !12
  %.not.i = icmp eq i64 %i.o, -9223372036854775808
  br i1 %.not.i, label %bb.s, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.p = add i64 %i.m, -1
  br label %_RNCINvNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle15spawn_uncheckedNCNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB19_19UnityCatalogBuilder17execute_uc_futureNCNvB15_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtB8_11collections4hash3map7HashMapB3J_B3J_EENtB19_17UnityCatalogErrorEEs_00uE0B19_.exit

bb.e:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1989)
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !1989, !nonnull !12, !noundef !12
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !1989, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1989
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef %i.t)
          to label %bb.g unwind label %bb.f, !noalias !1989

bb.f:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #34
          to label %.body36.thread unwind label %bb.r

bb.g:                                             ; preds = %bb.e
  %i.v = load i64, ptr %i.a, align 8, !range !39, !noalias !1989, !noundef !12
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1989
  br label %_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !noalias !1989, !nonnull !12, !noundef !12 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noalias !1989, !noundef !12 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1989
  switch i64 %i.aa, label %thread-pre-split.i.i.i [
    i64 0, label %_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit.i.i
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.ab = load i8, ptr %i.y, align 1, !alias.scope !1992, !noalias !1995, !noundef !12 ; 2 uses
  switch i8 %i.ab, label %bb.k [
    i8 43, label %_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit.i.i
    i8 45, label %_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit.i.i
  ]

thread-pre-split.i.i.i:                           ; preds = %bb.i
  %.pr.i.i.i = load i8, ptr %i.y, align 1, !alias.scope !1992, !noalias !1995
  br label %bb.k

bb.k:                                             ; preds = %thread-pre-split.i.i.i, %bb.j
  %i.ac = phi i8 [ %.pr.i.i.i, %thread-pre-split.i.i.i ], [ %i.ab, %bb.j ]
  %cond.i.i.i = icmp eq i8 %i.ac, 43              ; 2 uses
  %i.ad = sext i1 %cond.i.i.i to i64
  %.sroa.15.0.i.i.i = add nsw i64 %i.aa, %i.ad    ; 4 uses
  %.sroa.0.0.idx.i.i.i = zext i1 %cond.i.i.i to i64
  %.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sroa.0.0.idx.i.i.i ; 2 uses
  %i.ae = icmp samesign ult i64 %.sroa.15.0.i.i.i, 17
  br i1 %i.ae, label %.preheader.i.i.i, label %.preheader56.i.i.i.preheader
end_hunk_7
begin_hunk_8_@_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB19_8snapshotNtB2j_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4o_5error5ErrorEEs_0B3a_ECsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [184 x i8], align 8               ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.v       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 3 uses
  store i64 %i.i, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !2071 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc nuw i64 %i.i to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.m, i64 464, i64 712
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2071
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.b, ptr noundef nonnull align 8 dereferenceable(184) %0, i64 184, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.m, i64 488, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !noalias !2071, !noundef !12 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !noalias !2071, !nonnull !12, !align !336, !noundef !12
  %i.r = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !2071
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.q, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2071
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1t_8snapshotNtB2D_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4I_5error5ErrorEEs_0ENtNtBR_8schedule16BlockingScheduleECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.b, ptr noundef %i.o, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.g
  %i.t = load ptr, ptr %i.a, align 8, !noalias !2071, !nonnull !12, !noundef !12
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !noalias !2071, !nonnull !12, !noundef !12 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2071
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2071
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2071
  store ptr %i.v, ptr %i.c, align 8, !noalias !2071
  %i.w = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.t, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1w_8snapshotNtB2G_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4L_5error5ErrorEEs_0B3x_ECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.h, !noalias !2082 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB2j_5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body unwind label %bb.i, !noalias !2082

bb.i:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !2082
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1w_8snapshotNtB2G_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4L_5error5ErrorEEs_0B3x_ECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %.noexc
  %i.z = extractvalue { i64, ptr } %i.w, 0
  %i.aa = extractvalue { i64, ptr } %i.w, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2071
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2083
  store ptr %i.v, ptr %i.f, align 8, !noalias !2083
  %i.ab = trunc nuw i64 %i.z to i1
  %.not.i = icmp ne ptr %i.aa, null
  %or.cond.not.i = select i1 %i.ab, i1 %.not.i, i1 false
  br i1 %or.cond.not.i, label %bb.j, label %bb.p, !prof !2084

bb.j:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1w_8snapshotNtB2G_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4L_5error5ErrorEEs_0B3x_ECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2083
  store ptr %i.aa, ptr %i.e, align 8, !noalias !2083
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2083
  store ptr %i.e, ptr %i.d, align 8, !noalias !2083
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !2083
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @14, ptr noundef nonnull %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #32
          to label %bb.l unwind label %bb.k, !noalias !2085

bb.k:                                             ; preds = %bb.j
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #34
          to label %bb.n unwind label %bb.m, !noalias !2085

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.n, %bb.k
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !2085
  unreachable

bb.n:                                             ; preds = %bb.k
  invoke void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB2j_5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body unwind label %bb.m, !noalias !2085

bb.o:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.n, %bb.o
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.o ], [ %i.x, %bb.h ], [ %i.ac, %bb.n ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(16) %i.g) #34
          to label %.thread unwind label %bb.u

bb.p:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1w_8snapshotNtB2G_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4L_5error5ErrorEEs_0B3x_ECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2083
  call void @llvm.experimental.noalias.scope.decl(metadata !2086)
  call void @llvm.experimental.noalias.scope.decl(metadata !2089)
  %i.af = load i64, ptr %i.g, align 8, !range !39, !alias.scope !2092, !noundef !12
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !2093)
  call void @llvm.experimental.noalias.scope.decl(metadata !2096)
  %i.ah = load ptr, ptr %i.k, align 8, !alias.scope !2099, !nonnull !12, !noundef !12
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !2099
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.r, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.r:                                             ; preds = %bb.q
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k) #36
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.s:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !2100)
  call void @llvm.experimental.noalias.scope.decl(metadata !2103)
  %i.ak = load ptr, ptr %i.k, align 8, !alias.scope !2106, !nonnull !12, !noundef !12
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !2106
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.t, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.t:                                             ; preds = %bb.s
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k) #36
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.r, %bb.t, %bb.s, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %i.v

bb.u:                                             ; preds = %bb.v, %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

.thread:                                          ; preds = %.body, %bb.v
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.v ]
  resume { ptr, i32 } %.pn8

bb.v:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtBL_8snapshotNtB1V_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3J_5error5ErrorEEs_0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(184) %0) #34
          to label %.thread unwind label %bb.u
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2e_19UnityCatalogBuilder17execute_uc_futureNCNvB2a_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB4O_B4O_EENtB2e_17UnityCatalogErrorEE0B4b_E00uEB2e_(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.h = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.v       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  store i64 %i.i, ptr %i.f, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
  %i.l = trunc nuw i64 %i.i to i1                 ; 2 uses
  %. = select i1 %i.l, i64 464, i64 712
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %.
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.n = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !2107 ; 2 uses
  %.not.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.01.0.v.i.i.i = select i1 %i.l, i64 488, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !noalias !2107, !noundef !12 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !noalias !2107, !nonnull !12, !align !336, !noundef !12
  %i.s = atomicrmw add ptr %i.p, i64 1 monotonic, align 8, !noalias !2107
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.r, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2107
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtNtB4_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2y_19UnityCatalogBuilder17execute_uc_futureNCNvB2u_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB58_B58_EENtB2y_17UnityCatalogErrorEE0B4v_E00ENtNtBR_8schedule16BlockingScheduleEB2y_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %0, ptr noundef %i.p, ptr %.sroa.5.0.i.i.i, i64 noundef %i.n)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.g
  %i.u = load ptr, ptr %i.a, align 8, !noalias !2107, !nonnull !12, !noundef !12
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !2107, !nonnull !12, !noundef !12 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2107
  store ptr %i.w, ptr %i.b, align 8, !noalias !2107
  %i.x = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.m, ptr noundef nonnull %i.u, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2B_19UnityCatalogBuilder17execute_uc_futureNCNvB2x_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5b_B5b_EENtB2B_17UnityCatalogErrorEE0B4y_E00uEB2B_.exit.i unwind label %bb.h, !noalias !2116 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleuENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.body unwind label %bb.i, !noalias !2116

bb.i:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !2116
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2B_19UnityCatalogBuilder17execute_uc_futureNCNvB2x_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5b_B5b_EENtB2B_17UnityCatalogErrorEE0B4y_E00uEB2B_.exit.i: ; preds = %.noexc
  %i.aa = extractvalue { i64, ptr } %i.x, 0
  %i.ab = extractvalue { i64, ptr } %i.x, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2117
  store ptr %i.w, ptr %i.e, align 8, !noalias !2117
  %i.ac = trunc nuw i64 %i.aa to i1
  %.not.i = icmp ne ptr %i.ab, null
  %or.cond.not.i = select i1 %i.ac, i1 %.not.i, i1 false
  br i1 %or.cond.not.i, label %bb.j, label %bb.p, !prof !2084

bb.j:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2B_19UnityCatalogBuilder17execute_uc_futureNCNvB2x_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5b_B5b_EENtB2B_17UnityCatalogErrorEE0B4y_E00uEB2B_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2117
  store ptr %i.ab, ptr %i.d, align 8, !noalias !2117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2117
  store ptr %i.d, ptr %i.c, align 8, !noalias !2117
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !2117
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @14, ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #32
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #34
          to label %bb.n unwind label %bb.m

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.n, %bb.k
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.n:                                             ; preds = %bb.k
  invoke void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleuENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.body unwind label %bb.m

bb.o:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.n, %bb.o
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.o ], [ %i.y, %bb.h ], [ %i.ad, %bb.n ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(16) %i.f) #34
          to label %.thread unwind label %bb.u

bb.p:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2B_19UnityCatalogBuilder17execute_uc_futureNCNvB2x_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5b_B5b_EENtB2B_17UnityCatalogErrorEE0B4y_E00uEB2B_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2117
  call void @llvm.experimental.noalias.scope.decl(metadata !2118)
  call void @llvm.experimental.noalias.scope.decl(metadata !2121)
  %i.ag = load i64, ptr %i.f, align 8, !range !39, !alias.scope !2124, !noundef !12
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !2125)
  call void @llvm.experimental.noalias.scope.decl(metadata !2128)
  %i.ai = load ptr, ptr %i.k, align 8, !alias.scope !2131, !nonnull !12, !noundef !12
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !2131
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.r, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.r:                                             ; preds = %bb.q
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k) #36
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.s:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !2132)
  call void @llvm.experimental.noalias.scope.decl(metadata !2135)
  %i.al = load ptr, ptr %i.k, align 8, !alias.scope !2138, !nonnull !12, !noundef !12
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !2138
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.t, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.t:                                             ; preds = %bb.s
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k) #36
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.r, %bb.t, %bb.s, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret ptr %i.w

bb.u:                                             ; preds = %bb.w, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

.thread:                                          ; preds = %bb.v, %bb.w, %.body
  %.pn9 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.v ], [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn9

bb.v:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = atomicrmw sub ptr %0, i64 1 release, align 8, !noalias !2139
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.w, label %.thread

bb.w:                                             ; preds = %bb.v
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6worker6WorkerE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g) #36
          to label %.thread unwind label %bb.u
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native5eager7destroyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef initializes((40, 41)) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 2, ptr %i.a, align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2149)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2155)
  %i.c = load i64, ptr %i.b, align 8, !range !77, !alias.scope !2158, !noundef !12 ; 2 uses
  %i.d = icmp eq i64 %i.c, 2
  br i1 %i.d, label %_RINvNtNtCs2pqxYH9ZEk8_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE0ECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2162)
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %_RINvNtNtCs2pqxYH9ZEk8_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE0ECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2165)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2168)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !2171, !nonnull !12, !noundef !12
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !2171
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.d, label %_RINvNtNtCs2pqxYH9ZEk8_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE0ECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10SubscriberNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f) #36
          to label %_RINvNtNtCs2pqxYH9ZEk8_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE0ECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.e
end_hunk_8
begin_hunk_9_@_RNCNvMs2_NtCsjkRrtHEnRPD_18reqwest_middleware6clientNtB7_14RequestBuilder4send0CsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
  %.val15.sink = phi ptr [ %.val15, %bb.j ], [ %.val, %bb.al ]
  %.pn10.ph = phi { ptr, i32 } [ %i.ac, %bb.j ], [ %i.ch, %bb.al ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val15.sink, i64 noundef 32, i64 noundef 8) #31
  br label %.body

bb.f:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload) ]
  store ptr %.sroa.3.0.copyload, ptr %i.v, align 8, !alias.scope !2411, !noalias !2406
  store i64 2, ptr %i.t, align 8, !alias.scope !2411, !noalias !2406
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjkRrtHEnRPD_18reqwest_middleware6client20ClientWithMiddlewareECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(40) %i.r)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %.val16 = load ptr, ptr %i.o, align 8, !align !336, !noundef !12
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http10extensions10ExtensionsECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val16) #34
          to label %.body unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  %.val15 = load ptr, ptr %i.o, align 8, !align !336, !noundef !12 ; 4 uses
  %i.ab = icmp eq ptr %.val15, null
  br i1 %i.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http10extensions10ExtensionsECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtBT_6marker4SyncNtB2H_4SendEL_EEENtNtNtBT_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val15)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBH_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3h_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtB2z_8IdHasherEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body.sink.split

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBH_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3h_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtB2z_8IdHasherEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.i
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val15, i64 noundef 32, i64 noundef 8) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http10extensions10ExtensionsECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http10extensions10ExtensionsECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBH_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3h_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtB2z_8IdHasherEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %bb.h
  store i8 0, ptr %i.l, align 1
  br label %bb.k

common.ret:                                       ; preds = %bb.ae, %bb.k
  %storemerge = phi i8 [ 3, %bb.ae ], [ 1, %bb.k ]
  store i8 %storemerge, ptr %i.g, align 8
  ret void

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http10extensions10ExtensionsECsgO8S5jLFugx_23deltalake_catalog_unity.exit34, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http10extensions10ExtensionsECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %.sroa.046.0 = phi i64 [ 3, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http10extensions10ExtensionsECsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ %i.bk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http10extensions10ExtensionsECsgO8S5jLFugx_23deltalake_catalog_unity.exit34 ]
  %.sroa.348.0 = phi i64 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http10extensions10ExtensionsECsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ %.sroa.348.0.copyload50, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http10extensions10ExtensionsECsgO8S5jLFugx_23deltalake_catalog_unity.exit34 ]
  %.sroa.451.0 = phi ptr [ %.sroa.3.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http10extensions10ExtensionsECsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ %.sroa.451.0.copyload53, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http10extensions10ExtensionsECsgO8S5jLFugx_23deltalake_catalog_unity.exit34 ]
  store i64 %.sroa.046.0, ptr %0, align 8
  %.sroa.348.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.348.0, ptr %.sroa.348.0..sroa_idx, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.451.0, ptr %.sroa.451.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.5, i64 112, i1 false)
  br label %common.ret

bb.l:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #35
  unreachable

bb.m:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #35
  unreachable

bb.n:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 1232
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !29, !noalias !2412
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 936 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2416)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 1232 ; 2 uses
  switch i8 %.pre, label %default.unreachable59 [
    i8 0, label %bb.p
    i8 1, label %bb.s
    i8 2, label %bb.t
    i8 3, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2412
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 1216
  %.val.i.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !alias.scope !2417, !noalias !2420
  %.phi.trans.insert8.i = getelementptr inbounds nuw i8, ptr %1, i64 1224
  %.val1.i.pre.i = load ptr, ptr %.phi.trans.insert8.i, align 8, !alias.scope !2417, !noalias !2420
  br label %bb.u

bb.p:                                             ; preds = %.thread, %bb.n
  %i.af = phi ptr [ %i.y, %.thread ], [ %i.ae, %bb.n ] ; 2 uses
  %i.ag = phi ptr [ %i.x, %.thread ], [ %i.ad, %bb.n ] ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 1233 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 1200
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !2412, !nonnull !12, !align !336, !noundef !12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2412
  store i8 1, ptr %i.ah, align 1, !noalias !2412
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.c, ptr noundef nonnull align 8 dereferenceable(264) %i.ag, i64 264, i1 false), !noalias !2412
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 1208
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !2412, !nonnull !12, !align !336, !noundef !12
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !noalias !2412, !nonnull !12, !align !336, !noundef !12
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !2412, !noundef !12
  store ptr %i.aj, ptr %i.b, align 8, !alias.scope !2423, !noalias !2426
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.an, ptr %i.aq, align 8, !alias.scope !2423, !noalias !2426
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.ap, ptr %i.ar, align 8, !alias.scope !2423, !noalias !2426
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2412
  store i8 0, ptr %i.ah, align 1, !noalias !2412
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.a, ptr noundef nonnull align 8 dereferenceable(264) %i.ag, i64 264, i1 false), !noalias !2412
  %i.as = invoke { ptr, ptr } @_RNvMNtCsjkRrtHEnRPD_18reqwest_middleware10middlewareNtB2_4Next3run(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(264) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %bb.r unwind label %bb.q, !noalias !2412 ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2412
  br label %.body.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2412
  %i.au = extractvalue { ptr, ptr } %i.as, 0      ; 2 uses
  %i.av = extractvalue { ptr, ptr } %i.as, 1      ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 1216
  store ptr %i.au, ptr %i.aw, align 8, !noalias !2412
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 1224
  store ptr %i.av, ptr %i.ax, align 8, !noalias !2412
  br label %bb.u

.body.i:                                          ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.z, %bb.v, %bb.q
  %i.ay = phi ptr [ %i.bd, %bb.z ], [ %i.bd, %bb.v ], [ %i.bd, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ], [ %i.af, %bb.q ]
  %i.az = phi ptr [ %i.be, %bb.z ], [ %i.be, %bb.v ], [ %i.be, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ], [ %i.ag, %bb.q ]
  %.pn2.i = phi { ptr, i32 } [ %i.bs, %bb.z ], [ %i.bj, %bb.v ], [ %i.bs, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ], [ %i.at, %bb.q ]
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 1233 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !range !599, !noalias !2412, !noundef !12
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.ac, label %bb.ab

bb.s:                                             ; preds = %bb.n
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #35
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.n
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #35
          to label %.noexc19 unwind label %bb.ad

.noexc19:                                         ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.r, %bb.o
  %i.bd = phi ptr [ %i.ae, %bb.o ], [ %i.af, %bb.r ] ; 5 uses
  %i.be = phi ptr [ %i.ad, %bb.o ], [ %i.ag, %bb.r ] ; 3 uses
  %.val1.i.i = phi ptr [ %.val1.i.pre.i, %bb.o ], [ %i.av, %bb.r ]
  %.val.i.i = phi ptr [ %.val.i.pre.i, %bb.o ], [ %i.au, %bb.r ]
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 1216 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2417)
  %i.bg = getelementptr i8, ptr %1, i64 1224      ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !invariant.load !12, !noalias !2429, !nonnull !12
  invoke void %i.bi(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.d, ptr noundef nonnull %.val.i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) #37
          to label %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtNtCsgO6CtM78C4N_7reqwest10async_impl8response8ResponseNtNtCsjkRrtHEnRPD_18reqwest_middleware5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.v, !inline_history !2430

bb.v:                                             ; preds = %bb.u
  %i.bj = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.bf, align 8, !noalias !2412
  %.val4.i = load ptr, ptr %i.bg, align 8, !noalias !2412, !nonnull !12, !align !336, !noundef !12
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCsgO6CtM78C4N_7reqwest10async_impl8response8ResponseNtNtCsjkRrtHEnRPD_18reqwest_middleware5error5ErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val.i, ptr nonnull %.val4.i) #34
          to label %.body.i unwind label %bb.aa, !noalias !2416

_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtNtCsgO6CtM78C4N_7reqwest10async_impl8response8ResponseNtNtCsjkRrtHEnRPD_18reqwest_middleware5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.u
  %i.bk = load i64, ptr %i.d, align 8, !range !557, !alias.scope !2416, !noalias !2431, !noundef !12 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 4
  br i1 %i.bl, label %bb.ae, label %bb.w

bb.w:                                             ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtNtCsgO6CtM78C4N_7reqwest10async_impl8response8ResponseNtNtCsjkRrtHEnRPD_18reqwest_middleware5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %.val5.i = load ptr, ptr %i.bf, align 8, !noalias !2412 ; 5 uses
  %.val6.i = load ptr, ptr %i.bg, align 8, !noalias !2412, !nonnull !12, !align !336, !noundef !12 ; 5 uses
  %i.bm = load ptr, ptr %.val6.i, align 8, !invariant.load !12, !noalias !2416 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i) ]
  invoke void %i.bm(ptr noundef nonnull %.val5.i)
          to label %bb.y unwind label %bb.z, !noalias !2416

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bn = getelementptr inbounds nuw i8, ptr %.val6.i, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !range !41, !invariant.load !12, !noalias !2416 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.ag, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i) ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !range !42, !invariant.load !12, !noalias !2416
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i, i64 noundef %i.bo, i64 noundef range(i64 1, -9223372036854775807) %i.br) #31, !noalias !2416
  br label %bb.ag

bb.z:                                             ; preds = %bb.x
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.val6.i, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !range !41, !invariant.load !12, !noalias !2416 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %.body.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.z
  %i.bw = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !range !42, !invariant.load !12, !noalias !2416
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i, i64 noundef %i.bu, i64 noundef range(i64 1, -9223372036854775807) %i.bx) #31, !noalias !2416
  br label %.body.i

bb.aa:                                            ; preds = %bb.ac, %bb.v
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !2416
  unreachable

bb.ab:                                            ; preds = %bb.ac, %.body.i
  store i8 0, ptr %i.ba, align 1, !noalias !2412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2412
  store i8 2, ptr %i.ay, align 8, !noalias !2412
  br label %.body20

bb.ac:                                            ; preds = %.body.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl7request7RequestECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(264) %i.c) #34
          to label %bb.ab unwind label %bb.aa, !noalias !2416

bb.ad:                                            ; preds = %bb.t, %bb.s
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body20

bb.ae:                                            ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtNtCsgO6CtM78C4N_7reqwest10async_impl8response8ResponseNtNtCsjkRrtHEnRPD_18reqwest_middleware5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2412
  store i8 3, ptr %i.bd, align 8, !noalias !2412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 4, ptr %0, align 8
  br label %common.ret

bb.af:                                            ; preds = %.body20
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 632
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjkRrtHEnRPD_18reqwest_middleware6client20ClientWithMiddlewareECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(40) %i.ca) #34
          to label %bb.ah unwind label %bb.e

bb.ag:                                            ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.y
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 1233
  store i8 0, ptr %i.cb, align 1, !noalias !2412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2412
  store i8 1, ptr %i.bd, align 8, !noalias !2412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.348.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.348.0.copyload50 = load i64, ptr %.sroa.348.0..sroa_idx49, align 8
  %.sroa.451.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.451.0.copyload53 = load ptr, ptr %.sroa.451.0..sroa_idx52, align 8
  %.sroa.5.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.5.0..sroa_idx54, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 632
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjkRrtHEnRPD_18reqwest_middleware6client20ClientWithMiddlewareECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(40) %i.cc)
          to label %bb.aj unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ai, %bb.af
  %.pn6 = phi { ptr, i32 } [ %i.ce, %bb.ai ], [ %.pn2, %bb.af ]
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 624
  %.val13 = load ptr, ptr %i.cd, align 8, !align !336, !noundef !12
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http10extensions10ExtensionsECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val13) #34
          to label %.body unwind label %bb.e

bb.ai:                                            ; preds = %bb.ag
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.aj:                                            ; preds = %bb.ag
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 624
  %.val = load ptr, ptr %i.cf, align 8, !align !336, !noundef !12 ; 4 uses
  %i.cg = icmp eq ptr %.val, null
  br i1 %i.cg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http10extensions10ExtensionsECsgO8S5jLFugx_23deltalake_catalog_unity.exit34, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtBT_6marker4SyncNtB2H_4SendEL_EEENtNtNtBT_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBH_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3h_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtB2z_8IdHasherEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i31 unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %.body.sink.split

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBH_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3h_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtB2z_8IdHasherEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i31: ; preds = %bb.ak
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 32, i64 noundef 8) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http10extensions10ExtensionsECsgO8S5jLFugx_23deltalake_catalog_unity.exit34

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http10extensions10ExtensionsECsgO8S5jLFugx_23deltalake_catalog_unity.exit34: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBH_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3h_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtB2z_8IdHasherEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i31, %bb.aj
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 1241
  store i8 0, ptr %i.ci, align 1
  br label %bb.k

.body20:                                          ; preds = %bb.ad, %bb.ab
  %i.cj = phi ptr [ %i.az, %bb.ab ], [ %i.ad, %bb.ad ]
  %.pn2 = phi { ptr, i32 } [ %.pn2.i, %bb.ab ], [ %i.bz, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtCsjkRrtHEnRPD_18reqwest_middleware6clientNtBN_20ClientWithMiddleware23execute_with_extensions0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.cj) #34
          to label %bb.af unwind label %bb.e

bb.am:                                            ; preds = %bb.an, %.body
  store i8 0, ptr %i.i, align 1
  store i8 2, ptr %i.g, align 8
  resume { ptr, i32 } %.pn10.pn

bb.an:                                            ; preds = %.body
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 312
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjkRrtHEnRPD_18reqwest_middleware6client14RequestBuilderECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(312) %i.ck) #34
          to label %bb.am unwind label %bb.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB7_19UnityCatalogBuilder25get_uc_location_and_token0B7_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [72 x i8], align 8                ; 14 uses
  %i.e = alloca [80 x i8], align 8                ; 29 uses
  %i.f = alloca [72 x i8], align 8                ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [72 x i8], align 8                ; 12 uses
  %i.k = alloca [48 x i8], align 8                ; 3 uses
  %i.l = alloca [48 x i8], align 8                ; 7 uses
  %i.m = alloca [256 x i8], align 8               ; 4 uses
  %.sroa.3261 = alloca [72 x i8], align 8         ; 6 uses
  %.sroa.5262 = alloca [176 x i8], align 8        ; 2 uses
  %i.n = alloca [256 x i8], align 8               ; 8 uses
  %i.o = alloca [48 x i8], align 8                ; 7 uses
  %i.p = alloca [256 x i8], align 8               ; 2 uses
  %.sroa.3219 = alloca [72 x i8], align 8         ; 4 uses
  %.sroa.5220 = alloca [176 x i8], align 8        ; 2 uses
  %i.q = alloca [256 x i8], align 8               ; 8 uses
  %.sroa.3184 = alloca [24 x i8], align 8         ; 3 uses
  %.sroa.5185 = alloca [40 x i8], align 8         ; 2 uses
  %i.r = alloca [72 x i8], align 8                ; 8 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.8167 = alloca [40 x i8], align 8         ; 3 uses
  %.sroa.5173 = alloca [112 x i8], align 8        ; 4 uses
  %i.t = alloca [640 x i8], align 8               ; 5 uses
  %i.u = alloca [160 x i8], align 8               ; 8 uses
  %.sroa.8158 = alloca [40 x i8], align 8         ; 3 uses
  %.sroa.5 = alloca [112 x i8], align 8           ; 4 uses
  %i.v = alloca [640 x i8], align 8               ; 5 uses
  %i.w = alloca [160 x i8], align 8               ; 8 uses
  %i.x = alloca [40 x i8], align 8                ; 5 uses
  %i.y = alloca [40 x i8], align 8                ; 6 uses
  %i.z = alloca [640 x i8], align 8               ; 6 uses
  %i.aa = alloca [640 x i8], align 8              ; 8 uses
  %.sroa.8150 = alloca [40 x i8], align 8         ; 7 uses
  %i.ab = alloca [640 x i8], align 8              ; 10 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 283 ; 3 uses
  %i.ad = load i8, ptr %i.ac, align 1, !range !598, !noundef !12
  switch i8 %i.ad, label %default.unreachable315 [
    i8 0, label %bb.b
    i8 1, label %bb.bf
    i8 2, label %bb.bg
    i8 3, label %bb.e
    i8 4, label %bb.br
    i8 5, label %bb.cp
  ]

default.unreachable315:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 282
  store i8 0, ptr %i.ae, align 2
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 281
  store i8 0, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i8 0, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !12, !noundef !12 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !12 ; 10 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.am = load ptr, ptr %i.al, align 8, !align !336, !noundef !12 ; 2 uses
  %i.an = icmp ult i64 %i.ak, 6
  br i1 %i.an, label %bb.c, label %_RNvXs9_NtNtCsbvkFyIu7lgC_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.ao = icmp eq i64 %i.ak, 5
  br i1 %i.ao, label %bb.h, label %bb.d, !prof !24

_RNvXs9_NtNtCsbvkFyIu7lgC_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i: ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 5
end_hunk_9
begin_hunk_10_@_RNCNvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB7_19UnityCatalogBuilder25get_uc_location_and_token0B7_:bb.a
bb.ap:                                            ; preds = %bb.q
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsgO8S5jLFugx_23deltalake_catalog_unity19UnityCatalogBuilderEBI_(ptr noalias noundef align 8 dereferenceable(640) %i.z) #34
          to label %bb.ao unwind label %bb.aq

bb.aq:                                            ; preds = %bb.co, %bb.bh, %bb.dz, %bb.dy, %bb.dx, %bb.du, %bb.dt, %.body134, %bb.di, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBP_12UnityCatalog26get_temp_table_credentialsReB2d_B2d_E0EBP_.exit, %bb.bq, %.body105, %bb.ar, %bb.ap
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.ar:                                            ; preds = %bb.as, %bb.bb, %bb.bd, %bb.db, %.body105, %bb.o
  %.pn65.pn = phi { ptr, i32 } [ %.pn65, %bb.o ], [ %i.hl, %bb.db ], [ %.pn57.pn, %.body105 ], [ %i.dm, %bb.bd ], [ %i.dl, %bb.bb ], [ %i.cv, %bb.as ]
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 232
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecReEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.cu) #34
          to label %.body unwind label %bb.aq

bb.as:                                            ; preds = %bb.at, %bb.n
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.ar

bb.at:                                            ; preds = %bb.n
  invoke void @_RNvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB5_19UnityCatalogBuilder5build(ptr noalias noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.u, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(640) %i.t)
          to label %bb.au unwind label %bb.as

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.cw = load i64, ptr %i.u, align 8, !range !46, !alias.scope !2516, !noalias !2519, !noundef !12 ; 2 uses
  %i.cx = icmp eq i64 %i.cw, -9223372036854775808
  %i.cy = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8167, ptr noundef nonnull align 8 dereferenceable(40) %i.cy, i64 40, i1 false)
  br i1 %i.cx, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8167, i64 40, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  invoke void @_RNvXs_CsgO8S5jLFugx_23deltalake_catalog_unityNtB4_17UnityCatalogErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCs14kWLkQVSKO_14deltalake_core12data_catalog16DataCatalogErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.cz, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.bc unwind label %bb.bb

bb.aw:                                            ; preds = %bb.au
  %.sroa.10169.0..sroa_idx170 = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5173)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.5173, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.10169.0..sroa_idx170, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  store i64 %i.cw, ptr %1, align 8
  %.sroa.4172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4172.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8167, i64 40, i1 false)
  %.sroa.5173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.5173.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.5173, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5173)
  br label %bb.aa

bb.ax:                                            ; preds = %bb.ac
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringeNtB5_8ToString9to_stringCsgO8S5jLFugx_23deltalake_catalog_unity.exit94: ; preds = %bb.ad, %bb.aa
  %.sroa.5.0.i.i90 = phi ptr [ %i.ci, %bb.ad ], [ inttoptr (i64 1 to ptr), %bb.aa ]
  store i64 %i.cg, ptr %i.s, align 8
  %.sroa.5181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %.sroa.5.0.i.i90, ptr %.sroa.5181.0..sroa_idx, align 8
  %.sroa.6182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %i.cg, ptr %.sroa.6182.0..sroa_idx, align 8
  %i.db = load ptr, ptr %i.bj, align 8, !nonnull !12, !noundef !12
  %i.dc = load i64, ptr %i.bn, align 8, !noundef !12
  %i.dd = load ptr, ptr %i.bp, align 8, !nonnull !12, !noundef !12
  %i.de = load i64, ptr %i.bt, align 8, !noundef !12
  %i.df = invoke { ptr, ptr } @_RNvXs1g_CsgO8S5jLFugx_23deltalake_catalog_unityNtB6_12UnityCatalogNtNtCs14kWLkQVSKO_14deltalake_core12data_catalog11DataCatalog26get_table_storage_location(ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.s, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.db, i64 noundef %i.dc, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dd, i64 noundef %i.de)
          to label %bb.ba unwind label %bb.az     ; 2 uses

bb.ay:                                            ; preds = %bb.az, %bb.ax
  %.pn24 = phi { ptr, i32 } [ %i.dg, %bb.az ], [ %i.da, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %.body105

bb.az:                                            ; preds = %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringeNtB5_8ToString9to_stringCsgO8S5jLFugx_23deltalake_catalog_unity.exit94
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ba:                                            ; preds = %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringeNtB5_8ToString9to_stringCsgO8S5jLFugx_23deltalake_catalog_unity.exit94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.dh = extractvalue { ptr, ptr } %i.df, 0      ; 2 uses
  %i.di = extractvalue { ptr, ptr } %i.df, 1      ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr %i.dh, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 296
  store ptr %i.di, ptr %i.dk, align 8
  br label %bb.bi

bb.bb:                                            ; preds = %bb.av
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.bc:                                            ; preds = %bb.av
  store i64 1, ptr %i.e, align 8, !alias.scope !2521, !noalias !2524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ak

bb.bd:                                            ; preds = %bb.k
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.be:                                            ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ba, ptr nonnull readonly align 1 %i.ai, i64 range(i64 0, -9223372036854775808) %i.ak, i1 false), !noalias !2526
  %i.dn = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 -9223372036854775804, ptr %i.dn, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.ak, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.ba, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %i.ak, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  store i64 1, ptr %i.e, align 8
  br label %bb.ak

.body:                                            ; preds = %bb.f, %bb.g, %bb.am, %bb.al, %bb.dd, %bb.de, %bb.ar
  %.pn68 = phi { ptr, i32 } [ %i.hn, %bb.de ], [ %.pn65.pn, %bb.ar ], [ %i.cn, %bb.al ], [ %i.cn, %bb.am ], [ %i.hn, %bb.dd ], [ %i.at, %bb.g ], [ %i.as, %bb.f ]
  store i8 2, ptr %i.ac, align 1
  resume { ptr, i32 } %.pn68

bb.bf:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #35
  unreachable

bb.bg:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #35
  unreachable

bb.bh:                                            ; preds = %bb.bi
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %.val71 = load ptr, ptr %i.dp, align 8
  %.val72 = load ptr, ptr %i.dq, align 8, !nonnull !12, !align !336, !noundef !12
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtB11_6string6StringNtCsgO8S5jLFugx_23deltalake_catalog_unity17UnityCatalogErrorENtNtB4_6marker4SendEL_EEEB2S_(ptr %.val71, ptr nonnull %.val72) #34
          to label %.body105 unwind label %bb.aq

bb.bi:                                            ; preds = %bb.e, %bb.ba
  %.val1.i99 = phi ptr [ %.val1.i99.pre, %bb.e ], [ %i.di, %bb.ba ]
  %.val.i98 = phi ptr [ %.val.i98.pre, %bb.e ], [ %i.dh, %bb.ba ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2439)
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.val1.i99, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !invariant.load !12, !noalias !2527, !nonnull !12
  invoke void %i.ds(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.r, ptr noundef nonnull %.val.i98, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) #37
          to label %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtB10_6string6StringNtCsgO8S5jLFugx_23deltalake_catalog_unity17UnityCatalogErrorENtNtB8_6marker4SendEL_EEB1v_4pollB2z_.exit unwind label %bb.bh, !inline_history !2528

_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtB10_6string6StringNtCsgO8S5jLFugx_23deltalake_catalog_unity17UnityCatalogErrorENtNtB8_6marker4SendEL_EEB1v_4pollB2z_.exit: ; preds = %bb.bi
  %i.dt = load i64, ptr %i.r, align 8, !range !2208, !noundef !12 ; 3 uses
  %i.du = icmp eq i64 %i.dt, -9223372036854775794
  br i1 %i.du, label %bb.bj, label %bb.bk

common.ret:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecReEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.cr, %bb.bt, %bb.bj
  %.sink = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecReEECsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ 5, %bb.cr ], [ 4, %bb.bt ], [ 3, %bb.bj ]
  store i8 %.sink, ptr %i.ac, align 1
  ret void

bb.bj:                                            ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtB10_6string6StringNtCsgO8S5jLFugx_23deltalake_catalog_unity17UnityCatalogErrorENtNtB8_6marker4SendEL_EEB1v_4pollB2z_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  store i64 2, ptr %0, align 8
  br label %common.ret

bb.bk:                                            ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtB10_6string6StringNtCsgO8S5jLFugx_23deltalake_catalog_unity17UnityCatalogErrorENtNtB8_6marker4SendEL_EEB1v_4pollB2z_.exit
  %.sroa.3184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3184, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3184.0..sroa_idx, i64 24, i1 false)
  %.sroa.5185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5185, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5185.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %.val = load ptr, ptr %i.dp, align 8            ; 5 uses
  %.val70 = load ptr, ptr %i.dq, align 8, !nonnull !12, !align !336, !noundef !12 ; 5 uses
  %i.dv = load ptr, ptr %.val70, align 8, !invariant.load !12 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dv, null
  br i1 %.not.i.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.dv(ptr noundef nonnull %.val)
          to label %bb.bm unwind label %bb.bn

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.dw = getelementptr inbounds nuw i8, ptr %.val70, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !range !41, !invariant.load !12 ; 2 uses
  %i.dy = icmp eq i64 %i.dx, 0
  br i1 %i.dy, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtB11_6string6StringNtCsgO8S5jLFugx_23deltalake_catalog_unity17UnityCatalogErrorENtNtB4_6marker4SendEL_EEEB2S_.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.bm
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.dz = getelementptr inbounds nuw i8, ptr %.val70, i64 16
  %i.ea = load i64, ptr %i.dz, align 8, !range !42, !invariant.load !12
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.dx, i64 noundef range(i64 1, -9223372036854775807) %i.ea) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtB11_6string6StringNtCsgO8S5jLFugx_23deltalake_catalog_unity17UnityCatalogErrorENtNtB4_6marker4SendEL_EEEB2S_.exit

bb.bn:                                            ; preds = %bb.bl
  %i.eb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.val70, i64 8
  %i.ed = load i64, ptr %i.ec, align 8, !range !41, !invariant.load !12 ; 2 uses
  %i.ee = icmp eq i64 %i.ed, 0
  br i1 %i.ee, label %.body105, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.bn
  %i.ef = getelementptr inbounds nuw i8, ptr %.val70, i64 16
  %i.eg = load i64, ptr %i.ef, align 8, !range !42, !invariant.load !12
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.ed, i64 noundef range(i64 1, -9223372036854775807) %i.eg) #31
  br label %.body105

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtB11_6string6StringNtCsgO8S5jLFugx_23deltalake_catalog_unity17UnityCatalogErrorENtNtB4_6marker4SendEL_EEEB2S_.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.bm
  %.not.i = icmp eq i64 %i.dt, -9223372036854775795
  br i1 %.not.i, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtB11_6string6StringNtCsgO8S5jLFugx_23deltalake_catalog_unity17UnityCatalogErrorENtNtB4_6marker4SendEL_EEEB2S_.exit
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 282
  store i8 1, ptr %i.eh, align 2
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ei, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3184, i64 24, i1 false)
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ek = load ptr, ptr %i.ej, align 8, !nonnull !12, !noundef !12
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.em = load i64, ptr %i.el, align 8, !noundef !12
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.eo = load ptr, ptr %i.en, align 8, !nonnull !12, !noundef !12
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.eq = load i64, ptr %i.ep, align 8, !noundef !12
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.es = load ptr, ptr %i.er, align 8, !nonnull !12, !noundef !12
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.eu = load i64, ptr %i.et, align 8, !noundef !12
  %.sroa.8210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 304
  store ptr %i.ek, ptr %.sroa.8210.0..sroa_idx, align 8
  %.sroa.9211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 312
  store i64 %i.em, ptr %.sroa.9211.0..sroa_idx, align 8
  %.sroa.10212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 320
  store ptr %i.eo, ptr %.sroa.10212.0..sroa_idx, align 8
  %.sroa.11213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 328
  store i64 %i.eq, ptr %.sroa.11213.0..sroa_idx, align 8
  %.sroa.12214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 336
  store ptr %i.es, ptr %.sroa.12214.0..sroa_idx, align 8
  %.sroa.13215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 344
  store i64 %i.eu, ptr %.sroa.13215.0..sroa_idx, align 8
  %.sroa.14216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 352
  store ptr @41, ptr %.sroa.14216.0..sroa_idx, align 8
  %.sroa.15217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 360
  store i64 10, ptr %.sroa.15217.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 664
  store ptr %1, ptr %.sroa.17.0..sroa_idx, align 8
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 679
  store i8 0, ptr %.sroa.19.0..sroa_idx, align 1
  br label %bb.br

bb.bp:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtB11_6string6StringNtCsgO8S5jLFugx_23deltalake_catalog_unity17UnityCatalogErrorENtNtB4_6marker4SendEL_EEEB2S_.exit
  %.sroa.3188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3188.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5185, i64 40, i1 false)
  %.sroa.2187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2187.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3184, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !2529)
  %i.ev = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.dt, ptr %i.ev, align 8, !alias.scope !2532
  store i64 1, ptr %i.e, align 8, !alias.scope !2534, !noalias !2529
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.cl, %bb.ck, %bb.bp
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 282
  store i8 0, ptr %i.ew, align 2
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsgO8S5jLFugx_23deltalake_catalog_unity12UnityCatalogEBI_(ptr noalias noundef align 8 dereferenceable(160) %1)
          to label %bb.ak unwind label %bb.db

.body105:                                         ; preds = %bb.ay, %bb.bh, %bb.bn, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.cj, %bb.ci, %bb.dz, %bb.cm
  %.pn57.pn = phi { ptr, i32 } [ %i.gl, %bb.cj ], [ %.pn54.pn, %bb.cm ], [ %.pn54.pn, %bb.dz ], [ %i.gl, %bb.ci ], [ %.pn24, %bb.ay ], [ %i.do, %bb.bh ], [ %i.eb, %bb.bn ], [ %i.eb, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i ]
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 282
  store i8 0, ptr %i.ex, align 2
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsgO8S5jLFugx_23deltalake_catalog_unity12UnityCatalogEBI_(ptr noalias noundef align 8 dereferenceable(160) %1) #34
          to label %bb.ar unwind label %bb.aq

bb.bq:                                            ; preds = %bb.br
  %i.ey = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBP_12UnityCatalog42get_temp_table_credentials_with_permissionReB2t_B2t_B2t_E0EBP_(ptr noundef nonnull align 8 %i.ez) #34
          to label %bb.cm unwind label %bb.aq

bb.br:                                            ; preds = %bb.a, %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 4 uses
  invoke fastcc void @_RNCINvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtB8_12UnityCatalog42get_temp_table_credentials_with_permissionReB1M_B1M_B1M_E0B8_(ptr noalias noundef align 8 captures(none) dereferenceable(256) %i.q, ptr noundef nonnull align 8 %i.ez, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.bs unwind label %bb.bq

bb.bs:                                            ; preds = %bb.br
  %i.fa = load i64, ptr %i.q, align 8, !range !223, !noundef !12 ; 4 uses
  %i.fb = icmp eq i64 %i.fa, -9223372036854775806
  br i1 %i.fb, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  store i64 2, ptr %0, align 8
  br label %common.ret

bb.bu:                                            ; preds = %bb.bs
  %.sroa.3219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.3219, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.3219.0..sroa_idx, i64 72, i1 false)
  %.sroa.5220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.5220, ptr noundef nonnull align 8 dereferenceable(176) %.sroa.5220.0..sroa_idx, i64 176, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBP_12UnityCatalog42get_temp_table_credentials_with_permissionReB2t_B2t_B2t_E0EBP_(ptr noundef nonnull align 8 %i.ez)
          to label %bb.bw unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.bw:                                            ; preds = %bb.bu
  %i.fd = icmp eq i64 %i.fa, -9223372036854775807
  br i1 %i.fd, label %bb.cg, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 2 uses
  store i8 1, ptr %i.fe, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 281 ; 2 uses
  store i8 1, ptr %i.ff, align 1
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 2360 ; 2 uses
  store i64 %i.fa, ptr %i.fg, align 8
  %.sroa.4222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4222.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.3219, i64 72, i1 false)
  %.sroa.5223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2440
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.5223.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(176) %.sroa.5220, i64 176, i1 false)
  %i.fh = icmp eq i64 %i.fa, -9223372036854775808
  br i1 %i.fh, label %bb.cf, label %bb.by

bb.by:                                            ; preds = %bb.bx
  store i8 0, ptr %i.fe, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.p, ptr noundef nonnull align 8 dereferenceable(256) %i.fg, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke void @_RNvMs1_NtCsgO8S5jLFugx_23deltalake_catalog_unity6modelsNtB5_25TemporaryTableCredentials15get_credentials(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.o, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(256) %i.p)
          to label %bb.ca unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.fi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ce

bb.ca:                                            ; preds = %bb.by
  %i.fj = load ptr, ptr %i.o, align 8, !alias.scope !2535, !noalias !2538, !noundef !12
  %.not.i103 = icmp eq ptr %i.fj, null
  br i1 %.not.i103, label %bb.cd, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cz, %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 282
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.fl, i64 24, i1 false)
  %i.fm = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fm, ptr noundef nonnull align 8 dereferenceable(48) %i.k, i64 48, i1 false)
  %i.fn = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.fn, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 72, i1 false)
  store i64 0, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i8 0, ptr %i.fo, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 281
  store i8 0, ptr %i.fp, align 1
  store i8 0, ptr %i.fk, align 2
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsgO8S5jLFugx_23deltalake_catalog_unity12UnityCatalogEBI_(ptr noalias noundef align 8 dereferenceable(160) %1)
          to label %bb.dc unwind label %bb.db

bb.cd:                                            ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.fq = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 -9223372036854775802, ptr %i.fq, align 8, !alias.scope !2540
  br label %.sink.split

bb.ce:                                            ; preds = %bb.da, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBP_12UnityCatalog26get_temp_table_credentialsReB2d_B2d_E0EBP_.exit, %bb.bz
  %.pn51 = phi { ptr, i32 } [ %i.hk, %bb.da ], [ %.pn49, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBP_12UnityCatalog26get_temp_table_credentialsReB2d_B2d_E0EBP_.exit ], [ %i.fi, %bb.bz ] ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 2360 ; 2 uses
  %i.fs = load i64, ptr %i.fr, align 8, !range !46, !noundef !12
  %.not53 = icmp eq i64 %i.fs, -9223372036854775808
  br i1 %.not53, label %bb.dw, label %bb.dv

bb.cf:                                            ; preds = %bb.bx
  store i8 0, ptr %i.ff, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ez, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.3219, i64 72, i1 false)
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.fu = load ptr, ptr %i.ft, align 8, !nonnull !12, !noundef !12
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 168
end_hunk_10
begin_hunk_11_@_RNCNvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtB7_12UnityCatalog14get_credential0B7_:bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !2651
  unreachable

bb.bl:                                            ; preds = %bb.ay, %bb.at
  %i.fc = phi ptr [ %i.dm, %bb.ay ], [ %i.cn, %bb.at ]
  %i.fd = phi ptr [ %i.do, %bb.ay ], [ %i.cp, %bb.at ]
  %i.fe = phi ptr [ %i.dq, %bb.ay ], [ %i.cr, %bb.at ]
  %i.ff = phi ptr [ %i.ds, %bb.ay ], [ %i.ct, %bb.at ]
  %.sink.i.ph.i.i.i = phi i8 [ 4, %bb.ay ], [ 3, %bb.at ]
  store i8 %.sink.i.ph.i.i.i, ptr %i.ff, align 8, !noalias !2665
  store i8 3, ptr %i.fe, align 8, !noalias !2661
  store i8 3, ptr %i.fd, align 8, !noalias !2658
  br label %bb.cv

bb.bm:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4sync15batch_semaphore7AcquireECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i
  store i8 1, ptr %i.ds, align 8, !noalias !2665
  %i.fg = load ptr, ptr %i.dr, align 8, !noalias !2661, !nonnull !12, !align !336, !noundef !12 ; 4 uses
  store i8 1, ptr %i.dq, align 8, !noalias !2661
  store i8 1, ptr %i.do, align 8, !noalias !2658
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.fg, ptr %i.fh, align 8, !noalias !2647
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 40 ; 3 uses
  %i.fj = load i64, ptr %i.fi, align 8, !range !46, !alias.scope !2674, !noalias !2651, !noundef !12
  %.not.i.i = icmp eq i64 %i.fj, -9223372036854775808
  br i1 %.not.i.i, label %bb.bv, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 72
  %i.fl = load i32, ptr %i.fk, align 8, !range !2677, !noalias !2651, !noundef !12
  %.not10.i = icmp eq i32 %i.fl, 1000000000
  br i1 %.not10.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fg, i64 64
  %i.fn = load i64, ptr %i.dn, align 8, !noalias !2647, !noundef !12
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fp = load i32, ptr %i.fo, align 8, !range !2678, !noalias !2647, !noundef !12
  %i.fq = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant22checked_duration_since(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.fm, i64 noundef %i.fn, i32 noundef %i.fp)
          to label %bb.bt unwind label %bb.bs, !noalias !2651 ; 2 uses

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2647
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fi)
          to label %bb.br unwind label %bb.bq, !noalias !2651

bb.bq:                                            ; preds = %bb.bp
  %i.fr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2647
  br label %bb.cb

bb.br:                                            ; preds = %bb.bp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.573.i.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !2647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2647
  br label %bb.by

bb.bs:                                            ; preds = %bb.bo
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.bt:                                            ; preds = %bb.bo
  %i.ft = extractvalue { i64, i32 } %i.fq, 0
  %i.fu = extractvalue { i64, i32 } %i.fq, 1
  %.not.i39.i = icmp ne i32 %i.fu, 1000000000
  %i.fv = icmp ugt i64 %i.ft, 300
  %i.fw = select i1 %.not.i39.i, i1 %i.fv, i1 false
  br i1 %i.fw, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2647
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fi)
          to label %bb.bx unwind label %bb.bw, !noalias !2651

bb.bv:                                            ; preds = %bb.bt, %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2647
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i8 0, ptr %i.fx, align 8, !noalias !2647
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %.sroa.065.0.copyload.i = load ptr, ptr %i.fy, align 8, !noalias !2647, !nonnull !12, !noundef !12
  %.sroa.566.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %.sroa.566.0.copyload.i = load ptr, ptr %.sroa.566.0..sroa_idx.i, align 8, !noalias !2647, !nonnull !12, !noundef !12
  %.sroa.667.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.667.0.copyload.i = load ptr, ptr %.sroa.667.0..sroa_idx.i, align 8, !noalias !2647, !nonnull !12, !noundef !12
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.667.0.copyload.i, i64 24
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.566.0.copyload.i, i64 32
  %i.gb = load ptr, ptr %i.ga, align 8, !invariant.load !12, !noalias !2679, !nonnull !12
  %i.gc = invoke { ptr, ptr } %i.gb(ptr noundef nonnull %.sroa.065.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.fz) #37
          to label %bb.ca unwind label %bb.bz, !noalias !2651, !inline_history !2682 ; 2 uses

bb.bw:                                            ; preds = %bb.bu
  %i.gd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2647
  br label %bb.cb

bb.bx:                                            ; preds = %bb.bu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.573.i.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !2647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2647
  br label %bb.by

bb.by:                                            ; preds = %bb.cu, %bb.bx, %bb.br
  %i.ge = phi ptr [ %i.gp, %bb.cu ], [ %i.dm, %bb.br ], [ %i.dm, %bb.bx ] ; 2 uses
  %i.gf = phi ptr [ %i.gq, %bb.cu ], [ %i.dn, %bb.br ], [ %i.dn, %bb.bx ] ; 2 uses
  %.sroa.573.i.sroa.7.0 = phi i64 [ %.sroa.3.i.sroa.7.0.copyload, %bb.cu ], [ undef, %bb.br ], [ undef, %bb.bx ]
  %.sroa.573.i.sroa.8.0 = phi i8 [ %.sroa.3.i.sroa.8.0.copyload, %bb.cu ], [ undef, %bb.br ], [ undef, %bb.bx ]
  %.sroa.072.0.i = phi i64 [ %i.gv, %bb.cu ], [ -9223372036854775795, %bb.br ], [ -9223372036854775795, %bb.bx ]
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_RNvXsd_NtNtCskQDtHcQtBkN_5tokio4sync5mutexINtB5_10MutexGuardINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtCs6Po7BT7Nknu_5alloc6string6StringEEENtNtNtB11_3ops4drop4Drop4dropB1F_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.gg)
          to label %bb.cw unwind label %bb.z, !noalias !2651

bb.bz:                                            ; preds = %bb.bv
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %.body45.i

bb.ca:                                            ; preds = %bb.bv
  %i.gi = extractvalue { ptr, ptr } %i.gc, 0      ; 2 uses
  %i.gj = extractvalue { ptr, ptr } %i.gc, 1      ; 2 uses
  store ptr %i.gi, ptr %i.fy, align 8, !noalias !2647
  store ptr %i.gj, ptr %.sroa.566.0..sroa_idx.i, align 8, !noalias !2647
  br label %bb.ce

bb.cb:                                            ; preds = %.body45.i, %bb.bw, %bb.bs, %bb.bq
  %i.gk = phi ptr [ %i.hs, %.body45.i ], [ %i.dm, %bb.bw ], [ %i.dm, %bb.bs ], [ %i.dm, %bb.bq ]
  %i.gl = phi ptr [ %i.ht, %.body45.i ], [ %i.dn, %bb.bw ], [ %i.dn, %bb.bs ], [ %i.dn, %bb.bq ]
  %.pn20.pn.i = phi { ptr, i32 } [ %.pn17.pn.i, %.body45.i ], [ %i.gd, %bb.bw ], [ %i.fs, %bb.bs ], [ %i.fr, %bb.bq ]
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_RNvXsd_NtNtCskQDtHcQtBkN_5tokio4sync5mutexINtB5_10MutexGuardINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtCs6Po7BT7Nknu_5alloc6string6StringEEENtNtNtB11_3ops4drop4Drop4dropB1F_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.gm)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio4sync5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtCs6Po7BT7Nknu_5alloc6string6StringEEEEB1X_.exit43.i unwind label %bb.cc, !noalias !2651

bb.cc:                                            ; preds = %bb.ct, %bb.cr, %bb.cd, %bb.cb, %.body.i
  %i.gn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !2651
  unreachable

bb.cd:                                            ; preds = %bb.ce
  %i.go = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2647
  %.val26.i = load ptr, ptr %i.gr, align 8, !noalias !2647
  %.val27.i = load ptr, ptr %i.gs, align 8, !noalias !2647, !nonnull !12, !align !336, !noundef !12
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtB11_6string6StringENtB2B_17UnityCatalogErrorENtNtB4_6marker4SendEL_EEEB2B_(ptr %.val26.i, ptr nonnull %.val27.i) #34
          to label %.body45.i unwind label %bb.cc, !noalias !2651

bb.ce:                                            ; preds = %bb.ca, %bb.y
  %i.gp = phi ptr [ %i.ar, %bb.y ], [ %i.dm, %bb.ca ] ; 9 uses
  %i.gq = phi ptr [ %i.aq, %bb.y ], [ %i.dn, %bb.ca ] ; 8 uses
  %.val1.i.i36 = phi ptr [ %.val1.i.pre.i, %bb.y ], [ %i.gj, %bb.ca ]
  %.val.i.i37 = phi ptr [ %.val.i.pre.i, %bb.y ], [ %i.gi, %bb.ca ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2647
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2652)
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.val1.i.i36, i64 24
  %i.gu = load ptr, ptr %i.gt, align 8, !invariant.load !12, !noalias !2683, !nonnull !12
  invoke void %i.gu(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noundef nonnull %.val.i.i37, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) #37
          to label %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtB10_6string6StringENtB2i_17UnityCatalogErrorENtNtB8_6marker4SendEL_EEB1v_4pollB2i_.exit.i unwind label %bb.cd, !noalias !2651, !inline_history !2684

_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtB10_6string6StringENtB2i_17UnityCatalogErrorENtNtB8_6marker4SendEL_EEB1v_4pollB2i_.exit.i: ; preds = %bb.ce
  %i.gv = load i64, ptr %i.b, align 8, !range !2208, !noalias !2647, !noundef !12 ; 3 uses
  %i.gw = icmp eq i64 %i.gv, -9223372036854775794
  br i1 %i.gw, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtB10_6string6StringENtB2i_17UnityCatalogErrorENtNtB8_6marker4SendEL_EEB1v_4pollB2i_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2647
  br label %bb.cv

bb.cg:                                            ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtB10_6string6StringENtB2i_17UnityCatalogErrorENtNtB8_6marker4SendEL_EEB1v_4pollB2i_.exit.i
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.i.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx.i, i64 24, i1 false), !noalias !2647
  %.sroa.3.i.sroa.7.0..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.3.i.sroa.7.0.copyload = load i64, ptr %.sroa.3.i.sroa.7.0..sroa.3.0..sroa_idx.i.sroa_idx, align 8, !noalias !2647 ; 4 uses
  %.sroa.3.i.sroa.8.0..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.3.i.sroa.8.0.copyload = load i8, ptr %.sroa.3.i.sroa.8.0..sroa.3.0..sroa_idx.i.sroa_idx, align 8, !noalias !2647 ; 4 uses
  %.sroa.3.i.sroa.9.0..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.i.sroa.9, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.i.sroa.9.0..sroa.3.0..sroa_idx.i.sroa_idx, i64 7, i1 false), !noalias !2647
  %.sroa.569.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.569.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.569.0..sroa_idx.i, i64 24, i1 false), !noalias !2647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2647
  %.val.i = load ptr, ptr %i.gr, align 8, !noalias !2647 ; 5 uses
  %.val25.i = load ptr, ptr %i.gs, align 8, !noalias !2647, !nonnull !12, !align !336, !noundef !12 ; 5 uses
  %i.gx = load ptr, ptr %.val25.i, align 8, !invariant.load !12, !noalias !2651 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.gx, null
  br i1 %.not.i.i.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.gx(ptr noundef nonnull %.val.i)
          to label %bb.ci unwind label %bb.cj, !noalias !2651

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.gy = getelementptr inbounds nuw i8, ptr %.val25.i, i64 8
  %i.gz = load i64, ptr %i.gy, align 8, !range !41, !invariant.load !12, !noalias !2651 ; 2 uses
  %i.ha = icmp eq i64 %i.gz, 0
  br i1 %i.ha, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtB11_6string6StringENtB2B_17UnityCatalogErrorENtNtB4_6marker4SendEL_EEEB2B_.exit.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.ci
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.hb = getelementptr inbounds nuw i8, ptr %.val25.i, i64 16
  %i.hc = load i64, ptr %i.hb, align 8, !range !42, !invariant.load !12, !noalias !2651
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.gz, i64 noundef range(i64 1, -9223372036854775807) %i.hc) #31, !noalias !2651
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtB11_6string6StringENtB2B_17UnityCatalogErrorENtNtB4_6marker4SendEL_EEEB2B_.exit.i

bb.cj:                                            ; preds = %bb.ch
  %i.hd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.val25.i, i64 8
  %i.hf = load i64, ptr %i.he, align 8, !range !41, !invariant.load !12, !noalias !2651 ; 2 uses
  %i.hg = icmp eq i64 %i.hf, 0
  br i1 %i.hg, label %.body45.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.cj
  %i.hh = getelementptr inbounds nuw i8, ptr %.val25.i, i64 16
  %i.hi = load i64, ptr %i.hh, align 8, !range !42, !invariant.load !12, !noalias !2651
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.hf, i64 noundef range(i64 1, -9223372036854775807) %i.hi) #31, !noalias !2651
  br label %.body45.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtB11_6string6StringENtB2B_17UnityCatalogErrorENtNtB4_6marker4SendEL_EEEB2B_.exit.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.ci
  %.not.i47.i = icmp eq i64 %i.gv, -9223372036854775795
  br i1 %.not.i47.i, label %bb.ck, label %bb.cu

bb.ck:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtB11_6string6StringENtB2B_17UnityCatalogErrorENtNtB4_6marker4SendEL_EEEB2B_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.i.sroa.0, i64 24, i1 false), !noalias !2647
  %.sroa.3.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %.sroa.3.i.sroa.7.0.copyload, ptr %.sroa.3.i.sroa.7.0..sroa_idx, align 8, !noalias !2647
  %.sroa.3.i.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i8 %.sroa.3.i.sroa.8.0.copyload, ptr %.sroa.3.i.sroa.8.0..sroa_idx, align 8, !noalias !2647
  %.sroa.3.i.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.i.sroa.9.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.i.sroa.9, i64 7, i1 false), !noalias !2647
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2647
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
          to label %bb.cl unwind label %bb.ct, !noalias !2651

bb.cl:                                            ; preds = %bb.ck
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.val30.i = load ptr, ptr %i.hj, align 8, !noalias !2647, !nonnull !12, !align !336, !noundef !12 ; 9 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.val30.i, i64 40 ; 6 uses
  %i.hl = load i64, ptr %i.hk, align 8, !range !46, !alias.scope !2685, !noalias !2651, !noundef !12
  %i.hm = icmp eq i64 %i.hl, -9223372036854775808
  br i1 %i.hm, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtCs6Po7BT7Nknu_5alloc6string6StringEEEB19_.exit.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.hk)
          to label %bb.cp unwind label %bb.cn, !noalias !2651

bb.cn:                                            ; preds = %bb.cm
  %i.hn = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i48.i = load i64, ptr %i.hk, align 8, !alias.scope !2688, !noalias !2651 ; 2 uses
  %i.ho = icmp eq i64 %.val2.i.i.i.i48.i, 0
  br i1 %i.ho, label %bb.cr, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.hp = getelementptr inbounds nuw i8, ptr %.val30.i, i64 48
  %.val3.i.i.i.i49.i = load ptr, ptr %i.hp, align 8, !alias.scope !2697, !noalias !2651, !nonnull !12, !noundef !12
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i49.i, i64 noundef %.val2.i.i.i.i48.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !2698
  br label %bb.cr

bb.cp:                                            ; preds = %bb.cm
  %.val.i.i.i.i50.i = load i64, ptr %i.hk, align 8, !alias.scope !2688, !noalias !2651 ; 2 uses
  %i.hq = icmp eq i64 %.val.i.i.i.i50.i, 0
  br i1 %i.hq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtCs6Po7BT7Nknu_5alloc6string6StringEEEB19_.exit.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.hr = getelementptr inbounds nuw i8, ptr %.val30.i, i64 48
  %.val1.i.i.i.i51.i = load ptr, ptr %i.hr, align 8, !alias.scope !2697, !noalias !2651, !nonnull !12, !noundef !12
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i51.i, i64 noundef %.val.i.i.i.i50.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !2701
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtCs6Po7BT7Nknu_5alloc6string6StringEEEB19_.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtCs6Po7BT7Nknu_5alloc6string6StringEEEB19_.exit.i: ; preds = %bb.cq, %bb.cp, %bb.cl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hk, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.i.sroa.0, i64 24, i1 false), !noalias !2651
  %.sroa.3.i.sroa.7.0..sroa_idx136 = getelementptr inbounds nuw i8, ptr %.val30.i, i64 64
  store i64 %.sroa.3.i.sroa.7.0.copyload, ptr %.sroa.3.i.sroa.7.0..sroa_idx136, align 8, !noalias !2651
  %.sroa.3.i.sroa.8.0..sroa_idx141 = getelementptr inbounds nuw i8, ptr %.val30.i, i64 72
  store i8 %.sroa.3.i.sroa.8.0.copyload, ptr %.sroa.3.i.sroa.8.0..sroa_idx141, align 8, !noalias !2651
  %.sroa.3.i.sroa.9.0..sroa_idx144 = getelementptr inbounds nuw i8, ptr %.val30.i, i64 73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.i.sroa.9.0..sroa_idx144, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.i.sroa.9, i64 7, i1 false), !noalias !2651
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.573.i.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !2647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2647
  invoke void @_RNvXsd_NtNtCskQDtHcQtBkN_5tokio4sync5mutexINtB5_10MutexGuardINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtCs6Po7BT7Nknu_5alloc6string6StringEEENtNtNtB11_3ops4drop4Drop4dropB1F_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.hj)
          to label %bb.cw unwind label %bb.z, !noalias !2651

bb.cr:                                            ; preds = %bb.co, %bb.cn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hk, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.i.sroa.0, i64 24, i1 false), !noalias !2651
  %.sroa.3.i.sroa.7.0..sroa_idx134 = getelementptr inbounds nuw i8, ptr %.val30.i, i64 64
  store i64 %.sroa.3.i.sroa.7.0.copyload, ptr %.sroa.3.i.sroa.7.0..sroa_idx134, align 8, !noalias !2651
  %.sroa.3.i.sroa.8.0..sroa_idx139 = getelementptr inbounds nuw i8, ptr %.val30.i, i64 72
  store i8 %.sroa.3.i.sroa.8.0.copyload, ptr %.sroa.3.i.sroa.8.0..sroa_idx139, align 8, !noalias !2651
  %.sroa.3.i.sroa.9.0..sroa_idx143 = getelementptr inbounds nuw i8, ptr %.val30.i, i64 73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.i.sroa.9.0..sroa_idx143, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.i.sroa.9, i64 7, i1 false), !noalias !2651
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.a) #34
          to label %bb.cs unwind label %bb.cc, !noalias !2651

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2647
  br label %.body45.i

.body45.i:                                        ; preds = %bb.bz, %bb.cd, %bb.cj, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.ct, %bb.cs
  %i.hs = phi ptr [ %i.gp, %bb.cs ], [ %i.gp, %bb.ct ], [ %i.dm, %bb.bz ], [ %i.gp, %bb.cd ], [ %i.gp, %bb.cj ], [ %i.gp, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ]
  %i.ht = phi ptr [ %i.gq, %bb.cs ], [ %i.gq, %bb.ct ], [ %i.dn, %bb.bz ], [ %i.gq, %bb.cd ], [ %i.gq, %bb.cj ], [ %i.gq, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ]
  %.pn17.pn.i = phi { ptr, i32 } [ %i.hn, %bb.cs ], [ %i.hu, %bb.ct ], [ %i.gh, %bb.bz ], [ %i.go, %bb.cd ], [ %i.hd, %bb.cj ], [ %i.hd, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2647
  br label %bb.cb

bb.ct:                                            ; preds = %bb.ck
  %i.hu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2647
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtCs6Po7BT7Nknu_5alloc6string6StringEEBN_(ptr noalias noundef align 8 dereferenceable(40) %i.c) #34
          to label %.body45.i unwind label %bb.cc, !noalias !2651

bb.cu:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtB11_6string6StringENtB2B_17UnityCatalogErrorENtNtB4_6marker4SendEL_EEEB2B_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.974.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.569.i, i64 24, i1 false), !noalias !2647
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.573.i.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.i.sroa.0, i64 24, i1 false), !noalias !2647
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.573.i.sroa.9, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.i.sroa.9, i64 7, i1 false), !noalias !2647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2647
  br label %bb.by

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio4sync5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtCs6Po7BT7Nknu_5alloc6string6StringEEEEB1X_.exit43.i: ; preds = %bb.cb, %.body.i, %bb.z
  %i.hv = phi ptr [ %i.ba, %bb.z ], [ %i.gk, %bb.cb ], [ %i.bi, %.body.i ]
  %i.hw = phi ptr [ %i.bb, %bb.z ], [ %i.gl, %bb.cb ], [ %i.bj, %.body.i ]
  %.pn23.i = phi { ptr, i32 } [ %i.bc, %bb.z ], [ %.pn20.pn.i, %bb.cb ], [ %eh.lpad-body.i, %.body.i ]
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i8 0, ptr %i.hx, align 8, !noalias !2647
  store i8 2, ptr %i.hv, align 1, !noalias !2647
  br label %.body40

bb.cv:                                            ; preds = %bb.bl, %bb.cf
  %i.hy = phi ptr [ %i.fc, %bb.bl ], [ %i.gp, %bb.cf ]
  %.sink.i.ph = phi i8 [ 3, %bb.bl ], [ 4, %bb.cf ]
  store i8 %.sink.i.ph, ptr %i.hy, align 1, !noalias !2647
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.573.i.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.573.i.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.974.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.569.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9107.sroa.0)
  store i64 -9223372036854775794, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %common.ret

bb.cw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtCs6Po7BT7Nknu_5alloc6string6StringEEEB19_.exit.i, %bb.by
  %i.hz = phi ptr [ %i.gp, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtCs6Po7BT7Nknu_5alloc6string6StringEEEB19_.exit.i ], [ %i.ge, %bb.by ]
  %i.ia = phi ptr [ %i.gq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtCs6Po7BT7Nknu_5alloc6string6StringEEEB19_.exit.i ], [ %i.gf, %bb.by ]
  %.sroa.573.i.sroa.7.1 = phi i64 [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtCs6Po7BT7Nknu_5alloc6string6StringEEEB19_.exit.i ], [ %.sroa.573.i.sroa.7.0, %bb.by ]
  %.sroa.573.i.sroa.8.1 = phi i8 [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtCs6Po7BT7Nknu_5alloc6string6StringEEEB19_.exit.i ], [ %.sroa.573.i.sroa.8.0, %bb.by ]
  %.sroa.072.1.i = phi i64 [ -9223372036854775795, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtCs6Po7BT7Nknu_5alloc6string6StringEEEB19_.exit.i ], [ %.sroa.072.0.i, %bb.by ] ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i8 0, ptr %i.ib, align 8, !noalias !2647
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9107.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.573.i.sroa.0, i64 24, i1 false), !noalias !2704
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9107.sroa.8, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.573.i.sroa.9, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10108, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.974.i, i64 24, i1 false)
  store i8 1, ptr %i.hz, align 1, !noalias !2647
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.573.i.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.573.i.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.974.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.569.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3111.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9107.sroa.0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9107.sroa.0)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5tokenINtBO_10TokenCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringE18get_or_insert_withNCNCNvMs5_BS_NtBS_12UnityCatalog14get_credential00INtNtB4_3pin3PinINtNtB24_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtBO_14TemporaryTokenB20_ENtBS_17UnityCatalogErrorENtNtB4_6marker4SendEL_EEB5K_E0EBS_(ptr noundef nonnull align 8 %i.ia)
          to label %bb.cy unwind label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %.body68

bb.cy:                                            ; preds = %bb.cw
  %.not.i42 = icmp eq i64 %.sroa.072.1.i, -9223372036854775795
  br i1 %.not.i42, label %bb.da, label %bb.dv

bb.cz:                                            ; preds = %bb.da
  %i.id = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %.body60

bb.da:                                            ; preds = %bb.cy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3111.sroa.0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.j, ptr %i.f, align 8
  %.sroa.5122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5122.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @47, ptr noundef nonnull %i.f)
          to label %bb.dc unwind label %bb.cz

bb.db:                                            ; preds = %bb.dc
  %i.ie = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.h) #34
end_hunk_11
begin_hunk_12_@_RNSNvYNCINvNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle15spawn_uncheckedNCNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB1e_19UnityCatalogBuilder17execute_uc_futureNCNvB1a_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtBd_11collections4hash3map7HashMapB3O_B3O_EENtB1e_17UnityCatalogErrorEEs_00uEs_0INtNtNtB3g_3ops8function6FnOnceuE9call_once6vtableB1e_:bb.a
  unreachable

bb.f:                                             ; preds = %.body15.i
  %i.m = extractvalue { ptr, ptr } %i.k, 0
  %i.n = extractvalue { ptr, ptr } %i.k, 1
  br label %bb.h

bb.g:                                             ; preds = %_RNvXsl_NtNtCsbvkFyIu7lgC_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNCINvNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle15spawn_uncheckedNCNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2l_19UnityCatalogBuilder17execute_uc_futureNCNvB2h_25get_uc_location_and_token0INtNtB9_6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtB1k_11collections4hash3map7HashMapB4F_B4F_EENtB2l_17UnityCatalogErrorEEs_00uEs_00EINtNtNtB9_3ops8function6FnOnceuE9call_onceB2l_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2777
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2774
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.o = phi ptr [ undef, %bb.g ], [ %i.n, %bb.f ] ; 2 uses
  %i.p = phi ptr [ null, %bb.g ], [ %i.m, %bb.f ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !2771, !nonnull !12, !noundef !12 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2780)
  %i.t = load i64, ptr %i.s, align 8, !range !39, !alias.scope !2780, !noalias !2771, !noundef !12
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %.val.i.i = load ptr, ptr %i.v, align 8, !alias.scope !2780, !noalias !2771, !noundef !12 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 40 ; 2 uses
  %.val1.i.i = load ptr, ptr %i.w, align 8, !alias.scope !2780, !noalias !2771 ; 6 uses
  %i.x = icmp eq ptr %.val.i.i, null
  br i1 %i.x, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.y = load ptr, ptr %.val1.i.i, align 8, !invariant.load !12, !noalias !2783 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void %i.y(ptr noundef nonnull %.val.i.i)
          to label %bb.l unwind label %bb.m, !noalias !2783

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !41, !invariant.load !12, !noalias !2783 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !42, !invariant.load !12, !noalias !2783
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) %i.ad) #31, !noalias !2783
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

bb.m:                                             ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !range !41, !invariant.load !12, !noalias !2783 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.o, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !range !42, !invariant.load !12, !noalias !2783
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) %i.aj) #31, !noalias !2783
  br label %bb.o

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.l, %bb.i, %bb.h
  store i64 1, ptr %i.s, align 8, !noalias !2771
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %i.p, ptr %.sroa.5.0..sroa_idx3.i, align 8, !noalias !2771
  %.sroa.6.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store ptr %i.o, ptr %.sroa.6.0..sroa_idx5.i, align 8, !noalias !2771
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2771
  store ptr %i.r, ptr %i.d, align 8, !noalias !2771
  %i.ak = atomicrmw sub ptr %i.r, i64 1 release, align 8, !noalias !2784
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.n, label %_RNCINvNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle15spawn_uncheckedNCNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB19_19UnityCatalogBuilder17execute_uc_futureNCNvB15_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtB8_11collections4hash3map7HashMapB3J_B3J_EENtB19_17UnityCatalogErrorEEs_00uEs_0B19_.exit

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle6PacketuEE9drop_slowCskQDtHcQtBkN_5tokio(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #36, !noalias !2771
  br label %_RNCINvNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle15spawn_uncheckedNCNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB19_19UnityCatalogBuilder17execute_uc_futureNCNvB15_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtB8_11collections4hash3map7HashMapB3J_B3J_EENtB19_17UnityCatalogErrorEEs_00uEs_0B19_.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle6PacketuEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit14.i: ; preds = %bb.p, %bb.o
  resume { ptr, i32 } %i.ae

bb.o:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, %bb.m
  store i64 1, ptr %i.s, align 8, !noalias !2771
  store ptr %i.p, ptr %i.v, align 8, !noalias !2771
  store ptr %i.o, ptr %i.w, align 8, !noalias !2771
  %i.am = atomicrmw sub ptr %i.r, i64 1 release, align 8, !noalias !2789
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle6PacketuEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit14.i

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle6PacketuEE9drop_slowCskQDtHcQtBkN_5tokio(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q) #36
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle6PacketuEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit14.i unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RNCINvNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle15spawn_uncheckedNCNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB19_19UnityCatalogBuilder17execute_uc_futureNCNvB15_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtB8_11collections4hash3map7HashMapB3J_B3J_EENtB19_17UnityCatalogErrorEEs_00uEs_0B19_.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2771
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.540.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCsgO8S5jLFugx_23deltalake_catalog_unity6clientNtB2_13ClientOptions6client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 11 uses
  %i.e = alloca [72 x i8], align 8                ; 5 uses
  %i.f = alloca [56 x i8], align 8                ; 9 uses
  %i.g = alloca [56 x i8], align 8                ; 4 uses
  %i.h = alloca [56 x i8], align 8                ; 10 uses
  %.sroa.10 = alloca [3 x i8], align 1            ; 2 uses
  %i.i = alloca [1016 x i8], align 8              ; 3 uses
  %i.j = alloca [8 x i8], align 8                 ; 5 uses
  %i.k = alloca [1016 x i8], align 8              ; 4 uses
  %i.l = alloca [1016 x i8], align 8              ; 4 uses
  %i.m = alloca [1016 x i8], align 8              ; 4 uses
  %i.n = alloca [256 x i8], align 8               ; 7 uses
  %i.o = alloca [256 x i8], align 8               ; 10 uses
  %i.p = alloca [96 x i8], align 8                ; 9 uses
  %i.q = alloca [1016 x i8], align 8              ; 5 uses
  %i.r = alloca [1016 x i8], align 8              ; 4 uses
  %i.s = alloca [1016 x i8], align 8              ; 4 uses
  %i.t = alloca [1016 x i8], align 8              ; 29 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @_RNvMs1_NtNtCsgO6CtM78C4N_7reqwest10async_impl6clientNtB5_13ClientBuilder3new(ptr noalias noundef nonnull sret([1016 x i8]) align 8 captures(none) dereferenceable(1016) %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.v = load i8, ptr %i.u, align 8, !range !1236, !noundef !12
  %.not = icmp eq i8 %i.v, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1016) %i.s, ptr noundef nonnull align 8 dereferenceable(1016) %i.t, i64 1016, i1 false)
  call void @_RINvMs2_NtNtCsgO6CtM78C4N_7reqwest10async_impl6clientNtB6_13ClientBuilder10user_agentRNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([1016 x i8]) align 8 captures(none) dereferenceable(1016) %i.t, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(1016) %i.s, ptr noundef nonnull align 8 %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1016) %i.r, ptr noundef nonnull align 8 dereferenceable(1016) %i.t, i64 1016, i1 false)
  call void @_RINvMs2_NtNtCsgO6CtM78C4N_7reqwest10async_impl6clientNtB6_13ClientBuilder10user_agentReECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([1016 x i8]) align 8 captures(none) dereferenceable(1016) %i.t, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(1016) %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) @76, i64 noundef 30)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.e

bb.d:                                             ; preds = %bb.o
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread208

bb.e:                                             ; preds = %bb.b, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !range !94, !noundef !12
  %.not148 = icmp eq i64 %i.y, 3
  br i1 %.not148, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1016) %i.q, ptr noundef nonnull align 8 dereferenceable(1016) %i.t, i64 1016, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !2794)
  call void @llvm.experimental.noalias.scope.decl(metadata !2797)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.aa = load i16, ptr %i.z, align 8, !alias.scope !2797, !noalias !2794, !noundef !12
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ac = invoke { ptr, i64 } @_RNvXse_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxSNtNtNtCs4j34XAPZOn0_4http6header3map3PosENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ab)
          to label %.noexc unwind label %.body.thread219 ; 2 uses

.body.thread219:                                  ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.noexc:                                           ; preds = %bb.f
  %i.ae = extractvalue { ptr, i64 } %i.ac, 0      ; 4 uses
  %i.af = extractvalue { ptr, i64 } %i.ac, 1      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2799
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtBK_5value11HeaderValueEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag)
          to label %bb.i unwind label %bb.h, !noalias !2794

bb.g:                                             ; preds = %bb.j, %bb.h
  %.pn.i = phi { ptr, i32 } [ %i.ak, %bb.j ], [ %i.ai, %bb.h ] ; 2 uses
  %i.ah = icmp eq i64 %i.af, 0
  br i1 %i.ah, label %.body.thread, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ae) ]
  %2 = shl nuw nsw i64 %i.af, 2
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ae, i64 noundef %2, i64 noundef 2) #31, !noalias !2794
  br label %.body.thread

bb.h:                                             ; preds = %.noexc
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.i:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2799
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 64
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aj)
          to label %bb.m unwind label %bb.j, !noalias !2794

bb.j:                                             ; preds = %bb.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1i_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.c) #34
          to label %bb.g unwind label %bb.k, !noalias !2794

bb.k:                                             ; preds = %bb.j
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !2794
  unreachable

bb.l:                                             ; preds = %bb.m, %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !range !46, !noundef !12
  %.not149 = icmp eq i64 %i.an, -9223372036854775808
  br i1 %.not149, label %bb.p, label %bb.o

bb.m:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ae) ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  store i16 %i.aa, ptr %i.ao, align 8, !alias.scope !2794, !noalias !2797
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  store ptr %i.ae, ptr %i.ap, align 8, !alias.scope !2794, !noalias !2797
  %i.aq = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  store i64 %i.af, ptr %i.aq, align 8, !alias.scope !2794, !noalias !2797
  %i.ar = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !2797
  %i.as = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !2797
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.p, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.x, i64 24, i1 false), !alias.scope !2799
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2799
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2799
  call void @_RNvMs2_NtNtCsgO6CtM78C4N_7reqwest10async_impl6clientNtB5_13ClientBuilder15default_headers(ptr noalias noundef nonnull sret([1016 x i8]) align 8 captures(none) dereferenceable(1016) %i.t, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(1016) %i.q, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.l

.body.thread:                                     ; preds = %bb.g, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i, %.body.thread219
  %eh.lpad-body218 = phi { ptr, i32 } [ %i.ad, %.body.thread219 ], [ %.pn.i, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i ], [ %.pn.i, %bb.g ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl6client13ClientBuilderECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(1016) %i.q) #34
          to label %.thread unwind label %bb.n

bb.n:                                             ; preds = %bb.ay, %.thread208, %.body.thread
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.o:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke void @_RINvMs_NtCsgO6CtM78C4N_7reqwest5proxyNtB5_5Proxy3allRNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([256 x i8]) align 8 captures(none) dereferenceable(256) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.am)
          to label %bb.q unwind label %bb.d

bb.p:                                             ; preds = %bb.v, %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.av = load i32, ptr %i.au, align 8, !range !2677, !noundef !12 ; 2 uses
  %.not150 = icmp eq i32 %i.av, 1000000000
  br i1 %.not150, label %bb.y, label %bb.x

bb.q:                                             ; preds = %bb.o
  %i.aw = load i64, ptr %i.o, align 8, !range !557, !noundef !12 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  br i1 %i.ax, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.az = load ptr, ptr %i.ay, align 8, !nonnull !12, !align !336, !noundef !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2800
  store ptr %i.az, ptr %i.a, align 8, !noalias !2804
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !2807
  %i.ba = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef 8) #31, !noalias !2807 ; 3 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.s, label %bb.w, !prof !22

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #32
          to label %.noexc.i unwind label %bb.t, !noalias !2807

.noexc.i:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #34
          to label %.thread208 unwind label %bb.u, !noalias !2807

bb.u:                                             ; preds = %bb.t
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !2807
  unreachable

bb.v:                                             ; preds = %bb.q
  %.sroa.5125.sroa.0.0.copyload = load i64, ptr %i.ay, align 8
  %.sroa.5125.sroa.5.0..sroa.5125.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.5125.sroa.5.0.copyload = load ptr, ptr %.sroa.5125.sroa.5.0..sroa.5125.0..sroa_idx.sroa_idx, align 8
  %.sroa.5125.sroa.6.0..sroa.5125.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.5125.sroa.6.0.copyload = load i64, ptr %.sroa.5125.sroa.6.0..sroa.5125.0..sroa_idx.sroa_idx, align 8
  %.sroa.5125.sroa.7.0..sroa.5125.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.sroa.6126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %.sroa.8.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %.sroa.8.0..sroa_idx3, ptr noundef nonnull align 8 dereferenceable(208) %.sroa.6126.0..sroa_idx, i64 208, i1 false)
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx2.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx2.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx2.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.be = load <2 x ptr>, ptr %.sroa.5125.sroa.7.0..sroa.5125.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  store i64 %i.aw, ptr %i.n, align 8
  store i64 %.sroa.5125.sroa.0.0.copyload, ptr %.sroa.6.0..sroa_idx2, align 8
  store ptr %.sroa.5125.sroa.5.0.copyload, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx2.sroa_idx, align 8
  store i64 %.sroa.5125.sroa.6.0.copyload, ptr %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx2.sroa_idx, align 8
  store <2 x ptr> %i.be, ptr %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx2.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1016) %i.m, ptr noundef nonnull align 8 dereferenceable(1016) %i.t, i64 1016, i1 false)
  call void @_RNvMs2_NtNtCsgO6CtM78C4N_7reqwest10async_impl6clientNtB5_13ClientBuilder5proxy(ptr noalias noundef nonnull sret([1016 x i8]) align 8 captures(none) dereferenceable(1016) %i.t, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(1016) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(256) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.p

bb.w:                                             ; preds = %bb.r
  store ptr %i.az, ptr %i.ba, align 8, !noalias !2807
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %i.bf, align 8
  %.sroa.2201.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @75, ptr %.sroa.2201.0..sroa_idx, align 8
  %.sroa.3202.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 11, ptr %.sroa.3202.0..sroa_idx, align 8
  %.sroa.4203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ba, ptr %.sroa.4203.0..sroa_idx, align 8
  %.sroa.5204.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @74, ptr %.sroa.5204.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl6client13ClientBuilderECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(1016) %i.t)
  br label %bb.aw

bb.x:                                             ; preds = %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !12
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 832
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 840
  store i64 %i.bh, ptr %.sroa.2.0..sroa_idx, align 8
  store i32 %i.av, ptr %.sroa.3.0..sroa_idx, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.p
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.bj = load i32, ptr %i.bi, align 8, !range !2677, !noundef !12 ; 2 uses
  %.not151 = icmp eq i32 %i.bj, 1000000000
  br i1 %.not151, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.bl = load i64, ptr %i.bk, align 8, !noundef !12
  %.sroa.217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 736
  %.sroa.320.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 744
  store i64 %i.bl, ptr %.sroa.217.0..sroa_idx, align 8
  store i32 %i.bj, ptr %.sroa.320.0..sroa_idx, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.bn = load i32, ptr %i.bm, align 8, !range !2677, !noundef !12 ; 2 uses
  %.not152 = icmp eq i32 %i.bn, 1000000000
  br i1 %.not152, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.bp = load i64, ptr %i.bo, align 8, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1016) %i.l, ptr noundef nonnull align 8 dereferenceable(1016) %i.t, i64 1016, i1 false)
  call void @_RINvMs2_NtNtCsgO6CtM78C4N_7reqwest10async_impl6clientNtB6_13ClientBuilder17pool_idle_timeoutNtNtCsbvkFyIu7lgC_4core4time8DurationECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([1016 x i8]) align 8 captures(none) dereferenceable(1016) %i.t, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(1016) %i.l, i64 noundef %i.bp, i32 noundef %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bq = load i64, ptr %1, align 8, !range !39, !noundef !12
  %i.br = trunc nuw i64 %i.bq to i1
  br i1 %i.br, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !noundef !12
  %.sroa.226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 928
  store i64 %i.bt, ptr %.sroa.226.0..sroa_idx, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.bv = load i32, ptr %i.bu, align 8, !range !2677, !noundef !12 ; 2 uses
  %.not153 = icmp eq i32 %i.bv, 1000000000
  br i1 %.not153, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1016) %i.k, ptr noundef nonnull align 8 dereferenceable(1016) %i.t, i64 1016, i1 false)
  call void @_RINvMs2_NtNtCsgO6CtM78C4N_7reqwest10async_impl6clientNtB6_13ClientBuilder25http2_keep_alive_intervalNtNtCsbvkFyIu7lgC_4core4time8DurationECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([1016 x i8]) align 8 captures(none) dereferenceable(1016) %i.t, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(1016) %i.k, i64 noundef %i.bx, i32 noundef %i.bv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.bz = load i32, ptr %i.by, align 8, !range !2677, !noundef !12 ; 2 uses
  %.not154 = icmp eq i32 %i.bz, 1000000000
  br i1 %.not154, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.cb = load i64, ptr %i.ca, align 8, !noundef !12
  %.sroa.232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 864
  %.sroa.335.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 872
  store i64 %i.cb, ptr %.sroa.232.0..sroa_idx, align 8
  store i32 %i.bz, ptr %.sroa.335.0..sroa_idx, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 322
  %i.cd = load i8, ptr %i.cc, align 2, !range !599, !noundef !12
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ak, %bb.ai
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 323
  %i.cg = load i8, ptr %i.cf, align 1, !range !599, !noundef !12
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.am, label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %.sroa.241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 992
  store i8 1, ptr %.sroa.241.0..sroa_idx, align 8
  br label %bb.aj

bb.al:                                            ; preds = %bb.am, %bb.aj
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 324
  %i.cj = load i8, ptr %i.ci, align 4, !range !599, !noundef !12
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.ao, label %bb.an

bb.am:                                            ; preds = %bb.aj
  %.sroa.247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 996
  store i8 0, ptr %.sroa.247.0..sroa_idx, align 4
  br label %bb.al

bb.an:                                            ; preds = %bb.ao, %bb.al
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 321
  %i.cm = load i8, ptr %i.cl, align 1, !range !599, !noundef !12
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.aq, label %bb.ap

bb.ao:                                            ; preds = %bb.al
  %.sroa.253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 996
  store i8 1, ptr %.sroa.253.0..sroa_idx, align 4
  br label %bb.an

bb.ap:                                            ; preds = %bb.aq, %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1016) %i.i, ptr noundef nonnull align 8 dereferenceable(1016) %i.t, i64 1016, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.cp = load i8, ptr %i.co, align 8, !range !599, !noundef !12
  %i.cq = xor i8 %i.cp, 1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.i, i64 995
  store i8 %i.cq, ptr %i.cr, align 1
  %i.cs = call { i64, ptr } @_RNvMs2_NtNtCsgO6CtM78C4N_7reqwest10async_impl6clientNtB5_13ClientBuilder5build(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(1016) %i.i) ; 2 uses
  %i.ct = extractvalue { i64, ptr } %i.cs, 0
  %i.cu = extractvalue { i64, ptr } %i.cs, 1      ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cu) ]
  %3 = trunc nuw i64 %i.ct to i1
  br i1 %3, label %bb.ar, label %bb.as

bb.aq:                                            ; preds = %bb.an
  %.sroa.259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 977
  store i8 0, ptr %.sroa.259.0..sroa_idx, align 1
  br label %bb.ap

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 -9223372036854775808, ptr %i.e, align 8
  %.sroa.282.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.cu, ptr %.sroa.282.0..sroa_idx, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvXs0_CsgO8S5jLFugx_23deltalake_catalog_unityNtNtCs14kWLkQVSKO_14deltalake_core12data_catalog16DataCatalogErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_17UnityCatalogErrorE4from(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cv, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.e)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.aw

bb.as:                                            ; preds = %bb.ap
  store ptr %i.cu, ptr %i.j, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.cx = load i32, ptr %i.cw, align 8, !range !2677, !noundef !12
  %.not155 = icmp eq i32 %i.cx, 1000000000
  br i1 %.not155, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvXs4_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5retryNtNtNtCsiW0Uiwe4n1P_14retry_policies8policies19exponential_backoff18ExponentialBackoffINtNtCsbvkFyIu7lgC_4core7convert4FromRNtB5_11RetryConfigE4from(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.cy)
          to label %bb.av unwind label %bb.ax

bb.au:                                            ; preds = %bb.as, %bb.av
  %.sroa.490.0 = phi i64 [ %.sroa.5115.0.copyload, %bb.av ], [ 1, %bb.as ]
  %.sroa.699.0 = phi i64 [ %.sroa.8118.0.copyload, %bb.av ], [ 1800, %bb.as ]
  %.sroa.8107.0 = phi i32 [ %.sroa.11.0.copyload, %bb.av ], [ 2, %bb.as ]
  %.sroa.9.0 = phi i8 [ %.sroa.12.0.copyload, %bb.av ], [ 1, %bb.as ]
  %i.cz = phi <2 x i32> [ %i.df, %bb.av ], [ <i32 1, i32 3>, %bb.as ]
  %i.da = phi <2 x i32> [ %i.dg, %bb.av ], [ <i32 0, i32 undef>, %bb.as ]
  %i.db = phi <2 x i32> [ %i.dh, %bb.av ], [ <i32 0, i32 undef>, %bb.as ]
  %i.dc = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store <2 x i32> %i.cz, ptr %i.dc, align 8
  %.sroa.490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.490.0, ptr %.sroa.490.0..sroa_idx, align 8
  %.sroa.593.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store <2 x i32> %i.da, ptr %.sroa.593.0..sroa_idx, align 8
  %.sroa.699.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 %.sroa.699.0, ptr %.sroa.699.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store <2 x i32> %i.db, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i32 %.sroa.8107.0, ptr %.sroa.8107.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  store i8 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.10, i64 3, i1 false)
  store i64 3, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store ptr %i.cu, ptr %i.dd, align 8
  store i64 0, ptr %i.f, align 8
  %.sroa.4140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4140.0..sroa_idx, align 8
  %.sroa.5141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.4143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5141.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4143.0..sroa_idx, align 8
  %.sroa.5144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i64 0, ptr %.sroa.5144.0..sroa_idx, align 8
  call void @_RINvMNtCsjkRrtHEnRPD_18reqwest_middleware6clientNtB3_13ClientBuilder4withINtNtCs5cfGYlCJjjB_13reqwest_retry10middleware24RetryTransientMiddlewareNtNtNtCsiW0Uiwe4n1P_14retry_policies8policies19exponential_backoff18ExponentialBackoffEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.g, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.f, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvMNtCsjkRrtHEnRPD_18reqwest_middleware6clientNtB2_13ClientBuilder5build(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.de, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  %i.df = load <2 x i32>, ptr %i.d, align 8
  %.sroa.5115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5115.0.copyload = load i64, ptr %.sroa.5115.0..sroa_idx, align 8
  %.sroa.6116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.dg = load <2 x i32>, ptr %.sroa.6116.0..sroa_idx, align 8
  %.sroa.8118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.8118.0.copyload = load i64, ptr %.sroa.8118.0..sroa_idx, align 8
  %.sroa.9119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.dh = load <2 x i32>, ptr %.sroa.9119.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.11.0.copyload = load i32, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %.sroa.12.0.copyload = load i8, ptr %.sroa.12.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.10, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.13.0..sroa_idx, i64 3, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.au

bb.aw:                                            ; preds = %bb.w, %bb.ar, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  ret void

bb.ax:                                            ; preds = %bb.at
  %lpad.thr_comm.split-lp224 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.di = atomicrmw sub ptr %i.cu, i64 1 release, align 8, !noalias !2808
  %i.dj = icmp eq i64 %i.di, 1
  br i1 %i.dj, label %bb.ay, label %.thread

bb.ay:                                            ; preds = %bb.ax
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCsgO6CtM78C4N_7reqwest10async_impl6client9ClientRefE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j) #36
          to label %.thread unwind label %bb.n

.thread:                                          ; preds = %bb.ax, %bb.ay, %.body.thread, %.thread208
  %.pn207 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp224, %bb.ax ], [ %eh.lpad-body158211, %.thread208 ], [ %lpad.thr_comm.split-lp224, %bb.ay ], [ %eh.lpad-body218, %.body.thread ]
  resume { ptr, i32 } %.pn207

.thread208:                                       ; preds = %bb.t, %bb.d
  %eh.lpad-body158211 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.d ], [ %i.bc, %bb.t ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl6client13ClientBuilderECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(1016) %i.t) #34
          to label %.thread unwind label %bb.n
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE10initializeCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull returned align 8 %0) unnamed_addr #3 {
bb.a:
  tail call void @_RNvNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull %0, ptr noundef nonnull @_RINvNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native5eager7destroyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateECsgO8S5jLFugx_23deltalake_catalog_unity)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.a, align 8
  ret ptr %0
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE10initializeCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull returned align 8 %0) unnamed_addr #3 {
bb.a:
  tail call void @_RNvNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull %0, ptr noundef nonnull @_RINvNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native5eager7destroyNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextECsgO8S5jLFugx_23deltalake_catalog_unity)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 1, ptr %i.a, align 8
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs0_NtNtCs95DO3lnzZ3L_4moka6common10concurrentINtB5_11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringE13last_modifiedCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = tail call { i64, i64 } @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka6common4time11atomic_timeNtB4_13AtomicInstant7instant(ptr noundef nonnull align 8 %i.b)
  ret { i64, i64 } %i.c
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden noundef zeroext i1 @_RNvMs0_NtNtCs95DO3lnzZ3L_4moka6common10concurrentINtB5_11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringE8is_dirtyCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.c = load atomic i16, ptr %i.b monotonic, align 2
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 54
  %i.e = load atomic i16, ptr %i.d monotonic, align 2
  %i.f = icmp ne i16 %i.c, %i.e
  fence acquire
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define { i64, i32 } @_RNvMs0_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client7backoffNtB5_7Backoff4tick(ptr noalias noundef align 8 dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load double, ptr %i.d, align 8, !noundef !12 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load double, ptr %i.f, align 8, !noundef !12 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load double, ptr %i.h, align 8, !noundef !12
  %i.j = fmul double %i.g, %i.i                   ; 2 uses
  %i.k = load ptr, ptr %0, align 8, !noundef !12
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noundef double @_RINvYINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtCs7IXFa44uZj7_9rand_core7RngCoreNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1d_4SendEL_ENtNtCsiGwHUc8edKX_4rand3rng3Rng12random_rangedINtNtNtB1f_3ops5range5RangedEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, double noundef %i.e, double noundef %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61)
  %.pre = load double, ptr %i.f, align 8
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.m = tail call noundef nonnull ptr @_RNvNtNtCsiGwHUc8edKX_4rand4rngs6thread3rng()
  store ptr %i.m, ptr %i.c, align 8
  %i.n = invoke noundef double @_RINvYNtNtNtCsiGwHUc8edKX_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng12random_rangedINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangedEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c, double noundef %i.e, double noundef %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !2815)
  call void @llvm.experimental.noalias.scope.decl(metadata !2818)
  call void @llvm.experimental.noalias.scope.decl(metadata !2821)
  %i.p = load ptr, ptr %i.c, align 8, !alias.scope !2824, !nonnull !12, !noundef !12 ; 2 uses
end_hunk_12
begin_hunk_13_@_RNvMs0_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6dequesINtB5_6DequesNtNtCs6Po7BT7Nknu_5alloc6string6StringE10select_mutCsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
  %.sroa.0.0 = phi ptr [ %i.b, %bb.c ], [ %i.a, %bb.b ], [ %0, %bb.a ]
  %.sroa.4.0 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.c = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.d = insertvalue { ptr, ptr } %i.c, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6dequesINtB5_6DequesNtNtCs6Po7BT7Nknu_5alloc6string6StringE25unlink_node_ao_from_dequeCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %2, ptr noundef nonnull %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [1 x i8], align 1                 ; 2 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 3 uses
  store ptr %0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %1, ptr %i.f, align 8
  %i.g = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.h = and i64 %i.g, -4                         ; 2 uses
  %i.i = inttoptr i64 %i.h to ptr                 ; 8 uses
  %i.j = and i64 %i.g, 3                          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %i.j, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.k = icmp ne i64 %i.h, 0
  tail call void @llvm.assume(i1 %i.k)
  store ptr %i.i, ptr %i.c, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.m = load i8, ptr %i.l, align 8, !range !29, !noundef !12 ; 2 uses
  store i8 %i.m, ptr %i.b, align 1
  %i.n = zext nneg i8 %i.m to i64
  %i.o = icmp eq i64 %i.j, %i.n
  br i1 %i.o, label %bb.c, label %bb.b, !prof !24

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.e, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCsgO8S5jLFugx_23deltalake_catalog_unity, ptr %.sroa.42.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.p, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtNtCs95DO3lnzZ3L_4moka6common5deque7DeqNodeINtNtBB_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtB6_5Debug3fmtCsgO8S5jLFugx_23deltalake_catalog_unity, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RINvNtCsbvkFyIu7lgC_4core9panicking13assert_failedNtNtCs95DO3lnzZ3L_4moka6common11CacheRegionjECsgO8S5jLFugx_23deltalake_catalog_unity(i8 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noundef nonnull @67, ptr nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #35
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !noundef !12 ; 2 uses
  %.not = icmp ne ptr %i.r, null                  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = icmp eq ptr %i.t, %i.i
  %or.cond = select i1 %.not, i1 true, i1 %i.u
  br i1 %or.cond, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2835)
  %i.v = load i64, ptr %2, align 8, !range !39, !alias.scope !2835, !noundef !12
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.x = trunc nuw i64 %i.v to i1
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %i.w, align 8, !alias.scope !2835, !noundef !12 ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.i
  br i1 %i.z, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e, %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !2835, !noundef !12 ; 4 uses
  br i1 %.not, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !2835, !noundef !12
  store i64 1, ptr %2, align 8, !alias.scope !2835
  store ptr %i.ad, ptr %i.w, align 8, !alias.scope !2835
  br label %bb.f

bb.h:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.ab, ptr %i.ae, align 8, !noalias !2835
  %.pre = load ptr, ptr %i.q, align 8, !noalias !2835
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  store ptr %i.ab, ptr %i.s, align 8, !alias.scope !2835
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.af = phi ptr [ null, %bb.i ], [ %.pre, %bb.h ] ; 2 uses
  %.not4.i = icmp eq ptr %i.ab, null
  br i1 %.not4.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %i.af, ptr %i.ag, align 8, !noalias !2835
  br label %_RNvMs1_NtNtCs95DO3lnzZ3L_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEE6unlinkCsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.l:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.af, ptr %i.ah, align 8, !alias.scope !2835
  br label %_RNvMs1_NtNtCs95DO3lnzZ3L_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEE6unlinkCsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RNvMs1_NtNtCs95DO3lnzZ3L_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEE6unlinkCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.k, %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false), !noalias !2835
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !2835, !noundef !12
  %i.ak = add i64 %i.aj, -1
  store i64 %i.ak, ptr %i.ai, align 8, !alias.scope !2835
  invoke void @_RNvXs4_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arcINtB5_7MiniArcINtNtB7_10entry_info9EntryInfoNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtCs95DO3lnzZ3L_4moka6common5deque7DeqNodeINtNtB1k_10concurrent11KeyHashDateNtNtBL_6string6StringEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.m

bb.m:                                             ; preds = %_RNvMs1_NtNtCs95DO3lnzZ3L_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEE6unlinkCsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef 24, i64 noundef 8) #31
  resume { ptr, i32 } %i.al

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtCs95DO3lnzZ3L_4moka6common5deque7DeqNodeINtNtB1k_10concurrent11KeyHashDateNtNtBL_6string6StringEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RNvMs1_NtNtCs95DO3lnzZ3L_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEE6unlinkCsgO8S5jLFugx_23deltalake_catalog_unity.exit
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef 24, i64 noundef 8) #31
  br label %bb.n

bb.n:                                             ; preds = %bb.c, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtCs95DO3lnzZ3L_4moka6common5deque7DeqNodeINtNtB1k_10concurrent11KeyHashDateNtNtBL_6string6StringEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2838)
  %i.b = icmp eq i64 %4, 0                        ; 2 uses
  %i.c = load i64, ptr %0, align 8, !alias.scope !2838 ; 2 uses
  %.sroa.05.0.i = select i1 %i.b, i64 -1, i64 %i.c
  %i.d = sub i64 %.sroa.05.0.i, %1
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2841)
  br i1 %i.b, label %bb.f, label %bb.c, !prof !24

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %2, %1                           ; 4 uses
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2844
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val12.i.i = load ptr, ptr %i.h, align 8, !alias.scope !2844
  call fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.c, ptr %.val12.i.i, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !2844
  %i.i = load i64, ptr %i.a, align 8, !range !39, !noalias !2844, !noundef !12
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.j, label %bb.e, label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

bb.e:                                             ; preds = %bb.d
  %i.l = load i64, ptr %i.k, align 8, !range !46, !noalias !2844, !noundef !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !2844
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2844
  br label %bb.f

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.d
  %i.o = load ptr, ptr %i.k, align 8, !noalias !2844, !nonnull !12, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2844
  store ptr %i.o, ptr %i.h, align 8, !alias.scope !2844
  %i.p = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.p)
  store i64 %i.f, ptr %0, align 8, !alias.scope !2844
  br label %bb.g

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.e
  %.sroa.3.0.i.ph = phi i64 [ %i.n, %bb.e ], [ undef, %bb.c ], [ undef, %bb.b ]
  %.sroa.0.0.i.ph = phi i64 [ %i.l, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ]
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.3.0.i.ph) #32
  unreachable

bb.g:                                             ; preds = %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %3) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val10 = load ptr, ptr %i.a, align 8           ; 3 uses
  %i.b = icmp eq i64 %3, 0
  %i.c = icmp eq i64 %.val, 0
  %or.cond.i = select i1 %i.b, i1 true, i1 %i.c
  br i1 %or.cond.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  %4 = mul nuw i64 %.val, %3                      ; 3 uses
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator6shrink.exit

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit: ; preds = %bb.b
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) %2) #31
  %i.e = inttoptr i64 %2 to ptr
  store ptr %i.e, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit
  store i64 %1, ptr %0, align 8
  br label %bb.e

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator6shrink.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %3, %1                       ; 3 uses
  %i.g = icmp ule i64 %i.f, %4
  tail call void @llvm.assume(i1 %i.g)
  %i.h = tail call noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc14___rust_realloc(ptr noundef nonnull %.val10, i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %i.f) #31 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator6shrink.exit
  store ptr %i.h, ptr %i.a, align 8
  %i.j = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.j)
  br label %bb.c

bb.e:                                             ; preds = %bb.a, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator6shrink.exit, %bb.c
  %.sroa.4.0 = phi i64 [ undef, %bb.c ], [ %i.f, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator6shrink.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ -9223372036854775807, %bb.c ], [ %2, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator6shrink.exit ], [ -9223372036854775807, %bb.a ]
  %i.k = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.l = insertvalue { i64, i64 } %i.k, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.l
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KvEntryNtNtB7_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8grow_oneB22_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !41, !noundef !12 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2845)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2845
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !2845
  call fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 16), !noalias !2845
  %i.f = load i64, ptr %i.a, align 8, !range !39, !noalias !2845, !noundef !12
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !46, !noalias !2845, !noundef !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !2845
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2845
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !2845, !nonnull !12, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2845
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !2845
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !2845
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator11KeyDateLiteNtNtB7_6string6StringEE8grow_oneCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !41, !noundef !12 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2848)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2848
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !2848
  call fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 24), !noalias !2848
  %i.f = load i64, ptr %i.a, align 8, !range !39, !noalias !2848, !noundef !12
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !46, !noalias !2848, !noundef !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !2848
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2848
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !2848, !nonnull !12, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2848
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !2848
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !2848
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator9PredicateNtNtB7_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8grow_oneB25_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !41, !noundef !12 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2851)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2851
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !2851
  call fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 48), !noalias !2851
  %i.f = load i64, ptr %i.a, align 8, !range !39, !noalias !2851, !noundef !12
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !46, !noalias !2851, !noundef !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !2851
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2851
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !2851, !nonnull !12, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2851
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !2851
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !2851
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models10ColumnInfoE8grow_oneBQ_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !41, !noundef !12 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2854)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2854
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !2854
  call fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 152), !noalias !2854
  %i.f = load i64, ptr %i.a, align 8, !range !39, !noalias !2854, !noundef !12
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !46, !noalias !2854, !noundef !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !2854
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2854
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !2854, !nonnull !12, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2854
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !2854
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !2854
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models12ErrorDetailsE8grow_oneBQ_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !41, !noundef !12 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2857)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2857
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !2857
  call fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 168), !noalias !2857
  %i.f = load i64, ptr %i.a, align 8, !range !39, !noalias !2857, !noundef !12
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !46, !noalias !2857, !noundef !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !2857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2857
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !2857, !nonnull !12, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2857
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !2857
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !2857
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5EntryE8grow_oneCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !41, !noundef !12 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2860)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2860
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !2860
  call fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 24), !noalias !2860
  %i.f = load i64, ptr %i.a, align 8, !range !39, !noalias !2860, !noundef !12
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !46, !noalias !2860, !noundef !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !2860
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2860
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !2860, !nonnull !12, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2860
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !2860
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !2860
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs4_Csj62dA9SVw2s_15form_urlencodedINtB5_10SerializerNtCseo6ZV82fEK1_3url8UrlQueryE11append_pairCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef returned align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2863)
  %i.a = load i64, ptr %0, align 8, !range !2249, !alias.scope !2863, !noundef !12
  %.not.i = icmp eq i64 %i.a, -9223372036854775807
  br i1 %.not.i, label %bb.b, label %_RINvCsj62dA9SVw2s_15form_urlencoded6stringNtCseo6ZV82fEK1_3url8UrlQueryECsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 41, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #35, !noalias !2863
  unreachable

_RINvCsj62dA9SVw2s_15form_urlencoded6stringNtCseo6ZV82fEK1_3url8UrlQueryECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 ptr @_RNvXsg_Cseo6ZV82fEK1_3urlNtB5_8UrlQueryNtCsj62dA9SVw2s_15form_urlencoded6Target13as_mut_string(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !noundef !12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !noundef !12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8
  tail call void @_RNvCsj62dA9SVw2s_15form_urlencoded11append_pair(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.d, ptr noundef %i.f, ptr %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_Csj62dA9SVw2s_15form_urlencodedINtB5_10SerializerNtNtCs6Po7BT7Nknu_5alloc6string6StringE10for_suffixCsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !12 ; 3 uses
  %i.f = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp ult i64 %i.e, %2
  br i1 %i.g, label %bb.d, label %bb.c

bb.b:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %1) #34
          to label %bb.g unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.j, align 8
  ret void

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.e, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.k, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @69, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #32
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.g:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs4_Csj62dA9SVw2s_15form_urlencodedINtB5_10SerializerNtNtCs6Po7BT7Nknu_5alloc6string6StringE11append_pairCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef returned align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2866)
  %i.a = load i64, ptr %0, align 8, !range !46, !alias.scope !2866, !noundef !12
  %.not.i = icmp eq i64 %i.a, -9223372036854775808
  br i1 %.not.i, label %bb.b, label %_RINvCsj62dA9SVw2s_15form_urlencoded6stringNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 41, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #35, !noalias !2866
  unreachable

_RINvCsj62dA9SVw2s_15form_urlencoded6stringNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !noundef !12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !noundef !12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @_RNvCsj62dA9SVw2s_15form_urlencoded11append_pair(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.c, ptr noundef %i.e, ptr %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_Csj62dA9SVw2s_15form_urlencodedINtB5_10SerializerNtNtCs6Po7BT7Nknu_5alloc6string6StringE6finishCsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %1) unnamed_addr #1 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %1, align 8 ; 2 uses
  store i64 -9223372036854775808, ptr %1, align 8
  %.not = icmp eq i64 %.sroa.0.0.copyload, -9223372036854775808
  br i1 %.not, label %bb.c, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i64 16, i1 false)
  store i64 %.sroa.0.0.copyload, ptr %0, align 8, !alias.scope !2869
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 46, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #35
  unreachable
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #7 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !1997
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !1997

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator4grow.exit

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %4 = mul nuw i64 %3, %.0.val                    ; 2 uses
  %i.f = icmp uge i64 %i.b, %4
  tail call void @llvm.assume(i1 %i.f)
  %i.g = tail call noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #31
  br label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %i.b, 0
  br i1 %i.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.i = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31
  %i.j = tail call noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #31
  br label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.g, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator4grow.exit ], [ %i.j, %bb.d ] ; 2 uses
  %i.k = icmp eq ptr %.pn8, null
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.l, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.i, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.m, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink12 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %storemerge13 = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.sink12
  store i64 %.sink, ptr %i.n, align 8
  store i64 %storemerge13, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 5 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !1997
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !1997

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %3 to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.i, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31
  br i1 %2, label %bb.g, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #31
  br label %bb.h

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.k = tail call noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #31
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit
  %.pn10 = phi ptr [ %i.j, %bb.g ], [ %i.k, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.l = icmp eq ptr %.pn10, null
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.n, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.o = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pn10, ptr %i.q, align 8
  br label %bb.f
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden noundef zeroext i1 @_RNvMs7_NtNtCs95DO3lnzZ3L_4moka6common10concurrentINtB5_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE11is_admittedB1J_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(272) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !12, !noundef !12
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load atomic i8, ptr %i.c acquire, align 1
  %i.e = icmp ne i8 %i.d, 0
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs7_NtNtCs95DO3lnzZ3L_4moka6common10concurrentINtB5_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE13unset_q_nodesB1J_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(272) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = cmpxchg weak ptr %i.c, i8 0, i8 1 acquire monotonic, align 1
  %i.e = extractvalue { i8, i1 } %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.b, !prof !24

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.c, i64 undef, i32 noundef 1000000000) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.h = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.i = extractvalue { i8, i1 } %i.h, 1
  br i1 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api5mutex10MutexGuardNtNtCs8fBJGmGoRiY_11parking_lot9raw_mutex8RawMutexINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent8DeqNodesNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.d, !prof !24

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api5mutex10MutexGuardNtNtCs8fBJGmGoRiY_11parking_lot9raw_mutex8RawMutexINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent8DeqNodesNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api5mutex10MutexGuardNtNtCs8fBJGmGoRiY_11parking_lot9raw_mutex8RawMutexINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent8DeqNodesNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs7_NtNtCs95DO3lnzZ3L_4moka6common10concurrentINtB5_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE14set_timer_nodeB1J_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(272) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !12, !noundef !12 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = cmpxchg weak ptr %i.c, i8 0, i8 1 acquire monotonic, align 1
  %i.e = extractvalue { i8, i1 } %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.b, !prof !24

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.c, i64 undef, i32 noundef 1000000000) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 %2, ptr %i.h, align 8
  %i.i = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.j = extractvalue { i8, i1 } %i.i, 1
  br i1 %i.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api5mutex10MutexGuardNtNtCs8fBJGmGoRiY_11parking_lot9raw_mutex8RawMutexINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent8DeqNodesNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.d, !prof !24

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api5mutex10MutexGuardNtNtCs8fBJGmGoRiY_11parking_lot9raw_mutex8RawMutexINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent8DeqNodesNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api5mutex10MutexGuardNtNtCs8fBJGmGoRiY_11parking_lot9raw_mutex8RawMutexINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent8DeqNodesNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i32 } @_RNvMs7_NtNtCs95DO3lnzZ3L_4moka6common10concurrentINtB5_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE15take_timer_nodeB1J_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(272) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !12, !noundef !12 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = cmpxchg weak ptr %i.c, i8 0, i8 1 acquire monotonic, align 1
  %i.e = extractvalue { i8, i1 } %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.b, !prof !24

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.c, i64 undef, i32 noundef 1000000000) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !noundef !12
  store i32 0, ptr %i.g, align 8
end_hunk_13
