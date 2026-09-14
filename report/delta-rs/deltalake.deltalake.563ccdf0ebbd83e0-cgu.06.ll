Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake.deltalake.563ccdf0ebbd83e0-cgu.06?download=true
inline.NumInlined: 6907
inline.NumDeleted: 2175
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs7p2uQeJxui2_9deltalake:bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #50
  %i.k = tail call noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #50
  br label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.h, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator4grow.exit ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = icmp eq ptr %.pn8, null
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.m, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.j, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.n, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink12 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %storemerge13 = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sink12
  store i64 %.sink, ptr %i.o, align 8
  store i64 %storemerge13, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 5 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !97
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !97

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
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #50
  br i1 %2, label %bb.g, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #50
  br label %bb.h

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.k = tail call noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #50
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

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCs7p2uQeJxui2_9deltalake10datafusionNtB4_14TokioDeltaScan17with_object_store(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([288 x i8]) align 8 captures(none) dereferenceable(288) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(288) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(88) %2, ptr noundef nonnull %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(184) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  store ptr %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %4, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 6 uses
  %i.d = load i64, ptr %i.c, align 8, !range !14, !alias.scope !25259, !noundef !12
  %i.e = icmp eq i64 %i.d, -9223372036854775808
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlEECs7p2uQeJxui2_9deltalake.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.c)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !25260 ; 2 uses
  %i.g = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.g, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 192
  %.val3.i.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !25261, !nonnull !12, !noundef !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #50, !noalias !25262
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %.val.i.i.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !25260 ; 2 uses
  %i.i = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlEECs7p2uQeJxui2_9deltalake.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 192
  %.val1.i.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !25261, !nonnull !12, !noundef !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #50, !noalias !25263
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlEECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.f, %bb.e, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.c, ptr noundef nonnull align 8 dereferenceable(88) %2, i64 88, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25264)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !25264, !noundef !12 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEECs7p2uQeJxui2_9deltalake.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlEECs7p2uQeJxui2_9deltalake.exit
  %i.n = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !25265
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEECs7p2uQeJxui2_9deltalake.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k) #52
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.g, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlEECs7p2uQeJxui2_9deltalake.exit, %bb.h
  store ptr %3, ptr %i.k, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 280
  store ptr %4, ptr %i.p, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(288) %1, i64 288, i1 false)
  ret void

bb.i:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  store ptr %3, ptr %i.k, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 280
  store ptr %4, ptr %i.r, align 8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.j, %bb.k, %bb.i
  %.pn6 = phi { ptr, i32 } [ %i.q, %bb.i ], [ %i.f, %bb.k ], [ %i.f, %bb.j ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7p2uQeJxui2_9deltalake10datafusion14TokioDeltaScanEBK_(ptr noalias noundef align 8 dereferenceable(288) %1) #48
          to label %bb.m unwind label %bb.l

bb.j:                                             ; preds = %bb.d, %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.c, ptr noundef nonnull align 8 dereferenceable(88) %2, i64 88, i1 false)
  %i.s = atomicrmw sub ptr %3, i64 1 release, align 8, !noalias !25266
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #52
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.m:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit
  resume { ptr, i32 } %.pn6
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array7builder20generic_list_builderINtB4_18GenericListBuilderlNtNtB6_15boolean_builder14BooleanBuilderE3newCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([184 x i8]) align 8 captures(none) dereferenceable(184) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 11 uses
  %i.b = alloca [96 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load i64, ptr %i.c, align 8, !noundef !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25285)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !25286
  %i.d = add i64 %.val, 1                         ; 5 uses
  %i.e = shl i64 %i.d, 2                          ; 4 uses
  %i.f = icmp ugt i64 %i.d, 4611686018427387903
  %.not.i.i = icmp ugt i64 %i.e, 9223372036854775804
  %or.cond.i.i = or i1 %i.f, %.not.i.i
  br i1 %or.cond.i.i, label %bb.j, label %bb.b, !prof !97

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %bb.b
  %i.h = icmp eq i64 %i.d, 0
  tail call void @llvm.assume(i1 %i.h)
  store i64 0, ptr %i.a, align 8, !noalias !25286
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.i, align 8, !noalias !25286
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.j, align 8, !noalias !25286
  br label %3

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #50, !noalias !25287
  %i.k = tail call noundef align 4 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.e, i64 noundef range(i64 1, -9223372036854775807) 4) #50, !noalias !25287 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.j, label %bb.l

bb.d:                                             ; preds = %bb.k, %bb.i
  %.pn.i = phi { ptr, i32 } [ %i.u, %bb.i ], [ %i.v, %bb.k ]
  invoke void @_RNvXs6_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.e, !noalias !25284

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !range !14, !alias.scope !25288, !noalias !25284, !noundef !12
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.body2, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXs6_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.n)
          to label %.body2 unwind label %bb.h, !noalias !25284

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !range !14, !alias.scope !25289, !noalias !25284, !noundef !12
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %.body, label %bb.g

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs7p2uQeJxui2_9deltalake.exit.i
  invoke void @_RNvXs6_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.q)
          to label %.body unwind label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !25284
  unreachable

bb.i:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.j:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 4, %bb.c ], [ 0, %bb.a ]
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.e) #47
          to label %bb.n unwind label %bb.i, !noalias !25286

bb.k:                                             ; preds = %3
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VeclEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.a) #48
          to label %bb.d unwind label %bb.m, !noalias !25286

bb.l:                                             ; preds = %bb.c
  store i64 %i.d, ptr %i.a, align 8, !noalias !25286
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.w, align 8, !noalias !25286
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store i64 0, ptr %i.x, align 8, !noalias !25286
  %2 = icmp eq i64 %i.d, 0
  br i1 %2, label %3, label %bb.o

3:                                                ; preds = %bb.l, %.thread.i
  %4 = phi ptr [ %i.j, %.thread.i ], [ %i.x, %bb.l ]
  %5 = phi ptr [ %i.i, %.thread.i ], [ %i.w, %bb.l ]
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVeclE8grow_oneCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %._crit_edge.i unwind label %bb.k, !noalias !25286

._crit_edge.i:                                    ; preds = %3
  %.pre.i = load ptr, ptr %5, align 8, !alias.scope !25290, !noalias !25286
  br label %bb.o

bb.m:                                             ; preds = %bb.g, %bb.k
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body2

.body2:                                           ; preds = %bb.e, %bb.f, %bb.m
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !25284
  unreachable

bb.n:                                             ; preds = %bb.j
  unreachable

bb.o:                                             ; preds = %._crit_edge.i, %bb.l
  %i.z = phi ptr [ %i.k, %bb.l ], [ %.pre.i, %._crit_edge.i ]
  %i.aa = phi ptr [ %i.x, %bb.l ], [ %4, %._crit_edge.i ]
  store i32 0, ptr %i.z, align 4, !noalias !25286
  store i64 1, ptr %i.aa, align 8, !alias.scope !25290, !noalias !25286
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !25285
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ab, ptr noundef nonnull align 8 dereferenceable(96) %i.b, i64 96, i1 false), !alias.scope !25286
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 0, ptr %i.ac, align 8, !alias.scope !25284, !noalias !25285
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !25284, !noalias !25285
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %.val, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !25284, !noalias !25285
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr null, ptr %i.ad, align 8, !alias.scope !25284, !noalias !25285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !25286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

