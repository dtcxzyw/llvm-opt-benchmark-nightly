inline.NumInlined: 494
inline.NumDeleted: 187
begin_hunk_0_@_RNvMs0_NtCsfY7SmN0bPrO_14deltalake_test5utilsNtB5_18IntegrationContext3new:bb.a
bb.am:                                            ; preds = %bb.aj
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !range !29, !invariant.load !3 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %common.resume, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !range !30, !invariant.load !3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef range(i64 1, 0) %i.bn, i64 noundef range(i64 1, 536870913) %i.bq) #20
  br label %common.resume

common.resume:                                    ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsfY7SmN0bPrO_14deltalake_test.exit, %bb.am, %bb.an
  %common.resume.op = phi { ptr, i32 } [ %i.bl, %bb.am ], [ %i.bl, %bb.an ], [ %.pn42, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsfY7SmN0bPrO_14deltalake_test.exit ]
  resume { ptr, i32 } %common.resume.op
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtCsfY7SmN0bPrO_14deltalake_test5utilsNtB5_18IntegrationContext8root_uri(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(128) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !align !4, !noundef !3
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !3, !nonnull !3
  tail call void %i.f(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull %i.b) #26
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtCsbpG6u9KFjWn_8indexmap3mapINtB5_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE11insert_fullCsfY7SmN0bPrO_14deltalake_test(ptr dead_on_unwind noalias noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(96) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = invoke noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %3, i64 96, i1 false)
  call void @_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE11insert_fullCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(96) %3) #21
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

.critedge:                                        ; preds = %bb.e
  resume { ptr, i32 } %i.e

bb.e:                                             ; preds = %bb.c
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %2) #21
          to label %.critedge unwind label %bb.d
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs2_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2Y_5ErrorEEE3popCsfY7SmN0bPrO_14deltalake_test(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i.i.i = alloca [80 x i8], align 8      ; 6 uses
  %i.a = alloca [80 x i8], align 8                ; 6 uses
  %.sroa.6 = alloca [72 x i8], align 8            ; 5 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !368, !noalias !371 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  %i.b = icmp eq i64 %.pre, 0
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3g_5ErrorEEEECsfY7SmN0bPrO_14deltalake_test.exit, label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %i.c = phi i64 [ %2, %.thread ], [ %.pre, %bb.b ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = add nsw i64 %i.c, -1                     ; 9 uses
  store i64 %i.e, ptr %i.d, align 8, !alias.scope !368, !noalias !371
  %i.f = load i64, ptr %1, align 8, !range !29, !alias.scope !368, !noalias !371, !noundef !3
  %i.g = icmp samesign ult i64 %i.e, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !368, !noalias !371, !nonnull !3, !noundef !3 ; 13 uses
  %i.j = icmp ult i64 %i.c, 115292150460684699
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %i.e ; 2 uses
  %.sroa.05.0.copyload.i = load i64, ptr %i.k, align 8, !noalias !373 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !373
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.57.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.0..sroa_idx.i, i64 72, i1 false), !noalias !373
  store i64 %.sroa.05.0.copyload.i, ptr %i.a, align 8, !noalias !373
  %i.l = icmp eq i64 %i.e, 0
  br i1 %i.l, label %_RNCNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB7_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB34_5ErrorEEE3pop0CsfY7SmN0bPrO_14deltalake_test.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsfY7SmN0bPrO_14deltalake_test(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull %i.i, i64 noundef 10)
          to label %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2B_5ErrorEEECsfY7SmN0bPrO_14deltalake_test.exit.i.i unwind label %bb.e, !noalias !374

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #22, !noalias !374
  unreachable

_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2B_5ErrorEEECsfY7SmN0bPrO_14deltalake_test.exit.i.i: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.i, i64 80, i1 false), !noalias !377
  %i.n = call i64 @llvm.usub.sat.i64(i64 %i.e, i64 2)
  %.not.not8.i.i.i = icmp samesign ult i64 %i.c, 4
  br i1 %.not.not8.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2B_5ErrorEEECsfY7SmN0bPrO_14deltalake_test.exit.i.i
  %.sroa.12.0.lcssa.i.i.i = phi i64 [ 0, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2B_5ErrorEEECsfY7SmN0bPrO_14deltalake_test.exit.i.i ], [ %i.aj, %.lr.ph.i.i.i ] ; 5 uses
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 1, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2B_5ErrorEEECsfY7SmN0bPrO_14deltalake_test.exit.i.i ], [ %i.an, %.lr.ph.i.i.i ] ; 4 uses
  %i.o = add nsw i64 %i.c, -2
  %i.p = icmp eq i64 %.sroa.05.0.lcssa.i.i.i, %i.o
  br i1 %i.p, label %.thread.i.i, label %bb.f

