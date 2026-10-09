Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/thiserror_impl-21514d88c6ab2f03.thiserror_impl.fe874e2664b671c6-cgu.6?download=true
inline.NumInlined: 109
inline.NumDeleted: 58
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvMs2_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB6_6Buffer17extend_from_arrayKj8_ECslQQFbX7tBjK_14thiserror_impl:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = sub i64 %i.d, %i.f
  %i.h = icmp ult i64 %i.g, 8
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store ptr @_RNvNvXs4_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB7_6BufferINtNtCshzWfHUSfYae_4core7convert4FromINtNtCsbSS6DM8SDEO_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @_RNvNvXs4_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB7_6BufferINtNtCshzWfHUSfYae_4core7convert4FromINtNtCsbSS6DM8SDEO_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr nonnull sret([40 x i8]) align 8 %i.a, ptr nonnull byval([40 x i8]) align 8 %i.b, i64 8) #29
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsiwvLk4GMN8X_10proc_macro6bridge6buffer6BufferECslQQFbX7tBjK_14thiserror_impl(ptr nonnull align 8 %0)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.e
  %i.k = phi i64 [ %i.f, %bb.a ], [ %.pre, %bb.e ]
  %i.l = load ptr, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.k
  %i.n = load i64, ptr %1, align 1
  store i64 %i.n, ptr %i.m, align 1
  %i.o = load i64, ptr %i.e, align 8
  %i.p = add i64 %i.o, 8
  store i64 %i.p, ptr %i.e, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  resume { ptr, i32 } %i.q

bb.e:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  %.pre = load i64, ptr %i.e, align 8
  br label %bb.c
}

