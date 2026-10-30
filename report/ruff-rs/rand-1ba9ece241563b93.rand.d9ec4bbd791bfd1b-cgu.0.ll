Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/rand-1ba9ece241563b93.rand.d9ec4bbd791bfd1b-cgu.0?download=true
inline.NumInlined: 179
inline.NumDeleted: 29
begin_hunk_0_@_RNvXsx_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell10UnsafeCellINtNtNtNtCsiHZWQiD2H9v_4rand4rngs7adapter9reseeding12ReseedingRngNtNtCsbvBq90rv2US_11rand_chacha6chacha12ChaCha12CoreNtNtCs9ROpsoYYFOX_9rand_core2os5OsRngEEENtNtBH_5clone5Clone5cloneB1q_:bb.a
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = add i64 %i.b, 1                          ; 2 uses
  store i64 %i.c, ptr %i.a, align 8
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %_RNvYINtNtCscdodAO9FK5_5alloc2rc7RcInnerINtNtCs4NRVxsYgnAr_4core4cell10UnsafeCellINtNtNtNtCsiHZWQiD2H9v_4rand4rngs7adapter9reseeding12ReseedingRngNtNtCsbvBq90rv2US_11rand_chacha6chacha12ChaCha12CoreNtNtCs9ROpsoYYFOX_9rand_core2os5OsRngEEENtB5_10RcInnerPtr10inc_strongB1p_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

_RNvYINtNtCscdodAO9FK5_5alloc2rc7RcInnerINtNtCs4NRVxsYgnAr_4core4cell10UnsafeCellINtNtNtNtCsiHZWQiD2H9v_4rand4rngs7adapter9reseeding12ReseedingRngNtNtCsbvBq90rv2US_11rand_chacha6chacha12ChaCha12CoreNtNtCs9ROpsoYYFOX_9rand_core2os5OsRngEEENtB5_10RcInnerPtr10inc_strongB1p_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8
  ret ptr %i.e
}

; Function Attrs: inlinehint nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define void @_RNvYINtNtCscdodAO9FK5_5alloc2rc7RcInnerINtNtCs4NRVxsYgnAr_4core4cell10UnsafeCellINtNtNtNtCsiHZWQiD2H9v_4rand4rngs7adapter9reseeding12ReseedingRngNtNtCsbvBq90rv2US_11rand_chacha6chacha12ChaCha12CoreNtNtCs9ROpsoYYFOX_9rand_core2os5OsRngEEENtB5_10RcInnerPtr10inc_strongB1p_(ptr nofree align 16 captures(none) %0) unnamed_addr #22 {
bb.a:
  %i.a = load i64, ptr %0, align 16
  %i.b = add i64 %i.a, 1                          ; 2 uses
  store i64 %i.b, ptr %0, align 16
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define i64 @_RNvYINtNtCscdodAO9FK5_5alloc2rc7RcInnerINtNtCs4NRVxsYgnAr_4core4cell10UnsafeCellINtNtNtNtCsiHZWQiD2H9v_4rand4rngs7adapter9reseeding12ReseedingRngNtNtCsbvBq90rv2US_11rand_chacha6chacha12ChaCha12CoreNtNtCs9ROpsoYYFOX_9rand_core2os5OsRngEEENtB5_10RcInnerPtr6strongB1p_(ptr nofree readonly align 16 captures(none) %0) unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr %0, align 16
  ret i64 %i.a
}

