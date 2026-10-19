Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/logos-rs/original/logos_codegen-53f617d7f319d318.logos_codegen.2195ed4355d2b8ba-cgu.12?download=true
inline.NumInlined: 54
inline.NumDeleted: 3
begin_hunk_0_@_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCs2SM5xCHwwDm_13logos_codegen4leaf8CallbackE3mapNtCsgSMwPvzVUxY_11proc_macro211TokenStreamNCNvMNtNtBN_9generator4leafNtB2m_9Generator17generate_callback0EBN_:bb.a

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define range(i8 0, 3) i8 @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCshx33xqnyVJN_3syn3lit7LitBoolE3mapbNvMs9_BL_BJ_5valueECs2SM5xCHwwDm_13logos_codegen(ptr align 4 %0) unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 @_RNvYNvMs9_NtCshx33xqnyVJN_3syn3litNtB8_7LitBool5valueINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBw_EE9call_onceCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 4 %0) #17
  %i.b = zext i1 %i.a to i8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.02.0 = phi i8 [ %i.b, %bb.b ], [ 2, %bb.a ]
  ret i8 %.sroa.02.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define i8 @_RINvNtNtCskKLDkoKarTP_4core5slice3cmp13chaining_implNtNtCs2SM5xCHwwDm_13logos_codegen4leaf6LeafIdNtNtB6_3cmp8OrderingzNCNvXs7_B2_BO_NtB2_8SliceOrd7compare0NCB1U_s_0EBS_(ptr align 8 %0, i64 %1, ptr align 8 %2, i64 %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  %i.c = tail call i64 @_RNvYjNtNtCskKLDkoKarTP_4core3cmp3Ord3minCs5OJP7dO4hSQ_6memchr(i64 %1, i64 %3) #17 ; 6 uses
  %.not = icmp ugt i64 %i.c, %1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 0, i64 %i.c, i64 %1, ptr nonnull align 8 @2) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not12 = icmp ugt i64 %i.c, %3
  br i1 %.not12, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.c
  %.not16 = icmp eq i64 %i.c, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 0, i64 %i.c, i64 %3, ptr nonnull align 8 @1) #20
  unreachable

._crit_edge:                                      ; preds = %bb.e, %.preheader
  store i64 %1, ptr %i.b, align 8
  store i64 %3, ptr %i.a, align 8
  %i.d = call i8 @_RNvYNCNvXs7_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtCs2SM5xCHwwDm_13logos_codegen4leaf6LeafIdNtBa_8SliceOrd7compares_0INtNtNtBe_3ops8function6FnOnceTRjB2k_EE9call_onceBL_(ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a) #17
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %._crit_edge
  %.sroa.0.0 = phi i8 [ %i.d, %._crit_edge ], [ %i.g, %.lr.ph ]
  ret i8 %.sroa.0.0

.lr.ph:                                           ; preds = %.preheader, %bb.e
  %.sroa.01.015 = phi i64 [ %i.h, %bb.e ], [ 0, %.preheader ] ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.015
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.01.015
  %i.g = tail call i8 @_RNvXsl_NtCs2SM5xCHwwDm_13logos_codegen4leafNtB5_6LeafIdNtNtCskKLDkoKarTP_4core3cmp3Ord3cmpB7_(ptr align 8 %i.e, ptr align 8 %i.f) #17 ; 2 uses
  switch i8 %i.g, label %.loopexit [
    i8 -2, label %bb.e
    i8 0, label %bb.e
  ]