.body:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs7p2uQeJxui2_9deltalake.exit.i, %bb.g
  resume { ptr, i32 } %.pn.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferlE5sliceCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load ptr, ptr %1, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !noundef !12
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !12
  store ptr %i.c, ptr %i.b, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.g, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.i, ptr %i.k, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25315)
  %i.l = shl nuw i64 %2, 2
  %i.m = icmp ugt i64 %2, 4611686018427387903
  br i1 %i.m, label %.invoke.i, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %3, 4611686018427387903
  br i1 %i.n, label %.invoke.i, label %bb.d, !prof !10

bb.d:                                             ; preds = %bb.c
  %i.o = shl nuw i64 %3, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !25316
  invoke void @_RNvMs3_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, i64 noundef %i.l, i64 noundef %i.o)
          to label %bb.g unwind label %bb.e, !noalias !25317

.invoke.i:                                        ; preds = %bb.c, %bb.b
  %i.p = phi ptr [ @137, %bb.b ], [ @134, %bb.c ]
  %i.q = phi ptr [ @138, %bb.b ], [ @136, %bb.c ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef 15, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q) #47
          to label %.cont.i unwind label %bb.e, !noalias !25316

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.e:                                             ; preds = %.invoke.i, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.i, %bb.h, %bb.e
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.y, %bb.i ], [ %i.y, %bb.h ]
  call void @llvm.experimental.noalias.scope.decl(metadata !25318)
  call void @llvm.experimental.noalias.scope.decl(metadata !25319)
  call void @llvm.experimental.noalias.scope.decl(metadata !25320)
  %i.s = load ptr, ptr %i.b, align 8, !alias.scope !25321, !noalias !25317, !nonnull !12, !noundef !12
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !25322
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs7p2uQeJxui2_9deltalake.exit.i

bb.f:                                             ; preds = %.body.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #52
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.m, !noalias !25317

bb.g:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !25323)
  call void @llvm.experimental.noalias.scope.decl(metadata !25324)
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !25324, !noalias !25325, !noundef !12
  %i.x = invoke noundef i64 @_RINvNtCsbvkFyIu7lgC_4core3ptr12align_offsethECs7p2uQeJxui2_9deltalake(ptr noundef %i.w, i64 noundef 4)
          to label %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.h, !noalias !25326

bb.h:                                             ; preds = %.invoke.i.i, %bb.g
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25327)
  call void @llvm.experimental.noalias.scope.decl(metadata !25328)
  call void @llvm.experimental.noalias.scope.decl(metadata !25329)
  %i.z = load ptr, ptr %i.a, align 8, !alias.scope !25330, !noalias !25325, !nonnull !12, !noundef !12
  %i.aa = atomicrmw sub ptr %i.z, i64 1 release, align 8, !noalias !25331
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.i, label %.body.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #52
          to label %.body.i unwind label %bb.j, !noalias !25332

_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.g
  %i.ac = icmp eq i64 %i.x, 0
  br i1 %i.ac, label %bb.k, label %.invoke.i.i, !prof !18

.invoke.i.i:                                      ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs7p2uQeJxui2_9deltalake.exit.i.i
  %i.ad = load ptr, ptr %i.a, align 8, !alias.scope !25324, !noalias !25325, !nonnull !12, !noundef !12
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !25326, !noundef !12
  %.not.i.i = icmp eq ptr %i.af, null             ; 3 uses
  %.2.i.i = select i1 %.not.i.i, ptr @393, ptr @395
  %.1.i.i = select i1 %.not.i.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i = select i1 %.not.i.i, ptr @392, ptr @394
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i, ptr noundef nonnull %.1.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i) #47
          to label %.cont.i.i unwind label %bb.h, !noalias !25326

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !25332
  unreachable

bb.k:                                             ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !25333, !noalias !25315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !25316
  call void @llvm.experimental.noalias.scope.decl(metadata !25334)
  call void @llvm.experimental.noalias.scope.decl(metadata !25335)
  call void @llvm.experimental.noalias.scope.decl(metadata !25336)
  %i.ah = load ptr, ptr %i.b, align 8, !alias.scope !25337, !noalias !25317, !nonnull !12, !noundef !12
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !25338
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.l, label %_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferlE3newCs7p2uQeJxui2_9deltalake.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #52, !noalias !25317
  br label %_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferlE3newCs7p2uQeJxui2_9deltalake.exit

bb.m:                                             ; preds = %bb.f
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !25317
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.f, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferlE3newCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.n:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferxE3newCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = shl nuw i64 %2, 3
  %i.c = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.c, label %.invoke, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %3, 2305843009213693951
  br i1 %i.d, label %.invoke, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.e = shl nuw i64 %3, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs3_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.e)
          to label %bb.f unwind label %bb.d

.invoke:                                          ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ @137, %bb.a ], [ @134, %bb.b ]
  %i.g = phi ptr [ @138, %bb.a ], [ @136, %bb.b ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g) #47
          to label %.cont unwind label %bb.d

.cont:                                            ; preds = %.invoke
  unreachable

bb.d:                                             ; preds = %.invoke, %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.h, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.o, %bb.h ], [ %i.o, %bb.g ]
  call void @llvm.experimental.noalias.scope.decl(metadata !25360)
  call void @llvm.experimental.noalias.scope.decl(metadata !25361)
  call void @llvm.experimental.noalias.scope.decl(metadata !25362)
  %i.i = load ptr, ptr %1, align 8, !alias.scope !25363, !nonnull !12, !noundef !12
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !25363
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs7p2uQeJxui2_9deltalake.exit

