Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_table-a9a6f7d3980ea30b.lance_table.71a0d83425f78a62-cgu.0?download=true
inline.NumInlined: 28246
inline.NumDeleted: 13059
loop-unroll.NumCompletelyUnrolled: 100
loop-unroll.NumRuntimeUnrolled: 190
loop-unroll.NumUnrolled: 294
begin_hunk_0_@_RNCNvMNtNtCs9KQ7US1M400_11lance_table11transaction14manifest_buildNtNtB6_7builder11Transaction32build_manifest_with_read_versionsv_0B8_:bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 4, i64 16) #80, !noalias !36742
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.i: ; preds = %bb.c
  store i32 %i.l, ptr %i.n, align 4, !noalias !36742
  store i64 4, ptr %i.a, align 8, !noalias !36742
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.n, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !36742
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !36742
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36745)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36746)
  br label %bb.e

bb.e:                                             ; preds = %.noexc.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.i
  %i.p = phi ptr [ %i.n, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.i ], [ %i.z, %.noexc.i ]
  %i.q = phi i64 [ 1, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.i ], [ %i.ab, %.noexc.i ] ; 5 uses
  %.sroa.0.0.i.i.i = phi ptr [ %i.k, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.i ], [ %i.t, %.noexc.i ]
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.r = phi ptr [ %i.t, %bb.g ], [ %.sroa.0.0.i.i.i, %bb.e ] ; 3 uses
  %i.s = icmp eq ptr %i.r, %i.g
  br i1 %i.s, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecmEINtB2_10SpecExtendmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1h_6filter6FilterINtNtNtB1l_5slice4iter4IterlENCNCNvMNtNtCs9KQ7US1M400_11lance_table11transaction14manifest_buildNtNtB2Z_7builder11Transaction32build_manifest_with_read_versionsv_00ENCB2S_s_0EE11spec_extendB31_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  %i.u = load i32, ptr %i.r, align 4, !noalias !36747, !noundef !97 ; 2 uses
  %i.v = icmp sgt i32 %i.u, -1
  br i1 %i.v, label %bb.h, label %bb.f

bb.h:                                             ; preds = %bb.g
  %i.w = icmp samesign ult i64 %i.q, 2305843009213693952
  tail call void @llvm.assume(i1 %i.w)
  %i.x = load i64, ptr %i.a, align 8, !range !101, !alias.scope !36748, !noalias !36742, !noundef !97
  %i.y = icmp eq i64 %i.q, %i.x
  br i1 %i.y, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i, label %.noexc.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i: ; preds = %bb.h
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.q, i64 noundef 1, i64 noundef 4, i64 noundef 4)
          to label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCs9KQ7US1M400_11lance_table.exit.i.i..noexc_crit_edge.i unwind label %bb.i, !noalias !36742

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCs9KQ7US1M400_11lance_table.exit.i.i..noexc_crit_edge.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !36748, !noalias !36742
  br label %.noexc.i

.noexc.i:                                         ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCs9KQ7US1M400_11lance_table.exit.i.i..noexc_crit_edge.i, %bb.h
  %i.z = phi ptr [ %.pre.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCs9KQ7US1M400_11lance_table.exit.i.i..noexc_crit_edge.i ], [ %i.p, %bb.h ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.q
  store i32 %i.u, ptr %i.aa, align 4, !noalias !36749
  %i.ab = add nuw nsw i64 %i.q, 1                 ; 2 uses
  store i64 %i.ab, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !36748, !noalias !36742
  br label %bb.e

._crit_edge:                                      ; preds = %bb.b, %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !36742
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.ac, align 8, !alias.scope !36742
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ad, align 8, !alias.scope !36742
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecmEINtB2_18SpecFromIterNestedmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1z_6filter6FilterINtNtNtB1D_5slice4iter4IterlENCNCNvMNtNtCs9KQ7US1M400_11lance_table11transaction14manifest_buildNtNtB3h_7builder11Transaction32build_manifest_with_read_versionsv_00ENCB3a_s_0EE9from_iterB3j_.exit

bb.i:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %.val.i = load i64, ptr %i.a, align 8, !noalias !36742 ; 2 uses
  %i.af = icmp eq i64 %.val.i, 0
  br i1 %i.af, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECs9KQ7US1M400_11lance_table.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val7.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !36742, !nonnull !97, !noundef !97
  %i.ag = shl nuw i64 %.val.i, 2
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i, i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 4) #76, !noalias !36742
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECs9KQ7US1M400_11lance_table.exit.i

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecmEINtB2_10SpecExtendmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1h_6filter6FilterINtNtNtB1l_5slice4iter4IterlENCNCNvMNtNtCs9KQ7US1M400_11lance_table11transaction14manifest_buildNtNtB2Z_7builder11Transaction32build_manifest_with_read_versionsv_00ENCB2S_s_0EE11spec_extendB31_.exit.i: ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecmEINtB2_18SpecFromIterNestedmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1z_6filter6FilterINtNtNtB1D_5slice4iter4IterlENCNCNvMNtNtCs9KQ7US1M400_11lance_table11transaction14manifest_buildNtNtB3h_7builder11Transaction32build_manifest_with_read_versionsv_00ENCB3a_s_0EE9from_iterB3j_.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECs9KQ7US1M400_11lance_table.exit.i: ; preds = %bb.j, %bb.i
  resume { ptr, i32 } %i.ae

_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecmEINtB2_18SpecFromIterNestedmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1z_6filter6FilterINtNtNtB1D_5slice4iter4IterlENCNCNvMNtNtCs9KQ7US1M400_11lance_table11transaction14manifest_buildNtNtB3h_7builder11Transaction32build_manifest_with_read_versionsv_00ENCB3a_s_0EE9from_iterB3j_.exit: ; preds = %._crit_edge, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecmEINtB2_10SpecExtendmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1h_6filter6FilterINtNtNtB1l_5slice4iter4IterlENCNCNvMNtNtCs9KQ7US1M400_11lance_table11transaction14manifest_buildNtNtB2Z_7builder11Transaction32build_manifest_with_read_versionsv_00ENCB2S_s_0EE11spec_extendB31_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !36742
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvMNtNtCskTBvlRM5ILY_4moka6future8notifierINtB4_15RemovalNotifierNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB16_16CachedReaderDataE6notify0Cs9KQ7US1M400_11lance_table(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality !guid !36787 {
bb.a:
  %.sroa.657 = alloca ptr, align 8                ; 6 uses
  %.sroa.958 = alloca ptr, align 8                ; 5 uses
  %i.a = alloca [16 x i8], align 8                ; 13 uses
  %i.b = alloca [8 x i8], align 8                 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 61 ; 3 uses
  %i.d = load i8, ptr %i.c, align 1, !range !125, !noundef !97
  switch i8 %i.d, label %default.unreachable75 [
    i8 0, label %bb.c
    i8 1, label %bb.n
    i8 2, label %bb.o
    i8 3, label %bb.b
  ]

default.unreachable75:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.val.i.i.pre = load ptr, ptr %0, align 8, !alias.scope !36788
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !36788
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 58 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 59 ; 2 uses
  store i8 0, ptr %i.g, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !97, !align !102, !noundef !97 ; 2 uses
  store ptr %i.j, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 1, ptr %i.e, align 2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !97, !noundef !97
  store ptr %i.l, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 1, ptr %i.f, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !97, !noundef !97
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i64, ptr %i.o, align 8, !noundef !97
  store ptr %i.n, ptr %i.a, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 %i.p, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.t = load i8, ptr %i.s, align 4, !range !125, !noundef !97
  store i8 %i.t, ptr %i.r, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.v = load atomic i8, ptr %i.u acquire, align 8
  %.not64 = icmp eq i8 %i.v, 0
  br i1 %.not64, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.h, align 8, !nonnull !97, !align !102, !noundef !97 ; 2 uses
  store i8 0, ptr %i.e, align 2
  store i8 0, ptr %i.f, align 1
  %i.x = load ptr, ptr %i.b, align 8, !nonnull !97, !noundef !97
  %i.y = load ptr, ptr %i.a, align 8, !nonnull !97, !noundef !97
  %i.z = load i64, ptr %i.q, align 8, !noundef !97
  %i.aa = load i8, ptr %i.r, align 8, !range !125, !noalias !36789, !noundef !97
  %i.ab = load ptr, ptr %i.w, align 8, !noalias !36789, !nonnull !97, !noundef !97
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !36789, !nonnull !97, !align !102, !noundef !97
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !invariant.load !97, !noalias !36789, !nonnull !97
  %i.ag = invoke { ptr, ptr } %i.af(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.x, ptr noundef nonnull %i.y, i64 noundef %i.z, i8 noundef %i.aa)
          to label %bb.h unwind label %bb.e, !noalias !36790, !inline_history !36759 ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.ah = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  %i.aj = invoke { ptr, ptr } @_RNvNvNtCsgczF5crJ4sT_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ai)
          to label %bb.i unwind label %bb.f, !noalias !36790 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #82, !noalias !36790
  unreachable

bb.g:                                             ; preds = %bb.c, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs9KQ7US1M400_11lance_table.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !range !106, !noundef !97
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.ae, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader16CachedReaderDataECs9KQ7US1M400_11lance_table.exit

bb.h:                                             ; preds = %bb.d
  %i.ao = extractvalue { ptr, ptr } %i.ag, 0      ; 4 uses
  %i.ap = extractvalue { ptr, ptr } %i.ag, 1      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao), "nonnull"(ptr %i.ap) ]
  store i8 0, ptr %i.g, align 1
  store ptr %i.ao, ptr %0, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.aq, align 8
  br label %bb.p

.body34:                                          ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i37, %bb.ad, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, %bb.y
  %.pn8.pn = phi { ptr, i32 } [ %i.cg, %bb.y ], [ %i.cy, %bb.ad ], [ %i.cy, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i37 ], [ %i.cg, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 59
  %i.as = load i8, ptr %i.ar, align 1, !range !106, !noundef !97
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.ak, label %.body

bb.i:                                             ; preds = %bb.e
  %i.au = extractvalue { ptr, ptr } %i.aj, 0      ; 6 uses
  %i.av = extractvalue { ptr, ptr } %i.aj, 1      ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.au), "nonnull"(ptr %i.av) ]
  %i.aw = load ptr, ptr %i.h, align 8, !nonnull !97, !align !102, !noundef !97
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store atomic i8 0, ptr %i.ax release, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.av) ]
  %i.ay = load ptr, ptr %i.av, align 8, !invariant.load !97 ; 2 uses
  %.not.i = icmp eq ptr %i.ay, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.au) ]
  invoke void %i.ay(ptr noundef nonnull %i.au)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !range !101, !invariant.load !97 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs9KQ7US1M400_11lance_table.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !range !123, !invariant.load !97
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.au) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef %i.ba, i64 noundef range(i64 1, -9223372036854775807) %i.bd) #76
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs9KQ7US1M400_11lance_table.exit

bb.l:                                             ; preds = %bb.j
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !range !101, !invariant.load !97 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %.body, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !range !123, !invariant.load !97
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef %i.bg, i64 noundef range(i64 1, -9223372036854775807) %i.bj) #76
  br label %.body

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs9KQ7US1M400_11lance_table.exit: ; preds = %bb.ac, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i39, %bb.k, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 59
  store i8 0, ptr %i.bk, align 1
  br label %bb.g

bb.m:                                             ; preds = %bb.ao, %bb.am, %bb.ak
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82
  unreachable

.body:                                            ; preds = %bb.l, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.ak, %.body34
  %.pn11.pn.pn = phi { ptr, i32 } [ %.pn8.pn, %.body34 ], [ %.pn8.pn, %bb.ak ], [ %i.be, %bb.l ], [ %i.be, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 59
  store i8 0, ptr %i.bm, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.bo = load i8, ptr %i.bn, align 1, !range !106, !noundef !97
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.al, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader16CachedReaderDataECs9KQ7US1M400_11lance_table.exit45

bb.n:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @597) #80
  unreachable

bb.o:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @597) #80
  unreachable

bb.p:                                             ; preds = %bb.b, %bb.h
  %.val1.i.i = phi ptr [ %i.ap, %bb.h ], [ %.val1.i.i.pre, %bb.b ]
  %.val.i.i = phi ptr [ %i.ao, %bb.h ], [ %.val.i.i.pre, %bb.b ]
  %.sroa.8.0 = phi ptr [ %i.ap, %bb.h ], [ undef, %bb.b ]
  %.sroa.0.0 = phi ptr [ %i.ao, %bb.h ], [ undef, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.657)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.958)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36791)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36788)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !invariant.load !97, !noalias !36792, !nonnull !97
  %i.bt = invoke noundef zeroext i1 %i.bs(ptr noundef nonnull %.val.i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.s unwind label %bb.q, !noalias !36793, !inline_history !36766

bb.q:                                             ; preds = %bb.p
  %i.bu = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  %i.bw = invoke { ptr, ptr } @_RNvNvNtCsgczF5crJ4sT_3std9panicking12catch_unwind7cleanup(ptr noundef %i.bv)
          to label %bb.t unwind label %bb.r, !noalias !36793 ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #82, !noalias !36793
  unreachable

bb.s:                                             ; preds = %bb.p
  br i1 %i.bt, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.q
  %i.by = extractvalue { ptr, ptr } %i.bw, 0      ; 2 uses
  %i.bz = extractvalue { ptr, ptr } %i.bw, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.by) ]
  store ptr %i.by, ptr %.sroa.657, align 8, !alias.scope !36791
  br label %bb.v

