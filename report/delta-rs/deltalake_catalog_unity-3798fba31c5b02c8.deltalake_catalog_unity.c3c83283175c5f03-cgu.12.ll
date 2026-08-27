Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_catalog_unity-3798fba31c5b02c8.deltalake_catalog_unity.c3c83283175c5f03-cgu.12?download=true
inline.NumInlined: 1221
inline.NumDeleted: 615
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5EntryE6removeCsgO8S5jLFugx_23deltalake_catalog_unity:bb.a

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5EntryE10try_removeCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1705, !noalias !1708, !nonnull !13, !noundef !13
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %2 ; 4 uses
  %.sroa.0.0.copyload1 = load ptr, ptr %i.f, align 8, !noalias !1705 ; 2 uses
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2, i64 16, i1 false), !noalias !1705
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = xor i64 %2, -1
  %i.i = add nsw i64 %i.b, %i.h
  %i.j = mul nsw i64 %i.i, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.g, i64 %i.j, i1 false), !noalias !1710
  %i.k = add nsw i64 %i.b, -1                     ; 2 uses
  store i64 %i.k, ptr %i.a, align 8, !alias.scope !1705, !noalias !1708
  %.not = icmp eq ptr %.sroa.0.0.copyload1, null
  br i1 %.not, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5EntryE10try_removeCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread, label %bb.b, !prof !1711

bb.b:                                             ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5EntryE10try_removeCsgO8S5jLFugx_23deltalake_catalog_unity.exit
  store ptr %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5EntryE10try_removeCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread: ; preds = %bb.a, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5EntryE10try_removeCsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.l = phi i64 [ %i.b, %bb.a ], [ %i.k, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5EntryE10try_removeCsgO8S5jLFugx_23deltalake_catalog_unity.exit ] ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  tail call void @_RNvNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %2, i64 noundef %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtCs4j34XAPZOn0_4http6header3map3PosE16into_boxed_sliceCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !241, !noundef !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !13 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 2, i64 noundef 4)
          to label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.d ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsgO8S5jLFugx_23deltalake_catalog_unity.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsgO8S5jLFugx_23deltalake_catalog_unity.exit._crit_edge ], [ %i.c, %bb.a ] ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !nonnull !13, !noundef !13
  %i.f = icmp ult i64 %.sroa.511.0.copyload, 2305843009213693952
  tail call void @llvm.assume(i1 %i.f)
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1
  ret { ptr, i64 } %i.h

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs4j34XAPZOn0_4http6header3map3PosENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4j34XAPZOn0_4http6header3map3PosEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.g

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0        ; 2 uses
  %.not = icmp eq i64 %i.j, -9223372036854775807
  br i1 %.not, label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsgO8S5jLFugx_23deltalake_catalog_unity.exit._crit_edge, label %bb.e, !prof !1704

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsgO8S5jLFugx_23deltalake_catalog_unity.exit._crit_edge: ; preds = %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8
  br label %bb.c

bb.e:                                             ; preds = %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #25
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4j34XAPZOn0_4http6header3map3PosEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !13 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !241, !noundef !13
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b, !prof !166

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 1, i64 noundef 1)
  br label %bb.b
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecATINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KeyHashNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtBO_4time7instant7InstantEEj8_E21reserve_one_uncheckedCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(272) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1712, !noalias !1715, !noundef !13 ; 5 uses
  %i.d = icmp ugt i64 %i.c, 8                     ; 2 uses
  br i1 %i.d, label %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecATINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KeyHashNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtBO_4time7instant7InstantEEj8_E6tripleCsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecATINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KeyHashNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtBO_4time7instant7InstantEEj8_E6tripleCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread

_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecATINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KeyHashNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtBO_4time7instant7InstantEEj8_E6tripleCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1712, !noalias !1715, !noundef !13 ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.q, label %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecATINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KeyHashNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtBO_4time7instant7InstantEEj8_E6tripleCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread, !prof !1717

_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecATINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KeyHashNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtBO_4time7instant7InstantEEj8_E6tripleCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread: ; preds = %bb.a, %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecATINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KeyHashNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtBO_4time7instant7InstantEEj8_E6tripleCsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %.sink11.i8 = phi i64 [ %i.f, %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecATINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KeyHashNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtBO_4time7instant7InstantEEj8_E6tripleCsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ %i.c, %bb.a ] ; 2 uses
  %i.h = icmp eq i64 %.sink11.i8, 0
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink11.i8, i1 true)
  %i.j = lshr i64 -1, %i.i
  %.sroa.02.0 = select i1 %i.h, i64 0, i64 %i.j   ; 4 uses
  %i.k = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.k, label %bb.q, label %bb.b, !prof !166