bb.e:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #52
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs7p2uQeJxui2_9deltalake.exit unwind label %bb.l
end_hunk_0
begin_hunk_1_@llvm.umax.i64
!25070 = distinct !{!25070, !"_RNvMNtCsgbCypRs12E4_4pyo312pyclass_initINtB2_18PyClassInitializerNtNtCs7p2uQeJxui2_9deltalake6schema10StructTypeE27create_class_object_of_typeB15_"}
!25071 = distinct !{!25071, !25070, !"_RNvMNtCsgbCypRs12E4_4pyo312pyclass_initINtB2_18PyClassInitializerNtNtCs7p2uQeJxui2_9deltalake6schema10StructTypeE27create_class_object_of_typeB15_: argument 1"}
!25072 = distinct !{!25072, !25070, !"_RNvMNtCsgbCypRs12E4_4pyo312pyclass_initINtB2_18PyClassInitializerNtNtCs7p2uQeJxui2_9deltalake6schema10StructTypeE27create_class_object_of_typeB15_: argument 0"}
!25073 = !{!25072, !25071, !25069, !25068}
!25074 = !{!25072, !25069}
!25075 = distinct !{!25075, !"_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake6schema9ArrayTypeE15get_or_try_initB1p_"}
!25076 = distinct !{!25076, !25075, !"_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake6schema9ArrayTypeE15get_or_try_initB1p_: argument 0"}
!25077 = !{!25076}
!25078 = distinct !{!25078, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7p2uQeJxui2_9deltalake6schema9ArrayTypeEBK_"}
!25079 = distinct !{!25079, !25078, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7p2uQeJxui2_9deltalake6schema9ArrayTypeEBK_: argument 0"}
!25080 = distinct !{!25080, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema9ArrayTypeECs7p2uQeJxui2_9deltalake"}
!25081 = distinct !{!25081, !25080, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema9ArrayTypeECs7p2uQeJxui2_9deltalake: argument 0"}
!25082 = distinct !{!25082, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake"}
!25083 = distinct !{!25083, !25082, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake: argument 0"}
!25084 = distinct !{!25084, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake"}
!25085 = distinct !{!25085, !25084, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake: argument 0"}
!25086 = distinct !{!25086, !"_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake"}
!25087 = distinct !{!25087, !25086, !"_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake: argument 0"}
!25088 = distinct !{!25088, !"_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake"}
!25089 = distinct !{!25089, !25088, !"_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake: argument 0"}
!25090 = distinct !{!25090, !"_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake"}
!25091 = distinct !{!25091, !25090, !"_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake: argument 0"}
!25092 = !{!25087, !25085, !25083, !25081, !25079}
!25093 = !{!25085, !25083, !25081, !25079}
!25094 = !{!25089}
!25095 = !{!25091}
!25096 = distinct !{!25096, !"_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake8features13TableFeaturesE15get_or_try_initB1p_"}
!25097 = distinct !{!25097, !25096, !"_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake8features13TableFeaturesE15get_or_try_initB1p_: argument 0"}
!25098 = distinct !{!25098, !"_RNvMNtCsgbCypRs12E4_4pyo312pyclass_initINtB2_18PyClassInitializerNtNtCs7p2uQeJxui2_9deltalake8features13TableFeaturesE27create_class_object_of_typeB15_"}
!25099 = distinct !{!25099, !25098, !"_RNvMNtCsgbCypRs12E4_4pyo312pyclass_initINtB2_18PyClassInitializerNtNtCs7p2uQeJxui2_9deltalake8features13TableFeaturesE27create_class_object_of_typeB15_: argument 0"}
!25100 = distinct !{!25100, !25098, !"_RNvMNtCsgbCypRs12E4_4pyo312pyclass_initINtB2_18PyClassInitializerNtNtCs7p2uQeJxui2_9deltalake8features13TableFeaturesE27create_class_object_of_typeB15_: argument 1"}
!25101 = !{!25097}
!25102 = !{!25099}
!25103 = !{!25099, !25100}
!25104 = !{!25100}
!25105 = distinct !{!25105, !"_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEE3newCs7p2uQeJxui2_9deltalake"}
!25106 = distinct !{!25106, !25105, !"_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEE3newCs7p2uQeJxui2_9deltalake: argument 0"}
!25107 = distinct !{!25107, !"_RNvXs3_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB5_12ScalarBufferlEINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtB7_9immutable6BufferE4fromCs7p2uQeJxui2_9deltalake"}
!25108 = distinct !{!25108, !25107, !"_RNvXs3_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB5_12ScalarBufferlEINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtB7_9immutable6BufferE4fromCs7p2uQeJxui2_9deltalake: argument 1"}
!25109 = distinct !{!25109, !25107, !"_RNvXs3_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB5_12ScalarBufferlEINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtB7_9immutable6BufferE4fromCs7p2uQeJxui2_9deltalake: argument 0"}
!25110 = distinct !{!25110, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs7p2uQeJxui2_9deltalake"}
!25111 = distinct !{!25111, !25110, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs7p2uQeJxui2_9deltalake: argument 0"}
!25112 = distinct !{!25112, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEECs7p2uQeJxui2_9deltalake"}
!25113 = distinct !{!25113, !25112, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEECs7p2uQeJxui2_9deltalake: argument 0"}
!25114 = distinct !{!25114, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake"}
!25115 = distinct !{!25115, !25114, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake: argument 0"}
!25116 = distinct !{!25116, !"_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VeclE8push_mutCs7p2uQeJxui2_9deltalake"}
!25117 = distinct !{!25117, !25116, !"_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VeclE8push_mutCs7p2uQeJxui2_9deltalake: argument 0"}
!25118 = distinct !{!25118, !"_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE3newCs7p2uQeJxui2_9deltalake"}
!25119 = distinct !{!25119, !25118, !"_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE3newCs7p2uQeJxui2_9deltalake: argument 0"}
!25120 = distinct !{!25120, !"_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtCs1N9T06jgEdt_11arrow_array5array10list_array16GenericListArraylENtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorE6unwrapCs7p2uQeJxui2_9deltalake"}
!25121 = distinct !{!25121, !25120, !"_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtCs1N9T06jgEdt_11arrow_array5array10list_array16GenericListArraylENtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorE6unwrapCs7p2uQeJxui2_9deltalake: argument 0"}
!25122 = distinct !{!25122, !25120, !"_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtCs1N9T06jgEdt_11arrow_array5array10list_array16GenericListArraylENtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorE6unwrapCs7p2uQeJxui2_9deltalake: argument 1"}
!25123 = distinct !{!25123, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6offset12OffsetBufferlEECs7p2uQeJxui2_9deltalake"}
!25124 = distinct !{!25124, !25123, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6offset12OffsetBufferlEECs7p2uQeJxui2_9deltalake: argument 0"}
!25125 = distinct !{!25125, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalar12ScalarBufferlEECs7p2uQeJxui2_9deltalake"}
!25126 = distinct !{!25126, !25125, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalar12ScalarBufferlEECs7p2uQeJxui2_9deltalake: argument 0"}
!25127 = distinct !{!25127, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs7p2uQeJxui2_9deltalake"}
!25128 = distinct !{!25128, !25127, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs7p2uQeJxui2_9deltalake: argument 0"}
!25129 = distinct !{!25129, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEECs7p2uQeJxui2_9deltalake"}
!25130 = distinct !{!25130, !25129, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEECs7p2uQeJxui2_9deltalake: argument 0"}
!25131 = distinct !{!25131, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake"}
!25132 = distinct !{!25132, !25131, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake: argument 0"}
!25133 = distinct !{!25133, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs7p2uQeJxui2_9deltalake"}
!25134 = distinct !{!25134, !25133, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs7p2uQeJxui2_9deltalake: argument 0"}
!25135 = distinct !{!25135, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs7p2uQeJxui2_9deltalake"}
!25136 = distinct !{!25136, !25135, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs7p2uQeJxui2_9deltalake: argument 0"}
!25137 = distinct !{!25137, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7boolean13BooleanBufferECs7p2uQeJxui2_9deltalake"}
!25138 = distinct !{!25138, !25137, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7boolean13BooleanBufferECs7p2uQeJxui2_9deltalake: argument 0"}
!25139 = distinct !{!25139, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs7p2uQeJxui2_9deltalake"}
!25140 = distinct !{!25140, !25139, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs7p2uQeJxui2_9deltalake: argument 0"}
!25141 = distinct !{!25141, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEECs7p2uQeJxui2_9deltalake"}
!25142 = distinct !{!25142, !25141, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEECs7p2uQeJxui2_9deltalake: argument 0"}
!25143 = distinct !{!25143, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake"}
!25144 = distinct !{!25144, !25143, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake: argument 0"}
!25145 = distinct !{!25145, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs7p2uQeJxui2_9deltalake"}
!25146 = distinct !{!25146, !25145, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs7p2uQeJxui2_9deltalake: argument 0"}
!25147 = distinct !{!25147, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake"}
!25148 = distinct !{!25148, !25147, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake: argument 0"}
!25149 = !{!25106}
!25150 = !{!25109, !25108}
!25151 = !{!25115, !25113, !25111, !25109, !25108}
!25152 = !{!25109}
!25153 = !{!25117}
!25154 = !{!25119}
!25155 = !{!25121}
!25156 = !{!25122}
!25157 = !{!25121, !25122}
!25158 = !{!25124}
!25159 = !{!25126}
!25160 = !{!25128}
!25161 = !{!25130}
!25162 = !{!25132}
!25163 = !{!25132, !25130, !25128, !25126, !25124}
!25164 = !{!25134}
!25165 = !{!25144, !25142, !25140, !25138, !25136, !25134}
!25166 = !{!25146}
!25167 = !{!25148}
!25168 = !{!25148, !25146}
!25169 = distinct !{!25169, !"_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs7p2uQeJxui2_9deltalake"}
!25170 = distinct !{!25170, !25169, !"_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs7p2uQeJxui2_9deltalake: argument 0"}
!25171 = !{!25170}
!25172 = distinct !{!25172, !"_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCs7p2uQeJxui2_9deltalake"}
!25173 = distinct !{!25173, !25172, !"_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCs7p2uQeJxui2_9deltalake: argument 0"}
!25174 = distinct !{!25174, !"_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs7p2uQeJxui2_9deltalake"}
!25175 = distinct !{!25175, !25174, !"_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs7p2uQeJxui2_9deltalake: argument 0"}
!25176 = !{!25173}
!25177 = !{!25175}
!25178 = !{!25175, !25173}
!25179 = distinct !{!25179, !"_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs7p2uQeJxui2_9deltalake"}
!25180 = distinct !{!25180, !25179, !"_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs7p2uQeJxui2_9deltalake: argument 0"}
!25181 = !{!25180}
!25182 = distinct !{!25182, !"_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs7p2uQeJxui2_9deltalake"}
!25183 = distinct !{!25183, !25182, !"_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs7p2uQeJxui2_9deltalake: argument 0"}
!25184 = !{!25183}
!25185 = distinct !{!25185, !"_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs7p2uQeJxui2_9deltalake"}
!25186 = distinct !{!25186, !25185, !"_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs7p2uQeJxui2_9deltalake: argument 0"}
!25187 = !{!25186}
!25188 = distinct !{!25188, !"_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs7p2uQeJxui2_9deltalake"}
!25189 = distinct !{!25189, !25188, !"_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs7p2uQeJxui2_9deltalake: argument 0"}
!25190 = !{!25189}
!25191 = distinct !{!25191, !"_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs7p2uQeJxui2_9deltalake"}
!25192 = distinct !{!25192, !25191, !"_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs7p2uQeJxui2_9deltalake: argument 0"}
!25193 = !{!25192}
!25194 = distinct !{!25194, !"_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs7p2uQeJxui2_9deltalake"}
!25195 = distinct !{!25195, !25194, !"_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs7p2uQeJxui2_9deltalake: argument 0"}
!25196 = !{!25195}
!25197 = distinct !{!25197, !"_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs7p2uQeJxui2_9deltalake"}
!25198 = distinct !{!25198, !25197, !"_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs7p2uQeJxui2_9deltalake: argument 0"}
!25199 = !{!25198}
!25200 = distinct !{!25200, !"_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs7p2uQeJxui2_9deltalake"}
!25201 = distinct !{!25201, !25200, !"_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs7p2uQeJxui2_9deltalake: argument 0"}
!25202 = !{!25201}
!25203 = distinct !{!25203, !"_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs7p2uQeJxui2_9deltalake"}
!25204 = distinct !{!25204, !25203, !"_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs7p2uQeJxui2_9deltalake: argument 0"}
!25205 = !{!25204}
!25206 = distinct !{!25206, !"_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs7p2uQeJxui2_9deltalake"}
!25207 = distinct !{!25207, !25206, !"_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs7p2uQeJxui2_9deltalake: argument 0"}
!25208 = !{!25207}
!25209 = distinct !{!25209, !"_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs7p2uQeJxui2_9deltalake"}
!25210 = distinct !{!25210, !25209, !"_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs7p2uQeJxui2_9deltalake: argument 0"}
!25211 = !{!25210}
!25212 = distinct !{!25212, !"_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs7p2uQeJxui2_9deltalake"}
!25213 = distinct !{!25213, !25212, !"_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs7p2uQeJxui2_9deltalake: argument 0"}
!25214 = !{!25213}
!25215 = distinct !{!25215, !"_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs7p2uQeJxui2_9deltalake"}
!25216 = distinct !{!25216, !25215, !"_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs7p2uQeJxui2_9deltalake: argument 0"}
!25217 = !{!25216}
!25218 = distinct !{!25218, !"_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs7p2uQeJxui2_9deltalake"}
!25219 = distinct !{!25219, !25218, !"_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs7p2uQeJxui2_9deltalake: argument 0"}
!25220 = !{!25219}
!25221 = distinct !{!25221, !"_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs7p2uQeJxui2_9deltalake"}
!25222 = distinct !{!25222, !25221, !"_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs7p2uQeJxui2_9deltalake: argument 0"}
!25223 = !{!25222}
!25224 = distinct !{!25224, !"_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs7p2uQeJxui2_9deltalake"}
!25225 = distinct !{!25225, !25224, !"_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs7p2uQeJxui2_9deltalake: argument 0"}
!25226 = !{!25225}
!25227 = distinct !{!25227, !"_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs7p2uQeJxui2_9deltalake"}
!25228 = distinct !{!25228, !25227, !"_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs7p2uQeJxui2_9deltalake: argument 0"}
!25229 = !{!25228}
!25230 = distinct !{!25230, !"_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs7p2uQeJxui2_9deltalake"}
!25231 = distinct !{!25231, !25230, !"_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs7p2uQeJxui2_9deltalake: argument 0"}
!25232 = !{!25231}
!25233 = distinct !{!25233, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlEECs7p2uQeJxui2_9deltalake"}
!25234 = distinct !{!25234, !25233, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlEECs7p2uQeJxui2_9deltalake: argument 0"}
!25235 = distinct !{!25235, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlECs7p2uQeJxui2_9deltalake"}
!25236 = distinct !{!25236, !25235, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlECs7p2uQeJxui2_9deltalake: argument 0"}
!25237 = distinct !{!25237, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs7p2uQeJxui2_9deltalake"}
!25238 = distinct !{!25238, !25237, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs7p2uQeJxui2_9deltalake: argument 0"}
!25239 = distinct !{!25239, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake"}
!25240 = distinct !{!25240, !25239, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake: argument 0"}
!25241 = distinct !{!25241, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake"}
!25242 = distinct !{!25242, !25241, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake: argument 0"}
!25243 = distinct !{!25243, !"_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake"}
!25244 = distinct !{!25244, !25243, !"_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake: argument 0"}
!25245 = distinct !{!25245, !"_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake"}
!25246 = distinct !{!25246, !25245, !"_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake: argument 0"}
!25247 = distinct !{!25247, !"_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake"}
!25248 = distinct !{!25248, !25247, !"_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake: argument 0"}
!25249 = distinct !{!25249, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEECs7p2uQeJxui2_9deltalake"}
!25250 = distinct !{!25250, !25249, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEECs7p2uQeJxui2_9deltalake: argument 0"}
!25251 = distinct !{!25251, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake"}
!25252 = distinct !{!25252, !25251, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake: argument 0"}
!25253 = distinct !{!25253, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake"}
!25254 = distinct !{!25254, !25253, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake: argument 0"}
!25255 = distinct !{!25255, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake"}
!25256 = distinct !{!25256, !25255, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake: argument 0"}
!25257 = distinct !{!25257, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake"}
!25258 = distinct !{!25258, !25257, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake: argument 0"}
!25259 = !{!25234}
!25260 = !{!25244, !25242, !25240, !25238, !25236, !25234}
!25261 = !{!25242, !25240, !25238, !25236, !25234}
!25262 = !{!25246}
!25263 = !{!25248}
!25264 = !{!25250}
!25265 = !{!25254, !25252, !25250}
!25266 = !{!25258, !25256}
!25267 = distinct !{!25267, !"_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array7builder20generic_list_builderINtB4_18GenericListBuilderlNtNtB6_15boolean_builder14BooleanBuilderE13with_capacityCs7p2uQeJxui2_9deltalake"}
!25268 = distinct !{!25268, !25267, !"_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array7builder20generic_list_builderINtB4_18GenericListBuilderlNtNtB6_15boolean_builder14BooleanBuilderE13with_capacityCs7p2uQeJxui2_9deltalake: argument 0"}
!25269 = distinct !{!25269, !25267, !"_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array7builder20generic_list_builderINtB4_18GenericListBuilderlNtNtB6_15boolean_builder14BooleanBuilderE13with_capacityCs7p2uQeJxui2_9deltalake: argument 1"}
!25270 = distinct !{!25270, !"_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake"}
!25271 = distinct !{!25271, !25270, !"_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake: argument 0"}
!25272 = distinct !{!25272, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs1N9T06jgEdt_11arrow_array7builder15boolean_builder14BooleanBuilderECs7p2uQeJxui2_9deltalake"}
!25273 = distinct !{!25273, !25272, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs1N9T06jgEdt_11arrow_array7builder15boolean_builder14BooleanBuilderECs7p2uQeJxui2_9deltalake: argument 0"}
!25274 = distinct !{!25274, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder4null17NullBufferBuilderECs7p2uQeJxui2_9deltalake"}
!25275 = distinct !{!25275, !25274, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder4null17NullBufferBuilderECs7p2uQeJxui2_9deltalake: argument 0"}
!25276 = distinct !{!25276, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderEECs7p2uQeJxui2_9deltalake"}
!25277 = distinct !{!25277, !25276, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderEECs7p2uQeJxui2_9deltalake: argument 0"}
!25278 = distinct !{!25278, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder4null17NullBufferBuilderECs7p2uQeJxui2_9deltalake"}
!25279 = distinct !{!25279, !25278, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder4null17NullBufferBuilderECs7p2uQeJxui2_9deltalake: argument 0"}
!25280 = distinct !{!25280, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderEECs7p2uQeJxui2_9deltalake"}
!25281 = distinct !{!25281, !25280, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderEECs7p2uQeJxui2_9deltalake: argument 0"}
!25282 = distinct !{!25282, !"_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VeclE8push_mutCs7p2uQeJxui2_9deltalake"}
!25283 = distinct !{!25283, !25282, !"_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VeclE8push_mutCs7p2uQeJxui2_9deltalake: argument 0"}
!25284 = !{!25268}
!25285 = !{!25269}
!25286 = !{!25268, !25269}
!25287 = !{!25271, !25268, !25269}
!25288 = !{!25277, !25275, !25273}
!25289 = !{!25281, !25279, !25273}
!25290 = !{!25283}
!25291 = distinct !{!25291, !"_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferlE3newCs7p2uQeJxui2_9deltalake"}
!25292 = distinct !{!25292, !25291, !"_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferlE3newCs7p2uQeJxui2_9deltalake: argument 1"}
!25293 = distinct !{!25293, !25291, !"_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferlE3newCs7p2uQeJxui2_9deltalake: argument 0"}
!25294 = distinct !{!25294, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs7p2uQeJxui2_9deltalake"}
!25295 = distinct !{!25295, !25294, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs7p2uQeJxui2_9deltalake: argument 0"}
!25296 = distinct !{!25296, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEECs7p2uQeJxui2_9deltalake"}
!25297 = distinct !{!25297, !25296, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEECs7p2uQeJxui2_9deltalake: argument 0"}
!25298 = distinct !{!25298, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake"}
!25299 = distinct !{!25299, !25298, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake: argument 0"}
!25300 = distinct !{!25300, !"_RNvXs3_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB5_12ScalarBufferlEINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtB7_9immutable6BufferE4fromCs7p2uQeJxui2_9deltalake"}
!25301 = distinct !{!25301, !25300, !"_RNvXs3_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB5_12ScalarBufferlEINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtB7_9immutable6BufferE4fromCs7p2uQeJxui2_9deltalake: argument 0"}
!25302 = distinct !{!25302, !25300, !"_RNvXs3_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB5_12ScalarBufferlEINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtB7_9immutable6BufferE4fromCs7p2uQeJxui2_9deltalake: argument 1"}
!25303 = distinct !{!25303, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs7p2uQeJxui2_9deltalake"}
!25304 = distinct !{!25304, !25303, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs7p2uQeJxui2_9deltalake: argument 0"}
!25305 = distinct !{!25305, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEECs7p2uQeJxui2_9deltalake"}
!25306 = distinct !{!25306, !25305, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEECs7p2uQeJxui2_9deltalake: argument 0"}
!25307 = distinct !{!25307, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake"}
!25308 = distinct !{!25308, !25307, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake: argument 0"}
!25309 = distinct !{!25309, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs7p2uQeJxui2_9deltalake"}
!25310 = distinct !{!25310, !25309, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs7p2uQeJxui2_9deltalake: argument 0"}
!25311 = distinct !{!25311, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEECs7p2uQeJxui2_9deltalake"}
!25312 = distinct !{!25312, !25311, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEECs7p2uQeJxui2_9deltalake: argument 0"}
!25313 = distinct !{!25313, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake"}
!25314 = distinct !{!25314, !25313, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake: argument 0"}
!25315 = !{!25292}
!25316 = !{!25293, !25292}
!25317 = !{!25293}
!25318 = !{!25295}
!25319 = !{!25297}
!25320 = !{!25299}
!25321 = !{!25299, !25297, !25295, !25292}
!25322 = !{!25299, !25297, !25295, !25293}
!25323 = !{!25301}
!25324 = !{!25302}
!25325 = !{!25301, !25293, !25292}
!25326 = !{!25301, !25302, !25293}
!25327 = !{!25304}
!25328 = !{!25306}
!25329 = !{!25308}
!25330 = !{!25308, !25306, !25304, !25302}
!25331 = !{!25308, !25306, !25304, !25301, !25302, !25293}
!25332 = !{!25301, !25293}
!25333 = !{!25301, !25302}
!25334 = !{!25310}
!25335 = !{!25312}
!25336 = !{!25314}
!25337 = !{!25314, !25312, !25310, !25292}
!25338 = !{!25314, !25312, !25310, !25293}
!25339 = distinct !{!25339, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs7p2uQeJxui2_9deltalake"}
!25340 = distinct !{!25340, !25339, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs7p2uQeJxui2_9deltalake: argument 0"}
!25341 = distinct !{!25341, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEECs7p2uQeJxui2_9deltalake"}
!25342 = distinct !{!25342, !25341, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEECs7p2uQeJxui2_9deltalake: argument 0"}
!25343 = distinct !{!25343, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake"}
!25344 = distinct !{!25344, !25343, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake: argument 0"}
!25345 = distinct !{!25345, !"_RNvXs3_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB5_12ScalarBufferxEINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtB7_9immutable6BufferE4fromCs7p2uQeJxui2_9deltalake"}
!25346 = distinct !{!25346, !25345, !"_RNvXs3_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB5_12ScalarBufferxEINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtB7_9immutable6BufferE4fromCs7p2uQeJxui2_9deltalake: argument 0"}
!25347 = distinct !{!25347, !25345, !"_RNvXs3_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB5_12ScalarBufferxEINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtB7_9immutable6BufferE4fromCs7p2uQeJxui2_9deltalake: argument 1"}
!25348 = distinct !{!25348, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs7p2uQeJxui2_9deltalake"}
!25349 = distinct !{!25349, !25348, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs7p2uQeJxui2_9deltalake: argument 0"}
!25350 = distinct !{!25350, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEECs7p2uQeJxui2_9deltalake"}
!25351 = distinct !{!25351, !25350, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEECs7p2uQeJxui2_9deltalake: argument 0"}
!25352 = distinct !{!25352, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake"}
!25353 = distinct !{!25353, !25352, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake: argument 0"}
!25354 = distinct !{!25354, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs7p2uQeJxui2_9deltalake"}
!25355 = distinct !{!25355, !25354, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs7p2uQeJxui2_9deltalake: argument 0"}
!25356 = distinct !{!25356, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEECs7p2uQeJxui2_9deltalake"}
!25357 = distinct !{!25357, !25356, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEECs7p2uQeJxui2_9deltalake: argument 0"}
!25358 = distinct !{!25358, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake"}
!25359 = distinct !{!25359, !25358, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake: argument 0"}
!25360 = !{!25340}
!25361 = !{!25342}
!25362 = !{!25344}
!25363 = !{!25344, !25342, !25340}
!25364 = !{!25346}
!25365 = !{!25347}
!25366 = !{!25346, !25347}
!25367 = !{!25349}
!25368 = !{!25351}
!25369 = !{!25353}
!25370 = !{!25353, !25351, !25349, !25347}
!25371 = !{!25353, !25351, !25349, !25346, !25347}
!25372 = !{!25355}
!25373 = !{!25357}
!25374 = !{!25359}
!25375 = !{!25359, !25357, !25355}
!25376 = distinct !{!25376, !"_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs5wg436RVUAP_24datafusion_physical_plan10projection14ProjectionExecEE3newCs7p2uQeJxui2_9deltalake"}
!25377 = distinct !{!25377, !25376, !"_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs5wg436RVUAP_24datafusion_physical_plan10projection14ProjectionExecEE3newCs7p2uQeJxui2_9deltalake: argument 0"}
!25378 = !{!25377}
!25379 = distinct !{!25379, !"_RNCINvNtCs4Y5ccqZjUYD_25datafusion_common_runtime11trace_utils12trace_futureTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENCNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned000Es_0Cs7p2uQeJxui2_9deltalake"}
!25380 = distinct !{!25380, !25379, !"_RNCINvNtCs4Y5ccqZjUYD_25datafusion_common_runtime11trace_utils12trace_futureTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENCNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned000Es_0Cs7p2uQeJxui2_9deltalake: argument 1"}
!25381 = distinct !{!25381, !"_RINvMsb_NtNtCs6Po7BT7Nknu_5alloc5boxed7convertINtB8_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBX_6marker4SendEL_E8downcastTjINtNtBX_6result6ResultINtNtBa_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs7p2uQeJxui2_9deltalake"}
!25382 = distinct !{!25382, !25381, !"_RINvMsb_NtNtCs6Po7BT7Nknu_5alloc5boxed7convertINtB8_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBX_6marker4SendEL_E8downcastTjINtNtBX_6result6ResultINtNtBa_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs7p2uQeJxui2_9deltalake: argument 1"}
!25383 = distinct !{!25383, !25379, !"_RNCINvNtCs4Y5ccqZjUYD_25datafusion_common_runtime11trace_utils12trace_futureTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENCNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned000Es_0Cs7p2uQeJxui2_9deltalake: argument 0"}
!25384 = distinct !{!25384, !25381, !"_RINvMsb_NtNtCs6Po7BT7Nknu_5alloc5boxed7convertINtB8_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBX_6marker4SendEL_E8downcastTjINtNtBX_6result6ResultINtNtBa_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs7p2uQeJxui2_9deltalake: argument 0"}
!25385 = !{!25380}
!25386 = !{!25382}
!25387 = !{!25383, !25380}
!25388 = !{!25384, !25382, !25383, !25380}
!25389 = !{!25382, !25380}
!25390 = !{!25384, !25383}
!25391 = !{!25383}
!25392 = distinct !{!25392, !"_RNvXse7_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq"}
!25393 = distinct !{!25393, !25392, !"_RNvXse7_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq: argument 0"}
!25394 = distinct !{!25394, !25392, !"_RNvXse7_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq: argument 1"}
!25395 = distinct !{!25395, !"_RNvXs2n_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_5TableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq"}
!25396 = distinct !{!25396, !25395, !"_RNvXs2n_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_5TableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq: argument 0"}
!25397 = distinct !{!25397, !25395, !"_RNvXs2n_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_5TableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq: argument 1"}
!25398 = !{!25393}
!25399 = !{!25394}
!25400 = !{!25393, !25394}
!25401 = !{!25396}
!25402 = !{!25397}
!25403 = !{!25396, !25397}
!25404 = distinct !{!25404, !"_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvXs1_NtCs7p2uQeJxui2_9deltalake10datafusionNtBM_17LazyTableProviderNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider4scan0E3newBO_"}
!25405 = distinct !{!25405, !25404, !"_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvXs1_NtCs7p2uQeJxui2_9deltalake10datafusionNtBM_17LazyTableProviderNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider4scan0E3newBO_: argument 0"}
!25406 = !{!25405}
!25407 = distinct !{!25407, !"_RNCINvNtCs8VI8w5SIoU4_15datafusion_expr5utils19find_exprs_in_exprsNCINvB4_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtNtB1C_5slice4iter4IterNtNtB6_4expr4ExprEINtNtB1C_6option4IterB2M_EEE0B1t_Es_0Cs7p2uQeJxui2_9deltalake"}
!25408 = distinct !{!25408, !25407, !"_RNCINvNtCs8VI8w5SIoU4_15datafusion_expr5utils19find_exprs_in_exprsNCINvB4_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtNtB1C_5slice4iter4IterNtNtB6_4expr4ExprEINtNtB1C_6option4IterB2M_EEE0B1t_Es_0Cs7p2uQeJxui2_9deltalake: argument 0"}
!25409 = distinct !{!25409, !25407, !"_RNCINvNtCs8VI8w5SIoU4_15datafusion_expr5utils19find_exprs_in_exprsNCINvB4_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtNtB1C_5slice4iter4IterNtNtB6_4expr4ExprEINtNtB1C_6option4IterB2M_EEE0B1t_Es_0Cs7p2uQeJxui2_9deltalake: argument 1"}
!25410 = distinct !{!25410, !25407, !"_RNCINvNtCs8VI8w5SIoU4_15datafusion_expr5utils19find_exprs_in_exprsNCINvB4_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtNtB1C_5slice4iter4IterNtNtB6_4expr4ExprEINtNtB1C_6option4IterB2M_EEE0B1t_Es_0Cs7p2uQeJxui2_9deltalake: argument 2"}
!25411 = distinct !{!25411, !"_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE8push_mutCs7p2uQeJxui2_9deltalake"}
!25412 = distinct !{!25412, !25411, !"_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE8push_mutCs7p2uQeJxui2_9deltalake: argument 0"}
!25413 = distinct !{!25413, !25411, !"_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE8push_mutCs7p2uQeJxui2_9deltalake: argument 1"}
!25414 = !{!25408}
!25415 = !{!25409}
!25416 = !{!25408, !25410}
!25417 = !{!25408, !25409}
!25418 = !{!25408, !25409, !25410}
!25419 = !{!25412, !25409}
!25420 = !{!25413, !25408, !25410}
!25421 = !{!25413, !25408}
!25422 = !{!25410}
!25423 = distinct !{!25423, !"_RNCINvNtCs8VI8w5SIoU4_15datafusion_expr5utils19find_exprs_in_exprsNCINvB4_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterNtNtB6_4expr4SortENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB3a_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans2_0EE0B1w_Es_0Cs7p2uQeJxui2_9deltalake"}
!25424 = distinct !{!25424, !25423, !"_RNCINvNtCs8VI8w5SIoU4_15datafusion_expr5utils19find_exprs_in_exprsNCINvB4_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterNtNtB6_4expr4SortENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB3a_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans2_0EE0B1w_Es_0Cs7p2uQeJxui2_9deltalake: argument 0"}
!25425 = distinct !{!25425, !25423, !"_RNCINvNtCs8VI8w5SIoU4_15datafusion_expr5utils19find_exprs_in_exprsNCINvB4_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterNtNtB6_4expr4SortENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB3a_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans2_0EE0B1w_Es_0Cs7p2uQeJxui2_9deltalake: argument 1"}
!25426 = distinct !{!25426, !25423, !"_RNCINvNtCs8VI8w5SIoU4_15datafusion_expr5utils19find_exprs_in_exprsNCINvB4_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterNtNtB6_4expr4SortENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB3a_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans2_0EE0B1w_Es_0Cs7p2uQeJxui2_9deltalake: argument 2"}
!25427 = distinct !{!25427, !"_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE8push_mutCs7p2uQeJxui2_9deltalake"}
!25428 = distinct !{!25428, !25427, !"_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE8push_mutCs7p2uQeJxui2_9deltalake: argument 0"}
!25429 = distinct !{!25429, !25427, !"_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE8push_mutCs7p2uQeJxui2_9deltalake: argument 1"}
!25430 = !{!25424}
!25431 = !{!25425}
!25432 = !{!25424, !25426}
!25433 = !{!25424, !25425}
!25434 = !{!25424, !25425, !25426}
!25435 = !{!25428, !25425}
!25436 = !{!25429, !25424, !25426}
!25437 = !{!25429, !25424}
!25438 = !{!25426}
!25439 = distinct !{!25439, !"_RNCINvNtCs8VI8w5SIoU4_15datafusion_expr5utils19find_exprs_in_exprsNCINvB4_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainIB1x_INtNtNtB1F_5slice4iter4IterNtNtB6_4expr4ExprEINtNtB1F_6option4IterB2U_EEB3c_EE0B1w_Es_0Cs7p2uQeJxui2_9deltalake"}
!25440 = distinct !{!25440, !25439, !"_RNCINvNtCs8VI8w5SIoU4_15datafusion_expr5utils19find_exprs_in_exprsNCINvB4_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainIB1x_INtNtNtB1F_5slice4iter4IterNtNtB6_4expr4ExprEINtNtB1F_6option4IterB2U_EEB3c_EE0B1w_Es_0Cs7p2uQeJxui2_9deltalake: argument 0"}
!25441 = distinct !{!25441, !25439, !"_RNCINvNtCs8VI8w5SIoU4_15datafusion_expr5utils19find_exprs_in_exprsNCINvB4_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainIB1x_INtNtNtB1F_5slice4iter4IterNtNtB6_4expr4ExprEINtNtB1F_6option4IterB2U_EEB3c_EE0B1w_Es_0Cs7p2uQeJxui2_9deltalake: argument 1"}
!25442 = distinct !{!25442, !25439, !"_RNCINvNtCs8VI8w5SIoU4_15datafusion_expr5utils19find_exprs_in_exprsNCINvB4_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainIB1x_INtNtNtB1F_5slice4iter4IterNtNtB6_4expr4ExprEINtNtB1F_6option4IterB2U_EEB3c_EE0B1w_Es_0Cs7p2uQeJxui2_9deltalake: argument 2"}
!25443 = distinct !{!25443, !"_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE8push_mutCs7p2uQeJxui2_9deltalake"}
!25444 = distinct !{!25444, !25443, !"_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE8push_mutCs7p2uQeJxui2_9deltalake: argument 0"}
!25445 = distinct !{!25445, !25443, !"_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE8push_mutCs7p2uQeJxui2_9deltalake: argument 1"}
!25446 = !{!25440}
!25447 = !{!25441}
!25448 = !{!25440, !25442}
!25449 = !{!25440, !25441}
!25450 = !{!25440, !25441, !25442}
!25451 = !{!25444, !25441}
!25452 = !{!25445, !25440, !25442}
!25453 = !{!25445, !25440}
!25454 = !{!25442}
!25455 = distinct !{!25455, !"_RNCINvNtCs8VI8w5SIoU4_15datafusion_expr5utils19find_exprs_in_exprsNCINvB4_20find_aggregate_exprsRSNtNtB6_4expr4ExprE0B1w_Es_0Cs7p2uQeJxui2_9deltalake"}
!25456 = distinct !{!25456, !25455, !"_RNCINvNtCs8VI8w5SIoU4_15datafusion_expr5utils19find_exprs_in_exprsNCINvB4_20find_aggregate_exprsRSNtNtB6_4expr4ExprE0B1w_Es_0Cs7p2uQeJxui2_9deltalake: argument 0"}
!25457 = distinct !{!25457, !25455, !"_RNCINvNtCs8VI8w5SIoU4_15datafusion_expr5utils19find_exprs_in_exprsNCINvB4_20find_aggregate_exprsRSNtNtB6_4expr4ExprE0B1w_Es_0Cs7p2uQeJxui2_9deltalake: argument 1"}
!25458 = distinct !{!25458, !25455, !"_RNCINvNtCs8VI8w5SIoU4_15datafusion_expr5utils19find_exprs_in_exprsNCINvB4_20find_aggregate_exprsRSNtNtB6_4expr4ExprE0B1w_Es_0Cs7p2uQeJxui2_9deltalake: argument 2"}
!25459 = distinct !{!25459, !"_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE8push_mutCs7p2uQeJxui2_9deltalake"}
!25460 = distinct !{!25460, !25459, !"_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE8push_mutCs7p2uQeJxui2_9deltalake: argument 0"}
!25461 = distinct !{!25461, !25459, !"_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE8push_mutCs7p2uQeJxui2_9deltalake: argument 1"}
!25462 = !{!25456}
!25463 = !{!25457}
!25464 = !{!25456, !25458}
!25465 = !{!25456, !25457}
!25466 = !{!25456, !25457, !25458}
!25467 = !{!25460, !25457}
!25468 = !{!25461, !25456, !25458}
!25469 = !{!25461, !25456}
!25470 = !{!25458}
!25471 = distinct !{!25471, !"_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE7project0Cs7p2uQeJxui2_9deltalake"}
!25472 = distinct !{!25472, !25471, !"_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE7project0Cs7p2uQeJxui2_9deltalake: argument 0"}
!25473 = distinct !{!25473, !25471, !"_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE7project0Cs7p2uQeJxui2_9deltalake: argument 1"}
!25474 = !{!25472}
!25475 = !{!25473}
!25476 = distinct !{!25476, !"_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE9aggregates2_0Cs7p2uQeJxui2_9deltalake"}
!25477 = distinct !{!25477, !25476, !"_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE9aggregates2_0Cs7p2uQeJxui2_9deltalake: argument 0"}
!25478 = distinct !{!25478, !25476, !"_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE9aggregates2_0Cs7p2uQeJxui2_9deltalake: argument 1"}
!25479 = !{!25477}
!25480 = !{!25478}
!25481 = !{!25477, !25478}
!25482 = distinct !{!25482, !"_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCNCNCINvNvNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCINvNtB2f_5utils18find_exprs_in_exprNCINvB2Z_17find_window_exprsINtNtNtNtBb_4iter8adapters5chain5ChainINtNtNtBb_5slice4iter4IterB2b_EINtNtBb_6option4IterB2b_EEE0E0E000INtB7_5FnMutTRB2b_EE8call_mutCs7p2uQeJxui2_9deltalake"}
!25483 = distinct !{!25483, !25482, !"_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCNCNCINvNvNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCINvNtB2f_5utils18find_exprs_in_exprNCINvB2Z_17find_window_exprsINtNtNtNtBb_4iter8adapters5chain5ChainINtNtNtBb_5slice4iter4IterB2b_EINtNtBb_6option4IterB2b_EEE0E0E000INtB7_5FnMutTRB2b_EE8call_mutCs7p2uQeJxui2_9deltalake: argument 1"}
!25484 = distinct !{!25484, !25482, !"_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCNCNCINvNvNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCINvNtB2f_5utils18find_exprs_in_exprNCINvB2Z_17find_window_exprsINtNtNtNtBb_4iter8adapters5chain5ChainINtNtNtBb_5slice4iter4IterB2b_EINtNtBb_6option4IterB2b_EEE0E0E000INtB7_5FnMutTRB2b_EE8call_mutCs7p2uQeJxui2_9deltalake: argument 2"}
!25485 = distinct !{!25485, !25482, !"_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCNCNCINvNvNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCINvNtB2f_5utils18find_exprs_in_exprNCINvB2Z_17find_window_exprsINtNtNtNtBb_4iter8adapters5chain5ChainINtNtNtBb_5slice4iter4IterB2b_EINtNtBb_6option4IterB2b_EEE0E0E000INtB7_5FnMutTRB2b_EE8call_mutCs7p2uQeJxui2_9deltalake: argument 0"}
!25486 = !{!25483}
!25487 = !{!25485, !25484}
!25488 = !{!25485, !25483, !25484}
!25489 = distinct !{!25489, !"_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCNCNCINvNvNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCINvNtB2f_5utils18find_exprs_in_exprNCINvB2Z_20find_aggregate_exprsINtNtNtNtBb_4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterNtB2d_4SortENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB5h_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans2_0EE0E0E000INtB7_5FnMutTRB2b_EE8call_mutCs7p2uQeJxui2_9deltalake"}
!25490 = distinct !{!25490, !25489, !"_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCNCNCINvNvNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCINvNtB2f_5utils18find_exprs_in_exprNCINvB2Z_20find_aggregate_exprsINtNtNtNtBb_4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterNtB2d_4SortENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB5h_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans2_0EE0E0E000INtB7_5FnMutTRB2b_EE8call_mutCs7p2uQeJxui2_9deltalake: argument 1"}
end_hunk_1
