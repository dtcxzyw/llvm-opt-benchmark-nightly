Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker-6828a789a61900ca.elfshaker.eea5205138ee20d7-cgu.06?download=true
inline.NumInlined: 448
inline.NumDeleted: 246
begin_hunk_0_@_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort8unstable8heapsort8heapsortTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENvYB15_NtNtBa_3cmp10PartialOrd2ltEB1Q_:bb.a

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort8unstable8heapsort9sift_downTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENvYB16_NtNtBa_3cmp10PartialOrd2ltEB1R_.exit: ; preds = %_RNvYNvYTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltINtNtNtB1C_3ops8function5FnMutTRB5_B2J_EE8call_mutBQ_.exit29, %bb.j, %.split, %bb.d
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph34
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort8unstable8heapsort8heapsortTymENvYB15_NtNtBa_3cmp10PartialOrd2ltECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i64 %1, 1
  %i.b = add nuw nsw i64 %i.a, %1                 ; 2 uses
  %.not22 = icmp eq i64 %i.b, 0
  br i1 %.not22, label %._crit_edge, label %.lr.ph24

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort8unstable8heapsort9sift_downTymENvYB16_NtNtBa_3cmp10PartialOrd2ltECskuiImRAV2ip_9elfshaker.exit, %bb.a
  ret void

.lr.ph24:                                         ; preds = %bb.a, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort8unstable8heapsort9sift_downTymENvYB16_NtNtBa_3cmp10PartialOrd2ltECskuiImRAV2ip_9elfshaker.exit
  %.sroa.2.023 = phi i64 [ %i.c, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort8unstable8heapsort9sift_downTymENvYB16_NtNtBa_3cmp10PartialOrd2ltECskuiImRAV2ip_9elfshaker.exit ], [ %i.b, %bb.a ]
  %i.c = add nsw i64 %.sroa.2.023, -1             ; 6 uses
  %.not9 = icmp ult i64 %i.c, %1
  br i1 %.not9, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph24
  %i.d = sub nuw nsw i64 %i.c, %1
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph24
  tail call void @_RNvMNtCs3oUPovFnLWP_4core5sliceSTymE14swap_uncheckedCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, i64 noundef 0, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.04.0 = phi i64 [ %i.d, %bb.b ], [ 0, %bb.c ] ; 3 uses
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 %i.c) ; 4 uses
  %i.e = icmp ule i64 %.sroa.04.0, %..i
  tail call void @llvm.assume(i1 %i.e)
  %i.f = shl nuw nsw i64 %.sroa.04.0, 1           ; 2 uses
  %i.g = or disjoint i64 %i.f, 1                  ; 2 uses
  %.not.i19 = icmp samesign ult i64 %i.g, %..i
  br i1 %.not.i19, label %.lr.ph, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort8unstable8heapsort9sift_downTymENvYB16_NtNtBa_3cmp10PartialOrd2ltECskuiImRAV2ip_9elfshaker.exit

.lr.ph:                                           ; preds = %bb.d, %bb.g
  %i.h = phi i64 [ %i.ac, %bb.g ], [ %i.g, %bb.d ] ; 3 uses
  %i.i = phi i64 [ %i.ab, %bb.g ], [ %i.f, %bb.d ]
  %.sroa.0.0.i20 = phi i64 [ %.sroa.04.0.i, %bb.g ], [ %.sroa.04.0, %bb.d ]
  %i.j = add nuw nsw i64 %i.i, 2                  ; 2 uses
  %i.k = icmp samesign ult i64 %i.j, %..i
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.h ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.j ; 2 uses
  %.val = load i64, ptr %i.l, align 8, !noundef !4 ; 2 uses
  %i.n = getelementptr i8, ptr %i.l, i64 8
  %.val11 = load i32, ptr %i.n, align 8
  %.val12 = load i64, ptr %i.m, align 8, !noundef !4 ; 2 uses
  %i.o = getelementptr i8, ptr %i.m, i64 8
  %.val13 = load i32, ptr %i.o, align 8
  %i.p = icmp eq i64 %.val, %.val12
  %i.q = icmp ult i64 %.val, %.val12
  %i.r = icmp ult i32 %.val11, %.val13
  %.sroa.0.0.i.i = select i1 %i.p, i1 %i.r, i1 %i.q
  %i.s = zext i1 %.sroa.0.0.i.i to i64
  %i.t = add nuw nsw i64 %i.h, %i.s
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %.sroa.04.0.i = phi i64 [ %i.t, %bb.e ], [ %i.h, %.lr.ph ] ; 3 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.0.i20 ; 3 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.04.0.i ; 3 uses
  %.val14 = load i64, ptr %i.u, align 8, !noundef !4 ; 2 uses
  %i.w = getelementptr i8, ptr %i.u, i64 8
  %.val15 = load i32, ptr %i.w, align 8
  %.val16 = load i64, ptr %i.v, align 8, !noundef !4 ; 2 uses
  %i.x = getelementptr i8, ptr %i.v, i64 8
  %.val17 = load i32, ptr %i.x, align 8
  %i.y = icmp eq i64 %.val14, %.val16
  %i.z = icmp ult i64 %.val14, %.val16
  %i.aa = icmp ult i32 %.val15, %.val17
  %.sroa.0.0.i.i18 = select i1 %i.y, i1 %i.aa, i1 %i.z
  br i1 %.sroa.0.0.i.i18, label %bb.g, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort8unstable8heapsort9sift_downTymENvYB16_NtNtBa_3cmp10PartialOrd2ltECskuiImRAV2ip_9elfshaker.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskuiImRAV2ip_9elfshaker(ptr noundef nonnull %i.u, ptr noundef nonnull %i.v, i64 noundef 2)
  %i.ab = shl nuw nsw i64 %.sroa.04.0.i, 1        ; 2 uses
  %i.ac = or disjoint i64 %i.ab, 1                ; 2 uses
  %.not.i = icmp samesign ult i64 %i.ac, %..i
  br i1 %.not.i, label %.lr.ph, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort8unstable8heapsort9sift_downTymENvYB16_NtNtBa_3cmp10PartialOrd2ltECskuiImRAV2ip_9elfshaker.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort8unstable8heapsort9sift_downTymENvYB16_NtNtBa_3cmp10PartialOrd2ltECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.f, %bb.g, %bb.d
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph24
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1o_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB7_8BTreeMapmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorTmB1a_EE9from_iterINtNtNtB28_8adapters3map3MapINtNtB3o_9enumerate9EnumerateINtNtNtBd_3vec9into_iter8IntoIterB1a_EENCINvXsf_B1c_NtB1c_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB6c_10ReadReaderINtNtNtNtBd_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB6e_6config13DefaultConfigEE0EEB1e_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [64 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [40 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(40) %1, i64 40, i1 false), !alias.scope !513, !noalias !514
  call void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec16in_place_collectINtB6_3VecTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB2C_9enumerate9EnumerateINtNtB6_9into_iter8IntoIterB10_EENCINvXsf_B12_NtB12_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB5G_10ReadReaderINtNtNtNtB8_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB5I_6config13DefaultConfigEE0EE9from_iterB14_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.f), !noalias !515
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !512
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !4 ; 6 uses
  %i.k = icmp ult i64 %i.j, 384307168202282326
  call void @llvm.assume(i1 %i.k)
  %i.l = icmp eq i64 %i.j, 0
  br i1 %i.l, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !516
  store ptr %i.a, ptr %i.e, align 8, !noalias !517
  %i.o = icmp eq i64 %i.j, 1
  br i1 %i.o, label %bb.i, label %bb.c, !prof !8

bb.c:                                             ; preds = %bb.b
  %i.p = icmp samesign ult i64 %i.j, 21
  br i1 %i.p, label %bb.e, label %bb.d, !prof !8

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable14driftsort_mainTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_7sort_byNCINvXs1o_NtNtNtB20_11collections5btree3mapINtB2M_8BTreeMapmB11_EINtNtNtNtB8_4iter6traits7collect12FromIteratorBZ_E9from_iterINtNtNtB3M_8adapters3map3MapINtNtB4I_9enumerate9EnumerateINtNtNtB20_3vec9into_iter8IntoIterB11_EENCINvXsf_B13_NtB13_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7x_10ReadReaderINtNtNtNtB20_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB7z_6config13DefaultConfigEE0EE0E0INtB5D_3VecBZ_EEB15_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef range(i64 1, 384307168202282326) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #25
          to label %bb.i unwind label %bb.n

bb.e:                                             ; preds = %bb.c
  invoke void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB1m_7sort_byNCINvXs1o_NtNtNtB2n_11collections5btree3mapINtB3a_8BTreeMapmB1o_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1m_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtB57_9enumerate9EnumerateINtNtNtB2n_3vec9into_iter8IntoIterB1o_EENCINvXsf_B1q_NtB1q_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7W_10ReadReaderINtNtNtNtB2n_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB7Y_6config13DefaultConfigEE0EE0E0EB1s_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef range(i64 1, 384307168202282326) %i.j, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.i unwind label %bb.n

bb.f:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.q, align 8
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEEEB1e_.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %bb.n, %bb.l, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.r, %bb.g ], [ %i.af, %bb.l ], [ %lpad.thr_comm, %bb.n ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEEEB1e_.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
  br label %bb.m

bb.i:                                             ; preds = %bb.b, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !516
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !518)
  call void @llvm.experimental.noalias.scope.decl(metadata !519)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !520
  %i.t = invoke { ptr, i64 } @_RINvMs8_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalEB1x_()
          to label %bb.j unwind label %bb.l, !noalias !520 ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.u = extractvalue { ptr, i64 } %i.t, 0
  %i.v = extractvalue { ptr, i64 } %i.t, 1
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store i64 %i.v, ptr %i.w, align 8, !noalias !520
  store ptr %i.u, ptr %i.d, align 8, !noalias !520
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !520
  store i64 0, ptr %i.c, align 8, !noalias !520
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !520
  %.sroa.04.0.copyload.i = load i64, ptr %i.g, align 8, !alias.scope !519
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.45.0.copyload.i = load ptr, ptr %.sroa.45.0..sroa_idx.i, align 8, !alias.scope !519, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.56.0.copyload.i = load i64, ptr %.sroa.56.0..sroa_idx.i, align 8, !alias.scope !519 ; 2 uses
  %i.x = icmp ult i64 %.sroa.56.0.copyload.i, 384307168202282326
  call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %.sroa.45.0.copyload.i, i64 %.sroa.56.0.copyload.i
  store i64 2, ptr %i.b, align 8, !noalias !520
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %.sroa.45.0.copyload.i, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !520
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %.sroa.45.0.copyload.i, ptr %.sroa.510.0..sroa_idx.i, align 8, !noalias !520
  %.sroa.611.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 %.sroa.04.0.copyload.i, ptr %.sroa.611.0..sroa_idx.i, align 8, !noalias !520
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.y, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !520
  call void @_RINvMNtNtNtCs1xwejQucwHj_5alloc11collections5btree6appendINtNtB5_4node7NodeRefNtNtBW_6marker5OwnedmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1g_14LeafOrInternalE9bulk_pushINtNtB5_17dedup_sorted_iter15DedupSortedItermB1z_INtNtNtB9_3vec9into_iter8IntoIterTmB1z_EEENtNtB9_5alloc6GlobalEB1D_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !520
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !520
  %i.z = load ptr, ptr %i.d, align 8, !noalias !520, !nonnull !4, !noundef !4
  %i.aa = load i64, ptr %i.w, align 8, !noalias !520, !noundef !4
  %i.ab = load i64, ptr %i.c, align 8, !noalias !520, !noundef !4
  store ptr %i.z, ptr %0, align 8, !alias.scope !518
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !alias.scope !518
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ab, ptr %i.ad, align 8, !alias.scope !518
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !520
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !520
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.m