common.ret:                                       ; preds = %bb.z, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECs9KQ7US1M400_11lance_table.exit, %bb.u
  %storemerge = phi i8 [ 3, %bb.u ], [ 1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECs9KQ7US1M400_11lance_table.exit ], [ 1, %bb.z ]
  %common.ret.op = phi i1 [ true, %bb.u ], [ false, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECs9KQ7US1M400_11lance_table.exit ], [ false, %bb.z ]
  store i8 %storemerge, ptr %i.c, align 1
  ret i1 %common.ret.op

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.657)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.958)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %common.ret

bb.v:                                             ; preds = %bb.t, %bb.s
  %.sink15.i.sroa.phi = phi ptr [ %.sroa.958, %bb.t ], [ %.sroa.657, %bb.s ]
  %.sink.i33 = phi ptr [ %i.bz, %bb.t ], [ null, %bb.s ]
  store ptr %.sink.i33, ptr %.sink15.i.sroa.phi, align 8, !alias.scope !36791
  %.sroa.657.0..sroa.657.0..sroa.657.0..sroa.657.8. = load ptr, ptr %.sroa.657, align 8, !noundef !97 ; 4 uses
  %.sroa.958.0..sroa.958.0..sroa.958.0..sroa.958.16. = load ptr, ptr %.sroa.958, align 8 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.657)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.958)
  %.val31 = load ptr, ptr %0, align 8             ; 5 uses
  %.val32 = load ptr, ptr %i.bq, align 8, !nonnull !97, !align !102, !noundef !97 ; 5 uses
  %i.ca = load ptr, ptr %.val32, align 8, !invariant.load !97 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val31) ]
  invoke void %i.ca(ptr noundef nonnull %.val31)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cb = getelementptr inbounds nuw i8, ptr %.val32, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !range !101, !invariant.load !97 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future12catch_unwind11CatchUnwindINtNtNtB4_5panic11unwind_safe16AssertUnwindSafeINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECs9KQ7US1M400_11lance_table.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.x
  %i.ce = getelementptr inbounds nuw i8, ptr %.val32, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !range !123, !invariant.load !97
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val31) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val31, i64 noundef %i.cc, i64 noundef range(i64 1, -9223372036854775807) %i.cf) #76
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future12catch_unwind11CatchUnwindINtNtNtB4_5panic11unwind_safe16AssertUnwindSafeINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECs9KQ7US1M400_11lance_table.exit

bb.y:                                             ; preds = %bb.w
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.val32, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !range !101, !invariant.load !97 ; 2 uses
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %.body34, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.y
  %i.ck = getelementptr inbounds nuw i8, ptr %.val32, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !range !123, !invariant.load !97
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val31, i64 noundef %i.ci, i64 noundef range(i64 1, -9223372036854775807) %i.cl) #76
  br label %.body34

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future12catch_unwind11CatchUnwindINtNtNtB4_5panic11unwind_safe16AssertUnwindSafeINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECs9KQ7US1M400_11lance_table.exit: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.x
  %.not = icmp eq ptr %.sroa.657.0..sroa.657.0..sroa.657.0..sroa.657.8., null
  br i1 %.not, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future12catch_unwind11CatchUnwindINtNtNtB4_5panic11unwind_safe16AssertUnwindSafeINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECs9KQ7US1M400_11lance_table.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 59
  store i8 0, ptr %i.cm, align 1
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.cn, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 58
  store i8 0, ptr %i.co, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %common.ret

bb.aa:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future12catch_unwind11CatchUnwindINtNtNtB4_5panic11unwind_safe16AssertUnwindSafeINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECs9KQ7US1M400_11lance_table.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !nonnull !97, !align !102, !noundef !97
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store atomic i8 0, ptr %i.cr release, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.958.0..sroa.958.0..sroa.958.0..sroa.958.16.) ]
  %i.cs = load ptr, ptr %.sroa.958.0..sroa.958.0..sroa.958.0..sroa.958.16., align 8, !invariant.load !97 ; 2 uses
  %.not.i36 = icmp eq ptr %i.cs, null
  br i1 %.not.i36, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void %i.cs(ptr noundef nonnull %.sroa.657.0..sroa.657.0..sroa.657.0..sroa.657.8.)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.958.0..sroa.958.0..sroa.958.0..sroa.958.16., i64 8
  %i.cu = load i64, ptr %i.ct, align 8, !range !101, !invariant.load !97 ; 2 uses
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs9KQ7US1M400_11lance_table.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i39

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i39: ; preds = %bb.ac
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.958.0..sroa.958.0..sroa.958.0..sroa.958.16., i64 16
  %i.cx = load i64, ptr %i.cw, align 8, !range !123, !invariant.load !97
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.657.0..sroa.657.0..sroa.657.0..sroa.657.8., i64 noundef %i.cu, i64 noundef range(i64 1, -9223372036854775807) %i.cx) #76
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs9KQ7US1M400_11lance_table.exit

bb.ad:                                            ; preds = %bb.ab
  %i.cy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.958.0..sroa.958.0..sroa.958.0..sroa.958.16., i64 8
  %i.da = load i64, ptr %i.cz, align 8, !range !101, !invariant.load !97 ; 2 uses
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %.body34, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i37

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i37: ; preds = %bb.ad
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.958.0..sroa.958.0..sroa.958.0..sroa.958.16., i64 16
  %i.dd = load i64, ptr %i.dc, align 8, !range !123, !invariant.load !97
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.657.0..sroa.657.0..sroa.657.0..sroa.657.8., i64 noundef %i.da, i64 noundef range(i64 1, -9223372036854775807) %i.dd) #76
  br label %.body34

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader16CachedReaderDataECs9KQ7US1M400_11lance_table.exit: ; preds = %bb.ae, %bb.af, %bb.g
  store i8 0, ptr %i.al, align 1
end_hunk_0
begin_hunk_1_@_RNvNtNtCs9KQ7US1M400_11lance_table11transaction8validate18validate_operation:bb.a

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  call fastcc void @_RNvNtNtCs9KQ7US1M400_11lance_table11transaction8validate29schema_fragments_modern_valid(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(56) %i.bu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cf, i64 noundef range(i64 0, 38430716820228233) %i.ch), !noalias !61106
  %i.cj = load i8, ptr %i.bu, align 8, !range !139, !noundef !97
  %.not26 = icmp eq i8 %i.cj, -1
  br i1 %.not26, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.bu, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  store i8 -1, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.bm, %bb.iy, %bb.f, %bb.h, %bb.i, %bb.jl, %bb.je, %bb.jc, %bb.ja, %bb.iz, %bb.bl, %bb.bk, %bb.bj, %bb.o, %bb.n, %_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error13invalid_inputNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit, %bb.e
  ret void

bb.k:                                             ; preds = %switch.lookup
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #80
          to label %.noexc.i unwind label %bb.l, !noalias !61107

.noexc.i:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cl = icmp eq i64 %.sroa.06.0.copyload.i, 0
  br i1 %i.cl, label %common.resume, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %.sroa.06.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !61108
  br label %common.resume

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i52.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body.i62, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.v, %bb.w, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9KQ7US1M400_11lance_table.exit.i, %bb.l, %bb.m, %bb.jg
  %common.resume.op = phi { ptr, i32 } [ %i.akv, %bb.jg ], [ %i.ck, %bb.l ], [ %i.es, %bb.v ], [ %i.ck, %bb.m ], [ %lpad.loopexit.split-lp1015, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn45.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9KQ7US1M400_11lance_table.exit.i ], [ %i.es, %bb.w ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i52.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn204.i, %.body.i62 ]
  resume { ptr, i32 } %common.resume.op

_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error13invalid_inputNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit: ; preds = %switch.lookup
  store i64 %.sroa.06.0.copyload.i, ptr %i.cc, align 8, !noalias !61107
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.5.0..sroa_idx2.i, align 8, !noalias !61107
  %.sroa.6.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store i64 %.sroa.57.0.copyload.i, ptr %.sroa.6.0..sroa_idx4.i, align 8, !noalias !61107
  store i8 0, ptr %0, align 8
  %.sroa.4110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cc, ptr %.sroa.4110.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @26, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @1210, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.j

bb.n:                                             ; preds = %bb.b
  store i8 -1, ptr %0, align 8
  br label %bb.j

bb.o:                                             ; preds = %bb.b
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !nonnull !97, !noundef !97
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cq = load i64, ptr %i.cp, align 8, !noundef !97
  tail call fastcc void @_RNvNtNtCs9KQ7US1M400_11lance_table11transaction8validate22schema_fragments_valid(ptr noalias noundef align 8 captures(address) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable_or_null(544) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.cm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.co, i64 noundef %i.cq)
  br label %bb.j

bb.p:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !nonnull !97, !noundef !97 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cu = load i64, ptr %i.ct, align 8, !noundef !97 ; 2 uses
  call fastcc void @_RNvNtNtCs9KQ7US1M400_11lance_table11transaction8validate25overwrite_fragments_valid(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.bq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cs, i64 noundef %i.cu)
  %i.cv = load i8, ptr %i.bq, align 8, !range !139, !noundef !97
  %.not34 = icmp eq i8 %i.cv, -1
  br i1 %.not34, label %bb.bl, label %bb.bk

bb.q:                                             ; preds = %bb.b
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 7 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !nonnull !97, !noundef !97 ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.da = load i64, ptr %i.cz, align 8, !noundef !97 ; 9 uses
  %i.db = getelementptr i8, ptr %1, i64 496
  %.val44 = load ptr, ptr %i.db, align 16, !nonnull !97, !noundef !97 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61109)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  %i.dc = getelementptr inbounds nuw i8, ptr %.val44, i64 32 ; 4 uses
  %i.dd = load i64, ptr %i.dc, align 8, !noalias !61110, !noundef !97 ; 3 uses
  %i.de = icmp ult i64 %i.dd, 38430716820228233
  tail call void @llvm.assume(i1 %i.de)
  %i.df = icmp samesign ult i64 %i.da, %i.dd
  br i1 %i.df, label %.split.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !61111
  %i.dg = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 13 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 6 uses
  %i.di = load i8, ptr %i.dh, align 8, !range !106, !noalias !61112, !noundef !97
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs9KQ7US1M400_11lance_table.exit_crit_edge.i.i.i.i.i, label %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i, !prof !109

._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs9KQ7US1M400_11lance_table.exit_crit_edge.i.i.i.i.i: ; preds = %bb.r
  %.pre.i.i.i.i.i = load i64, ptr %i.dg, align 8, !noalias !61113
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %.pre1.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !noalias !61113
  br label %_RNvXs3_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_11RandomStateNtNtCscI6d9CVNmLh_4core7default7Default7default.exit.i.i

_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i: ; preds = %bb.r
  %i.dk = tail call { i64, i64 } @_RNvNtNtNtCsgczF5crJ4sT_3std3sys6random5linux19hashmap_random_keys(), !noalias !61114 ; 2 uses
  %i.dl = extractvalue { i64, i64 } %i.dk, 0
  %i.dm = extractvalue { i64, i64 } %i.dk, 1      ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store i64 %i.dm, ptr %i.dn, align 8, !noalias !61115
  store i8 1, ptr %i.dh, align 8, !noalias !61115
  br label %_RNvXs3_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_11RandomStateNtNtCscI6d9CVNmLh_4core7default7Default7default.exit.i.i

_RNvXs3_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_11RandomStateNtNtCscI6d9CVNmLh_4core7default7Default7default.exit.i.i: ; preds = %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs9KQ7US1M400_11lance_table.exit_crit_edge.i.i.i.i.i
  %.pre-phi8.i.i = phi i64 [ %.pre1.i.i.i.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs9KQ7US1M400_11lance_table.exit_crit_edge.i.i.i.i.i ], [ %i.dm, %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i ] ; 2 uses
  %i.do = phi i64 [ %.pre.i.i.i.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs9KQ7US1M400_11lance_table.exit_crit_edge.i.i.i.i.i ], [ %i.dl, %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i ] ; 3 uses
  %i.dp = add i64 %i.do, 1
  store i64 %i.dp, ptr %i.dg, align 8, !noalias !61113
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) @66, i64 32, i1 false), !noalias !61111
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 32 ; 3 uses
  store i64 %i.do, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !61111
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 40 ; 2 uses
  store i64 %.pre-phi8.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !61111
  %.not.i.i = icmp eq i64 %i.da, 0                ; 3 uses
  br i1 %.not.i.i, label %_RINvXs1c_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB7_7HashMapyRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorTyB16_EE9from_iterINtNtNtB2b_8adapters3map3MapINtNtNtB2d_5slice4iter4IterB17_ENCNvNtNtB1d_11transaction8validate21merge_fragments_valid0EEB1d_.exit.i, label %bb.s, !prof !109

