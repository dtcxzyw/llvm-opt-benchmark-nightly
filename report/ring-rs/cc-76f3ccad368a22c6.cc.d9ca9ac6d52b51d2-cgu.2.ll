Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ring-rs/original/cc-76f3ccad368a22c6.cc.d9ca9ac6d52b51d2-cgu.2?download=true
inline.NumInlined: 86
inline.NumDeleted: 9
begin_hunk_0_@_RNvXs1d_NtCs1xwejQucwHj_5alloc4syncINtB6_3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEINtNtCs3oUPovFnLWP_4core7convert4FromINtNtB8_6borrow3CowBH_EE4fromCsiHivYpkJ4Hu_2cc:bb.a

bb.k:                                             ; preds = %_RNvXss_NtNtCsaL1QbXo9JQH_3std3ffi6os_strINtNtCs1xwejQucwHj_5alloc4sync3ArcNtB5_5OsStrEINtNtCs3oUPovFnLWP_4core7convert4FromRB1a_E4fromCsiHivYpkJ4Hu_2cc.exit, %_RNvXsr_NtNtCsaL1QbXo9JQH_3std3ffi6os_strINtNtCs1xwejQucwHj_5alloc4sync3ArcNtB5_5OsStrEINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_8OsStringE4fromCsiHivYpkJ4Hu_2cc.exit
  %.pn3 = phi { ptr, i64 } [ %i.o, %_RNvXsr_NtNtCsaL1QbXo9JQH_3std3ffi6os_strINtNtCs1xwejQucwHj_5alloc4sync3ArcNtB5_5OsStrEINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_8OsStringE4fromCsiHivYpkJ4Hu_2cc.exit ], [ %i.ag, %_RNvXss_NtNtCsaL1QbXo9JQH_3std3ffi6os_strINtNtCs1xwejQucwHj_5alloc4sync3ArcNtB5_5OsStrEINtNtCs3oUPovFnLWP_4core7convert4FromRB1a_E4fromCsiHivYpkJ4Hu_2cc.exit ]
  %.pn4 = phi i64 [ %i.g, %_RNvXsr_NtNtCsaL1QbXo9JQH_3std3ffi6os_strINtNtCs1xwejQucwHj_5alloc4sync3ArcNtB5_5OsStrEINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_8OsStringE4fromCsiHivYpkJ4Hu_2cc.exit ], [ %i.y, %_RNvXss_NtNtCsaL1QbXo9JQH_3std3ffi6os_strINtNtCs1xwejQucwHj_5alloc4sync3ArcNtB5_5OsStrEINtNtCs3oUPovFnLWP_4core7convert4FromRB1a_E4fromCsiHivYpkJ4Hu_2cc.exit ]
  %.pn = insertvalue { ptr, i64 } %.pn3, i64 %.pn4, 1
  ret { ptr, i64 } %.pn
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtRINtNtCs1xwejQucwHj_5alloc4sync3ArceENtB6_7Display3fmtCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = tail call zeroext i1 @_RNvXsi_NtCs3oUPovFnLWP_4core3fmteNtB5_7Display3fmt(ptr nonnull %i.e, i64 %i.d, ptr align 8 %1)
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvXs1k_NtCs1xwejQucwHj_5alloc4syncINtB6_3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEINtNtCs3oUPovFnLWP_4core7convert5AsRefBH_E6as_refCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.d, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.c, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXs2_NtCs1xwejQucwHj_5alloc3streNtNtB7_6borrow7ToOwned8to_ownedCsiHivYpkJ4Hu_2cc(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr %1, i64 %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  call void @_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr %1, i64 %2) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs2_NtNtCs3oUPovFnLWP_4core5slice3cmpINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEINtB5_14SlicePartialEqBC_E17equal_same_lengthCsiHivYpkJ4Hu_2cc(ptr nofree readonly captures(none) %0, ptr nofree readonly captures(none) %1, i64 %2) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.k, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.05 ; 2 uses
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.01.05 ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = load ptr, ptr %i.c, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %i.j = tail call zeroext i1 @_RNvYNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neCsiHivYpkJ4Hu_2cc(ptr %i.d, i64 %i.f, ptr %i.g, i64 %i.i) #21 ; 2 uses
  %i.k = add nuw i64 %.sroa.01.05, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.k, %2
  %or.cond = select i1 %i.j, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.lcssa.ph = xor i1 %i.j, true
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ %.lcssa.ph, %._crit_edge.loopexit ]
  ret i1 %.lcssa
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitINtNtB7_4sync8ArcInnerNtCsiHivYpkJ4Hu_2cc10BuildCacheEEENtNtNtBO_3ops4drop4Drop4dropB20_(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCsiHivYpkJ4Hu_2cc(ptr nonnull %i.b, ptr %i.a, i64 8, i64 376) #21
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxNtNtCsaL1QbXo9JQH_3std4path4PathENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCsiHivYpkJ4Hu_2cc(ptr nonnull %i.e, ptr %i.d, i64 1, i64 %i.b) #21
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCsiHivYpkJ4Hu_2cc(ptr nonnull %i.e, ptr %i.d, i64 1, i64 %i.b) #21
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSIBy_NtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = shl nuw nsw i64 %i.b, 4
  %i.e = load ptr, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCsiHivYpkJ4Hu_2cc(ptr nonnull %i.f, ptr %i.e, i64 8, i64 %i.d) #21
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCsiHivYpkJ4Hu_2cc(ptr nonnull %i.e, ptr %i.d, i64 1, i64 %i.b) #21
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden range(i64 0, -4294967295) i64 @_RNvXsA_NtCs3oUPovFnLWP_4core3nummNtNtNtB7_3str6traits7FromStr8from_strCsiHivYpkJ4Hu_2cc(ptr nofree readonly captures(none) %0, i64 %1) unnamed_addr #1 {
bb.a:
  switch i64 %1, label %thread-pre-split.i [
    i64 0, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_implCsiHivYpkJ4Hu_2cc.exit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1                 ; 2 uses
  switch i8 %i.a, label %bb.c [
    i8 43, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_implCsiHivYpkJ4Hu_2cc.exit
    i8 45, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_implCsiHivYpkJ4Hu_2cc.exit
  ]

thread-pre-split.i:                               ; preds = %bb.a
  %.pr.i = load i8, ptr %0, align 1
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split.i, %bb.b
  %i.b = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.a, %bb.b ]
  %cond.i = icmp eq i8 %i.b, 43                   ; 2 uses
  %i.c = sext i1 %cond.i to i64
  %.sroa.15.0.i = add i64 %1, %i.c                ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.idx.i ; 2 uses
  %i.d = icmp ult i64 %.sroa.15.0.i, 9
  br i1 %i.d, label %.preheader.i, label %.preheader58.i.preheader

.preheader.i:                                     ; preds = %bb.c
  %.not5666.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5666.i, label %.loopexit.i, label %.lr.ph.i

.preheader58.i:                                   ; preds = %bb.f
  %.not55.i = icmp eq i64 %i.h, 0
  br i1 %.not55.i, label %.loopexit.i, label %.preheader58.i.preheader

.loopexit.i:                                      ; preds = %.preheader58.i, %bb.g, %.preheader.i
  %.sroa.045.1.i = phi i32 [ %i.z, %bb.g ], [ 0, %.preheader.i ], [ %i.o, %.preheader58.i ]
  %i.e = zext i32 %.sroa.045.1.i to i64
  %i.f = shl nuw i64 %i.e, 32
  br label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_implCsiHivYpkJ4Hu_2cc.exit

.preheader58.i.preheader:                         ; preds = %bb.c, %.preheader58.i
  %.sroa.0.1.i29 = phi ptr [ %i.g, %.preheader58.i ], [ %.sroa.0.0.i, %bb.c ] ; 2 uses
  %.sroa.15.1.i28 = phi i64 [ %i.h, %.preheader58.i ], [ %.sroa.15.0.i, %bb.c ]
  %.sroa.045.0.i27 = phi i32 [ %i.o, %.preheader58.i ], [ 0, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i29, i64 1
  %i.h = add i64 %.sroa.15.1.i28, -1              ; 2 uses
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.045.0.i27, i32 10) ; 2 uses
  %3 = extractvalue { i32, i1 } %2, 0             ; 2 uses
  %4 = extractvalue { i32, i1 } %2, 1
  %i.i = load i8, ptr %.sroa.0.1.i29, align 1
  %i.j = zext i8 %i.i to i32
  %i.k = tail call { i32, i32 } @_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc8to_digitCsiHivYpkJ4Hu_2cc(i32 %i.j, i32 10) #21 ; 2 uses
  %i.l = extractvalue { i32, i32 } %i.k, 0
  %i.m = trunc i32 %i.l to i1                     ; 2 uses
  br i1 %4, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader58.i.preheader
  br i1 %i.m, label %bb.f, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_implCsiHivYpkJ4Hu_2cc.exit

bb.e:                                             ; preds = %.preheader58.i.preheader
  %spec.select.i = select i1 %i.m, i64 513, i64 257
  br label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_implCsiHivYpkJ4Hu_2cc.exit

bb.f:                                             ; preds = %bb.d
  %i.n = extractvalue { i32, i32 } %i.k, 1
  %i.o = add i32 %i.n, %3                         ; 3 uses
  %i.p = icmp ult i32 %i.o, %3
  br i1 %i.p, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_implCsiHivYpkJ4Hu_2cc.exit, label %.preheader58.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.g
  %.sroa.0.269.i = phi ptr [ %i.y, %bb.g ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.15.268.i = phi i64 [ %i.x, %bb.g ], [ %.sroa.15.0.i, %.preheader.i ]
  %.sroa.045.267.i = phi i32 [ %i.z, %bb.g ], [ 0, %.preheader.i ]
  %i.q = load i8, ptr %.sroa.0.269.i, align 1
  %i.r = zext i8 %i.q to i32
  %i.s = tail call { i32, i32 } @_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc8to_digitCsiHivYpkJ4Hu_2cc(i32 %i.r, i32 10) #21 ; 2 uses
  %i.t = extractvalue { i32, i32 } %i.s, 0
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %bb.g, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_implCsiHivYpkJ4Hu_2cc.exit

bb.g:                                             ; preds = %.lr.ph.i
  %i.v = extractvalue { i32, i32 } %i.s, 1
  %i.w = mul i32 %.sroa.045.267.i, 10
  %i.x = add nsw i64 %.sroa.15.268.i, -1          ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i, i64 1
  %i.z = add i32 %i.v, %i.w                       ; 2 uses
  %.not56.i = icmp eq i64 %i.x, 0
  br i1 %.not56.i, label %.loopexit.i, label %.lr.ph.i

_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_implCsiHivYpkJ4Hu_2cc.exit: ; preds = %bb.d, %bb.f, %.lr.ph.i, %bb.a, %bb.b, %bb.b, %.loopexit.i, %bb.e
  %.sroa.8.0.insert.insert.i = phi i64 [ 257, %bb.b ], [ %i.f, %.loopexit.i ], [ %spec.select.i, %bb.e ], [ 257, %bb.b ], [ 257, %.lr.ph.i ], [ 1, %bb.a ], [ 257, %bb.d ], [ 513, %bb.f ]
  ret i64 %.sroa.8.0.insert.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvXsC_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxeEINtNtCs3oUPovFnLWP_4core6borrow6BorroweE6borrowCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %i.c, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCs3oUPovFnLWP_4core4sync6atomic6AtomicbEENtNtNtBN_3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core4sync6atomic5fenceCsiHivYpkJ4Hu_2cc(i8 2) #21
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCs3oUPovFnLWP_4core4sync6atomic6AtomicbEE9drop_slowCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %0) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtCsiHivYpkJ4Hu_2cc10BuildCacheENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBI_(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core4sync6atomic5fenceCsiHivYpkJ4Hu_2cc(i8 2) #21
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtCsiHivYpkJ4Hu_2cc10BuildCacheE9drop_slowBI_(ptr nonnull align 8 %0) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsaL1QbXo9JQH_3std4path4PathENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core4sync6atomic5fenceCsiHivYpkJ4Hu_2cc(i8 2) #21
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsaL1QbXo9JQH_3std4path4PathE9drop_slowCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %0) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArceENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core4sync6atomic5fenceCsiHivYpkJ4Hu_2cc(i8 2) #21
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArceE9drop_slowCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %0) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsO_NtCs1xwejQucwHj_5alloc4syncINtB5_4WeakINtNtNtCs3oUPovFnLWP_4core4sync6atomic6AtomicbERNtNtB7_5alloc6GlobalENtNtNtBO_3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core4sync6atomic5fenceCsiHivYpkJ4Hu_2cc(i8 2) #21
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %0, align 8
  tail call void @_RNvXs0_NtCs3oUPovFnLWP_4core5allocRNtNtCs1xwejQucwHj_5alloc5alloc6GlobalNtB5_9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.f, ptr %i.g, i64 8, i64 24) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsO_NtCs1xwejQucwHj_5alloc4syncINtB5_4WeakNtCsiHivYpkJ4Hu_2cc10BuildCacheRNtNtB7_5alloc6GlobalENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr align 8 %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core4sync6atomic5fenceCsiHivYpkJ4Hu_2cc(i8 2) #21
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %0, align 8
  tail call void @_RNvXs0_NtCs3oUPovFnLWP_4core5allocRNtNtCs1xwejQucwHj_5alloc5alloc6GlobalNtB5_9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.f, ptr %i.g, i64 8, i64 376) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsO_NtCs1xwejQucwHj_5alloc4syncINtB5_4WeakNtNtCsaL1QbXo9JQH_3std4path4PathRNtNtB7_5alloc6GlobalENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core4sync6atomic5fenceCsiHivYpkJ4Hu_2cc(i8 2) #21
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %0, align 8
  %i.i = load i64, ptr %i.b, align 8
  %i.j = add i64 %i.i, 23
  %i.k = and i64 %i.j, -8
  tail call void @_RNvXs0_NtCs3oUPovFnLWP_4core5allocRNtNtCs1xwejQucwHj_5alloc5alloc6GlobalNtB5_9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.g, ptr %i.h, i64 8, i64 %i.k) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsO_NtCs1xwejQucwHj_5alloc4syncINtB5_4WeakeRNtNtB7_5alloc6GlobalENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core4sync6atomic5fenceCsiHivYpkJ4Hu_2cc(i8 2) #21
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %0, align 8
end_hunk_0
begin_hunk_1_@_RNvXsf_NtNtCs1xwejQucwHj_5alloc5boxed7convertINtB7_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtB9_6string6StringE4fromCsiHivYpkJ4Hu_2cc:bb.a
bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtB18_6marker4SendNtB1F_4SyncEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsiHivYpkJ4Hu_2cc.exit: ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.g = insertvalue { ptr, ptr } poison, ptr %i.c, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr @119, 1
  ret { ptr, ptr } %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RNvXsg_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxNtNtCsaL1QbXo9JQH_3std4path4PathENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = load ptr, ptr %1, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = tail call zeroext i1 @_RNvXs1c_NtCsaL1QbXo9JQH_3std4pathNtB6_4PathNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr %i.a, i64 %i.c, ptr %i.d, i64 %i.f) #21
  ret i1 %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RNvXsg_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = load ptr, ptr %1, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = tail call zeroext i1 @_RNvXsE_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB5_5OsStrNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr %i.a, i64 %i.c, ptr %i.d, i64 %i.f) #21
  ret i1 %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RNvXsg_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = load ptr, ptr %1, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = tail call zeroext i1 @_RNvYNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neCsiHivYpkJ4Hu_2cc(ptr %i.a, i64 %i.c, ptr %i.d, i64 %i.f) #21
  ret i1 %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RNvXsg_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSIBy_NtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = load ptr, ptr %1, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = icmp eq i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %_RNvXNtNtCs3oUPovFnLWP_4core5slice3cmpSINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrENtNtB6_3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc.exit

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %i.c, 0
  br i1 %i.h, label %_RNvXNtNtCs3oUPovFnLWP_4core5slice3cmpSINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrENtNtB6_3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.sroa.01.05.i.i = phi i64 [ %i.r, %.lr.ph.i.i ], [ 0, %bb.b ] ; 3 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %.sroa.01.05.i.i ; 2 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.sroa.01.05.i.i ; 2 uses
  %i.k = load ptr, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8
  %i.n = load ptr, ptr %i.j, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.p = load i64, ptr %i.o, align 8
  %i.q = tail call zeroext i1 @_RNvYNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neCsiHivYpkJ4Hu_2cc(ptr %i.k, i64 %i.m, ptr %i.n, i64 %i.p) #21 ; 2 uses
  %i.r = add nuw i64 %.sroa.01.05.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.r, %i.c
  %or.cond.i.i = select i1 %i.q, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.lcssa.ph.i.i = xor i1 %i.q, true
  br label %_RNvXNtNtCs3oUPovFnLWP_4core5slice3cmpSINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrENtNtB6_3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc.exit