.thread.i.i:                                      ; preds = %._crit_edge.i.i.i
  %i.q = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %.sroa.05.0.lcssa.i.i.i ; 3 uses
  %i.r = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %.sroa.12.0.lcssa.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.r, ptr noundef nonnull align 8 dereferenceable(80) %i.q, i64 80, i1 false), !noalias !377
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.q, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.i.i.i, i64 80, i1 false), !noalias !377
  %i.s = icmp samesign ult i64 %.sroa.05.0.lcssa.i.i.i, %i.e
  call void @llvm.assume(i1 %i.s)
  %.sroa.416.0..sroa_idx.i.i6.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %.sroa.416.0.copyload.i.i7.i.i = load i64, ptr %.sroa.416.0..sroa_idx.i.i6.i.i, align 8, !noalias !377
  br label %.lr.ph.i.i.preheader.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.t = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %.sroa.12.0.lcssa.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.t, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.i.i.i, i64 80, i1 false), !noalias !377
  %i.u = icmp samesign ult i64 %.sroa.12.0.lcssa.i.i.i, %i.e
  call void @llvm.assume(i1 %i.u)
  %.sroa.416.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %.sroa.416.0.copyload.i.i.i.i = load i64, ptr %.sroa.416.0..sroa_idx.i.i.i.i, align 8, !noalias !377 ; 2 uses
  %.not18.i.i.i.i = icmp eq i64 %.sroa.12.0.lcssa.i.i.i, 0
  br i1 %.not18.i.i.i.i, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE19sift_down_to_bottomCsfY7SmN0bPrO_14deltalake_test.exit.i.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.f, %.thread.i.i
  %.sroa.416.0.copyload.i.i10.i.i = phi i64 [ %.sroa.416.0.copyload.i.i7.i.i, %.thread.i.i ], [ %.sroa.416.0.copyload.i.i.i.i, %bb.f ] ; 3 uses
  %.sroa.12.1.i9.i.i = phi i64 [ %.sroa.05.0.lcssa.i.i.i, %.thread.i.i ], [ %.sroa.12.0.lcssa.i.i.i, %bb.f ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %.lr.ph.i.i.preheader.i.i
  %.sroa.13.019.i.i.i.i = phi i64 [ %i.w, %bb.g ], [ %.sroa.12.1.i9.i.i, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %i.v = add nsw i64 %.sroa.13.019.i.i.i.i, -1
  %i.w = lshr i64 %i.v, 1                         ; 4 uses
  %i.x = icmp samesign ult i64 %i.w, %i.e
  call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %i.w ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 72
  %.val1.i.i.i.i = load i64, ptr %i.z, align 8, !noalias !377, !noundef !3
  %.not17.i.i.i.i = icmp sgt i64 %.val1.i.i.i.i, %.sroa.416.0.copyload.i.i10.i.i
  br i1 %.not17.i.i.i.i, label %bb.g, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE19sift_down_to_bottomCsfY7SmN0bPrO_14deltalake_test.exit.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aa = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %.sroa.13.019.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.aa, ptr noundef nonnull align 8 dereferenceable(80) %i.y, i64 80, i1 false), !noalias !377
  %.not.i.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i.i, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE19sift_down_to_bottomCsfY7SmN0bPrO_14deltalake_test.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2B_5ErrorEEECsfY7SmN0bPrO_14deltalake_test.exit.i.i, %.lr.ph.i.i.i
  %.sroa.05.010.i.i.i = phi i64 [ %i.an, %.lr.ph.i.i.i ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2B_5ErrorEEECsfY7SmN0bPrO_14deltalake_test.exit.i.i ] ; 3 uses
  %.sroa.12.09.i.i.i = phi i64 [ %i.aj, %.lr.ph.i.i.i ], [ 0, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2B_5ErrorEEECsfY7SmN0bPrO_14deltalake_test.exit.i.i ]
  %i.ab = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %.sroa.05.010.i.i.i
  %i.ac = add nuw nsw i64 %.sroa.05.010.i.i.i, 1  ; 2 uses
  %i.ad = icmp samesign ult i64 %i.ac, %i.e
  call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %i.ac
  %i.af = getelementptr i8, ptr %i.ab, i64 72
  %.val.i.i.i = load i64, ptr %i.af, align 8, !noalias !377, !noundef !3
  %i.ag = getelementptr i8, ptr %i.ae, i64 72
  %.val17.i.i.i = load i64, ptr %i.ag, align 8, !noalias !377, !noundef !3
  %i.ah = icmp sle i64 %.val17.i.i.i, %.val.i.i.i
  %i.ai = zext i1 %i.ah to i64
  %i.aj = add nuw nsw i64 %.sroa.05.010.i.i.i, %i.ai ; 4 uses
  %i.ak = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %i.aj
  %i.al = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %.sroa.12.09.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.al, ptr noundef nonnull align 8 dereferenceable(80) %i.ak, i64 80, i1 false), !noalias !377
  %i.am = shl nuw nsw i64 %i.aj, 1                ; 2 uses
  %i.an = or disjoint i64 %i.am, 1                ; 2 uses
  %.not.not.not.i.i.i = icmp samesign ult i64 %i.am, %i.n
  br i1 %.not.not.not.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE19sift_down_to_bottomCsfY7SmN0bPrO_14deltalake_test.exit.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i, %bb.f
  %.sroa.416.0.copyload.i.i11.i.i = phi i64 [ %.sroa.416.0.copyload.i.i.i.i, %bb.f ], [ %.sroa.416.0.copyload.i.i10.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.416.0.copyload.i.i10.i.i, %bb.g ]
  %.sroa.13.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.f ], [ 0, %bb.g ], [ %.sroa.13.019.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %.sroa.13.0.lcssa.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ao, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.i.i.i, i64 72, i1 false), !noalias !377
  %.sroa.5.0..sroa_idx1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 72
  store i64 %.sroa.416.0.copyload.i.i11.i.i, ptr %.sroa.5.0..sroa_idx1.i.i.i.i, align 8, !noalias !377
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %.sroa.012.0.copyload13.pre = load i64, ptr %i.a, align 8, !noalias !368
  br label %_RNCNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB7_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB34_5ErrorEEE3pop0CsfY7SmN0bPrO_14deltalake_test.exit.i

_RNCNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB7_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB34_5ErrorEEE3pop0CsfY7SmN0bPrO_14deltalake_test.exit.i: ; preds = %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE19sift_down_to_bottomCsfY7SmN0bPrO_14deltalake_test.exit.i.i, %bb.c
  %.sroa.012.0.copyload13 = phi i64 [ %.sroa.012.0.copyload13.pre, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE19sift_down_to_bottomCsfY7SmN0bPrO_14deltalake_test.exit.i.i ], [ %.sroa.05.0.copyload.i, %bb.c ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.57.0..sroa_idx.i, i64 72, i1 false), !noalias !368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !373
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3g_5ErrorEEEECsfY7SmN0bPrO_14deltalake_test.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3g_5ErrorEEEECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.b, %_RNCNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB7_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB34_5ErrorEEE3pop0CsfY7SmN0bPrO_14deltalake_test.exit.i
  %.sroa.012.0 = phi i64 [ %.sroa.012.0.copyload13, %_RNCNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB7_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB34_5ErrorEEE3pop0CsfY7SmN0bPrO_14deltalake_test.exit.i ], [ -9223372036854775789, %bb.b ] ; 2 uses
  %i.ap = icmp ne i64 %.sroa.012.0, -9223372036854775789
  call void @llvm.assume(i1 %i.ap)
  store i64 %.sroa.012.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE4pushCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(80) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i = alloca [72 x i8], align 8          ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 8 uses
  %i.c = icmp ult i64 %i.b, 115292150460684698
  tail call void @llvm.assume(i1 %i.c)
  %i.d = load i64, ptr %0, align 8, !range !29, !alias.scope !379, !noalias !382, !noundef !3
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2w_5ErrorEEE8push_mutCsfY7SmN0bPrO_14deltalake_test.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2D_5ErrorEEE8grow_oneB2D_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2w_5ErrorEEE8push_mutCsfY7SmN0bPrO_14deltalake_test.exit unwind label %bb.c, !noalias !382

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2h_5ErrorEEECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(80) %1) #21
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2w_5ErrorEEE8push_mutCsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !379, !noalias !382, !nonnull !3, !noundef !3
  %i.j = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.j, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  %i.k = add nuw nsw i64 %i.b, 1
  store i64 %i.k, ptr %i.a, align 8, !alias.scope !379, !noalias !382
  %.val = load ptr, ptr %i.h, align 8, !nonnull !3, !noundef !3 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.l = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %i.b ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(72) %i.l, i64 72, i1 false)
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %.sroa.416.0.copyload.i = load i64, ptr %.sroa.416.0..sroa_idx.i, align 8 ; 2 uses
  %.not18.i = icmp eq i64 %i.b, 0
  br i1 %.not18.i, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE7sift_upCsfY7SmN0bPrO_14deltalake_test.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2w_5ErrorEEE8push_mutCsfY7SmN0bPrO_14deltalake_test.exit, %bb.f
  %.sroa.13.019.i = phi i64 [ %i.n, %bb.f ], [ %i.b, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2w_5ErrorEEE8push_mutCsfY7SmN0bPrO_14deltalake_test.exit ] ; 3 uses
  %i.m = add nsw i64 %.sroa.13.019.i, -1
  %i.n = lshr i64 %i.m, 1                         ; 4 uses
  %2 = icmp samesign ule i64 %i.n, %i.b
  tail call void @llvm.assume(i1 %2)
  %i.o = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %i.n ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 72
  %.val1.i = load i64, ptr %i.p, align 8, !noundef !3
  %.not17.i = icmp sgt i64 %.val1.i, %.sroa.416.0.copyload.i
  br i1 %.not17.i, label %bb.f, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE7sift_upCsfY7SmN0bPrO_14deltalake_test.exit

