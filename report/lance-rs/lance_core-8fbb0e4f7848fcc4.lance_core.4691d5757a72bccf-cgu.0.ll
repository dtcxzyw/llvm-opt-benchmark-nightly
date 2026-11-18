Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_core-8fbb0e4f7848fcc4.lance_core.4691d5757a72bccf-cgu.0?download=true
inline.NumInlined: 10875
inline.NumDeleted: 4857
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 71
begin_hunk_0_@_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set4ItermEENtNtNtB8_6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core:bb.a

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted14.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !26279
  br label %bb.c

._crit_edge.i.i.i:                                ; preds = %bb.c
  store ptr %i.k, ptr %i.f, align 8, !alias.scope !26279
  store ptr %i.j, ptr %0, align 8, !alias.scope !26279
  br label %._crit_edge19.i.i.i

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.g = phi ptr [ %.promoted14.i.i.i, %.lr.ph.i.i.i ], [ %i.k, %bb.c ] ; 2 uses
  %i.h = phi ptr [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.j, %bb.c ]
  %.val10.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !26279
  %i.i = icmp sgt <16 x i8> %.val10.i.i.i, splat (i8 -1)
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -64 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.i to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %bb.c, label %._crit_edge.i.i.i

._crit_edge19.i.i.i:                              ; preds = %bb.b, %._crit_edge.i.i.i
  %i.l = phi ptr [ %i.j, %._crit_edge.i.i.i ], [ %.promoted.i.i.i, %bb.b ]
  %.lcssa.i.i.i = phi i16 [ %.cast.i.i.i, %._crit_edge.i.i.i ], [ %i.e, %bb.b ] ; 3 uses
  %i.m = add i16 %.lcssa.i.i.i, -1
  %i.n = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.o = zext nneg i16 %i.n to i64
  %i.p = and i16 %i.m, %.lcssa.i.i.i
  store i16 %i.p, ptr %i.d, align 8, !alias.scope !26279
  %i.q = sub nsw i64 0, %i.o
  %i.r = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.q
  %i.s = add i64 %i.b, -1
  store i64 %i.s, ptr %i.a, align 8, !alias.scope !26277
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !noundef !48
  br label %_RNvXsl_NtNtNtCsgczF5crJ4sT_3std11collections4hash3setINtB5_4ItermENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit.thread

_RNvXsl_NtNtNtCsgczF5crJ4sT_3std11collections4hash3setINtB5_4ItermENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit.thread: ; preds = %bb.a, %._crit_edge19.i.i.i
  %.sroa.3.0 = phi i32 [ %i.u, %._crit_edge19.i.i.i ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i32 [ 1, %._crit_edge19.i.i.i ], [ 0, %bb.a ]
  %i.v = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.w = insertvalue { i32, i32 } %i.v, i32 %.sroa.3.0, 1
  ret { i32, i32 } %i.w
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set4ItermEENtNtNtB8_6traits8iterator8Iterator9size_hintCs63DIHKhvmTb_10lance_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #7 !guid !26282 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load i64, ptr %i.a, align 8, !noundef !48 ; 2 uses
  store i64 %.val, ptr %0, align 8, !alias.scope !26283
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.b, align 8, !alias.scope !26283
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val, ptr %i.c, align 8, !alias.scope !26283
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @_RNvXsa_NtCs2bHstFFhpHt_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCscI6d9CVNmLh_4core5error5Error6source(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0) unnamed_addr #35 !guid !26284 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !104, !noundef !48
  switch i64 %i.a, label %default.unreachable2 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.m
    i64 5, label %bb.m
    i64 6, label %bb.m
    i64 7, label %bb.m
    i64 8, label %bb.f
    i64 9, label %bb.m
    i64 10, label %bb.g
    i64 11, label %bb.m
    i64 12, label %bb.h
    i64 13, label %bb.i
    i64 14, label %bb.m
    i64 15, label %bb.j
    i64 16, label %bb.k
    i64 17, label %bb.l
    i64 18, label %bb.m
  ]