_RNvXNtNtCs3oUPovFnLWP_4core5slice3cmpSINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrENtNtB6_3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc.exit: ; preds = %bb.a, %bb.b, %._crit_edge.loopexit.i.i
  %.sroa.0.0.i = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %.lcssa.ph.i.i, %._crit_edge.loopexit.i.i ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RNvXsg_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxeENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = load ptr, ptr %1, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = tail call zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr %i.a, i64 %i.c, ptr %i.d, i64 %i.f) #21
  ret i1 %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXsk_NtNtCsaL1QbXo9JQH_3std3ffi6os_strINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtB5_5OsStrEINtNtCs3oUPovFnLWP_4core7convert4FromRB1b_E4fromCsiHivYpkJ4Hu_2cc(ptr %0, i64 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call { ptr, i64 } @_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocateCsiHivYpkJ4Hu_2cc(ptr nonnull %i.a, i64 1, i64 %1) #21
  %i.e = extractvalue { ptr, i64 } %i.d, 0        ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.09.0.i.i = phi i64 [ 0, %bb.a ], [ 1, %bb.b ]
  %.sroa.311.sroa.3.0.i.i = phi ptr [ undef, %bb.a ], [ %i.e, %bb.b ]
  %.sroa.01.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.a ], [ %i.e, %bb.b ] ; 2 uses
  store i64 %.sroa.09.0.i.i, ptr %i.b, align 8
  %.sroa.311.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %1, ptr %.sroa.311.0..sroa_idx.i.i, align 8
  %.sroa.311.sroa.2.0..sroa.311.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %.sroa.311.sroa.2.0..sroa.311.0..sroa_idx.sroa_idx.i.i, align 8
  %.sroa.311.sroa.3.0..sroa.311.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.311.sroa.3.0.i.i, ptr %.sroa.311.sroa.3.0..sroa.311.0..sroa_idx.sroa_idx.i.i, align 8
  invoke void @_RNvXsq_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB5_5OsStrNtNtCs3oUPovFnLWP_4core5clone13CloneToUninit15clone_to_uninitCsiHivYpkJ4Hu_2cc(ptr %0, i64 %1, ptr nonnull %.sroa.01.0.i.i)
          to label %_RNvMs1_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrE17clone_from_ref_inCsiHivYpkJ4Hu_2cc.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNvMs1_NtCs1xwejQucwHj_5alloc5boxedINtB16_3BoxppE21try_clone_from_ref_in16DeallocDropGuardNtNtB18_5alloc6GlobalEEECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.b) #22
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.g

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 1, i64 %1) #25
  unreachable

