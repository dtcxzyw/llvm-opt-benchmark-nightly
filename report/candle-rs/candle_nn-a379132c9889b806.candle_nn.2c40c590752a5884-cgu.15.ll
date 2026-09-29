Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_nn-a379132c9889b806.candle_nn.2c40c590752a5884-cgu.15?download=true
inline.NumInlined: 380
inline.NumDeleted: 184
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsltEA4u8Pgfu_11candle_core8variable3VarE8grow_oneCs3NyA1pFSltE_9candle_nn:bb.a
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs3NyA1pFSltE_9candle_nn(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef range(i64 1, 0) %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #6 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !7
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %3, %.0.val                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.g = icmp uge i64 %i.b, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = tail call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #28
  br label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.b, 0
  br i1 %i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.j = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28
  %i.k = tail call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #28
  br label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.h, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator4grow.exit ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = icmp eq ptr %.pn8, null
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.m, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.j, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.n, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.o, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3NyA1pFSltE_9candle_nn(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 5 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !7
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !7

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
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28
  br i1 %2, label %bb.g, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #28
  br label %bb.h

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.k = tail call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #28
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit
  %.pn9 = phi ptr [ %i.j, %bb.g ], [ %i.k, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.l = icmp eq ptr %.pn9, null
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
  store ptr %.pn9, ptr %i.q, align 8
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCs3NyA1pFSltE_9candle_nn5optimNtB4_3SGD4push(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.c = atomicrmw add ptr %i.b, i64 1 monotonic, align 8
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !301)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8, !noalias !301
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !301, !noundef !4 ; 3 uses
  %i.g = load i64, ptr %0, align 8, !range !9, !alias.scope !301, !noundef !4
  %i.h = icmp eq i64 %i.f, %i.g
  br i1 %i.h, label %bb.c, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsltEA4u8Pgfu_11candle_core8variable3VarE8push_mutCs3NyA1pFSltE_9candle_nn.exit

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsltEA4u8Pgfu_11candle_core8variable3VarE8grow_oneCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsltEA4u8Pgfu_11candle_core8variable3VarE8push_mutCs3NyA1pFSltE_9candle_nn.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !302
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core8variable3VarECs3NyA1pFSltE_9candle_nn.exit.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #31
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core8variable3VarECs3NyA1pFSltE_9candle_nn.exit.i unwind label %bb.f, !noalias !301

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30, !noalias !301
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core8variable3VarECs3NyA1pFSltE_9candle_nn.exit.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.i

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsltEA4u8Pgfu_11candle_core8variable3VarE8push_mutCs3NyA1pFSltE_9candle_nn.exit: ; preds = %bb.b, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !301, !nonnull !4, !noundef !4
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.f
  store ptr %i.b, ptr %i.o, align 8, !noalias !301
  %i.p = add i64 %i.f, 1
  store i64 %i.p, ptr %i.e, align 8, !alias.scope !301
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 ptr @_RNvMsz_NtCsgjKvpibvENk_15crossbeam_epoch6atomicINtB5_6SharedINtNtCsi6QvKh33q8P_15crossbeam_deque5deque6BufferNtNtCsa5n7gMT4fih_10rayon_core3job6JobRefEE5derefCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !4
  %i.b = and i64 %i.a, -8
  %i.c = inttoptr i64 %i.b to ptr
  ret ptr %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit(i64 noundef range(i64 8, 49) %0) unnamed_addr #8 {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28
  %i.a = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %0, i64 noundef 8) #28 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %0) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtCs3NyA1pFSltE_9candle_nn5optimNtB2_3SGDNtB2_9Optimizer3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, double noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %i.g = icmp ult i64 %i.f, 1152921504606846976
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.f ; 2 uses
  %i.i = load i64, ptr %1, align 8, !range !9, !noundef !4 ; 3 uses
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.h, ptr %.sroa.6.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.k = invoke { ptr, ptr } @_RINvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsltEA4u8Pgfu_11candle_core8variable3VarENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB1M_8adapters6filter15filter_try_foldBX_B2K_INtNtB1O_6result6ResultB2K_zENCNvXNtCs3NyA1pFSltE_9candle_nn5optimNtB4N_3SGDNtB4N_9Optimizer3new0NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0E0B4f_EB4P_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef nonnull %i.j, ptr noundef nonnull %i.h)
          to label %bb.d unwind label %bb.c, !noalias !306

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.t, %bb.e ], [ %i.l, %bb.c ]
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsltEA4u8Pgfu_11candle_core8variable3VarENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCsltEA4u8Pgfu_11candle_core8variable3VarENCNvXNtCs3NyA1pFSltE_9candle_nn5optimNtB2R_3SGDNtB2R_9Optimizer3new0EEB2T_.exit.i unwind label %bb.f, !noalias !306

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.m = extractvalue { ptr, ptr } %i.k, 1
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.d to i64
  %i.p = sub nuw i64 %i.n, %i.o
  %i.q = lshr exact i64 %i.p, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !307
  store ptr %i.d, ptr %i.a, align 8, !noalias !307
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.q, ptr %i.r, align 8, !noalias !307
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.i, ptr %i.s, align 8, !noalias !307
  invoke void @_RNvMs0_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsltEA4u8Pgfu_11candle_core8variable3VarE32forget_allocation_drop_remainingCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtNtCsgCecv3eZDcN_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter6FilterINtNtB4_9into_iter8IntoIterNtNtCsltEA4u8Pgfu_11candle_core8variable3VarENCNvXNtCs3NyA1pFSltE_9candle_nn5optimNtB3f_3SGDNtB3f_9Optimizer3new0EB2r_EB3h_.exit unwind label %bb.e, !noalias !306

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtCsltEA4u8Pgfu_11candle_core8variable3VarB1L_EECs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #29
          to label %bb.b unwind label %bb.f, !noalias !306

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30, !noalias !306
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCsltEA4u8Pgfu_11candle_core8variable3VarENCNvXNtCs3NyA1pFSltE_9candle_nn5optimNtB2R_3SGDNtB2R_9Optimizer3new0EEB2T_.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %.pn.i

