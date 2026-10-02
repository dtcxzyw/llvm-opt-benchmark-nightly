Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ring-rs/original/cc-76f3ccad368a22c6.cc.d9ca9ac6d52b51d2-cgu.5?download=true
inline.NumInlined: 112
inline.NumDeleted: 22
begin_hunk_0_@_RNCINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevNtNtCsaL1QbXo9JQH_3std4path10ComponentsENtNtNtBc_6traits8iterator8Iterator2eqB5_E0CsiHivYpkJ4Hu_2cc:bb.a
bb.s:                                             ; preds = %bb.r
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cn = load ptr, ptr %i.cl, align 8
  %i.co = load ptr, ptr %i.cm, align 8
  %bcmp.i.i.i = tail call i32 @bcmp(ptr readonly %i.co, ptr readonly %i.cn, i64 %i.ch)
  %i.cp = icmp eq i32 %bcmp.i.i.i, 0
  br label %_RNvXs1Y_NtCsaL1QbXo9JQH_3std4pathNtB6_9ComponentNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc.exit

_RNvXs1Y_NtCsaL1QbXo9JQH_3std4pathNtB6_9ComponentNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.f, %bb.g, %bb.h, %_RNvXs7_NtNtCs3oUPovFnLWP_4core3cmp5implsRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsiHivYpkJ4Hu_2cc.exit3.i.i, %bb.i, %bb.j, %bb.k, %bb.l, %_RNvXs7_NtNtCs3oUPovFnLWP_4core3cmp5implsRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsiHivYpkJ4Hu_2cc.exit9.i.i, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s
  %.sroa.0.0.shrunk.i = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ false, %bb.l ], [ false, %bb.r ], [ true, %bb.c ], [ false, %_RNvXs7_NtNtCs3oUPovFnLWP_4core3cmp5implsRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsiHivYpkJ4Hu_2cc.exit9.i.i ], [ false, %bb.h ], [ false, %bb.d ], [ %i.am, %bb.i ], [ false, %bb.p ], [ false, %bb.n ], [ false, %_RNvXs7_NtNtCs3oUPovFnLWP_4core3cmp5implsRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsiHivYpkJ4Hu_2cc.exit3.i.i ], [ %i.bl, %bb.m ], [ %i.x, %bb.g ], [ false, %bb.f ], [ %i.aw, %bb.k ], [ false, %bb.j ], [ %i.bv, %bb.o ], [ %i.cf, %bb.q ], [ %i.cp, %bb.s ]
  ret i1 %.sroa.0.0.shrunk.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define ptr @_RNCNKNvNvMNtNtCsaL1QbXo9JQH_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsiHivYpkJ4Hu_2cc(ptr nofree readnone captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsaL1QbXo9JQH_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL)
  %i.b = tail call ptr @_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.a, ptr align 8 %1) #22
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define { i64, i64 } @_RNCNvMNtNtCsaL1QbXo9JQH_3std4hash6randomNtB4_11RandomState3new0CsiHivYpkJ4Hu_2cc(ptr nofree align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %i.a, 1
  store i64 %i.d, ptr %0, align 8
  %i.e = insertvalue { i64, i64 } poison, i64 %i.a, 0
  %i.f = insertvalue { i64, i64 } %i.e, i64 %i.c, 1
  ret { i64, i64 } %i.f
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define align 8 ptr @_RNCNvMs0_NtNtNtCs3oUPovFnLWP_4core2io5error4reprNtB7_4Repr4data0CsiHivYpkJ4Hu_2cc(ptr nofree readnone returned captures(ret: address, provenance) %0) unnamed_addr #4 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define range(i64 1, 0) i64 @_RNCNvYNtNtCsaL1QbXo9JQH_3std4path10ComponentsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator5count0CsiHivYpkJ4Hu_2cc(ptr nofree readnone captures(none) %0, i64 %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, -1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw i64 %1, 1
  ret i64 %i.b

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr nonnull align 8 @5) #28
  unreachable
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNcNtINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCsaL1QbXo9JQH_3std4path4PathE5Owned0CsiHivYpkJ4Hu_2cc(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNcNtINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCsaL1QbXo9JQH_3std4path4PathE8Borrowed0CsiHivYpkJ4Hu_2cc(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr %1, i64 %2) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.b, align 8
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNcNtINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrE5Owned0CsiHivYpkJ4Hu_2cc(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNcNtINtNtCs1xwejQucwHj_5alloc6borrow3CoweE5Owned0CsiHivYpkJ4Hu_2cc(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNcNtINtNtCs1xwejQucwHj_5alloc6borrow3CoweE8Borrowed0CsiHivYpkJ4Hu_2cc(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr %1, i64 %2) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.b, align 8
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvMNtCs3oUPovFnLWP_4core3stre16split_whitespaceCsiHivYpkJ4Hu_2cc(ptr nofree writeonly sret([64 x i8]) align 8 captures(none) initializes((0, 58)) %0, ptr %1, i64 %2) unnamed_addr #0 {
bb.a:
  %.sroa.39 = alloca [40 x i8], align 8           ; 2 uses
  call void @_RNvXs7_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_18MultiCharEqPatternNtB7_12IsWhitespaceENtB5_7Pattern13into_searcherCsiHivYpkJ4Hu_2cc(ptr nonnull sret([40 x i8]) align 8 %.sroa.39, ptr %1, i64 %2) #22
  store i64 0, ptr %0, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.39.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.39, i64 40, i1 false)
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %.sroa.511.0..sroa_idx, align 1
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvMNtCs3oUPovFnLWP_4core3stre22split_ascii_whitespaceCsiHivYpkJ4Hu_2cc(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 17)) %0, ptr %1, i64 %2) unnamed_addr #8 {
bb.a:
  store ptr %1, ptr %0, align 8
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.26.0..sroa_idx, align 8
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %.sroa.37.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i64 @_RNvMNtCs3oUPovFnLWP_4core3stre3lenCsiHivYpkJ4Hu_2cc(ptr nofree readnone captures(none) %0, i64 returned %1) unnamed_addr #4 {
bb.a:
  ret i64 %1
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMNtCs3oUPovFnLWP_4core3stre4trimCsiHivYpkJ4Hu_2cc(ptr %0, i64 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvXsr_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_7Pattern13into_searcherCsiHivYpkJ4Hu_2cc(ptr nonnull sret([40 x i8]) align 8 %i.c, ptr %0, i64 %1) #22
  call void @_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.c) #22
  %i.d = load i64, ptr %i.b, align 8
  %i.e = trunc nuw i64 %i.d to i1                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = load i64, ptr %i.h, align 8
  %.sroa.02.0.i = select i1 %i.e, i64 %i.i, i64 0
  %.sroa.0.0.i = select i1 %i.e, i64 %i.g, i64 0  ; 2 uses
  call void @_RNvXsp_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %i.c) #22
  %i.j = load i64, ptr %i.a, align 8
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 8
  %.sroa.02.1.i = select i1 %i.k, i64 %i.m, i64 %.sroa.02.0.i
  %i.n = sub nuw i64 %.sroa.02.1.i, %.sroa.0.0.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.i
  %i.p = insertvalue { ptr, i64 } poison, ptr %i.o, 0
  %i.q = insertvalue { ptr, i64 } %i.p, i64 %i.n, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret { ptr, i64 } %i.q
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvMNtCs3oUPovFnLWP_4core3stre5charsCsiHivYpkJ4Hu_2cc(ptr %0, i64 %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.b = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr %i.a, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core3stre8is_emptyCsiHivYpkJ4Hu_2cc(ptr nofree readnone captures(none) %0, i64 %1) unnamed_addr #4 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvMNtCs3oUPovFnLWP_4core3stre8split_atCsiHivYpkJ4Hu_2cc(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr %1, i64 %2, i64 %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %_RNvMNtCs3oUPovFnLWP_4core3stre16split_at_checkedCsiHivYpkJ4Hu_2cc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp ult i64 %3, %2
  br i1 %.not.i, label %bb.c, label %.split3.i

.split3.i:                                        ; preds = %bb.b
  %i.b = icmp eq i64 %3, %2
  br i1 %i.b, label %.split.i, label %_RNvMNtCs3oUPovFnLWP_4core3stre16split_at_checkedCsiHivYpkJ4Hu_2cc.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %i.d = load i8, ptr %i.c, align 1, !noalias !8
  %i.e = icmp sgt i8 %i.d, -65
  br i1 %i.e, label %.split.i, label %_RNvMNtCs3oUPovFnLWP_4core3stre16split_at_checkedCsiHivYpkJ4Hu_2cc.exit.thread

.split.i:                                         ; preds = %bb.c, %.split3.i
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %i.g = sub i64 %2, %3
  br label %_RNvMNtCs3oUPovFnLWP_4core3stre16split_at_checkedCsiHivYpkJ4Hu_2cc.exit

_RNvMNtCs3oUPovFnLWP_4core3stre16split_at_checkedCsiHivYpkJ4Hu_2cc.exit: ; preds = %bb.a, %.split.i
  %.sroa.5.0 = phi ptr [ %1, %bb.a ], [ %i.f, %.split.i ]
  %.sroa.6.0 = phi i64 [ %2, %bb.a ], [ %i.g, %.split.i ]
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %_RNvMNtCs3oUPovFnLWP_4core3stre16split_at_checkedCsiHivYpkJ4Hu_2cc.exit.thread, label %bb.d

bb.d:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core3stre16split_at_checkedCsiHivYpkJ4Hu_2cc.exit
  store ptr %1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  ret void

_RNvMNtCs3oUPovFnLWP_4core3stre16split_at_checkedCsiHivYpkJ4Hu_2cc.exit.thread: ; preds = %.split3.i, %bb.c, %_RNvMNtCs3oUPovFnLWP_4core3stre16split_at_checkedCsiHivYpkJ4Hu_2cc.exit
  tail call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr %1, i64 %2, i64 0, i64 %3, ptr nonnull align 8 @7) #28
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, ptr } @_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsString4iterCsiHivYpkJ4Hu_2cc(ptr align 8 %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs4_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_4IterNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringE3newCsiHivYpkJ4Hu_2cc(ptr align 8 %0, i64 %1) #22
  ret { ptr, ptr } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsString8containsCsiHivYpkJ4Hu_2cc(ptr align 8 %0, i64 %1, ptr align 8 %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %1
  store ptr %0, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.c, align 8
  %i.d = call zeroext i1 @_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2q_13SliceContains14slice_contains0ECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.a, ptr align 8 %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, ptr } @_RNvMNtCs3oUPovFnLWP_4core5sliceSRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStr4iterCsiHivYpkJ4Hu_2cc(ptr align 8 %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs4_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_4IterRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrE3newCsiHivYpkJ4Hu_2cc(ptr align 8 %0, i64 %1) #22
  ret { ptr, ptr } %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define align 8 ptr @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionIBv_RReEE9unwrap_orCsiHivYpkJ4Hu_2cc(i64 %0, ptr nofree readnone captures(ret: address, provenance) %1, ptr nofree readnone align 8 captures(ret: address, provenance) %2) unnamed_addr #4 {
bb.a:
  %i.a = trunc nuw i64 %0 to i1
  %. = select i1 %i.a, ptr %1, ptr %2
  ret ptr %.
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBM_6string6StringEE7is_noneCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %.not = icmp eq i64 %i.a, -1
  ret i1 %.not
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define align 8 ptr @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArceEE6as_refCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(ret: address, provenance) %0) unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %.not = icmp eq ptr %i.a, null
  %. = select i1 %.not, ptr null, ptr %0
  ret ptr %.
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArceEE7is_noneCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %.not = icmp eq ptr %i.a, null
  ret i1 %.not
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArceEE8as_derefCsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { ptr, i64 } @_RNvXsx_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArceENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %0) #22 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0
  %i.d = extractvalue { ptr, i64 } %i.b, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i64 [ %i.d, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  %i.e = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArceEE9unwrap_orCsiHivYpkJ4Hu_2cc(ptr %0, i64 %1, ptr %2, i64 %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.b, align 8
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArceEECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.03.0 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ]
  %.sroa.34.0 = phi i64 [ %1, %bb.b ], [ %3, %bb.a ]
  %i.c = insertvalue { ptr, i64 } poison, ptr %.sroa.03.0, 0
  %i.d = insertvalue { ptr, i64 } %i.c, i64 %.sroa.34.0, 1
  ret { ptr, i64 } %i.d
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCsaL1QbXo9JQH_3std4path4PathEE8as_derefCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %.not = icmp eq i64 %i.a, -2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val1.pn.in.i = getelementptr i8, ptr %0, i64 16
  %.val1.pn.i = load i64, ptr %.val1.pn.in.i, align 8
  %.val.pn.in.i = getelementptr i8, ptr %0, i64 8
  %.val.pn.i = load ptr, ptr %.val.pn.in.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i64 [ %.val1.pn.i, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %.val.pn.i, %bb.b ], [ null, %bb.a ]
  %i.b = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.c = insertvalue { ptr, i64 } %i.b, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCsaL1QbXo9JQH_3std4path4PathEE9unwrap_orCsiHivYpkJ4Hu_2cc(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1, ptr align 8 %2) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %.not = icmp eq i64 %i.a, -2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  tail call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCsaL1QbXo9JQH_3std4path4PathEECsiHivYpkJ4Hu_2cc(ptr align 8 %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionNtCsiHivYpkJ4Hu_2cc10AsmFileExtE7is_someBJ_(ptr nofree readonly captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = load i8, ptr %0, align 1
  %i.b = icmp ne i8 %i.a, 2
  ret i1 %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define i32 @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionNtNtCsaL1QbXo9JQH_3std2fs4FileE4takeCsiHivYpkJ4Hu_2cc(ptr nofree align 4 captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  store i32 -1, ptr %0, align 4
  ret i32 %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define i32 @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionNtNtCsaL1QbXo9JQH_3std7process11ChildStderrE4takeCsiHivYpkJ4Hu_2cc(ptr nofree align 4 captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  store i32 -1, ptr %0, align 4
  ret i32 %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
end_hunk_0
begin_hunk_1_@_RNvXNvMNtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB5_8OsString4pushRBC_NtB2_10SpecPushTo12spec_push_toCsiHivYpkJ4Hu_2cc:bb.a
  %i.a = tail call { ptr, i64 } @_RNvXNtCs3oUPovFnLWP_4core7convertRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtB2_5AsRefNtBy_5OsStrE6as_refCs3U9i7nQCKwt_15find_msvc_tools(ptr align 8 %0) #22 ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 1
  %i.c = extractvalue { ptr, i64 } %i.a, 0
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs93MrfdkTAtF_5shlex(ptr align 8 %1, ptr %i.c, i64 %i.b) #22
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXNvMNtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB5_8OsString4pushRNtNtB9_4path4PathNtB2_10SpecPushTo12spec_push_toCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs93MrfdkTAtF_5shlex(ptr align 8 %1, ptr %i.a, i64 %i.c) #22
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXNvMNtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB5_8OsString4pushReNtB2_10SpecPushTo12spec_push_toCsiHivYpkJ4Hu_2cc(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvXNtCs3oUPovFnLWP_4core7convertReINtB2_5AsRefNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrE6as_refCs3U9i7nQCKwt_15find_msvc_tools(ptr align 8 %0) #22 ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 1
  %i.c = extractvalue { ptr, i64 } %i.a, 0
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs93MrfdkTAtF_5shlex(ptr align 8 %1, ptr %i.c, i64 %i.b) #22
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXNvXs0_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB8_8OsStringINtNtCs3oUPovFnLWP_4core7convert4FromRpE4fromRNtB8_5OsStrNtB2_14SpecToOsString17spec_to_os_stringCsiHivYpkJ4Hu_2cc(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8
  call void @_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr %i.b, i64 %i.d) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXNvXs0_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB8_8OsStringINtNtCs3oUPovFnLWP_4core7convert4FromRpE4fromReNtB2_14SpecToOsString17spec_to_os_stringCsiHivYpkJ4Hu_2cc(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = tail call { ptr, i64 } @_RNvXNtCs3oUPovFnLWP_4core7convertReINtB2_5AsRefNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrE6as_refCs3U9i7nQCKwt_15find_msvc_tools(ptr align 8 %1) #22 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0
  %i.d = extractvalue { ptr, i64 } %i.b, 1
  call void @_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr %i.c, i64 %i.d) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CoweENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsiHivYpkJ4Hu_2cc(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = load i64, ptr %1, align 8
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { ptr, i64 } @_RNvXs0_NtCs1xwejQucwHj_5alloc3strNtNtB7_6string6StringINtNtCs3oUPovFnLWP_4core6borrow6BorroweE6borrowCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %1) #22 ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0
  %i.e = extractvalue { ptr, i64 } %i.c, 1
  call void @_RNvXs2_NtCs1xwejQucwHj_5alloc3streNtNtB7_6borrow7ToOwned8to_ownedCsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr %i.d, i64 %i.e) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.i, ptr %i.k, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, i64 } @_RNvXs0_NtCs3oUPovFnLWP_4core3strReNtNtB7_7default7Default7defaultCsiHivYpkJ4Hu_2cc() unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr inttoptr (i64 1 to ptr), i64 0 }
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXs0_NtNtCs3oUPovFnLWP_4core5array4iterANtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringj6_NtNtNtNtB9_4iter6traits7collect12IntoIterator9into_iterCsiHivYpkJ4Hu_2cc(ptr nofree writeonly sret([160 x i8]) align 8 captures(none) initializes((0, 160)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  %.sroa.36 = alloca [144 x i8], align 8          ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.36, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 144, i1 false)
  store i64 0, ptr %0, align 8
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 6, ptr %.sroa.25.0..sroa_idx, align 8
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.36.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.36, i64 144, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXs0_NtNtCs3oUPovFnLWP_4core5array4iterARej2_NtNtNtNtB9_4iter6traits7collect12IntoIterator9into_iterCsiHivYpkJ4Hu_2cc(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) initializes((0, 48)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  %.sroa.36 = alloca [32 x i8], align 8           ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.36, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  store i64 0, ptr %0, align 8
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %.sroa.25.0..sroa_idx, align 8
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.36.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.36, i64 32, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB5_8OsStringINtNtCs3oUPovFnLWP_4core7convert4FromRINtNtCs1xwejQucwHj_5alloc4sync3ArcNtB5_5OsStrEE4fromCsiHivYpkJ4Hu_2cc(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  call void @_RNvXNvXs0_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB8_8OsStringINtNtCs3oUPovFnLWP_4core7convert4FromRpE4fromRINtNtCs1xwejQucwHj_5alloc4sync3ArcNtB8_5OsStrENtB2_14SpecToOsString17spec_to_os_stringCsiHivYpkJ4Hu_2cc(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.a) #22
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB5_8OsStringINtNtCs3oUPovFnLWP_4core7convert4FromRNtB5_5OsStrE4fromCsiHivYpkJ4Hu_2cc(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr %1, i64 %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr %1, i64 %2) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB5_8OsStringINtNtCs3oUPovFnLWP_4core7convert4FromRNtNtCs1xwejQucwHj_5alloc6string6StringE4fromCsiHivYpkJ4Hu_2cc(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  call void @_RNvXNvXs0_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB8_8OsStringINtNtCs3oUPovFnLWP_4core7convert4FromRpE4fromRNtNtCs1xwejQucwHj_5alloc6string6StringNtB2_14SpecToOsString17spec_to_os_stringCsiHivYpkJ4Hu_2cc(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.a) #22
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB5_8OsStringINtNtCs3oUPovFnLWP_4core7convert4FromReE4fromCsiHivYpkJ4Hu_2cc(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr %1, i64 %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %2, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = call { ptr, i64 } @_RNvXNtCs3oUPovFnLWP_4core7convertReINtB2_5AsRefNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrE6as_refCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.b) #22 ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0
  %i.f = extractvalue { ptr, i64 } %i.d, 1
  call void @_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr %i.e, i64 %i.f) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvXs15_NtCsaL1QbXo9JQH_3std4pathNtB6_7PathBufINtNtCs3oUPovFnLWP_4core7convert5AsRefNtNtNtB8_3ffi6os_str5OsStrE6as_refCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8
  %i.c = insertvalue { ptr, i64 } poison, ptr %.val, 0
  %i.d = insertvalue { ptr, i64 } %i.c, i64 %.val1, 1
  ret { ptr, i64 } %i.d
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext i1 @_RNvXs1C_NtCs1xwejQucwHj_5alloc6stringINtNtB8_6borrow3CoweEINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp eq i64 %.sroa.3.0, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8
  %.sroa.01.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.01.0 = load ptr, ptr %.sroa.01.0.in, align 8
  %bcmp = tail call i32 @bcmp(ptr %.sroa.01.0, ptr %i.d, i64 %.sroa.3.0)
  %i.e = icmp eq i32 %bcmp, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.e, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs1_NtCs3oUPovFnLWP_4core7convertINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCsaL1QbXo9JQH_3std4path4PathEINtB5_4IntoNtB1a_7PathBufE4intoCsiHivYpkJ4Hu_2cc(ptr sret([24 x i8]) align 8 %0, ptr nofree readonly align 8 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !noalias !11
  %.not.i = icmp eq i64 %i.a, -1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %_RNvXsO_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBufINtNtCs3oUPovFnLWP_4core7convert4FromINtNtCs1xwejQucwHj_5alloc6borrow3CowNtB5_4PathEE4fromCsiHivYpkJ4Hu_2cc.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noalias !11
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noalias !11
  tail call void @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path11to_path_buf(ptr sret([24 x i8]) align 8 %0, ptr %i.c, i64 %i.e)
  br label %_RNvXsO_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBufINtNtCs3oUPovFnLWP_4core7convert4FromINtNtCs1xwejQucwHj_5alloc6borrow3CowNtB5_4PathEE4fromCsiHivYpkJ4Hu_2cc.exit

_RNvXsO_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBufINtNtCs3oUPovFnLWP_4core7convert4FromINtNtCs1xwejQucwHj_5alloc6borrow3CowNtB5_4PathEE4fromCsiHivYpkJ4Hu_2cc.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @_RNvXs1_NtCs3oUPovFnLWP_4core7convertINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEINtB5_4IntoINtNtBD_4sync3ArcB18_EE4intoCsiHivYpkJ4Hu_2cc(ptr align 8 %0, ptr nofree readnone align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvXs1d_NtCs1xwejQucwHj_5alloc4syncINtB6_3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEINtNtCs3oUPovFnLWP_4core7convert4FromINtNtB8_6borrow3CowBH_EE4fromCsiHivYpkJ4Hu_2cc(ptr align 8 %0) #22
  ret { ptr, i64 } %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXs1_NtCs3oUPovFnLWP_4core7convertNtNtCsaL1QbXo9JQH_3std4path7PathBufINtB5_4IntoNtNtNtBC_3ffi6os_str8OsStringE4intoCsiHivYpkJ4Hu_2cc(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @_RNvXs1_NtCs3oUPovFnLWP_4core7convertRNtNtCsaL1QbXo9JQH_3std4path4PathINtB5_4IntoINtNtCs1xwejQucwHj_5alloc4sync3ArcBz_EE4intoCsiHivYpkJ4Hu_2cc(ptr %0, i64 %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvXsQ_NtCsaL1QbXo9JQH_3std4pathINtNtCs1xwejQucwHj_5alloc4sync3ArcNtB5_4PathEINtNtCs3oUPovFnLWP_4core7convert4FromRB12_E4fromCsiHivYpkJ4Hu_2cc(ptr %0, i64 %1) #22
  ret { ptr, i64 } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @_RNvXs1_NtCs3oUPovFnLWP_4core7convertRNtNtCsaL1QbXo9JQH_3std4path4PathINtB5_4IntoINtNtCs1xwejQucwHj_5alloc5boxed3BoxBz_EE4intoCsiHivYpkJ4Hu_2cc(ptr %0, i64 %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvXst_NtCsaL1QbXo9JQH_3std4pathINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtB5_4PathEINtNtCs3oUPovFnLWP_4core7convert4FromRB13_E4from(ptr %0, i64 %1)
  ret { ptr, i64 } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs1_NtCs3oUPovFnLWP_4core7convertRNtNtCsaL1QbXo9JQH_3std4path4PathINtB5_4IntoNtBB_7PathBufE4intoCsiHivYpkJ4Hu_2cc(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr %1, i64 %2, ptr nofree readnone align 8 captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr %1, i64 %2) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @_RNvXs1_NtCs3oUPovFnLWP_4core7convertRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrINtB5_4IntoINtNtCs1xwejQucwHj_5alloc4sync3ArcBz_EE4intoCsiHivYpkJ4Hu_2cc(ptr %0, i64 %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvXss_NtNtCsaL1QbXo9JQH_3std3ffi6os_strINtNtCs1xwejQucwHj_5alloc4sync3ArcNtB5_5OsStrEINtNtCs3oUPovFnLWP_4core7convert4FromRB1a_E4fromCsiHivYpkJ4Hu_2cc(ptr %0, i64 %1) #22
  ret { ptr, i64 } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @_RNvXs1_NtCs3oUPovFnLWP_4core7convertRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrINtB5_4IntoINtNtCs1xwejQucwHj_5alloc5boxed3BoxBz_EE4intoCsiHivYpkJ4Hu_2cc(ptr %0, i64 %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvXsk_NtNtCsaL1QbXo9JQH_3std3ffi6os_strINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtB5_5OsStrEINtNtCs3oUPovFnLWP_4core7convert4FromRB1b_E4fromCsiHivYpkJ4Hu_2cc(ptr %0, i64 %1) #22
  ret { ptr, i64 } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs1_NtCs3oUPovFnLWP_4core7convertRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrINtB5_4IntoNtBB_8OsStringE4intoCsiHivYpkJ4Hu_2cc(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr %1, i64 %2, ptr nofree readnone align 8 captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr %1, i64 %2) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNCINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB8_13RawTableInner14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0CsiHivYpkJ4Hu_2cc(ptr align 8 %0, ptr nonnull align 8 %i.a) #22
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNCNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB7_13RawTableInner15rehash_in_place0CsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.a, ptr align 8 %0) #22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNtNtBb_3str10IsNotEmptyINtB7_5FnMutTRReEE8call_mutCsiHivYpkJ4Hu_2cc(ptr nofree readnone align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val = load i64, ptr %i.a, align 8
  %i.b = icmp ne i64 %.val, 0
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNtNtBb_3str15BytesIsNotEmptyINtB7_5FnMutTRRShEE8call_mutCsiHivYpkJ4Hu_2cc(ptr nofree readnone align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val = load i64, ptr %i.a, align 8
  %i.b = icmp ne i64 %.val, 0
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNvXs1c_NtCsaL1QbXo9JQH_3std4pathNtB6_4PathNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr %0, i64 %1, ptr %2, i64 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 11 uses
  %i.c = alloca [64 x i8], align 8                ; 10 uses
  %.sroa.3.i = alloca [39 x i8], align 1          ; 4 uses
  %.sroa.311.i = alloca [39 x i8], align 1        ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 11 uses
  %i.e = alloca [64 x i8], align 8                ; 11 uses
  call void @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path10components(ptr nonnull sret([64 x i8]) align 8 %i.e, ptr %0, i64 %1)
  call void @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path10components(ptr nonnull sret([64 x i8]) align 8 %i.d, ptr %2, i64 %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.311.i)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i64, ptr %i.f, align 8              ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = load ptr, ptr %i.e, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.l = load i8, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.n = load i8, ptr %i.m, align 8
  %i.o = icmp eq i8 %i.l, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 57
  %i.q = load i8, ptr %i.p, align 1
  %i.r = icmp eq i8 %i.q, 2
  %or.cond = select i1 %i.o, i1 %i.r, i1 false
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 57
  %i.t = load i8, ptr %i.s, align 1
  %i.u = icmp eq i8 %i.t, 2
  %or.cond5 = select i1 %or.cond, i1 %i.u, i1 false
  %.pre6 = load ptr, ptr %i.e, align 8            ; 3 uses
  br i1 %or.cond5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.d, %bb.b
  %i.v = phi ptr [ %.pre, %._crit_edge ], [ %.pre6, %bb.d ], [ %.pre6, %bb.b ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.x = load i8, ptr %i.w, align 8               ; 2 uses
  %.not.i = icmp eq i8 %i.x, -1
  br i1 %.not.i, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.y = load ptr, ptr %i.d, align 8
  %bcmp.i = call i32 @bcmp(ptr %.pre6, ptr %i.y, i64 %i.g)
  %i.z = icmp eq i32 %bcmp.i, 0
  br i1 %i.z, label %_RNvXsl_NtCsaL1QbXo9JQH_3std4pathNtB5_10ComponentsNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %.sroa.213.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.311.i, ptr noundef nonnull readonly align 1 dereferenceable(39) %.sroa.213.0..sroa_idx.i, i64 39, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 58
  %i.ab = load i8, ptr %i.aa, align 2
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.ad = load i8, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 57
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = load ptr, ptr %i.d, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ai = load i8, ptr %i.ah, align 8             ; 2 uses
  %.not19.i = icmp eq i8 %i.ai, -1
  br i1 %.not19.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.218.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.3.i, ptr noundef nonnull readonly align 1 dereferenceable(39) %.sroa.218.0..sroa_idx.i, i64 39, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 58
  %i.ak = load i8, ptr %i.aj, align 2
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.am = load i8, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 57
  %i.ao = load i8, ptr %i.an, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.v, ptr %i.c, align 8
  %.sroa.2.0..sroa_idx20.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.g, ptr %.sroa.2.0..sroa_idx20.i, align 8
  %.sroa.321.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i8 %i.x, ptr %.sroa.321.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa_idx22.i = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.4.0..sroa_idx22.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.311.i, i64 39, i1 false)
  %.sroa.5.0..sroa_idx23.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
end_hunk_1
begin_hunk_2_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs3U9i7nQCKwt_15find_msvc_tools
declare void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs3U9i7nQCKwt_15find_msvc_tools(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs3oUPovFnLWP_4core3str8converts9from_utf8(ptr sret([24 x i8]) align 8, ptr, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @_RNvXsu_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsiHivYpkJ4Hu_2cc(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @_RNvXsu_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArceENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsiHivYpkJ4Hu_2cc(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtNtCsaL1QbXo9JQH_3std3sys6random5linux19hashmap_random_keys() unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64, i64) #19

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs93MrfdkTAtF_5shlex(ptr align 8, ptr, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @_RNvXNtCs3oUPovFnLWP_4core7convertRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtB2_5AsRefNtBy_5OsStrE6as_refCs3U9i7nQCKwt_15find_msvc_tools(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs3U9i7nQCKwt_15find_msvc_tools(ptr sret([24 x i8]) align 8, ptr, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs0_NtCs1xwejQucwHj_5alloc3strNtNtB7_6string6StringINtNtCs3oUPovFnLWP_4core6borrow6BorroweE6borrowCsiHivYpkJ4Hu_2cc(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXs2_NtCs1xwejQucwHj_5alloc3streNtNtB7_6borrow7ToOwned8to_ownedCsiHivYpkJ4Hu_2cc(ptr sret([24 x i8]) align 8, ptr, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXNvXs0_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB8_8OsStringINtNtCs3oUPovFnLWP_4core7convert4FromRpE4fromRINtNtCs1xwejQucwHj_5alloc4sync3ArcNtB8_5OsStrENtB2_14SpecToOsString17spec_to_os_stringCsiHivYpkJ4Hu_2cc(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXNvXs0_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB8_8OsStringINtNtCs3oUPovFnLWP_4core7convert4FromRpE4fromRNtNtCs1xwejQucwHj_5alloc6string6StringNtB2_14SpecToOsString17spec_to_os_stringCsiHivYpkJ4Hu_2cc(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @_RNvXs1d_NtCs1xwejQucwHj_5alloc4syncINtB6_3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEINtNtCs3oUPovFnLWP_4core7convert4FromINtNtB8_6borrow3CowBH_EE4fromCsiHivYpkJ4Hu_2cc(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXsQ_NtCsaL1QbXo9JQH_3std4pathINtNtCs1xwejQucwHj_5alloc4sync3ArcNtB5_4PathEINtNtCs3oUPovFnLWP_4core7convert4FromRB12_E4fromCsiHivYpkJ4Hu_2cc(ptr, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvXst_NtCsaL1QbXo9JQH_3std4pathINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtB5_4PathEINtNtCs3oUPovFnLWP_4core7convert4FromRB13_E4from(ptr, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXss_NtNtCsaL1QbXo9JQH_3std3ffi6os_strINtNtCs1xwejQucwHj_5alloc4sync3ArcNtB5_5OsStrEINtNtCs3oUPovFnLWP_4core7convert4FromRB1a_E4fromCsiHivYpkJ4Hu_2cc(ptr, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXsk_NtNtCsaL1QbXo9JQH_3std3ffi6os_strINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtB5_5OsStrEINtNtCs3oUPovFnLWP_4core7convert4FromRB1b_E4fromCsiHivYpkJ4Hu_2cc(ptr, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNCINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB8_13RawTableInner14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0CsiHivYpkJ4Hu_2cc(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNCNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB7_13RawTableInner15rehash_in_place0CsiHivYpkJ4Hu_2cc(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path10components(ptr sret([64 x i8]) align 8, ptr, i64) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXsM_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB5_5OsStrNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr, i64, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXs7_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB5_8OsStringNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs5_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE5indexCsiHivYpkJ4Hu_2cc(i64, i64, ptr, i64, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE5indexCsiHivYpkJ4Hu_2cc(i64, ptr, i64, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsiHivYpkJ4Hu_2cc(ptr align 8, ptr, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare i64 @_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCsiHivYpkJ4Hu_2cc(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCsiHivYpkJ4Hu_2cc(ptr align 8, ptr, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @_RNvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitReEE4nextCsiHivYpkJ4Hu_2cc(ptr align 8, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXs0_NtCsiHivYpkJ4Hu_2cc4toolNtB5_4ToolNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneB7_(ptr sret([152 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_5array4iter10iter_inner15PolymorphicIterAINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEj6_EECsiHivYpkJ4Hu_2cc(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsiHivYpkJ4Hu_2cc(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #19

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path11to_path_buf(ptr sret([24 x i8]) align 8, ptr, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare align 8 ptr @_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterNtNtCs1xwejQucwHj_5alloc6string6StringENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiHivYpkJ4Hu_2cc(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXsh_NtCs3oUPovFnLWP_4core3fmteNtB5_5Debug3fmt(ptr, i64, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @_RNvXsr_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCsiHivYpkJ4Hu_2cc(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXsi_NtCs3oUPovFnLWP_4core3fmteNtB5_7Display3fmt(ptr, i64, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @_RNvXsq_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt7Display3fmtCsiHivYpkJ4Hu_2cc(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr align 8, ptr, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @_RNvXsq_CsiHivYpkJ4Hu_2ccNtB5_10AsmFileExtNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqB5_(ptr, ptr) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RNvXs7_NtNtCs3oUPovFnLWP_4core3cmp5implsReNtB7_9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @_RNvXsi_NtNtCs3oUPovFnLWP_4core3cmp5implscNtB7_9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr align 4, ptr align 4) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2q_13SliceContains14slice_contains0ECsiHivYpkJ4Hu_2cc(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc13is_whitespaceCsiHivYpkJ4Hu_2cc(i32) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXs_NtNtCs3oUPovFnLWP_4core5clone6uninithNtB4_8CopySpec11clone_sliceCsiHivYpkJ4Hu_2cc(ptr, i64, ptr, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs6_NtCs1xwejQucwHj_5alloc5sliceShINtB5_16SpecCloneIntoVechNtNtB7_5alloc6GlobalE10clone_intoCsiHivYpkJ4Hu_2cc(ptr, i64, ptr align 8) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #21

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #22 = { inlinehint }
attributes #23 = { cold }
attributes #24 = { cold noreturn nounwind }
attributes #25 = { inlinehint nounwind }
attributes #26 = { noreturn }
attributes #27 = { nounwind }
attributes #28 = { noinline noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (787af2b8c 2026-08-25)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.peeled.count", i32 2}
!6 = distinct !{!6, i1 false, !"_RNvMNtCs3oUPovFnLWP_4core3stre16split_at_checkedCsiHivYpkJ4Hu_2cc"}
!7 = distinct !{!7, !6, !"_RNvMNtCs3oUPovFnLWP_4core3stre16split_at_checkedCsiHivYpkJ4Hu_2cc: argument 0"}
!8 = !{!7}
!9 = distinct !{!9, i1 false, !"_RNvXsO_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBufINtNtCs3oUPovFnLWP_4core7convert4FromINtNtCs1xwejQucwHj_5alloc6borrow3CowNtB5_4PathEE4fromCsiHivYpkJ4Hu_2cc"}
!10 = distinct !{!10, !9, !"_RNvXsO_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBufINtNtCs3oUPovFnLWP_4core7convert4FromINtNtCs1xwejQucwHj_5alloc6borrow3CowNtB5_4PathEE4fromCsiHivYpkJ4Hu_2cc: argument 0"}
!11 = !{!10}
end_hunk_2