_RNvMs1_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrE17clone_from_ref_inCsiHivYpkJ4Hu_2cc.exit: ; preds = %bb.c
  %i.i = insertvalue { ptr, i64 } poison, ptr %.sroa.01.0.i.i, 0
  %i.j = insertvalue { ptr, i64 } %i.i, i64 %1, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { ptr, i64 } %i.j
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden range(i64 0, -4294967295) i64 @_RNvXso_NtCs3oUPovFnLWP_4core3numlNtNtNtB7_3str6traits7FromStr8from_strCsiHivYpkJ4Hu_2cc(ptr nofree readonly captures(none) %0, i64 %1) unnamed_addr #1 {
bb.a:
  switch i64 %1, label %thread-pre-split.i [
    i64 0, label %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_implCsiHivYpkJ4Hu_2cc.exit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1                 ; 2 uses
  switch i8 %i.a, label %bb.c [
    i8 43, label %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_implCsiHivYpkJ4Hu_2cc.exit
    i8 45, label %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_implCsiHivYpkJ4Hu_2cc.exit
  ]

thread-pre-split.i:                               ; preds = %bb.a
  %.pr.i = load i8, ptr %0, align 1
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split.i, %bb.b
  %i.b = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.a, %bb.b ]
  switch i8 %i.b, label %bb.j [
    i8 43, label %bb.d
    i8 45, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = add i64 %1, -1
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.f = add i64 %1, -1                           ; 3 uses
  %i.g = icmp ult i64 %1, 9
  br i1 %i.g, label %.preheader114.i.a, label %.lr.ph.i

.preheader114.i.a:                                ; preds = %bb.e
  %.not106135.i.a = icmp eq i64 %i.f, 0
  br i1 %.not106135.i.a, label %.loopexit.i, label %.lr.ph139.i

.loopexit.i:                                      ; preds = %5, %bb.i, %10, %bb.n, %.preheader.i.a, %.preheader114.i.a
  %.sroa.087.1.i = phi i32 [ %i.ac, %bb.i ], [ %i.ax, %bb.n ], [ %11, %10 ], [ 0, %.preheader.i.a ], [ 0, %.preheader114.i.a ], [ %6, %5 ]
  %i.h = zext i32 %.sroa.087.1.i to i64
  %i.i = shl nuw i64 %i.h, 32
  br label %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_implCsiHivYpkJ4Hu_2cc.exit

.lr.ph.i:                                         ; preds = %bb.e, %5
  %.sroa.0.1134.i = phi ptr [ %i.j, %5 ], [ %i.e, %bb.e ] ; 2 uses
  %.sroa.26.1133.i = phi i64 [ %i.k, %5 ], [ %i.f, %bb.e ]
  %.sroa.087.0132.i = phi i32 [ %6, %5 ], [ 0, %bb.e ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.1134.i, i64 1
  %i.k = add i64 %.sroa.26.1133.i, -1             ; 2 uses
  %2 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.087.0132.i, i32 10) ; 2 uses
  %3 = extractvalue { i32, i1 } %2, 0
  %4 = extractvalue { i32, i1 } %2, 1
  %i.l = load i8, ptr %.sroa.0.1134.i, align 1
  %i.m = zext i8 %i.l to i32
  %i.n = tail call { i32, i32 } @_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc8to_digitCsiHivYpkJ4Hu_2cc(i32 %i.m, i32 10) #21 ; 2 uses
  %i.o = extractvalue { i32, i32 } %i.n, 0
  %i.p = trunc i32 %i.o to i1                     ; 2 uses
  br i1 %4, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  br i1 %i.p, label %bb.h, label %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_implCsiHivYpkJ4Hu_2cc.exit

bb.g:                                             ; preds = %.lr.ph.i
  %spec.select.i = select i1 %i.p, i64 769, i64 257
  br label %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_implCsiHivYpkJ4Hu_2cc.exit

bb.h:                                             ; preds = %bb.f
  %i.q = extractvalue { i32, i32 } %i.n, 1
  %i.r = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %3, i32 %i.q) ; 2 uses
  %i.s = extractvalue { i32, i1 } %i.r, 1
  br i1 %i.s, label %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_implCsiHivYpkJ4Hu_2cc.exit, label %5

