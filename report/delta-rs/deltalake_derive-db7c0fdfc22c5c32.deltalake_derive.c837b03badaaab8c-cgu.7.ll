inline.NumInlined: 121
inline.NumDeleted: 58
begin_hunk_0_@_RINvNvNtNtCsjJ0p09o2jmV_10proc_macro6bridge14selfless_reify31reify_to_extern_c_fn_hrt_bridge7wrapperNtNtB6_6buffer6BufferNCINvMsg_NtB6_6clientINtB24_6ClientNtB8_11TokenStreamB2u_E7expand1NvCshbKHpCRGxgC_16deltalake_derive19derive_delta_configE0EB31_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !102
  br label %_RNvXNvNtCsjJ0p09o2jmV_10proc_macro6bridges4_1__INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB4_3rpc12PanicMessageEINtB1o_6EncodeuE6encodeCshbKHpCRGxgC_16deltalake_derive.exit.i.i

_RNvXNvNtCsjJ0p09o2jmV_10proc_macro6bridges4_1__INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB4_3rpc12PanicMessageEINtB1o_6EncodeuE6encodeCshbKHpCRGxgC_16deltalake_derive.exit.i.i: ; preds = %.noexc.i.i, %_RNvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit7.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.542.i.i)
  br label %bb.n

bb.u:                                             ; preds = %bb.t, %bb.n, %bb.m
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !noalias !48, !nonnull !9, !noundef !9
  call void %.sroa.3.0.copyload(ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.q) #27, !noalias !95, !inline_history !119
  br label %.critedge.body

bb.v:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.q, i64 40, i1 false), !noalias !120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !48
  ret void