bb.s:                                             ; preds = %_RNvXs3_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_11RandomStateNtNtCscI6d9CVNmLh_4core7default7Default7default.exit.i.i
  %i.dq = invoke { i64, i64 } @_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTyRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE14reserve_rehashNCINvNtB8_3map11make_hasheryBR_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0EBY_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ax, i64 noundef range(i64 0, 38430716820228233) %i.da, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.4.0..sroa_idx.i.i, i1 noundef zeroext true)
          to label %.preheader.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !61116 ; 0 uses

.preheader.i.i:                                   ; preds = %bb.s, %.noexc5.i.i
  %.sroa.01.0.i.i.i.i.i.i = phi i64 [ %i.du, %.noexc5.i.i ], [ 0, %bb.s ] ; 2 uses
  %i.dr = getelementptr inbounds nuw [240 x i8], ptr %i.cy, i64 %.sroa.01.0.i.i.i.i.i.i ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 232
  %i.dt = load i64, ptr %i.ds, align 8, !alias.scope !61117, !noalias !61118, !noundef !97
  invoke fastcc void @_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5_7HashMapyRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6insertBV_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ax, i64 noundef %i.dt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.dr)
          to label %.noexc5.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc5.i.i:                                      ; preds = %.preheader.i.i
  %i.du = add nuw nsw i64 %.sroa.01.0.i.i.i.i.i.i, 1 ; 2 uses
  %i.dv = icmp eq i64 %i.du, %i.da
  br i1 %i.dv, label %_RINvXs1c_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB7_7HashMapyRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorTyB16_EE9from_iterINtNtNtB2b_8adapters3map3MapINtNtNtB2d_5slice4iter4IterB17_ENCNvNtNtB1d_11transaction8validate21merge_fragments_valid0EEB1d_.exit.loopexit.i, label %.preheader.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i.i, %bb.s
  %lpad.loopexit.split-lp1015 = landingpad { ptr, i32 }
          cleanup
  %.val.i.i = load ptr, ptr %i.ax, align 8, !noalias !61111
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.val4.i.i = load i64, ptr %i.dw, align 8, !noalias !61111, !noundef !97
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEEB1E_(ptr %.val.i.i, i64 %.val4.i.i) #81, !noalias !61116
  br label %common.resume

_RINvXs1c_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB7_7HashMapyRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorTyB16_EE9from_iterINtNtNtB2b_8adapters3map3MapINtNtNtB2d_5slice4iter4IterB17_ENCNvNtNtB1d_11transaction8validate21merge_fragments_valid0EEB1d_.exit.loopexit.i: ; preds = %.noexc5.i.i
  %.sroa.03.0.copyload.pre.i = load ptr, ptr %i.ax, align 8, !noalias !61110
  %.sroa.9.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.9.0.copyload.pre.i = load i64, ptr %.sroa.9.0..sroa_idx.phi.trans.insert.i, align 8, !noalias !61110
  %.sroa.146.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %.sroa.146.0.copyload.pre.i = load i64, ptr %.sroa.146.0..sroa_idx.phi.trans.insert.i, align 8, !noalias !61110
  %.sroa.16.0.copyload.pre.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !61110
  %.sroa.17.0.copyload.pre.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !61110
  br label %_RINvXs1c_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB7_7HashMapyRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorTyB16_EE9from_iterINtNtNtB2b_8adapters3map3MapINtNtNtB2d_5slice4iter4IterB17_ENCNvNtNtB1d_11transaction8validate21merge_fragments_valid0EEB1d_.exit.i

_RINvXs1c_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB7_7HashMapyRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorTyB16_EE9from_iterINtNtNtB2b_8adapters3map3MapINtNtNtB2d_5slice4iter4IterB17_ENCNvNtNtB1d_11transaction8validate21merge_fragments_valid0EEB1d_.exit.i: ; preds = %_RINvXs1c_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB7_7HashMapyRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorTyB16_EE9from_iterINtNtNtB2b_8adapters3map3MapINtNtNtB2d_5slice4iter4IterB17_ENCNvNtNtB1d_11transaction8validate21merge_fragments_valid0EEB1d_.exit.loopexit.i, %_RNvXs3_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_11RandomStateNtNtCscI6d9CVNmLh_4core7default7Default7default.exit.i.i
  %.sroa.17.0.copyload.i = phi i64 [ %.sroa.17.0.copyload.pre.i, %_RINvXs1c_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB7_7HashMapyRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorTyB16_EE9from_iterINtNtNtB2b_8adapters3map3MapINtNtNtB2d_5slice4iter4IterB17_ENCNvNtNtB1d_11transaction8validate21merge_fragments_valid0EEB1d_.exit.loopexit.i ], [ %.pre-phi8.i.i, %_RNvXs3_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_11RandomStateNtNtCscI6d9CVNmLh_4core7default7Default7default.exit.i.i ]
  %.sroa.16.0.copyload.i = phi i64 [ %.sroa.16.0.copyload.pre.i, %_RINvXs1c_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB7_7HashMapyRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorTyB16_EE9from_iterINtNtNtB2b_8adapters3map3MapINtNtNtB2d_5slice4iter4IterB17_ENCNvNtNtB1d_11transaction8validate21merge_fragments_valid0EEB1d_.exit.loopexit.i ], [ %i.do, %_RNvXs3_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_11RandomStateNtNtCscI6d9CVNmLh_4core7default7Default7default.exit.i.i ]
  %.sroa.146.0.copyload.i = phi i64 [ %.sroa.146.0.copyload.pre.i, %_RINvXs1c_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB7_7HashMapyRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorTyB16_EE9from_iterINtNtNtB2b_8adapters3map3MapINtNtNtB2d_5slice4iter4IterB17_ENCNvNtNtB1d_11transaction8validate21merge_fragments_valid0EEB1d_.exit.loopexit.i ], [ 0, %_RNvXs3_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_11RandomStateNtNtCscI6d9CVNmLh_4core7default7Default7default.exit.i.i ] ; 4 uses
  %.sroa.9.0.copyload.i = phi i64 [ %.sroa.9.0.copyload.pre.i, %_RINvXs1c_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB7_7HashMapyRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorTyB16_EE9from_iterINtNtNtB2b_8adapters3map3MapINtNtNtB2d_5slice4iter4IterB17_ENCNvNtNtB1d_11transaction8validate21merge_fragments_valid0EEB1d_.exit.loopexit.i ], [ 0, %_RNvXs3_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_11RandomStateNtNtCscI6d9CVNmLh_4core7default7Default7default.exit.i.i ] ; 9 uses
  %.sroa.03.0.copyload.i = phi ptr [ %.sroa.03.0.copyload.pre.i, %_RINvXs1c_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB7_7HashMapyRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorTyB16_EE9from_iterINtNtNtB2b_8adapters3map3MapINtNtNtB2d_5slice4iter4IterB17_ENCNvNtNtB1d_11transaction8validate21merge_fragments_valid0EEB1d_.exit.loopexit.i ], [ @65, %_RNvXs3_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_11RandomStateNtNtCscI6d9CVNmLh_4core7default7Default7default.exit.i.i ] ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !61111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !61110
  store i64 0, ptr %i.be, align 8, !noalias !61110
  %i.dx = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 6 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.dx, align 8, !noalias !61110
  %i.dy = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 3 uses
  store i64 0, ptr %i.dy, align 8, !noalias !61110
  %i.dz = getelementptr inbounds nuw i8, ptr %.val44, i64 24 ; 3 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !noalias !61110, !nonnull !97, !noundef !97 ; 3 uses
  %i.eb = load i64, ptr %i.dc, align 8, !noalias !61110, !noundef !97 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.eb, 240
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 %.idx.i ; 2 uses
  %i.ed = icmp eq i64 %i.eb, 0
  br i1 %i.ed, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9KQ7US1M400_11lance_table.exit90.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RINvXs1c_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB7_7HashMapyRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorTyB16_EE9from_iterINtNtNtB2b_8adapters3map3MapINtNtNtB2d_5slice4iter4IterB17_ENCNvNtNtB1d_11transaction8validate21merge_fragments_valid0EEB1d_.exit.i
  %i.ee = icmp eq i64 %.sroa.146.0.copyload.i, 0  ; 2 uses
  br i1 %i.ee, label %select.unfold.us.i, label %.lr.ph.split.i

select.unfold.us.i:                               ; preds = %.lr.ph.i, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCs9KQ7US1M400_11lance_table.exit.us.i
  %i.ef = phi i64 [ %i.en, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCs9KQ7US1M400_11lance_table.exit.us.i ], [ 0, %.lr.ph.i ] ; 4 uses
  %.sroa.0.058.us.i = phi ptr [ %i.eg, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCs9KQ7US1M400_11lance_table.exit.us.i ], [ %i.ea, %.lr.ph.i ] ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0.058.us.i, i64 240 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0.058.us.i, i64 232
  call void @llvm.experimental.noalias.scope.decl(metadata !61119)
  %i.ei = load i64, ptr %i.eh, align 8, !noalias !61120, !noundef !97
  %i.ej = load i64, ptr %i.be, align 8, !range !101, !alias.scope !61121, !noalias !61110, !noundef !97
  %i.ek = icmp eq i64 %i.ef, %i.ej
  br i1 %i.ek, label %bb.t, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCs9KQ7US1M400_11lance_table.exit.us.i

bb.t:                                             ; preds = %select.unfold.us.i
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecyE8grow_oneCs5GHimaBI8WD_10num_bigint(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCs9KQ7US1M400_11lance_table.exit.us.i unwind label %.loopexit44.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !61120

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCs9KQ7US1M400_11lance_table.exit.us.i: ; preds = %bb.t, %select.unfold.us.i
  %i.el = load ptr, ptr %i.dx, align 8, !alias.scope !61121, !noalias !61110, !nonnull !97, !noundef !97
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.ef
  store i64 %i.ei, ptr %i.em, align 8, !noalias !61120
  %i.en = add nuw nsw i64 %i.ef, 1                ; 2 uses
  store i64 %i.en, ptr %i.dy, align 8, !alias.scope !61121, !noalias !61110
  %i.eo = icmp eq ptr %i.eg, %i.ec
  br i1 %i.eo, label %._crit_edge.i.thread, label %select.unfold.us.i

._crit_edge.i.thread:                             ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCs9KQ7US1M400_11lance_table.exit.us.i
  %3 = icmp samesign ult i64 %i.ef, 1152921504606846975
  call void @llvm.assume(i1 %3)
  br label %._crit_edge.i.thread.a

.split.i:                                         ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !61110
  store i64 %i.dd, ptr %i.bh, align 8, !noalias !61110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !61110
  store i64 %i.da, ptr %i.bg, align 8, !noalias !61110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !61110
  store ptr %i.bh, ptr %i.bf, align 8, !noalias !61110
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !61110
  %i.ep = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store ptr %i.bg, ptr %i.ep, align 8, !noalias !61110
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !61110
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bi, ptr noundef nonnull @1217, ptr noundef nonnull %i.bf), !noalias !61122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !61110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !61110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !61110
  call void @llvm.experimental.noalias.scope.decl(metadata !61123)
  %.sroa.06.0.copyload.i.i = load i64, ptr %i.bi, align 8, !alias.scope !61124, !noalias !61110 ; 3 uses
  %.sroa.4.0..sroa_idx.i74.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i74.i, align 8, !alias.scope !61124, !noalias !61110 ; 3 uses
  %.sroa.57.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %.sroa.57.0.copyload.i.i = load i64, ptr %.sroa.57.0..sroa_idx.i.i, align 8, !alias.scope !61124, !noalias !61110
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !61125
  %i.eq = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !61125 ; 5 uses
  %i.er = icmp eq ptr %i.eq, null
  br i1 %i.er, label %bb.u, label %_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error13invalid_inputNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i, !prof !104

bb.u:                                             ; preds = %.split.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #80
          to label %.noexc.i75.i unwind label %bb.v, !noalias !61126

.noexc.i75.i:                                     ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.u
  %i.es = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.et = icmp eq i64 %.sroa.06.0.copyload.i.i, 0
  br i1 %i.et, label %common.resume, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i, i64 noundef %.sroa.06.0.copyload.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !61127
  br label %common.resume