bb.k:                                             ; preds = %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23, !noalias !518
  unreachable

bb.l:                                             ; preds = %bb.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEEEB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #22
          to label %common.resume unwind label %bb.k, !noalias !518

bb.m:                                             ; preds = %bb.j, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEEEB1e_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.n:                                             ; preds = %bb.e, %bb.d
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #22
          to label %common.resume unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1o_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB7_8BTreeMapmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorTmB1a_EE9from_iterINtNtNtB28_8adapters3map3MapINtNtB3o_9enumerate9EnumerateINtNtNtBd_3vec9into_iter8IntoIterB1a_EENCINvXsf_B1c_NtB1c_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB6c_10ReadReaderINtNtNtNtBd_2io8buffered9bufreader9BufReaderRShEENtNtB6e_6config13DefaultConfigEE0EEB1e_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [64 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [40 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !538
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(40) %1, i64 40, i1 false), !alias.scope !539, !noalias !540
  call void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec16in_place_collectINtB6_3VecTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB2C_9enumerate9EnumerateINtNtB6_9into_iter8IntoIterB10_EENCINvXsf_B12_NtB12_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB5G_10ReadReaderINtNtNtNtB8_2io8buffered9bufreader9BufReaderRShEENtNtB5I_6config13DefaultConfigEE0EE9from_iterB14_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.f), !noalias !541
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !538
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !4 ; 6 uses
  %i.k = icmp ult i64 %i.j, 384307168202282326
  call void @llvm.assume(i1 %i.k)
  %i.l = icmp eq i64 %i.j, 0
  br i1 %i.l, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !542
  store ptr %i.a, ptr %i.e, align 8, !noalias !543
  %i.o = icmp eq i64 %i.j, 1
  br i1 %i.o, label %bb.i, label %bb.c, !prof !8

bb.c:                                             ; preds = %bb.b
  %i.p = icmp samesign ult i64 %i.j, 21
  br i1 %i.p, label %bb.e, label %bb.d, !prof !8

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable14driftsort_mainTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_7sort_byNCINvXs1o_NtNtNtB20_11collections5btree3mapINtB2M_8BTreeMapmB11_EINtNtNtNtB8_4iter6traits7collect12FromIteratorBZ_E9from_iterINtNtNtB3M_8adapters3map3MapINtNtB4I_9enumerate9EnumerateINtNtNtB20_3vec9into_iter8IntoIterB11_EENCINvXsf_B13_NtB13_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7x_10ReadReaderINtNtNtNtB20_2io8buffered9bufreader9BufReaderRShEENtNtB7z_6config13DefaultConfigEE0EE0E0INtB5D_3VecBZ_EEB15_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef range(i64 1, 384307168202282326) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #25
          to label %bb.i unwind label %bb.n

bb.e:                                             ; preds = %bb.c
  invoke void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB1m_7sort_byNCINvXs1o_NtNtNtB2n_11collections5btree3mapINtB3a_8BTreeMapmB1o_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1m_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtB57_9enumerate9EnumerateINtNtNtB2n_3vec9into_iter8IntoIterB1o_EENCINvXsf_B1q_NtB1q_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7W_10ReadReaderINtNtNtNtB2n_2io8buffered9bufreader9BufReaderRShEENtNtB7Y_6config13DefaultConfigEE0EE0E0EB1s_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef range(i64 1, 384307168202282326) %i.j, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.i unwind label %bb.n

bb.f:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.q, align 8
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEEEB1e_.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %bb.n, %bb.l, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.r, %bb.g ], [ %i.af, %bb.l ], [ %lpad.thr_comm, %bb.n ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEEEB1e_.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
  br label %bb.m

bb.i:                                             ; preds = %bb.b, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !542
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !544)
  call void @llvm.experimental.noalias.scope.decl(metadata !545)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !546
  %i.t = invoke { ptr, i64 } @_RINvMs8_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalEB1x_()
          to label %bb.j unwind label %bb.l, !noalias !546 ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.u = extractvalue { ptr, i64 } %i.t, 0
  %i.v = extractvalue { ptr, i64 } %i.t, 1
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store i64 %i.v, ptr %i.w, align 8, !noalias !546
  store ptr %i.u, ptr %i.d, align 8, !noalias !546
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !546
  store i64 0, ptr %i.c, align 8, !noalias !546
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !546
  %.sroa.04.0.copyload.i = load i64, ptr %i.g, align 8, !alias.scope !545
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.45.0.copyload.i = load ptr, ptr %.sroa.45.0..sroa_idx.i, align 8, !alias.scope !545, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.56.0.copyload.i = load i64, ptr %.sroa.56.0..sroa_idx.i, align 8, !alias.scope !545 ; 2 uses
  %i.x = icmp ult i64 %.sroa.56.0.copyload.i, 384307168202282326
  call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %.sroa.45.0.copyload.i, i64 %.sroa.56.0.copyload.i
  store i64 2, ptr %i.b, align 8, !noalias !546
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %.sroa.45.0.copyload.i, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !546
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %.sroa.45.0.copyload.i, ptr %.sroa.510.0..sroa_idx.i, align 8, !noalias !546
  %.sroa.611.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 %.sroa.04.0.copyload.i, ptr %.sroa.611.0..sroa_idx.i, align 8, !noalias !546
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.y, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !546
  call void @_RINvMNtNtNtCs1xwejQucwHj_5alloc11collections5btree6appendINtNtB5_4node7NodeRefNtNtBW_6marker5OwnedmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1g_14LeafOrInternalE9bulk_pushINtNtB5_17dedup_sorted_iter15DedupSortedItermB1z_INtNtNtB9_3vec9into_iter8IntoIterTmB1z_EEENtNtB9_5alloc6GlobalEB1D_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !546
  %i.z = load ptr, ptr %i.d, align 8, !noalias !546, !nonnull !4, !noundef !4
  %i.aa = load i64, ptr %i.w, align 8, !noalias !546, !noundef !4
  %i.ab = load i64, ptr %i.c, align 8, !noalias !546, !noundef !4
  store ptr %i.z, ptr %0, align 8, !alias.scope !544
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !alias.scope !544
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ab, ptr %i.ad, align 8, !alias.scope !544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.m

bb.k:                                             ; preds = %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23, !noalias !544
  unreachable

bb.l:                                             ; preds = %bb.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEEEB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #22
          to label %common.resume unwind label %bb.k, !noalias !544