default.unreachable2:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !48, !noundef !48
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !48, !noundef !48
  br label %bb.m

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !48, !noundef !48
  br label %bb.m

bb.f:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !48, !noundef !48
  br label %bb.m

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !48, !noundef !48
  br label %bb.m

bb.h:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !48, !noundef !48
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !48, !align !75, !noundef !48
  br label %bb.m

bb.i:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !48, !noundef !48
  br label %bb.m

bb.j:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !48, !noundef !48
  br label %bb.m

bb.k:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load i64, ptr %i.u, align 8, !noundef !48
  %.not = icmp eq i64 %i.v, 0
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !48
  %.sroa.0.1 = select i1 %.not, ptr null, ptr %i.x
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !48, !noundef !48
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.k, %bb.l, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.21.0 = phi ptr [ @1143, %bb.b ], [ @1035, %bb.c ], [ @969, %bb.d ], [ @1145, %bb.e ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ @1147, %bb.f ], [ undef, %bb.a ], [ @822, %bb.g ], [ undef, %bb.a ], [ %i.p, %bb.h ], [ @1149, %bb.i ], [ undef, %bb.a ], [ @1149, %bb.j ], [ @1149, %bb.k ], [ @1149, %bb.l ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.c, %bb.b ], [ %i.e, %bb.c ], [ %i.f, %bb.d ], [ %i.h, %bb.e ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ %i.j, %bb.f ], [ null, %bb.a ], [ %i.l, %bb.g ], [ null, %bb.a ], [ %i.n, %bb.h ], [ %i.r, %bb.i ], [ null, %bb.a ], [ %i.t, %bb.j ], [ %.sroa.0.1, %bb.k ], [ %i.aa, %bb.l ], [ null, %bb.a ]
  %i.ab = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.ac = insertvalue { ptr, ptr } %i.ab, ptr %.sroa.21.0, 1
  ret { ptr, ptr } %i.ac
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsa_NtCs3PfUT229lOd_12object_store4pathNtB5_4PathNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #8 !guid !26285 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1150, i64 noundef 4, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1151, i64 noundef 3, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @73)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneBL_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(address, read_provenance) %.8.val, i64 %.16.val) unnamed_addr #0 personality ptr @rust_eh_personality !guid !26292 {
bb.a:
  %i.a = alloca [192 x i8], align 8               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !26293
  %i.c = mul nuw nsw i64 %.16.val, 192            ; 2 uses
  %i.d = icmp eq i64 %.16.val, 0
  br i1 %i.d, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs63DIHKhvmTb_10lance_core.exit.thread.i, label %bb.b

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs63DIHKhvmTb_10lance_core.exit.thread.i: ; preds = %bb.a
  store i64 0, ptr %i.b, align 8, !noalias !26293
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8, !noalias !26293
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBQ_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !26294, !inline_history !26291
  %i.g = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef range(i64 1, 9) 8) #65, !noalias !26294, !inline_history !26291 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %.lr.ph.preheader.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.c) #68, !noalias !26293, !inline_history !26291
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.b
  store i64 %.16.val, ptr %i.b, align 8, !noalias !26293
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.g, ptr %i.i, align 8, !noalias !26293
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %.sroa.012.023.i = phi ptr [ %i.l, %bb.d ], [ %.8.val, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.7.022.i = phi i64 [ %i.k, %bb.d ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %1, %bb.d ], [ %.16.val, %.lr.ph.preheader.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26293
  invoke fastcc void @_RNvXst_NtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB5_5FieldNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(192) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) %.sroa.012.023.i)
          to label %bb.d unwind label %bb.f, !noalias !26295, !inline_history !26291