_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error13invalid_inputNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i: ; preds = %.split.i
  store i64 %.sroa.06.0.copyload.i.i, ptr %i.eq, align 8, !noalias !61126
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx2.i.i, align 8, !noalias !61126
  %.sroa.6.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store i64 %.sroa.57.0.copyload.i.i, ptr %.sroa.6.0..sroa_idx4.i.i, align 8, !noalias !61126
  br label %bb.bm

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.af
  %i.eu = phi i64 [ %i.gp, %bb.af ], [ 0, %.lr.ph.i ] ; 5 uses
  %.sroa.0.058.i = phi ptr [ %i.ev, %bb.af ], [ %i.ea, %.lr.ph.i ] ; 5 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.0.058.i, i64 240 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0.058.i, i64 232 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !61119)
  %i.ex = call fastcc noundef i64 @_RINvYNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher8hash_oneRyECs9KQ7US1M400_11lance_table(i64 %.sroa.16.0.copyload.i, i64 %.sroa.17.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ew), !noalias !61128 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !61129)
  %i.ey = lshr i64 %i.ex, 57
  %i.ez = trunc nuw nsw i64 %i.ey to i8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.copyload.i) ]
  %i.fa = insertelement <16 x i8> poison, i8 %i.ez, i64 0
  %i.fb = shufflevector <16 x i8> %i.fa, <16 x i8> poison, <16 x i32> zeroinitializer
  %.val.i.i.i.i.i = load i64, ptr %i.ew, align 8, !alias.scope !61130, !noalias !61120 ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.z, %.lr.ph.split.i
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %.lr.ph.split.i ], [ %i.fs, %bb.z ]
  %.pn.i.i.i.i = phi i64 [ %i.ex, %.lr.ph.split.i ], [ %i.ft, %bb.z ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i.i, %.sroa.9.0.copyload.i ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i = load <16 x i8>, ptr %i.fc, align 1, !noalias !61131 ; 2 uses
  %i.fd = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, %i.fb
  %i.fe = bitcast <16 x i1> %i.fd to i16          ; 2 uses
  %.not.i.not32.i.i.i = icmp eq i16 %i.fe, 0
  br i1 %.not.i.not32.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.x, %bb.y
  %.sroa.06.0.i33.i.i.i = phi i16 [ %i.fr, %bb.y ], [ %i.fe, %bb.x ] ; 3 uses
  %i.ff = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i, i1 true)
  %i.fg = zext nneg i16 %i.ff to i64
  %i.fh = add i64 %.sroa.01.0.i.i.i.i, %i.fg
  %i.fi = and i64 %i.fh, %.sroa.9.0.copyload.i
  %i.fj = sub nsw i64 0, %i.fi
  %i.fk = getelementptr inbounds [16 x i8], ptr %.sroa.03.0.copyload.i, i64 %i.fj ; 2 uses
  %i.fl = getelementptr inbounds i8, ptr %i.fk, i64 -16
  %.val2.i.i.i.i = load i64, ptr %i.fl, align 8, !noalias !61132, !noundef !97
  %i.fm = icmp eq i64 %.val.i.i.i.i.i, %.val2.i.i.i.i
  br i1 %i.fm, label %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapyRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3getyEBW_.exit.i, label %bb.y, !prof !109

._crit_edge.i.i.i:                                ; preds = %bb.y, %bb.x
  %i.fn = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, splat (i8 -1)
  %i.fo = bitcast <16 x i1> %i.fn to i16
  %i.fp = icmp eq i16 %i.fo, 0
  br i1 %i.fp, label %bb.z, label %select.unfold.loopexit.i, !prof !100

bb.y:                                             ; preds = %.lr.ph.i.i.i
  %i.fq = add i16 %.sroa.06.0.i33.i.i.i, -1
  %i.fr = and i16 %i.fq, %.sroa.06.0.i33.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.fr, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.z:                                             ; preds = %._crit_edge.i.i.i
  %i.fs = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.ft = add i64 %.sroa.01.0.i.i.i.i, %i.fs
  br label %bb.x

._crit_edge.i:                                    ; preds = %bb.af
  %i.fu = icmp ult i64 %i.gp, 1152921504606846976
  call void @llvm.assume(i1 %i.fu)
  %i.fv = icmp eq i64 %i.gp, 0
  br i1 %i.fv, label %._crit_edge.thread.i, label %._crit_edge.i.thread.a

.body.i:                                          ; preds = %.loopexit44.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bf, %bb.be, %bb.aq, %.body99.i, %bb.ai, %bb.ah
  %.pn45.i = phi { ptr, i32 } [ %i.gt, %bb.ah ], [ %.pn.i, %bb.aq ], [ %i.lb, %bb.be ], [ %i.gt, %bb.ai ], [ %.pn.i, %.body99.i ], [ %i.lb, %bb.bf ], [ %lpad.loopexit.split-lp1003, %.loopexit44.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.val60.i = load i64, ptr %i.be, align 8, !noalias !61110 ; 2 uses
  %i.fw = icmp eq i64 %.val60.i, 0
  br i1 %i.fw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9KQ7US1M400_11lance_table.exit.i, label %bb.aa

bb.aa:                                            ; preds = %.body.i
  %.val61.i = load ptr, ptr %i.dx, align 8, !noalias !61110, !nonnull !97, !noundef !97
  %i.fx = shl nuw i64 %.val60.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val61.i, i64 noundef %i.fx, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !61120
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9KQ7US1M400_11lance_table.exit.i

.loopexit44.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.t, %bb.ab, %bb.ao, %bb.ae
  %lpad.loopexit.split-lp1003 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapyRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3getyEBW_.exit.i: ; preds = %.lr.ph.i.i.i
  %i.fy = getelementptr inbounds i8, ptr %i.fk, i64 -8
  %i.fz = load ptr, ptr %i.fy, align 8, !noalias !61120, !nonnull !97, !align !102, !noundef !97 ; 3 uses
  %i.ga = load i64, ptr %.sroa.0.058.i, align 8, !range !105, !noalias !61120, !noundef !97
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.0.058.i, i64 8
  %i.gc = trunc nuw i64 %i.ga to i1
  %i.gd = load i64, ptr %i.fz, align 8, !range !105, !noalias !61120, !noundef !97
  %i.ge = trunc nuw i64 %i.gd to i1               ; 2 uses
  br i1 %i.gc, label %bb.ac, label %bb.ad

select.unfold.loopexit.i:                         ; preds = %._crit_edge.i.i.i
  %i.gf = load i64, ptr %i.be, align 8, !range !101, !alias.scope !61121, !noalias !61110, !noundef !97
  %i.gg = icmp eq i64 %i.eu, %i.gf
  br i1 %i.gg, label %bb.ab, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCs9KQ7US1M400_11lance_table.exit.i

bb.ab:                                            ; preds = %select.unfold.loopexit.i
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecyE8grow_oneCs5GHimaBI8WD_10num_bigint(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCs9KQ7US1M400_11lance_table.exit.i unwind label %.loopexit44.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !61120

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCs9KQ7US1M400_11lance_table.exit.i: ; preds = %bb.ab, %select.unfold.loopexit.i
  %i.gh = load ptr, ptr %i.dx, align 8, !alias.scope !61121, !noalias !61110, !nonnull !97, !noundef !97
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.eu
  store i64 %.val.i.i.i.i.i, ptr %i.gi, align 8, !noalias !61120
  %i.gj = add i64 %i.eu, 1                        ; 2 uses
  store i64 %i.gj, ptr %i.dy, align 8, !alias.scope !61121, !noalias !61110
  br label %bb.af

bb.ac:                                            ; preds = %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapyRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3getyEBW_.exit.i
  br i1 %i.ge, label %.split42.i, label %bb.ae

bb.ad:                                            ; preds = %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapyRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3getyEBW_.exit.i
  br i1 %i.ge, label %bb.ae, label %bb.af

.split42.i:                                       ; preds = %bb.ac
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gl = load i64, ptr %i.gb, align 8, !noalias !61120, !noundef !97
  %i.gm = load i64, ptr %i.gk, align 8, !noalias !61120, !noundef !97
  %.not.i = icmp eq i64 %i.gl, %i.gm
  br i1 %.not.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.split42.i, %bb.ad, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !61110
  store ptr %i.ew, ptr %i.bc, align 8, !noalias !61110
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !61110
  %i.gn = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store ptr %.sroa.0.058.i, ptr %i.gn, align 8, !noalias !61110
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store ptr @_RNvXsR_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionjENtNtB7_3fmt5Debug3fmtCs9KQ7US1M400_11lance_table, ptr %.sroa.420.0..sroa_idx.i, align 8, !noalias !61110
  %i.go = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  store ptr %i.fz, ptr %i.go, align 8, !noalias !61110
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  store ptr @_RNvXsR_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionjENtNtB7_3fmt5Debug3fmtCs9KQ7US1M400_11lance_table, ptr %.sroa.424.0..sroa_idx.i, align 8, !noalias !61110
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bd, ptr noundef nonnull @1213, ptr noundef nonnull %i.bc)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9KQ7US1M400_11lance_table.exit.i unwind label %.loopexit44.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !61120

bb.af:                                            ; preds = %.split42.i, %bb.ad, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCs9KQ7US1M400_11lance_table.exit.i
  %i.gp = phi i64 [ %i.eu, %.split42.i ], [ %i.gj, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCs9KQ7US1M400_11lance_table.exit.i ], [ %i.eu, %bb.ad ] ; 3 uses
  %i.gq = icmp eq ptr %i.ev, %i.ec
  br i1 %i.gq, label %._crit_edge.i, label %.lr.ph.split.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9KQ7US1M400_11lance_table.exit.i: ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !61110
  call void @llvm.experimental.noalias.scope.decl(metadata !61133)
  %.sroa.06.0.copyload.i79.i = load i64, ptr %i.bd, align 8, !alias.scope !61134, !noalias !61110 ; 3 uses
  %.sroa.4.0..sroa_idx.i80.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.sroa.4.0.copyload.i81.i = load ptr, ptr %.sroa.4.0..sroa_idx.i80.i, align 8, !alias.scope !61134, !noalias !61110 ; 3 uses
  %.sroa.57.0..sroa_idx.i82.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %.sroa.57.0.copyload.i83.i = load i64, ptr %.sroa.57.0..sroa_idx.i82.i, align 8, !alias.scope !61134, !noalias !61110
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !61135
  %i.gr = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !61135 ; 3 uses
  %i.gs = icmp eq ptr %i.gr, null
  br i1 %i.gs, label %bb.ag, label %bb.aj, !prof !104

bb.ag:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9KQ7US1M400_11lance_table.exit.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #80
          to label %.noexc.i87.i unwind label %bb.ah, !noalias !61136

.noexc.i87.i:                                     ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.ag
  %i.gt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gu = icmp eq i64 %.sroa.06.0.copyload.i79.i, 0
  br i1 %i.gu, label %.body.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i81.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i81.i, i64 noundef %.sroa.06.0.copyload.i79.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !61137
  br label %.body.i

bb.aj:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9KQ7US1M400_11lance_table.exit.i
  store i64 %.sroa.06.0.copyload.i79.i, ptr %i.gr, align 8, !noalias !61136
  br label %bb.ak

bb.ak:                                            ; preds = %bb.bg, %bb.aj
  %.sink117.i = phi ptr [ %i.kz, %bb.bg ], [ %i.gr, %bb.aj ] ; 5 uses
  %.sroa.4.0.copyload.i108.sink.i = phi ptr [ %.sroa.4.0.copyload.i108.i, %bb.bg ], [ %.sroa.4.0.copyload.i81.i, %bb.aj ]
  %.sroa.57.0.copyload.i110.sink.i = phi i64 [ %.sroa.57.0.copyload.i110.i, %bb.bg ], [ %.sroa.57.0.copyload.i83.i, %bb.aj ]
  %.sink.i = phi ptr [ @1216, %bb.bg ], [ @1214, %bb.aj ] ; 3 uses
  %.sroa.5.0..sroa_idx2.i111.i = getelementptr inbounds nuw i8, ptr %.sink117.i, i64 8
  store ptr %.sroa.4.0.copyload.i108.sink.i, ptr %.sroa.5.0..sroa_idx2.i111.i, align 8, !noalias !61120
  %.sroa.6.0..sroa_idx4.i112.i = getelementptr inbounds nuw i8, ptr %.sink117.i, i64 16
  store i64 %.sroa.57.0.copyload.i110.sink.i, ptr %.sroa.6.0..sroa_idx4.i112.i, align 8, !noalias !61120
  %.val58.i = load i64, ptr %i.be, align 8, !noalias !61110 ; 2 uses
  %i.gv = icmp eq i64 %.val58.i, 0
  br i1 %i.gv, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9KQ7US1M400_11lance_table.exit89.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.val59.i = load ptr, ptr %i.dx, align 8, !noalias !61110, !nonnull !97, !noundef !97
  %i.gw = shl nuw i64 %.val58.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val59.i, i64 noundef %i.gw, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !61120
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9KQ7US1M400_11lance_table.exit89.i

._crit_edge.thread.i:                             ; preds = %._crit_edge.i
  %.val56.i.pre = load i64, ptr %i.be, align 8, !noalias !61110 ; 2 uses
  %i.gx = icmp eq i64 %.val56.i.pre, 0
  br i1 %i.gx, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9KQ7US1M400_11lance_table.exit90.i, label %bb.am

bb.am:                                            ; preds = %._crit_edge.thread.i
  %.val57.i = load ptr, ptr %i.dx, align 8, !noalias !61110, !nonnull !97, !noundef !97
  %i.gy = shl nuw i64 %.val56.i.pre, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val57.i, i64 noundef %i.gy, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !61120
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9KQ7US1M400_11lance_table.exit90.i

._crit_edge.i.thread.a:                           ; preds = %._crit_edge.i.thread, %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !61110
  %i.gz = load ptr, ptr %i.dz, align 8, !noalias !61110, !nonnull !97, !noundef !97 ; 5 uses
  %i.ha = load i64, ptr %i.dc, align 8, !noalias !61110, !noundef !97 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !61138)
  %i.hb = shl nuw nsw i64 %i.ha, 3                ; 2 uses
  %i.hc = icmp eq i64 %i.ha, 0
  br i1 %i.hc, label %.loopexit.i, label %bb.an