bb.f:                                             ; preds = %.lr.ph.i
  %i.q = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %.sroa.13.019.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.q, ptr noundef nonnull align 8 dereferenceable(80) %i.o, i64 80, i1 false)
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE7sift_upCsfY7SmN0bPrO_14deltalake_test.exit, label %.lr.ph.i

_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE7sift_upCsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %.lr.ph.i, %bb.f, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2w_5ErrorEEE8push_mutCsfY7SmN0bPrO_14deltalake_test.exit
  %.sroa.13.0.lcssa.i = phi i64 [ 0, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2w_5ErrorEEE8push_mutCsfY7SmN0bPrO_14deltalake_test.exit ], [ 0, %bb.f ], [ %.sroa.13.019.i, %.lr.ph.i ]
  %i.r = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %.sroa.13.0.lcssa.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.r, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.i, i64 72, i1 false)
  %.sroa.5.0..sroa_idx1.i = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  store i64 %.sroa.416.0.copyload.i, ptr %.sroa.5.0..sroa_idx1.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCsbpG6u9KFjWn_8indexmap3mapINtB2_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsfY7SmN0bPrO_14deltalake_test(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvXNtCsbpG6u9KFjWn_8indexmap5innerINtB2_4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load <2 x i64>, ptr %i.a, align 8
  store <2 x i64> %i.c, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtCsfY7SmN0bPrO_14deltalake_test5utilsNtB2_23LocalStorageIntegrationNtNtCsbvkFyIu7lgC_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtCs3Tb271uPz9Q_8tempfile3dir7tempdir(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !384)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i8, ptr %i.c, align 8, !range !6, !alias.scope !384, !noalias !387, !noundef !3
  %i.e = icmp eq i8 %i.d, 2
  br i1 %i.e, label %bb.b, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultNtNtCs3Tb271uPz9Q_8tempfile3dir7TempDirNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorE6expectCsfY7SmN0bPrO_14deltalake_test.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !389
  %i.f = load ptr, ptr %i.b, align 8, !alias.scope !384, !noalias !387, !nonnull !3, !noundef !3
  store ptr %i.f, ptr %i.a, align 8, !noalias !389
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 23, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #23
          to label %bb.d unwind label %bb.c, !noalias !389

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #21
          to label %bb.f unwind label %bb.e, !noalias !389

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !389
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.g

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultNtNtCs3Tb271uPz9Q_8tempfile3dir7TempDirNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorE6expectCsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @_RNvXNtNtCs14kWLkQVSKO_14deltalake_core6kernel5errorNtB2_5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0) unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !243, !noundef !3 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775786
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, 9223372036854775790
  %i.d = icmp ugt i64 %i.a, -9223372036854775791
  %i.e = select i1 %i.d, i64 %i.c, i64 4
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.i
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.i
    i64 6, label %bb.i
    i64 7, label %bb.i
    i64 8, label %bb.i
    i64 9, label %bb.i
    i64 10, label %bb.i
    i64 11, label %bb.i
    i64 12, label %bb.g
    i64 13, label %bb.h
    i64 14, label %bb.i
    i64 15, label %bb.i
    i64 16, label %bb.i
    i64 17, label %bb.i
    i64 18, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !3, !align !4, !noundef !3
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.20.0 = phi ptr [ @28, %bb.c ], [ undef, %bb.a ], [ %i.j, %bb.d ], [ @30, %bb.e ], [ @32, %bb.f ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ @34, %bb.g ], [ @36, %bb.h ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.f, %bb.c ], [ null, %bb.a ], [ %i.h, %bb.d ], [ %i.k, %bb.e ], [ %0, %bb.f ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ %i.l, %bb.g ], [ %i.m, %bb.h ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ]
  %i.n = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.o = insertvalue { ptr, ptr } %i.n, ptr %.sroa.20.0, 1
  ret { ptr, ptr } %i.o
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs1G_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.08 = alloca [56 x i8], align 8           ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.07 = alloca [40 x i8], align 8           ; 5 uses
  %i.f = load i8, ptr %1, align 8, !range !133, !noundef !3
  switch i8 %i.f, label %default.unreachable10 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.h
    i8 3, label %bb.i
    i8 4, label %bb.q
  ]