; Function Attrs: nonlazybind uwtable
define i64 @_RNvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter11ChunksExacthENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsiHZWQiD2H9v_4rand(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %_RNvXs1q_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCsiHZWQiD2H9v_4rand.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const23panic_const_div_by_zero(ptr nonnull align 8 @48) #37
  unreachable

_RNvXs1q_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCsiHZWQiD2H9v_4rand.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = udiv i64 %i.e, %i.b
  ret i64 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define range(i64 0, 2305843009213693952) i64 @_RNvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterjENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsiHZWQiD2H9v_4rand(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 3
  ret i64 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define range(i64 0, 4611686018427387904) i64 @_RNvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4ItermENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsiHZWQiD2H9v_4rand(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 2
  ret i64 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define range(i64 0, 2305843009213693952) i64 @_RNvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter7IterMutyENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsiHZWQiD2H9v_4rand(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 3
  ret i64 %i.g
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvYINtNvNtCs2AWtUsOyxgP_3std2io17default_write_fmt7AdapterNtNtNtNtB9_3sys5stdio4unix6StderrENtNtCs4NRVxsYgnAr_4core3fmt5Write10write_charCsiHZWQiD2H9v_4rand(ptr nofree align 8 captures(none) %0, i32 %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 12 uses
  store i32 0, ptr %i.a, align 4
  %i.b = icmp ult i32 %1, 128
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult i32 %1, 2048
  %i.d = trunc i32 %1 to i8
  %i.e = and i8 %i.d, 63
  %i.f = or disjoint i8 %i.e, -128                ; 3 uses
  %i.g = lshr i32 %1, 6
  %i.h = trunc i32 %i.g to i8                     ; 2 uses
  %i.i = and i8 %i.h, 63
  %i.j = or disjoint i8 %i.i, -128                ; 2 uses
  %i.k = lshr i32 %1, 12
  %i.l = trunc i32 %i.k to i8                     ; 2 uses
  %i.m = and i8 %i.l, 63
  %i.n = or disjoint i8 %i.m, -128
  %i.o = lshr i32 %1, 18
  %i.p = trunc i32 %i.o to i8
  %i.q = or i8 %i.p, -16
  br i1 %i.c, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.r = trunc nuw nsw i32 %1 to i8
  store i8 %i.r, ptr %i.a, align 4
  br label %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_rawCsiHZWQiD2H9v_4rand.exit

bb.d:                                             ; preds = %bb.b
  %i.s = or disjoint i8 %i.h, -64
  store i8 %i.s, ptr %i.a, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.f, ptr %i.t, align 1
  br label %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_rawCsiHZWQiD2H9v_4rand.exit

bb.e:                                             ; preds = %bb.b
  %i.u = icmp ult i32 %1, 65536
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = or disjoint i8 %i.l, -32
  store i8 %i.v, ptr %i.a, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.j, ptr %i.w, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.f, ptr %i.x, align 2
  br label %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_rawCsiHZWQiD2H9v_4rand.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.q, ptr %i.a, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.n, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.j, ptr %i.z, align 2
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.f, ptr %i.aa, align 1
  br label %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_rawCsiHZWQiD2H9v_4rand.exit

_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_rawCsiHZWQiD2H9v_4rand.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.ab = call zeroext i1 @_RNvXNvNtCs2AWtUsOyxgP_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtB6_3sys5stdio4unix6StderrENtNtCs4NRVxsYgnAr_4core3fmt5Write9write_strCsiHZWQiD2H9v_4rand(ptr align 8 %0, ptr nonnull %i.a, i64 %.sroa.0.05.i)
  ret i1 %i.ab
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvYINtNvNtCs2AWtUsOyxgP_3std2io17default_write_fmt7AdapterNtNtNtNtB9_3sys5stdio4unix6StderrENtNtCs4NRVxsYgnAr_4core3fmt5Write9write_fmtCsiHZWQiD2H9v_4rand(ptr align 8 %0, ptr %1, ptr %2) unnamed_addr #5 {
_RNvXs_NvNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_fmtQINtNvNtCs2AWtUsOyxgP_3std2io17default_write_fmt7AdapterNtNtNtNtBV_3sys5stdio4unix6StderrENtB4_12SpecWriteFmt14spec_write_fmtCsiHZWQiD2H9v_4rand.exit:
  %i.a = tail call zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr align 8 %0, ptr nonnull align 8 @6, ptr %1, ptr %2), !inline_history !7
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef { ptr, i64 } @_RNvYNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsiHZWQiD2H9v_4rand(ptr nofree readnone align 8 captures(none) %0) unnamed_addr #12 {
bb.a:
  ret { ptr, i64 } { ptr @51, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @_RNvYNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsiHZWQiD2H9v_4rand(ptr nofree readnone align 8 captures(none) %0, ptr nofree readnone align 8 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #12 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvYNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsiHZWQiD2H9v_4rand(ptr nofree writeonly sret([16 x i8]) align 8 captures(none) initializes((0, 16)) %0, ptr nofree readnone align 8 captures(none) %1) unnamed_addr #23 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @52, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define ptr @_RNvYNtNtNtNtCs2AWtUsOyxgP_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_allCsiHZWQiD2H9v_4rand(ptr %0, ptr %1, i64 %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsiHZWQiD2H9v_4rand.exit
  %.sroa.0.033 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.114, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsiHZWQiD2H9v_4rand.exit ] ; 6 uses
  %.sroa.6.032 = phi i64 [ %2, %.lr.ph ], [ %.sroa.6.112, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsiHZWQiD2H9v_4rand.exit ] ; 9 uses
  %i.h = call { i64, ptr } @_RNvXs3_NtNtNtCs2AWtUsOyxgP_3std3sys5stdio4unixNtB5_6StderrNtNtBb_2io5Write5write(ptr %0, ptr %.sroa.0.033, i64 %.sroa.6.032) ; 2 uses
  %i.i = extractvalue { i64, ptr } %i.h, 0
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 14 uses
  %i.k = trunc nuw i64 %i.i to i1
  %i.l = ptrtoint ptr %i.j to i64                 ; 6 uses
  br i1 %i.k, label %bb.c, label %bb.d

._crit_edge.loopexit:                             ; preds = %bb.j, %.split, %.split17, %.split18, %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsiHZWQiD2H9v_4rand.exit
  %.sroa.07.0.ph = phi ptr [ null, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsiHZWQiD2H9v_4rand.exit ], [ @54, %bb.d ], [ %i.j, %.split18 ], [ %i.j, %.split17 ], [ %i.j, %.split ], [ %i.j, %bb.j ]
  store ptr %i.j, ptr %i.d, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.sroa.07.0 = phi ptr [ null, %bb.a ], [ %.sroa.07.0.ph, %._crit_edge.loopexit ]
  ret ptr %.sroa.07.0

bb.c:                                             ; preds = %bb.b
  invoke void @_RINvNtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpacked11decode_reprRNtB4_6CustomNCNvMs0_B2_NtB2_4Repr4data0ECs9ROpsoYYFOX_9rand_core(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr %i.j)
          to label %bb.h unwind label %bb.o

bb.d:                                             ; preds = %bb.b
  %i.m = icmp eq ptr %i.j, null
  br i1 %i.m, label %._crit_edge.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = icmp ult i64 %.sroa.6.032, %i.l
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr %i.j, ptr %i.d, align 8
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 %i.l, i64 %.sroa.6.032, i64 %.sroa.6.032, ptr nonnull align 8 @55) #37
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.o = sub nuw i64 %.sroa.6.032, %i.l
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.033, i64 %i.l
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsiHZWQiD2H9v_4rand.exit

bb.h:                                             ; preds = %bb.c
  %i.q = load i8, ptr %i.a, align 8
  switch i8 %i.q, label %bb.i [
    i8 0, label %.split
    i8 1, label %bb.j
    i8 2, label %.split18
    i8 3, label %.split17
  ]

bb.i:                                             ; preds = %bb.h
  unreachable

.split:                                           ; preds = %bb.h
  %i.r = load i32, ptr %i.g, align 4
  %i.s = icmp eq i32 %i.r, 4
  br i1 %i.s, label %.thread, label %._crit_edge.loopexit

.split18:                                         ; preds = %bb.h
  %i.t = load ptr, ptr %i.e, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i8, ptr %i.u, align 8
  %i.w = icmp eq i8 %i.v, 35
  br i1 %i.w, label %.thread, label %._crit_edge.loopexit

.split17:                                         ; preds = %bb.h
  %i.x = load ptr, ptr %i.e, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i8, ptr %i.y, align 8
  %i.aa = icmp eq i8 %i.z, 35
  br i1 %i.aa, label %.thread, label %._crit_edge.loopexit

bb.j:                                             ; preds = %bb.h
  %i.ab = load i8, ptr %i.f, align 1
  %i.ac = icmp eq i8 %i.ab, 35
  br i1 %i.ac, label %.thread, label %._crit_edge.loopexit

.thread:                                          ; preds = %bb.j, %.split, %.split17, %.split18
  %i.ad = and i64 %i.l, 3
  switch i64 %i.ad, label %default.unreachable [
    i64 2, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsiHZWQiD2H9v_4rand.exit
    i64 3, label %bb.k
    i64 0, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsiHZWQiD2H9v_4rand.exit
    i64 1, label %bb.m
  ]

default.unreachable:                              ; preds = %.thread
  unreachable

bb.k:                                             ; preds = %.thread
  %i.ae = icmp uge ptr %i.j, inttoptr (i64 180388626432 to ptr)
  %i.af = and i64 %i.l, 1095216660480
  %.not5.i.i.i.i = icmp eq i64 %i.af, 1095216660480
  %.not.i.i.i.i = or i1 %i.ae, %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.l, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsiHZWQiD2H9v_4rand.exit

bb.l:                                             ; preds = %bb.k
  store ptr %i.j, ptr %i.d, align 8
  call fastcc void @_RNvNvNtCs4NRVxsYgnAr_4core4hint21unreachable_unchecked18precondition_checkCsiHZWQiD2H9v_4rand() #36
  unreachable

bb.m:                                             ; preds = %.thread
  %i.ag = getelementptr i8, ptr %i.j, i64 -1      ; 3 uses
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1v_4SyncEL_EECs9ROpsoYYFOX_9rand_core(ptr align 8 %i.ag)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECsiHZWQiD2H9v_4rand.exit.i.i.i.i unwind label %bb.n

common.resume:                                    ; preds = %bb.o, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.ah, %bb.n ], [ %i.aj, %bb.o ]
  resume { ptr, i32 } %common.resume.op

bb.n:                                             ; preds = %bb.m
  %i.ah = landingpad { ptr, i32 }
          cleanup
  store ptr %i.j, ptr %i.d, align 8
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr %i.ag, i64 24, i64 8) #36
  br label %common.resume

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECsiHZWQiD2H9v_4rand.exit.i.i.i.i: ; preds = %bb.m
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr %i.ag, i64 24, i64 8) #36
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsiHZWQiD2H9v_4rand.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsiHZWQiD2H9v_4rand.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECsiHZWQiD2H9v_4rand.exit.i.i.i.i, %bb.k, %.thread, %.thread, %bb.g
  %.sroa.0.114 = phi ptr [ %i.p, %bb.g ], [ %.sroa.0.033, %.thread ], [ %.sroa.0.033, %.thread ], [ %.sroa.0.033, %bb.k ], [ %.sroa.0.033, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECsiHZWQiD2H9v_4rand.exit.i.i.i.i ]
  %.sroa.6.112 = phi i64 [ %i.o, %bb.g ], [ %.sroa.6.032, %.thread ], [ %.sroa.6.032, %.thread ], [ %.sroa.6.032, %bb.k ], [ %.sroa.6.032, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECsiHZWQiD2H9v_4rand.exit.i.i.i.i ] ; 2 uses
  %i.ai = icmp eq i64 %.sroa.6.112, 0
  br i1 %i.ai, label %._crit_edge.loopexit, label %bb.b

bb.o:                                             ; preds = %bb.c
  %i.aj = landingpad { ptr, i32 }
          cleanup
  store ptr %i.j, ptr %i.d, align 8
  store i64 1, ptr %i.b, align 8
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsiHZWQiD2H9v_4rand(ptr nonnull align 8 %i.d) #38
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39
  unreachable
}

