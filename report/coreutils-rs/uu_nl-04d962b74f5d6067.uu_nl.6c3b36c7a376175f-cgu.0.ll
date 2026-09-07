Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_nl-04d962b74f5d6067.uu_nl.6c3b36c7a376175f-cgu.0?download=true
inline.NumInlined: 663
inline.NumDeleted: 424
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXCs9i6ZclbYTs9_5uu_nlNtB2_8SettingsNtNtCs6JMX4GRUq9U_4core7default7Default7default:bb.a
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 2) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  store i16 14940, ptr %i.a, align 1
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !1360
  %i.c = tail call noundef dereferenceable_or_null(1) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef range(i64 1, 9) 1) #22, !noalias !1360 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 1) #25
  unreachable

bb.e:                                             ; preds = %bb.c
  store i8 9, ptr %i.c, align 1
  store i64 2, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 2, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 2, ptr %i.g, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.a, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 2, ptr %.sroa.55.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 6, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 129
  store i8 1, ptr %i.i, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 1, ptr %i.k, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.c, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store <4 x i64> splat (i64 1), ptr %.sroa.514.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs6JMX4GRUq9U_4core3anyNtNtCs7tKScEop1B6_5alloc6string6StringNtB2_3Any7type_idCs9i6ZclbYTs9_5uu_nl(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @4, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs6JMX4GRUq9U_4core3anyNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintNtB2_3Any7type_idCs9i6ZclbYTs9_5uu_nl(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @14, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs6JMX4GRUq9U_4core3anyjNtB2_3Any7type_idCs9i6ZclbYTs9_5uu_nl(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @5, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs6JMX4GRUq9U_4core3anyxNtB2_3Any7type_idCs9i6ZclbYTs9_5uu_nl(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @6, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs6JMX4GRUq9U_4core3anyyNtB2_3Any7type_idCs9i6ZclbYTs9_5uu_nl(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @7, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXs0_Cs9i6ZclbYTs9_5uu_nlNtB5_14NumberingStyleINtNtCs6JMX4GRUq9U_4core7convert7TryFromReE8try_from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 18 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 5 uses
  switch i64 %2, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs9i6ZclbYTs9_5uu_nl.exit [
    i64 1, label %bb.b
    i64 0, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9i6ZclbYTs9_5uu_nl.exit.thread57
  ]

bb.b:                                             ; preds = %bb.a
  %lhsc = load i8, ptr %1, align 1
  switch i8 %lhsc, label %bb.g [
    i8 97, label %bb.c
    i8 116, label %bb.d
    i8 110, label %bb.e
    i8 112, label %.thread56
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.g, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsipSpXIjCLRi_5regex5regex5bytes5RegexNtNtB13_5error5ErrorEECs9i6ZclbYTs9_5uu_nl.exit

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.h, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsipSpXIjCLRi_5regex5regex5bytes5RegexNtNtB13_5error5ErrorEECs9i6ZclbYTs9_5uu_nl.exit

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs9i6ZclbYTs9_5uu_nl.exit: ; preds = %bb.a
  %rhsc.i = load i8, ptr %1, align 1, !alias.scope !1379, !noalias !1380
  %i.i = icmp eq i8 %rhsc.i, 112
  br i1 %i.i, label %_RNvXs9_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit, label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.j, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsipSpXIjCLRi_5regex5regex5bytes5RegexNtNtB13_5error5ErrorEECs9i6ZclbYTs9_5uu_nl.exit

bb.f:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs9i6ZclbYTs9_5uu_nl.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.55.0..sroa_idx, align 8
  %.not.i11 = icmp slt i64 %2, 0
  br i1 %.not.i11, label %bb.h, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i, !prof !1381

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx41 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx41, align 8
  %.sroa.55.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.55.0..sroa_idx42, align 8
  br label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9i6ZclbYTs9_5uu_nl.exit.thread57: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx31, align 8
  %.sroa.55.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.55.0..sroa_idx32, align 8
  br label %.loopexit

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.f, %bb.g
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !1382
  %i.k = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 1, 9) 1) #22, !noalias !1382 ; 18 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.h, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9i6ZclbYTs9_5uu_nl.exit

_RNvXs9_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs9i6ZclbYTs9_5uu_nl.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.n = load i8, ptr %i.m, align 1, !alias.scope !1383, !noundef !4
  %i.o = icmp sgt i8 %i.n, -65
  br i1 %i.o, label %.thread56, label %bb.y, !prof !8

bb.h:                                             ; preds = %bb.f, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  %.sroa.4.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i ], [ 0, %bb.f ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %2) #25
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9i6ZclbYTs9_5uu_nl.exit: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr nonnull align 1 %1, i64 %2, i1 false)
  %cond79 = icmp eq i64 %2, 1
  %i.p = load i8, ptr %i.k, align 1, !alias.scope !1384, !noalias !1385 ; 2 uses
  br i1 %cond79, label %bb.i, label %thread-pre-split.i

bb.i:                                             ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9i6ZclbYTs9_5uu_nl.exit
  switch i8 %i.p, label %bb.p [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9i6ZclbYTs9_5uu_nl.exit
  switch i8 %i.p, label %bb.p [
    i8 43, label %bb.j
    i8 45, label %bb.k
  ]

bb.j:                                             ; preds = %thread-pre-split.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.r = add nsw i64 %2, -1
  br label %bb.p

bb.k:                                             ; preds = %thread-pre-split.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  %i.t = add nsw i64 %2, -1                       ; 3 uses
  %i.u = icmp samesign ult i64 %2, 17
  br i1 %i.u, label %.preheader114.i, label %.lr.ph.i

.preheader114.i:                                  ; preds = %bb.k
  %.not103137.i = icmp eq i64 %i.t, 0
  br i1 %.not103137.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph141.i

.lr.ph.i:                                         ; preds = %bb.k, %bb.n
  %.sroa.0.1136.i = phi ptr [ %i.v, %bb.n ], [ %i.s, %bb.k ] ; 2 uses
  %.sroa.26.1135.i = phi i64 [ %i.w, %bb.n ], [ %i.t, %bb.k ]
  %.sroa.084.0134.i = phi i64 [ %i.ah, %bb.n ], [ 0, %bb.k ]
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i, i64 1
  %i.w = add nsw i64 %.sroa.26.1135.i, -1         ; 2 uses
  %i.x = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i, i64 10) ; 2 uses
  %i.y = extractvalue { i64, i1 } %i.x, 0
  %i.z = extractvalue { i64, i1 } %i.x, 1
  br i1 %i.z, label %.loopexit, label %bb.l, !prof !12

bb.l:                                             ; preds = %.lr.ph.i
  %i.aa = load i8, ptr %.sroa.0.1136.i, align 1, !alias.scope !1384, !noalias !1385, !noundef !4
  %i.ab = zext i8 %i.aa to i32
  %i.ac = add nsw i32 %i.ab, -48                  ; 2 uses
  %i.ad = icmp ult i32 %i.ac, 10
  br i1 %i.ad, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.ae = zext nneg i32 %i.ac to i64
  %i.af = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.y, i64 %i.ae) ; 2 uses
  %i.ag = extractvalue { i64, i1 } %i.af, 1
  br i1 %i.ag, label %.loopexit, label %bb.n, !prof !12

bb.n:                                             ; preds = %bb.m
  %i.ah = extractvalue { i64, i1 } %i.af, 0       ; 2 uses
  %.not102.i = icmp eq i64 %i.w, 0
  br i1 %.not102.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

.lr.ph141.i:                                      ; preds = %.preheader114.i, %bb.o
  %.sroa.0.2140.i = phi ptr [ %i.ao, %bb.o ], [ %i.s, %.preheader114.i ] ; 2 uses
  %.sroa.26.2139.i = phi i64 [ %i.an, %bb.o ], [ %i.t, %.preheader114.i ]
  %.sroa.084.2138.i = phi i64 [ %i.aq, %bb.o ], [ 0, %.preheader114.i ]
  %i.ai = load i8, ptr %.sroa.0.2140.i, align 1, !alias.scope !1384, !noalias !1385, !noundef !4
  %i.aj = zext i8 %i.ai to i32
  %i.ak = add nsw i32 %i.aj, -48                  ; 2 uses
  %i.al = icmp ult i32 %i.ak, 10
  br i1 %i.al, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %.lr.ph141.i
  %i.am = mul i64 %.sroa.084.2138.i, 10
  %i.an = add nsw i64 %.sroa.26.2139.i, -1        ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i, i64 1
  %i.ap = zext nneg i32 %i.ak to i64
  %i.aq = sub i64 %i.am, %i.ap                    ; 2 uses
  %.not103.i = icmp eq i64 %i.an, 0
  br i1 %.not103.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph141.i

bb.p:                                             ; preds = %bb.i, %bb.j, %thread-pre-split.i
  %.sroa.26.0.i = phi i64 [ %i.r, %bb.j ], [ %2, %thread-pre-split.i ], [ %2, %bb.i ] ; 4 uses
  %.sroa.0.0.i14 = phi ptr [ %i.q, %bb.j ], [ %i.k, %thread-pre-split.i ], [ %i.k, %bb.i ] ; 2 uses
  %i.ar = icmp samesign ult i64 %.sroa.26.0.i, 16
  br i1 %i.ar, label %.preheader.i, label %.preheader111.i

.preheader.i:                                     ; preds = %bb.p
  %.not105146.i = icmp eq i64 %.sroa.26.0.i, 0
  br i1 %.not105146.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.preheader111.i:                                  ; preds = %bb.p, %bb.s
  %.sroa.0.3145.i = phi ptr [ %i.as, %bb.s ], [ %.sroa.0.0.i14, %bb.p ] ; 2 uses
  %.sroa.26.3144.i = phi i64 [ %i.at, %bb.s ], [ %.sroa.26.0.i, %bb.p ]
  %.sroa.084.3143.i = phi i64 [ %i.be, %bb.s ], [ 0, %bb.p ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i, i64 1
  %i.at = add nsw i64 %.sroa.26.3144.i, -1        ; 2 uses
  %i.au = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i, i64 10) ; 2 uses
  %i.av = extractvalue { i64, i1 } %i.au, 0
  %i.aw = extractvalue { i64, i1 } %i.au, 1
  br i1 %i.aw, label %.loopexit, label %bb.q, !prof !12

bb.q:                                             ; preds = %.preheader111.i
  %i.ax = load i8, ptr %.sroa.0.3145.i, align 1, !alias.scope !1384, !noalias !1385, !noundef !4
  %i.ay = zext i8 %i.ax to i32
  %i.az = add nsw i32 %i.ay, -48                  ; 2 uses
  %i.ba = icmp ult i32 %i.az, 10
  br i1 %i.ba, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %bb.q
  %i.bb = zext nneg i32 %i.az to i64
  %i.bc = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.av, i64 %i.bb) ; 2 uses
  %i.bd = extractvalue { i64, i1 } %i.bc, 1
  br i1 %i.bd, label %.loopexit, label %bb.s, !prof !12