5:                                                ; preds = %bb.h
  %6 = extractvalue { i32, i1 } %i.r, 0           ; 2 uses
  %.not105.i = icmp eq i64 %i.k, 0
  br i1 %.not105.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph139.i:                                      ; preds = %.preheader114.i.a, %bb.i
  %.sroa.0.2138.i = phi ptr [ %i.ab, %bb.i ], [ %i.e, %.preheader114.i.a ] ; 2 uses
  %.sroa.26.2137.i = phi i64 [ %i.aa, %bb.i ], [ %i.f, %.preheader114.i.a ]
  %.sroa.087.2136.i = phi i32 [ %i.ac, %bb.i ], [ 0, %.preheader114.i.a ]
  %i.t = load i8, ptr %.sroa.0.2138.i, align 1
  %i.u = zext i8 %i.t to i32
  %i.v = tail call { i32, i32 } @_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc8to_digitCsiHivYpkJ4Hu_2cc(i32 %i.u, i32 10) #21 ; 2 uses
  %i.w = extractvalue { i32, i32 } %i.v, 0
  %i.x = trunc i32 %i.w to i1
  br i1 %i.x, label %bb.i, label %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_implCsiHivYpkJ4Hu_2cc.exit

bb.i:                                             ; preds = %.lr.ph139.i
  %i.y = extractvalue { i32, i32 } %i.v, 1
  %i.z = mul i32 %.sroa.087.2136.i, 10
  %i.aa = add nsw i64 %.sroa.26.2137.i, -1        ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.2138.i, i64 1
  %i.ac = sub i32 %i.z, %i.y                      ; 2 uses
  %.not106.i = icmp eq i64 %i.aa, 0
  br i1 %.not106.i, label %.loopexit.i, label %.lr.ph139.i

bb.j:                                             ; preds = %bb.d, %bb.c
  %.sroa.26.0.i = phi i64 [ %i.d, %bb.d ], [ %1, %bb.c ] ; 4 uses
  %.sroa.0.0.i = phi ptr [ %i.c, %bb.d ], [ %0, %bb.c ] ; 2 uses
  %i.ad = icmp ult i64 %.sroa.26.0.i, 8
  br i1 %i.ad, label %.preheader.i.a, label %.preheader111.i

.preheader.i.a:                                   ; preds = %bb.j
  %.not108144.i.a = icmp eq i64 %.sroa.26.0.i, 0
  br i1 %.not108144.i.a, label %.loopexit.i, label %.lr.ph148.i

.preheader111.i:                                  ; preds = %bb.j, %10
  %.sroa.0.3143.i = phi ptr [ %i.ae, %10 ], [ %.sroa.0.0.i, %bb.j ] ; 2 uses
  %.sroa.26.3142.i = phi i64 [ %i.af, %10 ], [ %.sroa.26.0.i, %bb.j ]
  %.sroa.087.3141.i = phi i32 [ %11, %10 ], [ 0, %bb.j ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.3143.i, i64 1
  %i.af = add i64 %.sroa.26.3142.i, -1            ; 2 uses
  %7 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.087.3141.i, i32 10) ; 2 uses
  %8 = extractvalue { i32, i1 } %7, 0
  %9 = extractvalue { i32, i1 } %7, 1
  %i.ag = load i8, ptr %.sroa.0.3143.i, align 1
  %i.ah = zext i8 %i.ag to i32
  %i.ai = tail call { i32, i32 } @_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc8to_digitCsiHivYpkJ4Hu_2cc(i32 %i.ah, i32 10) #21 ; 2 uses
  %i.aj = extractvalue { i32, i32 } %i.ai, 0
  %i.ak = trunc i32 %i.aj to i1                   ; 2 uses
  br i1 %9, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.preheader111.i
  br i1 %i.ak, label %bb.m, label %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_implCsiHivYpkJ4Hu_2cc.exit

bb.l:                                             ; preds = %.preheader111.i
  %spec.select109.i = select i1 %i.ak, i64 513, i64 257
  br label %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_implCsiHivYpkJ4Hu_2cc.exit

bb.m:                                             ; preds = %bb.k
  %i.al = extractvalue { i32, i32 } %i.ai, 1
  %i.am = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %8, i32 %i.al) ; 2 uses
  %i.an = extractvalue { i32, i1 } %i.am, 1
  br i1 %i.an, label %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_implCsiHivYpkJ4Hu_2cc.exit, label %10

10:                                               ; preds = %bb.m
  %11 = extractvalue { i32, i1 } %i.am, 0         ; 2 uses
  %.not107.i = icmp eq i64 %i.af, 0
  br i1 %.not107.i, label %.loopexit.i, label %.preheader111.i