bb.e:                                             ; preds = %.lr.ph, %.lr.ph
  %i.h = add nuw i64 %.sroa.01.015, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.h, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define void @_RINvXNtCs36YJ3mR2EUy_5quote3extNtCsgSMwPvzVUxY_11proc_macro211TokenStreamNtB3_14TokenStreamExt10append_allBt_ECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 3 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RNvXs0_NtCsgSMwPvzVUxY_11proc_macro212token_streamNtB7_11TokenStreamNtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iter(ptr nonnull sret([40 x i8]) align 8 %i.e, ptr nonnull align 8 %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %bb.a
  invoke void @_RNvXNtCsgSMwPvzVUxY_11proc_macro212token_streamNtB2_8IntoIterNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr nonnull sret([32 x i8]) align 8 %i.c, ptr nonnull align 8 %i.d)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.h, %bb.d
  %.pn = phi { ptr, i32 } [ %i.f, %bb.d ], [ %i.h, %bb.h ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgSMwPvzVUxY_11proc_macro212token_stream8IntoIterEBF_(ptr nonnull align 8 %i.d) #18
          to label %bb.k unwind label %bb.j

bb.d:                                             ; preds = %bb.i, %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.c, align 8
  %.not = icmp eq i32 %i.g, -1
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  invoke void @_RNvXss_NtCs36YJ3mR2EUy_5quote9to_tokensNtCsgSMwPvzVUxY_11proc_macro29TokenTreeNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.b, ptr align 8 %0)
          to label %bb.i unwind label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgSMwPvzVUxY_11proc_macro212token_stream8IntoIterEBF_(ptr nonnull align 8 %i.d)
  ret void

bb.h:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro29TokenTreeEBD_(ptr nonnull align 8 %i.b) #18
          to label %bb.c unwind label %bb.j

bb.i:                                             ; preds = %bb.f
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro29TokenTreeEBD_(ptr nonnull align 8 %i.b)
          to label %bb.b unwind label %bb.d

bb.j:                                             ; preds = %bb.h, %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.k:                                             ; preds = %bb.c
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalEB1r_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, i64 %1, i64 %2, i64 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = tail call { i64, ptr } @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8UJyeeIGyGC_12regex_syntax(i64 %3, i64 8, i64 16) #17 ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.b, 0
  %i.d = extractvalue { i64, ptr } %i.b, 1
  store i64 %i.c, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.f, align 8
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateEE11extend_withB1l_(ptr nonnull align 8 %i.a, i64 %3, i64 %1, i64 %2)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateEEEB1y_(ptr nonnull align 8 %i.a) #18
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivehENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs2SM5xCHwwDm_13logos_codegen(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr %1, i64 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = tail call { i64, ptr } @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8UJyeeIGyGC_12regex_syntax(i64 %2, i64 1, i64 3) #17 ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0        ; 5 uses
  %i.f = extractvalue { i64, ptr } %i.d, 1        ; 2 uses
  store i64 %i.e, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.h, align 8
  store ptr %i.c, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %2
  store ptr %1, ptr %i.a, align 8
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.k = icmp eq i64 %i.e, 0
  br i1 %i.k, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %i.l = phi i64 [ %.pr, %bb.f ], [ %i.e, %bb.a ]
  %i.m = add i64 %i.l, -1
  store i64 %i.m, ptr %.sroa.2.0..sroa_idx, align 8
  %i.n = invoke { i64, ptr } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtNtBa_3ops5range14RangeInclusivehEEENtNtNtB8_6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.a)
          to label %bb.b unwind label %.loopexit  ; 2 uses

._crit_edge:                                      ; preds = %bb.b, %bb.f, %bb.a
  store i64 %2, ptr %i.h, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  ret void

.loopexit:                                        ; preds = %.lr.ph
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %3

.loopexit.split-lp:                               ; preds = %bb.d
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %3

3:                                                ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inpNtBH_10ConvertVec6to_vec9DropGuardINtNtNtB4_3ops5range14RangeInclusivehENtNtBM_5alloc6GlobalEECs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.b) #18
          to label %bb.h unwind label %bb.g