bb.an:                                            ; preds = %._crit_edge.i.thread.a
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !61139
  %i.hd = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.hb, i64 noundef range(i64 1, 9) 8) #76, !noalias !61139 ; 8 uses
  %i.he = icmp eq ptr %i.hd, null
  br i1 %i.he, label %bb.ao, label %.preheader.i.i.i.i.preheader

.preheader.i.i.i.i.preheader:                     ; preds = %bb.an
  %xtraiter = and i64 %i.ha, 3                    ; 3 uses
  %i.hf = icmp ult i64 %i.ha, 4
  br i1 %i.hf, label %.preheader.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.preheader.new

.preheader.i.i.i.i.preheader.new:                 ; preds = %.preheader.i.i.i.i.preheader
  %unroll_iter = and i64 %i.ha, -4
  br label %.preheader.i.i.i.i

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.hb) #80
          to label %.noexc93.i unwind label %.loopexit44.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !61120

.noexc93.i:                                       ; preds = %bb.ao
  unreachable

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.i.i, %.preheader.i.i.i.i.preheader.new
  %i.hg = phi i64 [ 0, %.preheader.i.i.i.i.preheader.new ], [ %i.hw, %.preheader.i.i.i.i ] ; 6 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.preheader.new ], [ %niter.next.3, %.preheader.i.i.i.i ]
  %i.hh = getelementptr inbounds nuw [240 x i8], ptr %i.gz, i64 %i.hg
  %i.hi = getelementptr i8, ptr %i.hh, i64 232
  %.val16.i.i.i.i.i.i.i = load i64, ptr %i.hi, align 8, !noalias !61140, !noundef !97
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %i.hg
  store i64 %.val16.i.i.i.i.i.i.i, ptr %i.hj, align 8, !noalias !61141
  %i.hk = or disjoint i64 %i.hg, 1                ; 2 uses
  %i.hl = getelementptr inbounds nuw [240 x i8], ptr %i.gz, i64 %i.hk
  %i.hm = getelementptr i8, ptr %i.hl, i64 232
  %.val16.i.i.i.i.i.i.i.1 = load i64, ptr %i.hm, align 8, !noalias !61140, !noundef !97
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %i.hk
  store i64 %.val16.i.i.i.i.i.i.i.1, ptr %i.hn, align 8, !noalias !61141
  %i.ho = or disjoint i64 %i.hg, 2                ; 2 uses
  %i.hp = getelementptr inbounds nuw [240 x i8], ptr %i.gz, i64 %i.ho
  %i.hq = getelementptr i8, ptr %i.hp, i64 232
  %.val16.i.i.i.i.i.i.i.2 = load i64, ptr %i.hq, align 8, !noalias !61140, !noundef !97
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %i.ho
  store i64 %.val16.i.i.i.i.i.i.i.2, ptr %i.hr, align 8, !noalias !61141
  %i.hs = or disjoint i64 %i.hg, 3                ; 2 uses
  %i.ht = getelementptr inbounds nuw [240 x i8], ptr %i.gz, i64 %i.hs
  %i.hu = getelementptr i8, ptr %i.ht, i64 232
  %.val16.i.i.i.i.i.i.i.3 = load i64, ptr %i.hu, align 8, !noalias !61140, !noundef !97
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %i.hs
  store i64 %.val16.i.i.i.i.i.i.i.3, ptr %i.hv, align 8, !noalias !61141
  %i.hw = add nuw i64 %i.hg, 4                    ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.i.loopexit.unr-lcssa, label %.preheader.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9KQ7US1M400_11lance_table.exit.i: ; preds = %bb.aa, %.body.i
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEEB1E_(ptr %.sroa.03.0.copyload.i, i64 %.sroa.9.0.copyload.i) #81, !noalias !61120
  br label %common.resume

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9KQ7US1M400_11lance_table.exit90.i: ; preds = %_RINvXs1c_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB7_7HashMapyRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorTyB16_EE9from_iterINtNtNtB2b_8adapters3map3MapINtNtNtB2d_5slice4iter4IterB17_ENCNvNtNtB1d_11transaction8validate21merge_fragments_valid0EEB1d_.exit.i, %bb.am, %._crit_edge.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !61110
  %i.hx = icmp eq i64 %.sroa.9.0.copyload.i, 0
  br i1 %i.hx, label %bb.bn, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9KQ7US1M400_11lance_table.exit90.i
  %i.hy = shl i64 %.sroa.9.0.copyload.i, 4        ; 2 uses
  %i.hz = add i64 %i.hy, 16                       ; 2 uses
  %i.ia = add i64 %.sroa.9.0.copyload.i, 17
  %i.ib = add i64 %i.ia, %i.hz                    ; 4 uses
  %i.ic = icmp uge i64 %i.ib, %i.hz
  %i.id = icmp ult i64 %i.ib, 9223372036854775793
  call void @llvm.assume(i1 %i.ic)
  call void @llvm.assume(i1 %i.id)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.copyload.i) ]
  %i.ie = icmp eq i64 %i.ib, 0
  br i1 %i.ie, label %bb.bn, label %bb.ap

bb.ap:                                            ; preds = %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i
  %i.if = sub nuw nsw i64 -16, %i.hy
  %i.ig = getelementptr inbounds i8, ptr %.sroa.03.0.copyload.i, i64 %i.if
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ig, i64 noundef %i.ib, i64 noundef range(i64 1, -9223372036854775807) 16) #76, !noalias !61120
  br label %bb.bn

.body99.i:                                        ; preds = %bb.ba, %bb.az, %bb.ax, %bb.aw, %bb.ar
  %.pn.i = phi { ptr, i32 } [ %i.kl, %bb.aw ], [ %i.ij, %bb.ar ], [ %i.kl, %bb.ax ], [ %i.kq, %bb.az ], [ %i.kq, %bb.ba ] ; 2 uses
  %.val54.i = load i64, ptr %i.ba, align 8, !noalias !61110 ; 2 uses
  %i.ih = icmp eq i64 %.val54.i, 0
  br i1 %i.ih, label %.body.i, label %bb.aq

bb.aq:                                            ; preds = %.body99.i
  %.val55.i = load ptr, ptr %.sroa.4.0..sroa_idx.i91.i, align 8, !noalias !61110, !nonnull !97, !noundef !97
  %i.ii = shl nuw i64 %.val54.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val55.i, i64 noundef %i.ii, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !61120
  br label %.body.i

bb.ar:                                            ; preds = %bb.au
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %.body99.i

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.preheader.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.preheader.i.i.i.i.epil.preheader

.preheader.i.i.i.i.epil.preheader:                ; preds = %.loopexit.i.loopexit.unr-lcssa, %.preheader.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.preheader ], [ %i.hw, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod1020 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1020)
  br label %.preheader.i.i.i.i.epil

.preheader.i.i.i.i.epil:                          ; preds = %.preheader.i.i.i.i.epil, %.preheader.i.i.i.i.epil.preheader
  %i.ik = phi i64 [ %i.io, %.preheader.i.i.i.i.epil ], [ %.epil.init, %.preheader.i.i.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.i.i.i.epil ], [ 0, %.preheader.i.i.i.i.epil.preheader ]
  %i.il = getelementptr inbounds nuw [240 x i8], ptr %i.gz, i64 %i.ik
  %i.im = getelementptr i8, ptr %i.il, i64 232
  %.val16.i.i.i.i.i.i.i.epil = load i64, ptr %i.im, align 8, !noalias !61140, !noundef !97
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %i.ik
  store i64 %.val16.i.i.i.i.i.i.i.epil, ptr %i.in, align 8, !noalias !61141
  %i.io = add nuw i64 %i.ik, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i, label %.preheader.i.i.i.i.epil, !llvm.loop !60712

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.preheader.i.i.i.i.epil, %._crit_edge.i.thread.a
  %.sroa.10.0.i11.i.i = phi ptr [ inttoptr (i64 8 to ptr), %._crit_edge.i.thread.a ], [ %i.hd, %.preheader.i.i.i.i.epil ], [ %i.hd, %.loopexit.i.loopexit.unr-lcssa ]
  store i64 %i.ha, ptr %i.ba, align 8, !alias.scope !61138, !noalias !61110
  %.sroa.4.0..sroa_idx.i91.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i11.i.i, ptr %.sroa.4.0..sroa_idx.i91.i, align 8, !alias.scope !61138, !noalias !61110
  %.sroa.5.0..sroa_idx.i92.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i64 %i.ha, ptr %.sroa.5.0..sroa_idx.i92.i, align 8, !alias.scope !61138, !noalias !61110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !61110
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.copyload.i) ]
  %.val3.i.i.i = load <16 x i8>, ptr %.sroa.03.0.copyload.i, align 16, !noalias !61142
  call void @llvm.experimental.noalias.scope.decl(metadata !61143)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !61144
  br i1 %i.ee, label %bb.av, label %bb.as

bb.as:                                            ; preds = %.loopexit.i
  %i.ip = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.iq = bitcast <16 x i1> %i.ip to i16          ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 16 ; 2 uses
  %.not12.i.i.i.i.i.i = icmp eq i16 %i.iq, 0
  br i1 %.not12.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.as, %.lr.ph.i.i.i.i.i.i
  %i.is = phi ptr [ %i.iw, %.lr.ph.i.i.i.i.i.i ], [ %i.ir, %bb.as ] ; 2 uses
  %i.it = phi ptr [ %i.iv, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.03.0.copyload.i, %bb.as ]
  %.val10.i.i.i.i.i.i = load <16 x i8>, ptr %i.is, align 16, !noalias !61145
  %i.iu = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i, splat (i8 -1)
  %i.iv = getelementptr inbounds i8, ptr %i.it, i64 -256 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.is, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i = bitcast <16 x i1> %i.iu to i16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i.i

._crit_edge19.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i, %bb.as
  %.sroa.626.0.i = phi ptr [ %i.ir, %bb.as ], [ %i.iw, %.lr.ph.i.i.i.i.i.i ]
  %.sroa.010.0.copyload.i.i = phi ptr [ %.sroa.03.0.copyload.i, %bb.as ], [ %i.iv, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i = phi i16 [ %i.iq, %bb.as ], [ %.cast.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.ix = add i16 %.lcssa.i.i.i.i.i.i, -1
  %i.iy = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i, i1 true)
  %i.iz = zext nneg i16 %i.iy to i64
  %i.ja = and i16 %i.ix, %.lcssa.i.i.i.i.i.i
  %i.jb = sub nsw i64 0, %i.iz
  %i.jc = getelementptr inbounds [16 x i8], ptr %.sroa.010.0.copyload.i.i, i64 %i.jb
  %i.jd = add nsw i64 %.sroa.146.0.copyload.i, -1 ; 2 uses
  %i.je = getelementptr inbounds i8, ptr %i.jc, i64 -16
  %i.jf = load i64, ptr %i.je, align 8, !noalias !61146, !noundef !97
  %.sroa.0.0.i9.i.i = call noundef i64 @llvm.umax.i64(i64 %.sroa.146.0.copyload.i, i64 4) ; 2 uses
  %i.jg = shl i64 %.sroa.0.0.i9.i.i, 3            ; 3 uses
  %i.jh = icmp ugt i64 %.sroa.146.0.copyload.i, 2305843009213693951
  %.not.i.i.i.i = icmp ugt i64 %i.jg, 9223372036854775800
  %or.cond.i.i.i.i = or i1 %i.jh, %.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb.au, label %bb.at, !prof !98

bb.at:                                            ; preds = %._crit_edge19.i.i.i.i.i.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !61147
  %i.ji = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.jg, i64 noundef range(i64 1, 9) 8) #76, !noalias !61147 ; 4 uses
  %i.jj = icmp eq ptr %i.ji, null
  br i1 %i.jj, label %bb.au, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.i.i

bb.au:                                            ; preds = %bb.at, %._crit_edge19.i.i.i.i.i.i
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.at ], [ 0, %._crit_edge19.i.i.i.i.i.i ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.jg) #80
          to label %.noexc98.i unwind label %bb.ar, !noalias !61120

