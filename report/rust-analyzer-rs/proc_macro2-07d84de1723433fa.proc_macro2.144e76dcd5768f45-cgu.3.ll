Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/proc_macro2-07d84de1723433fa.proc_macro2.144e76dcd5768f45-cgu.3?download=true
inline.NumInlined: 141
inline.NumDeleted: 4
begin_hunk_0_@_RNvMNtCs1K5DUQUZc67_11proc_macro25rcvecINtB2_5RcVecNtB4_9TokenTreeE7get_mutB4_:bb.a
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call align 8 ptr @_RNvXsK_NtCshzWfHUSfYae_4core6optionINtB5_6OptionINtNtCs1K5DUQUZc67_11proc_macro25rcvec8RcVecMutNtBP_9TokenTreeEEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleEE13from_residualBP_() #31
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.d, %bb.b ], [ %i.b, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext i1 @_RNvMNtCs1K5DUQUZc67_11proc_macro25rcvecINtB2_5RcVecNtB4_9TokenTreeE8is_emptyB4_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load i64, ptr %i.b, align 8
  %i.d = icmp eq i64 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMNtCsbSS6DM8SDEO_5alloc3vecINtB2_3VecINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtBH_9TokenTreeEE3newBH_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0) unnamed_addr #2 {
bb.a:
  store i64 0, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMNtCsbSS6DM8SDEO_5alloc3vecINtB2_3VecNtCs1K5DUQUZc67_11proc_macro29TokenTreeE13with_capacityBE_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { i64, ptr } @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs1K5DUQUZc67_11proc_macro2(i64 %1, i64 8, i64 32) #31 ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0
  %i.c = extractvalue { i64, ptr } %i.a, 1
  store i64 %i.b, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.e, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMNtCsbSS6DM8SDEO_5alloc3vecINtB2_3VecNtCs1K5DUQUZc67_11proc_macro29TokenTreeE3newBE_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0) unnamed_addr #2 {
bb.a:
  store i64 0, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMNtCsbSS6DM8SDEO_5alloc3vecINtB2_3VecNtCsiwvLk4GMN8X_10proc_macro9TokenTreeE3newCs1K5DUQUZc67_11proc_macro2(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0) unnamed_addr #2 {
bb.a:
  store i64 0, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMNtCsbSS6DM8SDEO_5alloc3vecINtB2_3VecTNtCs1K5DUQUZc67_11proc_macro29DelimiterNtNtBF_8fallback18TokenStreamBuilderEE3newBF_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0) unnamed_addr #2 {
bb.a:
  store i64 0, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMNtCsbSS6DM8SDEO_5alloc5allocNtB2_6Global18alloc_impl_runtimeCs1K5DUQUZc67_11proc_macro2(i64 %0, i64 %1, i1 zeroext %2) unnamed_addr #6 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = inttoptr i64 %0 to ptr
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36
  br i1 %2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = tail call ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 %1, i64 %0) #36
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.d = tail call ptr @_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed(i64 %1, i64 %0) #36
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.sroa.0.0 = phi ptr [ %i.b, %bb.b ], [ %i.d, %bb.e ], [ %i.c, %bb.d ]
  %i.e = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %1, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden zeroext i1 @_RNvMNtCshzWfHUSfYae_4core3f32f9is_finiteCs1K5DUQUZc67_11proc_macro2(float %0) unnamed_addr #7 {
bb.a:
  %i.a = tail call float @llvm.fabs.f32(float %0)
  %i.b = fcmp one float %i.a, +inf
  ret i1 %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvMNtCshzWfHUSfYae_4core3stre12char_indicesCs1K5DUQUZc67_11proc_macro2(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr %1, i64 %2) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8
  store ptr %1, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @_RNvMNtCshzWfHUSfYae_4core3stre16is_char_boundaryCs1K5DUQUZc67_11proc_macro2(ptr nofree readonly captures(none) %0, i64 %1, i64 %2) unnamed_addr #8 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp ult i64 %2, %1
  br i1 %.not, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.d, %bb.e
  %.sroa.0.0.shrunk = phi i1 [ %i.e, %bb.e ], [ %i.b, %bb.d ], [ true, %bb.a ]
  ret i1 %.sroa.0.0.shrunk

