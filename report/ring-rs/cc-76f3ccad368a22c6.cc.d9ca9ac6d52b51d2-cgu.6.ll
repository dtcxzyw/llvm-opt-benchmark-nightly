Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ring-rs/original/cc-76f3ccad368a22c6.cc.d9ca9ac6d52b51d2-cgu.6?download=true
inline.NumInlined: 65
inline.NumDeleted: 29
begin_hunk_0_@_RNvMNtCsiHivYpkJ4Hu_2cc4toolNtB2_4Tool6cc_env:bb.a

bb.m:                                             ; preds = %bb.l
  %i.x = extractvalue { ptr, ptr } %i.w, 0
  %i.y = extractvalue { ptr, ptr } %i.w, 1
  store ptr %i.x, ptr %i.a, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.y, ptr %i.z, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.r, %bb.m
  %i.aa = invoke align 8 ptr @_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.a)
          to label %bb.o unwind label %.loopexit  ; 2 uses

bb.o:                                             ; preds = %bb.n
  %.not3 = icmp eq ptr %i.aa, null
  br i1 %.not3, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @_RINvMNtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB3_8OsString4pushReECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.d, ptr nonnull @55, i64 1)
          to label %bb.r unwind label %.loopexit

bb.q:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.d

bb.r:                                             ; preds = %bb.p
  invoke void @_RINvMNtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB3_8OsString4pushRBA_ECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.d, ptr nonnull align 8 %i.aa)
          to label %bb.n unwind label %.loopexit