bb.b:                                             ; preds = %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecATINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KeyHashNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtBO_4time7instant7InstantEEj8_E6tripleCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread
  %i.l = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1718)
  %i.m = icmp ult i64 %i.c, 9                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %i.d, label %bb.c, label %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecATINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KeyHashNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtBO_4time7instant7InstantEEj8_E10triple_mutCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !1721, !noalias !1724, !nonnull !13, !noundef !13
  %.pre = load i64, ptr %i.n, align 8, !alias.scope !1718
  br label %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecATINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KeyHashNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtBO_4time7instant7InstantEEj8_E10triple_mutCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecATINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KeyHashNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtBO_4time7instant7InstantEEj8_E10triple_mutCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.b, %bb.c
  %i.q = phi i64 [ %.pre, %bb.c ], [ %i.c, %bb.b ] ; 5 uses
  %.sink11.i.i = phi ptr [ %i.p, %bb.c ], [ %i.n, %bb.b ] ; 4 uses
  %.sink.i.i = phi i64 [ %i.c, %bb.c ], [ 8, %bb.b ] ; 5 uses
  %.not.i = icmp ult i64 %i.l, %i.q
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !166

bb.d:                                             ; preds = %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecATINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KeyHashNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtBO_4time7instant7InstantEEj8_E10triple_mutCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #29, !noalias !1718
  unreachable

bb.e:                                             ; preds = %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecATINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KeyHashNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtBO_4time7instant7InstantEEj8_E10triple_mutCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.r = icmp ult i64 %.sroa.02.0, 8
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not46.i = icmp eq i64 %i.l, %.sink.i.i
  br i1 %.not46.i, label %_RINvCs3fLsjMQPbhe_8smallvec10infallibleuECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.m, label %_RINvCs3fLsjMQPbhe_8smallvec10infallibleuECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.s = shl nuw nsw i64 %i.l, 5                  ; 3 uses
  %or.cond.i = icmp ult i64 %.sroa.02.0, 288230376151711743
  br i1 %or.cond.i, label %_RINvCs3fLsjMQPbhe_8smallvec12layout_arrayTINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KeyHashNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtBJ_4time7instant7InstantEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.p, !prof !1726

_RINvCs3fLsjMQPbhe_8smallvec12layout_arrayTINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KeyHashNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtBJ_4time7instant7InstantEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.h
  br i1 %i.m, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCs3fLsjMQPbhe_8smallvec12layout_arrayTINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KeyHashNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtBJ_4time7instant7InstantEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %or.cond67.i = icmp ult i64 %.sink.i.i, 288230376151711744
  br i1 %or.cond67.i, label %_RINvCs3fLsjMQPbhe_8smallvec12layout_arrayTINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KeyHashNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtBJ_4time7instant7InstantEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit48.i, label %bb.p, !prof !1726

bb.j:                                             ; preds = %_RINvCs3fLsjMQPbhe_8smallvec12layout_arrayTINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KeyHashNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtBJ_4time7instant7InstantEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !1718
  %i.t = tail call noundef align 8 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.s, i64 noundef 8) #31, !noalias !1718 ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.l

_RINvCs3fLsjMQPbhe_8smallvec12layout_arrayTINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KeyHashNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtBJ_4time7instant7InstantEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit48.i: ; preds = %bb.i
  %i.v = shl nuw nsw i64 %.sink.i.i, 5
  %i.w = tail call noundef align 8 ptr @_RNvCs8mYq7K4qqSA_7___rustc14___rust_realloc(ptr noundef nonnull %.sink11.i.i, i64 noundef %i.v, i64 noundef 8, i64 noundef %i.s) #31 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCs3fLsjMQPbhe_8smallvec12layout_arrayTINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KeyHashNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtBJ_4time7instant7InstantEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit48.i
  %.sroa.031.0.i = phi ptr [ %i.t, %bb.l ], [ %i.w, %_RINvCs3fLsjMQPbhe_8smallvec12layout_arrayTINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KeyHashNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtBJ_4time7instant7InstantEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit48.i ]
  store i64 1, ptr %0, align 8, !alias.scope !1718
  store i64 %i.q, ptr %i.n, align 8, !alias.scope !1718
  %.sroa.540.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.031.0.i, ptr %.sroa.540.0..sroa_idx.i, align 8, !alias.scope !1718
  store i64 %i.l, ptr %i.b, align 8, !alias.scope !1718
  br label %_RINvCs3fLsjMQPbhe_8smallvec10infallibleuECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.l:                                             ; preds = %bb.j
  %i.y = shl nuw i64 %i.q, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %.sink11.i.i, i64 %i.y, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  store i64 0, ptr %0, align 8, !alias.scope !1718
  %i.z = shl nuw i64 %i.q, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull align 8 %.sink11.i.i, i64 %i.z, i1 false)
  store i64 %i.q, ptr %i.b, align 8, !alias.scope !1718
  %or.cond.i.i = icmp ult i64 %.sink.i.i, 288230376151711744
  br i1 %or.cond.i.i, label %_RINvCs3fLsjMQPbhe_8smallvec10deallocateTINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KeyHashNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtBH_4time7instant7InstantEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.n, !prof !1726

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1727
  store i64 0, ptr %i.a, align 8, !noalias !1727
  call void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @16, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #25, !noalias !1727
  unreachable

