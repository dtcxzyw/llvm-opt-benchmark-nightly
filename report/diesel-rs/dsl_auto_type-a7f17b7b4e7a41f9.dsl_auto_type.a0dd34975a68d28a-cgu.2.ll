Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/dsl_auto_type-a7f17b7b4e7a41f9.dsl_auto_type.a0dd34975a68d28a-cgu.2?download=true
inline.NumInlined: 115
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvMNtCscI6d9CVNmLh_4core5sliceSTRNtNtCshMFl0SviwmK_3syn8lifetime8LifetimebE13sort_unstableCsdOh5Xhm0ZW8_13dsl_auto_type:bb.a
  %i.c = icmp ult i64 %1, 21
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort8unstable7ipnsortTRNtNtCshMFl0SviwmK_3syn8lifetime8LifetimebENvYBT_NtNtB8_3cmp10PartialOrd2ltECsdOh5Xhm0ZW8_13dsl_auto_type(ptr align 8 %0, i64 %1, ptr nonnull %i.a)
  br label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort8unstable4sortTRNtNtCshMFl0SviwmK_3syn8lifetime8LifetimebENvYBQ_NtNtB8_3cmp10PartialOrd2ltECsdOh5Xhm0ZW8_13dsl_auto_type.exit

bb.d:                                             ; preds = %bb.b
  call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTRNtNtCshMFl0SviwmK_3syn8lifetime8LifetimebENvYB1m_NtNtBa_3cmp10PartialOrd2ltECsdOh5Xhm0ZW8_13dsl_auto_type(ptr align 8 %0, i64 %1, i64 1, ptr nonnull %i.a)
  br label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort8unstable4sortTRNtNtCshMFl0SviwmK_3syn8lifetime8LifetimebENvYBQ_NtNtB8_3cmp10PartialOrd2ltECsdOh5Xhm0ZW8_13dsl_auto_type.exit

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort8unstable4sortTRNtNtCshMFl0SviwmK_3syn8lifetime8LifetimebENvYBQ_NtNtB8_3cmp10PartialOrd2ltECsdOh5Xhm0ZW8_13dsl_auto_type.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCscI6d9CVNmLh_4core5sliceSTRNtNtCshMFl0SviwmK_3syn8lifetime8LifetimebE14swap_uncheckedCsdOh5Xhm0ZW8_13dsl_auto_type(ptr align 8 %0, i64 %1, i64 %2, i64 %3, ptr nofree readnone align 8 captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %2
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %3
  tail call void @_RINvNtCscI6d9CVNmLh_4core3ptr4swapTRNtNtCshMFl0SviwmK_3syn8lifetime8LifetimebEECsdOh5Xhm0ZW8_13dsl_auto_type(ptr %i.a, ptr %i.b)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMNtCscI6d9CVNmLh_4core5sliceSTRNtNtCshMFl0SviwmK_3syn8lifetime8LifetimebE22split_at_mut_uncheckedCsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr align 8 %1, i64 %2, i64 %3, ptr nofree readnone align 8 captures(none) %4) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %3
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

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RNvMNtCscI6d9CVNmLh_4core5sliceSTRNtNtCshMFl0SviwmK_3syn8lifetime8LifetimebE7reverseCsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree align 8 captures(none) %0, i64 %1) unnamed_addr #7 {
bb.a:
  %i.a = lshr i64 %1, 1                           ; 4 uses
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %_RINvNvMNtCscI6d9CVNmLh_4core5sliceSp7reverse7revswapTRNtNtCshMFl0SviwmK_3syn8lifetime8LifetimebEECsdOh5Xhm0ZW8_13dsl_auto_type.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1 ; 3 uses
  %i.c = icmp eq i64 %i.a, 1
  br i1 %i.c, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTRNtNtCshMFl0SviwmK_3syn8lifetime8LifetimebE12split_at_mutCsdOh5Xhm0ZW8_13dsl_auto_type.exit11.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.a, 9223372036854775806
  br label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTRNtNtCshMFl0SviwmK_3syn8lifetime8LifetimebE12split_at_mutCsdOh5Xhm0ZW8_13dsl_auto_type.exit11.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSTRNtNtCshMFl0SviwmK_3syn8lifetime8LifetimebE12split_at_mutCsdOh5Xhm0ZW8_13dsl_auto_type.exit11.i: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSTRNtNtCshMFl0SviwmK_3syn8lifetime8LifetimebE12split_at_mutCsdOh5Xhm0ZW8_13dsl_auto_type.exit11.i, %.lr.ph.preheader.i.new
  %.sroa.0.016.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %i.s, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTRNtNtCshMFl0SviwmK_3syn8lifetime8LifetimebE12split_at_mutCsdOh5Xhm0ZW8_13dsl_auto_type.exit11.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTRNtNtCshMFl0SviwmK_3syn8lifetime8LifetimebE12split_at_mutCsdOh5Xhm0ZW8_13dsl_auto_type.exit11.i ]
  %i.d = xor i64 %.sroa.0.016.i, -1
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i ; 3 uses
  %i.f = getelementptr [16 x i8], ptr %i.b, i64 %i.d ; 3 uses
  %i.g = load ptr, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load i8, ptr %i.h, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  store ptr %i.g, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i8 %i.i, ptr %i.j, align 8
  %i.k = xor i64 %.sroa.0.016.i, -2
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.n = getelementptr [16 x i8], ptr %i.b, i64 %i.k ; 3 uses
  %i.o = load ptr, ptr %i.m, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.q = load i8, ptr %i.p, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false)
  store ptr %i.o, ptr %i.n, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i8 %i.q, ptr %i.r, align 8
  %i.s = add nuw nsw i64 %.sroa.0.016.i, 2        ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvNvMNtCscI6d9CVNmLh_4core5sliceSp7reverse7revswapTRNtNtCshMFl0SviwmK_3syn8lifetime8LifetimebEECsdOh5Xhm0ZW8_13dsl_auto_type.exit.loopexit.unr-lcssa, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTRNtNtCshMFl0SviwmK_3syn8lifetime8LifetimebE12split_at_mutCsdOh5Xhm0ZW8_13dsl_auto_type.exit11.i