default.unreachable10:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !390)
  %i.h = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema9ArrayTypeE13new_uninit_inCsfY7SmN0bPrO_14deltalake_test(), !noalias !390, !inline_history !393 ; 4 uses
  %i.i = load ptr, ptr %i.g, align 8, !alias.scope !390, !nonnull !3, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !394)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.07)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !397), !noalias !390
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !400
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i)
          to label %.noexc unwind label %bb.f, !inline_history !402

.noexc:                                           ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !400
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  invoke fastcc void @_RNvXs1G_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j)
          to label %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema9ArrayTypeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsfY7SmN0bPrO_14deltalake_test.exit unwind label %bb.d, !noalias !403, !inline_history !404

bb.d:                                             ; preds = %.noexc
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #21
          to label %bb.g unwind label %bb.e, !noalias !403, !inline_history !404

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !403, !inline_history !404
end_hunk_0
begin_hunk_1_@_RNvXs_NtCsfY7SmN0bPrO_14deltalake_test5utilsNtB4_23LocalStorageIntegrationNtB4_18StorageIntegration14copy_directory:bb.a

bb.o:                                             ; preds = %bb.n
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.m, %bb.d
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.p:                                             ; preds = %.body
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtCsfY7SmN0bPrO_14deltalake_test5utilsNtB4_23LocalStorageIntegrationNtB4_18StorageIntegration8root_uri(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !436)
  %i.e = load ptr, ptr %1, align 8, !alias.scope !436, !noalias !433, !nonnull !3, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !436, !noalias !433, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !438
  call void @_RNvNtNtCsbvkFyIu7lgC_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef %i.g), !noalias !438
  %i.h = load i64, ptr %i.b, align 8, !range !11, !noalias !438, !noundef !3
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !438
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @170) #24, !noalias !438
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noalias !438, !nonnull !3, !noundef !3
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noalias !438, !noundef !3 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !438
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !438
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.m, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !438
  %i.n = load i64, ptr %i.a, align 8, !range !11, !noalias !438, !noundef !3
  %i.o = trunc nuw i64 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !12, !noalias !438, !noundef !3 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.o, label %bb.d, label %bb.e, !prof !7