bb.s:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.t:                                             ; preds = %bb.e
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCsiHivYpkJ4Hu_2cc4toolNtB2_4Tool9with_args(ptr nofree writeonly sret([152 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1, ptr nofree readonly align 8 captures(none) %2, ptr align 8 %3, ptr align 8 %4, ptr %5, i64 %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @_RNvMNtCsiHivYpkJ4Hu_2cc4toolNtB2_4Tool13with_features(ptr sret([152 x i8]) align 8 %0, ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a, i1 zeroext false, ptr align 8 %3, ptr align 8 %4, ptr %5, i64 %6)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMNtNtNtCs3oUPovFnLWP_4core4iter8adapters7step_byINtB2_6StepByINtNtNtB8_3ops5range5RangejEE3newCsiHivYpkJ4Hu_2cc(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, i64 %1, i64 %2, i64 %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr nonnull @66, i64 27, ptr nonnull align 8 @68) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = tail call { i64, i64 } @_RNvXs6_NtNtNtNtCs3oUPovFnLWP_4core4iter8adapters7step_by12step_by_specINtNtNtBd_3ops5range5RangejEINtB7_14SpecRangeSetupB16_E5setupCsiHivYpkJ4Hu_2cc(i64 %1, i64 %2, i64 %3) #19 ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1
  %i.e = add i64 %3, -1
  store i64 %i.c, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.h, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvMNtNtNtCskt5MLIAl8nl_9hashbrown7control5group4sse2NtB2_5Group44convert_special_to_empty_and_full_to_deletedCsiHivYpkJ4Hu_2cc(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 16 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 2 uses
  %i.b = alloca [16 x i8], align 16               ; 2 uses
  %i.c = alloca [16 x i8], align 16               ; 2 uses
  %i.d = alloca [16 x i8], align 16               ; 2 uses
  %i.e = alloca [16 x i8], align 16               ; 2 uses
  %i.f = alloca [16 x i8], align 16               ; 2 uses
  %i.g = alloca [16 x i8], align 16               ; 2 uses
  %i.h = alloca [16 x i8], align 16               ; 2 uses
  call void @_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse217__mm_setzero_si128CsiHivYpkJ4Hu_2cc(ptr nonnull sret([16 x i8]) align 16 %i.h) #19
  %i.i = load <2 x i64>, ptr %i.h, align 16
  %i.j = load <2 x i64>, ptr %1, align 16
  store <2 x i64> %i.i, ptr %i.f, align 16
  store <2 x i64> %i.j, ptr %i.e, align 16
  call void @_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse214__mm_cmpgt_epi8CsiHivYpkJ4Hu_2cc(ptr nonnull sret([16 x i8]) align 16 %i.g, ptr nonnull align 16 %i.f, ptr nonnull align 16 %i.e) #19
  %i.k = load <2 x i64>, ptr %i.g, align 16
  call void @_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse213__mm_set1_epi8CsiHivYpkJ4Hu_2cc(ptr nonnull sret([16 x i8]) align 16 %i.d, i8 -128) #19
  %i.l = load <2 x i64>, ptr %i.d, align 16
  store <2 x i64> %i.k, ptr %i.b, align 16
  store <2 x i64> %i.l, ptr %i.a, align 16
  call void @_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse212__mm_or_si128CsiHivYpkJ4Hu_2cc(ptr nonnull sret([16 x i8]) align 16 %i.c, ptr nonnull align 16 %i.b, ptr nonnull align 16 %i.a) #19
  %i.m = load <2 x i64>, ptr %i.c, align 16
  store <2 x i64> %i.m, ptr %0, align 16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvMs0_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtCsiHivYpkJ4Hu_2cc6ObjectE16as_raw_mut_sliceBY_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = udiv exact i64 %i.g, 48
  %i.i = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.j = insertvalue { ptr, i64 } %i.i, i64 %i.h, 1
  ret { ptr, i64 } %i.j
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtCsiHivYpkJ4Hu_2cc6ObjectE32forget_allocation_drop_remainingBY_(ptr nofree align 8 captures(none) initializes((0, 8), (16, 24)) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub nuw i64 %i.f, %i.g
  %i.i = udiv exact i64 %i.h, 48
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.j, align 8
  store i64 0, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.k, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtCsiHivYpkJ4Hu_2cc6ObjectEEB1h_(ptr nonnull align 8 %i.a)
  %i.l = load ptr, ptr %0, align 8                ; 2 uses
  store ptr %i.l, ptr %i.b, align 8
  store ptr %i.l, ptr %i.d, align 8
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtCsiHivYpkJ4Hu_2cc6ObjectEBE_(ptr align 8 %i.c, i64 %i.i)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvMs0_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringE16as_raw_mut_sliceCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = udiv exact i64 %i.g, 24
  %i.i = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.j = insertvalue { ptr, i64 } %i.i, i64 %i.h, 1
  ret { ptr, i64 } %i.j
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs1K_NtNtCs3oUPovFnLWP_4core9core_arch3x86NtB6_7___m128i8as_i8x16CsiHivYpkJ4Hu_2cc(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 16 captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = load <2 x i64>, ptr %1, align 16
  store <2 x i64> %i.a, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner14current_memoryCsiHivYpkJ4Hu_2cc(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1, i64 %2, i64 %3) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8                ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = mul nuw i64 %i.b, %3
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  store ptr %i.f, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.2.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.sink3 = phi i64 [ 16, %bb.c ], [ 8, %bb.b ], [ 8, %bb.a ]
  %.sink = phi i64 [ %i.d, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink3
  store i64 %.sink, ptr %.sroa.3.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsiHivYpkJ4Hu_2cc(ptr align 8 %0, i64 %1, i64 %2, i64 %3) unnamed_addr #0 {
bb.a:
  %.sroa.2 = alloca i64, align 8                  ; 4 uses
  %.sroa.6 = alloca i64, align 8                  ; 2 uses
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner14current_memoryCsiHivYpkJ4Hu_2cc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %0, align 8                ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner14current_memoryCsiHivYpkJ4Hu_2cc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = mul nuw i64 %i.b, %3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  store i64 %2, ptr %.sroa.2, align 8
  br label %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner14current_memoryCsiHivYpkJ4Hu_2cc.exit

_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner14current_memoryCsiHivYpkJ4Hu_2cc.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.012 = phi ptr [ undef, %bb.a ], [ undef, %bb.b ], [ %i.f, %bb.c ] ; 2 uses
  %.sink3.i.sroa.phi = phi ptr [ %.sroa.2, %bb.a ], [ %.sroa.2, %bb.b ], [ %.sroa.6, %bb.c ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.d, %bb.c ]
  store i64 %.sink.i, ptr %.sink3.i.sroa.phi, align 8
  %.sroa.2.0..sroa.2.0..sroa.2.0..sroa.2.8. = load i64, ptr %.sroa.2, align 8 ; 5 uses
  %.not = icmp eq i64 %.sroa.2.0..sroa.2.0..sroa.2.0..sroa.2.8., 0
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner14current_memoryCsiHivYpkJ4Hu_2cc.exit
  %.sroa.6.0..sroa.6.0..sroa.6.0..sroa.6.16. = load i64, ptr %.sroa.6, align 8 ; 2 uses
  %i.g = icmp eq i64 %1, 0
  br i1 %i.g, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCsiHivYpkJ4Hu_2cc(ptr nonnull %i.h, ptr %.sroa.0.012, i64 %.sroa.2.0..sroa.2.0..sroa.2.0..sroa.2.8., i64 %.sroa.6.0..sroa.6.0..sroa.6.0..sroa.6.16.) #19
  %i.i = inttoptr i64 %2 to ptr
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.sink = phi ptr [ %i.i, %bb.e ], [ %i.n, %bb.g ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.j, align 8
  store i64 %1, ptr %0, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.k = mul nuw i64 %3, %1                       ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = tail call { ptr, i64 } @_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator6shrinkCsiHivYpkJ4Hu_2cc(ptr nonnull %i.l, ptr %.sroa.0.012, i64 %.sroa.2.0..sroa.2.0..sroa.2.0..sroa.2.8., i64 %.sroa.6.0..sroa.6.0..sroa.6.0..sroa.6.16., i64 %.sroa.2.0..sroa.2.0..sroa.2.0..sroa.2.8., i64 %i.k) #19
  %i.n = extractvalue { ptr, i64 } %i.m, 0        ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.h, label %bb.f

bb.h:                                             ; preds = %bb.g, %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner14current_memoryCsiHivYpkJ4Hu_2cc.exit, %bb.f
  %.sroa.4.0 = phi i64 [ undef, %bb.f ], [ undef, %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner14current_memoryCsiHivYpkJ4Hu_2cc.exit ], [ %i.k, %bb.g ]
  %.sroa.0.0 = phi i64 [ -1, %bb.f ], [ -1, %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner14current_memoryCsiHivYpkJ4Hu_2cc.exit ], [ %.sroa.2.0..sroa.2.0..sroa.2.0..sroa.2.8., %bb.g ]
  %i.p = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.q = insertvalue { i64, i64 } %i.p, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.q
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i64, i64 } @_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsiHivYpkJ4Hu_2cc(ptr align 8 %0, i64 %1, i64 %2, i64 %3) unnamed_addr #1 {
bb.a:
  %.sroa.2.i = alloca i64, align 8                ; 7 uses
  %.sroa.6.i = alloca i64, align 8                ; 5 uses
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %.critedge.thread, label %bb.b

.critedge.thread:                                 ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  br label %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner14current_memoryCsiHivYpkJ4Hu_2cc.exit.i

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %0, align 8                ; 3 uses
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr nonnull @69, ptr nonnull inttoptr (i64 73 to ptr), ptr nonnull align 8 @71) #21
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner14current_memoryCsiHivYpkJ4Hu_2cc.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = mul nuw i64 %i.b, %3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  store i64 %2, ptr %.sroa.2.i, align 8
  br label %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner14current_memoryCsiHivYpkJ4Hu_2cc.exit.i

_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner14current_memoryCsiHivYpkJ4Hu_2cc.exit.i: ; preds = %.critedge.thread, %bb.e, %bb.d
  %.sroa.0.012.i = phi ptr [ undef, %.critedge.thread ], [ undef, %bb.d ], [ %i.g, %bb.e ] ; 2 uses
  %.sink3.i.sroa.phi.i = phi ptr [ %.sroa.2.i, %.critedge.thread ], [ %.sroa.2.i, %bb.d ], [ %.sroa.6.i, %bb.e ]
  %.sink.i.i = phi i64 [ 0, %.critedge.thread ], [ 0, %bb.d ], [ %i.e, %bb.e ]
  store i64 %.sink.i.i, ptr %.sink3.i.sroa.phi.i, align 8
  %.sroa.2.i.0..sroa.2.i.0..sroa.2.i.0..sroa.2.0..sroa.2.0..sroa.2.8..i = load i64, ptr %.sroa.2.i, align 8 ; 5 uses
  %.not.i = icmp eq i64 %.sroa.2.i.0..sroa.2.i.0..sroa.2.i.0..sroa.2.0..sroa.2.0..sroa.2.8..i, 0
  br i1 %.not.i, label %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsiHivYpkJ4Hu_2cc.exit, label %bb.f

bb.f:                                             ; preds = %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner14current_memoryCsiHivYpkJ4Hu_2cc.exit.i
  %.sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.16..i = load i64, ptr %.sroa.6.i, align 8 ; 2 uses
  %i.h = icmp eq i64 %1, 0
  br i1 %i.h, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCsiHivYpkJ4Hu_2cc(ptr nonnull %i.i, ptr %.sroa.0.012.i, i64 %.sroa.2.i.0..sroa.2.i.0..sroa.2.i.0..sroa.2.0..sroa.2.0..sroa.2.8..i, i64 %.sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.16..i) #19
  %i.j = inttoptr i64 %2 to ptr
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %.sink.i = phi ptr [ %i.j, %bb.g ], [ %i.o, %bb.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i, ptr %i.k, align 8
  store i64 %1, ptr %0, align 8
  br label %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsiHivYpkJ4Hu_2cc.exit

bb.i:                                             ; preds = %bb.f
  %i.l = mul nuw i64 %3, %1                       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = tail call { ptr, i64 } @_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator6shrinkCsiHivYpkJ4Hu_2cc(ptr nonnull %i.m, ptr %.sroa.0.012.i, i64 %.sroa.2.i.0..sroa.2.i.0..sroa.2.i.0..sroa.2.0..sroa.2.0..sroa.2.8..i, i64 %.sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.16..i, i64 %.sroa.2.i.0..sroa.2.i.0..sroa.2.i.0..sroa.2.0..sroa.2.0..sroa.2.8..i, i64 %i.l) #19
  %i.o = extractvalue { ptr, i64 } %i.n, 0        ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsiHivYpkJ4Hu_2cc.exit, label %bb.h

_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsiHivYpkJ4Hu_2cc.exit: ; preds = %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner14current_memoryCsiHivYpkJ4Hu_2cc.exit.i, %bb.h, %bb.i
  %.sroa.4.0.i = phi i64 [ undef, %bb.h ], [ undef, %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner14current_memoryCsiHivYpkJ4Hu_2cc.exit.i ], [ %i.l, %bb.i ]
  %.sroa.0.0.i = phi i64 [ -1, %bb.h ], [ -1, %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner14current_memoryCsiHivYpkJ4Hu_2cc.exit.i ], [ %.sroa.2.i.0..sroa.2.i.0..sroa.2.i.0..sroa.2.0..sroa.2.0..sroa.2.8..i, %bb.i ]
  %i.q = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.r = insertvalue { i64, i64 } %i.q, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  ret { i64, i64 } %i.r
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i8, i8 } @_RNvMs2_NtNtNtCsaL1QbXo9JQH_3std11collections4hash3mapINtB5_7HashMapINtNtCs1xwejQucwHj_5alloc5boxed3BoxSIB14_NtNtNtBb_3ffi6os_str5OsStrEENtNtCsiHivYpkJ4Hu_2cc4tool10ToolFamilyE6insertB2e_(ptr align 8 %0, ptr align 8 %1, i64 %2, i8 %3, i8 %4) unnamed_addr #1 {
bb.a:
  %i.a = tail call { i8, i8 } @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapINtNtCs1xwejQucwHj_5alloc5boxed3BoxSIBO_NtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEENtNtCsiHivYpkJ4Hu_2cc4tool10ToolFamilyNtNtNtB1x_4hash6random11RandomStateE6insertB2c_(ptr align 8 %0, ptr align 8 %1, i64 %2, i8 %3, i8 %4)
  ret { i8, i8 } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @_RNvMs2_NtNtNtCsaL1QbXo9JQH_3std11collections4hash3mapINtB5_7HashMapINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEINtNtB18_4sync3ArcNtNtNtBb_3ffi6os_str5OsStrEE6insertCsiHivYpkJ4Hu_2cc(ptr align 8 %0, ptr %1, i64 %2, ptr %3, i64 %4) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEINtNtBS_4sync3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrENtNtNtB1L_4hash6random11RandomStateE6insertCsiHivYpkJ4Hu_2cc(ptr align 8 %0, ptr %1, i64 %2, ptr %3, i64 %4)
  ret { ptr, i64 } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @_RNvMs2_NtNtNtCsaL1QbXo9JQH_3std11collections4hash3mapINtB5_7HashMapINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEINtNtB18_4sync3ArceEE6insertCsiHivYpkJ4Hu_2cc(ptr align 8 %0, ptr %1, i64 %2, ptr %3, i64 %4) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEINtNtBS_4sync3ArceENtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE6insertCsiHivYpkJ4Hu_2cc(ptr align 8 %0, ptr %1, i64 %2, ptr %3, i64 %4)
  ret { ptr, i64 } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define i8 @_RNvMs2_NtNtNtCsaL1QbXo9JQH_3std11collections4hash3mapINtB5_7HashMapNtCsiHivYpkJ4Hu_2cc12CompilerFlagbE6insertB15_(ptr align 8 %0, ptr align 8 %1, i1 zeroext %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call i8 @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapNtCsiHivYpkJ4Hu_2cc12CompilerFlagbNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE6insertBP_(ptr align 8 %0, ptr align 8 %1, i1 zeroext %2)
  ret i8 %i.a
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEE8grow_oneCsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = tail call { i64, i64 } @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCslmXY8IYACQt_5gimli(ptr nonnull align 8 %0, i64 %i.a, i64 1, i64 8, i64 16) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 2 uses
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.b, 1
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 %i.c, i64 %i.d) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtCsiHivYpkJ4Hu_2cc6ObjectE8grow_oneBO_(ptr align 8 %0) unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = tail call { i64, i64 } @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCslmXY8IYACQt_5gimli(ptr nonnull align 8 %0, i64 %i.a, i64 1, i64 8, i64 48) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 2 uses
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.b, 1
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 %i.c, i64 %i.d) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtCsaL1QbXo9JQH_3std4path4PathE8grow_oneCsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = tail call { i64, i64 } @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCslmXY8IYACQt_5gimli(ptr nonnull align 8 %0, i64 %i.a, i64 1, i64 8, i64 16) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 2 uses
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.b, 1
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 %i.c, i64 %i.d) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecReE8grow_oneCsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = tail call { i64, i64 } @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCslmXY8IYACQt_5gimli(ptr nonnull align 8 %0, i64 %i.a, i64 1, i64 8, i64 16) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 2 uses
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.b, 1
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 %i.c, i64 %i.d) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @_RNvMs_NtCsiHivYpkJ4Hu_2cc4toolNtB4_10ToolFamily14verbose_stderr(ptr nofree readonly captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr %0, align 1
  %i.b = icmp eq i8 %i.a, 1
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvMs_NtCsiHivYpkJ4Hu_2cc4toolNtB4_10ToolFamily14warnings_flags(ptr nofree readonly captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr %0, align 1
  %i.b = icmp eq i8 %i.a, 2                       ; 2 uses
  %. = select i1 %i.b, i64 3, i64 5
  %.1 = select i1 %i.b, ptr @89, ptr @88
  %i.c = insertvalue { ptr, i64 } poison, ptr %.1, 0
  %i.d = insertvalue { ptr, i64 } %i.c, i64 %., 1
  ret { ptr, i64 } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsiHivYpkJ4Hu_2cc4toolNtB4_10ToolFamily15add_debug_flags(ptr nofree readonly captures(none) %0, ptr align 8 %1, ptr %2, i64 %3, i32 %4, i32 %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
end_hunk_0