bb.d:                                             ; preds = %.lr.ph.i
  %i.k = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 192
  %1 = add nsw i64 %.sroa.10.021.i, -1            ; 2 uses
  %i.m = getelementptr inbounds nuw [192 x i8], ptr %i.g, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.m, ptr noundef nonnull align 8 dereferenceable(192) %i.a, i64 192, i1 false), !noalias !26295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26293
  %i.n = icmp eq i64 %1, 0
  br i1 %i.n, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBQ_.exit, label %.lr.ph.i

bb.e:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !26295, !inline_history !26291
  unreachable

bb.f:                                             ; preds = %.lr.ph.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.j, align 8, !noalias !26293
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEEB1e_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #69
          to label %bb.g unwind label %bb.e, !noalias !26295, !inline_history !26291

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBQ_.exit: ; preds = %bb.d, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs63DIHKhvmTb_10lance_core.exit.thread.i
  %2 = phi ptr [ %i.f, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs63DIHKhvmTb_10lance_core.exit.thread.i ], [ %i.j, %bb.d ]
  store i64 %.16.val, ptr %2, align 8, !noalias !26293
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !26296
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !26293
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsa_NtCs63DIHKhvmTb_10lance_core5errorNtB5_5ErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtNtCskAO0uQb8M5a_5prost5error11DecodeErrorE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !26299 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !noalias !26300
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65
  %i.b = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #65 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNtCskAO0uQb8M5a_5prost5error11DecodeErrorE3newCs63DIHKhvmTb_10lance_core.exit, !prof !64

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #68
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskAO0uQb8M5a_5prost5error11DecodeErrorECs63DIHKhvmTb_10lance_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #69
  resume { ptr, i32 } %i.d

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNtCskAO0uQb8M5a_5prost5error11DecodeErrorE3newCs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.a
  store ptr %1, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @1153, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %2, ptr %i.g, align 8
  store i8 17, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsa_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8TimeUnitNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #8 !guid !26301 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !76, !noundef !48 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsa_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8TimeUnitNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXsa_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8TimeUnitNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt.2371, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsb_NtCs40k4W9msRzi_5alloc6borrowINtB5_3CoweENtNtCscI6d9CVNmLh_4core3fmt7Display3fmtCs63DIHKhvmTb_10lance_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !26302 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !48, !noundef !48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !48
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCscI6d9CVNmLh_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsb_NtCs63DIHKhvmTb_10lance_core5errorNtB5_5ErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtNtCskAO0uQb8M5a_5prost5error11EncodeErrorE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !26303 {
bb.a:
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65
  %i.a = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #65 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit, !prof !64

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #68
  unreachable

_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store i64 %1, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @1159, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %3, ptr %i.f, align 8
  store i8 17, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXsb_NtNtCs63DIHKhvmTb_10lance_core5utils7testingNtB5_16ProxyObjectStoreNtCs3PfUT229lOd_12object_store11ObjectStore10get_ranges(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 576460752303423488) %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !26306 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %3, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 0, ptr %i.e, align 8
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !26307
  %i.f = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !26307 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvXsb_NtNtCs63DIHKhvmTb_10lance_core5utils7testingNtBM_16ProxyObjectStoreNtCs3PfUT229lOd_12object_store11ObjectStore10get_ranges0E3newBQ_.exit, !prof !64

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #68
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXsb_NtNtCs63DIHKhvmTb_10lance_core5utils7testingNtBJ_16ProxyObjectStoreNtCs3PfUT229lOd_12object_store11ObjectStore10get_ranges0EBN_(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #69
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.h

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvXsb_NtNtCs63DIHKhvmTb_10lance_core5utils7testingNtBM_16ProxyObjectStoreNtCs3PfUT229lOd_12object_store11ObjectStore10get_ranges0E3newBQ_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = insertvalue { ptr, ptr } poison, ptr %i.f, 0
  %i.k = insertvalue { ptr, ptr } %i.j, ptr @1160, 1
  ret { ptr, ptr } %i.k
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXsb_NtNtCs63DIHKhvmTb_10lance_core5utils7testingNtB5_16ProxyObjectStoreNtCs3PfUT229lOd_12object_store11ObjectStore11rename_opts(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias noundef align 8 %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality !guid !26310 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %0, ptr %i.b, align 8
  store ptr %3, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = zext i1 %4 to i8
  store i8 %i.d, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %2, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i8 0, ptr %i.g, align 8
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !26311
  %i.h = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !26311 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvXsb_NtNtCs63DIHKhvmTb_10lance_core5utils7testingNtBM_16ProxyObjectStoreNtCs3PfUT229lOd_12object_store11ObjectStore11rename_opts0E3newBQ_.exit, !prof !64

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #68
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXsb_NtNtCs63DIHKhvmTb_10lance_core5utils7testingNtBJ_16ProxyObjectStoreNtCs3PfUT229lOd_12object_store11ObjectStore11rename_opts0EBN_(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #69
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.j

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvXsb_NtNtCs63DIHKhvmTb_10lance_core5utils7testingNtBM_16ProxyObjectStoreNtCs3PfUT229lOd_12object_store11ObjectStore11rename_opts0E3newBQ_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = insertvalue { ptr, ptr } poison, ptr %i.h, 0
  %i.m = insertvalue { ptr, ptr } %i.l, ptr @1161, 1
  ret { ptr, ptr } %i.m
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXsb_NtNtCs63DIHKhvmTb_10lance_core5utils7testingNtB5_16ProxyObjectStoreNtCs3PfUT229lOd_12object_store11ObjectStore13delete_stream(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !26314 {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_0
begin_hunk_1_@_RNvXsq_NtCs63DIHKhvmTb_10lance_core5errorNtB5_14CloneableErrorNtNtCscI6d9CVNmLh_4core5clone5Clone5clone:bb.a

bb.v:                                             ; preds = %_RNvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB5_5Error12is_not_found.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !26821
  store i64 0, ptr %i.c, align 8, !noalias !26821
  %.sroa.42.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i17, align 8, !noalias !26821
  %.sroa.53.0..sroa_idx.i18 = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i18, align 8, !noalias !26821
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !26821
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 1610612768, ptr %i.aq, align 8, !noalias !26821
  %.sroa.4.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i19, align 4, !noalias !26821
  %.sroa.5.0..sroa_idx.i20 = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i20, align 2, !noalias !26821
  store ptr %i.c, ptr %i.b, align 8, !noalias !26821
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @9, ptr %i.ar, align 8, !noalias !26821
  %i.as = getelementptr inbounds nuw i8, ptr %.val2, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !invariant.load !48, !noalias !26822, !nonnull !48
  %i.au = invoke noundef zeroext i1 %i.at(ptr noundef nonnull %.val, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNvXsm_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtBM_3fmt7Display3fmtCs63DIHKhvmTb_10lance_core.exit.i unwind label %bb.w, !noalias !26821, !inline_history !142

bb.w:                                             ; preds = %bb.y, %bb.v
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26823)
  %.val.i.i21 = load i64, ptr %i.c, align 8, !alias.scope !26823, !noalias !26821 ; 2 uses
  %i.aw = icmp eq i64 %.val.i.i21, 0
  br i1 %i.aw, label %common.resume, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.val1.i.i22 = load ptr, ptr %.sroa.42.0..sroa_idx.i17, align 8, !alias.scope !26823, !noalias !26821, !nonnull !48, !noundef !48
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i22, i64 noundef %.val.i.i21, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !26824
  br label %common.resume

_RNvXsm_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtBM_3fmt7Display3fmtCs63DIHKhvmTb_10lance_core.exit.i: ; preds = %bb.v
  br i1 %i.au, label %bb.y, label %_RNvXsC_NtCs40k4W9msRzi_5alloc6stringINtNtB7_5boxed3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtBV_6marker4SyncNtB1s_4SendEL_ENtB5_12SpecToString14spec_to_stringCs63DIHKhvmTb_10lance_core.exit, !prof !51

bb.y:                                             ; preds = %_RNvXsm_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtBM_3fmt7Display3fmtCs63DIHKhvmTb_10lance_core.exit.i
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1049, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @367, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1051) #68
          to label %.noexc.i24 unwind label %bb.w, !noalias !26821

.noexc.i24:                                       ; preds = %bb.y
  unreachable

_RNvXsC_NtCs40k4W9msRzi_5alloc6stringINtNtB7_5boxed3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtBV_6marker4SyncNtB1s_4SendEL_ENtB5_12SpecToString14spec_to_stringCs63DIHKhvmTb_10lance_core.exit: ; preds = %_RNvXsm_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtBM_3fmt7Display3fmtCs63DIHKhvmTb_10lance_core.exit.i
  %.sroa.055.0.copyload = load i64, ptr %i.c, align 8 ; 3 uses
  %.sroa.456.0.copyload = load ptr, ptr %.sroa.42.0..sroa_idx.i17, align 8 ; 3 uses
  %.sroa.557.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx.i18, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !26821
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !26821
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !26825
  %i.ax = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !26825 ; 5 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.z, label %_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error2ioNtNtCs40k4W9msRzi_5alloc6string6StringEB8_.exit, !prof !64

bb.z:                                             ; preds = %_RNvXsC_NtCs40k4W9msRzi_5alloc6stringINtNtB7_5boxed3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtBV_6marker4SyncNtB1s_4SendEL_ENtB5_12SpecToString14spec_to_stringCs63DIHKhvmTb_10lance_core.exit
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #68
          to label %.noexc.i26 unwind label %bb.aa, !noalias !26826

.noexc.i26:                                       ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = icmp eq i64 %.sroa.055.0.copyload, 0
  br i1 %i.ba, label %common.resume, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.456.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.456.0.copyload, i64 noundef %.sroa.055.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !26827
  br label %common.resume

_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error2ioNtNtCs40k4W9msRzi_5alloc6string6StringEB8_.exit: ; preds = %_RNvXsC_NtCs40k4W9msRzi_5alloc6stringINtNtB7_5boxed3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtBV_6marker4SyncNtB1s_4SendEL_ENtB5_12SpecToString14spec_to_stringCs63DIHKhvmTb_10lance_core.exit
  store i64 %.sroa.055.0.copyload, ptr %i.ax, align 8, !noalias !26826
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %.sroa.456.0.copyload, ptr %.sroa.5.0..sroa_idx2.i, align 8, !noalias !26826
  %.sroa.6.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i64 %.sroa.557.0.copyload, ptr %.sroa.6.0..sroa_idx4.i, align 8, !noalias !26826
  store i8 17, ptr %0, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %.sroa.451.0..sroa_idx, align 8
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @61, ptr %.sroa.552.0..sroa_idx, align 8
  br label %bb.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #8 !guid !26828 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !48, !noundef !48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !48
  %i.e = tail call noundef zeroext i1 @_RNvXsh_NtCscI6d9CVNmLh_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCskAO0uQb8M5a_5prost5errorNtB5_11EncodeErrorNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #8 !guid !26829 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1283, i64 noundef 11, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1284, i64 noundef 8, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @971, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1285, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @96)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXst_NtCs63DIHKhvmTb_10lance_core5errorNtB5_24CommitStatusUnknownErrorNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #8 !guid !26830 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1308, i64 noundef 24, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1063, i64 noundef 7, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @711, ptr noalias noundef nonnull readonly captures(address, read_provenance) @802, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @799)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXst_NtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB5_5FieldNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(192) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %1) unnamed_addr #8 personality ptr @rust_eh_personality !guid !26845 {
bb.a:
  %i.a = alloca [192 x i8], align 8               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.j = load <2 x i32>, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k)
          to label %bb.d unwind label %bb.c

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core9datatypes11LogicalTypeEBF_.exit: ; preds = %bb.f, %bb.e, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %i.n, %bb.c ], [ %.pn, %bb.e ], [ %.pn, %bb.f ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26846)
  %.val.i = load i64, ptr %i.g, align 8, !alias.scope !26846 ; 2 uses
  %i.l = icmp eq i64 %.val.i, 0
  br i1 %i.l, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit, label %bb.b

bb.b:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core9datatypes11LogicalTypeEBF_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val1.i = load ptr, ptr %i.m, align 8, !alias.scope !26846, !nonnull !48, !noundef !48
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !26846
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit

bb.c:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core9datatypes11LogicalTypeEBF_.exit

bb.d:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load i64, ptr %i.d, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx9, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 128
  invoke fastcc void @_RNvXNtCsfKiFC1ztrmh_9hashbrown3mapINtB2_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringBK_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs63DIHKhvmTb_10lance_core(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o)
          to label %bb.h unwind label %bb.g

bb.e:                                             ; preds = %.body, %bb.g
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.q, %bb.g ] ; 2 uses
  %i.p = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.p, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core9datatypes11LogicalTypeEBF_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !26847
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core9datatypes11LogicalTypeEBF_.exit

bb.g:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 185
  %i.s = load i8, ptr %i.r, align 1, !range !69, !noundef !48
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.u = load i8, ptr %i.t, align 8, !range !54, !noundef !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !26848, !nonnull !48, !noundef !48
  %i.y = load i64, ptr %i.v, align 8, !alias.scope !26848, !noundef !48 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !26849
  %i.z = mul nuw nsw i64 %i.y, 192                ; 2 uses
  %i.aa = icmp eq i64 %i.y, 0
  br i1 %i.aa, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs63DIHKhvmTb_10lance_core.exit.thread.i, label %bb.i

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs63DIHKhvmTb_10lance_core.exit.thread.i: ; preds = %bb.h
  store i64 0, ptr %i.b, align 8, !noalias !26849
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ab, align 8, !noalias !26849
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneBL_.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !26850, !inline_history !26844
  %i.ad = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.z, i64 noundef range(i64 1, 9) 8) #65, !noalias !26850, !inline_history !26844 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.j, label %.lr.ph.preheader.i

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.z) #68
          to label %.noexc unwind label %bb.n, !inline_history !26844