.lr.ph148.i:                                      ; preds = %.preheader.i.a, %bb.n
  %.sroa.0.4147.i = phi ptr [ %i.aw, %bb.n ], [ %.sroa.0.0.i, %.preheader.i.a ] ; 2 uses
  %.sroa.26.4146.i = phi i64 [ %i.av, %bb.n ], [ %.sroa.26.0.i, %.preheader.i.a ]
  %.sroa.087.4145.i = phi i32 [ %i.ax, %bb.n ], [ 0, %.preheader.i.a ]
  %i.ao = load i8, ptr %.sroa.0.4147.i, align 1
  %i.ap = zext i8 %i.ao to i32
  %i.aq = tail call { i32, i32 } @_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc8to_digitCsiHivYpkJ4Hu_2cc(i32 %i.ap, i32 10) #21 ; 2 uses
  %i.ar = extractvalue { i32, i32 } %i.aq, 0
  %i.as = trunc i32 %i.ar to i1
  br i1 %i.as, label %bb.n, label %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_implCsiHivYpkJ4Hu_2cc.exit

bb.n:                                             ; preds = %.lr.ph148.i
  %i.at = extractvalue { i32, i32 } %i.aq, 1
  %i.au = mul i32 %.sroa.087.4145.i, 10
  %i.av = add nsw i64 %.sroa.26.4146.i, -1        ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.4147.i, i64 1
  %i.ax = add i32 %i.at, %i.au                    ; 2 uses
  %.not108.i = icmp eq i64 %i.av, 0
  br i1 %.not108.i, label %.loopexit.i, label %.lr.ph148.i

_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_implCsiHivYpkJ4Hu_2cc.exit: ; preds = %bb.f, %bb.h, %.lr.ph139.i, %bb.k, %bb.m, %.lr.ph148.i, %bb.a, %bb.b, %bb.b, %.loopexit.i, %bb.g, %bb.l
  %.sroa.12.0.insert.insert.i = phi i64 [ 257, %bb.b ], [ %i.i, %.loopexit.i ], [ %spec.select109.i, %bb.l ], [ 257, %.lr.ph139.i ], [ 257, %.lr.ph148.i ], [ 1, %bb.a ], [ %spec.select.i, %bb.g ], [ 257, %bb.b ], [ 513, %bb.m ], [ 257, %bb.k ], [ 257, %bb.f ], [ 769, %bb.h ]
  ret i64 %.sroa.12.0.insert.insert.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXss_NtNtCsaL1QbXo9JQH_3std3ffi6os_strINtNtCs1xwejQucwHj_5alloc4sync3ArcNtB5_5OsStrEINtNtCs3oUPovFnLWP_4core7convert4FromRB1a_E4fromCsiHivYpkJ4Hu_2cc(ptr nofree readonly captures(none) %0, i64 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = tail call { i64, i64 } @_RNvNvMNtNtCs3oUPovFnLWP_4core5alloc6layoutNtB4_6Layout5array5innerCsiHivYpkJ4Hu_2cc(i64 1, i64 1, i64 %1) #21 ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCsiHivYpkJ4Hu_2cc.exit.i.i

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr nonnull @23, i64 43, ptr nonnull %i.a, ptr nonnull align 8 @22, ptr nonnull align 8 @100) #24
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCsiHivYpkJ4Hu_2cc.exit.i.i: ; preds = %bb.a
  %i.e = extractvalue { i64, i64 } %i.b, 1
  %i.f = tail call { i64, i64 } @_RNvNtCs1xwejQucwHj_5alloc4sync32arcinner_layout_for_value_layout(i64 %i.c, i64 %i.e) ; 2 uses
  %i.g = extractvalue { i64, i64 } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, i64 } %i.f, 1        ; 2 uses
  %i.i = tail call { ptr, i64 } @_RNvMs0_NtCs1xwejQucwHj_5alloc5allocNtB5_6Global18alloc_impl_runtimeCsiHivYpkJ4Hu_2cc(i64 %i.g, i64 %i.h, i1 zeroext false) #21 ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 0        ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %_RNvMsq_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcShE15copy_from_sliceCsiHivYpkJ4Hu_2cc.exit

bb.c:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCsiHivYpkJ4Hu_2cc.exit.i.i
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 %i.g, i64 %i.h) #25
  unreachable

_RNvMsq_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcShE15copy_from_sliceCsiHivYpkJ4Hu_2cc.exit: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCsiHivYpkJ4Hu_2cc.exit.i.i
  store i64 1, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr readonly align 1 %0, i64 %1, i1 false)
  %i.n = insertvalue { ptr, i64 } %i.i, i64 %1, 1
  ret { ptr, i64 } %i.n
}

; Function Attrs: inlinehint nonlazybind uwtable
define ptr @_RNvXsu_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCs3oUPovFnLWP_4core4sync6atomic6AtomicbEENtNtBN_5clone5Clone5cloneCsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = atomicrmw add ptr %i.a, i64 1 monotonic, align 8
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs5_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsiHivYpkJ4Hu_2cc(ptr nonnull %i.e) #21
  ret ptr %i.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @_RNvXsu_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = atomicrmw add ptr %i.a, i64 1 monotonic, align 8
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %0, align 8
  %i.f = load i64, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs5_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsiHivYpkJ4Hu_2cc(ptr nonnull %i.g) #21
  %i.h = insertvalue { ptr, i64 } poison, ptr %i.e, 0
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %i.f, 1
  ret { ptr, i64 } %i.i

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @_RNvXsu_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArceENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = atomicrmw add ptr %i.a, i64 1 monotonic, align 8
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %0, align 8
  %i.f = load i64, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs5_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsiHivYpkJ4Hu_2cc(ptr nonnull %i.g) #21
  %i.h = insertvalue { ptr, i64 } poison, ptr %i.e, 0
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %i.f, 1
  ret { ptr, i64 } %i.i

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define nonnull ptr @_RNvXsx_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCs3oUPovFnLWP_4core4sync6atomic6AtomicbEENtNtNtBN_3ops5deref5Deref5derefCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define nonnull align 8 ptr @_RNvXsx_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtCsiHivYpkJ4Hu_2cc10BuildCacheENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefBI_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvXsx_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsaL1QbXo9JQH_3std4path4PathENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.d, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.c, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvXsx_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArceENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.d, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.c, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvYINtNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmt7AdapterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtBb_3fmt5Write10write_charCsiHivYpkJ4Hu_2cc(ptr align 8 %0, i32 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  store i32 0, ptr %i.a, align 4
  %i.b = call { ptr, i64 } @_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_rawCsiHivYpkJ4Hu_2cc(i32 %1, ptr nonnull %i.a, i64 4) #21 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0
  %i.d = extractvalue { ptr, i64 } %i.b, 1
  %i.e = load ptr, ptr %0, align 8
  %i.f = call ptr @_RNvYNtNtCsaL1QbXo9JQH_3std2fs4FileNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCsiHivYpkJ4Hu_2cc(ptr align 4 %i.e, ptr %i.c, i64 %i.d) ; 3 uses
  %.not.i = icmp ne ptr %i.f, null                ; 2 uses
  br i1 %.not.i, label %bb.b, label %_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB8_3fmt5Write9write_strCsiHivYpkJ4Hu_2cc.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.g)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  store ptr %i.f, ptr %i.g, align 8
  resume { ptr, i32 } %i.h

bb.d:                                             ; preds = %bb.b
  store ptr %i.f, ptr %i.g, align 8
  br label %_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB8_3fmt5Write9write_strCsiHivYpkJ4Hu_2cc.exit