bb.m:                                             ; preds = %bb.j, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEEEB1e_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.n:                                             ; preds = %bb.e, %bb.d
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #22
          to label %common.resume unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtCs974quTetXso_9rmp_serde6configNtB5_13DefaultConfigNtNtB5_6sealed16SerializerConfig16write_struct_lenINtNtB7_6encode10SerializerINtNtCs1xwejQucwHj_5alloc3vec3VechEEECskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = trunc i64 %2 to i32
  call void @_RINvNtCsdxnJubla0R8_3rmp6encode15write_array_lenINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %i.b)
  %i.c = load i64, ptr %i.a, align 8, !range !9, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.c, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ -1, %bb.c ], [ -9223372036854775808, %bb.b ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtCs974quTetXso_9rmp_serde6configNtB5_13DefaultConfigNtNtB5_6sealed16SerializerConfig16write_struct_lenINtNtB7_6encode10SerializerQINtNtCs1xwejQucwHj_5alloc3vec3VechEEECskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = trunc i64 %2 to i32
  call void @_RINvNtCsdxnJubla0R8_3rmp6encode15write_array_lenQINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.b)
  %i.c = load i64, ptr %i.a, align 8, !range !9, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.c, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ -1, %bb.c ], [ -9223372036854775808, %bb.b ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtCs974quTetXso_9rmp_serde6configNtB5_13DefaultConfigNtNtB5_6sealed16SerializerConfig16write_struct_lenINtNtB7_6encode10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEEECskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = trunc i64 %2 to i32
  call void @_RINvNtCsdxnJubla0R8_3rmp6encode15write_array_lenQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.b)
  %i.c = load i64, ptr %i.a, align 8, !range !9, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.c, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ -1, %bb.c ], [ -9223372036854775808, %bb.b ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { i64, i32 } @_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeEB10_ENtNtNtB9_6traits8iterator8Iterator4foldB1o_NvYB1o_NtNtBb_3cmp3Ord3maxECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !range !547, !noundef !4 ; 3 uses
  %switch = icmp ugt i32 %i.b, -3
  br i1 %switch, label %_RINvYINtNtCs3oUPovFnLWP_4core6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeENtNtNtNtB8_4iter6traits8iterator8Iterator4foldBH_QNvYBH_NtNtB8_3cmp3Ord3maxECskuiImRAV2ip_9elfshaker.exit, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8                ; 3 uses
  %i.d = icmp eq i64 %i.c, %1
  %i.e = icmp samesign ult i32 %i.b, %2
  %i.f = icmp slt i64 %i.c, %1
  %i.g = select i1 %i.d, i1 %i.e, i1 %i.f         ; 2 uses
  %..i.i.i.us.i = select i1 %i.g, i32 %2, i32 %i.b
  %.2.i.i.i.us.i = select i1 %i.g, i64 %1, i64 %i.c
  br label %_RINvYINtNtCs3oUPovFnLWP_4core6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeENtNtNtNtB8_4iter6traits8iterator8Iterator4foldBH_QNvYBH_NtNtB8_3cmp3Ord3maxECskuiImRAV2ip_9elfshaker.exit

_RINvYINtNtCs3oUPovFnLWP_4core6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeENtNtNtNtB8_4iter6traits8iterator8Iterator4foldBH_QNvYBH_NtNtB8_3cmp3Ord3maxECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.a, %.lr.ph.split.us.i
  %.sroa.7.0 = phi i32 [ %2, %bb.a ], [ %..i.i.i.us.i, %.lr.ph.split.us.i ] ; 3 uses
  %.sroa.0.0 = phi i64 [ %1, %bb.a ], [ %.2.i.i.i.us.i, %.lr.ph.split.us.i ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !range !547, !noundef !4 ; 3 uses
  %switch16 = icmp ugt i32 %i.i, -3
  br i1 %switch16, label %_RINvYINtNtCs3oUPovFnLWP_4core6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeENtNtNtNtB8_4iter6traits8iterator8Iterator4foldBH_NvYBH_NtNtB8_3cmp3Ord3maxECskuiImRAV2ip_9elfshaker.exit, label %.lr.ph.split.us.i11

.lr.ph.split.us.i11:                              ; preds = %_RINvYINtNtCs3oUPovFnLWP_4core6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeENtNtNtNtB8_4iter6traits8iterator8Iterator4foldBH_QNvYBH_NtNtB8_3cmp3Ord3maxECskuiImRAV2ip_9elfshaker.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i64, ptr %i.j, align 8              ; 3 uses
  %i.l = icmp eq i64 %i.k, %.sroa.0.0
  %i.m = icmp samesign ult i32 %i.i, %.sroa.7.0
  %i.n = icmp slt i64 %i.k, %.sroa.0.0
  %i.o = select i1 %i.l, i1 %i.m, i1 %i.n         ; 2 uses
  %..i.i.us.i = select i1 %i.o, i32 %.sroa.7.0, i32 %i.i
  %.2.i.i.us.i = select i1 %i.o, i64 %.sroa.0.0, i64 %i.k
  br label %_RINvYINtNtCs3oUPovFnLWP_4core6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeENtNtNtNtB8_4iter6traits8iterator8Iterator4foldBH_NvYBH_NtNtB8_3cmp3Ord3maxECskuiImRAV2ip_9elfshaker.exit

_RINvYINtNtCs3oUPovFnLWP_4core6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeENtNtNtNtB8_4iter6traits8iterator8Iterator4foldBH_NvYBH_NtNtB8_3cmp3Ord3maxECskuiImRAV2ip_9elfshaker.exit: ; preds = %_RINvYINtNtCs3oUPovFnLWP_4core6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeENtNtNtNtB8_4iter6traits8iterator8Iterator4foldBH_QNvYBH_NtNtB8_3cmp3Ord3maxECskuiImRAV2ip_9elfshaker.exit, %.lr.ph.split.us.i11
  %.sroa.0.0.lcssa.i13.pn = phi i64 [ %.sroa.0.0, %_RINvYINtNtCs3oUPovFnLWP_4core6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeENtNtNtNtB8_4iter6traits8iterator8Iterator4foldBH_QNvYBH_NtNtB8_3cmp3Ord3maxECskuiImRAV2ip_9elfshaker.exit ], [ %.2.i.i.us.i, %.lr.ph.split.us.i11 ]
  %.sroa.6.0.lcssa.i12.pn = phi i32 [ %.sroa.7.0, %_RINvYINtNtCs3oUPovFnLWP_4core6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeENtNtNtNtB8_4iter6traits8iterator8Iterator4foldBH_QNvYBH_NtNtB8_3cmp3Ord3maxECskuiImRAV2ip_9elfshaker.exit ], [ %..i.i.us.i, %.lr.ph.split.us.i11 ]
  %.pn = insertvalue { i64, i32 } poison, i64 %.sroa.0.0.lcssa.i13.pn, 0
  %.merged = insertvalue { i64, i32 } %.pn, i32 %.sroa.6.0.lcssa.i12.pn, 1
  ret { i64, i32 } %.merged
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRAhj14_ECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(20) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.b = load <2 x i64>, ptr %0, align 8          ; 3 uses
  %i.c = shufflevector <2 x i64> %i.b, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.d = xor <2 x i64> %i.c, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.d, ptr %i.a, align 16, !alias.scope !554
  %i.e = shufflevector <2 x i64> %i.b, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.f = xor <2 x i64> %i.e, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.f, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !554
  store <2 x i64> %i.b, ptr %.sroa.711.0..sroa_idx.i, align 16, !alias.scope !554
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !554
end_hunk_0
begin_hunk_1_@_RNvXs5_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreaderINtB5_9BufReaderRShENtNtB9_8buf_read7BufRead8fill_bufCskuiImRAV2ip_9elfshaker:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !831, !noundef !4 ; 2 uses
  %.not.i = icmp ult i64 %i.b, %i.d
  %.pre.i = load ptr, ptr %1, align 8, !alias.scope !831 ; 2 uses
  br i1 %.not.i, label %_RINvMNtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQRShECskuiImRAV2ip_9elfshaker.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !831, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !833)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !834, !noundef !4 ; 2 uses
  %..i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.i, i64 %i.g) ; 6 uses
  %i.j = load ptr, ptr %i.e, align 8, !alias.scope !834, !nonnull !4, !noundef !4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %..i.i.i.i
  %i.l = sub nuw nsw i64 %i.i, %..i.i.i.i
  tail call void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull %.pre.i, i64 noundef range(i64 0, -9223372036854775808) %..i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef range(i64 0, -9223372036854775808) %..i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9), !noalias !835
  store ptr %i.k, ptr %i.e, align 8, !alias.scope !834, !captures !12
  store i64 %i.l, ptr %i.h, align 8, !alias.scope !834
  store i64 0, ptr %i.a, align 8, !alias.scope !831
  store i64 %..i.i.i.i, ptr %i.c, align 8, !alias.scope !831
  br label %_RINvMNtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQRShECskuiImRAV2ip_9elfshaker.exit

_RINvMNtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQRShECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.a, %bb.b
  %i.m = phi i64 [ %i.d, %bb.a ], [ %..i.i.i.i, %bb.b ]
  %i.n = phi i64 [ %i.b, %bb.a ], [ 0, %bb.b ]    ; 2 uses
  %i.o = sub nuw i64 %i.m, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.n
  store ptr %i.p, ptr %0, align 8, !alias.scope !830
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %i.q, align 8, !alias.scope !830
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvXsM_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_6ValuesmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1a_(ptr noalias nofree noundef align 8 dereferenceable(72) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXsk_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_4ItermNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %.not = icmp eq ptr %i.b, null
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %spec.select = select i1 %.not, ptr null, ptr %i.c
  ret ptr %spec.select
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtCs96EQFXyf2I9_3url3UrlENtNtB7_3fmt5Debug3fmtCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #10 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !7, !noundef !4
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @75)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCs1xwejQucwHj_5alloc6string6StringENtNtB7_3fmt5Debug3fmtCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #10 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !7, !noundef !4
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @76)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtB7_3fmt5Debug3fmtCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #10 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !7, !noundef !4
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXs6_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXs8_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXse_NtCsk6GKf1Xiy0l_4ureq5errorNtB5_9ErrorKindNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #10 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !836, !noundef !4
  %i.b = zext nneg i8 %i.a to i64
  %i.c = load ptr, ptr @_RNvNvXse_NtCsk6GKf1Xiy0l_4ureq5errorNtB7_9ErrorKindNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt7___NAMES, align 8, !nonnull !4, !noundef !4
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXse_NtCsk6GKf1Xiy0l_4ureq5errorNtB7_9ErrorKindNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt7___NAMES, i64 8), align 8, !noundef !4
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter27debug_c_like_enum_write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @_RNvNvXse_NtCsk6GKf1Xiy0l_4ureq5errorNtB7_9ErrorKindNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt8___OFFSET, i64 noundef 14, i64 noundef %i.b)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXsk_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_4ItermNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB18_(ptr noalias nofree noundef align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.e, -1
  store i64 %i.g, ptr %i.d, align 8
  %i.h = tail call noundef align 8 ptr @_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataE10init_frontB1O_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0) ; 3 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.h, label %bb.d, !prof !10

bb.c:                                             ; preds = %bb.a, %_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1y_4LeafENtB1y_4EdgeETRmRB1S_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0EB1W_.exit
  %.sroa.3.0 = phi ptr [ %i.p, %_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1y_4LeafENtB1y_4EdgeETRmRB1S_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0EB1W_.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.o, %_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1y_4LeafENtB1y_4EdgeETRmRB1S_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0EB1W_.exit ], [ null, %bb.a ]
  %i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.j

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !842
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !842
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !843
  invoke void @_RNvMsh_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1y_4LeafENtB1y_4EdgeE7next_kvB1W_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h)
          to label %.noexc.i unwind label %bb.g

.noexc.i:                                         ; preds = %bb.d
  %i.k = load ptr, ptr %i.b, align 8, !noalias !843, !noundef !4 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %bb.f, !prof !10

bb.e:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !843
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #27
          to label %.noexc1.i unwind label %bb.g, !noalias !843

.noexc1.i:                                        ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %.noexc.i
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i, i64 16, i1 false), !noalias !843
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !843
  store ptr %i.k, ptr %i.a, align 8, !noalias !843
  invoke void @_RNvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeB1W_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %.noexc2.i unwind label %bb.g, !noalias !844

.noexc2.i:                                        ; preds = %bb.f
  %i.m = invoke { ptr, ptr } @_RNvMsP_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvB1J_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1y_4LeafENtB1y_4EdgeETRmRB1S_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0EB1W_.exit unwind label %bb.g, !noalias !843 ; 2 uses

bb.g:                                             ; preds = %.noexc2.i, %bb.f, %bb.e, %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1y_4LeafENtB1y_4EdgeETRmRB1S_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0EB1W_.exit: ; preds = %.noexc2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !842
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !842
  %i.o = extractvalue { ptr, ptr } %i.m, 0
  %i.p = extractvalue { ptr, ptr } %i.m, 1
  br label %bb.c

bb.h:                                             ; preds = %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvYINtNtNtCsfwHX9XeyMnn_4zstd6stream4read7DecoderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtBT_4read4Read8read_bufCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(72) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_RINvNtNtCs1xwejQucwHj_5alloc2io4read16default_read_bufNCNvYINtNtNtCsfwHX9XeyMnn_4zstd6stream4read7DecoderINtNtNtB4_8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtB2_4Read8read_buf0ECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvYINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB9_8buf_read7BufRead9read_lineCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_RINvNtNtCs1xwejQucwHj_5alloc2io4read16append_to_stringNCNvYINtNtNtB4_8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB4_8buf_read7BufRead9read_line0ECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvYINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderRShENtNtB9_8buf_read7BufRead9read_lineCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_RINvNtNtCs1xwejQucwHj_5alloc2io4read16append_to_stringNCNvYINtNtNtB4_8buffered9bufreader9BufReaderRShENtNtB4_8buf_read7BufRead9read_line0ECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0)
  ret { i64, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, ptr } @_RNvYNtNtCsk6GKf1Xiy0l_4ureq5error5ErrorNtNtCs3oUPovFnLWP_4core5error5Error5causeCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(272) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !7, !alias.scope !847, !noundef !4
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %_RNvXs3_NtCsk6GKf1Xiy0l_4ureq5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core5error5Error6source.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !847, !noundef !4 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_RNvXs3_NtCsk6GKf1Xiy0l_4ureq5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core5error5Error6source.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !847, !nonnull !4, !align !5, !noundef !4
  br label %_RNvXs3_NtCsk6GKf1Xiy0l_4ureq5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core5error5Error6source.exit