_RINvCs3fLsjMQPbhe_8smallvec10deallocateTINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KeyHashNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtBH_4time7instant7InstantEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.m
  %i.aa = shl nuw nsw i64 %.sink.i.i, 5
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink11.i.i, i64 noundef %i.aa, i64 noundef 8) #31
  br label %_RINvCs3fLsjMQPbhe_8smallvec10infallibleuECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.o:                                             ; preds = %bb.j, %_RINvCs3fLsjMQPbhe_8smallvec12layout_arrayTINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KeyHashNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtBJ_4time7instant7InstantEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit48.i
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 0, -9223372036854775806) 8, i64 noundef %i.s) #25
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #29
  unreachable

_RINvCs3fLsjMQPbhe_8smallvec10infallibleuECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RINvCs3fLsjMQPbhe_8smallvec10deallocateTINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KeyHashNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtBH_4time7instant7InstantEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %bb.g, %bb.f, %bb.k
  ret void

bb.q:                                             ; preds = %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecATINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KeyHashNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtBO_4time7instant7InstantEEj8_E6tripleCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread, %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecATINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KeyHashNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtBO_4time7instant7InstantEEj8_E6tripleCsgO8S5jLFugx_23deltalake_catalog_unity.exit
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecINtNtB6_5boxed3BoxSINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1i_11timer_wheel9TimerNodeNtNtB6_6string6StringEEEEINtB2_12SpecFromIterBU_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB3n_5slice4iter4IteryENCNvMs0_B1Z_INtB1Z_10TimerWheelB2s_E6enable0EE9from_iterCsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1730
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1730
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !noalias !1730
  %i.h = load i64, ptr %i.b, align 8, !range !22, !noalias !1730, !noundef !13
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !201, !noalias !1730, !noundef !13 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecINtNtB8_5boxed3BoxSINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB14_11timer_wheel9TimerNodeNtNtB8_6string6StringEEEE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB32_5slice4iter4IteryENCNvMs0_B1L_INtB1L_10TimerWheelB2e_E6enable0EECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, !prof !166

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !1730
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #25, !noalias !1730
  unreachable

_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecINtNtB8_5boxed3BoxSINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB14_11timer_wheel9TimerNodeNtNtB8_6string6StringEEEE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB32_5slice4iter4IteryENCNvMs0_B1L_INtB1L_10TimerWheelB2e_E6enable0EECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !1730, !nonnull !13, !noundef !13 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1730
  store i64 %i.k, ptr %i.c, align 8, !noalias !1730
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !1730
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.q, align 8, !noalias !1730
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1733
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.n, ptr %i.r, align 8, !noalias !1733
  store ptr %i.q, ptr %i.a, align 8, !noalias !1733
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.s, align 8, !noalias !1733
  invoke void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IteryENCNvMs0_NtNtCs95DO3lnzZ3L_4moka6common11timer_wheelINtB1x_10TimerWheelNtNtCs6Po7BT7Nknu_5alloc6string6StringE6enable0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3j_8for_each4callINtNtB2B_5boxed3BoxSINtNtB1z_5deque5DequeINtB1x_9TimerNodeB2x_EEENCINvMsj_NtB2B_3vecINtB5y_3VecB4m_E14extend_trustedBN_E0E0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_5boxed3BoxSINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1r_11timer_wheel9TimerNodeNtNtB8_6string6StringEEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB3D_5slice4iter4IteryENCNvMs0_B28_INtB28_10TimerWheelB2B_E6enable0EE9from_iterCsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.c, !noalias !1730

bb.c:                                             ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecINtNtB8_5boxed3BoxSINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB14_11timer_wheel9TimerNodeNtNtB8_6string6StringEEEE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB32_5slice4iter4IteryENCNvMs0_B1L_INtB1L_10TimerWheelB2e_E6enable0EECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_5boxed3BoxSINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1B_11timer_wheel9TimerNodeNtNtBL_6string6StringEEEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.c) #30
          to label %bb.e unwind label %bb.d, !noalias !1730

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !1730
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.t