bb.d:                                             ; preds = %bb.c
  %i.s = load i64, ptr %i.r, align 8, !noalias !438
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.q, i64 %i.s) #23, !noalias !438
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.r, align 8, !noalias !438, !nonnull !3, !noundef !3 ; 2 uses
  %i.u = icmp ule i64 %i.m, %i.q
  tail call void @llvm.assume(i1 %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !438
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %_RNvXs_NtCsfY7SmN0bPrO_14deltalake_test5utilsNtB4_23LocalStorageIntegrationNtB4_18StorageIntegration11bucket_name.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull align 1 %i.k, i64 %i.m, i1 false), !noalias !438
  br label %_RNvXs_NtCsfY7SmN0bPrO_14deltalake_test5utilsNtB4_23LocalStorageIntegrationNtB4_18StorageIntegration11bucket_name.exit

_RNvXs_NtCsfY7SmN0bPrO_14deltalake_test5utilsNtB4_23LocalStorageIntegrationNtB4_18StorageIntegration11bucket_name.exit: ; preds = %bb.e, %bb.f
  store i64 %i.q, ptr %i.d, align 8, !alias.scope !433, !noalias !436
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.t, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !433, !noalias !436
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.m, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !433, !noalias !436
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @173, ptr noundef nonnull %i.c)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfY7SmN0bPrO_14deltalake_test.exit unwind label %bb.g

bb.g:                                             ; preds = %_RNvXs_NtCsfY7SmN0bPrO_14deltalake_test5utilsNtB4_23LocalStorageIntegrationNtB4_18StorageIntegration11bucket_name.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #21
          to label %common.resume unwind label %bb.j

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %_RNvXs_NtCsfY7SmN0bPrO_14deltalake_test5utilsNtB4_23LocalStorageIntegrationNtB4_18StorageIntegration11bucket_name.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit unwind label %bb.h