_RNvXs3_NtCsk6GKf1Xiy0l_4ureq5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core5error5Error6source.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.3.0.i = phi ptr [ %i.f, %bb.c ], [ undef, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0.i = phi ptr [ %i.d, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  %i.g = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr %.sroa.3.0.i, 1
  ret { ptr, ptr } %i.h
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #11

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path12__starts_with(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path13__strip_prefix(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path15__with_extension(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path5__join(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path11to_path_buf(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataE10take_frontB1O_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsj_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalEB1X_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataE10init_frontB1O_(ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMs8_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalEB1x_() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtNtCs1xwejQucwHj_5alloc11collections5btree6appendINtNtB5_4node7NodeRefNtNtBW_6marker5OwnedmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1g_14LeafOrInternalE9bulk_pushINtNtB5_17dedup_sorted_iter15DedupSortedItermB1z_INtNtNtB9_3vec9into_iter8IntoIterTmB1z_EEENtNtB9_5alloc6GlobalEB1D_(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1i_14LeafOrInternalE11search_treemEB1F_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull, i64 noundef, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvMsP_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvB1J_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1i_14LeafOrInternalE11search_treemEB1D_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull, i64 noundef, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMsQ_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1m_14LeafOrInternalENtB1m_2KVE12into_val_mutB1H_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsr_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBuf14__set_extension(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsr_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBuf5__push(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable14driftsort_mainTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_7sort_byNCINvXs1o_NtNtNtB20_11collections5btree3mapINtB2M_8BTreeMapmB11_EINtNtNtNtB8_4iter6traits7collect12FromIteratorBZ_E9from_iterINtNtNtB3M_8adapters3map3MapINtNtB4I_9enumerate9EnumerateINtNtNtB20_3vec9into_iter8IntoIterB11_EENCINvXsf_B13_NtB13_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7x_10ReadReaderINtNtNtNtB20_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB7z_6config13DefaultConfigEE0EE0E0INtB5D_3VecBZ_EEB15_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 384307168202282326), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB1m_7sort_byNCINvXs1o_NtNtNtB2n_11collections5btree3mapINtB3a_8BTreeMapmB1o_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1m_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtB57_9enumerate9EnumerateINtNtNtB2n_3vec9into_iter8IntoIterB1o_EENCINvXsf_B1q_NtB1q_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7W_10ReadReaderINtNtNtNtB2n_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB7Y_6config13DefaultConfigEE0EE0E0EB1s_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 384307168202282326), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable14driftsort_mainTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_7sort_byNCINvXs1o_NtNtNtB20_11collections5btree3mapINtB2M_8BTreeMapmB11_EINtNtNtNtB8_4iter6traits7collect12FromIteratorBZ_E9from_iterINtNtNtB3M_8adapters3map3MapINtNtB4I_9enumerate9EnumerateINtNtNtB20_3vec9into_iter8IntoIterB11_EENCINvXsf_B13_NtB13_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7x_10ReadReaderINtNtNtNtB20_2io8buffered9bufreader9BufReaderRShEENtNtB7z_6config13DefaultConfigEE0EE0E0INtB5D_3VecBZ_EEB15_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 384307168202282326), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB1m_7sort_byNCINvXs1o_NtNtNtB2n_11collections5btree3mapINtB3a_8BTreeMapmB1o_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1m_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtB57_9enumerate9EnumerateINtNtNtB2n_3vec9into_iter8IntoIterB1o_EENCINvXsf_B1q_NtB1q_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7W_10ReadReaderINtNtNtNtB2n_2io8buffered9bufreader9BufReaderRShEENtNtB7Y_6config13DefaultConfigEE0EE0E0EB1s_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 384307168202282326), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #15

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtNtCsaL1QbXo9JQH_3std3sys3env4unix6getenv(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCNvMsd_B17_NtB17_9PackIndex25compute_snapshot_checksum0E0EB19_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 230584300921369396), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 230584300921369396), i32 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCINvNtNtB19_4repo4pack13extract_filesRRNtNtCsaL1QbXo9JQH_3std4path4PathE0E0EB19_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 144115188075855872), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 144115188075855872), i32 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(64), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdNvYB15_NtNtBa_3cmp10PartialOrd2ltEB1b_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 384307168202282326), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 384307168202282326), i32 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24), ptr noalias nofree noundef nonnull) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNvYB15_NtNtBa_3cmp10PartialOrd2ltECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), i32 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8), ptr noalias nofree noundef nonnull) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapmB17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB3T_8adapters3map3MapINtNtB4Q_9enumerate9EnumerateINtNtNtB26_3vec9into_iter8IntoIterB17_EENCINvXsf_B19_NtB19_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7F_10ReadReaderINtNtNtNtB26_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB7H_6config13DefaultConfigEE0EE0E0EB1b_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 384307168202282326), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 384307168202282326), i32 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapmB17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB3T_8adapters3map3MapINtNtB4Q_9enumerate9EnumerateINtNtNtB26_3vec9into_iter8IntoIterB17_EENCINvXsf_B19_NtB19_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7F_10ReadReaderINtNtNtNtB26_2io8buffered9bufreader9BufReaderRShEENtNtB7H_6config13DefaultConfigEE0EE0E0EB1b_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 384307168202282326), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 384307168202282326), i32 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #16

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCs3oUPovFnLWP_4core5sliceSTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjE14swap_uncheckedB1f_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 192153584101141163), i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCs3oUPovFnLWP_4core5sliceSTymE14swap_uncheckedCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs9_NtCs3oUPovFnLWP_4core5arrayAhj14_NtNtB8_4hash4Hash4hashNtNtNtCsaL1QbXo9JQH_3std4hash6random13DefaultHasherECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(20), ptr noalias nofree noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsdxnJubla0R8_3rmp6encode15write_array_lenINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsdxnJubla0R8_3rmp6encode15write_array_lenQINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(8), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsdxnJubla0R8_3rmp6encode15write_array_lenQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(8), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec16in_place_collectINtB6_3VecTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB2C_9enumerate9EnumerateINtNtB6_9into_iter8IntoIterB10_EENCINvXsf_B12_NtB12_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB5G_10ReadReaderINtNtNtNtB8_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB5I_6config13DefaultConfigEE0EE9from_iterB14_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec16in_place_collectINtB6_3VecTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB2C_9enumerate9EnumerateINtNtB6_9into_iter8IntoIterB10_EENCINvXsf_B12_NtB12_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB5G_10ReadReaderINtNtNtNtB8_2io8buffered9bufreader9BufReaderRShEENtNtB5I_6config13DefaultConfigEE0EE9from_iterB14_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsj_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalEB1X_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64, i64) #15

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsh_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1y_4LeafENtB1y_4EdgeE7next_kvB1W_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeB1W_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvMs5_CscCEFg35tJHG_9zstd_safeNtB5_4DCtx7in_size() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs2_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxShE16new_uninit_sliceCskuiImRAV2ip_9elfshaker(i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtCsfwHX9XeyMnn_4zstd6stream3rawNtB4_7Decoder15with_dictionary(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5entryINtB5_11VacantEntrymNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataE12insert_entryB1o_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs5_NtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5entryINtB5_13OccupiedEntrymNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataE8into_mutB1q_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvMs5_NtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5entryINtB5_13OccupiedEntrymNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataE6insertB1q_(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
end_hunk_1
begin_hunk_2_@llvm.experimental.noalias.scope.decl
!518 = !{!510}
!519 = !{!511}
!520 = !{!510, !511}
!521 = distinct !{!521, i1 true, !"_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB8_9enumerate9EnumerateINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEENCINvXsf_B29_NtB29_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB4k_10ReadReaderINtNtNtNtB1q_2io8buffered9bufreader9BufReaderRShEENtNtB4m_6config13DefaultConfigEE0ENtNtNtBa_6traits8iterator8Iterator7collectINtB1o_3VecTmB27_EEEB2b_"}
!522 = distinct !{!522, !521, !"_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB8_9enumerate9EnumerateINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEENCINvXsf_B29_NtB29_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB4k_10ReadReaderINtNtNtNtB1q_2io8buffered9bufreader9BufReaderRShEENtNtB4m_6config13DefaultConfigEE0ENtNtNtBa_6traits8iterator8Iterator7collectINtB1o_3VecTmB27_EEEB2b_: argument 1"}
!523 = distinct !{!523, !521, !"_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB8_9enumerate9EnumerateINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEENCINvXsf_B29_NtB29_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB4k_10ReadReaderINtNtNtNtB1q_2io8buffered9bufreader9BufReaderRShEENtNtB4m_6config13DefaultConfigEE0ENtNtNtBa_6traits8iterator8Iterator7collectINtB1o_3VecTmB27_EEEB2b_: argument 0"}
!524 = distinct !{!524, i1 true, !"_RINvXsf_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB1H_8adapters3map3MapINtNtB2T_9enumerate9EnumerateINtNtB6_9into_iter8IntoIterBI_EENCINvXsf_BK_NtBK_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB5y_10ReadReaderINtNtNtNtB8_2io8buffered9bufreader9BufReaderRShEENtNtB5A_6config13DefaultConfigEE0EEBM_"}
!525 = distinct !{!525, !524, !"_RINvXsf_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB1H_8adapters3map3MapINtNtB2T_9enumerate9EnumerateINtNtB6_9into_iter8IntoIterBI_EENCINvXsf_BK_NtBK_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB5y_10ReadReaderINtNtNtNtB8_2io8buffered9bufreader9BufReaderRShEENtNtB5A_6config13DefaultConfigEE0EEBM_: argument 1"}
!526 = distinct !{!526, !524, !"_RINvXsf_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB1H_8adapters3map3MapINtNtB2T_9enumerate9EnumerateINtNtB6_9into_iter8IntoIterBI_EENCINvXsf_BK_NtBK_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB5y_10ReadReaderINtNtNtNtB8_2io8buffered9bufreader9BufReaderRShEENtNtB5A_6config13DefaultConfigEE0EEBM_: argument 0"}
!527 = distinct !{!527, i1 true, !"_RNvXNtNtNtCs3oUPovFnLWP_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtBQ_9enumerate9EnumerateINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEENCINvXsf_B2u_NtB2u_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB4F_10ReadReaderINtNtNtNtB1L_2io8buffered9bufreader9BufReaderRShEENtNtB4H_6config13DefaultConfigEE0ENtB2_12IntoIterator9into_iterB2w_"}
!528 = distinct !{!528, !527, !"_RNvXNtNtNtCs3oUPovFnLWP_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtBQ_9enumerate9EnumerateINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEENCINvXsf_B2u_NtB2u_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB4F_10ReadReaderINtNtNtNtB1L_2io8buffered9bufreader9BufReaderRShEENtNtB4H_6config13DefaultConfigEE0ENtB2_12IntoIterator9into_iterB2w_: argument 1"}
!529 = distinct !{!529, !527, !"_RNvXNtNtNtCs3oUPovFnLWP_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtBQ_9enumerate9EnumerateINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEENCINvXsf_B2u_NtB2u_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB4F_10ReadReaderINtNtNtNtB1L_2io8buffered9bufreader9BufReaderRShEENtNtB4H_6config13DefaultConfigEE0ENtB2_12IntoIterator9into_iterB2w_: argument 0"}
!530 = distinct !{!530, i1 true, !"_RINvMNtCs1xwejQucwHj_5alloc5sliceSTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataE7sort_byNCINvXs1o_NtNtNtB5_11collections5btree3mapINtB1H_8BTreeMapmBy_EINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBw_E9from_iterINtNtNtB2F_8adapters3map3MapINtNtB3R_9enumerate9EnumerateINtNtNtB5_3vec9into_iter8IntoIterBy_EENCINvXsf_BA_NtBA_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB6C_10ReadReaderINtNtNtNtB5_2io8buffered9bufreader9BufReaderRShEENtNtB6E_6config13DefaultConfigEE0EE0EBC_"}
!531 = distinct !{!531, !530, !"_RINvMNtCs1xwejQucwHj_5alloc5sliceSTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataE7sort_byNCINvXs1o_NtNtNtB5_11collections5btree3mapINtB1H_8BTreeMapmBy_EINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBw_E9from_iterINtNtNtB2F_8adapters3map3MapINtNtB3R_9enumerate9EnumerateINtNtNtB5_3vec9into_iter8IntoIterBy_EENCINvXsf_BA_NtBA_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB6C_10ReadReaderINtNtNtNtB5_2io8buffered9bufreader9BufReaderRShEENtNtB6E_6config13DefaultConfigEE0EE0EBC_: argument 0"}
!532 = distinct !{!532, i1 true, !"_RINvNtCs1xwejQucwHj_5alloc5slice11stable_sortTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMB2_SBH_7sort_byNCINvXs1o_NtNtNtB4_11collections5btree3mapINtB25_8BTreeMapmBJ_EINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBH_E9from_iterINtNtNtB33_8adapters3map3MapINtNtB4f_9enumerate9EnumerateINtNtNtB4_3vec9into_iter8IntoIterBJ_EENCINvXsf_BL_NtBL_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB70_10ReadReaderINtNtNtNtB4_2io8buffered9bufreader9BufReaderRShEENtNtB72_6config13DefaultConfigEE0EE0E0EBN_"}
!533 = distinct !{!533, !532, !"_RINvNtCs1xwejQucwHj_5alloc5slice11stable_sortTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMB2_SBH_7sort_byNCINvXs1o_NtNtNtB4_11collections5btree3mapINtB25_8BTreeMapmBJ_EINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBH_E9from_iterINtNtNtB33_8adapters3map3MapINtNtB4f_9enumerate9EnumerateINtNtNtB4_3vec9into_iter8IntoIterBJ_EENCINvXsf_BL_NtBL_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB70_10ReadReaderINtNtNtNtB4_2io8buffered9bufreader9BufReaderRShEENtNtB72_6config13DefaultConfigEE0EE0E0EBN_: argument 1"}
!534 = distinct !{!534, !532, !"_RINvNtCs1xwejQucwHj_5alloc5slice11stable_sortTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMB2_SBH_7sort_byNCINvXs1o_NtNtNtB4_11collections5btree3mapINtB25_8BTreeMapmBJ_EINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBH_E9from_iterINtNtNtB33_8adapters3map3MapINtNtB4f_9enumerate9EnumerateINtNtNtB4_3vec9into_iter8IntoIterBJ_EENCINvXsf_BL_NtBL_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB70_10ReadReaderINtNtNtNtB4_2io8buffered9bufreader9BufReaderRShEENtNtB72_6config13DefaultConfigEE0EE0E0EBN_: argument 0"}
!535 = distinct !{!535, i1 true, !"_RINvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB6_8BTreeMapmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataE27bulk_build_from_sorted_iterINtNtBc_3vec3VecTmB19_EEEB1d_"}
!536 = distinct !{!536, !535, !"_RINvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB6_8BTreeMapmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataE27bulk_build_from_sorted_iterINtNtBc_3vec3VecTmB19_EEEB1d_: argument 0"}
!537 = distinct !{!537, !535, !"_RINvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB6_8BTreeMapmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataE27bulk_build_from_sorted_iterINtNtBc_3vec3VecTmB19_EEEB1d_: argument 1"}
!538 = !{!526, !525, !523, !522}
!539 = !{!529, !528}
!540 = !{!526, !523}
!541 = !{!525, !522}
!542 = !{!531}
!543 = !{!534, !533, !531}
!544 = !{!536}
!545 = !{!537}
!546 = !{!536, !537}
!547 = !{i32 -2, i32 1000000000}
!548 = distinct !{!548, i1 true, !"_RNvXs_NtNtCsaL1QbXo9JQH_3std4hash6randomNtB4_11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher12build_hasher"}
!549 = distinct !{!549, !548, !"_RNvXs_NtNtCsaL1QbXo9JQH_3std4hash6randomNtB4_11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher12build_hasher: argument 0"}
!550 = distinct !{!550, i1 true, !"_RNvXs2_NtNtCsaL1QbXo9JQH_3std4hash6randomNtB5_13DefaultHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher6finish"}
!551 = distinct !{!551, !550, !"_RNvXs2_NtNtCsaL1QbXo9JQH_3std4hash6randomNtB5_13DefaultHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher6finish: argument 0"}
!552 = distinct !{!552, i1 true, !"_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCskuiImRAV2ip_9elfshaker"}
!553 = distinct !{!553, !552, !"_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCskuiImRAV2ip_9elfshaker: argument 0"}
!554 = !{!549}
!555 = !{!553, !551}
!556 = distinct !{!556, i1 true, !"_RNvXs_NtNtCsaL1QbXo9JQH_3std4hash6randomNtB4_11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher12build_hasher"}
!557 = distinct !{!557, !556, !"_RNvXs_NtNtCsaL1QbXo9JQH_3std4hash6randomNtB4_11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher12build_hasher: argument 0"}
!558 = distinct !{!558, i1 true, !"_RINvXs3_NtNtCs3oUPovFnLWP_4core4hash5implsRNtNtCs1xwejQucwHj_5alloc6string6StringNtB8_4Hash4hashNtNtNtCsaL1QbXo9JQH_3std4hash6random13DefaultHasherECskuiImRAV2ip_9elfshaker"}
!559 = distinct !{!559, !558, !"_RINvXs3_NtNtCs3oUPovFnLWP_4core4hash5implsRNtNtCs1xwejQucwHj_5alloc6string6StringNtB8_4Hash4hashNtNtNtCsaL1QbXo9JQH_3std4hash6random13DefaultHasherECskuiImRAV2ip_9elfshaker: argument 0"}
!560 = distinct !{!560, i1 true, !"_RINvXss_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtNtCsaL1QbXo9JQH_3std4hash6random13DefaultHasherECskuiImRAV2ip_9elfshaker"}
!561 = distinct !{!561, !560, !"_RINvXss_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtNtCsaL1QbXo9JQH_3std4hash6random13DefaultHasherECskuiImRAV2ip_9elfshaker: argument 0"}
!562 = distinct !{!562, i1 true, !"_RNvXs2_NtNtCsaL1QbXo9JQH_3std4hash6randomNtB5_13DefaultHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher9write_str"}
!563 = distinct !{!563, !562, !"_RNvXs2_NtNtCsaL1QbXo9JQH_3std4hash6randomNtB5_13DefaultHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher9write_str: argument 1"}
!564 = distinct !{!564, !562, !"_RNvXs2_NtNtCsaL1QbXo9JQH_3std4hash6randomNtB5_13DefaultHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher9write_str: argument 0"}
!565 = distinct !{!565, i1 true, !"_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCskuiImRAV2ip_9elfshaker"}
!566 = distinct !{!566, !565, !"_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCskuiImRAV2ip_9elfshaker: argument 1"}
!567 = distinct !{!567, !565, !"_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCskuiImRAV2ip_9elfshaker: argument 0"}
!568 = distinct !{!568, i1 true, !"_RNvXs2_NtNtCsaL1QbXo9JQH_3std4hash6randomNtB5_13DefaultHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher6finish"}
!569 = distinct !{!569, !568, !"_RNvXs2_NtNtCsaL1QbXo9JQH_3std4hash6randomNtB5_13DefaultHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher6finish: argument 0"}
!570 = distinct !{!570, i1 true, !"_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCskuiImRAV2ip_9elfshaker"}
!571 = distinct !{!571, !570, !"_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCskuiImRAV2ip_9elfshaker: argument 0"}
!572 = !{!557}
!573 = !{!559}
!574 = !{!567, !566, !564, !563, !561, !559}
!575 = !{!566, !563}
!576 = !{!571, !569}
!577 = distinct !{!577, i1 true, !"_RNvXs_NtNtCsaL1QbXo9JQH_3std4hash6randomNtB4_11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher12build_hasher"}
!578 = distinct !{!578, !577, !"_RNvXs_NtNtCsaL1QbXo9JQH_3std4hash6randomNtB4_11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher12build_hasher: argument 0"}
!579 = distinct !{!579, i1 true, !"_RINvXsk_NtCskuiImRAV2ip_9elfshaker7packidxNtB6_10FileHandleNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtNtCsaL1QbXo9JQH_3std4hash6random13DefaultHasherEB8_"}
!580 = distinct !{!580, !579, !"_RINvXsk_NtCskuiImRAV2ip_9elfshaker7packidxNtB6_10FileHandleNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtNtCsaL1QbXo9JQH_3std4hash6random13DefaultHasherEB8_: argument 0"}
!581 = distinct !{!581, i1 true, !"_RINvXs3_NtNtCs3oUPovFnLWP_4core4hash5implsRNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleNtB8_4Hash4hashNtNtNtCsaL1QbXo9JQH_3std4hash6random13DefaultHasherEBJ_"}
!582 = distinct !{!582, !581, !"_RINvXs3_NtNtCs3oUPovFnLWP_4core4hash5implsRNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleNtB8_4Hash4hashNtNtNtCsaL1QbXo9JQH_3std4hash6random13DefaultHasherEBJ_: argument 0"}
!583 = distinct !{!583, !579, !"_RINvXsk_NtCskuiImRAV2ip_9elfshaker7packidxNtB6_10FileHandleNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtNtCsaL1QbXo9JQH_3std4hash6random13DefaultHasherEB8_: argument 1"}
!584 = distinct !{!584, i1 true, !"_RNvYNtNtNtCsaL1QbXo9JQH_3std4hash6random13DefaultHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u32CskuiImRAV2ip_9elfshaker"}
!585 = distinct !{!585, !584, !"_RNvYNtNtNtCsaL1QbXo9JQH_3std4hash6random13DefaultHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u32CskuiImRAV2ip_9elfshaker: argument 0"}
!586 = distinct !{!586, i1 true, !"_RNvYNtNtNtCsaL1QbXo9JQH_3std4hash6random13DefaultHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u32CskuiImRAV2ip_9elfshaker"}
!587 = distinct !{!587, !586, !"_RNvYNtNtNtCsaL1QbXo9JQH_3std4hash6random13DefaultHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u32CskuiImRAV2ip_9elfshaker: argument 0"}
!588 = distinct !{!588, i1 true, !"_RNvYNtNtNtCsaL1QbXo9JQH_3std4hash6random13DefaultHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u32CskuiImRAV2ip_9elfshaker"}
!589 = distinct !{!589, !588, !"_RNvYNtNtNtCsaL1QbXo9JQH_3std4hash6random13DefaultHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u32CskuiImRAV2ip_9elfshaker: argument 0"}
!590 = distinct !{!590, i1 true, !"_RNvXs2_NtNtCsaL1QbXo9JQH_3std4hash6randomNtB5_13DefaultHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher6finish"}
!591 = distinct !{!591, !590, !"_RNvXs2_NtNtCsaL1QbXo9JQH_3std4hash6randomNtB5_13DefaultHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher6finish: argument 0"}
!592 = distinct !{!592, i1 true, !"_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCskuiImRAV2ip_9elfshaker"}
!593 = distinct !{!593, !592, !"_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCskuiImRAV2ip_9elfshaker: argument 0"}
!594 = !{!578}
!595 = !{!580}
!596 = !{!582}
!597 = !{!585, !580, !583, !582}
!598 = !{!587, !580, !583, !582}
!599 = !{!589, !580, !583, !582}
!600 = !{!593, !591}
!601 = distinct !{!601, i1 true, !"_RNvXs_NtNtCsaL1QbXo9JQH_3std4hash6randomNtB4_11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher12build_hasher"}
!602 = distinct !{!602, !601, !"_RNvXs_NtNtCsaL1QbXo9JQH_3std4hash6randomNtB4_11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher12build_hasher: argument 0"}
!603 = distinct !{!603, i1 true, !"_RINvXs3_NtNtCs3oUPovFnLWP_4core4hash5implsRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNtB8_4Hash4hashNtNtNtBL_4hash6random13DefaultHasherECskuiImRAV2ip_9elfshaker"}
!604 = distinct !{!604, !603, !"_RINvXs3_NtNtCs3oUPovFnLWP_4core4hash5implsRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNtB8_4Hash4hashNtNtNtBL_4hash6random13DefaultHasherECskuiImRAV2ip_9elfshaker: argument 0"}
!605 = distinct !{!605, i1 true, !"_RINvXsh_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB6_8OsStringNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtNtBa_4hash6random13DefaultHasherECskuiImRAV2ip_9elfshaker"}
!606 = distinct !{!606, !605, !"_RINvXsh_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB6_8OsStringNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtNtBa_4hash6random13DefaultHasherECskuiImRAV2ip_9elfshaker: argument 0"}
!607 = distinct !{!607, i1 true, !"_RINvXsL_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB6_5OsStrNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtNtBa_4hash6random13DefaultHasherECskuiImRAV2ip_9elfshaker"}
!608 = distinct !{!608, !607, !"_RINvXsL_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB6_5OsStrNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtNtBa_4hash6random13DefaultHasherECskuiImRAV2ip_9elfshaker: argument 1"}
!609 = distinct !{!609, !607, !"_RINvXsL_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB6_5OsStrNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtNtBa_4hash6random13DefaultHasherECskuiImRAV2ip_9elfshaker: argument 0"}
!610 = distinct !{!610, i1 true, !"_RNvYNtNtNtCsaL1QbXo9JQH_3std4hash6random13DefaultHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCskuiImRAV2ip_9elfshaker"}
!611 = distinct !{!611, !610, !"_RNvYNtNtNtCsaL1QbXo9JQH_3std4hash6random13DefaultHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCskuiImRAV2ip_9elfshaker: argument 0"}
!612 = distinct !{!612, i1 true, !"_RNvYNtNtNtCsaL1QbXo9JQH_3std4hash6random13DefaultHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usizeCskuiImRAV2ip_9elfshaker"}
!613 = distinct !{!613, !612, !"_RNvYNtNtNtCsaL1QbXo9JQH_3std4hash6random13DefaultHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usizeCskuiImRAV2ip_9elfshaker: argument 0"}
!614 = distinct !{!614, i1 true, !"_RNvXs2_NtNtCsaL1QbXo9JQH_3std4hash6randomNtB5_13DefaultHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher6finish"}
!615 = distinct !{!615, !614, !"_RNvXs2_NtNtCsaL1QbXo9JQH_3std4hash6randomNtB5_13DefaultHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher6finish: argument 0"}
!616 = distinct !{!616, i1 true, !"_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCskuiImRAV2ip_9elfshaker"}
!617 = distinct !{!617, !616, !"_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCskuiImRAV2ip_9elfshaker: argument 0"}
!618 = !{!602}
!619 = !{!604}
!620 = !{!613, !611, !609, !608, !606, !604}
!621 = !{!609}
!622 = !{!617, !615}
!623 = distinct !{!623, i1 true, !"_RNvXs_NtNtCsaL1QbXo9JQH_3std4hash6randomNtB4_11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher12build_hasher"}
!624 = distinct !{!624, !623, !"_RNvXs_NtNtCsaL1QbXo9JQH_3std4hash6randomNtB4_11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher12build_hasher: argument 0"}
!625 = distinct !{!625, i1 true, !"_RINvXs3_NtNtCs3oUPovFnLWP_4core4hash5implsRRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNtB8_4Hash4hashNtNtNtBM_4hash6random13DefaultHasherECskuiImRAV2ip_9elfshaker"}
!626 = distinct !{!626, !625, !"_RINvXs3_NtNtCs3oUPovFnLWP_4core4hash5implsRRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNtB8_4Hash4hashNtNtNtBM_4hash6random13DefaultHasherECskuiImRAV2ip_9elfshaker: argument 0"}
!627 = distinct !{!627, i1 true, !"_RINvXs3_NtNtCs3oUPovFnLWP_4core4hash5implsRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNtB8_4Hash4hashNtNtNtBL_4hash6random13DefaultHasherECskuiImRAV2ip_9elfshaker"}
!628 = distinct !{!628, !627, !"_RINvXs3_NtNtCs3oUPovFnLWP_4core4hash5implsRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNtB8_4Hash4hashNtNtNtBL_4hash6random13DefaultHasherECskuiImRAV2ip_9elfshaker: argument 0"}
!629 = distinct !{!629, i1 true, !"_RINvXsh_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB6_8OsStringNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtNtBa_4hash6random13DefaultHasherECskuiImRAV2ip_9elfshaker"}
!630 = distinct !{!630, !629, !"_RINvXsh_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB6_8OsStringNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtNtBa_4hash6random13DefaultHasherECskuiImRAV2ip_9elfshaker: argument 0"}
!631 = distinct !{!631, i1 true, !"_RINvXsL_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB6_5OsStrNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtNtBa_4hash6random13DefaultHasherECskuiImRAV2ip_9elfshaker"}
!632 = distinct !{!632, !631, !"_RINvXsL_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB6_5OsStrNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtNtBa_4hash6random13DefaultHasherECskuiImRAV2ip_9elfshaker: argument 1"}
!633 = distinct !{!633, !631, !"_RINvXsL_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB6_5OsStrNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtNtBa_4hash6random13DefaultHasherECskuiImRAV2ip_9elfshaker: argument 0"}
!634 = distinct !{!634, i1 true, !"_RNvYNtNtNtCsaL1QbXo9JQH_3std4hash6random13DefaultHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCskuiImRAV2ip_9elfshaker"}
!635 = distinct !{!635, !634, !"_RNvYNtNtNtCsaL1QbXo9JQH_3std4hash6random13DefaultHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCskuiImRAV2ip_9elfshaker: argument 0"}
!636 = distinct !{!636, i1 true, !"_RNvYNtNtNtCsaL1QbXo9JQH_3std4hash6random13DefaultHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usizeCskuiImRAV2ip_9elfshaker"}
!637 = distinct !{!637, !636, !"_RNvYNtNtNtCsaL1QbXo9JQH_3std4hash6random13DefaultHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usizeCskuiImRAV2ip_9elfshaker: argument 0"}
!638 = distinct !{!638, i1 true, !"_RNvXs2_NtNtCsaL1QbXo9JQH_3std4hash6randomNtB5_13DefaultHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher6finish"}
!639 = distinct !{!639, !638, !"_RNvXs2_NtNtCsaL1QbXo9JQH_3std4hash6randomNtB5_13DefaultHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher6finish: argument 0"}
!640 = distinct !{!640, i1 true, !"_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCskuiImRAV2ip_9elfshaker"}
!641 = distinct !{!641, !640, !"_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCskuiImRAV2ip_9elfshaker: argument 0"}
!642 = !{!624}
!643 = !{!626}
!644 = !{!628, !626}
!645 = !{!637, !635, !633, !632, !630, !628, !626}
!646 = !{!633}
!647 = !{!641, !639}
!648 = distinct !{!648, i1 true, !"_RNvXs_NtNtCsaL1QbXo9JQH_3std4hash6randomNtB4_11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher12build_hasher"}
!649 = distinct !{!649, !648, !"_RNvXs_NtNtCsaL1QbXo9JQH_3std4hash6randomNtB4_11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher12build_hasher: argument 0"}
!650 = distinct !{!650, i1 true, !"_RINvXsm_NtNtCs3oUPovFnLWP_4core4hash5implsTRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringRAhj14_RNtNtCskuiImRAV2ip_9elfshaker7packidx12FileMetadataENtB8_4Hash4hashNtNtNtBM_4hash6random13DefaultHasherEB1A_"}
!651 = distinct !{!651, !650, !"_RINvXsm_NtNtCs3oUPovFnLWP_4core4hash5implsTRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringRAhj14_RNtNtCskuiImRAV2ip_9elfshaker7packidx12FileMetadataENtB8_4Hash4hashNtNtNtBM_4hash6random13DefaultHasherEB1A_: argument 0"}
!652 = distinct !{!652, i1 true, !"_RINvXs3_NtNtCs3oUPovFnLWP_4core4hash5implsRTRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringRAhj14_RNtNtCskuiImRAV2ip_9elfshaker7packidx12FileMetadataENtB8_4Hash4hashNtNtNtBN_4hash6random13DefaultHasherEB1B_"}
!653 = distinct !{!653, !652, !"_RINvXs3_NtNtCs3oUPovFnLWP_4core4hash5implsRTRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringRAhj14_RNtNtCskuiImRAV2ip_9elfshaker7packidx12FileMetadataENtB8_4Hash4hashNtNtNtBN_4hash6random13DefaultHasherEB1B_: argument 0"}
!654 = distinct !{!654, !650, !"_RINvXsm_NtNtCs3oUPovFnLWP_4core4hash5implsTRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringRAhj14_RNtNtCskuiImRAV2ip_9elfshaker7packidx12FileMetadataENtB8_4Hash4hashNtNtNtBM_4hash6random13DefaultHasherEB1A_: argument 1"}
!655 = distinct !{!655, i1 true, !"_RINvXs3_NtNtCs3oUPovFnLWP_4core4hash5implsRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNtB8_4Hash4hashNtNtNtBL_4hash6random13DefaultHasherECskuiImRAV2ip_9elfshaker"}
!656 = distinct !{!656, !655, !"_RINvXs3_NtNtCs3oUPovFnLWP_4core4hash5implsRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNtB8_4Hash4hashNtNtNtBL_4hash6random13DefaultHasherECskuiImRAV2ip_9elfshaker: argument 0"}
!657 = distinct !{!657, i1 true, !"_RINvXsh_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB6_8OsStringNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtNtBa_4hash6random13DefaultHasherECskuiImRAV2ip_9elfshaker"}
!658 = distinct !{!658, !657, !"_RINvXsh_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB6_8OsStringNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtNtBa_4hash6random13DefaultHasherECskuiImRAV2ip_9elfshaker: argument 0"}
!659 = distinct !{!659, i1 true, !"_RINvXsL_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB6_5OsStrNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtNtBa_4hash6random13DefaultHasherECskuiImRAV2ip_9elfshaker"}
!660 = distinct !{!660, !659, !"_RINvXsL_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB6_5OsStrNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtNtBa_4hash6random13DefaultHasherECskuiImRAV2ip_9elfshaker: argument 1"}
!661 = distinct !{!661, !659, !"_RINvXsL_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB6_5OsStrNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtNtBa_4hash6random13DefaultHasherECskuiImRAV2ip_9elfshaker: argument 0"}
!662 = distinct !{!662, i1 true, !"_RNvYNtNtNtCsaL1QbXo9JQH_3std4hash6random13DefaultHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCskuiImRAV2ip_9elfshaker"}
!663 = distinct !{!663, !662, !"_RNvYNtNtNtCsaL1QbXo9JQH_3std4hash6random13DefaultHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCskuiImRAV2ip_9elfshaker: argument 0"}
!664 = distinct !{!664, i1 true, !"_RNvYNtNtNtCsaL1QbXo9JQH_3std4hash6random13DefaultHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usizeCskuiImRAV2ip_9elfshaker"}
!665 = distinct !{!665, !664, !"_RNvYNtNtNtCsaL1QbXo9JQH_3std4hash6random13DefaultHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usizeCskuiImRAV2ip_9elfshaker: argument 0"}
!666 = distinct !{!666, i1 true, !"_RINvXs3_NtNtCs3oUPovFnLWP_4core4hash5implsRNtNtCskuiImRAV2ip_9elfshaker7packidx12FileMetadataNtB8_4Hash4hashNtNtNtCsaL1QbXo9JQH_3std4hash6random13DefaultHasherEBJ_"}
!667 = distinct !{!667, !666, !"_RINvXs3_NtNtCs3oUPovFnLWP_4core4hash5implsRNtNtCskuiImRAV2ip_9elfshaker7packidx12FileMetadataNtB8_4Hash4hashNtNtNtCsaL1QbXo9JQH_3std4hash6random13DefaultHasherEBJ_: argument 0"}
!668 = distinct !{!668, i1 true, !"_RINvXsA_NtCskuiImRAV2ip_9elfshaker7packidxNtB6_12FileMetadataNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtNtCsaL1QbXo9JQH_3std4hash6random13DefaultHasherEB8_"}
!669 = distinct !{!669, !668, !"_RINvXsA_NtCskuiImRAV2ip_9elfshaker7packidxNtB6_12FileMetadataNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtNtCsaL1QbXo9JQH_3std4hash6random13DefaultHasherEB8_: argument 0"}
!670 = distinct !{!670, i1 true, !"_RNvYNtNtNtCsaL1QbXo9JQH_3std4hash6random13DefaultHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u32CskuiImRAV2ip_9elfshaker"}
!671 = distinct !{!671, !670, !"_RNvYNtNtNtCsaL1QbXo9JQH_3std4hash6random13DefaultHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u32CskuiImRAV2ip_9elfshaker: argument 0"}
!672 = distinct !{!672, i1 true, !"_RNvXs2_NtNtCsaL1QbXo9JQH_3std4hash6randomNtB5_13DefaultHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher6finish"}
!673 = distinct !{!673, !672, !"_RNvXs2_NtNtCsaL1QbXo9JQH_3std4hash6randomNtB5_13DefaultHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher6finish: argument 0"}
!674 = distinct !{!674, i1 true, !"_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCskuiImRAV2ip_9elfshaker"}
!675 = distinct !{!675, !674, !"_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCskuiImRAV2ip_9elfshaker: argument 0"}
!676 = !{!649}
!677 = !{!651}
!678 = !{!653}
!679 = !{!656, !651, !654, !653}
!680 = !{!665, !663, !661, !660, !658, !656, !651, !654, !653}
!681 = !{!661, !651}
!682 = !{i64 4}
!683 = !{!667, !651}
!684 = !{!671, !669, !667, !651, !654, !653}
!685 = !{!675, !673}
!686 = distinct !{!686, i1 true, !"_RNvMNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreaderINtB2_9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileE13with_capacityCskuiImRAV2ip_9elfshaker"}
!687 = distinct !{!687, !686, !"_RNvMNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreaderINtB2_9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileE13with_capacityCskuiImRAV2ip_9elfshaker: argument 0"}
!688 = distinct !{!688, i1 true, !"_RNvMs_NtNtCsfwHX9XeyMnn_4zstd6stream4readINtB4_7DecoderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEE15with_dictionaryCskuiImRAV2ip_9elfshaker"}
!689 = distinct !{!689, !688, !"_RNvMs_NtNtCsfwHX9XeyMnn_4zstd6stream4readINtB4_7DecoderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEE15with_dictionaryCskuiImRAV2ip_9elfshaker: argument 0"}
!690 = distinct !{!690, !688, !"_RNvMs_NtNtCsfwHX9XeyMnn_4zstd6stream4readINtB4_7DecoderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEE15with_dictionaryCskuiImRAV2ip_9elfshaker: argument 1"}
!691 = distinct !{!691, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEECskuiImRAV2ip_9elfshaker"}
!692 = distinct !{!692, !691, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEECskuiImRAV2ip_9elfshaker: argument 0"}
!693 = !{!687}
!694 = !{!689}
!695 = !{!690}
!696 = !{!689, !690}
!697 = !{!692, !689, !690}
!698 = distinct !{!698, i1 true, !"_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataE5entryB1c_"}
!699 = distinct !{!699, !698, !"_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataE5entryB1c_: argument 1"}
!700 = distinct !{!700, !698, !"_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataE5entryB1c_: argument 0"}
!701 = !{!699}
!702 = !{!700, !699}
!703 = distinct !{!703, i1 true, !"_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataE16deallocating_endNtNtBc_5alloc6GlobalEB1P_"}
!704 = distinct !{!704, !703, !"_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataE16deallocating_endNtNtBc_5alloc6GlobalEB1P_: argument 0"}
!705 = distinct !{!705, i1 true, !"_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalEB1P_"}
!706 = distinct !{!706, !705, !"_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalEB1P_: argument 0"}
!707 = distinct !{!707, !705, !"_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalEB1P_: argument 1"}
!708 = distinct !{!708, i1 true, !"_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1y_4LeafENtB1y_4EdgeEIBY_IB1i_B1w_mB1S_NtB1y_14LeafOrInternalENtB1y_2KVENCINvMsm_NtB4_8navigateBX_27deallocating_next_uncheckedNtNtB8_5alloc6GlobalE0EB1W_"}
!709 = distinct !{!709, !708, !"_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1y_4LeafENtB1y_4EdgeEIBY_IB1i_B1w_mB1S_NtB1y_14LeafOrInternalENtB1y_2KVENCINvMsm_NtB4_8navigateBX_27deallocating_next_uncheckedNtNtB8_5alloc6GlobalE0EB1W_: argument 1"}
!710 = distinct !{!710, !708, !"_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1y_4LeafENtB1y_4EdgeEIBY_IB1i_B1w_mB1S_NtB1y_14LeafOrInternalENtB1y_2KVENCINvMsm_NtB4_8navigateBX_27deallocating_next_uncheckedNtNtB8_5alloc6GlobalE0EB1W_: argument 0"}
!711 = distinct !{!711, i1 true, !"_RNCINvMsm_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtBa_4node6HandleINtB13_7NodeRefNtNtB13_6marker5DyingmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1B_4LeafENtB1B_4EdgeE27deallocating_next_uncheckedNtNtBe_5alloc6GlobalE0B1Z_"}
!712 = distinct !{!712, !711, !"_RNCINvMsm_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtBa_4node6HandleINtB13_7NodeRefNtNtB13_6marker5DyingmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1B_4LeafENtB1B_4EdgeE27deallocating_next_uncheckedNtNtBe_5alloc6GlobalE0B1Z_: argument 1"}
!713 = distinct !{!713, !711, !"_RNCINvMsm_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtBa_4node6HandleINtB13_7NodeRefNtNtB13_6marker5DyingmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1B_4LeafENtB1B_4EdgeE27deallocating_next_uncheckedNtNtBe_5alloc6GlobalE0B1Z_: argument 0"}
!714 = !{!704}
!715 = !{!706}
!716 = !{!713, !712, !710, !709, !706, !707}
!717 = !{!710, !706}
!718 = !{!713, !712, !710, !709, !706}
!719 = distinct !{!719, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map8IntoItermNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEEB1F_"}
!720 = distinct !{!720, !719, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map8IntoItermNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEEB1F_: argument 0"}
!721 = distinct !{!721, i1 true, !"_RNvXsy_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8IntoItermNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1c_"}
!722 = distinct !{!722, !721, !"_RNvXsy_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8IntoItermNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1c_: argument 0"}
!723 = !{!722, !720}
!724 = distinct !{!724, i1 true, !"_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB1F_4SyncEL_EENtNtB7_3fmt5Debug3fmtCskuiImRAV2ip_9elfshaker"}
!725 = distinct !{!725, !724, !"_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB1F_4SyncEL_EENtNtB7_3fmt5Debug3fmtCskuiImRAV2ip_9elfshaker: argument 0"}
!726 = distinct !{!726, !724, !"_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB1F_4SyncEL_EENtNtB7_3fmt5Debug3fmtCskuiImRAV2ip_9elfshaker: argument 1"}
!727 = !{!725}
!728 = !{!725, !726}
!729 = distinct !{!729, i1 true, !"_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCs1xwejQucwHj_5alloc6string6StringENtNtB7_3fmt5Debug3fmtCskuiImRAV2ip_9elfshaker"}
!730 = distinct !{!730, !729, !"_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCs1xwejQucwHj_5alloc6string6StringENtNtB7_3fmt5Debug3fmtCskuiImRAV2ip_9elfshaker: argument 0"}
!731 = distinct !{!731, !729, !"_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCs1xwejQucwHj_5alloc6string6StringENtNtB7_3fmt5Debug3fmtCskuiImRAV2ip_9elfshaker: argument 1"}
!732 = !{!730}
!733 = !{!730, !731}
!734 = distinct !{!734, i1 true, !"_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionhENtNtB7_3fmt5Debug3fmtCskuiImRAV2ip_9elfshaker"}
!735 = distinct !{!735, !734, !"_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionhENtNtB7_3fmt5Debug3fmtCskuiImRAV2ip_9elfshaker: argument 0"}
!736 = distinct !{!736, !734, !"_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionhENtNtB7_3fmt5Debug3fmtCskuiImRAV2ip_9elfshaker: argument 1"}
!737 = !{!735}
!738 = !{!735, !736}
!739 = distinct !{!739, i1 true, !"_RNvXs3_NtCs35zZu0fmp16_7walkdir5errorNtB5_10ErrorInnerNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt"}
!740 = distinct !{!740, !739, !"_RNvXs3_NtCs35zZu0fmp16_7walkdir5errorNtB5_10ErrorInnerNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt: argument 0"}
!741 = distinct !{!741, !739, !"_RNvXs3_NtCs35zZu0fmp16_7walkdir5errorNtB5_10ErrorInnerNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt: argument 1"}
!742 = !{!740}
!743 = !{!740, !741}
!744 = distinct !{!744, i1 true, !"_RNvXs2_NtCs35zZu0fmp16_7walkdir5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt"}
!745 = distinct !{!745, !744, !"_RNvXs2_NtCs35zZu0fmp16_7walkdir5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt: argument 1"}
!746 = distinct !{!746, !744, !"_RNvXs2_NtCs35zZu0fmp16_7walkdir5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt: argument 0"}
!747 = !{!746, !745}
!748 = distinct !{!748, i1 true, !"_RNvXs4_NtCsdxnJubla0R8_3rmp6markerNtB5_6MarkerNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt"}
!749 = distinct !{!749, !748, !"_RNvXs4_NtCsdxnJubla0R8_3rmp6markerNtB5_6MarkerNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt: argument 0"}
!750 = distinct !{!750, !748, !"_RNvXs4_NtCsdxnJubla0R8_3rmp6markerNtB5_6MarkerNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt: argument 1"}
!751 = !{!749}
!752 = !{i8 -128, i8 1}
!753 = !{!749, !750}
!754 = distinct !{!754, i1 true, !"_RNvXsd_NtCsk6GKf1Xiy0l_4ureq5errorNtB5_9TransportNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt"}
!755 = distinct !{!755, !754, !"_RNvXsd_NtCsk6GKf1Xiy0l_4ureq5errorNtB5_9TransportNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt: argument 1"}
!756 = distinct !{!756, !754, !"_RNvXsd_NtCsk6GKf1Xiy0l_4ureq5errorNtB5_9TransportNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt: argument 0"}
!757 = !{!756, !755}
!758 = distinct !{!758, i1 true, !"_RNvXs9_NtNtCs3oUPovFnLWP_4core3str5errorNtB5_9Utf8ErrorNtNtB9_3fmt5Debug3fmt"}
!759 = distinct !{!759, !758, !"_RNvXs9_NtNtCs3oUPovFnLWP_4core3str5errorNtB5_9Utf8ErrorNtNtB9_3fmt5Debug3fmt: argument 1"}
!760 = distinct !{!760, !758, !"_RNvXs9_NtNtCs3oUPovFnLWP_4core3str5errorNtB5_9Utf8ErrorNtNtB9_3fmt5Debug3fmt: argument 0"}
!761 = !{!760, !759}
!762 = distinct !{!762, i1 true, !"_RNvNtNtCs3oUPovFnLWP_4core4hash3sip9u8to64_le"}
!763 = distinct !{!763, !762, !"_RNvNtNtCs3oUPovFnLWP_4core4hash3sip9u8to64_le: argument 0"}
!764 = distinct !{!764, i1 true, !"_RNvXs6_NtNtCs3oUPovFnLWP_4core4hash3sipNtB5_11Sip13RoundsNtB5_3Sip8c_rounds"}
!765 = distinct !{!765, !764, !"_RNvXs6_NtNtCs3oUPovFnLWP_4core4hash3sipNtB5_11Sip13RoundsNtB5_3Sip8c_rounds: argument 0"}
!766 = distinct !{!766, i1 true, !"_RNvXs6_NtNtCs3oUPovFnLWP_4core4hash3sipNtB5_11Sip13RoundsNtB5_3Sip8c_rounds"}
!767 = distinct !{!767, !766, !"_RNvXs6_NtNtCs3oUPovFnLWP_4core4hash3sipNtB5_11Sip13RoundsNtB5_3Sip8c_rounds: argument 0"}
!768 = distinct !{!768, i1 true, !"_RNvNtNtCs3oUPovFnLWP_4core4hash3sip9u8to64_le"}
!769 = distinct !{!769, !768, !"_RNvNtNtCs3oUPovFnLWP_4core4hash3sip9u8to64_le: argument 0"}
!770 = !{!763}
!771 = !{!765}
!772 = !{!767}
!773 = !{!769}
!774 = distinct !{!774, i1 true, !"_RINvMNtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB9_4read4Read10read_exact0ECskuiImRAV2ip_9elfshaker"}
!775 = distinct !{!775, !774, !"_RINvMNtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB9_4read4Read10read_exact0ECskuiImRAV2ip_9elfshaker: argument 0"}
!776 = !{!775}
!777 = distinct !{!777, i1 true, !"_RINvMNtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsaL1QbXo9JQH_3std2fs4FileECskuiImRAV2ip_9elfshaker"}
!778 = distinct !{!778, !777, !"_RINvMNtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsaL1QbXo9JQH_3std2fs4FileECskuiImRAV2ip_9elfshaker: argument 1"}
!779 = distinct !{!779, !777, !"_RINvMNtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsaL1QbXo9JQH_3std2fs4FileECskuiImRAV2ip_9elfshaker: argument 2"}
!780 = distinct !{!780, !777, !"_RINvMNtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsaL1QbXo9JQH_3std2fs4FileECskuiImRAV2ip_9elfshaker: argument 0"}
!781 = distinct !{!781, i1 true, !"_RNvXs5_NtNtCs1xwejQucwHj_5alloc2io5implsRShNtNtB7_4read4Read4read"}
!782 = distinct !{!782, !781, !"_RNvXs5_NtNtCs1xwejQucwHj_5alloc2io5implsRShNtNtB7_4read4Read4read: argument 1"}
!783 = distinct !{!783, !781, !"_RNvXs5_NtNtCs1xwejQucwHj_5alloc2io5implsRShNtNtB7_4read4Read4read: argument 0"}
!784 = !{!778}
!785 = !{!780, !778, !779}
!786 = !{!780, !778}
!787 = !{!782}
!788 = !{!783, !782}
!789 = !{!783}
!790 = distinct !{!790, i1 true, !"_RINvMNtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderRShENtNtB9_4read4Read10read_exact0ECskuiImRAV2ip_9elfshaker"}
!791 = distinct !{!791, !790, !"_RINvMNtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderRShENtNtB9_4read4Read10read_exact0ECskuiImRAV2ip_9elfshaker: argument 0"}
!792 = !{!791}
!793 = distinct !{!793, i1 true, !"_RINvMNtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQRShECskuiImRAV2ip_9elfshaker"}
!794 = distinct !{!794, !793, !"_RINvMNtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQRShECskuiImRAV2ip_9elfshaker: argument 1"}
!795 = distinct !{!795, !793, !"_RINvMNtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQRShECskuiImRAV2ip_9elfshaker: argument 2"}
!796 = distinct !{!796, i1 true, !"_RNvXs5_NtNtCs1xwejQucwHj_5alloc2io5implsRShNtNtB7_4read4Read8read_buf"}
!797 = distinct !{!797, !796, !"_RNvXs5_NtNtCs1xwejQucwHj_5alloc2io5implsRShNtNtB7_4read4Read8read_buf: argument 0"}
!798 = distinct !{!798, !793, !"_RINvMNtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQRShECskuiImRAV2ip_9elfshaker: argument 0"}
!799 = distinct !{!799, i1 true, !"_RNvXs5_NtNtCs1xwejQucwHj_5alloc2io5implsRShNtNtB7_4read4Read4read"}
!800 = distinct !{!800, !799, !"_RNvXs5_NtNtCs1xwejQucwHj_5alloc2io5implsRShNtNtB7_4read4Read4read: argument 0"}
!801 = distinct !{!801, !799, !"_RNvXs5_NtNtCs1xwejQucwHj_5alloc2io5implsRShNtNtB7_4read4Read4read: argument 1"}
!802 = distinct !{!802, i1 true, !"_RNvXs5_NtNtCs1xwejQucwHj_5alloc2io5implsRShNtNtB7_4read4Read4read"}
!803 = distinct !{!803, !802, !"_RNvXs5_NtNtCs1xwejQucwHj_5alloc2io5implsRShNtNtB7_4read4Read4read: argument 1"}
!804 = distinct !{!804, !802, !"_RNvXs5_NtNtCs1xwejQucwHj_5alloc2io5implsRShNtNtB7_4read4Read4read: argument 0"}
!805 = !{!794}
!806 = !{!795}
!807 = !{!797}
!808 = !{!797, !795}
!809 = !{!797, !798, !794, !795}
!810 = !{!800}
!811 = !{!801}
!812 = !{!800, !801}
!813 = !{!803}
!814 = !{!804, !803}
!815 = !{!804}
!816 = distinct !{!816, i1 true, !"_RINvMNtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsaL1QbXo9JQH_3std2fs4FileECskuiImRAV2ip_9elfshaker"}
!817 = distinct !{!817, !816, !"_RINvMNtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsaL1QbXo9JQH_3std2fs4FileECskuiImRAV2ip_9elfshaker: argument 0"}
!818 = distinct !{!818, !816, !"_RINvMNtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsaL1QbXo9JQH_3std2fs4FileECskuiImRAV2ip_9elfshaker: argument 1"}
!819 = distinct !{!819, !816, !"_RINvMNtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsaL1QbXo9JQH_3std2fs4FileECskuiImRAV2ip_9elfshaker: argument 2"}
!820 = !{!817}
!821 = !{!818}
!822 = !{!817, !818, !819}
!823 = !{!817, !818}
!824 = distinct !{!824, i1 true, !"_RINvMNtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQRShECskuiImRAV2ip_9elfshaker"}
!825 = distinct !{!825, !824, !"_RINvMNtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQRShECskuiImRAV2ip_9elfshaker: argument 0"}
!826 = distinct !{!826, !824, !"_RINvMNtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQRShECskuiImRAV2ip_9elfshaker: argument 1"}
!827 = distinct !{!827, !824, !"_RINvMNtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQRShECskuiImRAV2ip_9elfshaker: argument 2"}
!828 = distinct !{!828, i1 true, !"_RNvXs5_NtNtCs1xwejQucwHj_5alloc2io5implsRShNtNtB7_4read4Read8read_buf"}
!829 = distinct !{!829, !828, !"_RNvXs5_NtNtCs1xwejQucwHj_5alloc2io5implsRShNtNtB7_4read4Read8read_buf: argument 0"}
!830 = !{!825}
!831 = !{!826}
!832 = !{!827}
!833 = !{!829}
!834 = !{!829, !827}
!835 = !{!829, !825, !826, !827}
!836 = !{i8 0, i8 13}
!837 = distinct !{!837, i1 true, !"_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1y_4LeafENtB1y_4EdgeETRmRB1S_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0EB1W_"}
!838 = distinct !{!838, !837, !"_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1y_4LeafENtB1y_4EdgeETRmRB1S_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0EB1W_: argument 0"}
!839 = distinct !{!839, i1 true, !"_RNCNvMsk_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB9_4node6HandleINtB12_7NodeRefNtNtB12_6marker5ImmutmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1A_4LeafENtB1A_4EdgeE14next_unchecked0B1Y_"}
!840 = distinct !{!840, !839, !"_RNCNvMsk_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB9_4node6HandleINtB12_7NodeRefNtNtB12_6marker5ImmutmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1A_4LeafENtB1A_4EdgeE14next_unchecked0B1Y_: argument 1"}
!841 = distinct !{!841, !839, !"_RNCNvMsk_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB9_4node6HandleINtB12_7NodeRefNtNtB12_6marker5ImmutmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1A_4LeafENtB1A_4EdgeE14next_unchecked0B1Y_: argument 0"}
!842 = !{!838}
!843 = !{!841, !840, !838}
!844 = !{!840, !838}
!845 = distinct !{!845, i1 true, !"_RNvXs3_NtCsk6GKf1Xiy0l_4ureq5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core5error5Error6source"}
!846 = distinct !{!846, !845, !"_RNvXs3_NtCsk6GKf1Xiy0l_4ureq5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core5error5Error6source: argument 0"}
!847 = !{!846}
end_hunk_2