_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_5boxed3BoxSINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1r_11timer_wheel9TimerNodeNtNtB8_6string6StringEEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB3D_5slice4iter4IteryENCNvMs0_B28_INtB28_10TimerWheelB2B_E6enable0EE9from_iterCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecINtNtB8_5boxed3BoxSINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB14_11timer_wheel9TimerNodeNtNtB8_6string6StringEEEE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB32_5slice4iter4IteryENCNvMs0_B1L_INtB1L_10TimerWheelB2e_E6enable0EECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1733
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1730
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtBZ_11timer_wheel9TimerNodeNtNtB6_6string6StringEEEINtB2_12SpecFromIterBU_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB32_3ops5range5RangeyENCNCNvMs0_B1G_INtB1G_10TimerWheelB28_E6enable00EE9from_iterCsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1738
  %spec.select.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %1) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1738
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %spec.select.i.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 48), !noalias !1738
  %i.d = load i64, ptr %i.b, align 8, !range !22, !noalias !1738, !noundef !13
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !201, !noalias !1738, !noundef !13 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtBL_11timer_wheel9TimerNodeNtNtB8_6string6StringEEE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2H_3ops5range5RangeyENCNCNvMs0_B1s_INtB1s_10TimerWheelB1U_E6enable00EECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, !prof !166

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !noalias !1738
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #25, !noalias !1738
  unreachable

_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtBL_11timer_wheel9TimerNodeNtNtB8_6string6StringEEE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2H_3ops5range5RangeyENCNCNvMs0_B1s_INtB1s_10TimerWheelB1U_E6enable00EECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !noalias !1738, !nonnull !13, !noundef !13 ; 2 uses
  %i.k = icmp ule i64 %spec.select.i.i.i, %i.g
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1738
  store i64 %i.g, ptr %i.c, align 8, !noalias !1738
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %i.l, align 8, !noalias !1738
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.m, align 8, !noalias !1738
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1741
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.j, ptr %i.n, align 8, !noalias !1741
  store ptr %i.m, ptr %i.a, align 8, !noalias !1741
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.o, align 8, !noalias !1741
  invoke void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangeyENCNCNvMs0_NtNtCs95DO3lnzZ3L_4moka6common11timer_wheelINtB1z_10TimerWheelNtNtCs6Po7BT7Nknu_5alloc6string6StringE6enable00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callINtNtB1B_5deque5DequeINtB1z_9TimerNodeB2z_EENCINvMsj_NtB2D_3vecINtB5g_3VecB4p_E14extend_trustedBN_E0E0ECsgO8S5jLFugx_23deltalake_catalog_unity(i64 noundef %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB18_11timer_wheel9TimerNodeNtNtB8_6string6StringEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB3j_3ops5range5RangeyENCNCNvMs0_B1P_INtB1P_10TimerWheelB2i_E6enable00EE9from_iterCsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.c, !noalias !1738

bb.c:                                             ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtBL_11timer_wheel9TimerNodeNtNtB8_6string6StringEEE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2H_3ops5range5RangeyENCNCNvMs0_B1s_INtB1s_10TimerWheelB1U_E6enable00EECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1i_11timer_wheel9TimerNodeNtNtBL_6string6StringEEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.c) #30
          to label %bb.e unwind label %bb.d, !noalias !1738

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !1738
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.p

_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB18_11timer_wheel9TimerNodeNtNtB8_6string6StringEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB3j_3ops5range5RangeyENCNCNvMs0_B1P_INtB1P_10TimerWheelB2i_E6enable00EE9from_iterCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtBL_11timer_wheel9TimerNodeNtNtB8_6string6StringEEE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2H_3ops5range5RangeyENCNCNvMs0_B1s_INtB1s_10TimerWheelB1U_E6enable00EECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1741
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1738
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator9PredicateNtNtB6_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEINtB2_12SpecFromIterBU_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB11_3cht4iter4IterB1O_BU_ENCNCNvMs0_BX_INtBX_11InvalidatorB1O_B29_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE19scan_and_invalidate00EE9from_iterB2d_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.7.i.i.i = alloca [40 x i8], align 8      ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [72 x i8], align 8                ; 8 uses
  %i.g = alloca [64 x i8], align 8                ; 6 uses
  %i.h = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.7.i = alloca [40 x i8], align 8          ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1746)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1749
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1749
  invoke void @_RNvXs_NtNtCs95DO3lnzZ3L_4moka3cht4iterINtB4_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB8_6future11invalidator9PredicateBL_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB28_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
          to label %.noexc.i unwind label %bb.c, !noalias !1746

.noexc.i:                                         ; preds = %bb.a
  %i.j = load i64, ptr %i.f, align 8, !range !201, !noalias !1751, !noundef !13
  %.not.i.i = icmp eq i64 %i.j, -9223372036854775808
  br i1 %.not.i.i, label %.thread17.i, label %bb.b

.thread17.i:                                      ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1749
  br label %bb.e

bb.b:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1755
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !1751
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.0.0.copyload10.i = load i64, ptr %i.k, align 8, !noalias !1759 ; 2 uses
  %.sroa.7.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx11.i, i64 40, i1 false), !noalias !1759
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
end_hunk_0