bb.s:                                             ; preds = %bb.r
  %i.be = extractvalue { i64, i1 } %i.bc, 0       ; 2 uses
  %.not104.i = icmp eq i64 %i.at, 0
  br i1 %.not104.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.preheader111.i

.lr.ph150.i:                                      ; preds = %.preheader.i, %bb.t
  %.sroa.0.4149.i = phi ptr [ %i.bl, %bb.t ], [ %.sroa.0.0.i14, %.preheader.i ] ; 2 uses
  %.sroa.26.4148.i = phi i64 [ %i.bk, %bb.t ], [ %.sroa.26.0.i, %.preheader.i ]
  %.sroa.084.4147.i = phi i64 [ %i.bn, %bb.t ], [ 0, %.preheader.i ]
  %i.bf = load i8, ptr %.sroa.0.4149.i, align 1, !alias.scope !1384, !noalias !1385, !noundef !4
  %i.bg = zext i8 %i.bf to i32
  %i.bh = add nsw i32 %i.bg, -48                  ; 2 uses
  %i.bi = icmp ult i32 %i.bh, 10
  br i1 %i.bi, label %bb.t, label %.loopexit

bb.t:                                             ; preds = %.lr.ph150.i
  %i.bj = mul i64 %.sroa.084.4147.i, 10
  %i.bk = add nsw i64 %.sroa.26.4148.i, -1        ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i, i64 1
  %i.bm = zext nneg i32 %i.bh to i64
  %i.bn = add i64 %i.bj, %i.bm                    ; 2 uses
  %.not105.i = icmp eq i64 %i.bk, 0
  br i1 %.not105.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.loopexit:                                        ; preds = %.lr.ph.i, %bb.m, %bb.l, %.lr.ph141.i, %.preheader111.i, %bb.q, %bb.r, %.lr.ph150.i, %bb.i, %bb.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9i6ZclbYTs9_5uu_nl.exit.thread57
  %.ph71 = phi ptr [ %i.k, %.preheader111.i ], [ %i.k, %.lr.ph141.i ], [ %i.k, %.lr.ph150.i ], [ %i.k, %bb.i ], [ inttoptr (i64 1 to ptr), %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9i6ZclbYTs9_5uu_nl.exit.thread57 ], [ %i.k, %bb.i ], [ %i.k, %bb.r ], [ %i.k, %bb.q ], [ %i.k, %bb.l ], [ %i.k, %bb.m ], [ %i.k, %.lr.ph.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph71, i64 noundef %2) #21
  %i.bo = load i8, ptr %i.c, align 8, !range !14, !noundef !4
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.w, label %bb.x

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit: ; preds = %bb.n, %bb.o, %bb.s, %bb.t, %.preheader.i, %.preheader114.i
  %.sroa.1520.0 = phi i64 [ %i.aq, %bb.o ], [ 0, %.preheader114.i ], [ %i.bn, %bb.t ], [ 0, %.preheader.i ], [ %i.be, %bb.s ], [ %i.ah, %bb.n ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs9i6ZclbYTs9_5uu_nl(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef %.sroa.1520.0) #22
  br label %bb.u

bb.u:                                             ; preds = %bb.x, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit
  %i.bq = phi ptr [ %.ph71, %bb.x ], [ %i.k, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 32, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.br = icmp eq i64 %2, 0
  br i1 %i.br, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs9i6ZclbYTs9_5uu_nl.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bq, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1386
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs9i6ZclbYTs9_5uu_nl.exit

bb.w:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %2, ptr %i.b, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.ph71, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %2, ptr %.sroa.8.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs9i6ZclbYTs9_5uu_nl(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 32, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs9i6ZclbYTs9_5uu_nl.exit

bb.x:                                             ; preds = %.loopexit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bt = load double, ptr %i.bs, align 8, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs9i6ZclbYTs9_5uu_nl(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, double noundef %i.bt) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.u

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs9i6ZclbYTs9_5uu_nl.exit: ; preds = %bb.v, %bb.u, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsipSpXIjCLRi_5regex5regex5bytes5RegexNtNtB13_5error5ErrorEECs9i6ZclbYTs9_5uu_nl.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsipSpXIjCLRi_5regex5regex5bytes5RegexNtNtB13_5error5ErrorEECs9i6ZclbYTs9_5uu_nl.exit: ; preds = %bb.ac, %bb.ad, %bb.ab, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs9i6ZclbYTs9_5uu_nl.exit, %bb.e, %bb.d, %bb.c
  ret void

.thread56:                                        ; preds = %bb.b, %_RNvXs9_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.bv = add i64 %2, -1
  call void @_RNvMs3_NtNtCsipSpXIjCLRi_5regex5regex5bytesNtB5_5Regex3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bu, i64 noundef %i.bv) #22
  %i.bw = load ptr, ptr %i.f, align 8, !noundef !4
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.ac, label %bb.z

bb.y:                                             ; preds = %_RNvXs9_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit
  tail call void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef 1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #23
  unreachable

bb.z:                                             ; preds = %.thread56
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !1387
  %i.by = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef range(i64 1, 9) 8) #22, !noalias !1387 ; 3 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.aa, label %bb.ab, !prof !12

bb.aa:                                            ; preds = %bb.z
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #25, !noalias !1387
  unreachable

bb.ab:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.by, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.by, ptr %i.cb, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsipSpXIjCLRi_5regex5regex5bytes5RegexNtNtB13_5error5ErrorEECs9i6ZclbYTs9_5uu_nl.exit

bb.ac:                                            ; preds = %.thread56
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 22) #22
  %i.cc = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val.i16 = load i64, ptr %i.cc, align 8, !range !9, !noundef !4 ; 2 uses
  %i.cd = icmp sgt i64 %.val.i16, 0
  br i1 %i.cd, label %bb.ad, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsipSpXIjCLRi_5regex5regex5bytes5RegexNtNtB13_5error5ErrorEECs9i6ZclbYTs9_5uu_nl.exit