.noexc98.i:                                       ; preds = %bb.au
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.i.i: ; preds = %bb.at
  store i64 %i.jf, ptr %i.ji, align 8, !noalias !61148
  store i64 %.sroa.0.0.i9.i.i, ptr %i.aw, align 8, !noalias !61144
  %.sroa.4.0..sroa_idx.i95.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 3 uses
  store ptr %i.ji, ptr %.sroa.4.0..sroa_idx.i95.i, align 8, !noalias !61144
end_hunk_1
begin_hunk_2_@_RNvNtNtCs9KQ7US1M400_11lance_table2io6commit26make_staging_manifest_path:bb.a
  %.val.i = load i64, ptr %i.j, align 8, !alias.scope !62966 ; 2 uses
  %i.s = icmp eq i64 %.val.i, 0
  br i1 %i.s, label %common.resume, label %bb.g

bb.g:                                             ; preds = %.body
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val1.i = load ptr, ptr %i.t, align 8, !alias.scope !62966, !nonnull !97, !noundef !97
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !62966
  br label %common.resume

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9KQ7US1M400_11lance_table.exit: ; preds = %_RNvXsC_NtCs40k4W9msRzi_5alloc6stringNtCs8d5NHFTTVL0_4uuid4UuidNtB5_12SpecToString14spec_to_stringCs9KQ7US1M400_11lance_table.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !62967)
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val.i17 = load ptr, ptr %i.u, align 8, !alias.scope !62967, !nonnull !97, !noundef !97 ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.val79.i = load i64, ptr %i.v, align 8, !alias.scope !62967, !noundef !97 ; 16 uses
  %.not.i.i = icmp eq i64 %.val79.i, 0
  br i1 %.not.i.i, label %.thread207.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSh11starts_withCs9KQ7US1M400_11lance_table.exit.i

.body.i:                                          ; preds = %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, %bb.cl, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.lv, %bb.cl ], [ %i.lv, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i.i ], [ %lpad.loopexit.split-lp, %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !62968)
  %.val.i.i18 = load i64, ptr %i.h, align 8, !alias.scope !62969 ; 2 uses
  %i.w = icmp eq i64 %.val.i.i18, 0
  br i1 %i.w, label %.body, label %bb.h

bb.h:                                             ; preds = %.body.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i17, i64 noundef %.val.i.i18, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !62970
  br label %.body

_RNvMNtCscI6d9CVNmLh_4core5sliceSh11starts_withCs9KQ7US1M400_11lance_table.exit.i: ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9KQ7US1M400_11lance_table.exit
  %rhsc.i.i = load i8, ptr %.val.i17, align 1, !alias.scope !62971, !noalias !62972
  %rhsc.i.fr.i = freeze i8 %rhsc.i.i
  %i.x = icmp eq i8 %rhsc.i.fr.i, 47
  br i1 %i.x, label %.split.i, label %.thread208.i

.split.i:                                         ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSh11starts_withCs9KQ7US1M400_11lance_table.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %.val.i17, i64 1
  %i.z = add i64 %.val79.i, -1                    ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.thread207.i, label %.thread208.i

.thread207.i:                                     ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9KQ7US1M400_11lance_table.exit, %.split.i, %_RNCINvMNtCs3PfUT229lOd_12object_store4pathNtB5_4Path5parseNtNtCs40k4W9msRzi_5alloc6string6StringE0Cs9KQ7US1M400_11lance_table.exit.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit98.thread256.i
  %.sroa.25.0 = phi i64 [ %.sroa.8192.0.copyload.i, %_RNCINvMNtCs3PfUT229lOd_12object_store4pathNtB5_4Path5parseNtNtCs40k4W9msRzi_5alloc6string6StringE0Cs9KQ7US1M400_11lance_table.exit.i ], [ undef, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit98.thread256.i ], [ undef, %.split.i ], [ undef, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9KQ7US1M400_11lance_table.exit ] ; 2 uses
  %.sroa.24.0 = phi ptr [ %.sroa.7191.0.copyload.i, %_RNCINvMNtCs3PfUT229lOd_12object_store4pathNtB5_4Path5parseNtNtCs40k4W9msRzi_5alloc6string6StringE0Cs9KQ7US1M400_11lance_table.exit.i ], [ undef, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit98.thread256.i ], [ undef, %.split.i ], [ undef, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9KQ7US1M400_11lance_table.exit ] ; 2 uses
  %.sroa.21.0 = phi ptr [ %.sroa.4188.0.copyload.i, %_RNCINvMNtCs3PfUT229lOd_12object_store4pathNtB5_4Path5parseNtNtCs40k4W9msRzi_5alloc6string6StringE0Cs9KQ7US1M400_11lance_table.exit.i ], [ undef, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit98.thread256.i ], [ undef, %.split.i ], [ undef, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9KQ7US1M400_11lance_table.exit ] ; 2 uses
  %.sroa.17.0 = phi i64 [ %.us-phi336.i, %_RNCINvMNtCs3PfUT229lOd_12object_store4pathNtB5_4Path5parseNtNtCs40k4W9msRzi_5alloc6string6StringE0Cs9KQ7US1M400_11lance_table.exit.i ], [ %.val79.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit98.thread256.i ], [ 0, %.split.i ], [ 0, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9KQ7US1M400_11lance_table.exit ] ; 2 uses
  %.sroa.13.0 = phi ptr [ %i.lz, %_RNCINvMNtCs3PfUT229lOd_12object_store4pathNtB5_4Path5parseNtNtCs40k4W9msRzi_5alloc6string6StringE0Cs9KQ7US1M400_11lance_table.exit.i ], [ %i.ln, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit98.thread256.i ], [ inttoptr (i64 1 to ptr), %.split.i ], [ inttoptr (i64 1 to ptr), %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9KQ7US1M400_11lance_table.exit ] ; 2 uses
  %.sroa.8.0 = phi i64 [ %i.ly, %_RNCINvMNtCs3PfUT229lOd_12object_store4pathNtB5_4Path5parseNtNtCs40k4W9msRzi_5alloc6string6StringE0Cs9KQ7US1M400_11lance_table.exit.i ], [ %.val79.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit98.thread256.i ], [ 0, %.split.i ], [ 0, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9KQ7US1M400_11lance_table.exit ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %.val79.i, %_RNCINvMNtCs3PfUT229lOd_12object_store4pathNtB5_4Path5parseNtNtCs40k4W9msRzi_5alloc6string6StringE0Cs9KQ7US1M400_11lance_table.exit.i ], [ -9223372036854775808, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit98.thread256.i ], [ -1, %.split.i ], [ -1, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9KQ7US1M400_11lance_table.exit ] ; 2 uses
  %i.ab = phi <2 x i64> [ %i.ls, %_RNCINvMNtCs3PfUT229lOd_12object_store4pathNtB5_4Path5parseNtNtCs40k4W9msRzi_5alloc6string6StringE0Cs9KQ7US1M400_11lance_table.exit.i ], [ undef, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit98.thread256.i ], [ undef, %.split.i ], [ undef, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9KQ7US1M400_11lance_table.exit ] ; 2 uses
  %.val.i84.i = load i64, ptr %i.h, align 8, !alias.scope !62973 ; 2 uses
  %i.ac = icmp eq i64 %.val.i84.i, 0
  br i1 %i.ac, label %_RINvMNtCs3PfUT229lOd_12object_store4pathNtB3_4Path5parseNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit86.sink.split.i

.thread208.i:                                     ; preds = %.split.i, %_RNvMNtCscI6d9CVNmLh_4core5sliceSh11starts_withCs9KQ7US1M400_11lance_table.exit.i
  %i.ad = phi ptr [ %i.y, %.split.i ], [ %.val.i17, %_RNvMNtCscI6d9CVNmLh_4core5sliceSh11starts_withCs9KQ7US1M400_11lance_table.exit.i ] ; 3 uses
  %i.ae = phi i64 [ %i.z, %.split.i ], [ %.val79.i, %_RNvMNtCscI6d9CVNmLh_4core5sliceSh11starts_withCs9KQ7US1M400_11lance_table.exit.i ] ; 2 uses
  %i.af = getelementptr i8, ptr %i.ad, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 -1
  %rhsc.i = load i8, ptr %i.ag, align 1, !noalias !62972
  %i.ah = icmp eq i8 %rhsc.i, 47
  %i.ai = sext i1 %i.ah to i64
  %spec.select.i = add i64 %i.ae, %i.ai           ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !62972
  invoke void @_RNvMsu_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef %spec.select.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 1)
          to label %bb.i unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !62972

bb.i:                                             ; preds = %.thread208.i
  %.sroa.038.sroa.0.0.copyload.i = load i64, ptr %i.b, align 8, !noalias !62972
  %.sroa.038.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.038.sroa.4.0.copyload.i = load i64, ptr %.sroa.038.sroa.4.0..sroa_idx.i, align 8, !noalias !62972 ; 33 uses
  %.sroa.038.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.038.sroa.6.0.copyload.i = load i64, ptr %.sroa.038.sroa.6.0..sroa_idx.i, align 8, !noalias !62972 ; 5 uses
  %.sroa.038.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.038.sroa.7.0.copyload.i = load i64, ptr %.sroa.038.sroa.7.0..sroa_idx.i, align 8, !noalias !62972 ; 2 uses
  %.sroa.038.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.038.sroa.8.0.copyload.i = load i64, ptr %.sroa.038.sroa.8.0..sroa_idx.i, align 8, !noalias !62972
  %.sroa.038.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.038.sroa.10.0.copyload.i = load i64, ptr %.sroa.038.sroa.10.0..sroa_idx.i, align 8, !noalias !62972
  %.sroa.038.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %.sroa.038.sroa.12.0.copyload.i = load ptr, ptr %.sroa.038.sroa.12.0..sroa_idx.i, align 8, !noalias !62972, !nonnull !97, !noundef !97 ; 23 uses
  %.sroa.038.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.sroa.038.sroa.13.0.copyload.i = load i64, ptr %.sroa.038.sroa.13.0..sroa_idx.i, align 8, !noalias !62972 ; 69 uses
  %.sroa.038.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.sroa.038.sroa.14.0.copyload.i = load ptr, ptr %.sroa.038.sroa.14.0..sroa_idx.i, align 8, !noalias !62972 ; 5 uses
  %.sroa.038.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.sroa.038.sroa.15.0.copyload.i = load i64, ptr %.sroa.038.sroa.15.0..sroa_idx.i, align 8, !noalias !62972 ; 14 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !62972
  %i.aj = trunc nuw i64 %.sroa.038.sroa.0.0.copyload.i to i1
  %i.ak = add nsw i64 %.sroa.038.sroa.15.0.copyload.i, -1 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %.sroa.4180.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 5 uses
  br i1 %i.aj, label %.split311.us.i, label %.preheader.i.i.preheader.i

.preheader.i.i.preheader.i:                       ; preds = %bb.i
  %i.am = and i64 %.sroa.038.sroa.6.0.copyload.i, 65536
  %.sroa.9124.sroa.10141.0.extract.trunc.i.not = icmp eq i64 %i.am, 0
  %.sroa.9124.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.038.sroa.6.0.copyload.i to i1 ; 3 uses
  br i1 %.sroa.9124.sroa.10141.0.extract.trunc.i.not, label %.lr.ph.i.i.i.peel, label %.loopexit19.thread.i.i.peel

.lr.ph.i.i.i.peel:                                ; preds = %.preheader.i.i.preheader.i
  %i.an = icmp eq i64 %.sroa.038.sroa.4.0.copyload.i, 0
  br i1 %i.an, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.peel
  %.not.i.i.i.peel.i.i.peel = icmp ult i64 %.sroa.038.sroa.4.0.copyload.i, %.sroa.038.sroa.13.0.copyload.i
  br i1 %.not.i.i.i.peel.i.i.peel, label %bb.k, label %.split.i.i.i.peel.i.i.peel

.split.i.i.i.peel.i.i.peel:                       ; preds = %bb.j
  %i.ao = icmp eq i64 %.sroa.038.sroa.4.0.copyload.i, %.sroa.038.sroa.13.0.copyload.i
  br i1 %i.ao, label %bb.l, label %.loopexit.i.i

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload.i, i64 %.sroa.038.sroa.4.0.copyload.i
  %i.aq = load i8, ptr %i.ap, align 1, !alias.scope !62974, !noalias !62975, !noundef !97
  %i.ar = icmp sgt i8 %i.aq, -65
  br i1 %i.ar, label %bb.l, label %.loopexit.i.i