.noexc:                                           ; preds = %bb.j
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.i
  store i64 %i.y, ptr %i.b, align 8, !noalias !26849
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ad, ptr %i.af, align 8, !noalias !26849
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.preheader.i
  %.sroa.012.023.i = phi ptr [ %i.ai, %bb.k ], [ %i.x, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.7.022.i = phi i64 [ %i.ah, %bb.k ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %2, %bb.k ], [ %i.y, %.lr.ph.preheader.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26849
  invoke fastcc void @_RNvXst_NtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB5_5FieldNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(192) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) %.sroa.012.023.i)
          to label %bb.k unwind label %bb.m, !noalias !26851, !inline_history !26844

bb.k:                                             ; preds = %.lr.ph.i
  %i.ah = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 192
  %2 = add nsw i64 %.sroa.10.021.i, -1            ; 2 uses
  %i.aj = getelementptr inbounds nuw [192 x i8], ptr %i.ad, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.aj, ptr noundef nonnull align 8 dereferenceable(192) %i.a, i64 192, i1 false), !noalias !26851
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26849
  %i.ak = icmp eq i64 %2, 0
  br i1 %i.ak, label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneBL_.exit, label %.lr.ph.i

bb.l:                                             ; preds = %bb.m
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !26851, !inline_history !26844
  unreachable