.critedge.body:                                   ; preds = %.critedge.split-lp, %bb.u
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #31
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMNtCs7nQiqFc7Txl_3syn5dropsINtB2_6NoDropINtNtB4_10punctuated11PrivateIterNtNtB4_4data5FieldNtNtB4_5token5CommaEE3newCshbKHpCRGxgC_16deltalake_derive(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define hidden void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtCsbjGuDcEILED_11proc_macro211TokenStreamE8grow_oneCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !3, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !121
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !121
  call fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 32), !noalias !121
  %i.f = load i64, ptr %i.a, align 8, !range !46, !noalias !121, !noundef !9
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !47, !noalias !121, !noundef !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !121
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !121, !nonnull !9, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !121
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !121
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !121
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define hidden void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs7nQiqFc7Txl_3syn4attr4MetaE8grow_oneCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !3, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !124
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !124
  call fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 232), !noalias !124
  %i.f = load i64, ptr %i.a, align 8, !range !46, !noalias !124, !noundef !9
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !47, !noalias !124, !noundef !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !124
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !124, !nonnull !9, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !124
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !124
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !124
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define hidden void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtBR_5token5CommaEE8grow_oneCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !3, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !127
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !127
  call fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 240), !noalias !127
  %i.f = load i64, ptr %i.a, align 8, !range !46, !noalias !127, !noundef !9
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !47, !noalias !127, !noundef !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !127
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !127, !nonnull !9, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !127
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !127
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !127
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCshbKHpCRGxgC_16deltalake_derive(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #5 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !130
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !130

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator4grow.exit

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %3, %.0.val                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.g = icmp uge i64 %i.b, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = tail call noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #27
  br label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.b, 0
  br i1 %i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.j = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27
  %i.k = tail call noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #27
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
define hidden void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshbKHpCRGxgC_16deltalake_derive(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 5 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !130
  br i1 %or.cond, label %bb.e, label %bb.b, !prof !130

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %bb.c, label %6

bb.c:                                             ; preds = %bb.b
  %5 = inttoptr i64 %3 to ptr
  br label %bb.d

6:                                                ; preds = %bb.b
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27
  br i1 %2, label %bb.g, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit

bb.d:                                             ; preds = %bb.c, %bb.j
  %.sink12 = phi i64 [ %1, %bb.j ], [ 0, %bb.c ]
  %.pn10.sink = phi ptr [ %.pn10, %bb.j ], [ %5, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink12, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pn10.sink, ptr %i.g, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.a, %bb.i
  %.sink17 = phi i64 [ 16, %bb.i ], [ 8, %bb.a ]
  %.sink15 = phi i64 [ %i.b, %bb.i ], [ 0, %bb.a ]
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 %.sink17
  store i64 %.sink15, ptr %7, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink = phi i64 [ 0, %bb.d ], [ 1, %bb.e ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %6
  %i.h = tail call noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #27
  br label %bb.h

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit: ; preds = %6
  %i.i = tail call noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #27
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit
  %.pn10 = phi ptr [ %i.h, %bb.g ], [ %i.i, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.j = icmp eq ptr %.pn10, null
  br i1 %i.j, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.k, align 8
  br label %bb.e

bb.j:                                             ; preds = %bb.h
  %i.l = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.l)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_Csl1mHGn7pXMx_12convert_caseINtB4_14StateConverterNtNtCs6Po7BT7Nknu_5alloc6string6StringE7to_caseCshbKHpCRGxgC_16deltalake_derive(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 2 uses
  %i.c = alloca [64 x i8], align 8                ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  call void @_RNvMs_NtCsl1mHGn7pXMx_12convert_case9converterNtB4_9Converter7to_case(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !9, !align !131, !noundef !9
  invoke void @_RINvMs_NtCsl1mHGn7pXMx_12convert_case9converterNtB5_9Converter7convertRNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsl1mHGn7pXMx_12convert_case9converter9ConverterECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(64) %i.c) #28
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsl1mHGn7pXMx_12convert_case9converter9ConverterECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(64) %i.c)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCsBGNUbrdbJ0_5quote9to_tokensRNtCsbjGuDcEILED_11proc_macro25IdentNtB2_8ToTokens9to_tokensCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !131, !noundef !9
  tail call void @_RNvXsq_NtCsBGNUbrdbJ0_5quote9to_tokensNtCsbjGuDcEILED_11proc_macro25IdentNtB5_8ToTokens9to_tokens(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNvNtCsbvkFyIu7lgC_4core4hint20select_unpredictableINtB2_11DropOnPanicjENtNtNtB6_3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvXs0_NtCs7nQiqFc7Txl_3syn5dropsINtB5_6NoDropDINtNtB7_10punctuated9IterTraitNtNtB7_4data5FieldEp4ItemRB1d_EL_ENtNtNtCsbvkFyIu7lgC_4core3ops5deref8DerefMut9deref_mutCshbKHpCRGxgC_16deltalake_derive(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %1) unnamed_addr #6 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !3, !noundef !9 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshbKHpCRGxgC_16deltalake_derive.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !9, !noundef !9
  %i.c = shl nuw i64 %.val, 5
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #27
  br label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshbKHpCRGxgC_16deltalake_derive.exit

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtCsjJ0p09o2jmV_10proc_macro9TokenTreeENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !3, !noundef !9 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshbKHpCRGxgC_16deltalake_derive.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !9, !noundef !9
  %i.c = mul nuw i64 %.val, 20
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 4) #27
  br label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshbKHpCRGxgC_16deltalake_derive.exit

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !3, !noundef !9 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshbKHpCRGxgC_16deltalake_derive.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !9, !noundef !9
  %i.c = mul nuw i64 %.val, 24
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #27
  br label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshbKHpCRGxgC_16deltalake_derive.exit

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs7nQiqFc7Txl_3syn4attr4MetaENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !3, !noundef !9 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshbKHpCRGxgC_16deltalake_derive.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !9, !noundef !9
  %i.c = mul nuw i64 %.val, 232
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #27
  br label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshbKHpCRGxgC_16deltalake_derive.exit

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs7nQiqFc7Txl_3syn4attr9AttributeENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !3, !noundef !9 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshbKHpCRGxgC_16deltalake_derive.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !9, !noundef !9
  %i.c = shl nuw i64 %.val, 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #27
  br label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshbKHpCRGxgC_16deltalake_derive.exit

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs7nQiqFc7Txl_3syn4expr3ArmENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !3, !noundef !9 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshbKHpCRGxgC_16deltalake_derive.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !9, !noundef !9
  %i.c = mul nuw i64 %.val, 248
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #27
  br label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshbKHpCRGxgC_16deltalake_derive.exit

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs7nQiqFc7Txl_3syn4item11ForeignItemENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !3, !noundef !9 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshbKHpCRGxgC_16deltalake_derive.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !9, !noundef !9
  %i.c = mul nuw i64 %.val, 352
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #27
  br label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshbKHpCRGxgC_16deltalake_derive.exit

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs7nQiqFc7Txl_3syn4item4ItemENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !3, !noundef !9 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshbKHpCRGxgC_16deltalake_derive.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !9, !noundef !9
  %i.c = mul nuw i64 %.val, 352
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #27
  br label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshbKHpCRGxgC_16deltalake_derive.exit

end_hunk_0
begin_hunk_1_@_RNvXs1_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6clientNtB5_11TokenStreamINtNtB7_3rpc6EncodeuE6encodeCshbKHpCRGxgC_16deltalake_derive:bb.a
  br label %_RINvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB6_6Buffer17extend_from_arrayKj4_ECshbKHpCRGxgC_16deltalake_derive.exit

_RINvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB6_6Buffer17extend_from_arrayKj4_ECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %bb.a, %bb.b
  %i.k = phi i64 [ %i.f, %bb.a ], [ %.pre.i, %bb.b ] ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !alias.scope !133, !noundef !9
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.k
  store i32 %0, ptr %i.m, align 1, !noalias !133
  %i.n = add i64 %i.k, 4
  store i64 %i.n, ptr %i.e, align 8, !alias.scope !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtCsbjGuDcEILED_11proc_macro25IdentNtB6_7Display3fmtCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !131, !noundef !9
  %i.b = tail call noundef zeroext i1 @_RNvXsE_CsbjGuDcEILED_11proc_macro2NtB5_5IdentNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i32 1, 0) i32 @_RNvXs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6clientNtB5_11TokenStreamINtNtB7_3rpc6DecodeuE6decodeCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(16) %0, ptr noalias noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_RNvXs5_NtNtCsjJ0p09o2jmV_10proc_macro6bridge3rpcINtNtNtCsbvkFyIu7lgC_4core3num7nonzero7NonZeromEINtB5_6DecodeuE6decodeCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noalias noundef nonnull %1)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write, inaccessiblemem: write) uwtable
define hidden void @_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCshbKHpCRGxgC_16deltalake_derive(ptr dead_on_unwind noalias noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub nuw i64 %i.a, %i.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  %i.d = ptrtoint ptr %4 to i64
  %i.e = ptrtoint ptr %3 to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.f, i64 %i.c)
  store ptr %1, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.0.0.i, ptr %i.k, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i32 1, 0) i32 @_RNvXs7_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6clientNtB5_4SpanINtNtB7_3rpc6DecodeuE6decodeCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(16) %0, ptr noalias noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_RNvXs5_NtNtCsjJ0p09o2jmV_10proc_macro6bridge3rpcINtNtNtCsbvkFyIu7lgC_4core3num7nonzero7NonZeromEINtB5_6DecodeuE6decodeCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noalias noundef nonnull %1)
  ret i32 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char(ptr noalias noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !137, !noundef !9 ; 2 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128            ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i32 %1, 65536
  %..i = select i1 %i.f, i64 3, i64 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ 2, %bb.b ], [ %..i, %bb.c ], [ 1, %bb.a ] ; 2 uses
  tail call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !137, !nonnull !9, !noundef !9
  %i.i = load i64, ptr %i.a, align 8, !alias.scope !137, !noundef !9 ; 2 uses
  %i.j = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i ; 10 uses
  br i1 %i.d, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = icmp samesign ult i32 %1, 2048
  %i.m = trunc i32 %1 to i8
  %i.n = and i8 %i.m, 63
  %i.o = or disjoint i8 %i.n, -128                ; 3 uses
  %i.p = lshr i32 %1, 6
  %i.q = trunc i32 %i.p to i8                     ; 2 uses
  %i.r = and i8 %i.q, 63
  %i.s = or disjoint i8 %i.r, -128                ; 2 uses
  %i.t = lshr i32 %1, 12
  %i.u = trunc i32 %i.t to i8                     ; 2 uses
  %i.v = and i8 %i.u, 63
  %i.w = or disjoint i8 %i.v, -128
  %i.x = lshr i32 %1, 18
  %i.y = trunc nuw nsw i32 %i.x to i8
  %i.z = or disjoint i8 %i.y, -16
  br i1 %i.l, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.k, align 1
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  %i.ab = or disjoint i8 %i.q, -64
  store i8 %i.ab, ptr %i.k, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.o, ptr %i.ac, align 1
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit

bb.h:                                             ; preds = %bb.e
  %i.ad = icmp samesign ult i32 %1, 65536
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = or disjoint i8 %i.u, -32
  store i8 %i.ae, ptr %i.k, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.s, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i8 %i.o, ptr %i.ag, align 1
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit

bb.j:                                             ; preds = %bb.h
  store i8 %i.z, ptr %i.k, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.w, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i8 %i.s, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 3
  store i8 %i.o, ptr %i.aj, align 1
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit

_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.f, %bb.g, %bb.i, %bb.j
  %i.ak = add nuw i64 %.sroa.0.0.i, %i.b
  store i64 %i.ak, ptr %i.a, align 8, !alias.scope !137
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_str(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #9 {
bb.a:
  tail call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !140
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !143, !noalias !140, !noundef !9 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !143, !noalias !140, !nonnull !9, !noundef !9
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !143, !noalias !140
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !143, !noalias !140
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvXs_NtCs7nQiqFc7Txl_3syn5dropsINtB4_6NoDropDINtNtB6_10punctuated9IterTraitNtNtB6_4data5FieldEp4ItemRB1c_EL_ENtNtNtCsbvkFyIu7lgC_4core3ops5deref5Deref5derefCshbKHpCRGxgC_16deltalake_derive(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %1) unnamed_addr #6 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsk_NtCsbjGuDcEILED_11proc_macro28fallbackNtB5_5IdentINtNtCsbvkFyIu7lgC_4core3cmp9PartialEqeE2eqCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !147, !noundef !9
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !9
  %i.f = icmp eq i64 %i.e, %2
  br i1 %i.f, label %bb.c, label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  br label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.sink.split

bb.d:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RINvMNtCsbvkFyIu7lgC_4core3stre11starts_withReECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 2)
  br i1 %i.h, label %bb.e, label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit

_RNvXs_NtNtCsbvkFyIu7lgC_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.sink.split: ; preds = %bb.c, %bb.h
  %.sink6 = phi i64 [ %i.k, %bb.h ], [ %2, %bb.c ]
  %.sink5 = phi ptr [ %i.s, %bb.h ], [ %1, %bb.c ]
  %.sink = phi ptr [ %i.i, %bb.h ], [ %i.g, %bb.c ]
  %bcmp.i2 = tail call i32 @bcmp(ptr nonnull readonly %.sink, ptr nonnull readonly %.sink5, i64 %.sink6)
  %3 = icmp eq i32 %bcmp.i2, 0
  br label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit

_RNvXs_NtNtCsbvkFyIu7lgC_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit: ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.sink.split, %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCshbKHpCRGxgC_16deltalake_derive.exit, %bb.b, %bb.d
  %.sroa.0.0.shrunk = phi i1 [ false, %bb.b ], [ false, %bb.d ], [ false, %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCshbKHpCRGxgC_16deltalake_derive.exit ], [ %3, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.sink.split ]
  ret i1 %.sroa.0.0.shrunk

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noundef !9 ; 2 uses
  %i.l = icmp ult i64 %2, 3
  br i1 %i.l, label %bb.f, label %_RNvXs9_NtNtCsbvkFyIu7lgC_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.m = icmp eq i64 %2, 2
  br i1 %i.m, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCshbKHpCRGxgC_16deltalake_derive.exit, label %bb.g, !prof !45

_RNvXs9_NtNtCsbvkFyIu7lgC_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i: ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.o = load i8, ptr %i.n, align 1, !alias.scope !148, !noundef !9
  %i.p = icmp sgt i8 %i.o, -65
  br i1 %i.p, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCshbKHpCRGxgC_16deltalake_derive.exit, label %bb.g, !prof !45

bb.g:                                             ; preds = %_RNvXs9_NtNtCsbvkFyIu7lgC_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i, %bb.f
  tail call void @_RNvNtCsbvkFyIu7lgC_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef 2, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #32
  unreachable

_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %bb.f, %_RNvXs9_NtNtCsbvkFyIu7lgC_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i
  %i.q = add i64 %2, -2
  %i.r = icmp eq i64 %i.k, %i.q
  br i1 %i.r, label %bb.h, label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCshbKHpCRGxgC_16deltalake_derive.exit
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 2
  br label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.sink.split
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsz_CsbjGuDcEILED_11proc_macro2NtB5_5IdentINtNtCsbvkFyIu7lgC_4core3cmp9PartialEqeE2eqCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %2, ptr %i.b, align 8
  %i.c = call noundef zeroext i1 @_RNvXss_NtCsbjGuDcEILED_11proc_macro23impNtB5_5IdentINtNtCsbvkFyIu7lgC_4core3cmp9PartialEqReE2eqCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_RNvYNCNKNvNtNtNtCsjJ0p09o2jmV_10proc_macro6bridge6client5state12BRIDGE_STATE0s_0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1n_6option6OptionQIB22_INtNtB1n_4cell4CellPuEEEEE9call_onceCshbKHpCRGxgC_16deltalake_derive(ptr noalias readnone align 8 captures(none) %0) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtNtCsjJ0p09o2jmV_10proc_macro6bridge6client5state12BRIDGE_STATE0s_023___RUST_STD_INTERNAL_VAL)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