; Function Attrs: noinline nonlazybind uwtable
define hidden void @_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6stable14driftsort_mainRNtCs1K5DUQUZc67_11proc_macro25IdentNvYBZ_NtNtB8_3cmp10PartialOrd2ltINtNtCsbSS6DM8SDEO_5alloc3vec3VecBZ_EECslQQFbX7tBjK_14thiserror_impl(ptr align 8 %0, i64 %1, ptr %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [4096 x i8], align 8
  %i.d = lshr i64 %1, 1
  %i.e = sub i64 %1, %i.d
  %i.f = tail call i64 @_RNvYjNtNtCshzWfHUSfYae_4core3cmp3Ord3minCs1K5DUQUZc67_11proc_macro2(i64 %1, i64 1000000) #26
  %i.g = tail call i64 @_RNvYjNtNtCshzWfHUSfYae_4core3cmp3Ord3maxCs1K5DUQUZc67_11proc_macro2(i64 %i.e, i64 %i.f) #26
  %i.h = tail call i64 @_RNvYjNtNtCshzWfHUSfYae_4core3cmp3Ord3maxCs1K5DUQUZc67_11proc_macro2(i64 %i.g, i64 48) #26 ; 2 uses
  %i.i = icmp ugt i64 %i.h, 512                   ; 3 uses
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @_RNvXs8_NtCsbSS6DM8SDEO_5alloc5sliceINtNtB7_3vec3VecRNtCs1K5DUQUZc67_11proc_macro25IdentEINtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable8BufGuardBN_E13with_capacityCslQQFbX7tBjK_14thiserror_impl(ptr nonnull sret([24 x i8]) align 8 %i.a, i64 %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.j = invoke { ptr, i64 } @_RNvXs8_NtCsbSS6DM8SDEO_5alloc5sliceINtNtB7_3vec3VecRNtCs1K5DUQUZc67_11proc_macro25IdentEINtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable8BufGuardBN_E19as_uninit_slice_mutCslQQFbX7tBjK_14thiserror_impl(ptr nonnull align 8 %i.b)
          to label %bb.d unwind label %.thread    ; 2 uses

bb.c:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.i, label %bb.j, label %bb.i

.thread:                                          ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.m = extractvalue { ptr, i64 } %i.j, 1
  %i.n = extractvalue { ptr, i64 } %i.j, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.sroa.4.0 = phi i64 [ 512, %bb.a ], [ %i.m, %bb.d ]
  %.pn = phi ptr [ %i.c, %bb.a ], [ %i.n, %bb.d ]
  %i.o = icmp ult i64 %1, 65
  invoke void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortRNtCs1K5DUQUZc67_11proc_macro25IdentNvYBW_NtNtBa_3cmp10PartialOrd2ltECslQQFbX7tBjK_14thiserror_impl(ptr align 8 %0, i64 %1, ptr align 8 %.pn, i64 %.sroa.4.0, i1 zeroext %i.o, ptr %2)
          to label %bb.f unwind label %bb.c

bb.f:                                             ; preds = %bb.e
  br i1 %i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  ret void

bb.h:                                             ; preds = %bb.f
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecRNtCs1K5DUQUZc67_11proc_macro25IdentEECslQQFbX7tBjK_14thiserror_impl(ptr nonnull align 8 %i.b)
  br label %bb.g

bb.i:                                             ; preds = %bb.j, %bb.c
  %i.p = phi { ptr, i32 } [ %i.q, %bb.j ], [ %i.k, %bb.c ]
  resume { ptr, i32 } %i.p

bb.j:                                             ; preds = %.thread, %bb.c
  %i.q = phi { ptr, i32 } [ %i.l, %.thread ], [ %i.k, %bb.c ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecRNtCs1K5DUQUZc67_11proc_macro25IdentEECslQQFbX7tBjK_14thiserror_impl(ptr nonnull align 8 %i.b) #27
          to label %bb.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden i32 @_RINvNtNtNtCsiwvLk4GMN8X_10proc_macro6bridge6client5state3setNtB8_11TokenStreamNCNCINvB4_10run_clientBW_NvCslQQFbX7tBjK_14thiserror_impl12derive_errorE00EB1F_(ptr align 8 %0, i32 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  %i.b = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.b, align 4
  %i.c = invoke ptr @_RNvYNCNKNvNtNtNtCsiwvLk4GMN8X_10proc_macro6bridge6client5state12BRIDGE_STATE0s_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtB1n_6option6OptionQIB22_INtNtB1n_4cell4CellPuEEEEE9call_onceCslQQFbX7tBjK_14thiserror_impl(ptr align 8 null)
          to label %.noexc unwind label %bb.g     ; 3 uses

.noexc:                                           ; preds = %bb.a
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc
  invoke void @_RNvNtNtCscAsMj0W7j8b_3std6thread5local18panic_access_error(ptr nonnull align 8 @6) #25
          to label %.noexc3 unwind label %bb.g

.noexc3:                                          ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.noexc
  %i.e = load ptr, ptr %i.c, align 8
  store ptr %0, ptr %i.c, align 8
  store ptr %i.e, ptr %i.a, align 8
  %i.f = invoke i32 @_RNCNCINvNtNtCsiwvLk4GMN8X_10proc_macro6bridge6client10run_clientNtBa_11TokenStreamNvCslQQFbX7tBjK_14thiserror_impl12derive_errorE00B1k_(i32 %1)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNvNtNtNtCsiwvLk4GMN8X_10proc_macro6bridge6client5state3set13RestoreOnDropECslQQFbX7tBjK_14thiserror_impl(ptr nonnull align 8 %i.a) #27
          to label %.thread unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNvNtNtNtCsiwvLk4GMN8X_10proc_macro6bridge6client5state3set13RestoreOnDropECslQQFbX7tBjK_14thiserror_impl(ptr nonnull align 8 %i.a)
  ret i32 %i.f

bb.f:                                             ; preds = %bb.g, %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

.thread:                                          ; preds = %bb.d, %bb.g
  %.pn6 = phi { ptr, i32 } [ %i.g, %bb.d ], [ %lpad.thr_comm, %bb.g ]
  resume { ptr, i32 } %.pn6

bb.g:                                             ; preds = %bb.b, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNCNCINvNtNtCsiwvLk4GMN8X_10proc_macro6bridge6client10run_clientNtBM_11TokenStreamNvCslQQFbX7tBjK_14thiserror_impl12derive_errorE00EB1W_(ptr nonnull align 4 %i.b) #27
          to label %.thread unwind label %bb.f
}

; Function Attrs: noinline nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtCs1K5DUQUZc67_11proc_macro25IdentNvYB15_NtNtBa_3cmp10PartialOrd2ltECslQQFbX7tBjK_14thiserror_impl(ptr align 8 %0, i64 %1, ptr align 8 %2, i64 %3, i32 %4, ptr align 8 %5, ptr %6) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = icmp ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph94 = phi ptr [ %i.go, %.outer ], [ %0, %bb.a ] ; 18 uses
  %.sroa.16.0.ph93 = phi i64 [ %i.fa, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph92 = phi i32 [ %i.e, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph91 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %.not = icmp eq ptr %.sroa.028.0.ph91, null
  %i.c = icmp eq i32 %.sroa.025.0.ph92, 0
  br i1 %i.c, label %.lr.ph._crit_edge, label %.lr.ph255

bb.b:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtCs1K5DUQUZc67_11proc_macro25Ident12split_at_mutCslQQFbX7tBjK_14thiserror_impl.exit
  %i.d = icmp eq i32 %i.e, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph255

.outer._crit_edge:                                ; preds = %bb.s, %.outer, %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtCs1K5DUQUZc67_11proc_macro25Ident12split_at_mutCslQQFbX7tBjK_14thiserror_impl.exit, %bb.a
  %.sroa.0.0.ph.lcssa85 = phi ptr [ %.sroa.0.0.ph94, %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtCs1K5DUQUZc67_11proc_macro25Ident12split_at_mutCslQQFbX7tBjK_14thiserror_impl.exit ], [ %0, %bb.a ], [ %i.fb, %bb.s ], [ %i.go, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.30.2.lcssa.i, %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtCs1K5DUQUZc67_11proc_macro25Ident12split_at_mutCslQQFbX7tBjK_14thiserror_impl.exit ], [ %1, %bb.a ], [ 0, %bb.s ], [ %i.fa, %.outer ]
  call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchRNtCs1K5DUQUZc67_11proc_macro25IdentNvYB1s_NtNtBa_3cmp10PartialOrd2ltECslQQFbX7tBjK_14thiserror_impl(ptr align 8 %.sroa.0.0.ph.lcssa85, i64 range(i64 0, 33) %.sroa.16.0.lcssa, ptr align 8 %2, i64 %3, ptr %6)
  br label %bb.c

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.087.lcssa = phi i64 [ %.sroa.30.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph93, %.lr.ph ]
  call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortRNtCs1K5DUQUZc67_11proc_macro25IdentNvYBW_NtNtBa_3cmp10PartialOrd2ltECslQQFbX7tBjK_14thiserror_impl(ptr align 8 %.sroa.0.0.ph94, i64 %.sroa.16.087.lcssa, ptr align 8 %2, i64 %3, i1 zeroext true, ptr %6)
  br label %bb.c

.lr.ph255:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.086254 = phi i32 [ %i.e, %bb.b ], [ %.sroa.025.0.ph92, %.lr.ph ]
  %.sroa.16.087253 = phi i64 [ %.sroa.30.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph93, %.lr.ph ] ; 25 uses
  %i.e = add i32 %.sroa.025.086254, -1            ; 4 uses
  %i.f = call i64 @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot12choose_pivotRNtCs1K5DUQUZc67_11proc_macro25IdentNvYB15_NtNtBa_3cmp10PartialOrd2ltECslQQFbX7tBjK_14thiserror_impl(ptr align 8 %.sroa.0.0.ph94, i64 %.sroa.16.087253, ptr %6) #26 ; 5 uses
  %i.g = icmp ult i64 %i.f, %.sroa.16.087253
  br i1 %i.g, label %bb.d, label %bb.e

bb.c:                                             ; preds = %.lr.ph._crit_edge, %.outer._crit_edge
  ret void

bb.d:                                             ; preds = %.lr.ph255
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph94, i64 %i.f ; 12 uses
  %i.i = load ptr, ptr %i.h, align 8
  store ptr %i.i, ptr %i.a, align 8
  br i1 %.not, label %bb.g, label %bb.f

bb.e:                                             ; preds = %.lr.ph255
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 %i.f, i64 %.sroa.16.087253, ptr nonnull align 8 @8) #25
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.j = call zeroext i1 @_RNvYNvYRNtCs1K5DUQUZc67_11proc_macro25IdentNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCslQQFbX7tBjK_14thiserror_impl(ptr %6, ptr nonnull align 8 %.sroa.028.0.ph91, ptr nonnull align 8 %i.h) #26
  br i1 %i.j, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.d, %bb.f
  %.not50 = icmp ult i64 %3, %.sroa.16.087253
  br i1 %.not50, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr [8 x i8], ptr %2, i64 %.sroa.16.087253 ; 8 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %bb.k, %bb.h
  %.sroa.30.0.i = phi i64 [ 0, %bb.h ], [ %.sroa.30.2.lcssa.i, %bb.k ] ; 2 uses
  %.sroa.6.0.i = phi ptr [ %.sroa.0.0.ph94, %bb.h ], [ %i.bf, %bb.k ] ; 3 uses
  %.sroa.52.0.i = phi ptr [ %i.k, %bb.h ], [ %i.bc, %bb.k ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %i.f, %bb.h ], [ %.sroa.16.087253, %bb.k ] ; 3 uses
  %i.l = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i, i64 3)
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph94, i64 %i.l ; 2 uses
  %i.n = icmp ult ptr %.sroa.6.0.i, %i.m
  br i1 %i.n, label %_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRNtCs1K5DUQUZc67_11proc_macro25IdentE13partition_oneCslQQFbX7tBjK_14thiserror_impl.exit.i, label %._crit_edge.i

_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRNtCs1K5DUQUZc67_11proc_macro25IdentE13partition_oneCslQQFbX7tBjK_14thiserror_impl.exit.i: ; preds = %bb.j, %_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRNtCs1K5DUQUZc67_11proc_macro25IdentE13partition_oneCslQQFbX7tBjK_14thiserror_impl.exit.i
  %.sroa.52.164.i = phi ptr [ %i.ak, %_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRNtCs1K5DUQUZc67_11proc_macro25IdentE13partition_oneCslQQFbX7tBjK_14thiserror_impl.exit.i ], [ %.sroa.52.0.i, %bb.j ] ; 4 uses
  %.sroa.6.163.i = phi ptr [ %i.ap, %_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRNtCs1K5DUQUZc67_11proc_macro25IdentE13partition_oneCslQQFbX7tBjK_14thiserror_impl.exit.i ], [ %.sroa.6.0.i, %bb.j ] ; 6 uses
  %.sroa.30.162.i = phi i64 [ %i.ao, %_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRNtCs1K5DUQUZc67_11proc_macro25IdentE13partition_oneCslQQFbX7tBjK_14thiserror_impl.exit.i ], [ %.sroa.30.0.i, %bb.j ] ; 2 uses
  %i.o = call zeroext i1 @_RNvYNvYRNtCs1K5DUQUZc67_11proc_macro25IdentNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCslQQFbX7tBjK_14thiserror_impl(ptr %6, ptr nonnull align 8 %.sroa.6.163.i, ptr nonnull align 8 %i.h) #26 ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %.sroa.52.164.i, i64 -8
  %spec.select.i = select i1 %i.o, ptr %2, ptr %i.p
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i, i64 %.sroa.30.162.i
  %i.r = load i64, ptr %.sroa.6.163.i, align 8
  store i64 %i.r, ptr %i.q, align 8
  %i.s = zext i1 %i.o to i64
  %i.t = add i64 %.sroa.30.162.i, %i.s            ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.6.163.i, i64 8 ; 2 uses
  %i.v = call zeroext i1 @_RNvYNvYRNtCs1K5DUQUZc67_11proc_macro25IdentNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCslQQFbX7tBjK_14thiserror_impl(ptr %6, ptr nonnull align 8 %i.u, ptr nonnull align 8 %i.h) #26 ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %.sroa.52.164.i, i64 -16
  %.sroa.01.0.i13.i = select i1 %i.v, ptr %2, ptr %i.w
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i13.i, i64 %i.t
  %i.y = load i64, ptr %i.u, align 8
  store i64 %i.y, ptr %i.x, align 8
  %i.z = zext i1 %i.v to i64
  %i.aa = add i64 %i.t, %i.z                      ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.6.163.i, i64 16 ; 2 uses
  %i.ac = call zeroext i1 @_RNvYNvYRNtCs1K5DUQUZc67_11proc_macro25IdentNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCslQQFbX7tBjK_14thiserror_impl(ptr %6, ptr nonnull align 8 %i.ab, ptr nonnull align 8 %i.h) #26 ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %.sroa.52.164.i, i64 -24
  %.sroa.01.0.i15.i = select i1 %i.ac, ptr %2, ptr %i.ad
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i15.i, i64 %i.aa
  %i.af = load i64, ptr %i.ab, align 8
  store i64 %i.af, ptr %i.ae, align 8
  %i.ag = zext i1 %i.ac to i64
  %i.ah = add i64 %i.aa, %i.ag                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.6.163.i, i64 24 ; 2 uses
  %i.aj = call zeroext i1 @_RNvYNvYRNtCs1K5DUQUZc67_11proc_macro25IdentNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCslQQFbX7tBjK_14thiserror_impl(ptr %6, ptr nonnull align 8 %i.ai, ptr nonnull align 8 %i.h) #26 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %.sroa.52.164.i, i64 -32 ; 3 uses
  %.sroa.01.0.i17.i = select i1 %i.aj, ptr %2, ptr %i.ak
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i17.i, i64 %i.ah
  %i.am = load i64, ptr %i.ai, align 8
  store i64 %i.am, ptr %i.al, align 8
  %i.an = zext i1 %i.aj to i64
  %i.ao = add i64 %i.ah, %i.an                    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.6.163.i, i64 32 ; 3 uses
  %i.aq = icmp ult ptr %i.ap, %i.m
  br i1 %i.aq, label %_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRNtCs1K5DUQUZc67_11proc_macro25IdentE13partition_oneCslQQFbX7tBjK_14thiserror_impl.exit.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRNtCs1K5DUQUZc67_11proc_macro25IdentE13partition_oneCslQQFbX7tBjK_14thiserror_impl.exit.i, %bb.j
  %.sroa.30.1.lcssa.i = phi i64 [ %.sroa.30.0.i, %bb.j ], [ %i.ao, %_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRNtCs1K5DUQUZc67_11proc_macro25IdentE13partition_oneCslQQFbX7tBjK_14thiserror_impl.exit.i ] ; 2 uses
  %.sroa.6.1.lcssa.i = phi ptr [ %.sroa.6.0.i, %bb.j ], [ %i.ap, %_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRNtCs1K5DUQUZc67_11proc_macro25IdentE13partition_oneCslQQFbX7tBjK_14thiserror_impl.exit.i ] ; 3 uses
  %.sroa.52.1.lcssa.i = phi ptr [ %.sroa.52.0.i, %bb.j ], [ %i.ak, %_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRNtCs1K5DUQUZc67_11proc_macro25IdentE13partition_oneCslQQFbX7tBjK_14thiserror_impl.exit.i ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph94, i64 %.sroa.0.0.i ; 2 uses
  %i.as = icmp ult ptr %.sroa.6.1.lcssa.i, %i.ar
  br i1 %i.as, label %_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRNtCs1K5DUQUZc67_11proc_macro25IdentE13partition_oneCslQQFbX7tBjK_14thiserror_impl.exit20.i, label %._crit_edge70.i

._crit_edge70.i:                                  ; preds = %_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRNtCs1K5DUQUZc67_11proc_macro25IdentE13partition_oneCslQQFbX7tBjK_14thiserror_impl.exit20.i, %._crit_edge.i
  %.sroa.30.2.lcssa.i = phi i64 [ %.sroa.30.1.lcssa.i, %._crit_edge.i ], [ %i.az, %_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRNtCs1K5DUQUZc67_11proc_macro25IdentE13partition_oneCslQQFbX7tBjK_14thiserror_impl.exit20.i ] ; 16 uses
  %.sroa.6.2.lcssa.i = phi ptr [ %.sroa.6.1.lcssa.i, %._crit_edge.i ], [ %i.ba, %_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRNtCs1K5DUQUZc67_11proc_macro25IdentE13partition_oneCslQQFbX7tBjK_14thiserror_impl.exit20.i ] ; 2 uses
  %.sroa.52.2.lcssa.i = phi ptr [ %.sroa.52.1.lcssa.i, %._crit_edge.i ], [ %i.av, %_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRNtCs1K5DUQUZc67_11proc_macro25IdentE13partition_oneCslQQFbX7tBjK_14thiserror_impl.exit20.i ]
  %i.at = icmp eq i64 %.sroa.0.0.i, %.sroa.16.087253
  br i1 %i.at, label %bb.l, label %bb.k

_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRNtCs1K5DUQUZc67_11proc_macro25IdentE13partition_oneCslQQFbX7tBjK_14thiserror_impl.exit20.i: ; preds = %._crit_edge.i, %_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRNtCs1K5DUQUZc67_11proc_macro25IdentE13partition_oneCslQQFbX7tBjK_14thiserror_impl.exit20.i
  %.sroa.52.269.i = phi ptr [ %i.av, %_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRNtCs1K5DUQUZc67_11proc_macro25IdentE13partition_oneCslQQFbX7tBjK_14thiserror_impl.exit20.i ], [ %.sroa.52.1.lcssa.i, %._crit_edge.i ]
  %.sroa.6.268.i = phi ptr [ %i.ba, %_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRNtCs1K5DUQUZc67_11proc_macro25IdentE13partition_oneCslQQFbX7tBjK_14thiserror_impl.exit20.i ], [ %.sroa.6.1.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.sroa.30.267.i = phi i64 [ %i.az, %_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRNtCs1K5DUQUZc67_11proc_macro25IdentE13partition_oneCslQQFbX7tBjK_14thiserror_impl.exit20.i ], [ %.sroa.30.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.au = call zeroext i1 @_RNvYNvYRNtCs1K5DUQUZc67_11proc_macro25IdentNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCslQQFbX7tBjK_14thiserror_impl(ptr %6, ptr nonnull align 8 %.sroa.6.268.i, ptr nonnull align 8 %i.h) #26 ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %.sroa.52.269.i, i64 -8 ; 3 uses
  %spec.select61.i = select i1 %i.au, ptr %2, ptr %i.av
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %spec.select61.i, i64 %.sroa.30.267.i
  %i.ax = load i64, ptr %.sroa.6.268.i, align 8
  store i64 %i.ax, ptr %i.aw, align 8
  %i.ay = zext i1 %i.au to i64
  %i.az = add i64 %.sroa.30.267.i, %i.ay          ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.6.268.i, i64 8 ; 3 uses
  %i.bb = icmp ult ptr %i.ba, %i.ar
  br i1 %i.bb, label %_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRNtCs1K5DUQUZc67_11proc_macro25IdentE13partition_oneCslQQFbX7tBjK_14thiserror_impl.exit20.i, label %._crit_edge70.i

bb.k:                                             ; preds = %._crit_edge70.i
  %i.bc = getelementptr inbounds i8, ptr %.sroa.52.2.lcssa.i, i64 -8 ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.sroa.30.2.lcssa.i
  %i.be = load i64, ptr %.sroa.6.2.lcssa.i, align 8
  store i64 %i.be, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.6.2.lcssa.i, i64 8
  br label %bb.j

bb.l:                                             ; preds = %._crit_edge70.i
  %i.bg = shl nuw nsw i64 %.sroa.30.2.lcssa.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.sroa.0.0.ph94, ptr align 8 %2, i64 %i.bg, i1 false)
  %i.bh = sub i64 %.sroa.16.087253, %.sroa.30.2.lcssa.i ; 5 uses
  %.not77.i = icmp eq i64 %.sroa.16.087253, %.sroa.30.2.lcssa.i
  br i1 %.not77.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l
  %i.bi = getelementptr [8 x i8], ptr %.sroa.0.0.ph94, i64 %.sroa.30.2.lcssa.i ; 7 uses
  %min.iters.check269 = icmp ult i64 %i.bh, 4
  br i1 %min.iters.check269, label %scalar.ph268.preheader, label %vector.memcheck262

vector.memcheck262:                               ; preds = %.lr.ph.i
  %i.bj = shl i64 %.sroa.16.087253, 3
  %scevgep263 = getelementptr i8, ptr %.sroa.0.0.ph94, i64 %i.bj
  %i.bk = shl i64 %.sroa.30.2.lcssa.i, 3
  %scevgep264 = getelementptr i8, ptr %2, i64 %i.bk
  %bound0265 = icmp ult ptr %i.bi, %i.k
  %bound1266 = icmp ult ptr %scevgep264, %scevgep263
  %found.conflict267 = and i1 %bound0265, %bound1266
  br i1 %found.conflict267, label %scalar.ph268.preheader, label %vector.ph270

vector.ph270:                                     ; preds = %vector.memcheck262
  %n.vec271 = and i64 %i.bh, -4                   ; 3 uses
  br label %vector.body272

vector.body272:                                   ; preds = %vector.body272, %vector.ph270
  %index273 = phi i64 [ 0, %vector.ph270 ], [ %index.next278, %vector.body272 ] ; 3 uses
  %i.bl = xor i64 %index273, -1
  %i.bm = getelementptr [8 x i8], ptr %i.k, i64 %i.bl ; 2 uses
  %i.bn = getelementptr [8 x i8], ptr %i.bi, i64 %index273 ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bm, i64 -8
  %i.bp = getelementptr i8, ptr %i.bm, i64 -24
  %wide.load274 = load <2 x i64>, ptr %i.bo, align 8, !alias.scope !27
  %wide.load275 = load <2 x i64>, ptr %i.bp, align 8, !alias.scope !27
  %reverse276 = shufflevector <2 x i64> %wide.load274, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse277 = shufflevector <2 x i64> %wide.load275, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.bq = getelementptr i8, ptr %i.bn, i64 16
  store <2 x i64> %reverse276, ptr %i.bn, align 8, !alias.scope !28, !noalias !27
  store <2 x i64> %reverse277, ptr %i.bq, align 8, !alias.scope !28, !noalias !27
  %index.next278 = add nuw i64 %index273, 4       ; 2 uses
  %i.br = icmp eq i64 %index.next278, %n.vec271
  br i1 %i.br, label %middle.block279, label %vector.body272, !llvm.loop !16

middle.block279:                                  ; preds = %vector.body272
  %cmp.n280 = icmp eq i64 %i.bh, %n.vec271
  br i1 %cmp.n280, label %.loopexit, label %scalar.ph268.preheader

scalar.ph268.preheader:                           ; preds = %vector.memcheck262, %.lr.ph.i, %middle.block279
  %.sroa.07.074.i.ph = phi i64 [ 0, %vector.memcheck262 ], [ 0, %.lr.ph.i ], [ %n.vec271, %middle.block279 ] ; 3 uses
  %7 = sub i64 %.sroa.16.087253, %.sroa.30.2.lcssa.i
  %xtraiter = and i64 %7, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph268.prol.loopexit, label %scalar.ph268.prol

scalar.ph268.prol:                                ; preds = %scalar.ph268.preheader, %scalar.ph268.prol
  %.sroa.07.074.i.prol = phi i64 [ %i.bs, %scalar.ph268.prol ], [ %.sroa.07.074.i.ph, %scalar.ph268.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph268.prol ], [ 0, %scalar.ph268.preheader ]
  %i.bs = add nuw i64 %.sroa.07.074.i.prol, 1     ; 2 uses
  %i.bt = xor i64 %.sroa.07.074.i.prol, -1
  %i.bu = getelementptr [8 x i8], ptr %i.k, i64 %i.bt
  %i.bv = getelementptr [8 x i8], ptr %i.bi, i64 %.sroa.07.074.i.prol
  %i.bw = load i64, ptr %i.bu, align 8
  store i64 %i.bw, ptr %i.bv, align 8
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph268.prol.loopexit, label %scalar.ph268.prol, !llvm.loop !17

scalar.ph268.prol.loopexit:                       ; preds = %scalar.ph268.prol, %scalar.ph268.preheader
  %.sroa.07.074.i.unr = phi i64 [ %.sroa.07.074.i.ph, %scalar.ph268.preheader ], [ %i.bs, %scalar.ph268.prol ]
  %i.bx = sub i64 %.sroa.07.074.i.ph, %.sroa.16.087253
  %i.by = add i64 %i.bx, %.sroa.30.2.lcssa.i
  %i.bz = icmp ugt i64 %i.by, -4
  br i1 %i.bz, label %.loopexit, label %scalar.ph268

scalar.ph268:                                     ; preds = %scalar.ph268.prol.loopexit, %scalar.ph268
  %.sroa.07.074.i = phi i64 [ %i.co, %scalar.ph268 ], [ %.sroa.07.074.i.unr, %scalar.ph268.prol.loopexit ] ; 9 uses
  %i.ca = xor i64 %.sroa.07.074.i, -1
  %i.cb = getelementptr [8 x i8], ptr %i.k, i64 %i.ca
  %i.cc = getelementptr [8 x i8], ptr %i.bi, i64 %.sroa.07.074.i
  %i.cd = load i64, ptr %i.cb, align 8
  store i64 %i.cd, ptr %i.cc, align 8
  %i.ce = sub i64 -2, %.sroa.07.074.i
  %i.cf = getelementptr [8 x i8], ptr %i.k, i64 %i.ce
  %i.cg = getelementptr [8 x i8], ptr %i.bi, i64 %.sroa.07.074.i
  %i.ch = getelementptr i8, ptr %i.cg, i64 8
  %i.ci = load i64, ptr %i.cf, align 8
  store i64 %i.ci, ptr %i.ch, align 8
  %i.cj = sub i64 -3, %.sroa.07.074.i
  %i.ck = getelementptr [8 x i8], ptr %i.k, i64 %i.cj
  %i.cl = getelementptr [8 x i8], ptr %i.bi, i64 %.sroa.07.074.i
  %i.cm = getelementptr i8, ptr %i.cl, i64 16
  %i.cn = load i64, ptr %i.ck, align 8
  store i64 %i.cn, ptr %i.cm, align 8
  %i.co = add nuw i64 %.sroa.07.074.i, 4          ; 2 uses
  %i.cp = sub i64 -4, %.sroa.07.074.i
  %i.cq = getelementptr [8 x i8], ptr %i.k, i64 %i.cp
  %i.cr = getelementptr [8 x i8], ptr %i.bi, i64 %.sroa.07.074.i
  %i.cs = getelementptr i8, ptr %i.cr, i64 24
  %i.ct = load i64, ptr %i.cq, align 8
  store i64 %i.ct, ptr %i.cs, align 8
  %exitcond.not.i.3 = icmp eq i64 %i.co, %i.bh
  br i1 %exitcond.not.i.3, label %.loopexit, label %scalar.ph268, !llvm.loop !18

.loopexit:                                        ; preds = %scalar.ph268.prol.loopexit, %scalar.ph268, %middle.block279, %bb.l
  %i.cu = icmp eq i64 %.sroa.30.2.lcssa.i, 0
  br i1 %i.cu, label %.thread, label %bb.m

bb.m:                                             ; preds = %.loopexit
  %.not.i37 = icmp ugt i64 %.sroa.30.2.lcssa.i, %.sroa.16.087253
  br i1 %.not.i37, label %bb.n, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtCs1K5DUQUZc67_11proc_macro25Ident12split_at_mutCslQQFbX7tBjK_14thiserror_impl.exit

bb.n:                                             ; preds = %bb.m
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr nonnull @25, ptr nonnull inttoptr (i64 19 to ptr), ptr nonnull align 8 @9) #25, !noalias !32
  unreachable

_RNvMNtCshzWfHUSfYae_4core5sliceSRNtCs1K5DUQUZc67_11proc_macro25Ident12split_at_mutCslQQFbX7tBjK_14thiserror_impl.exit: ; preds = %bb.m
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph94, i64 %.sroa.30.2.lcssa.i
  call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtCs1K5DUQUZc67_11proc_macro25IdentNvYB15_NtNtBa_3cmp10PartialOrd2ltECslQQFbX7tBjK_14thiserror_impl(ptr nonnull align 8 %i.cv, i64 %i.bh, ptr align 8 %2, i64 %3, i32 %i.e, ptr nonnull align 8 %i.a, ptr %6) #30
  %i.cw = icmp ult i64 %.sroa.30.2.lcssa.i, 33
  br i1 %i.cw, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %bb.f, %.loopexit
  %.not51 = icmp ult i64 %3, %.sroa.16.087253
  br i1 %.not51, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.thread
  %i.cx = getelementptr [8 x i8], ptr %2, i64 %.sroa.16.087253 ; 8 uses
  br label %bb.q

bb.p:                                             ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.q:                                             ; preds = %bb.r, %bb.o
  %.sroa.31.0.i = phi i64 [ 0, %bb.o ], [ %i.ex, %bb.r ] ; 2 uses
  %.sroa.7.0.i = phi ptr [ %.sroa.0.0.ph94, %bb.o ], [ %i.ey, %bb.r ] ; 3 uses
  %.sroa.53.0.i = phi ptr [ %i.cx, %bb.o ], [ %i.eu, %bb.r ] ; 2 uses
  %.sroa.0.0.i40 = phi i64 [ %i.f, %bb.o ], [ %.sroa.16.087253, %bb.r ] ; 3 uses
  %i.cy = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i40, i64 3)
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph94, i64 %i.cy ; 2 uses
  %i.da = icmp ult ptr %.sroa.7.0.i, %i.cz
  br i1 %i.da, label %_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRNtCs1K5DUQUZc67_11proc_macro25IdentE13partition_oneCslQQFbX7tBjK_14thiserror_impl.exit.i44, label %._crit_edge.i41

_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRNtCs1K5DUQUZc67_11proc_macro25IdentE13partition_oneCslQQFbX7tBjK_14thiserror_impl.exit.i44: ; preds = %bb.q, %_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRNtCs1K5DUQUZc67_11proc_macro25IdentE13partition_oneCslQQFbX7tBjK_14thiserror_impl.exit.i44
  %.sroa.53.144.i = phi ptr [ %i.eb, %_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRNtCs1K5DUQUZc67_11proc_macro25IdentE13partition_oneCslQQFbX7tBjK_14thiserror_impl.exit.i44 ], [ %.sroa.53.0.i, %bb.q ] ; 4 uses
  %.sroa.7.143.i = phi ptr [ %i.eg, %_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRNtCs1K5DUQUZc67_11proc_macro25IdentE13partition_oneCslQQFbX7tBjK_14thiserror_impl.exit.i44 ], [ %.sroa.7.0.i, %bb.q ] ; 6 uses
  %.sroa.31.142.i = phi i64 [ %i.ef, %_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRNtCs1K5DUQUZc67_11proc_macro25IdentE13partition_oneCslQQFbX7tBjK_14thiserror_impl.exit.i44 ], [ %.sroa.31.0.i, %bb.q ] ; 2 uses
  %i.db = call zeroext i1 @_RNvYNvYRNtCs1K5DUQUZc67_11proc_macro25IdentNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCslQQFbX7tBjK_14thiserror_impl(ptr %6, ptr nonnull align 8 %i.h, ptr align 8 %.sroa.7.143.i) #26 ; 2 uses
  %i.dc = xor i1 %i.db, true
  %i.dd = getelementptr inbounds i8, ptr %.sroa.53.144.i, i64 -8
  %spec.select.i45 = select i1 %i.db, ptr %i.dd, ptr %2
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i45, i64 %.sroa.31.142.i
  %i.df = load i64, ptr %.sroa.7.143.i, align 8
  store i64 %i.df, ptr %i.de, align 8
  %i.dg = zext i1 %i.dc to i64
  %i.dh = add i64 %.sroa.31.142.i, %i.dg          ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.7.143.i, i64 8 ; 2 uses
  %i.dj = call zeroext i1 @_RNvYNvYRNtCs1K5DUQUZc67_11proc_macro25IdentNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCslQQFbX7tBjK_14thiserror_impl(ptr %6, ptr nonnull align 8 %i.h, ptr nonnull align 8 %i.di) #26 ; 2 uses
  %i.dk = xor i1 %i.dj, true
  %i.dl = getelementptr inbounds i8, ptr %.sroa.53.144.i, i64 -16
  %.sroa.01.0.i17.i46 = select i1 %i.dj, ptr %i.dl, ptr %2
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i17.i46, i64 %i.dh
  %i.dn = load i64, ptr %i.di, align 8
  store i64 %i.dn, ptr %i.dm, align 8
  %i.do = zext i1 %i.dk to i64
  %i.dp = add i64 %i.dh, %i.do                    ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.7.143.i, i64 16 ; 2 uses
  %i.dr = call zeroext i1 @_RNvYNvYRNtCs1K5DUQUZc67_11proc_macro25IdentNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCslQQFbX7tBjK_14thiserror_impl(ptr %6, ptr nonnull align 8 %i.h, ptr nonnull align 8 %i.dq) #26 ; 2 uses
  %i.ds = xor i1 %i.dr, true
  %i.dt = getelementptr inbounds i8, ptr %.sroa.53.144.i, i64 -24
  %.sroa.01.0.i19.i = select i1 %i.dr, ptr %i.dt, ptr %2
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i19.i, i64 %i.dp
  %i.dv = load i64, ptr %i.dq, align 8
  store i64 %i.dv, ptr %i.du, align 8
  %i.dw = zext i1 %i.ds to i64
  %i.dx = add i64 %i.dp, %i.dw                    ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.7.143.i, i64 24 ; 2 uses
  %i.dz = call zeroext i1 @_RNvYNvYRNtCs1K5DUQUZc67_11proc_macro25IdentNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCslQQFbX7tBjK_14thiserror_impl(ptr %6, ptr nonnull align 8 %i.h, ptr nonnull align 8 %i.dy) #26 ; 2 uses
  %i.ea = xor i1 %i.dz, true
  %i.eb = getelementptr inbounds i8, ptr %.sroa.53.144.i, i64 -32 ; 3 uses
  %.sroa.01.0.i21.i = select i1 %i.dz, ptr %i.eb, ptr %2
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i21.i, i64 %i.dx
  %i.ed = load i64, ptr %i.dy, align 8
  store i64 %i.ed, ptr %i.ec, align 8
  %i.ee = zext i1 %i.ea to i64
  %i.ef = add i64 %i.dx, %i.ee                    ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.7.143.i, i64 32 ; 3 uses
  %i.eh = icmp ult ptr %i.eg, %i.cz
  br i1 %i.eh, label %_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRNtCs1K5DUQUZc67_11proc_macro25IdentE13partition_oneCslQQFbX7tBjK_14thiserror_impl.exit.i44, label %._crit_edge.i41

._crit_edge.i41:                                  ; preds = %_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRNtCs1K5DUQUZc67_11proc_macro25IdentE13partition_oneCslQQFbX7tBjK_14thiserror_impl.exit.i44, %bb.q
  %.sroa.31.1.lcssa.i = phi i64 [ %.sroa.31.0.i, %bb.q ], [ %i.ef, %_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRNtCs1K5DUQUZc67_11proc_macro25IdentE13partition_oneCslQQFbX7tBjK_14thiserror_impl.exit.i44 ] ; 2 uses
  %.sroa.7.1.lcssa.i = phi ptr [ %.sroa.7.0.i, %bb.q ], [ %i.eg, %_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRNtCs1K5DUQUZc67_11proc_macro25IdentE13partition_oneCslQQFbX7tBjK_14thiserror_impl.exit.i44 ] ; 3 uses
  %.sroa.53.1.lcssa.i = phi ptr [ %.sroa.53.0.i, %bb.q ], [ %i.eb, %_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRNtCs1K5DUQUZc67_11proc_macro25IdentE13partition_oneCslQQFbX7tBjK_14thiserror_impl.exit.i44 ] ; 2 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph94, i64 %.sroa.0.0.i40 ; 2 uses
  %i.ej = icmp ult ptr %.sroa.7.1.lcssa.i, %i.ei
  br i1 %i.ej, label %_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRNtCs1K5DUQUZc67_11proc_macro25IdentE13partition_oneCslQQFbX7tBjK_14thiserror_impl.exit24.i, label %._crit_edge50.i

._crit_edge50.i:                                  ; preds = %_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRNtCs1K5DUQUZc67_11proc_macro25IdentE13partition_oneCslQQFbX7tBjK_14thiserror_impl.exit24.i, %._crit_edge.i41
  %.sroa.31.2.lcssa.i = phi i64 [ %.sroa.31.1.lcssa.i, %._crit_edge.i41 ], [ %i.er, %_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRNtCs1K5DUQUZc67_11proc_macro25IdentE13partition_oneCslQQFbX7tBjK_14thiserror_impl.exit24.i ] ; 12 uses
  %.sroa.7.2.lcssa.i = phi ptr [ %.sroa.7.1.lcssa.i, %._crit_edge.i41 ], [ %i.es, %_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRNtCs1K5DUQUZc67_11proc_macro25IdentE13partition_oneCslQQFbX7tBjK_14thiserror_impl.exit24.i ] ; 2 uses
  %.sroa.53.2.lcssa.i = phi ptr [ %.sroa.53.1.lcssa.i, %._crit_edge.i41 ], [ %i.en, %_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRNtCs1K5DUQUZc67_11proc_macro25IdentE13partition_oneCslQQFbX7tBjK_14thiserror_impl.exit24.i ]
  %i.ek = icmp eq i64 %.sroa.0.0.i40, %.sroa.16.087253
  br i1 %i.ek, label %bb.s, label %bb.r

_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRNtCs1K5DUQUZc67_11proc_macro25IdentE13partition_oneCslQQFbX7tBjK_14thiserror_impl.exit24.i: ; preds = %._crit_edge.i41, %_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRNtCs1K5DUQUZc67_11proc_macro25IdentE13partition_oneCslQQFbX7tBjK_14thiserror_impl.exit24.i
  %.sroa.53.249.i = phi ptr [ %i.en, %_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRNtCs1K5DUQUZc67_11proc_macro25IdentE13partition_oneCslQQFbX7tBjK_14thiserror_impl.exit24.i ], [ %.sroa.53.1.lcssa.i, %._crit_edge.i41 ]
  %.sroa.7.248.i = phi ptr [ %i.es, %_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRNtCs1K5DUQUZc67_11proc_macro25IdentE13partition_oneCslQQFbX7tBjK_14thiserror_impl.exit24.i ], [ %.sroa.7.1.lcssa.i, %._crit_edge.i41 ] ; 3 uses
  %.sroa.31.247.i = phi i64 [ %i.er, %_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRNtCs1K5DUQUZc67_11proc_macro25IdentE13partition_oneCslQQFbX7tBjK_14thiserror_impl.exit24.i ], [ %.sroa.31.1.lcssa.i, %._crit_edge.i41 ] ; 2 uses
  %i.el = call zeroext i1 @_RNvYNvYRNtCs1K5DUQUZc67_11proc_macro25IdentNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCslQQFbX7tBjK_14thiserror_impl(ptr %6, ptr nonnull align 8 %i.h, ptr align 8 %.sroa.7.248.i) #26 ; 2 uses
  %i.em = xor i1 %i.el, true
  %i.en = getelementptr inbounds i8, ptr %.sroa.53.249.i, i64 -8 ; 3 uses
  %spec.select41.i = select i1 %i.el, ptr %i.en, ptr %2
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %spec.select41.i, i64 %.sroa.31.247.i
  %i.ep = load i64, ptr %.sroa.7.248.i, align 8
  store i64 %i.ep, ptr %i.eo, align 8
  %i.eq = zext i1 %i.em to i64
  %i.er = add i64 %.sroa.31.247.i, %i.eq          ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.7.248.i, i64 8 ; 3 uses
  %i.et = icmp ult ptr %i.es, %i.ei
  br i1 %i.et, label %_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRNtCs1K5DUQUZc67_11proc_macro25IdentE13partition_oneCslQQFbX7tBjK_14thiserror_impl.exit24.i, label %._crit_edge50.i

bb.r:                                             ; preds = %._crit_edge50.i
  %i.eu = getelementptr inbounds i8, ptr %.sroa.53.2.lcssa.i, i64 -8
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.31.2.lcssa.i
  %i.ew = load i64, ptr %.sroa.7.2.lcssa.i, align 8
  store i64 %i.ew, ptr %i.ev, align 8
  %i.ex = add i64 %.sroa.31.2.lcssa.i, 1
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.7.2.lcssa.i, i64 8
  br label %bb.q

bb.s:                                             ; preds = %._crit_edge50.i
  %i.ez = shl nuw nsw i64 %.sroa.31.2.lcssa.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.sroa.0.0.ph94, ptr align 8 %2, i64 %i.ez, i1 false)
  %i.fa = sub i64 %.sroa.16.087253, %.sroa.31.2.lcssa.i ; 7 uses
  %.not57.i = icmp eq i64 %.sroa.16.087253, %.sroa.31.2.lcssa.i
  %i.fb = getelementptr [8 x i8], ptr %.sroa.0.0.ph94, i64 %.sroa.31.2.lcssa.i ; 8 uses
  br i1 %.not57.i, label %.outer._crit_edge, label %.lr.ph.i42

.lr.ph.i42:                                       ; preds = %bb.s
  %min.iters.check = icmp ult i64 %i.fa, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i42
  %i.fc = shl i64 %.sroa.16.087253, 3
  %scevgep = getelementptr i8, ptr %.sroa.0.0.ph94, i64 %i.fc
  %i.fd = shl i64 %.sroa.31.2.lcssa.i, 3
  %scevgep259 = getelementptr i8, ptr %2, i64 %i.fd
  %bound0 = icmp ult ptr %i.fb, %i.cx
  %bound1 = icmp ult ptr %scevgep259, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fa, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fe = xor i64 %index, -1
  %i.ff = getelementptr [8 x i8], ptr %i.cx, i64 %i.fe ; 2 uses
  %i.fg = getelementptr [8 x i8], ptr %i.fb, i64 %index ; 2 uses
  %i.fh = getelementptr i8, ptr %i.ff, i64 -8
  %i.fi = getelementptr i8, ptr %i.ff, i64 -24
  %wide.load = load <2 x i64>, ptr %i.fh, align 8, !alias.scope !33
  %wide.load260 = load <2 x i64>, ptr %i.fi, align 8, !alias.scope !33
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse261 = shufflevector <2 x i64> %wide.load260, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.fj = getelementptr i8, ptr %i.fg, i64 16
  store <2 x i64> %reverse, ptr %i.fg, align 8, !alias.scope !34, !noalias !33
  store <2 x i64> %reverse261, ptr %i.fj, align 8, !alias.scope !34, !noalias !33
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fk = icmp eq i64 %index.next, %n.vec
  br i1 %i.fk, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fa, %n.vec
  br i1 %cmp.n, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionRNtCs1K5DUQUZc67_11proc_macro25IdentNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECslQQFbX7tBjK_14thiserror_impl.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i42, %middle.block
  %.sroa.07.054.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i42 ], [ %n.vec, %middle.block ] ; 3 uses
  %8 = sub i64 %.sroa.16.087253, %.sroa.31.2.lcssa.i
  %xtraiter347 = and i64 %8, 3                    ; 2 uses
  %lcmp.mod348.not = icmp eq i64 %xtraiter347, 0
  br i1 %lcmp.mod348.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.sroa.07.054.i.prol = phi i64 [ %i.fl, %scalar.ph.prol ], [ %.sroa.07.054.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter349 = phi i64 [ %prol.iter349.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.fl = add nuw i64 %.sroa.07.054.i.prol, 1     ; 2 uses
  %i.fm = xor i64 %.sroa.07.054.i.prol, -1
  %i.fn = getelementptr [8 x i8], ptr %i.cx, i64 %i.fm
  %i.fo = getelementptr [8 x i8], ptr %i.fb, i64 %.sroa.07.054.i.prol
  %i.fp = load i64, ptr %i.fn, align 8
  store i64 %i.fp, ptr %i.fo, align 8
  %prol.iter349.next = add i64 %prol.iter349, 1   ; 2 uses
  %prol.iter349.cmp.not = icmp eq i64 %prol.iter349.next, %xtraiter347
  br i1 %prol.iter349.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !25

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.07.054.i.unr = phi i64 [ %.sroa.07.054.i.ph, %scalar.ph.preheader ], [ %i.fl, %scalar.ph.prol ]
  %i.fq = sub i64 %.sroa.07.054.i.ph, %.sroa.16.087253
  %i.fr = add i64 %i.fq, %.sroa.31.2.lcssa.i
  %i.fs = icmp ugt i64 %i.fr, -4
  br i1 %i.fs, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionRNtCs1K5DUQUZc67_11proc_macro25IdentNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECslQQFbX7tBjK_14thiserror_impl.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.07.054.i = phi i64 [ %i.gh, %scalar.ph ], [ %.sroa.07.054.i.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.ft = xor i64 %.sroa.07.054.i, -1
  %i.fu = getelementptr [8 x i8], ptr %i.cx, i64 %i.ft
  %i.fv = getelementptr [8 x i8], ptr %i.fb, i64 %.sroa.07.054.i
  %i.fw = load i64, ptr %i.fu, align 8
  store i64 %i.fw, ptr %i.fv, align 8
  %i.fx = sub i64 -2, %.sroa.07.054.i
  %i.fy = getelementptr [8 x i8], ptr %i.cx, i64 %i.fx
  %i.fz = getelementptr [8 x i8], ptr %i.fb, i64 %.sroa.07.054.i
  %i.ga = getelementptr i8, ptr %i.fz, i64 8
  %i.gb = load i64, ptr %i.fy, align 8
  store i64 %i.gb, ptr %i.ga, align 8
  %i.gc = sub i64 -3, %.sroa.07.054.i
  %i.gd = getelementptr [8 x i8], ptr %i.cx, i64 %i.gc
  %i.ge = getelementptr [8 x i8], ptr %i.fb, i64 %.sroa.07.054.i
  %i.gf = getelementptr i8, ptr %i.ge, i64 16
  %i.gg = load i64, ptr %i.gd, align 8
  store i64 %i.gg, ptr %i.gf, align 8
  %i.gh = add nuw i64 %.sroa.07.054.i, 4          ; 2 uses
  %i.gi = sub i64 -4, %.sroa.07.054.i
  %i.gj = getelementptr [8 x i8], ptr %i.cx, i64 %i.gi
  %i.gk = getelementptr [8 x i8], ptr %i.fb, i64 %.sroa.07.054.i
  %i.gl = getelementptr i8, ptr %i.gk, i64 24
  %i.gm = load i64, ptr %i.gj, align 8
  store i64 %i.gm, ptr %i.gl, align 8
  %exitcond.not.i43.3 = icmp eq i64 %i.gh, %i.fa
  br i1 %exitcond.not.i43.3, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionRNtCs1K5DUQUZc67_11proc_macro25IdentNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECslQQFbX7tBjK_14thiserror_impl.exit, label %scalar.ph, !llvm.loop !26

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionRNtCs1K5DUQUZc67_11proc_macro25IdentNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECslQQFbX7tBjK_14thiserror_impl.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.gn = icmp ugt i64 %.sroa.31.2.lcssa.i, %.sroa.16.087253
  br i1 %i.gn, label %bb.t, label %.outer

.outer:                                           ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionRNtCs1K5DUQUZc67_11proc_macro25IdentNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECslQQFbX7tBjK_14thiserror_impl.exit
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph94, i64 %.sroa.31.2.lcssa.i ; 2 uses
  %i.gp = icmp ult i64 %i.fa, 33
  br i1 %i.gp, label %.outer._crit_edge, label %.lr.ph

bb.t:                                             ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionRNtCs1K5DUQUZc67_11proc_macro25IdentNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECslQQFbX7tBjK_14thiserror_impl.exit
  call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 %.sroa.31.2.lcssa.i, i64 %.sroa.16.087253, i64 %.sroa.16.087253, ptr nonnull align 8 @10) #25
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RINvXs3_NtNtCshzWfHUSfYae_4core4hash5implsRNtNtCsgFSQ9XOTBNe_3syn4expr6MemberNtB8_4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherECslQQFbX7tBjK_14thiserror_impl(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = load ptr, ptr %0, align 8                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i8, ptr %i.c, align 8
  %i.e = icmp eq i8 %i.d, -1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvXs9_NtNtCshzWfHUSfYae_4core4hash5implsmNtB8_4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherECslQQFbX7tBjK_14thiserror_impl(ptr nonnull align 8 %i.b, ptr align 8 %1) #26
  br label %_RINvXs4_NtCsgFSQ9XOTBNe_3syn4exprNtB6_6MemberNtNtCshzWfHUSfYae_4core4hash4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherECslQQFbX7tBjK_14thiserror_impl.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsB_NtCsbSS6DM8SDEO_5alloc6stringNtCs1K5DUQUZc67_11proc_macro25IdentNtB5_8ToString9to_stringBA_(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %i.b) #26
  invoke void @_RINvXss_NtCsbSS6DM8SDEO_5alloc6stringNtB6_6StringNtNtCshzWfHUSfYae_4core4hash4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherECslQQFbX7tBjK_14thiserror_impl(ptr nonnull align 8 %i.a, ptr align 8 %1)
          to label %_RINvXsD_Cs1K5DUQUZc67_11proc_macro2NtB6_5IdentNtNtCshzWfHUSfYae_4core4hash4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherECslQQFbX7tBjK_14thiserror_impl.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs1K5DUQUZc67_11proc_macro2(ptr nonnull align 8 %i.a) #27
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f

_RINvXsD_Cs1K5DUQUZc67_11proc_macro2NtB6_5IdentNtNtCshzWfHUSfYae_4core4hash4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherECslQQFbX7tBjK_14thiserror_impl.exit.i: ; preds = %bb.c
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs1K5DUQUZc67_11proc_macro2(ptr nonnull align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvXs4_NtCsgFSQ9XOTBNe_3syn4exprNtB6_6MemberNtNtCshzWfHUSfYae_4core4hash4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherECslQQFbX7tBjK_14thiserror_impl.exit

_RINvXs4_NtCsgFSQ9XOTBNe_3syn4exprNtB6_6MemberNtNtCshzWfHUSfYae_4core4hash4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherECslQQFbX7tBjK_14thiserror_impl.exit: ; preds = %bb.b, %_RINvXsD_Cs1K5DUQUZc67_11proc_macro2NtB6_5IdentNtNtCshzWfHUSfYae_4core4hash4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherECslQQFbX7tBjK_14thiserror_impl.exit.i
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RINvXs3_NtNtCshzWfHUSfYae_4core4hash5implsRRNtNtCsgFSQ9XOTBNe_3syn4expr6MemberNtB8_4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherECslQQFbX7tBjK_14thiserror_impl(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i8, ptr %i.d, align 8
  %i.f = icmp eq i8 %i.e, -1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvXs9_NtNtCshzWfHUSfYae_4core4hash5implsmNtB8_4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherECslQQFbX7tBjK_14thiserror_impl(ptr nonnull align 8 %i.c, ptr align 8 %1) #26
  br label %_RINvXs3_NtNtCshzWfHUSfYae_4core4hash5implsRNtNtCsgFSQ9XOTBNe_3syn4expr6MemberNtB8_4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherECslQQFbX7tBjK_14thiserror_impl.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsB_NtCsbSS6DM8SDEO_5alloc6stringNtCs1K5DUQUZc67_11proc_macro25IdentNtB5_8ToString9to_stringBA_(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %i.c) #26
  invoke void @_RINvXss_NtCsbSS6DM8SDEO_5alloc6stringNtB6_6StringNtNtCshzWfHUSfYae_4core4hash4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherECslQQFbX7tBjK_14thiserror_impl(ptr nonnull align 8 %i.a, ptr align 8 %1)
          to label %_RINvXsD_Cs1K5DUQUZc67_11proc_macro2NtB6_5IdentNtNtCshzWfHUSfYae_4core4hash4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherECslQQFbX7tBjK_14thiserror_impl.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs1K5DUQUZc67_11proc_macro2(ptr nonnull align 8 %i.a) #27
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.g

_RINvXsD_Cs1K5DUQUZc67_11proc_macro2NtB6_5IdentNtNtCshzWfHUSfYae_4core4hash4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherECslQQFbX7tBjK_14thiserror_impl.exit.i.i: ; preds = %bb.c
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs1K5DUQUZc67_11proc_macro2(ptr nonnull align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvXs3_NtNtCshzWfHUSfYae_4core4hash5implsRNtNtCsgFSQ9XOTBNe_3syn4expr6MemberNtB8_4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherECslQQFbX7tBjK_14thiserror_impl.exit

_RINvXs3_NtNtCshzWfHUSfYae_4core4hash5implsRNtNtCsgFSQ9XOTBNe_3syn4expr6MemberNtB8_4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherECslQQFbX7tBjK_14thiserror_impl.exit: ; preds = %bb.b, %_RINvXsD_Cs1K5DUQUZc67_11proc_macro2NtB6_5IdentNtNtCshzWfHUSfYae_4core4hash4Hash4hashNtNtNtCscAsMj0W7j8b_3std4hash6random13DefaultHasherECslQQFbX7tBjK_14thiserror_impl.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_Cs1K5DUQUZc67_11proc_macro2NtB6_11TokenStreamINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendNtB6_9TokenTreeE6extendBx_ECslQQFbX7tBjK_14thiserror_impl(ptr align 8 %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RINvXs7_NtCs1K5DUQUZc67_11proc_macro23impNtB6_11TokenStreamINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendNtB8_9TokenTreeE6extendNtB8_11TokenStreamECslQQFbX7tBjK_14thiserror_impl(ptr align 8 %0, ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsa_Cs1K5DUQUZc67_11proc_macro2NtB6_11TokenStreamINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorNtB6_9TokenTreeE9from_iterINtNtCsbSS6DM8SDEO_5alloc3vec3VecB1P_EECslQQFbX7tBjK_14thiserror_impl(ptr sret([32 x i8]) align 8 %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 2 uses
  %i.c = alloca [32 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RNvXsg_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCs1K5DUQUZc67_11proc_macro29TokenTreeENtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12IntoIterator9into_iterBH_(ptr nonnull sret([32 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a) #26
  call void @_RINvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs1K5DUQUZc67_11proc_macro29TokenTreeENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator7collectNtNtBT_3imp11TokenStreamECslQQFbX7tBjK_14thiserror_impl(ptr nonnull sret([32 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b) #26
  call void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream4__new(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.c)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RINvYINtNtCsgFSQ9XOTBNe_3syn10punctuated4IterNtNtB8_4data5FieldENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB16_8adapters9enumerateINtB2f_9EnumeratepEB10_8try_fold9enumerateRBH_uINtNtNtB18_3ops12control_flow11ControlFlowIB3s_NtNtCslQQFbX7tBjK_14thiserror_impl3ast5FieldEENCINvNtB2h_3map12map_try_foldTjB3m_EINtNtB18_6result6ResultB4c_NtNtB8_5error5ErrorEuB3r_NCNvMs2_B4e_B4c_17multiple_from_syn0NCINvXB2h_INtB2h_12GenericShuntINtB51_3MapIB2H_B3_EB6m_EIB5x_NtNtB18_7convert10InfallibleB5X_EEB10_8try_folduNCINvNvB10_12try_for_each4callB4c_B47_NcNtB47_5Break0E0B47_E0E0E0B3r_EB4g_(ptr sret([168 x i8]) align 8 %0, ptr align 8 %1, ptr align 8 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [168 x i8], align 8               ; 2 uses
  %i.b = alloca [168 x i8], align 8               ; 2 uses
  %i.c = alloca [168 x i8], align 8               ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.d = call align 8 ptr @_RNvXst_NtCsgFSQ9XOTBNe_3syn10punctuatedINtB5_4IterNtNtB7_4data5FieldENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB7_(ptr align 8 %1) ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCsgFSQ9XOTBNe_3syn4data5FielduINtNtNtBf_3ops12control_flow11ControlFlowIB2F_NtNtCslQQFbX7tBjK_14thiserror_impl3ast5FieldEENCINvNtBb_3map12map_try_foldTjB25_EINtNtBf_6result6ResultB3o_NtNtB2a_5error5ErrorEuB2E_NCNvMs2_B3q_B3o_17multiple_from_syn0NCINvXBb_INtBb_12GenericShuntINtB4d_3MapIBX_INtNtB2a_10punctuated4IterB26_EEB5x_EIB4I_NtNtBf_7convert10InfallibleB57_EEB1e_8try_folduNCINvNvB1e_12try_for_each4callB3o_B3j_NcNtB3j_5Break0E0B3j_E0E0E0B3s_(ptr nonnull sret([168 x i8]) align 8 %i.b, ptr align 8 %2, ptr nonnull align 8 %i.d) #26
  call void @_RNvXNtNtCshzWfHUSfYae_4core3ops12control_flowINtB2_11ControlFlowIBI_NtNtCslQQFbX7tBjK_14thiserror_impl3ast5FieldEENtNtB4_9try_trait3Try6branchB18_(ptr nonnull sret([168 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b) #26
  %i.e = load i64, ptr %i.c, align 8
  %.not3 = icmp eq i64 %i.e, -4
  br i1 %.not3, label %bb.b, label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @_RNvXNtNtCshzWfHUSfYae_4core3ops12control_flowINtB2_11ControlFlowIBI_NtNtCslQQFbX7tBjK_14thiserror_impl3ast5FieldEENtNtB4_9try_trait3Try11from_outputB18_(ptr sret([168 x i8]) align 8 %0) #26
  br label %bb.f
end_hunk_0