bb.b:                                             ; preds = %.lr.ph
  %i.o = extractvalue { i64, ptr } %i.n, 0        ; 4 uses
  %i.p = extractvalue { i64, ptr } %i.n, 1        ; 3 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.o, ptr %i.i, align 8
  %i.q = icmp ult i64 %i.o, %i.e
  br i1 %i.q, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 %i.o, i64 %i.e, ptr nonnull align 8 @4) #21
          to label %bb.e unwind label %.loopexit.split-lp

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.s = load i16, ptr %i.r, align 1
  %i.t = zext i16 %i.s to i24
  %i.u = shl nuw i24 %i.t, 8
  %i.v = load i8, ptr %i.p, align 1
  %.sroa.0.0.insert.ext.i = zext i8 %i.v to i24
  %.sroa.0.0.insert.insert.i = or disjoint i24 %i.u, %.sroa.0.0.insert.ext.i
  %i.w = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %i.o
  store i24 %.sroa.0.0.insert.insert.i, ptr %i.w, align 1
  %.pr = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 2 uses
  %i.x = icmp eq i64 %.pr, 0
  br i1 %i.x, label %._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %bb.h, %3
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.h:                                             ; preds = %3
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtB4_3ops5range14RangeInclusivehEEECs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.c) #18
          to label %bb.i unwind label %bb.g

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvXs11_NtNtCskKLDkoKarTP_4core3ops5rangeINtB7_14RangeInclusivehENtNtBb_4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs2SM5xCHwwDm_13logos_codegen(ptr %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @_RINvXs7_NtNtCskKLDkoKarTP_4core4hash5implshNtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs2SM5xCHwwDm_13logos_codegen(ptr nonnull %i.a, ptr align 8 %1) #17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  tail call void @_RINvXs7_NtNtCskKLDkoKarTP_4core4hash5implshNtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs2SM5xCHwwDm_13logos_codegen(ptr nonnull %i.b, ptr align 8 %1) #17
  %i.c = load i8, ptr %0, align 1
  tail call void @_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher8write_u8Cs2SM5xCHwwDm_13logos_codegen(ptr align 8 %1, i8 %i.c) #17
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB6_6FilterINtNtB8_3map3MapINtNtNtBc_3ops5range5RangejENcNtNtCs2SM5xCHwwDm_13logos_codegen5graph5State0ENCNvMs6_B1P_NtB1P_5Graph13retain_states0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvXs_NtB8_9enumerateINtB41_9EnumeratepEB3d_4fold9enumerateB1N_uNCINvB16_8map_foldTjB4S_ETB4S_B4S_EuNCB2A_s_0NCINvNvB3d_8for_each4callB5m_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6j_7HashMapB4S_B4S_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB3h_7collect6ExtendB5m_E6extendIB14_IB4h_BQ_EB5x_EE0E0E0E0EB1R_(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1, i64 %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = load <2 x ptr>, ptr %0, align 8
  store <2 x ptr> %i.f, ptr %i.a, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.g, align 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %2, ptr %i.h, align 8
  call void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENcNtNtCs2SM5xCHwwDm_13logos_codegen5graph5State0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_6filter11filter_foldB1r_uNCNvMs6_B1t_NtB1t_5Graph13retain_states0NCINvNvXs_NtB8_9enumerateINtB4d_9EnumeratepEB2c_4fold9enumerateB3k_uNCINvB6_8map_foldTjB3k_ETB3k_B3k_EuNCB3r_s_0NCINvNvB2c_8for_each4callB5x_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6u_7HashMapB3k_B3k_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB2g_7collect6ExtendB5x_E6extendIBO_IB4t_INtB2V_6FilterBN_B3p_EEB5I_EE0E0E0E0E0EB1v_(i64 %i.c, i64 %i.e, ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, ptr } @_RINvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB6_6FilterINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtCs2SM5xCHwwDm_13logos_codegen4leaf6LeafIdjEENCNvMs6_NtB1W_5graphNtB2M_5Graph14get_state_types0_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB18_13in_place_drop11InPlaceDropB1S_ENCINvNtB8_3map12map_try_foldB1R_B1S_B4c_INtNtBc_6result6ResultB4c_zENCB2G_s1_0NCINvNtB18_16in_place_collect24write_in_place_with_dropB1S_E0E0B5w_EB1W_(ptr align 8 %0, ptr %1, ptr %2, ptr %3, ptr %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.b, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %4, ptr %i.d, align 8
  %i.e = call { ptr, ptr } @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterTNtNtCs2SM5xCHwwDm_13logos_codegen4leaf6LeafIdjEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBY_ENCINvNtNtB1Q_8adapters6filter15filter_try_foldBX_B2O_INtNtB1S_6result6ResultB2O_zENCNvMs6_NtB12_5graphNtB4U_5Graph14get_state_types0_0NCINvNtB3z_3map12map_try_foldBX_BY_B2O_B4j_NCB4O_s1_0NCINvNtB8_16in_place_collect24write_in_place_with_dropBY_E0E0E0B4j_EB12_(ptr align 8 %0, ptr %1, ptr %2, ptr nonnull align 8 %i.a)
  ret { ptr, ptr } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRINtNtBa_6option6OptionNtNtCs2SM5xCHwwDm_13logos_codegen4leaf6LeafIdENtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherEB15_(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = load i64, ptr %i.a, align 8
  tail call void @_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher11write_isizeCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %1, i64 %i.b) #17
  %i.c = load i64, ptr %i.a, align 8
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %_RINvXsS_NtCskKLDkoKarTP_4core6optionINtB6_6OptionNtNtCs2SM5xCHwwDm_13logos_codegen4leaf6LeafIdENtNtB8_4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherEBP_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @_RINvXsg_NtCs2SM5xCHwwDm_13logos_codegen4leafNtB6_6LeafIdNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherEB8_(ptr nonnull align 8 %i.e, ptr align 8 %1) #17
  br label %_RINvXsS_NtCskKLDkoKarTP_4core6optionINtB6_6OptionNtNtCs2SM5xCHwwDm_13logos_codegen4leaf6LeafIdENtNtB8_4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherEBP_.exit

_RINvXsS_NtCskKLDkoKarTP_4core6optionINtB6_6OptionNtNtCs2SM5xCHwwDm_13logos_codegen4leaf6LeafIdENtNtB8_4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherEBP_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs2SM5xCHwwDm_13logos_codegen(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8
  tail call void @_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher9write_strCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %1, ptr %i.c, i64 %i.e) #17
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvXs4_CsgSMwPvzVUxY_11proc_macro2NtB6_11TokenStreamINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendNtB6_9TokenTreeE6extendAB1I_j1_ECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RINvXs7_NtCsgSMwPvzVUxY_11proc_macro23impNtB6_11TokenStreamINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendNtB8_9TokenTreeE6extendAB1O_j1_ECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvXs4_CsgSMwPvzVUxY_11proc_macro2NtB6_11TokenStreamINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendNtB6_9TokenTreeE6extendBx_ECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RINvXs7_NtCsgSMwPvzVUxY_11proc_macro23impNtB6_11TokenStreamINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendNtB8_9TokenTreeE6extendNtB8_11TokenStreamECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvXs4_CsgSMwPvzVUxY_11proc_macro2NtB6_11TokenStreamINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendNtB6_9TokenTreeE6extendINtNtBY_6option6OptionB1I_EECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RINvXs7_NtCsgSMwPvzVUxY_11proc_macro23impNtB6_11TokenStreamINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendNtB8_9TokenTreeE6extendINtNtB14_6option6OptionB1O_EECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvXs4_CsgSMwPvzVUxY_11proc_macro2NtB6_11TokenStreamINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendNtB6_9TokenTreeE6extendNtNtB6_12token_stream8IntoIterECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  call void @_RINvXs7_NtCsgSMwPvzVUxY_11proc_macro23impNtB6_11TokenStreamINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendNtB8_9TokenTreeE6extendNtNtB8_12token_stream8IntoIterECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvXs6_CsgSMwPvzVUxY_11proc_macro2NtB6_11TokenStreamINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorNtB6_9TokenTreeE9from_iterNtNtB6_12token_stream8IntoIterECs2SM5xCHwwDm_13logos_codegen(ptr sret([32 x i8]) align 8 %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 2 uses
  %i.b = alloca [40 x i8], align 8                ; 2 uses
  %i.c = alloca [32 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  call void @_RNvXNtNtNtCskKLDkoKarTP_4core4iter6traits7collectNtNtCsgSMwPvzVUxY_11proc_macro212token_stream8IntoIterNtB2_12IntoIterator9into_iterBP_(ptr nonnull sret([40 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a) #17
  call void @_RINvYNtNtCsgSMwPvzVUxY_11proc_macro212token_stream8IntoIterNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator7collectNtNtB7_3imp11TokenStreamECs2SM5xCHwwDm_13logos_codegen(ptr nonnull sret([32 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b) #17
  call void @_RNvMCsgSMwPvzVUxY_11proc_macro2NtB2_11TokenStream4__new(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.c)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvXsS_NtCskKLDkoKarTP_4core6optionINtB6_6OptionNtNtCs2SM5xCHwwDm_13logos_codegen4leaf6LeafIdENtNtB8_4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherEBP_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  tail call void @_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher11write_isizeCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %1, i64 %i.a) #17
  %i.b = load i64, ptr %0, align 8
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvXsg_NtCs2SM5xCHwwDm_13logos_codegen4leafNtB6_6LeafIdNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherEB8_(ptr nonnull align 8 %i.d, ptr align 8 %1) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvXsS_NtCskKLDkoKarTP_4core6optionINtB6_6OptionNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateENtNtB8_4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherEBP_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  tail call void @_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher11write_isizeCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %1, i64 %i.a) #17
  %i.b = load i64, ptr %0, align 8
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvXst_NtCs2SM5xCHwwDm_13logos_codegen5graphNtB6_5StateNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherEB8_(ptr nonnull align 8 %i.d, ptr align 8 %1) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define i32 @_RINvXsj_CseSCJ3UB48O9_10proc_macroNtB6_11TokenStreamINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorNtB6_9TokenTreeE9from_iterINtNtNtBV_8adapters3map3MapNtNtCsgSMwPvzVUxY_11proc_macro212token_stream8IntoIterNvNtB2J_3imp19into_compiler_tokenEECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [40 x i8], align 8                ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  call void @_RNvXNtNtNtCskKLDkoKarTP_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapNtNtCsgSMwPvzVUxY_11proc_macro212token_stream8IntoIterNvNtB1g_3imp19into_compiler_tokenENtB2_12IntoIterator9into_iterCs2SM5xCHwwDm_13logos_codegen(ptr nonnull sret([40 x i8]) align 8 %i.e, ptr align 8 %0) #17
  invoke void @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapNtNtCsgSMwPvzVUxY_11proc_macro212token_stream8IntoIterNvNtB10_3imp19into_compiler_tokenENtNtNtB9_6traits8iterator8Iterator9size_hintCs2SM5xCHwwDm_13logos_codegen(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr nonnull align 8 %i.e)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.c, align 8
  invoke void @_RNvMsh_CseSCJ3UB48O9_10proc_macroNtB5_17ConcatTreesHelper3new(ptr nonnull sret([24 x i8]) align 8 %i.d, i64 %i.f)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false)
  invoke void @_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapNtNtCsgSMwPvzVUxY_11proc_macro212token_stream8IntoIterNvNtBV_3imp19into_compiler_tokenENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXsj_CseSCJ3UB48O9_10proc_macroNtB36_11TokenStreamINtNtB2k_7collect12FromIteratorNtB36_9TokenTreeE9from_iterB3_E0ECs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.d)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.g = call i32 @_RNvMsh_CseSCJ3UB48O9_10proc_macroNtB5_17ConcatTreesHelper5build(ptr nonnull align 8 %i.a)
  ret i32 %i.g

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCseSCJ3UB48O9_10proc_macro17ConcatTreesHelperECsgSMwPvzVUxY_11proc_macro2(ptr nonnull align 8 %i.d) #18
          to label %.thread unwind label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable
end_hunk_0