bb.m:                                             ; preds = %.lr.ph.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.ag, align 8, !noalias !26849
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEEB1e_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #69
          to label %.body unwind label %bb.l, !noalias !26851, !inline_history !26844

bb.n:                                             ; preds = %bb.j
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.m, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.am, %bb.n ], [ %lpad.loopexit.i, %bb.m ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringB1i_EEECs63DIHKhvmTb_10lance_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.f)
  br label %bb.e

_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneBL_.exit: ; preds = %bb.k, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs63DIHKhvmTb_10lance_core.exit.thread.i
  %3 = phi ptr [ %i.ac, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs63DIHKhvmTb_10lance_core.exit.thread.i ], [ %i.ag, %bb.k ]
  store i64 %i.y, ptr %3, align 8, !noalias !26849
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !26852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !26849
  %i.an = load i64, ptr %1, align 8, !range !56, !noundef !48
  %i.ao = trunc nuw i64 %i.an to i1
  br i1 %i.ao, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneBL_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ar = load <2 x i64>, ptr %i.aq, align 8      ; 2 uses
  %i.as = load ptr, ptr %i.ap, align 8, !noundef !48 ; 3 uses
  %.not = icmp eq ptr %i.as, null
  br i1 %.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.q, %bb.o, %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneBL_.exit
  %.sroa.5.sroa.4.0 = phi ptr [ undef, %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneBL_.exit ], [ undef, %bb.o ], [ %i.bf, %bb.q ]
  %.sroa.5.sroa.0.0 = phi ptr [ undef, %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneBL_.exit ], [ null, %bb.o ], [ %i.as, %bb.q ]
  %.sroa.0.0 = phi i64 [ 0, %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneBL_.exit ], [ 1, %bb.o ], [ 1, %bb.q ]
  %i.at = phi <2 x i64> [ undef, %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneBL_.exit ], [ %i.ar, %bb.o ], [ %i.ar, %bb.q ]
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 176
  store <2 x i32> %i.j, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.0.0.copyload, ptr %i.ax, align 8
  %.sroa.5.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx10, align 8
  %.sroa.6.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx12, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ay, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 185
  store i8 %i.s, ptr %i.az, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 %i.u, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.sroa.0.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.5.sroa.4.0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x i64> %i.at, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bd = load <4 x i32>, ptr %i.au, align 8
  store <4 x i32> %i.bd, ptr %i.bc, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.q:                                             ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !48, !align !75, !noundef !48
  %i.bg = atomicrmw add ptr %i.as, i64 1 monotonic, align 8
  %i.bh = icmp slt i64 %i.bg, 0
  br i1 %i.bh, label %bb.r, label %bb.p

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.trap()
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.b, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core9datatypes11LogicalTypeEBF_.exit
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsu_NtCs63DIHKhvmTb_10lance_core5errorNtB5_11FenceReasonNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #8 !guid !26853 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !54, !noundef !48
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %. = select i1 %i.b, i64 18, i64 16
  %.1 = select i1 %i.b, ptr @1310, ptr @1309
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.1, i64 noundef %.)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsv_NtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB5_5FieldNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(192) %1) unnamed_addr #8 !guid !26854 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load i32, ptr %i.a, align 8, !noundef !48
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.d = load i32, ptr %i.c, align 8, !noundef !48
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldINtB5_14SlicePartialEqBC_E17equal_same_lengthBI_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.g = load i32, ptr %i.f, align 4, !noundef !48
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.i = load i32, ptr %i.h, align 4, !noundef !48
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldINtB5_14SlicePartialEqBC_E17equal_same_lengthBI_.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.l = load i8, ptr %i.k, align 8, !range !54, !noundef !48
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.n = load i8, ptr %i.m, align 8, !range !54, !noundef !48
  %i.o = icmp eq i8 %i.l, %i.n
  br i1 %i.o, label %bb.d, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldINtB5_14SlicePartialEqBC_E17equal_same_lengthBI_.exit

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load i64, ptr %i.p, align 8, !noundef !48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.s = load i64, ptr %i.r, align 8, !noundef !48
  %i.t = icmp eq i64 %i.q, %i.s
  br i1 %i.t, label %bb.e, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldINtB5_14SlicePartialEqBC_E17equal_same_lengthBI_.exit

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !48, !noundef !48
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !48, !noundef !48
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.x, ptr nonnull %i.v, i64 %i.q)
  %i.y = icmp eq i32 %bcmp, 0
  br i1 %i.y, label %bb.f, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldINtB5_14SlicePartialEqBC_E17equal_same_lengthBI_.exit

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aa = load i64, ptr %i.z, align 8, !noundef !48 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !48
  %i.ad = icmp eq i64 %i.aa, %i.ac
  br i1 %i.ad, label %bb.g, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldINtB5_14SlicePartialEqBC_E17equal_same_lengthBI_.exit

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !48, !noundef !48
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !48, !noundef !48
  %bcmp8 = tail call i32 @bcmp(ptr nonnull %i.ah, ptr nonnull %i.af, i64 %i.aa)
  %i.ai = icmp eq i32 %bcmp8, 0
  br i1 %i.ai, label %bb.h, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldINtB5_14SlicePartialEqBC_E17equal_same_lengthBI_.exit

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.al = tail call fastcc noundef zeroext i1 @_RNvXs4_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringB13_ENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eqCs63DIHKhvmTb_10lance_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ak)
  br i1 %i.al, label %bb.i, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldINtB5_14SlicePartialEqBC_E17equal_same_lengthBI_.exit

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 185
  %i.an = load i8, ptr %i.am, align 1, !range !69, !noundef !48 ; 2 uses
  %.not = icmp eq i8 %i.an, -1
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 185
  %i.ap = load i8, ptr %i.ao, align 1, !range !69, !noundef !48 ; 2 uses
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = icmp eq i8 %i.an, %i.ap
  br i1 %i.aq, label %bb.l, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldINtB5_14SlicePartialEqBC_E17equal_same_lengthBI_.exit