_RNvXs_NvNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtQNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB4_12SpecWriteFmt14spec_write_fmtCshbKHpCRGxgC_16deltalake_derive.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @1, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !155
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #11

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNvXs6_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from7reserve(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias noundef byval([40 x i8]) align 8 captures(address) dereferenceable(40), i64 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNvXs6_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from4drop(ptr noalias noundef byval([40 x i8]) align 8 captures(address) dereferenceable(40)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsl1mHGn7pXMx_12convert_case8boundary8BoundaryENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef align 4 dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNvNtNtNtCsjJ0p09o2jmV_10proc_macro6bridge6client5state3setNtB2_13RestoreOnDropNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXse_NtNtCsjJ0p09o2jmV_10proc_macro6bridge3rpcNtB5_12PanicMessageINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB18_3any3AnyNtNtB18_6marker4SendEL_EE4from(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6symbolNtB5_6Symbol14invalidate_all() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellPuEE4withNCNvMs3_B6_BF_7replace0B1s_ECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #14

; Function Attrs: cold minsize nonlazybind optsize uwtable
declare { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef) unnamed_addr #15

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsbvkFyIu7lgC_4core3mem11conjure_zstNCINvMsg_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6clientINtBN_6ClientNtBR_11TokenStreamB1I_E7expand1NvCshbKHpCRGxgC_16deltalake_derive19derive_delta_configE0EB2f_() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsjJ0p09o2jmV_10proc_macro6bridge6client24maybe_install_panic_hook(i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs7_NtNtCsjJ0p09o2jmV_10proc_macro6bridge3rpcTINtB7_11ExpnGlobalsNtNtB7_6client4SpanENtB16_11TokenStreamEINtB5_6DecodeuE6decodeCshbKHpCRGxgC_16deltalake_derive(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(none) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef nonnull) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #16

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #17

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #18

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #19

; Function Attrs: nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #20

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #21

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCsl1mHGn7pXMx_12convert_case9converterNtB4_9Converter7to_case(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtCsl1mHGn7pXMx_12convert_case9converterNtB5_9Converter7convertRNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsq_NtCsBGNUbrdbJ0_5quote9to_tokensNtCsbjGuDcEILED_11proc_macro25IdentNtB5_8ToTokens9to_tokens(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNvNtCsjJ0p09o2jmV_10proc_macro6bridges3_1__INtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB4_6client11TokenStreamEINtNtB4_3rpc6EncodeuE6encodeCshbKHpCRGxgC_16deltalake_derive(i32 noundef, ptr noalias noundef align 8 dereferenceable(40), ptr noalias noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsh_NtNtCsjJ0p09o2jmV_10proc_macro6bridge3rpcNtB5_12PanicMessageINtB5_6EncodeuE6encodeCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef align 8 dereferenceable(40), ptr noalias noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsE_CsbjGuDcEILED_11proc_macro2NtB5_5IdentNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i32 1, 0) i32 @_RNvXs5_NtNtCsjJ0p09o2jmV_10proc_macro6bridge3rpcINtNtNtCsbvkFyIu7lgC_4core3num7nonzero7NonZeromEINtB5_6DecodeuE6decodeCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef nonnull) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #22

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs6Po7BT7Nknu_5alloc3str17join_generic_copyehNtNtB4_6string6StringECshbKHpCRGxgC_16deltalake_derive(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 384307168202282326), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMNtCsbvkFyIu7lgC_4core3stre11starts_withReECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXss_NtCsbjGuDcEILED_11proc_macro23impNtB5_5IdentINtNtCsbvkFyIu7lgC_4core3cmp9PartialEqReE2eqCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #23

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvCshbKHpCRGxgC_16deltalake_derive19derive_delta_config(i32 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #24 = { nocallback nofree nounwind nonlazybind willreturn memory(argmem: read) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #27 = { nounwind }
attributes #28 = { cold }
attributes #29 = { cold noreturn nounwind }
attributes #30 = { noreturn }
attributes #31 = { cold noinline noreturn nounwind }
attributes #32 = { noinline noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.96.0-nightly (1d8897a4e 2026-03-13)"}
!3 = !{i64 0, i64 -9223372036854775808}
!4 = !{!5, !7}
!5 = distinct !{!5, !6, !"_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive: argument 0"}
!6 = distinct !{!6, !"_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive"}
!7 = distinct !{!7, !8, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECshbKHpCRGxgC_16deltalake_derive: argument 0"}
!8 = distinct !{!8, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECshbKHpCRGxgC_16deltalake_derive"}
!9 = !{}
!10 = !{!7}
!11 = !{!12}
!12 = distinct !{!12, !13, !"_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive: argument 0"}
!13 = distinct !{!13, !"_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive"}
!14 = !{!15}
!15 = distinct !{!15, !16, !"_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive: argument 0"}
!16 = distinct !{!16, !"_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive"}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjJ0p09o2jmV_10proc_macro6bridge6buffer6BufferECshbKHpCRGxgC_16deltalake_derive: argument 0"}
!19 = distinct !{!19, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjJ0p09o2jmV_10proc_macro6bridge6buffer6BufferECshbKHpCRGxgC_16deltalake_derive"}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_RNvXs5_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6BufferNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop: argument 0"}
!22 = distinct !{!22, !"_RNvXs5_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6BufferNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop"}
!23 = !{!21, !18}
!24 = distinct !{null, null}
!25 = !{!26}
!26 = distinct !{!26, !27, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsl1mHGn7pXMx_12convert_case8boundary8BoundaryEECshbKHpCRGxgC_16deltalake_derive: argument 0"}
!27 = distinct !{!27, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsl1mHGn7pXMx_12convert_case8boundary8BoundaryEECshbKHpCRGxgC_16deltalake_derive"}
!28 = !{!29, !31, !33}
!29 = distinct !{!29, !30, !"_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive: argument 0"}
!30 = distinct !{!30, !"_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive"}
!31 = distinct !{!31, !32, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECshbKHpCRGxgC_16deltalake_derive: argument 0"}
!32 = distinct !{!32, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECshbKHpCRGxgC_16deltalake_derive"}
!33 = distinct !{!33, !34, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive: argument 0"}
!34 = distinct !{!34, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive"}
!35 = !{!31, !33}
!36 = !{!37}
!37 = distinct !{!37, !38, !"_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive: argument 0"}
!38 = distinct !{!38, !"_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive"}
!39 = !{!40}
!40 = distinct !{!40, !41, !"_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive: argument 0"}
!41 = distinct !{!41, !"_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive"}
!42 = !{!43}
!43 = distinct !{!43, !44, !"_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCshbKHpCRGxgC_16deltalake_derive: argument 0"}
!44 = distinct !{!44, !"_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCshbKHpCRGxgC_16deltalake_derive"}
!45 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!46 = !{i64 0, i64 2}
!47 = !{i64 0, i64 -9223372036854775807}
!48 = !{!49, !51, !52, !53, !55, !56}
!49 = distinct !{!49, !50, !"_RINvNtNtCsjJ0p09o2jmV_10proc_macro6bridge6client10run_clientNtB2_11TokenStreamINtNtCsbvkFyIu7lgC_4core6option6OptionBW_ENCNCINvMsg_B2_INtB2_6ClientNtB6_11TokenStreamB2l_E7expand1NvCshbKHpCRGxgC_16deltalake_derive19derive_delta_configE00EB2S_: argument 0"}
!50 = distinct !{!50, !"_RINvNtNtCsjJ0p09o2jmV_10proc_macro6bridge6client10run_clientNtB2_11TokenStreamINtNtCsbvkFyIu7lgC_4core6option6OptionBW_ENCNCINvMsg_B2_INtB2_6ClientNtB6_11TokenStreamB2l_E7expand1NvCshbKHpCRGxgC_16deltalake_derive19derive_delta_configE00EB2S_"}
!51 = distinct !{!51, !50, !"_RINvNtNtCsjJ0p09o2jmV_10proc_macro6bridge6client10run_clientNtB2_11TokenStreamINtNtCsbvkFyIu7lgC_4core6option6OptionBW_ENCNCINvMsg_B2_INtB2_6ClientNtB6_11TokenStreamB2l_E7expand1NvCshbKHpCRGxgC_16deltalake_derive19derive_delta_configE00EB2S_: argument 1"}
!52 = distinct !{!52, !50, !"_RINvNtNtCsjJ0p09o2jmV_10proc_macro6bridge6client10run_clientNtB2_11TokenStreamINtNtCsbvkFyIu7lgC_4core6option6OptionBW_ENCNCINvMsg_B2_INtB2_6ClientNtB6_11TokenStreamB2l_E7expand1NvCshbKHpCRGxgC_16deltalake_derive19derive_delta_configE00EB2S_: argument 2"}
!53 = distinct !{!53, !54, !"_RNCINvMsg_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6clientINtB8_6ClientNtBc_11TokenStreamB13_E7expand1NvCshbKHpCRGxgC_16deltalake_derive19derive_delta_configE0B1A_: argument 0"}
!54 = distinct !{!54, !"_RNCINvMsg_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6clientINtB8_6ClientNtBc_11TokenStreamB13_E7expand1NvCshbKHpCRGxgC_16deltalake_derive19derive_delta_configE0B1A_"}
!55 = distinct !{!55, !54, !"_RNCINvMsg_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6clientINtB8_6ClientNtBc_11TokenStreamB13_E7expand1NvCshbKHpCRGxgC_16deltalake_derive19derive_delta_configE0B1A_: argument 1"}
!56 = distinct !{!56, !54, !"_RNCINvMsg_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6clientINtB8_6ClientNtBc_11TokenStreamB13_E7expand1NvCshbKHpCRGxgC_16deltalake_derive19derive_delta_configE0B1A_: argument 2"}
!57 = !{!58, !49, !51, !52, !53, !55, !56}
!58 = distinct !{!58, !59, !"_RNvXsl_NtNtCsbvkFyIu7lgC_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtNtCsjJ0p09o2jmV_10proc_macro6bridge6client10run_clientNtB1e_11TokenStreamINtNtB9_6option6OptionB28_ENCNCINvMsg_B1e_INtB1e_6ClientNtB1i_11TokenStreamB3l_E7expand1NvCshbKHpCRGxgC_16deltalake_derive19derive_delta_configE00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB3T_: argument 0"}
!59 = distinct !{!59, !"_RNvXsl_NtNtCsbvkFyIu7lgC_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtNtCsjJ0p09o2jmV_10proc_macro6bridge6client10run_clientNtB1e_11TokenStreamINtNtB9_6option6OptionB28_ENCNCINvMsg_B1e_INtB1e_6ClientNtB1i_11TokenStreamB3l_E7expand1NvCshbKHpCRGxgC_16deltalake_derive19derive_delta_configE00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB3T_"}
!60 = !{!61, !58, !49, !51, !52, !53, !55, !56}
!61 = distinct !{!61, !62, !"_RNCINvNtNtCsjJ0p09o2jmV_10proc_macro6bridge6client10run_clientNtB4_11TokenStreamINtNtCsbvkFyIu7lgC_4core6option6OptionBY_ENCNCINvMsg_B4_INtB4_6ClientNtB8_11TokenStreamB2n_E7expand1NvCshbKHpCRGxgC_16deltalake_derive19derive_delta_configE00E0B2U_: argument 0"}
!62 = distinct !{!62, !"_RNCINvNtNtCsjJ0p09o2jmV_10proc_macro6bridge6client10run_clientNtB4_11TokenStreamINtNtCsbvkFyIu7lgC_4core6option6OptionBY_ENCNCINvMsg_B4_INtB4_6ClientNtB8_11TokenStreamB2n_E7expand1NvCshbKHpCRGxgC_16deltalake_derive19derive_delta_configE00E0B2U_"}
!63 = !{i32 1, i32 0}
!64 = !{!65, !61, !58, !49, !51, !52, !53, !55, !56}
!65 = distinct !{!65, !66, !"_RINvNtNtNtCsjJ0p09o2jmV_10proc_macro6bridge6client5state3setINtNtCsbvkFyIu7lgC_4core6option6OptionNtB4_11TokenStreamENCNCINvB4_10run_clientB1y_BW_NCNCINvMsg_B4_INtB4_6ClientNtB8_11TokenStreamB2L_E7expand1NvCshbKHpCRGxgC_16deltalake_derive19derive_delta_configE00E00EB3i_: argument 0"}
!66 = distinct !{!66, !"_RINvNtNtNtCsjJ0p09o2jmV_10proc_macro6bridge6client5state3setINtNtCsbvkFyIu7lgC_4core6option6OptionNtB4_11TokenStreamENCNCINvB4_10run_clientB1y_BW_NCNCINvMsg_B4_INtB4_6ClientNtB8_11TokenStreamB2L_E7expand1NvCshbKHpCRGxgC_16deltalake_derive19derive_delta_configE00E00EB3i_"}
!67 = !{!61, !58, !49, !51, !53, !56}
!68 = !{!69}
!69 = distinct !{!69, !70, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjJ0p09o2jmV_10proc_macro6bridge6buffer6BufferECshbKHpCRGxgC_16deltalake_derive: argument 0"}
!70 = distinct !{!70, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjJ0p09o2jmV_10proc_macro6bridge6buffer6BufferECshbKHpCRGxgC_16deltalake_derive"}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_RNvXs5_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6BufferNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop: argument 0"}
!73 = distinct !{!73, !"_RNvXs5_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6BufferNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop"}
!74 = !{!69, !61, !58, !49, !51, !52, !53, !55, !56}
!75 = !{!72, !69}
!76 = !{!72, !69, !61, !58, !49, !51, !52, !53, !55, !56}
!77 = !{!72, !69, !61, !58, !49, !51, !53, !56}
!78 = distinct !{null, null, null, null, null, null, null}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_RNvXNvNtCsjJ0p09o2jmV_10proc_macro6bridges4_1__INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBO_6option6OptionNtNtB4_6client11TokenStreamEuEINtNtB4_3rpc6EncodeuE6encodeCshbKHpCRGxgC_16deltalake_derive: argument 0"}
!81 = distinct !{!81, !"_RNvXNvNtCsjJ0p09o2jmV_10proc_macro6bridges4_1__INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBO_6option6OptionNtNtB4_6client11TokenStreamEuEINtNtB4_3rpc6EncodeuE6encodeCshbKHpCRGxgC_16deltalake_derive"}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_RNvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6Buffer4push: argument 0"}
!84 = distinct !{!84, !"_RNvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6Buffer4push"}
!85 = !{!80, !86, !61, !58, !49, !51, !52, !53, !55, !56}
!86 = distinct !{!86, !81, !"_RNvXNvNtCsjJ0p09o2jmV_10proc_macro6bridges4_1__INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBO_6option6OptionNtNtB4_6client11TokenStreamEuEINtNtB4_3rpc6EncodeuE6encodeCshbKHpCRGxgC_16deltalake_derive: argument 1"}
!87 = !{!83, !80}
!88 = !{!86, !61, !58, !49, !51, !52, !53, !55, !56}
!89 = !{!83, !80, !86, !61, !58, !49, !51, !52, !53, !55, !56}
!90 = !{!83, !80, !86, !61, !58, !49, !51, !53, !56}
!91 = distinct !{null, null, null, null, null, null, null}
!92 = !{!86, !61, !58, !49, !51, !53, !56}
!93 = distinct !{null, null, null, null, null, null}
!94 = distinct !{null, null, null, null}
!95 = !{!49, !51, !53, !56}
!96 = !{!97}
!97 = distinct !{!97, !98, !"_RNvXNvNtCsjJ0p09o2jmV_10proc_macro6bridges4_1__INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB4_3rpc12PanicMessageEINtB1o_6EncodeuE6encodeCshbKHpCRGxgC_16deltalake_derive: argument 1"}
!98 = distinct !{!98, !"_RNvXNvNtCsjJ0p09o2jmV_10proc_macro6bridges4_1__INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB4_3rpc12PanicMessageEINtB1o_6EncodeuE6encodeCshbKHpCRGxgC_16deltalake_derive"}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_RNvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6Buffer4push: argument 0"}
!101 = distinct !{!101, !"_RNvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6Buffer4push"}
!102 = !{!103, !97, !104, !49, !51, !52, !53, !55, !56}
!103 = distinct !{!103, !98, !"_RNvXNvNtCsjJ0p09o2jmV_10proc_macro6bridges4_1__INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB4_3rpc12PanicMessageEINtB1o_6EncodeuE6encodeCshbKHpCRGxgC_16deltalake_derive: argument 0"}
!104 = distinct !{!104, !98, !"_RNvXNvNtCsjJ0p09o2jmV_10proc_macro6bridges4_1__INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB4_3rpc12PanicMessageEINtB1o_6EncodeuE6encodeCshbKHpCRGxgC_16deltalake_derive: argument 2"}
!105 = !{!100, !97}
!106 = !{!103, !104, !49, !51, !52, !53, !55, !56}
!107 = !{!100, !103, !97, !104, !49, !51, !52, !53, !55, !56}
!108 = !{!100, !103, !97, !104, !49, !51, !53, !56}
!109 = distinct !{null, null, null, null}
!110 = !{!103, !104, !49, !51, !53, !56}
!111 = distinct !{null, null, null}
!112 = !{!113}
!113 = distinct !{!113, !114, !"_RNvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6Buffer4push: argument 0"}
!114 = distinct !{!114, !"_RNvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6Buffer4push"}
!115 = !{!113, !97}
!116 = !{!113, !103, !97, !104, !49, !51, !52, !53, !55, !56}
!117 = !{!113, !103, !97, !104, !49, !51, !53, !56}
!118 = !{!97, !104, !49, !51, !52, !53, !55, !56}
!119 = distinct !{null}
!120 = !{!51, !52, !55, !56}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCshbKHpCRGxgC_16deltalake_derive: argument 0"}
!123 = distinct !{!123, !"_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCshbKHpCRGxgC_16deltalake_derive"}
!124 = !{!125}
!125 = distinct !{!125, !126, !"_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCshbKHpCRGxgC_16deltalake_derive: argument 0"}
!126 = distinct !{!126, !"_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCshbKHpCRGxgC_16deltalake_derive"}
!127 = !{!128}
!128 = distinct !{!128, !129, !"_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCshbKHpCRGxgC_16deltalake_derive: argument 0"}
!129 = distinct !{!129, !"_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCshbKHpCRGxgC_16deltalake_derive"}
!130 = !{!"branch_weights", i32 2002, i32 2000}
!131 = !{i64 8}
!132 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!133 = !{!134}
!134 = distinct !{!134, !135, !"_RINvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB6_6Buffer17extend_from_arrayKj4_ECshbKHpCRGxgC_16deltalake_derive: argument 0"}
!135 = distinct !{!135, !"_RINvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB6_6Buffer17extend_from_arrayKj4_ECshbKHpCRGxgC_16deltalake_derive"}
!136 = distinct !{null}
!137 = !{!138}
!138 = distinct !{!138, !139, !"_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push: argument 0"}
!139 = distinct !{!139, !"_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push"}
!140 = !{!141}
!141 = distinct !{!141, !142, !"_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String8push_str: argument 1"}
!142 = distinct !{!142, !"_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String8push_str"}
!143 = !{!144, !146}
!144 = distinct !{!144, !145, !"_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE15append_elementsCshbKHpCRGxgC_16deltalake_derive: argument 0"}
!145 = distinct !{!145, !"_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE15append_elementsCshbKHpCRGxgC_16deltalake_derive"}
!146 = distinct !{!146, !142, !"_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String8push_str: argument 0"}
!147 = !{i8 0, i8 2}
!148 = !{!149, !151, !153}
!149 = distinct !{!149, !150, !"_RNvXs9_NtNtCsbvkFyIu7lgC_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!150 = distinct !{!150, !"_RNvXs9_NtNtCsbvkFyIu7lgC_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!151 = distinct !{!151, !152, !"_RNvXs9_NtNtCsbvkFyIu7lgC_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE5index: argument 0"}
!152 = distinct !{!152, !"_RNvXs9_NtNtCsbvkFyIu7lgC_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE5index"}
!153 = distinct !{!153, !154, !"_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCshbKHpCRGxgC_16deltalake_derive: argument 0"}
!154 = distinct !{!154, !"_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCshbKHpCRGxgC_16deltalake_derive"}
!155 = distinct !{null}
end_hunk_1