bb.ad:                                            ; preds = %bb.ac
  %i.ce = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.val1.i17 = load ptr, ptr %i.ce, align 8, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i17, i64 noundef %.val.i16, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1388
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsipSpXIjCLRi_5regex5regex5bytes5RegexNtNtB13_5error5ErrorEECs9i6ZclbYTs9_5uu_nl.exit
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvXs1M_NtCs7tKScEop1B6_5alloc6stringxNtB6_12SpecToString14spec_to_string(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, i64 %.0.val) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 12 uses
  %i.b = alloca [19 x i8], align 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = icmp slt i64 %.0.val, 0
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !4
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef dereferenceable_or_null(19) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 19, i64 noundef range(i64 1, 9) 1) #22, !noalias !1397 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9i6ZclbYTs9_5uu_nl.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 19) #25
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9i6ZclbYTs9_5uu_nl.exit: ; preds = %bb.b
  store i64 19, ptr %i.a, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.511.0..sroa_idx, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.f = tail call noundef dereferenceable_or_null(20) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 20, i64 noundef range(i64 1, 9) 1) #22, !noalias !1398 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9i6ZclbYTs9_5uu_nl.exit13

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 20) #25
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9i6ZclbYTs9_5uu_nl.exit13: ; preds = %bb.d
  store i64 20, ptr %i.a, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1399)
  store i8 45, ptr %i.f, align 1, !noalias !1399
  store i64 1, ptr %.sroa.55.0..sroa_idx, align 8, !alias.scope !1399
  %i.h = sub i64 0, %.0.val
  br label %bb.f