bb.d:                                             ; preds = %bb.b
  %i.b = icmp eq i64 %2, %1
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %2
  %i.d = load i8, ptr %i.c, align 1
  %i.e = icmp sgt i8 %i.d, -65
  br label %bb.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i64 @_RNvMNtCshzWfHUSfYae_4core3stre3lenCs1K5DUQUZc67_11proc_macro2(ptr nofree readnone captures(none) %0, i64 returned %1) unnamed_addr #7 {
bb.a:
  ret i64 %1
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvMNtCshzWfHUSfYae_4core3stre5bytesCs1K5DUQUZc67_11proc_macro2(ptr %0, i64 %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.b = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr %i.a, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvMNtCshzWfHUSfYae_4core3stre5charsCs1K5DUQUZc67_11proc_macro2(ptr %0, i64 %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.b = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr %i.a, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden zeroext i1 @_RNvMNtCshzWfHUSfYae_4core3stre8is_emptyCs1K5DUQUZc67_11proc_macro2(ptr nofree readnone captures(none) %0, i64 %1) unnamed_addr #7 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvMNtCshzWfHUSfYae_4core3stre8split_atCs1K5DUQUZc67_11proc_macro2(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr %1, i64 %2, i64 %3) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checkedCs1K5DUQUZc67_11proc_macro2.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp ult i64 %3, %2
  br i1 %.not.i, label %bb.c, label %.split3.i

.split3.i:                                        ; preds = %bb.b
  %i.b = icmp eq i64 %3, %2
  br i1 %i.b, label %.split.i, label %_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checkedCs1K5DUQUZc67_11proc_macro2.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %i.d = load i8, ptr %i.c, align 1, !noalias !7
  %i.e = icmp sgt i8 %i.d, -65
  br i1 %i.e, label %.split.i, label %_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checkedCs1K5DUQUZc67_11proc_macro2.exit.thread

.split.i:                                         ; preds = %bb.c, %.split3.i
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %i.g = sub i64 %2, %3
  br label %_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checkedCs1K5DUQUZc67_11proc_macro2.exit

_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checkedCs1K5DUQUZc67_11proc_macro2.exit: ; preds = %bb.a, %.split.i
  %.sroa.5.0 = phi ptr [ %1, %bb.a ], [ %i.f, %.split.i ]
  %.sroa.6.0 = phi i64 [ %2, %bb.a ], [ %i.g, %.split.i ]
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checkedCs1K5DUQUZc67_11proc_macro2.exit.thread, label %bb.d

bb.d:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checkedCs1K5DUQUZc67_11proc_macro2.exit
  store ptr %1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  ret void

_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checkedCs1K5DUQUZc67_11proc_macro2.exit.thread: ; preds = %.split3.i, %bb.c, %_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checkedCs1K5DUQUZc67_11proc_macro2.exit
  tail call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr %1, i64 %2, i64 0, i64 %3, ptr nonnull align 8 @10) #37
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, ptr } @_RNvMNtCshzWfHUSfYae_4core5sliceSRe4iterCs1K5DUQUZc67_11proc_macro2(ptr align 8 %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs4_NtNtCshzWfHUSfYae_4core5slice4iterINtB5_4IterReE3newCs1K5DUQUZc67_11proc_macro2(ptr align 8 %0, i64 %1) #31
  ret { ptr, ptr } %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMNtCshzWfHUSfYae_4core5sliceSh18split_at_uncheckedCs1K5DUQUZc67_11proc_macro2(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr %1, i64 %2, i64 %3, ptr nofree readnone align 8 captures(none) %4) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %i.b = sub nuw i64 %2, %3
  store ptr %1, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.b, ptr %i.e, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, ptr } @_RNvMNtCshzWfHUSfYae_4core5sliceSh4iterCs1K5DUQUZc67_11proc_macro2(ptr %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs4_NtNtCshzWfHUSfYae_4core5slice4iterINtB5_4IterhE3newCs1K5DUQUZc67_11proc_macro2(ptr %0, i64 %1) #31
  ret { ptr, ptr } %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define ptr @_RNvMNtCshzWfHUSfYae_4core5sliceSh5firstCs1K5DUQUZc67_11proc_macro2(ptr nofree readnone captures(ret: address, provenance) %0, i64 %1) unnamed_addr #7 {
bb.a:
  %.not = icmp eq i64 %1, 0
  %. = select i1 %.not, ptr null, ptr %0
  ret ptr %.
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh8is_emptyCs1K5DUQUZc67_11proc_macro2(ptr nofree readnone captures(none) %0, i64 %1) unnamed_addr #7 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMNtCshzWfHUSfYae_4core5sliceSh8split_atCs1K5DUQUZc67_11proc_macro2(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr %1, i64 %2, i64 %3, ptr align 8 %4) unnamed_addr #1 {
bb.a:
  %.not = icmp ugt i64 %3, %2
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr nonnull @11, ptr nonnull inttoptr (i64 19 to ptr), ptr align 8 %4) #37
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %i.b = sub nuw i64 %2, %3
  store ptr %1, ptr %0, align 8
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %.sroa.23.0..sroa_idx, align 8
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %.sroa.34.0..sroa_idx, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.b, ptr %.sroa.45.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtCs1K5DUQUZc67_11proc_macro25rcvecINtB5_8RcVecMutNtB7_9TokenTreeE4pushB7_(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 3 uses
  %i.b = load ptr, ptr %0, align 8                ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 3 uses
  %i.e = load i64, ptr %i.b, align 8
  %i.f = icmp eq i64 %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCs1K5DUQUZc67_11proc_macro29TokenTreeE4pushBH_.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs1K5DUQUZc67_11proc_macro29TokenTreeE8grow_oneBO_(ptr nonnull align 8 %i.b)
          to label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCs1K5DUQUZc67_11proc_macro29TokenTreeE4pushBH_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro29TokenTreeEBD_(ptr nonnull align 8 %i.a) #32
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.g

_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCs1K5DUQUZc67_11proc_macro29TokenTreeE4pushBH_.exit: ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %i.d
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  %i.l = add i64 %i.d, 1
  store i64 %i.l, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtCs1K5DUQUZc67_11proc_macro25rcvecINtB5_8RcVecMutNtB7_9TokenTreeE4takeB7_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  call void @_RINvNtCshzWfHUSfYae_4core3mem4takeINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs1K5DUQUZc67_11proc_macro29TokenTreeEEB15_(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr align 8 %1) #31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvMs0_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsiwvLk4GMN8X_10proc_macro6bridge9TokenTreeNtNtBZ_6client11TokenStreamNtB1K_4SpanNtNtBZ_6symbol6SymbolEE16as_raw_mut_sliceCs1K5DUQUZc67_11proc_macro2(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = udiv exact i64 %i.g, 20
  %i.i = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.j = insertvalue { ptr, i64 } %i.i, i64 %i.h, 1
  ret { ptr, i64 } %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvMs0_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsiwvLk4GMN8X_10proc_macro6bridge9TokenTreeNtNtBZ_6client11TokenStreamNtB1K_4SpanNtNtBZ_6symbol6SymbolEE8as_sliceCs1K5DUQUZc67_11proc_macro2(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = udiv exact i64 %i.g, 20
  %i.i = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.j = insertvalue { ptr, i64 } %i.i, i64 %i.h, 1
  ret { ptr, i64 } %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvMs0_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs1K5DUQUZc67_11proc_macro29TokenTreeE16as_raw_mut_sliceBY_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 5
  %i.i = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.j = insertvalue { ptr, i64 } %i.i, i64 %i.h, 1
  ret { ptr, i64 } %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvMs0_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs1K5DUQUZc67_11proc_macro29TokenTreeE8as_sliceBY_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_0
begin_hunk_1_@_RNCNvNtCs1K5DUQUZc67_11proc_macro28fallback14validate_ident0B5_
; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss_0Cs1K5DUQUZc67_11proc_macro2(ptr align 8, ptr, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNCINvXsl_CsiwvLk4GMN8X_10proc_macroNtB8_11TokenStreamINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendNtB8_9TokenTreeE6extendINtNtNtCsbSS6DM8SDEO_5alloc3vec5drain5DrainB1J_EE0Cs1K5DUQUZc67_11proc_macro2(ptr align 8, ptr align 4) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB8_6StringINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendcE6extendNtNtBW_4char11EscapeDebugE0Cs1K5DUQUZc67_11proc_macro2(ptr align 8, i32) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare align 8 ptr @_RNvMsg_NtCsbSS6DM8SDEO_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCs1K5DUQUZc67_11proc_macro29TokenTreeEE7get_mutBV_(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvNtCshzWfHUSfYae_4core3mem4takeINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs1K5DUQUZc67_11proc_macro29TokenTreeEEB15_(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @_RNvMNtCshzWfHUSfYae_4core5sliceSNtCs1K5DUQUZc67_11proc_macro29TokenTree4iterBw_(ptr align 8, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare align 8 ptr @_RNvXsJ_NtCshzWfHUSfYae_4core6optionINtB5_6OptionQINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs1K5DUQUZc67_11proc_macro29TokenTreeEENtNtNtB7_3ops9try_trait3Try6branchB1k_(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare align 8 ptr @_RNvXsK_NtCshzWfHUSfYae_4core6optionINtB5_6OptionINtNtCs1K5DUQUZc67_11proc_macro25rcvec8RcVecMutNtBP_9TokenTreeEEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleEE13from_residualBP_() unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #18

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64, i64 allocalign) unnamed_addr #23

; Function Attrs: nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
declare noalias ptr @_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed(i64, i64 allocalign) unnamed_addr #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #25

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr, i64, i64, i64, ptr align 8) unnamed_addr #26

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @_RNvMs4_NtNtCshzWfHUSfYae_4core5slice4iterINtB5_4IterReE3newCs1K5DUQUZc67_11proc_macro2(ptr align 8, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @_RNvMs4_NtNtCshzWfHUSfYae_4core5slice4iterINtB5_4IterhE3newCs1K5DUQUZc67_11proc_macro2(ptr, i64) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr, ptr, ptr align 8) unnamed_addr #26

; Function Attrs: inlinehint nonlazybind uwtable
declare align 4 ptr @_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECs1K5DUQUZc67_11proc_macro2(ptr align 4, ptr align 8) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtBR_9TokenTreeEE8grow_oneBR_(ptr align 8) unnamed_addr #27

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs1K5DUQUZc67_11proc_macro29TokenTreeE8grow_oneBO_(ptr align 8) unnamed_addr #27

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtCs1K5DUQUZc67_11proc_macro29DelimiterNtNtBP_8fallback18TokenStreamBuilderEE8grow_oneBP_(ptr align 8) unnamed_addr #27

; Function Attrs: nonlazybind uwtable
declare ptr @_RNvMs7_NtCsbSS6DM8SDEO_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCs1K5DUQUZc67_11proc_macro29TokenTreeEE3newBV_(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCseVpsqJvcPM7_9addr2line(ptr align 8, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvCsiwvLk4GMN8X_10proc_macro12is_available() unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvMs16_NtNtCshzWfHUSfYae_4core4sync6atomicINtB6_6AtomicjE5storeCs1K5DUQUZc67_11proc_macro2(ptr align 8, i64, i8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i64 @_RNvMs16_NtNtCshzWfHUSfYae_4core4sync6atomicINtB6_6AtomicjE4loadCs1K5DUQUZc67_11proc_macro2(ptr align 8, i8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvMs0_NtNtCscAsMj0W7j8b_3std4sync4onceNtB6_4Once9call_onceNvNtCs1K5DUQUZc67_11proc_macro29detection10initializeEB10_(ptr align 4, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare i32 @_RNvMsp_CsiwvLk4GMN8X_10proc_macroNtB5_4Span4join(ptr align 4, i32) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare ptr @_RNvXsx_NtCsbSS6DM8SDEO_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCs1K5DUQUZc67_11proc_macro29TokenTreeEENtNtCshzWfHUSfYae_4core5clone5Clone5cloneBV_(ptr align 8) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #28

; Function Attrs: nonlazybind uwtable
declare i64 @_RNvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs1K5DUQUZc67_11proc_macro2(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare i64 @_RNvYjNtNtCshzWfHUSfYae_4core3cmp3Ord3minCs1K5DUQUZc67_11proc_macro2(i64, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare ptr @_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs1K5DUQUZc67_11proc_macro2(ptr align 8, i64) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs3TiGK1alE6v_14rustc_demangle(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr align 8, ptr, i64, ptr, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i32 @_RNvXsa_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs1K5DUQUZc67_11proc_macro2(ptr align 4) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i32 @_RNvXsj_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6clientNtB5_4SpanNtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs1K5DUQUZc67_11proc_macro2(ptr align 4) unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr allocptr captures(address), i64, i64) unnamed_addr #29

; Function Attrs: inlinehint nonlazybind uwtable
declare align 4 ptr @_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterINtNtCsiwvLk4GMN8X_10proc_macro6bridge9TokenTreeNtNtBS_6client11TokenStreamNtB1D_4SpanNtNtBS_6symbol6SymbolEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1K5DUQUZc67_11proc_macro2(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare align 8 ptr @_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterNtCs1K5DUQUZc67_11proc_macro29TokenTreeENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBR_(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare align 4 ptr @_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterNtCsiwvLk4GMN8X_10proc_macro9TokenTreeENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1K5DUQUZc67_11proc_macro2(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inNtCs1K5DUQUZc67_11proc_macro29TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBM_(ptr sret([24 x i8]) align 8, ptr align 8, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inNtCsiwvLk4GMN8X_10proc_macro9TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs1K5DUQUZc67_11proc_macro2(ptr sret([24 x i8]) align 8, ptr align 4, i64) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64, i64) #25

; Function Attrs: nonlazybind uwtable
declare i32 @_RNvXsa_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr align 4) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNCINvMs0_NtNtCscAsMj0W7j8b_3std4sync4onceNtB8_4Once9call_onceNvNtCs1K5DUQUZc67_11proc_macro29detection10initializeE0B12_(ptr align 8, ptr align 4) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare i32 @_RNvMsi_Cs1K5DUQUZc67_11proc_macro2NtB5_4Span4__new(i32) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #19

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #20 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #29 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #30 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #31 = { inlinehint }
attributes #32 = { cold }
attributes #33 = { cold noreturn nounwind }
attributes #34 = { inlinehint nounwind }
attributes #35 = { noreturn }
attributes #36 = { nounwind }
attributes #37 = { noinline noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.99.0-nightly (73dc9167f 2026-08-01)"}
!4 = !{}
!5 = distinct !{!5, i1 false, !"_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checkedCs1K5DUQUZc67_11proc_macro2"}
!6 = distinct !{!6, !5, !"_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checkedCs1K5DUQUZc67_11proc_macro2: argument 0"}
!7 = !{!6}
end_hunk_1