_RINvNvMNtCscI6d9CVNmLh_4core5sliceSp7reverse7revswapTRNtNtCshMFl0SviwmK_3syn8lifetime8LifetimebEECsdOh5Xhm0ZW8_13dsl_auto_type.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSTRNtNtCshMFl0SviwmK_3syn8lifetime8LifetimebE12split_at_mutCsdOh5Xhm0ZW8_13dsl_auto_type.exit11.i
  %i.t = and i64 %1, 2
  %lcmp.mod.not = icmp eq i64 %i.t, 0
  br i1 %lcmp.mod.not, label %_RINvNvMNtCscI6d9CVNmLh_4core5sliceSp7reverse7revswapTRNtNtCshMFl0SviwmK_3syn8lifetime8LifetimebEECsdOh5Xhm0ZW8_13dsl_auto_type.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTRNtNtCshMFl0SviwmK_3syn8lifetime8LifetimebE12split_at_mutCsdOh5Xhm0ZW8_13dsl_auto_type.exit11.i.epil.preheader

_RNvMNtCscI6d9CVNmLh_4core5sliceSTRNtNtCshMFl0SviwmK_3syn8lifetime8LifetimebE12split_at_mutCsdOh5Xhm0ZW8_13dsl_auto_type.exit11.i.epil.preheader: ; preds = %_RINvNvMNtCscI6d9CVNmLh_4core5sliceSp7reverse7revswapTRNtNtCshMFl0SviwmK_3syn8lifetime8LifetimebEECsdOh5Xhm0ZW8_13dsl_auto_type.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.sroa.0.016.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.s, %_RINvNvMNtCscI6d9CVNmLh_4core5sliceSp7reverse7revswapTRNtNtCshMFl0SviwmK_3syn8lifetime8LifetimebEECsdOh5Xhm0ZW8_13dsl_auto_type.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1 = trunc i64 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod1)
  %i.u = xor i64 %.sroa.0.016.i.epil.init, -1
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i.epil.init ; 3 uses
  %i.w = getelementptr [16 x i8], ptr %i.b, i64 %i.u ; 3 uses
  %i.x = load ptr, ptr %i.v, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.z = load i8, ptr %i.y, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false)
  store ptr %i.x, ptr %i.w, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i8 %i.z, ptr %i.aa, align 8
  br label %_RINvNvMNtCscI6d9CVNmLh_4core5sliceSp7reverse7revswapTRNtNtCshMFl0SviwmK_3syn8lifetime8LifetimebEECsdOh5Xhm0ZW8_13dsl_auto_type.exit