bb.l:                                             ; preds = %bb.k, %.split.i.i.i.peel.i.i.peel, %.lr.ph.i.i.i.peel
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload.i, i64 %.sroa.038.sroa.4.0.copyload.i ; 4 uses
  %i.at = icmp samesign eq i64 %.sroa.038.sroa.4.0.copyload.i, %.sroa.038.sroa.13.0.copyload.i
  br i1 %i.at, label %.loopexit19.i.i.peel, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = load i8, ptr %i.as, align 1, !noalias !62976, !noundef !97 ; 5 uses
  %i.av = icmp sgt i8 %i.au, -1
  br i1 %i.av, label %bb.n, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.peel.i.i.peel

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.peel.i.i.peel: ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %i.ax = and i8 %i.au, 31
  %i.ay = zext nneg i8 %i.ax to i32               ; 3 uses
  %i.az = add nuw nsw i64 %.sroa.038.sroa.4.0.copyload.i, 1
  %i.ba = icmp samesign ne i64 %i.az, %.sroa.038.sroa.13.0.copyload.i
  call void @llvm.assume(i1 %i.ba)
  %i.bb = load i8, ptr %i.aw, align 1, !noalias !62976, !noundef !97
  %i.bc = shl nuw nsw i32 %i.ay, 6
  %i.bd = and i8 %i.bb, 63
  %i.be = zext nneg i8 %i.bd to i32               ; 2 uses
  %i.bf = or disjoint i32 %i.bc, %i.be
  %i.bg = icmp samesign ugt i8 %i.au, -33
  br i1 %i.bg, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.peel.i.i.peel, label %bb.o

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.peel.i.i.peel: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.peel.i.i.peel
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.bi = add nuw nsw i64 %.sroa.038.sroa.4.0.copyload.i, 2
  %i.bj = icmp samesign ne i64 %i.bi, %.sroa.038.sroa.13.0.copyload.i
  call void @llvm.assume(i1 %i.bj)
  %i.bk = load i8, ptr %i.bh, align 1, !noalias !62976, !noundef !97
  %i.bl = shl nuw nsw i32 %i.be, 6
  %i.bm = and i8 %i.bk, 63
  %i.bn = zext nneg i8 %i.bm to i32
  %i.bo = or disjoint i32 %i.bl, %i.bn            ; 2 uses
  %i.bp = shl nuw nsw i32 %i.ay, 12
  %i.bq = or disjoint i32 %i.bo, %i.bp
  %i.br = icmp samesign ugt i8 %i.au, -17
  br i1 %i.br, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.peel.i.i.peel, label %bb.o

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.peel.i.i.peel: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.peel.i.i.peel
  %i.bs = getelementptr inbounds nuw i8, ptr %i.as, i64 3
  %i.bt = add nuw nsw i64 %.sroa.038.sroa.4.0.copyload.i, 3
  %i.bu = icmp samesign ne i64 %i.bt, %.sroa.038.sroa.13.0.copyload.i
  call void @llvm.assume(i1 %i.bu)
  %i.bv = load i8, ptr %i.bs, align 1, !noalias !62976, !noundef !97
  %i.bw = shl nuw nsw i32 %i.ay, 18
  %i.bx = and i32 %i.bw, 1835008
  %i.by = shl nuw nsw i32 %i.bo, 6
  %i.bz = and i8 %i.bv, 63
  %i.ca = zext nneg i8 %i.bz to i32
  %i.cb = or disjoint i32 %i.by, %i.ca
  %i.cc = or disjoint i32 %i.cb, %i.bx
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cd = zext nneg i8 %i.au to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.peel.i.i.peel, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.peel.i.i.peel, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.peel.i.i.peel
  %.sroa.4.0.i.ph.i.i.peel.i.i.peel = phi i32 [ %i.bq, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.peel.i.i.peel ], [ %i.cc, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.peel.i.i.peel ], [ %i.bf, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.peel.i.i.peel ], [ %i.cd, %bb.n ] ; 4 uses
  %i.ce = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.peel, 1114112
  call void @llvm.assume(i1 %i.ce)
  br i1 %.sroa.9124.sroa.0.0.extract.trunc.i, label %.loopexit19.thread.i.i.peel, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.peel, 128
  br i1 %i.cf, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.peel, 2048
  br i1 %i.cg, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ch = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.peel, 65536
  %..i.i.peel.i.i.peel = select i1 %i.ch, i64 3, i64 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.sroa.01.0.i.i.peel.i.i.peel = phi i64 [ 2, %bb.q ], [ %..i.i.peel.i.i.peel, %bb.r ], [ 1, %bb.p ]
  %i.ci = add i64 %.sroa.01.0.i.i.peel.i.i.peel, %.sroa.038.sroa.4.0.copyload.i ; 14 uses
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not.i.i.i.i.i.peel = icmp ult i64 %i.ci, %.sroa.038.sroa.13.0.copyload.i
  br i1 %.not.i.i.i.i.i.peel, label %bb.u, label %.split.i.i.i.i.i.peel

.split.i.i.i.i.i.peel:                            ; preds = %bb.t
  %i.ck = icmp eq i64 %i.ci, %.sroa.038.sroa.13.0.copyload.i
  br i1 %i.ck, label %bb.v, label %.loopexit.i.i

bb.u:                                             ; preds = %bb.t
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload.i, i64 %i.ci
  %i.cm = load i8, ptr %i.cl, align 1, !alias.scope !62974, !noalias !62977, !noundef !97
  %i.cn = icmp sgt i8 %i.cm, -65
  br i1 %i.cn, label %bb.v, label %.loopexit.i.i

bb.v:                                             ; preds = %bb.u, %.split.i.i.i.i.i.peel, %bb.s
  %2 = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload.i, i64 %i.ci ; 4 uses
  %i.co = icmp samesign eq i64 %i.ci, %.sroa.038.sroa.13.0.copyload.i
  br i1 %i.co, label %.loopexit19.thread.i.i.peel, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cp = load i8, ptr %2, align 1, !noalias !62978, !noundef !97 ; 5 uses
  %i.cq = icmp sgt i8 %i.cp, -1
  br i1 %i.cq, label %28, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.i.i.peel

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.i.i.peel: ; preds = %bb.w
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %4 = and i8 %i.cp, 31
  %5 = zext nneg i8 %4 to i32                     ; 3 uses
  %i.cr = add nuw nsw i64 %i.ci, 1
  %i.cs = icmp samesign ne i64 %i.cr, %.sroa.038.sroa.13.0.copyload.i
  call void @llvm.assume(i1 %i.cs)
  %6 = load i8, ptr %3, align 1, !noalias !62978, !noundef !97
  %7 = shl nuw nsw i32 %5, 6
  %8 = and i8 %6, 63
  %9 = zext nneg i8 %8 to i32                     ; 2 uses
  %10 = or disjoint i32 %7, %9
  %i.ct = icmp samesign ugt i8 %i.cp, -33
  br i1 %i.ct, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.i.i.peel, label %.loopexit.i.loopexit.i.i.peel

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.i.i.peel
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.cu = add nuw nsw i64 %i.ci, 2
  %i.cv = icmp samesign ne i64 %i.cu, %.sroa.038.sroa.13.0.copyload.i
  call void @llvm.assume(i1 %i.cv)
  %12 = load i8, ptr %11, align 1, !noalias !62978, !noundef !97
  %13 = shl nuw nsw i32 %9, 6
  %14 = and i8 %12, 63
  %15 = zext nneg i8 %14 to i32
  %16 = or disjoint i32 %13, %15                  ; 2 uses
  %17 = shl nuw nsw i32 %5, 12
  %18 = or disjoint i32 %16, %17
  %i.cw = icmp samesign ugt i8 %i.cp, -17
  br i1 %i.cw, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.i.i.peel, label %.loopexit.i.loopexit.i.i.peel

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.i.i.peel
  %19 = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.cx = add nuw nsw i64 %i.ci, 3
  %i.cy = icmp samesign ne i64 %i.cx, %.sroa.038.sroa.13.0.copyload.i
  call void @llvm.assume(i1 %i.cy)
  %20 = load i8, ptr %19, align 1, !noalias !62978, !noundef !97
  %21 = shl nuw nsw i32 %5, 18
  %22 = and i32 %21, 1835008
  %23 = shl nuw nsw i32 %16, 6
  %24 = and i8 %20, 63
  %25 = zext nneg i8 %24 to i32
  %26 = or disjoint i32 %23, %25
  %27 = or disjoint i32 %26, %22
  br label %.loopexit.i.loopexit.i.i.peel

28:                                               ; preds = %bb.w
  %29 = zext nneg i8 %i.cp to i32
  br label %.loopexit.i.loopexit.i.i.peel

.loopexit.i.loopexit.i.i.peel:                    ; preds = %28, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.i.i.peel, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.i.i.peel, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.i.i.peel
  %.sroa.4.0.i.ph.i.i.i.i.peel = phi i32 [ %18, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.i.i.peel ], [ %27, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.i.i.peel ], [ %10, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.i.i.peel ], [ %29, %28 ]
  %30 = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.peel, 1114112
  call void @llvm.assume(i1 %30)
  br label %.loopexit19.thread.i.i.peel

.loopexit19.i.i.peel:                             ; preds = %bb.l
  br i1 %.sroa.9124.sroa.0.0.extract.trunc.i, label %.loopexit19.thread.i.i.peel, label %bb.x

bb.x:                                             ; preds = %.loopexit19.i.i.peel
  br label %.loopexit19.thread.i.i.peel

.loopexit19.thread.i.i.peel:                      ; preds = %bb.x, %.loopexit19.i.i.peel, %.loopexit.i.loopexit.i.i.peel, %bb.v, %bb.o, %.preheader.i.i.preheader.i
  %.sroa.9124.sroa.0.4.i.peel = phi i1 [ true, %bb.x ], [ false, %.loopexit19.i.i.peel ], [ false, %bb.o ], [ false, %.loopexit.i.loopexit.i.i.peel ], [ false, %bb.v ], [ %.sroa.9124.sroa.0.0.extract.trunc.i, %.preheader.i.i.preheader.i ] ; 2 uses
  %.sroa.51.2.i.peel = phi i1 [ true, %bb.x ], [ false, %.loopexit19.i.i.peel ], [ false, %bb.o ], [ false, %.loopexit.i.loopexit.i.i.peel ], [ false, %bb.v ], [ true, %.preheader.i.i.preheader.i ]
  %.sroa.41.2.i.peel = phi i64 [ 0, %bb.x ], [ %.sroa.038.sroa.4.0.copyload.i, %.loopexit19.i.i.peel ], [ %.sroa.038.sroa.4.0.copyload.i, %bb.o ], [ %i.ci, %.loopexit.i.loopexit.i.i.peel ], [ %.sroa.038.sroa.13.0.copyload.i, %bb.v ], [ 0, %.preheader.i.i.preheader.i ] ; 4 uses
  %.sroa.5.5.i.peel = phi i64 [ %.sroa.038.sroa.4.0.copyload.i, %bb.x ], [ %.sroa.038.sroa.4.0.copyload.i, %.loopexit19.i.i.peel ], [ %.sroa.038.sroa.4.0.copyload.i, %bb.o ], [ %i.ci, %.loopexit.i.loopexit.i.i.peel ], [ %.sroa.038.sroa.13.0.copyload.i, %bb.v ], [ %.sroa.038.sroa.4.0.copyload.i, %.preheader.i.i.preheader.i ] ; 15 uses
  %spec.select.pn.i.peel = phi i64 [ %spec.select.i, %bb.x ], [ %.sroa.038.sroa.4.0.copyload.i, %.loopexit19.i.i.peel ], [ %.sroa.038.sroa.4.0.copyload.i, %bb.o ], [ %i.ci, %.loopexit.i.loopexit.i.i.peel ], [ %.sroa.038.sroa.13.0.copyload.i, %bb.v ], [ %spec.select.i, %.preheader.i.i.preheader.i ] ; 2 uses
  %i.cz = icmp eq i64 %spec.select.pn.i.peel, 0
  br i1 %i.cz, label %.split332.us.i, label %bb.y

bb.y:                                             ; preds = %.loopexit19.thread.i.i.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !62972
  invoke void @_RNvMNtNtCs3PfUT229lOd_12object_store4path5partsNtB2_8PathPart5parse(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.038.sroa.12.0.copyload.i, i64 noundef %spec.select.pn.i.peel)
          to label %bb.z unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !62972

bb.z:                                             ; preds = %bb.y
  %i.da = load i64, ptr %i.c, align 8, !range !99, !noalias !62972, !noundef !97 ; 2 uses
  %.not77.i.peel = icmp eq i64 %i.da, -1
  br i1 %.not77.i.peel, label %bb.aa, label %.split335.us.i

bb.aa:                                            ; preds = %bb.z
  %.sroa.0179.0.copyload.i.peel = load ptr, ptr %i.al, align 8, !noalias !62972
  %.sroa.4180.0.copyload.i.peel = load i64, ptr %.sroa.4180.0..sroa_idx.i, align 8, !noalias !62972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !62972
  %i.db = ptrtoint ptr %.sroa.0179.0.copyload.i.peel to i64 ; 2 uses
  %.0.val.off.i.i.i.peel = add i64 %i.db, -1
  %switch.i.i.i.peel = icmp ult i64 %.0.val.off.i.i.i.peel, -2
  br i1 %switch.i.i.i.peel, label %bb.ab, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs9KQ7US1M400_11lance_table.exit.i.peel