bb.h:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfY7SmN0bPrO_14deltalake_test.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.h ], [ %i.v, %bb.g ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfY7SmN0bPrO_14deltalake_test.exit
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.j:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB4_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2X_5ErrorEEENtNtNtB2m_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i = alloca [72 x i8], align 8          ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 9 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !nonnull !3, !align !4, !noundef !3 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.b, ptr %i.d, align 8
  %i.e = icmp ult i64 %i.b, 115292150460684698
  tail call void @llvm.assume(i1 %i.e)
  %i.f = getelementptr i8, ptr %i.c, i64 8
  %.val = load ptr, ptr %i.f, align 8, !nonnull !3, !noundef !3 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(72) %.val, i64 72, i1 false)
  %.sroa.427.0..8.val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %.sroa.427.0.copyload.i = load i64, ptr %.sroa.427.0..8.val.sroa_idx.i, align 8 ; 3 uses
  %i.g = tail call i64 @llvm.usub.sat.i64(i64 range(i64 0, 115292150460684698) %i.b, i64 2)
  %.not31.i = icmp samesign ult i64 %i.b, 3
  br i1 %.not31.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.e, %bb.b
  %.sroa.22.0.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.w, %bb.e ] ; 3 uses
  %.sroa.01.0.lcssa.i = phi i64 [ 1, %bb.b ], [ %i.ac, %bb.e ] ; 4 uses
  %i.h = add nsw i64 %i.b, -1
  %i.i = icmp eq i64 %.sroa.01.0.lcssa.i, %i.h
  br i1 %i.i, label %bb.c, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE15sift_down_rangeCsfY7SmN0bPrO_14deltalake_test.exit

bb.c:                                             ; preds = %._crit_edge.i
  %i.j = icmp ult i64 %.sroa.01.0.lcssa.i, %i.b
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %.sroa.01.0.lcssa.i ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 72
  %.val16.i = load i64, ptr %i.l, align 8, !noundef !3
  %i.m = icmp slt i64 %.val16.i, %.sroa.427.0.copyload.i
  br i1 %i.m, label %bb.d, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE15sift_down_rangeCsfY7SmN0bPrO_14deltalake_test.exit

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %.sroa.22.0.lcssa.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.n, ptr noundef nonnull align 8 dereferenceable(80) %i.k, i64 80, i1 false)
  br label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE15sift_down_rangeCsfY7SmN0bPrO_14deltalake_test.exit

.lr.ph.i:                                         ; preds = %bb.b, %bb.e
  %.sroa.01.033.i = phi i64 [ %i.ac, %bb.e ], [ 1, %bb.b ] ; 3 uses
  %.sroa.22.032.i = phi i64 [ %i.w, %bb.e ], [ 0, %bb.b ] ; 2 uses
  %i.o = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %.sroa.01.033.i
  %i.p = add nuw nsw i64 %.sroa.01.033.i, 1       ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.b
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %i.p
  %i.s = getelementptr i8, ptr %i.o, i64 72
  %.val.i = load i64, ptr %i.s, align 8, !noundef !3
  %i.t = getelementptr i8, ptr %i.r, i64 72
  %.val14.i = load i64, ptr %i.t, align 8, !noundef !3
  %i.u = icmp sle i64 %.val14.i, %.val.i
  %i.v = zext i1 %i.u to i64
  %i.w = add nuw nsw i64 %.sroa.01.033.i, %i.v    ; 5 uses
  %i.x = icmp ult i64 %i.w, %i.b
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %i.w ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 72
  %.val18.i = load i64, ptr %i.z, align 8, !noundef !3
  %.not28.i = icmp slt i64 %.val18.i, %.sroa.427.0.copyload.i
  br i1 %.not28.i, label %bb.e, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE15sift_down_rangeCsfY7SmN0bPrO_14deltalake_test.exit

bb.e:                                             ; preds = %.lr.ph.i
  %i.aa = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %.sroa.22.032.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.aa, ptr noundef nonnull align 8 dereferenceable(80) %i.y, i64 80, i1 false)
  %i.ab = shl nuw nsw i64 %i.w, 1                 ; 2 uses
  %i.ac = or disjoint i64 %i.ab, 1                ; 2 uses
  %.not.not.i = icmp samesign ult i64 %i.ab, %i.g
  br i1 %.not.not.i, label %.lr.ph.i, label %._crit_edge.i