_RINvNvMNtCscI6d9CVNmLh_4core5sliceSp7reverse7revswapTRNtNtCshMFl0SviwmK_3syn8lifetime8LifetimebEECsdOh5Xhm0ZW8_13dsl_auto_type.exit: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSTRNtNtCshMFl0SviwmK_3syn8lifetime8LifetimebE12split_at_mutCsdOh5Xhm0ZW8_13dsl_auto_type.exit11.i.epil.preheader, %_RINvNvMNtCscI6d9CVNmLh_4core5sliceSp7reverse7revswapTRNtNtCshMFl0SviwmK_3syn8lifetime8LifetimebEECsdOh5Xhm0ZW8_13dsl_auto_type.exit.loopexit.unr-lcssa, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i32 @_RNvMNtNtCsa66IwKi6YE3_5quote9___private8get_spanINtB2_7GetSpanNtCsf5uYjtxkodL_11proc_macro24SpanE11___into_spanCsdOh5Xhm0ZW8_13dsl_auto_type(i32 returned %0) unnamed_addr #3 {
bb.a:
  ret i32 %0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type16settings_builderNtB2_21DeriveSettingsBuilder16default_dsl_path(ptr nofree writeonly sret([56 x i8]) align 8 captures(none) %0, ptr align 8 %1, ptr nofree readonly align 8 captures(none) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn4path4PathEBF_(ptr align 8 %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type16settings_builder21DeriveSettingsBuilderEBH_(ptr nonnull align 8 %1) #28
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type16settings_builderNtB2_21DeriveSettingsBuilder24default_method_type_case(ptr nofree writeonly sret([56 x i8]) align 8 captures(none) initializes((0, 56)) %0, ptr nofree align 8 captures(none) initializes((49, 50)) %1, i8 %2) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 49
  store i8 %2, ptr %i.a, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type16settings_builderNtB2_21DeriveSettingsBuilder26default_function_type_case(ptr nofree writeonly sret([56 x i8]) align 8 captures(none) initializes((0, 56)) %0, ptr nofree align 8 captures(none) initializes((50, 51)) %1, i8 %2) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 50
  store i8 %2, ptr %i.a, align 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type16settings_builderNtB2_21DeriveSettingsBuilder27default_generate_type_alias(ptr nofree writeonly sret([56 x i8]) align 8 captures(none) initializes((0, 56)) %0, ptr nofree align 8 captures(none) initializes((48, 49)) %1, i1 zeroext %2) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = zext i1 %2 to i8
  store i8 %i.b, ptr %i.a, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type16settings_builderNtB2_21DeriveSettingsBuilder5build(ptr nofree writeonly sret([56 x i8]) align 8 captures(none) initializes((0, 56)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type4caseNtB2_4Case15ident_with_case(ptr sret([24 x i8]) align 8 %0, i8 %1, ptr align 8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 14 uses
  call void @_RNvXsB_NtCs40k4W9msRzi_5alloc6stringNtCsf5uYjtxkodL_11proc_macro25IdentNtB5_8ToString9to_stringBA_(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr align 8 %2)
  switch i8 %1, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
    i8 4, label %bb.i
    i8 5, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %bb.l

bb.d:                                             ; preds = %bb.k, %bb.e
  %.pn = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.x, %bb.k ]
  %.sroa.0.1 = phi i8 [ %.sroa.0.2, %bb.e ], [ %.sroa.0.0, %bb.k ]
  %3 = trunc nuw i8 %.sroa.0.1 to i1
  br i1 %3, label %bb.t, label %bb.s

bb.e:                                             ; preds = %bb.n, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.0.2 = phi i8 [ %.sroa.0.0, %bb.n ], [ 1, %bb.f ], [ 1, %bb.i ], [ 1, %bb.g ], [ 1, %bb.j ], [ 1, %bb.h ]
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8
  invoke void @_RNvXNtCsfDR8abjSQSr_4heck11upper_cameleNtB2_16ToUpperCamelCase19to_upper_camel_case(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr %i.e, i64 %i.g)
          to label %bb.l unwind label %bb.e

bb.g:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.k = load i64, ptr %i.j, align 8
  invoke void @_RNvXs_NtCsfDR8abjSQSr_4heck11upper_cameleNtB4_12ToPascalCase14to_pascal_caseCsdOh5Xhm0ZW8_13dsl_auto_type(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr %i.i, i64 %i.k)
          to label %bb.l unwind label %bb.e

bb.h:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = load i64, ptr %i.n, align 8
  invoke void @_RNvXNtCsfDR8abjSQSr_4heck11lower_cameleNtB2_16ToLowerCamelCase19to_lower_camel_case(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr %i.m, i64 %i.o)
          to label %bb.l unwind label %bb.e

bb.i:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.s = load i64, ptr %i.r, align 8
  invoke void @_RNvXs_NtCsfDR8abjSQSr_4heck5snakeeNtB4_11ToSnakeCase13to_snake_case(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr %i.q, i64 %i.s)
          to label %bb.l unwind label %bb.e

bb.j:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.w = load i64, ptr %i.v, align 8
  invoke void @_RNvXs_NtCsfDR8abjSQSr_4heck12shouty_snakeeNtB4_17ToShoutySnakeCase20to_shouty_snake_case(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr %i.u, i64 %i.w)
          to label %bb.l unwind label %bb.e

bb.k:                                             ; preds = %bb.m, %bb.l
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsdfcQ11shQaG_6strsim(ptr nonnull align 8 %i.a) #28
          to label %bb.d unwind label %bb.r

bb.l:                                             ; preds = %bb.c, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %.sroa.0.0 = phi i8 [ 0, %bb.c ], [ 1, %bb.f ], [ 1, %bb.g ], [ 1, %bb.h ], [ 1, %bb.i ], [ 1, %bb.j ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = invoke i32 @_RNvMsx_Csf5uYjtxkodL_11proc_macro2NtB5_5Ident4span(ptr align 8 %2)
          to label %bb.m unwind label %bb.k

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvMsx_Csf5uYjtxkodL_11proc_macro2NtB5_5Ident3new(ptr sret([24 x i8]) align 8 %0, ptr %i.z, i64 %i.ab, i32 %i.ac, ptr nonnull align 8 @8)
          to label %bb.n unwind label %bb.k

bb.n:                                             ; preds = %bb.m
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsdfcQ11shQaG_6strsim(ptr nonnull align 8 %i.a)
          to label %bb.o unwind label %bb.e

bb.o:                                             ; preds = %bb.n
  %4 = trunc nuw i8 %.sroa.0.0 to i1
  br i1 %4, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  ret void

bb.q:                                             ; preds = %bb.o
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsdfcQ11shQaG_6strsim(ptr nonnull align 8 %i.b)
  br label %bb.p

bb.r:                                             ; preds = %bb.t, %bb.k
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.s:                                             ; preds = %bb.t, %bb.d
  resume { ptr, i32 } %.pn

bb.t:                                             ; preds = %bb.d
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsdfcQ11shQaG_6strsim(ptr nonnull align 8 %i.b) #28
          to label %bb.s unwind label %bb.r
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMNtNtCsjWx9XcG30NR_12darling_core4util13spanned_valueINtB2_12SpannedValueNtNtCs40k4W9msRzi_5alloc6string6StringE3newCsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 28)) %0, ptr nofree readonly align 8 captures(none) %1, i32 %2) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %2, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define i32 @_RNvMNtNtCsjWx9XcG30NR_12darling_core4util13spanned_valueINtB2_12SpannedValueNtNtCs40k4W9msRzi_5alloc6string6StringE4spanCsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvMs0_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_2rc2RcNtNtCshMFl0SviwmK_3syn5error5ErrorEE16as_raw_mut_sliceCsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  %i.i = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.j = insertvalue { ptr, i64 } %i.i, i64 %i.h, 1
  ret { ptr, i64 } %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvMs0_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_2rc2RcNtNtCshMFl0SviwmK_3syn5error5ErrorEE8as_sliceCsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  %i.i = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.j = insertvalue { ptr, i64 } %i.i, i64 %i.h, 1
  ret { ptr, i64 } %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMs1_NtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type16settings_builderNtB5_23InferrerSettingsBuilder17method_types_case(ptr nofree writeonly sret([56 x i8]) align 8 captures(none) initializes((0, 56)) %0, ptr nofree align 8 captures(none) initializes((48, 49)) %1, i8 %2) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i8 %2, ptr %i.a, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMs1_NtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type16settings_builderNtB5_23InferrerSettingsBuilder19function_types_case(ptr nofree writeonly sret([56 x i8]) align 8 captures(none) initializes((0, 56)) %0, ptr nofree align 8 captures(none) initializes((49, 50)) %1, i8 %2) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 49
  store i8 %2, ptr %i.a, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMs1_NtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type16settings_builderNtB5_23InferrerSettingsBuilder5build(ptr nofree writeonly sret([56 x i8]) align 8 captures(none) initializes((0, 56)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type16settings_builderNtB5_23InferrerSettingsBuilder8dsl_path(ptr nofree writeonly sret([56 x i8]) align 8 captures(none) %0, ptr align 8 %1, ptr nofree readonly align 8 captures(none) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn4path4PathEBF_(ptr align 8 %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type16settings_builder23InferrerSettingsBuilderEBH_(ptr nonnull align 8 %1) #28
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMs2_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_7HashMapRNtCsf5uYjtxkodL_11proc_macro25IdentNtNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type19local_variables_map24LetStatementInferredTypeE6insertB1J_(ptr sret([248 x i8]) align 8 %0, ptr align 8 %1, ptr align 8 %2, ptr align 8 %3) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5_7HashMapRNtCsf5uYjtxkodL_11proc_macro25IdentNtNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type19local_variables_map24LetStatementInferredTypeNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6insertB1t_(ptr sret([248 x i8]) align 8 %0, ptr align 8 %1, ptr align 8 %2, ptr align 8 %3)
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtB7_2rc2RcNtNtCshMFl0SviwmK_3syn5error5ErrorEE8grow_oneCsdOh5Xhm0ZW8_13dsl_auto_type(ptr align 8 %0) unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = tail call { i64, i64 } @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs72oxeLBbweZ_5gimli(ptr nonnull align 8 %0, i64 %i.a, i64 1, i64 8, i64 8) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 2 uses
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.b, 1
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 %i.c, i64 %i.d) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RNvMs4_NtNtCscI6d9CVNmLh_4core5slice4iterINtB5_4IterINtNtCs40k4W9msRzi_5alloc2rc2RcNtNtCshMFl0SviwmK_3syn5error5ErrorEE3newCsdOh5Xhm0ZW8_13dsl_auto_type(ptr align 8 %0, i64 %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %i.b = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr %i.a, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMs6_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcNtNtCshMFl0SviwmK_3syn5error5ErrorE9drop_slowCsdOh5Xhm0ZW8_13dsl_auto_type(ptr align 8 %0) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5error5ErrorEBF_(ptr nonnull align 8 %i.e)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc2rc4WeakNtNtCshMFl0SviwmK_3syn5error5ErrorRNtNtBG_5alloc6GlobalEECsdOh5Xhm0ZW8_13dsl_auto_type(ptr nonnull align 8 %i.a) #28
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc2rc4WeakNtNtCshMFl0SviwmK_3syn5error5ErrorRNtNtBG_5alloc6GlobalEECsdOh5Xhm0ZW8_13dsl_auto_type(ptr nonnull align 8 %i.a)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.f
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMs6_NtNtNtCscI6d9CVNmLh_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtNtCshMFl0SviwmK_3syn4path11PathSegmentEE4nextCsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree writeonly sret([88 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr nofree align 8 captures(none) %1, i64 %2) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = load i64, ptr %1, align 8                ; 3 uses
  %.not = icmp eq i64 %i.b, %i.c
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = add nuw i64 %i.c, 1
  store i64 %i.d, ptr %1, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw [88 x i8], ptr %i.e, i64 %i.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.f, i64 88, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define ptr @_RNvMs7_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcNtNtCshMFl0SviwmK_3syn5error5ErrorE3newCsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
end_hunk_0