_RINvNtNtCsgCecv3eZDcN_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter6FilterINtNtB4_9into_iter8IntoIterNtNtCsltEA4u8Pgfu_11candle_core8variable3VarENCNvXNtCs3NyA1pFSltE_9candle_nn5optimNtB3f_3SGDNtB3f_9Optimizer3new0EB2r_EB3h_.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !307
  call void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsltEA4u8Pgfu_11candle_core8variable3VarENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b), !noalias !306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.v, align 8
  %.sroa.01.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.d, ptr %.sroa.01.sroa.4.0..sroa_idx, align 8
  %.sroa.01.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.q, ptr %.sroa.01.sroa.5.0..sroa_idx, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %2, ptr %.sroa.42.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtCs3NyA1pFSltE_9candle_nn5optimNtB2_3SGDNtB2_9Optimizer4step(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 11 uses
  %i.c = alloca [80 x i8], align 8                ; 8 uses
  %i.d = alloca [8 x i8], align 8                 ; 11 uses
  %i.e = alloca [80 x i8], align 8                ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load double, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.0.059 = phi ptr [ %i.g, %.lr.ph ], [ %i.p, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.059, i64 8 ; 2 uses
  %i.q = call noundef align 8 ptr @_RNvMs_NtCsltEA4u8Pgfu_11candle_core8backpropNtB4_9GradStore3get(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.059) ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.d, label %bb.c

._crit_edge:                                      ; preds = %bb.d, %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.u

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsH_NtCsltEA4u8Pgfu_11candle_core6tensorRNtB5_6TensorINtNtNtCsf3Ta7LF998c_4core3ops5arith3MuldE3mul(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q, double noundef %i.m)
  %i.r = load i64, ptr %i.a, align 8, !range !12, !noundef !4 ; 2 uses
  %.not40 = icmp eq i64 %i.r, -1
  %i.s = load ptr, ptr %i.n, align 8              ; 2 uses
  br i1 %.not40, label %bb.f, label %bb.e

bb.d:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit50, %bb.b
  %i.t = icmp eq ptr %i.p, %i.j
  br i1 %i.t, label %._crit_edge, label %bb.b

bb.e:                                             ; preds = %bb.c
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.528.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.525.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.r, ptr %0, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %.sroa.427.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit51

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.s, ptr %i.b, align 8
  invoke void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor3sub(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.059, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %bb.h unwind label %.loopexit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit45: ; preds = %.loopexit, %.loopexit.split-lp, %bb.k, %bb.l
  %.pn = phi { ptr, i32 } [ %i.z, %bb.k ], [ %i.z, %bb.l ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.experimental.noalias.scope.decl(metadata !344)
  call void @llvm.experimental.noalias.scope.decl(metadata !345)
  call void @llvm.experimental.noalias.scope.decl(metadata !346)
  %i.u = load ptr, ptr %i.b, align 8, !alias.scope !347, !nonnull !4, !noundef !4
  %i.v = atomicrmw sub ptr %i.u, i64 1 release, align 8, !noalias !347
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit

bb.g:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit45
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #31
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit unwind label %bb.t

.loopexit:                                        ; preds = %bb.f, %bb.q
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit45

.loopexit.split-lp:                               ; preds = %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit45

bb.h:                                             ; preds = %bb.f
  %i.x = load i64, ptr %i.c, align 8, !range !12, !noundef !4 ; 2 uses
  %.not41 = icmp eq i64 %i.x, -1
  %i.y = load ptr, ptr %i.o, align 8              ; 2 uses
  br i1 %.not41, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.537.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.534.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
end_hunk_0
begin_hunk_1_@_RNvXsk_NtCsltEA4u8Pgfu_11candle_core5shapeTjjjjjjENtB5_16ShapeWithOneHole10into_shapeCs3NyA1pFSltE_9candle_nn:bb.a

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsk_NtCsltEA4u8Pgfu_11candle_core5shapejNtB5_16ShapeWithOneHole10into_shapeCs3NyA1pFSltE_9candle_nn(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs3_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5ShapeINtNtCsf3Ta7LF998c_4core7convert4FromjE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %1)
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXsk_NtCsltEA4u8Pgfu_11candle_core5shapeuNtB5_16ShapeWithOneHole10into_shapeCs3NyA1pFSltE_9candle_nn(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) initializes((0, 32)) %0, i64 noundef %1) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtBb_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core8variable3VarEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1x_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTOhEE9call_onceCs3NyA1pFSltE_9candle_nn(ptr noundef nonnull %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core8variable3VarEECs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtCsltEA4u8Pgfu_11candle_core5shape1DNtB4_4Dims10to_indexesCs3NyA1pFSltE_9candle_nn(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, i64 noundef range(i64 0, 3) %1, i64 %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [80 x i8], align 8                ; 8 uses
  %i.e = alloca [80 x i8], align 8                ; 2 uses
  %i.f = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.b, align 8, !noalias !813
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %2, ptr %i.g, align 8, !noalias !813
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !813
  call void @_RNvXs8_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_1DNtB5_3Dim8to_index(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5), !noalias !814
  %i.h = load i64, ptr %i.a, align 8, !range !12, !noalias !813, !noundef !4 ; 2 uses
  %.not.i = icmp eq i64 %i.h, -1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noalias !813 ; 4 uses
  br i1 %.not.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !813
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !814
  %i.k = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef 8) #28, !noalias !814 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit, !prof !6

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #33, !noalias !814
  unreachable

bb.d:                                             ; preds = %bb.a
  %.sroa.514.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.11.16.copyload = load ptr, ptr %.sroa.514.0..sroa_idx.i, align 8, !noalias !815
  %.sroa.13.16..sroa.514.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.13.16.copyload = load i64, ptr %.sroa.13.16..sroa.514.0..sroa_idx.i.sroa_idx, align 8, !noalias !815
  %.sroa.14.16..sroa.514.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.517.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.14.16..sroa.514.0..sroa_idx.i.sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !813
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.h, ptr %0, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.416.sroa.4.0..sroa.416.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.11.16.copyload, ptr %.sroa.416.sroa.4.0..sroa.416.0..sroa_idx.sroa_idx, align 8
  %.sroa.416.sroa.5.0..sroa.416.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.13.16.copyload, ptr %.sroa.416.sroa.5.0..sroa.416.0..sroa_idx.sroa_idx, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs3NyA1pFSltE_9candle_nn.exit

bb.e:                                             ; preds = %bb.f, %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #29
          to label %common.resume unwind label %bb.m

.thread:                                          ; preds = %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs3NyA1pFSltE_9candle_nn.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs3NyA1pFSltE_9candle_nn.exit: ; preds = %bb.d, %bb.k, %bb.l, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.b
  store i64 %i.j, ptr %i.k, align 8, !noalias !814
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 1, ptr %.sroa.546.0..sroa_idx, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = icmp ult i64 %i.p, 1152921504606846976
  call void @llvm.assume(i1 %i.q)
  %.not24 = icmp ult i64 %i.j, %i.p
  br i1 %.not24, label %.thread, label %bb.f

bb.f:                                             ; preds = %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3)
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.s = trunc i64 %i.j to i32
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i32 %i.s, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %4, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %5, ptr %i.v, align 8
  store i64 -9223372036854775805, ptr %i.d, align 8
  invoke void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core5errorNtB4_5Error2bt(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.d)
          to label %bb.h unwind label %bb.e

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.e, i64 80, i1 false)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.k unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %i.f, align 8, !alias.scope !816 ; 2 uses
  %i.x = icmp eq i64 %.val2.i, 0
  br i1 %i.x, label %common.resume, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val3.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !817, !nonnull !4, !noundef !4
  %i.y = shl nuw i64 %.val2.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !noalias !818
  br label %common.resume

bb.k:                                             ; preds = %bb.h
  %.val.i = load i64, ptr %i.f, align 8, !alias.scope !816 ; 2 uses
  %i.z = icmp eq i64 %.val.i, 0
  br i1 %i.z, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs3NyA1pFSltE_9candle_nn.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val1.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !817, !nonnull !4, !noundef !4
  %i.aa = shl nuw i64 %.val.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !noalias !819
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs3NyA1pFSltE_9candle_nn.exit

common.resume:                                    ; preds = %bb.e, %bb.i, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.i ], [ %i.w, %bb.j ], [ %i.m, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.m:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYTjjjjjjENtNtCsltEA4u8Pgfu_11candle_core5shape4Dims10to_indexesCs3NyA1pFSltE_9candle_nn(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(48) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 9 uses
  %i.b = alloca [80 x i8], align 8                ; 9 uses
  %i.c = alloca [80 x i8], align 8                ; 9 uses
  %i.d = alloca [80 x i8], align 8                ; 9 uses
  %i.e = alloca [80 x i8], align 8                ; 9 uses
  %i.f = alloca [80 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.29 = alloca [48 x i8], align 8           ; 7 uses
  %i.i = alloca [80 x i8], align 8                ; 8 uses
  %i.j = alloca [80 x i8], align 8                ; 2 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [80 x i8], align 8                ; 8 uses
  %i.n = alloca [80 x i8], align 8                ; 2 uses
  %i.o = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !833
  call void @_RNvXs6_NtCsltEA4u8Pgfu_11candle_core5shapejNtB5_3Dim8to_index(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4), !noalias !834
  %i.p = load i64, ptr %i.f, align 8, !range !12, !noalias !833, !noundef !4 ; 2 uses
  %.not.i = icmp eq i64 %i.p, -1
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.r = load i64, ptr %i.q, align 8, !noalias !833 ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.564.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.21.16.copyload = load ptr, ptr %.sroa.564.0..sroa_idx.i, align 8, !noalias !835
  %.sroa.28.16..sroa.564.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.28.16.copyload = load i64, ptr %.sroa.28.16..sroa.564.0..sroa_idx.i.sroa_idx, align 8, !noalias !835
  %.sroa.29.16..sroa.564.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.29, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.29.16..sroa.564.0..sroa_idx.i.sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !833
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !833
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !833
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_RNvXs6_NtCsltEA4u8Pgfu_11candle_core5shapejNtB5_3Dim8to_index(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4), !noalias !834
  %i.t = load i64, ptr %i.e, align 8, !range !12, !noalias !833, !noundef !4 ; 2 uses
  %.not113.i = icmp eq i64 %i.t, -1
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noalias !833 ; 2 uses
  br i1 %.not113.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.573.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.21.16.copyload31 = load ptr, ptr %.sroa.573.0..sroa_idx.i, align 8, !noalias !835
  %.sroa.28.16..sroa.573.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.28.16.copyload37 = load i64, ptr %.sroa.28.16..sroa.573.0..sroa_idx.i.sroa_idx, align 8, !noalias !835
  %.sroa.29.16..sroa.573.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.29, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.29.16..sroa.573.0..sroa_idx.i.sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !833
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !833
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !833
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_RNvXs6_NtCsltEA4u8Pgfu_11candle_core5shapejNtB5_3Dim8to_index(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4), !noalias !834
  %i.x = load i64, ptr %i.d, align 8, !range !12, !noalias !833, !noundef !4 ; 2 uses
  %.not114.i = icmp eq i64 %i.x, -1
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.z = load i64, ptr %i.y, align 8, !noalias !833 ; 2 uses
  br i1 %.not114.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.582.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.21.16.copyload32 = load ptr, ptr %.sroa.582.0..sroa_idx.i, align 8, !noalias !835
  %.sroa.28.16..sroa.582.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.28.16.copyload38 = load i64, ptr %.sroa.28.16..sroa.582.0..sroa_idx.i.sroa_idx, align 8, !noalias !835
  %.sroa.29.16..sroa.582.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.29, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.29.16..sroa.582.0..sroa_idx.i.sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !833
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !833
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !833
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RNvXs6_NtCsltEA4u8Pgfu_11candle_core5shapejNtB5_3Dim8to_index(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4), !noalias !834
  %i.ab = load i64, ptr %i.c, align 8, !range !12, !noalias !833, !noundef !4 ; 2 uses
  %.not115.i = icmp eq i64 %i.ab, -1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !833 ; 9 uses
  br i1 %.not115.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.591.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.21.16.copyload33 = load ptr, ptr %.sroa.591.0..sroa_idx.i, align 8, !noalias !835
  %.sroa.28.16..sroa.591.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.28.16.copyload39 = load i64, ptr %.sroa.28.16..sroa.591.0..sroa_idx.i.sroa_idx, align 8, !noalias !835
  %.sroa.29.16..sroa.591.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.29, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.29.16..sroa.591.0..sroa_idx.i.sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !833
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !833
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !833
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @_RNvXs6_NtCsltEA4u8Pgfu_11candle_core5shapejNtB5_3Dim8to_index(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4), !noalias !834
  %i.af = load i64, ptr %i.b, align 8, !range !12, !noalias !833, !noundef !4 ; 2 uses
  %.not116.i = icmp eq i64 %i.af, -1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !833 ; 9 uses
  br i1 %.not116.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.5100.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.21.16.copyload34 = load ptr, ptr %.sroa.5100.0..sroa_idx.i, align 8, !noalias !835
  %.sroa.28.16..sroa.5100.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.28.16.copyload40 = load i64, ptr %.sroa.28.16..sroa.5100.0..sroa_idx.i.sroa_idx, align 8, !noalias !835
  %.sroa.29.16..sroa.5100.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.29, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.29.16..sroa.5100.0..sroa_idx.i.sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !833
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !833
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !833
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @_RNvXs6_NtCsltEA4u8Pgfu_11candle_core5shapejNtB5_3Dim8to_index(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ai, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4), !noalias !834
  %i.aj = load i64, ptr %i.a, align 8, !range !12, !noalias !833, !noundef !4 ; 2 uses
  %.not117.i = icmp eq i64 %i.aj, -1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !noalias !833 ; 9 uses
  br i1 %.not117.i, label %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.5109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.21.16.copyload35 = load ptr, ptr %.sroa.5109.0..sroa_idx.i, align 8, !noalias !835
  %.sroa.28.16..sroa.5109.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.28.16.copyload41 = load i64, ptr %.sroa.28.16..sroa.5109.0..sroa_idx.i.sroa_idx, align 8, !noalias !835
  %.sroa.29.16..sroa.5109.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.29, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.29.16..sroa.5109.0..sroa_idx.i.sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !833
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.sroa.28.0.ph = phi i64 [ %.sroa.28.16.copyload, %bb.b ], [ %.sroa.28.16.copyload37, %bb.d ], [ %.sroa.28.16.copyload38, %bb.f ], [ %.sroa.28.16.copyload39, %bb.h ], [ %.sroa.28.16.copyload40, %bb.j ], [ %.sroa.28.16.copyload41, %bb.l ]
  %.sroa.21.0.ph = phi ptr [ %.sroa.21.16.copyload, %bb.b ], [ %.sroa.21.16.copyload31, %bb.d ], [ %.sroa.21.16.copyload32, %bb.f ], [ %.sroa.21.16.copyload33, %bb.h ], [ %.sroa.21.16.copyload34, %bb.j ], [ %.sroa.21.16.copyload35, %bb.l ]
  %.sroa.12.0.ph = phi i64 [ %i.r, %bb.b ], [ %i.v, %bb.d ], [ %i.z, %bb.f ], [ %i.ad, %bb.h ], [ %i.ah, %bb.j ], [ %i.al, %bb.l ]
  %.sroa.0.0.ph = phi i64 [ %i.p, %bb.b ], [ %i.t, %bb.d ], [ %i.x, %bb.f ], [ %i.ab, %bb.h ], [ %i.af, %bb.j ], [ %i.aj, %bb.l ]
  store i64 %.sroa.0.0.ph, ptr %0, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.12.0.ph, ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.416.sroa.4.0..sroa.416.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.21.0.ph, ptr %.sroa.416.sroa.4.0..sroa.416.0..sroa_idx.sroa_idx, align 8
  %.sroa.416.sroa.5.0..sroa.416.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.28.0.ph, ptr %.sroa.416.sroa.5.0..sroa.416.0..sroa_idx.sroa_idx, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.517.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.29, i64 48, i1 false)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs3NyA1pFSltE_9candle_nn.exit

bb.n:                                             ; preds = %bb.ab, %bb.o
  %.pn = phi { ptr, i32 } [ %i.am, %bb.o ], [ %i.bw, %bb.ab ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #29
          to label %common.resume unwind label %bb.ae

bb.o:                                             ; preds = %bb.ac, %bb.t, %bb.s, %.loopexit
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.p:                                             ; preds = %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.5
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs3NyA1pFSltE_9candle_nn.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs3NyA1pFSltE_9candle_nn.exit: ; preds = %bb.m, %bb.y, %bb.z, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  ret void

_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !833
  %i.ao = tail call fastcc noundef ptr @_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit(i64 noundef 48) #34 ; 8 uses
  store i64 %i.r, ptr %i.ao, align 8, !noalias !834
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  store i64 %i.v, ptr %i.ap, align 8, !noalias !834
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  store i64 %i.z, ptr %i.aq, align 8, !noalias !834
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store i64 %i.ad, ptr %i.ar, align 8, !noalias !834
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store i64 %i.ah, ptr %i.as, align 8, !noalias !834
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  store i64 %i.al, ptr %i.at, align 8, !noalias !834
  store i64 6, ptr %i.o, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  store ptr %i.ao, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 6, ptr %.sroa.556.0..sroa_idx, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.av = load i64, ptr %i.au, align 8            ; 7 uses
  %i.aw = icmp ult i64 %i.av, 1152921504606846976
  %5 = load i64, ptr %i.ao, align 8, !noundef !4  ; 7 uses
  tail call void @llvm.assume(i1 %i.aw)
  %.not24 = icmp ult i64 %5, %i.av
  br i1 %.not24, label %bb.q, label %bb.s

bb.q:                                             ; preds = %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit
  %6 = load i64, ptr %i.ap, align 8, !noundef !4  ; 7 uses
  %i.ax = icmp eq i64 %5, %6
  br i1 %i.ax, label %.loopexit, label %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.1

_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.1: ; preds = %bb.q
  %.not24.1 = icmp ult i64 %6, %i.av
  br i1 %.not24.1, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.1
  %7 = load i64, ptr %i.aq, align 8, !noundef !4  ; 7 uses
  %i.ay = icmp eq i64 %5, %7
  %i.az = icmp eq i64 %6, %7
  %or.cond = or i1 %i.ay, %i.az
  br i1 %or.cond, label %.loopexit, label %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.2

_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.2: ; preds = %bb.r
  %.not24.2 = icmp ult i64 %7, %i.av
  br i1 %.not24.2, label %.preheader.preheader.3, label %bb.s

.preheader.preheader.3:                           ; preds = %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.2
  %i.ba = icmp eq i64 %5, %i.ad
  %i.bb = icmp eq i64 %6, %i.ad
  %or.cond106 = or i1 %i.ba, %i.bb
  %i.bc = icmp eq i64 %7, %i.ad
  %or.cond107 = or i1 %or.cond106, %i.bc
  br i1 %or.cond107, label %.loopexit, label %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.3

_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.3: ; preds = %.preheader.preheader.3
  %.not24.3 = icmp ult i64 %i.ad, %i.av
  br i1 %.not24.3, label %.preheader.preheader.4, label %bb.s

.preheader.preheader.4:                           ; preds = %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.3
  %i.bd = icmp eq i64 %5, %i.ah
  %i.be = icmp eq i64 %6, %i.ah
  %or.cond108 = or i1 %i.bd, %i.be
  %i.bf = icmp eq i64 %7, %i.ah
  %or.cond109 = or i1 %or.cond108, %i.bf
  %i.bg = icmp eq i64 %i.ad, %i.ah
  %or.cond110 = select i1 %or.cond109, i1 true, i1 %i.bg
  br i1 %or.cond110, label %.loopexit, label %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.4

_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.4: ; preds = %.preheader.preheader.4
  %.not24.4 = icmp ult i64 %i.ah, %i.av
  br i1 %.not24.4, label %.preheader.preheader.5, label %bb.s

.preheader.preheader.5:                           ; preds = %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.4
  %i.bh = icmp eq i64 %5, %i.al
  %i.bi = icmp eq i64 %6, %i.al
  %or.cond111 = or i1 %i.bh, %i.bi
  %i.bj = icmp eq i64 %7, %i.al
  %or.cond112 = or i1 %or.cond111, %i.bj
  %i.bk = icmp eq i64 %i.ad, %i.al
  %or.cond113 = select i1 %or.cond112, i1 true, i1 %i.bk
  %i.bl = icmp eq i64 %i.ah, %i.al
  %or.cond114 = select i1 %or.cond113, i1 true, i1 %i.bl
  br i1 %or.cond114, label %.loopexit, label %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.5

_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.5: ; preds = %.preheader.preheader.5
  %.not24.5 = icmp ult i64 %i.al, %i.av
  br i1 %.not24.5, label %bb.p, label %bb.s

.loopexit:                                        ; preds = %bb.q, %bb.r, %.preheader.preheader.3, %.preheader.preheader.4, %.preheader.preheader.5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.aa unwind label %bb.o

bb.s:                                             ; preds = %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.5, %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.4, %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.3, %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.2, %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.1, %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit
  %.lcssa87 = phi i64 [ %5, %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit ], [ %6, %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.1 ], [ %7, %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.2 ], [ %i.ad, %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.3 ], [ %i.ah, %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.4 ], [ %i.al, %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.5 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.t unwind label %bb.o

bb.t:                                             ; preds = %bb.s
  %i.bm = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bn = trunc i64 %.lcssa87 to i32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store i32 %i.bn, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %3, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 %4, ptr %i.bq, align 8
  store i64 -9223372036854775805, ptr %i.i, align 8
  invoke void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core5errorNtB4_5Error2bt(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.i)
          to label %bb.u unwind label %bb.o

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.v

bb.v:                                             ; preds = %bb.ad, %bb.u
  %.sink = phi ptr [ %i.n, %bb.ad ], [ %i.j, %bb.u ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %.sink, i64 80, i1 false)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.y unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %i.o, align 8, !alias.scope !836 ; 2 uses
  %i.bs = icmp eq i64 %.val2.i, 0
  br i1 %i.bs, label %common.resume, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.val3.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !837, !nonnull !4, !noundef !4
  %i.bt = shl nuw i64 %.val2.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.bt, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !noalias !838
  br label %common.resume

bb.y:                                             ; preds = %bb.v
  %.val.i = load i64, ptr %i.o, align 8, !alias.scope !836 ; 2 uses
  %i.bu = icmp eq i64 %.val.i, 0
  br i1 %i.bu, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs3NyA1pFSltE_9candle_nn.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.val1.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !837, !nonnull !4, !noundef !4
  %i.bv = shl nuw i64 %.val.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.bv, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !noalias !839
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs3NyA1pFSltE_9candle_nn.exit

common.resume:                                    ; preds = %bb.n, %bb.w, %bb.x
  %common.resume.op = phi { ptr, i32 } [ %i.br, %bb.w ], [ %i.br, %bb.x ], [ %.pn, %bb.n ]
  resume { ptr, i32 } %common.resume.op

bb.aa:                                            ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o)
          to label %bb.ac unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core5shape5ShapeECs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #29
          to label %bb.n unwind label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  %i.bx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.by, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store ptr %3, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  store i64 %4, ptr %i.ca, align 8
  store i64 -9223372036854775804, ptr %i.m, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core5errorNtB4_5Error2bt(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.n, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.m)
          to label %bb.ad unwind label %bb.o

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.v

bb.ae:                                            ; preds = %bb.ab, %bb.n
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYjNtNtCsltEA4u8Pgfu_11candle_core5shape4Dims10to_indexesCs3NyA1pFSltE_9candle_nn(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 9 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [80 x i8], align 8                ; 8 uses
  %i.e = alloca [80 x i8], align 8                ; 2 uses
  %i.f = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.b, align 8, !noalias !852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !852
  call void @_RNvXs6_NtCsltEA4u8Pgfu_11candle_core5shapejNtB5_3Dim8to_index(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4), !noalias !853
  %i.g = load i64, ptr %i.a, align 8, !range !12, !noalias !852, !noundef !4 ; 2 uses
  %.not.i = icmp eq i64 %i.g, -1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noalias !852 ; 4 uses
  br i1 %.not.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !852
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !853
  %i.j = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef 8) #28, !noalias !853 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit, !prof !6

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #33, !noalias !853
  unreachable

bb.d:                                             ; preds = %bb.a
  %.sroa.514.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.11.16.copyload = load ptr, ptr %.sroa.514.0..sroa_idx.i, align 8, !noalias !854
  %.sroa.13.16..sroa.514.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.13.16.copyload = load i64, ptr %.sroa.13.16..sroa.514.0..sroa_idx.i.sroa_idx, align 8, !noalias !854
  %.sroa.14.16..sroa.514.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.517.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.14.16..sroa.514.0..sroa_idx.i.sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.g, ptr %0, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.416.sroa.4.0..sroa.416.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.11.16.copyload, ptr %.sroa.416.sroa.4.0..sroa.416.0..sroa_idx.sroa_idx, align 8
  %.sroa.416.sroa.5.0..sroa.416.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.13.16.copyload, ptr %.sroa.416.sroa.5.0..sroa.416.0..sroa_idx.sroa_idx, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs3NyA1pFSltE_9candle_nn.exit

bb.e:                                             ; preds = %bb.f, %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #29
          to label %common.resume unwind label %bb.m

.thread:                                          ; preds = %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs3NyA1pFSltE_9candle_nn.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs3NyA1pFSltE_9candle_nn.exit: ; preds = %bb.d, %bb.k, %bb.l, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.b
  store i64 %i.i, ptr %i.j, align 8, !noalias !853
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 1, ptr %.sroa.546.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %i.p = icmp ult i64 %i.o, 1152921504606846976
  call void @llvm.assume(i1 %i.p)
  %.not24 = icmp ult i64 %i.i, %i.o
  br i1 %.not24, label %.thread, label %bb.f

bb.f:                                             ; preds = %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.r = trunc i64 %i.i to i32
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i32 %i.r, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %3, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %4, ptr %i.u, align 8
  store i64 -9223372036854775805, ptr %i.d, align 8
  invoke void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core5errorNtB4_5Error2bt(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.d)
          to label %bb.h unwind label %bb.e

bb.h:                                             ; preds = %bb.g
end_hunk_1