_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB8_3fmt5Write9write_strCsiHivYpkJ4Hu_2cc.exit: ; preds = %bb.a, %bb.d
  ret i1 %.not.i
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvYINtNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmt7AdapterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtBb_3fmt5Write9write_fmtCsiHivYpkJ4Hu_2cc(ptr align 8 %0, ptr %1, ptr %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
end_hunk_1
begin_hunk_2_@_RINvXs1h_NtCsaL1QbXo9JQH_3std4pathNtB7_4PathNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtNtB9_4hash6random13DefaultHasherECsiHivYpkJ4Hu_2cc
declare void @_RINvXs1h_NtCsaL1QbXo9JQH_3std4pathNtB7_4PathNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtNtB9_4hash6random13DefaultHasherECsiHivYpkJ4Hu_2cc(ptr, i64, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvXsL_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB6_5OsStrNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtNtBa_4hash6random13DefaultHasherECsiHivYpkJ4Hu_2cc(ptr, i64, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvXs0_NtNtCs3oUPovFnLWP_4core4hash5implseNtB8_4Hash4hashNtNtNtCsaL1QbXo9JQH_3std4hash6random13DefaultHasherECsiHivYpkJ4Hu_2cc(ptr, i64, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs3U9i7nQCKwt_15find_msvc_tools(ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs6_NtCsaL1QbXo9JQH_3std3envNtB5_10SplitPathsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4find5checkNtNtCsaL1QbXo9JQH_3std4path7PathBufNCNCNvMs4_CsiHivYpkJ4Hu_2ccNtB1V_5Build11try_compiles_00E0B1V_(ptr sret([24 x i8]) align 8, ptr, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXNtNtCs3oUPovFnLWP_4core3ops12control_flowINtB2_11ControlFlowNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtB4_9try_trait3Try6branchCs3U9i7nQCKwt_15find_msvc_tools(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXs_NtNtCs3oUPovFnLWP_4core3ops12control_flowINtB4_11ControlFlowNtNtCsaL1QbXo9JQH_3std4path7PathBufEINtNtB6_9try_trait12FromResidualIBK_B12_zEE13from_residualCs3U9i7nQCKwt_15find_msvc_tools(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXNtNtCs3oUPovFnLWP_4core3ops12control_flowINtB2_11ControlFlowNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtB4_9try_trait3Try11from_outputCs3U9i7nQCKwt_15find_msvc_tools(ptr sret([24 x i8]) align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8find_map5checkNtNtCsaL1QbXo9JQH_3std4path7PathBufB1g_NCNCNvMs4_CsiHivYpkJ4Hu_2ccNtB23_5Build5which00E0B23_(ptr sret([24 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare align 8 ptr @_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8find_map5checkNtNtCsaL1QbXo9JQH_3std4path7PathBufRReNCNCNvMs4_CsiHivYpkJ4Hu_2ccNtB22_5Build23find_working_gnu_prefix00E0B22_(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare align 8 ptr @_RNvXNtNtCs3oUPovFnLWP_4core3ops12control_flowINtB2_11ControlFlowRReENtNtB4_9try_trait3Try6branchCsiHivYpkJ4Hu_2cc(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare align 8 ptr @_RNvXs_NtNtCs3oUPovFnLWP_4core3ops12control_flowINtB4_11ControlFlowRReEINtNtB6_9try_trait12FromResidualIBK_B12_zEE13from_residualCsiHivYpkJ4Hu_2cc(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare align 8 ptr @_RNvXNtNtCs3oUPovFnLWP_4core3ops12control_flowINtB2_11ControlFlowRReENtNtB4_9try_trait3Try11from_outputCsiHivYpkJ4Hu_2cc() unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr align 8) unnamed_addr #16

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCINvMs1_NtCsiHivYpkJ4Hu_2cc9utilitiesINtB8_8OnceLockINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_6target6parser21TargetInfoParserInnerNtBa_5ErrorEE11get_or_initNvMB1u_B1s_32from_cargo_environment_variablesE0Ba_(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @_RNCNvNtCsiHivYpkJ4Hu_2cc15command_helpers10run_outputs_0B5_(ptr, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callRShNvNtCsiHivYpkJ4Hu_2cc15command_helpers13write_warningE0B1m_(ptr, ptr, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @_RNCNvMs4_CsiHivYpkJ4Hu_2ccNtB7_5Build15cuda_file_count0B7_(ptr, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs3_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB5_8OsStringNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCsiHivYpkJ4Hu_2cc(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs4_CsiHivYpkJ4Hu_2ccNtB5_5Build23is_flag_supported_inner(ptr sret([32 x i8]) align 8, ptr align 8, ptr, i64, ptr align 8, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultbNtCsiHivYpkJ4Hu_2cc5ErrorE9unwrap_orBK_(ptr align 8, i1 zeroext) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj3d_Kj1_ECsiHivYpkJ4Hu_2cc(ptr, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCsiHivYpkJ4Hu_2cc15command_helpersNtB2_11CargoOutput13print_warning(ptr align 8, ptr, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringE4pushCsiHivYpkJ4Hu_2cc(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools(ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs0_NtCs1xwejQucwHj_5alloc5allocNtB5_6Global18alloc_impl_runtimeCsiHivYpkJ4Hu_2cc(i64, i64, i1 zeroext) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXsf_NtNtCs1xwejQucwHj_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1R_4SyncEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsiHivYpkJ4Hu_2cc(ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @_RNvMs4_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_4IterINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsaL1QbXo9JQH_3std4path4PathEE3newCsiHivYpkJ4Hu_2cc(ptr align 8, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @_RNvMs4_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_4IterINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEE3newCsiHivYpkJ4Hu_2cc(ptr align 8, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @_RNvMs4_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_4IterTINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEBP_EE3newCsiHivYpkJ4Hu_2cc(ptr align 8, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @_RNvMs4_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_4IterTINtNtCs1xwejQucwHj_5alloc4sync3ArceEINtNtB9_6option6OptionBP_EEE3newCsiHivYpkJ4Hu_2cc(ptr align 8, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @_RNvXsd_NtNtCs3oUPovFnLWP_4core5alloc6layoutNtB5_11LayoutErrorNtNtB9_3fmt5Debug3fmtCsiHivYpkJ4Hu_2cc(ptr, ptr align 8) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr, i64, ptr, ptr align 8, ptr align 8) unnamed_addr #16

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvMNtCs3oUPovFnLWP_4core3stre10split_oncecECsiHivYpkJ4Hu_2cc(ptr sret([32 x i8]) align 8, ptr, i64, i32) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core3stre8is_emptyCsiHivYpkJ4Hu_2cc(ptr, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj3_Kj2_ECsiHivYpkJ4Hu_2cc(ptr, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvXse_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CoweEINtNtCs3oUPovFnLWP_4core7convert5AsRefeE6as_refCsiHivYpkJ4Hu_2cc(ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtB7_6option6OptionReENtCsiHivYpkJ4Hu_2cc5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1b_(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultuNtCsiHivYpkJ4Hu_2cc5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zBL_EE13from_residualBN_(ptr sret([32 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare { i32, i32 } @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE8and_thenmINvNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB11_17RustcCodegenFlags14set_rustc_flag10arg_to_u32BI_EEB13_(ptr, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtB7_6option6OptionmENtCsiHivYpkJ4Hu_2cc5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1a_(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare i8 @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE6map_orIBw_bEINvNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB14_17RustcCodegenFlags14set_rustc_flag11arg_to_boolBI_EEB16_(ptr, i64, i8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionReE2orCsiHivYpkJ4Hu_2cc(ptr, i64, ptr, i64) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECsiHivYpkJ4Hu_2cc(ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvMNtCs3oUPovFnLWP_4core3stre5splitReECsiHivYpkJ4Hu_2cc(ptr sret([128 x i8]) align 8, ptr, i64, ptr, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXNtNtNtCs3oUPovFnLWP_4core4iter6traits7collectINtNtNtB8_3str4iter5SplitReENtB2_12IntoIterator9into_iterCsiHivYpkJ4Hu_2cc(ptr sret([128 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @_RNvXsX_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_5SplitReENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsiHivYpkJ4Hu_2cc(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionReE4takeCsiHivYpkJ4Hu_2cc(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionReE9unwrap_orCsiHivYpkJ4Hu_2cc(ptr, i64, ptr, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultuNtCsiHivYpkJ4Hu_2cc5ErrorENtNtNtB7_3ops9try_trait3Try6branchBN_(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsiHivYpkJ4Hu_2cc5flags17RustcCodegenFlagsNtBO_5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1u_EE13from_residualBO_(ptr sret([144 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj17_Kj1_ECsiHivYpkJ4Hu_2cc(ptr, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXs1_NtCs3oUPovFnLWP_4core7convertNtNtCs1xwejQucwHj_5alloc6string6StringINtB5_4IntoNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringE4intoCsiHivYpkJ4Hu_2cc(ptr sret([24 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKjc_Kj1_ECsiHivYpkJ4Hu_2cc(ptr, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKjb_Kj1_ECsiHivYpkJ4Hu_2cc(ptr, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj16_Kj1_ECsiHivYpkJ4Hu_2cc(ptr, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj11_Kj1_ECsiHivYpkJ4Hu_2cc(ptr, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj13_Kj1_ECsiHivYpkJ4Hu_2cc(ptr, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionbE9unwrap_orCsiHivYpkJ4Hu_2cc(i8, i1 zeroext) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKja_Kj1_ECsiHivYpkJ4Hu_2cc(ptr, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RINvMNtCs3oUPovFnLWP_4core3stre8containsReECs3U9i7nQCKwt_15find_msvc_tools(ptr, i64, ptr, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocateCsiHivYpkJ4Hu_2cc(ptr, i64, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXsq_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB5_5OsStrNtNtCs3oUPovFnLWP_4core5clone13CloneToUninit15clone_to_uninitCsiHivYpkJ4Hu_2cc(ptr, i64, ptr) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNvMs1_NtCs1xwejQucwHj_5alloc5boxedINtB16_3BoxppE21try_clone_from_ref_in16DeallocDropGuardNtNtB18_5alloc6GlobalEEECsiHivYpkJ4Hu_2cc(ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXs0_NtCs3oUPovFnLWP_4core5cloneeNtB5_13CloneToUninit15clone_to_uninitCsiHivYpkJ4Hu_2cc(ptr, i64, ptr) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare align 8 ptr @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCsaL1QbXo9JQH_3std4path4PathEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1N_8PeekableINtNtB1P_5chain5ChainINtNtB1P_3map3MapINtNtNtB5_5slice4iter4IterNtCsiHivYpkJ4Hu_2cc6ObjectENCNvMs4_B3D_NtB3D_5Build8assemble0EIB2V_IB3c_INtNtCs1xwejQucwHj_5alloc4sync3ArcBN_EENvYB4L_NtNtNtB5_3ops5deref5Deref5derefEEE4peek0EB3D_(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #18

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { i32, i32 } @_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc8to_digitCsiHivYpkJ4Hu_2cc(i32, i32) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakINtNtNtB4_4sync6atomic6AtomicbERNtNtBG_5alloc6GlobalEECsiHivYpkJ4Hu_2cc(ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsiHivYpkJ4Hu_2cc10BuildCacheEBD_(ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtCsiHivYpkJ4Hu_2cc10BuildCacheRNtNtBG_5alloc6GlobalEEB1c_(ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCsaL1QbXo9JQH_3std4path4PathRNtNtBG_5alloc6GlobalEECsiHivYpkJ4Hu_2cc(ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakeRNtNtBG_5alloc6GlobalEECsiHivYpkJ4Hu_2cc(ptr align 8) unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.smul.with.overflow.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #18

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { i64, i64 } @_RNvNvMNtNtCs3oUPovFnLWP_4core5alloc6layoutNtB4_6Layout5array5innerCsiHivYpkJ4Hu_2cc(i64, i64, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core5sliceSRe8containsCsiHivYpkJ4Hu_2cc(ptr align 8, i64, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RINvMNtCs3oUPovFnLWP_4core3stre11starts_withReECsiHivYpkJ4Hu_2cc(ptr, i64, ptr, i64) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @_RNvXs2_NtNtCs3oUPovFnLWP_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCsiHivYpkJ4Hu_2cc(ptr, i64, i64, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @_RNvXNtCs3oUPovFnLWP_4core7convertReINtB2_5AsRefNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrE6as_refCs3U9i7nQCKwt_15find_msvc_tools(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCsiHivYpkJ4Hu_2cc(ptr, ptr, i64, i64) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare ptr @_RNvYNtNtCsaL1QbXo9JQH_3std2fs4FileNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCsiHivYpkJ4Hu_2cc(ptr align 4, ptr, i64) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare ptr @_RNvYNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCsiHivYpkJ4Hu_2cc(ptr, ptr, i64) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs3U9i7nQCKwt_15find_msvc_tools(ptr sret([24 x i8]) align 8, ptr, i64) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB5_8OsStringINtNtCs3oUPovFnLWP_4core7convert4FromRINtNtCs1xwejQucwHj_5alloc4sync3ArcNtB5_5OsStrEE4fromCsiHivYpkJ4Hu_2cc(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXsz_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBufINtNtCs3oUPovFnLWP_4core7convert4FromReE4fromCsiHivYpkJ4Hu_2cc(ptr sret([24 x i8]) align 8, ptr, i64) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB5_8OsStringINtNtCs3oUPovFnLWP_4core7convert4FromReE4fromCsiHivYpkJ4Hu_2cc(ptr sret([24 x i8]) align 8, ptr, i64) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsaL1QbXo9JQH_3std4path4PathEENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCsiHivYpkJ4Hu_2cc(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsaL1QbXo9JQH_3std4path4PathEENtNtNtNtBa_4iter6traits8iterator8Iterator3mapjNCINvNvXs1_NtNtB1V_8adapters6filterINtB2K_6FilterppEB1P_5count8to_usizeRBJ_NCNvMs4_CsiHivYpkJ4Hu_2ccNtB3U_5Build15cuda_file_count0E0EB3U_(ptr, ptr) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare i64 @_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsaL1QbXo9JQH_3std4path4PathEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB22_8adapters3map8map_foldRBQ_jjNCINvNvXs1_NtB2O_6filterINtB3x_6FilterppEB1W_5count8to_usizeB3g_NCNvMs4_CsiHivYpkJ4Hu_2ccNtB4w_5Build15cuda_file_count0E0NCINvXsK_NtB20_5accumjNtB5s_3Sum3sumINtB2M_3MapBF_B3m_EE0E0EB4w_(ptr, ptr, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXs8_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtNtNtBb_5slice4iter4IterINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsaL1QbXo9JQH_3std4path4PathEENtB5_15SpecAssumeCount27assume_count_le_upper_boundCsiHivYpkJ4Hu_2cc(i64, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare align 8 ptr @_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMNtCsiHivYpkJ4Hu_2cc4toolNtB2p_4Tool10to_command0EB2r_(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter5SplithNtNtBa_3str17IsAsciiWhitespaceENtNtNtNtBa_4iter6traits8iterator8Iterator4findQNtBN_15BytesIsNotEmptyECsiHivYpkJ4Hu_2cc(ptr align 8, ptr) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @_RNvXs7_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionReENtNtB7_7default7Default7defaultCsiHivYpkJ4Hu_2cc() unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare i8 @_RNvXs7_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionbENtNtB7_7default7Default7defaultCsiHivYpkJ4Hu_2cc() unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare { i32, i32 } @_RNvXs7_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionmENtNtB7_7default7Default7defaultCsiHivYpkJ4Hu_2cc() unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvNtNtCs3oUPovFnLWP_4core4sync6atomic5fenceCsiHivYpkJ4Hu_2cc(i8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXs0_NtCs3oUPovFnLWP_4core5allocRNtNtCs1xwejQucwHj_5alloc5alloc6GlobalNtB5_9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools(ptr align 8, ptr, i64, i64) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXsi_NtCs3oUPovFnLWP_4core3fmteNtB5_7Display3fmt(ptr, i64, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXsd_CsiHivYpkJ4Hu_2ccNtB5_10BuildCacheNtNtCs3oUPovFnLWP_4core7default7Default7defaultB5_(ptr sret([360 x i8]) align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtB4_3mem12maybe_uninit11MaybeUninitINtNtBG_4sync8ArcInnerNtCsiHivYpkJ4Hu_2cc10BuildCacheEEEEB2d_(ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs4_NtCs3oUPovFnLWP_4core3fmtNtB5_9Arguments23as_statically_known_strCsiHivYpkJ4Hu_2cc(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare i64 @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtNtCsaL1QbXo9JQH_3std6thread2id8ThreadIdE6map_oryNCNvMsd_NtNtBO_4sync14reentrant_lockNtB1G_3Tid3set0ECsiHivYpkJ4Hu_2cc(i64, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic12atomic_storeyKb0_ECsiHivYpkJ4Hu_2cc(ptr, i64, i8) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr align 4) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXs0_NvXsf_NtNtCs1xwejQucwHj_5alloc5boxed7convertINtBd_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtB12_6marker4SendNtB1z_4SyncEL_EINtNtB12_7convert4FromNtNtBf_6string6StringE4fromNtB5_11StringErrorNtNtB12_3fmt5Debug3fmt(ptr align 8, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXs_NvXsf_NtNtCs1xwejQucwHj_5alloc5boxed7convertINtBc_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4fromNtB4_11StringErrorNtNtB11_3fmt7Display3fmt(ptr align 8, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvYNtNvXsf_NtNtCs1xwejQucwHj_5alloc5boxed7convertINtBc_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_6sourceCsiHivYpkJ4Hu_2cc(ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvYNtNvXsf_NtNtCs1xwejQucwHj_5alloc5boxed7convertINtBc_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7type_idCsiHivYpkJ4Hu_2cc(ptr sret([16 x i8]) align 8, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvYNtNvXsf_NtNtCs1xwejQucwHj_5alloc5boxed7convertINtBc_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_11descriptionCsiHivYpkJ4Hu_2cc(ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvYNtNvXsf_NtNtCs1xwejQucwHj_5alloc5boxed7convertINtBc_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_5causeCsiHivYpkJ4Hu_2cc(ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvYNtNvXsf_NtNtCs1xwejQucwHj_5alloc5boxed7convertINtBc_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7provideCsiHivYpkJ4Hu_2cc(ptr align 8, ptr align 8, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @_RNvXs1c_NtCsaL1QbXo9JQH_3std4pathNtB6_4PathNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr, i64, ptr, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @_RNvXsE_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB5_5OsStrNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr, i64, ptr, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RNvYNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neCsiHivYpkJ4Hu_2cc(ptr, i64, ptr, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXs5_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsiHivYpkJ4Hu_2cc(ptr) unnamed_addr #1

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #19

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_rawCsiHivYpkJ4Hu_2cc(i32, ptr, i64) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

attributes #0 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { inlinehint }
attributes #22 = { cold }
attributes #23 = { cold noreturn nounwind }
attributes #24 = { noinline noreturn }
attributes #25 = { noreturn }
attributes #26 = { noinline }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (787af2b8c 2026-08-25)"}
!4 = !{!5}
!5 = distinct !{!5, !6, !"_RINvNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB5_17RustcCodegenFlags14set_rustc_flag22flag_not_empty_genericReEB7_: argument 0"}
!6 = distinct !{!6, !"_RINvNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB5_17RustcCodegenFlags14set_rustc_flag22flag_not_empty_genericReEB7_"}
!7 = !{!8}
!8 = distinct !{!8, !9, !"_RNvXs2_NtCsiHivYpkJ4Hu_2cc5flagsNtB5_17RustcCodegenFlagsNtNtCs3oUPovFnLWP_4core7default7Default7defaultB7_: argument 0"}
!9 = distinct !{!9, !"_RNvXs2_NtCsiHivYpkJ4Hu_2cc5flagsNtB5_17RustcCodegenFlagsNtNtCs3oUPovFnLWP_4core7default7Default7defaultB7_"}
!10 = !{!11}
!11 = distinct !{!11, !12, !"_RNvNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB4_17RustcCodegenFlags5parse18handle_flag_prefix: argument 0"}
!12 = distinct !{!12, !"_RNvNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB4_17RustcCodegenFlags5parse18handle_flag_prefix"}
!13 = !{!14}
!14 = distinct !{!14, !15, !"_RNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB2_17RustcCodegenFlags14set_rustc_flag: argument 0"}
!15 = distinct !{!15, !"_RNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB2_17RustcCodegenFlags14set_rustc_flag"}
!16 = !{!"address", !"read_provenance"}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_RNCNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB4_17RustcCodegenFlags14set_rustc_flag0B6_: argument 0"}
!19 = distinct !{!19, !"_RNCNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB4_17RustcCodegenFlags14set_rustc_flag0B6_"}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_RINvNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB5_17RustcCodegenFlags14set_rustc_flag22flag_not_empty_genericReEB7_: argument 0"}
!22 = distinct !{!22, !"_RINvNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB5_17RustcCodegenFlags14set_rustc_flag22flag_not_empty_genericReEB7_"}
!23 = !{!18, !14}
!24 = !{!21, !18, !14}
!25 = !{!21, !18}
end_hunk_2