bb.ab:                                            ; preds = %bb.aa
  %i.dc = inttoptr i64 %.sroa.4180.0.copyload.i.peel to ptr ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dc) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dc, i64 noundef %i.db, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !62979
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs9KQ7US1M400_11lance_table.exit.i.peel

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs9KQ7US1M400_11lance_table.exit.i.peel: ; preds = %bb.ab, %bb.aa
  br i1 %.sroa.51.2.i.peel, label %.thread229.i, label %.lr.ph.i.i.i.peel257

.lr.ph.i.i.i.peel257:                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs9KQ7US1M400_11lance_table.exit.i.peel
  %i.dd = icmp eq i64 %.sroa.5.5.i.peel, 0
  br i1 %i.dd, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.i.i.peel257
  %.not.i.i.i.peel.i.i.peel258 = icmp ult i64 %.sroa.5.5.i.peel, %.sroa.038.sroa.13.0.copyload.i
  br i1 %.not.i.i.i.peel.i.i.peel258, label %bb.ad, label %.split.i.i.i.peel.i.i.peel259

.split.i.i.i.peel.i.i.peel259:                    ; preds = %bb.ac
  %i.de = icmp eq i64 %.sroa.5.5.i.peel, %.sroa.038.sroa.13.0.copyload.i
  br i1 %i.de, label %bb.ae, label %.loopexit.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload.i, i64 %.sroa.5.5.i.peel
  %i.dg = load i8, ptr %i.df, align 1, !alias.scope !62974, !noalias !62975, !noundef !97
  %i.dh = icmp sgt i8 %i.dg, -65
  br i1 %i.dh, label %bb.ae, label %.loopexit.i.i

bb.ae:                                            ; preds = %bb.ad, %.split.i.i.i.peel.i.i.peel259, %.lr.ph.i.i.i.peel257
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload.i, i64 %.sroa.5.5.i.peel ; 4 uses
  %i.dj = icmp samesign eq i64 %.sroa.5.5.i.peel, %.sroa.038.sroa.13.0.copyload.i
  br i1 %i.dj, label %.loopexit19.i.i.peel271, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dk = load i8, ptr %i.di, align 1, !noalias !62976, !noundef !97 ; 5 uses
  %i.dl = icmp sgt i8 %i.dk, -1
  br i1 %i.dl, label %bb.ag, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.peel.i.i.peel260

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.peel.i.i.peel260: ; preds = %bb.af
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 1
  %i.dn = and i8 %i.dk, 31
  %i.do = zext nneg i8 %i.dn to i32               ; 3 uses
  %i.dp = add nuw nsw i64 %.sroa.5.5.i.peel, 1
  %i.dq = icmp samesign ne i64 %i.dp, %.sroa.038.sroa.13.0.copyload.i
  call void @llvm.assume(i1 %i.dq)
  %i.dr = load i8, ptr %i.dm, align 1, !noalias !62976, !noundef !97
  %i.ds = shl nuw nsw i32 %i.do, 6
  %i.dt = and i8 %i.dr, 63
  %i.du = zext nneg i8 %i.dt to i32               ; 2 uses
  %i.dv = or disjoint i32 %i.ds, %i.du
  %i.dw = icmp samesign ugt i8 %i.dk, -33
  br i1 %i.dw, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.peel.i.i.peel261, label %bb.ah

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.peel.i.i.peel261: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.peel.i.i.peel260
  %i.dx = getelementptr inbounds nuw i8, ptr %i.di, i64 2
  %i.dy = add nuw nsw i64 %.sroa.5.5.i.peel, 2
  %i.dz = icmp samesign ne i64 %i.dy, %.sroa.038.sroa.13.0.copyload.i
  call void @llvm.assume(i1 %i.dz)
  %i.ea = load i8, ptr %i.dx, align 1, !noalias !62976, !noundef !97
  %i.eb = shl nuw nsw i32 %i.du, 6
  %i.ec = and i8 %i.ea, 63
  %i.ed = zext nneg i8 %i.ec to i32
  %i.ee = or disjoint i32 %i.eb, %i.ed            ; 2 uses
  %i.ef = shl nuw nsw i32 %i.do, 12
  %i.eg = or disjoint i32 %i.ee, %i.ef
  %i.eh = icmp samesign ugt i8 %i.dk, -17
  br i1 %i.eh, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.peel.i.i.peel262, label %bb.ah

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.peel.i.i.peel262: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.peel.i.i.peel261
  %i.ei = getelementptr inbounds nuw i8, ptr %i.di, i64 3
  %i.ej = add nuw nsw i64 %.sroa.5.5.i.peel, 3
  %i.ek = icmp samesign ne i64 %i.ej, %.sroa.038.sroa.13.0.copyload.i
  call void @llvm.assume(i1 %i.ek)
  %i.el = load i8, ptr %i.ei, align 1, !noalias !62976, !noundef !97
  %i.em = shl nuw nsw i32 %i.do, 18
  %i.en = and i32 %i.em, 1835008
  %i.eo = shl nuw nsw i32 %i.ee, 6
  %i.ep = and i8 %i.el, 63
  %i.eq = zext nneg i8 %i.ep to i32
  %i.er = or disjoint i32 %i.eo, %i.eq
  %i.es = or disjoint i32 %i.er, %i.en
  br label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.et = zext nneg i8 %i.dk to i32
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.peel.i.i.peel262, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.peel.i.i.peel261, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.peel.i.i.peel260
  %.sroa.4.0.i.ph.i.i.peel.i.i.peel263 = phi i32 [ %i.eg, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.peel.i.i.peel261 ], [ %i.es, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.peel.i.i.peel262 ], [ %i.dv, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.peel.i.i.peel260 ], [ %i.et, %bb.ag ] ; 4 uses
  %i.eu = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.peel263, 1114112
  call void @llvm.assume(i1 %i.eu)
  br i1 %.sroa.9124.sroa.0.4.i.peel, label %.loopexit19.thread.i.i.peel272, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ev = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.peel263, 128
  br i1 %i.ev, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ew = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.peel263, 2048
  br i1 %i.ew, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ex = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.peel263, 65536
  %..i.i.peel.i.i.peel264 = select i1 %i.ex, i64 3, i64 4
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai
  %.sroa.01.0.i.i.peel.i.i.peel265 = phi i64 [ 2, %bb.aj ], [ %..i.i.peel.i.i.peel264, %bb.ak ], [ 1, %bb.ai ]
  %i.ey = add i64 %.sroa.01.0.i.i.peel.i.i.peel265, %.sroa.5.5.i.peel ; 23 uses
  %i.ez = icmp eq i64 %i.ey, 0
  br i1 %i.ez, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.not.i.i.i.i.i.peel266 = icmp ult i64 %i.ey, %.sroa.038.sroa.13.0.copyload.i
  br i1 %.not.i.i.i.i.i.peel266, label %bb.an, label %.split.i.i.i.i.i.peel267

.split.i.i.i.i.i.peel267:                         ; preds = %bb.am
  %i.fa = icmp eq i64 %i.ey, %.sroa.038.sroa.13.0.copyload.i
  br i1 %i.fa, label %bb.ao, label %.loopexit.i.i

bb.an:                                            ; preds = %bb.am
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload.i, i64 %i.ey
  %i.fc = load i8, ptr %i.fb, align 1, !alias.scope !62974, !noalias !62977, !noundef !97
  %i.fd = icmp sgt i8 %i.fc, -65
  br i1 %i.fd, label %bb.ao, label %.loopexit.i.i

bb.ao:                                            ; preds = %bb.an, %.split.i.i.i.i.i.peel267, %bb.al
  %i.fe = icmp samesign eq i64 %i.ey, %.sroa.038.sroa.13.0.copyload.i
  br i1 %i.fe, label %.loopexit19.thread.i.i.peel272, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload.i, i64 %i.ey
  %i.fg = load i8, ptr %i.ff, align 1, !noalias !62978, !noundef !97 ; 3 uses
  %i.fh = icmp sgt i8 %i.fg, -1
  br i1 %i.fh, label %.loopexit19.thread.i.i.peel272, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.i.i.peel268

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.i.i.peel268: ; preds = %bb.ap
  %i.fi = add nuw nsw i64 %i.ey, 1
  %i.fj = icmp samesign ne i64 %i.fi, %.sroa.038.sroa.13.0.copyload.i
  call void @llvm.assume(i1 %i.fj)
  %i.fk = icmp samesign ugt i8 %i.fg, -33
  br i1 %i.fk, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.i.i.peel269, label %.loopexit19.thread.i.i.peel272

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.i.i.peel269: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.i.i.peel268
  %i.fl = add nuw nsw i64 %i.ey, 2
  %i.fm = icmp samesign ne i64 %i.fl, %.sroa.038.sroa.13.0.copyload.i
  call void @llvm.assume(i1 %i.fm)
  %i.fn = icmp samesign ugt i8 %i.fg, -17
  br i1 %i.fn, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.i.i.peel270, label %.loopexit19.thread.i.i.peel272

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.i.i.peel270: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.i.i.peel269
  %i.fo = add nuw nsw i64 %i.ey, 3
  %i.fp = icmp samesign ne i64 %i.fo, %.sroa.038.sroa.13.0.copyload.i
  call void @llvm.assume(i1 %i.fp)
  br label %.loopexit19.thread.i.i.peel272

.loopexit19.i.i.peel271:                          ; preds = %bb.ae
  br i1 %.sroa.9124.sroa.0.4.i.peel, label %.loopexit19.thread.i.i.peel272, label %bb.aq

bb.aq:                                            ; preds = %.loopexit19.i.i.peel271
  br label %.loopexit19.thread.i.i.peel272

.loopexit19.thread.i.i.peel272:                   ; preds = %bb.aq, %.loopexit19.i.i.peel271, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.i.i.peel270, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.i.i.peel269, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.i.i.peel268, %bb.ap, %bb.ao, %bb.ah
  %.sroa.9124.sroa.0.4.i.peel273 = phi i1 [ true, %bb.aq ], [ false, %.loopexit19.i.i.peel271 ], [ false, %bb.ah ], [ false, %bb.ao ], [ false, %bb.ap ], [ false, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.i.i.peel270 ], [ false, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.i.i.peel269 ], [ false, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.i.i.peel268 ]
  %.sroa.41.2.i.peel274 = phi i64 [ %.sroa.41.2.i.peel, %bb.aq ], [ %.sroa.038.sroa.13.0.copyload.i, %.loopexit19.i.i.peel271 ], [ %.sroa.5.5.i.peel, %bb.ah ], [ %.sroa.038.sroa.13.0.copyload.i, %bb.ao ], [ %i.ey, %bb.ap ], [ %i.ey, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.i.i.peel270 ], [ %i.ey, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.i.i.peel269 ], [ %i.ey, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.i.i.peel268 ]
  %.sroa.5.5.i.peel275 = phi i64 [ %.sroa.038.sroa.13.0.copyload.i, %bb.aq ], [ %.sroa.038.sroa.13.0.copyload.i, %.loopexit19.i.i.peel271 ], [ %.sroa.5.5.i.peel, %bb.ah ], [ %.sroa.038.sroa.13.0.copyload.i, %bb.ao ], [ %i.ey, %bb.ap ], [ %i.ey, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.i.i.peel270 ], [ %i.ey, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.i.i.peel269 ], [ %i.ey, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.i.i.peel268 ]
  %spec.select.pn.i.peel276 = phi i64 [ %spec.select.i, %bb.aq ], [ %.sroa.038.sroa.13.0.copyload.i, %.loopexit19.i.i.peel271 ], [ %.sroa.5.5.i.peel, %bb.ah ], [ %.sroa.038.sroa.13.0.copyload.i, %bb.ao ], [ %i.ey, %bb.ap ], [ %i.ey, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.i.i.peel270 ], [ %i.ey, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.i.i.peel269 ], [ %i.ey, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.i.i.peel268 ] ; 2 uses
  %i.fq = icmp eq i64 %spec.select.pn.i.peel276, %.sroa.41.2.i.peel
  br i1 %i.fq, label %.split332.us.i, label %bb.ar

bb.ar:                                            ; preds = %.loopexit19.thread.i.i.peel272
  %.sroa.4.1.i.i.peel = sub nuw i64 %spec.select.pn.i.peel276, %.sroa.41.2.i.peel
  %.sroa.0.1.i.i.peel = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload.i, i64 %.sroa.41.2.i.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !62972
  invoke void @_RNvMNtNtCs3PfUT229lOd_12object_store4path5partsNtB2_8PathPart5parse(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.peel, i64 noundef %.sroa.4.1.i.i.peel)
          to label %bb.as unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !62972

bb.as:                                            ; preds = %bb.ar
  %i.fr = load i64, ptr %i.c, align 8, !range !99, !noalias !62972, !noundef !97 ; 2 uses
end_hunk_2