bb.f:                                             ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9i6ZclbYTs9_5uu_nl.exit13, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9i6ZclbYTs9_5uu_nl.exit
  %i.i = phi ptr [ %i.f, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9i6ZclbYTs9_5uu_nl.exit13 ], [ %i.d, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9i6ZclbYTs9_5uu_nl.exit ]
  %i.j = phi i64 [ 20, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9i6ZclbYTs9_5uu_nl.exit13 ], [ 19, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9i6ZclbYTs9_5uu_nl.exit ]
  %i.k = phi i64 [ 1, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9i6ZclbYTs9_5uu_nl.exit13 ], [ 0, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9i6ZclbYTs9_5uu_nl.exit ] ; 4 uses
  %.sroa.012.0 = phi i64 [ %i.h, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9i6ZclbYTs9_5uu_nl.exit13 ], [ %.0.val, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9i6ZclbYTs9_5uu_nl.exit ]
  %i.l = call { ptr, i64 } @_RNvMsf_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impy4__fmt(i64 noundef %.sroa.012.0, ptr noalias nofree noundef nonnull %i.b, i64 noundef 19) #22 ; 2 uses
  %i.m = extractvalue { ptr, i64 } %i.l, 0        ; 2 uses
  %i.n = extractvalue { ptr, i64 } %i.l, 1        ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1400)
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.p = sub nuw nsw i64 %i.j, %i.k
  %i.q = icmp ugt i64 %i.n, %i.p
  br i1 %i.q, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs9i6ZclbYTs9_5uu_nl.exit.thread.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs9i6ZclbYTs9_5uu_nl.exit.i, !prof !12

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs9i6ZclbYTs9_5uu_nl.exit.thread.i: ; preds = %bb.f
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9i6ZclbYTs9_5uu_nl(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.k, i64 noundef %i.n, i64 noundef 1, i64 noundef 1) #22
  %i.r = load i64, ptr %i.o, align 8, !alias.scope !1400, !noundef !4 ; 2 uses
  %i.s = icmp sgt i64 %i.r, -1
  call void @llvm.assume(i1 %i.s)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !1400
  br label %bb.g

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs9i6ZclbYTs9_5uu_nl.exit.i: ; preds = %bb.f
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs9i6ZclbYTs9_5uu_nl.exit, label %bb.g