; Function Attrs: nonlazybind uwtable
define ptr @_RNvYNtNtNtNtCs2AWtUsOyxgP_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_fmtCsiHZWQiD2H9v_4rand(ptr %0, ptr %1, ptr %2) unnamed_addr #5 {
bb.a:
  %i.a = tail call ptr @_RINvNtCs2AWtUsOyxgP_3std2io17default_write_fmtNtNtNtNtB4_3sys5stdio4unix6StderrECsiHZWQiD2H9v_4rand(ptr %0, ptr %1, ptr %2)
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #24

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXs5_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr align 8, ptr align 8) unnamed_addr #5

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #6

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys4sync4once5futexNtB5_4Once4call(ptr align 4, i1 zeroext, ptr, ptr align 8, ptr align 8) unnamed_addr #3

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr, i64, ptr align 8) unnamed_addr #25

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs2AWtUsOyxgP_3std6thread5local18panic_access_error(ptr align 8) unnamed_addr #25

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr, ptr align 8, ptr, ptr) unnamed_addr #5

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr, ptr, ptr align 8) unnamed_addr #25

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #26

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1v_4SyncEL_EECs9ROpsoYYFOX_9rand_core(ptr align 8) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local11destructors10linux_like8register(ptr, ptr) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs_NtCs9ROpsoYYFOX_9rand_core2osNtB4_5OsRngNtB6_7RngCore14try_fill_bytes(ptr, ptr, i64) unnamed_addr #5

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultuNtNtCs9ROpsoYYFOX_9rand_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBP_(ptr, ptr) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr align 8) unnamed_addr #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #27

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @pthread_atfork(ptr, ptr, ptr) unnamed_addr #6

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvMNtNtCs4NRVxsYgnAr_4core3fmt2rtNtB3_8Argument11new_displaylECsjLbYUzW30kK_9getrandom(ptr sret([16 x i8]) align 8, ptr align 4) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvMNtNtCs4NRVxsYgnAr_4core3fmt2rtNtB3_8Argument11new_displayNtNtCs9ROpsoYYFOX_9rand_core5error5ErrorEB12_(ptr sret([16 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9ROpsoYYFOX_9rand_core5error5ErrorEBF_(ptr align 8) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsbvBq90rv2US_11rand_chacha4guts11init_chacha(ptr sret([48 x i8]) align 16, ptr, ptr, i64) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsbvBq90rv2US_11rand_chacha4guts11refill_wide(ptr align 16, i32, ptr) unnamed_addr #5

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #6

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64, i64 allocalign) unnamed_addr #28

; Function Attrs: inlinehint nonlazybind uwtable
declare i64 @_RINvNtNtCs4NRVxsYgnAr_4core4sync6atomic11atomic_loadjECsjLbYUzW30kK_9getrandom(ptr, i8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvXs_NtCsbvBq90rv2US_11rand_chacha6chachaINtB4_7Array64mEINtNtCs4NRVxsYgnAr_4core7convert5AsRefSmE6as_refB6_(ptr align 4) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtCsbvBq90rv2US_11rand_chacha6chachaINtB2_7Array64mENtNtCs4NRVxsYgnAr_4core7default7Default7defaultB4_(ptr sret([256 x i8]) align 4) unnamed_addr #5

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64, i64) unnamed_addr #29

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_nounwind_fmt(ptr, ptr, i1 zeroext, ptr align 8) unnamed_addr #30

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr align 8, ptr, i64) unnamed_addr #5

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh15copy_from_sliceCs9ROpsoYYFOX_9rand_core(ptr, i64, ptr, i64, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh4iterCsjLbYUzW30kK_9getrandom(ptr, i64) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #31

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_RNvNtCs2AWtUsOyxgP_3std7process5abort() unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtCs9ROpsoYYFOX_9rand_core5impls19fill_via_u32_chunks(ptr align 4, i64, ptr, i64) unnamed_addr #5

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @_RINvMs2_NtCs4NRVxsYgnAr_4core3fmtNtB6_9Arguments3newKje_Kj1_ECs9ROpsoYYFOX_9rand_core(ptr, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXNtNtCs2AWtUsOyxgP_3std2io5errorNtB2_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr align 8, ptr align 8) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs6_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source(ptr align 8) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs6_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error5cause(ptr align 8) unnamed_addr #5

; Function Attrs: inlinehint nonlazybind uwtable
declare i64 @_RNvYjNtNtCs4NRVxsYgnAr_4core3cmp3Ord3minCs9ROpsoYYFOX_9rand_core(i64, i64) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const23panic_const_div_by_zero(ptr align 8) unnamed_addr #25

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64, i64, i64, ptr align 8) unnamed_addr #25

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr allocptr captures(address), i64, i64) unnamed_addr #32

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @_RNvXs5_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE9index_mutCsbvBq90rv2US_11rand_chacha(i64, ptr, i64, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvXs0_NtCsbvBq90rv2US_11rand_chacha6chachaINtB5_7Array64mEINtNtCs4NRVxsYgnAr_4core7convert5AsMutSmE6as_mutB7_(ptr align 4) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs0_NtNtCs4NRVxsYgnAr_4core5slice4iterQSmNtNtNtNtB9_4iter6traits7collect12IntoIterator9into_iterCsbvBq90rv2US_11rand_chacha(ptr align 4, i64) unnamed_addr #5

; Function Attrs: inlinehint nonlazybind uwtable
declare align 4 ptr @_RNvXs2Q_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_7IterMutmENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbvBq90rv2US_11rand_chacha(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter3pad(ptr align 8, ptr, i64) unnamed_addr #5

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #33

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXs3_NtNtNtCs2AWtUsOyxgP_3std3sys5stdio4unixNtB5_6StderrNtNtBb_2io5Write5write(ptr, ptr, i64) unnamed_addr #5

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvNtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpacked11decode_reprRNtB4_6CustomNCNvMs0_B2_NtB2_4Repr4data0ECs9ROpsoYYFOX_9rand_core(ptr sret([16 x i8]) align 8, ptr) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #34

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #35

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold inlinehint noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { cold inlinehint noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
end_hunk_0