_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE15sift_down_rangeCsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %.lr.ph.i, %._crit_edge.i, %bb.c, %bb.d
  %.sroa.22.032.lcssa.sink.i = phi i64 [ %.sroa.22.0.lcssa.i, %._crit_edge.i ], [ %.sroa.01.0.lcssa.i, %bb.d ], [ %.sroa.22.0.lcssa.i, %bb.c ], [ %.sroa.22.032.i, %.lr.ph.i ]
  %i.ad = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %.sroa.22.032.lcssa.sink.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ad, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.i, i64 72, i1 false)
  %.sroa.7.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  store i64 %.sroa.427.0.copyload.i, ptr %.sroa.7.0..sroa_idx5.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %bb.f

bb.f:                                             ; preds = %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE15sift_down_rangeCsfY7SmN0bPrO_14deltalake_test.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsfY7SmN0bPrO_14deltalake_test(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #8 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 7                   ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !439
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !439
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !439
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtB8_6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.0 = alloca [88 x i8], align 8            ; 6 uses
  %i.d = load ptr, ptr %1, align 8, !alias.scope !442, !nonnull !3, !noundef !3 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !442, !nonnull !3, !noundef !3
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  store ptr %i.h, ptr %1, align 8, !alias.scope !442
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !445)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !448
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.i), !noalias !450
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !448
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  invoke fastcc void @_RNvXs1G_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j)
          to label %bb.e unwind label %bb.d, !noalias !450

bb.c:                                             ; preds = %bb.f, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.o, %bb.f ], [ %i.k, %bb.d ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #21
          to label %bb.h unwind label %bb.g, !noalias !450

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.m = load i8, ptr %i.l, align 8, !range !19, !alias.scope !445, !noalias !450, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !448
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.n)
          to label %_RNvXs12_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructFieldNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit unwind label %bb.f, !noalias !450

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(16) %i.b) #21
          to label %bb.c unwind label %bb.g, !noalias !450

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !450
  unreachable

bb.h:                                             ; preds = %bb.c
  resume { ptr, i32 } %.pn.i

_RNvXs12_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructFieldNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit: ; preds = %bb.e
  %.sroa.0.40..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.40..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !445
  %.sroa.0.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !noalias !445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !448
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0, i64 88, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 %i.m, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_RNvXs12_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructFieldNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtB8_6traits8iterator8Iterator9size_hintCsfY7SmN0bPrO_14deltalake_test(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXsS_NtNtCsbpG6u9KFjWn_8indexmap3map4iterINtB5_6ValuesNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator9size_hintCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map6ValuesxNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(40) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_4IterxNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(40) %1) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %.not.i = icmp eq ptr %i.b, null
  %i.c = extractvalue { ptr, ptr } %i.a, 1        ; 2 uses
  %.not2 = icmp eq ptr %i.c, null
  %.not = select i1 %.not.i, i1 true, i1 %.not2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map6ValuesxNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator9size_hintCsfY7SmN0bPrO_14deltalake_test(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load i64, ptr %i.a, align 8, !noundef !3 ; 2 uses
  store i64 %.val, ptr %0, align 8, !alias.scope !451
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.b, align 8, !alias.scope !451
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val, ptr %i.c, align 8, !alias.scope !451
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsa_NtCs14kWLkQVSKO_14deltalake_core6errorsNtB5_15DeltaTableErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [8 x i8], align 8                 ; 4 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [8 x i8], align 8                ; 4 uses
  %i.ad = load i64, ptr %0, align 16, !range !45, !noundef !3
  %i.ae = tail call i64 @llvm.usub.sat.i64(i64 %i.ad, i64 -9223372036854775744)
  switch i64 %i.ae, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
end_hunk_1