bb.g:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs9i6ZclbYTs9_5uu_nl.exit.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs9i6ZclbYTs9_5uu_nl.exit.thread.i
  %i.t = phi ptr [ %.pre, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs9i6ZclbYTs9_5uu_nl.exit.thread.i ], [ %i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs9i6ZclbYTs9_5uu_nl.exit.i ]
  %i.u = phi i64 [ %i.r, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs9i6ZclbYTs9_5uu_nl.exit.thread.i ], [ %i.k, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs9i6ZclbYTs9_5uu_nl.exit.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr nonnull readonly align 1 %i.m, i64 %i.n, i1 false), !noalias !1400
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs9i6ZclbYTs9_5uu_nl.exit

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs9i6ZclbYTs9_5uu_nl.exit: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs9i6ZclbYTs9_5uu_nl.exit.i, %bb.g
  %i.w = phi i64 [ %i.u, %bb.g ], [ %i.k, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs9i6ZclbYTs9_5uu_nl.exit.i ]
  %i.x = add i64 %i.w, %i.n
  store i64 %i.x, ptr %i.o, align 8, !alias.scope !1400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs9i6ZclbYTs9_5uu_nl(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %.val = load i8, ptr %i.a, align 1, !range !15, !noundef !4 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs9i6ZclbYTs9_5uu_nl, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs9i6ZclbYTs9_5uu_nl.198, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext) #22
  ret i1 %i.d
end_hunk_0