bb.k:                                             ; preds = %bb.i
  %i.ar = icmp eq i8 %i.ap, -1
  br i1 %i.ar, label %bb.l, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldINtB5_14SlicePartialEqBC_E17equal_same_lengthBI_.exit

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.at = load i64, ptr %i.as, align 8, !noundef !48 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.av = load i64, ptr %i.au, align 8, !noundef !48
  %i.aw = icmp eq i64 %i.at, %i.av
  br i1 %i.aw, label %bb.m, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldINtB5_14SlicePartialEqBC_E17equal_same_lengthBI_.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !48, !noundef !48
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !48, !noundef !48
  %.not1213.not = icmp eq i64 %i.at, 0
  br i1 %.not1213.not, label %._crit_edge, label %.lr.ph

bb.n:                                             ; preds = %.lr.ph
  %i.bb = add nuw i64 %.sroa.01.0.i14, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.bb, %i.at
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m, %bb.n
  %.sroa.01.0.i14 = phi i64 [ %i.bb, %bb.n ], [ 0, %bb.m ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [192 x i8], ptr %i.ba, i64 %.sroa.01.0.i14
  %i.bd = getelementptr inbounds nuw [192 x i8], ptr %i.ay, i64 %.sroa.01.0.i14
  %i.be = tail call fastcc noundef zeroext i1 @_RNvXsv_NtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB5_5FieldNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.bc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.bd), !inline_history !19
  br i1 %i.be, label %bb.n, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldINtB5_14SlicePartialEqBC_E17equal_same_lengthBI_.exit

._crit_edge:                                      ; preds = %bb.n, %bb.m
  %i.bf = load i64, ptr %0, align 8, !range !56, !noundef !48
  %i.bg = trunc nuw i64 %i.bf to i1
  %i.bh = load i64, ptr %1, align 8, !range !56, !noundef !48
  %i.bi = trunc nuw i64 %i.bh to i1               ; 2 uses
  br i1 %i.bg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge
  br i1 %i.bi, label %.split10, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldINtB5_14SlicePartialEqBC_E17equal_same_lengthBI_.exit

bb.p:                                             ; preds = %._crit_edge
end_hunk_1
