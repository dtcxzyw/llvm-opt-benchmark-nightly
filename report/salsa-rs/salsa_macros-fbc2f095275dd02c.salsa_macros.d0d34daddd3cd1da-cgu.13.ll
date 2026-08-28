Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/salsa-rs/original/salsa_macros-fbc2f095275dd02c.salsa_macros.d0d34daddd3cd1da-cgu.13?download=true
inline.NumInlined: 64
inline.NumDeleted: 37
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNCNvNtCshVzvyy7iigg_12salsa_macros9supertype9enum_impl0B5_:bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCNvNtCshVzvyy7iigg_12salsa_macros9supertype9enum_impls0_0B5_(ptr sret([24 x i8]) align 8 %0, ptr nofree readnone captures(none) %1, i64 %2, ptr nofree readnone align 8 captures(none) %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 3 uses
  %i.f = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %2, ptr %i.f, align 8
  store ptr %i.f, ptr %i.e, align 8
  store ptr %i.e, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs7_NtCs66Sk1bwUSDc_5quote9___privateINtB5_20IdentFragmentAdapterRjENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCshVzvyy7iigg_12salsa_macros, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @12, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.g, align 8
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = lshr exact i64 %i.h, 1
  call void @_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsRujiHMkeh3_11proc_macro2(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr null, i64 %i.i, ptr nonnull align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.j = invoke { ptr, i64 } @_RNvXsx_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5derefCshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.d)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsRujiHMkeh3_11proc_macro2(ptr nonnull align 8 %i.d) #16
          to label %bb.h unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.l = extractvalue { ptr, i64 } %i.j, 0
  %i.m = extractvalue { ptr, i64 } %i.j, 1
  %i.n = invoke { i32, i32 } @_RNvMs6_NtCs66Sk1bwUSDc_5quote9___privateINtB5_20IdentFragmentAdapterRjE4spanCshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.e)
          to label %bb.d unwind label %bb.b       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.o = extractvalue { i32, i32 } %i.n, 0
  %i.p = extractvalue { i32, i32 } %i.n, 1
  %i.q = invoke { i32, i32 } @_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionNtCsRujiHMkeh3_11proc_macro24SpanE2orCshVzvyy7iigg_12salsa_macros(i32 0, i32 undef, i32 %i.o, i32 %i.p)
          to label %bb.e unwind label %bb.b       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.r = extractvalue { i32, i32 } %i.q, 0
  %i.s = extractvalue { i32, i32 } %i.q, 1
  invoke void @_RNvNtCs66Sk1bwUSDc_5quote9___private8mk_ident(ptr sret([24 x i8]) align 8 %0, ptr %i.l, i64 %i.m, i32 %i.r, i32 %i.s)
          to label %bb.f unwind label %bb.b

bb.f:                                             ; preds = %bb.e
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsRujiHMkeh3_11proc_macro2(ptr nonnull align 8 %i.d)
  ret void

bb.g:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.h:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.k
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCNvNtCshVzvyy7iigg_12salsa_macros9supertype9enum_impls_0B5_(ptr nofree writeonly sret([248 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1, ptr align 8 %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [248 x i8], align 8               ; 6 uses
  %i.c = load ptr, ptr %1, align 8
  %i.d = tail call { ptr, i64 } @_RNvXs7_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs3Eghgi3KVFH_3syn8lifetime8LifetimeENtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5derefCshVzvyy7iigg_12salsa_macros(ptr align 8 %i.c) ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0
  %i.f = extractvalue { ptr, i64 } %i.d, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs2y_NtNtCs3Eghgi3KVFH_3syn3gen5cloneNtNtBa_2ty4TypeNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr nonnull sret([248 x i8]) align 8 %i.b, ptr align 8 %2), !noalias !47
  store ptr %i.e, ptr %i.a, align 8, !noalias !47
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.f, ptr %i.g, align 8, !noalias !47
  invoke void @_RINvNtNtCs3Eghgi3KVFH_3syn3gen9visit_mut14visit_type_mutNtNvNtCshVzvyy7iigg_12salsa_macros9supertype29replace_lifetimes_with_static16LifetimeReplacerEBY_(ptr nonnull align 8 %i.a, ptr nonnull align 8 %i.b)
          to label %_RNvNtCshVzvyy7iigg_12salsa_macros9supertype29replace_lifetimes_with_static.exit unwind label %bb.b, !noalias !47

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3Eghgi3KVFH_3syn2ty4TypeEBF_(ptr nonnull align 8 %i.b) #16
          to label %bb.d unwind label %bb.c, !noalias !47

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17, !noalias !47
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.h

_RNvNtCshVzvyy7iigg_12salsa_macros9supertype29replace_lifetimes_with_static.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(248) %i.b, i64 248, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNCNvXNvNtCshVzvyy7iigg_12salsa_macros9supertype29replace_lifetimes_with_staticNtB4_16LifetimeReplacerNtNtNtCs3Eghgi3KVFH_3syn3gen9visit_mut8VisitMut18visit_lifetime_mut0B8_(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call zeroext i1 @_RNvXsy_CsRujiHMkeh3_11proc_macro2NtB5_5IdentNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr align 8 %1, ptr align 8 %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, ptr } @_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtCsRujiHMkeh3_11proc_macro211TokenStream4iterCshVzvyy7iigg_12salsa_macros(ptr align 8 %0, i64 %1) unnamed_addr #4 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs4_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB5_4IterNtCsRujiHMkeh3_11proc_macro211TokenStreamE3newCshVzvyy7iigg_12salsa_macros(ptr align 8 %0, i64 %1)
  ret { ptr, ptr } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, ptr } @_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtCsRujiHMkeh3_11proc_macro25Ident4iterCshVzvyy7iigg_12salsa_macros(ptr align 8 %0, i64 %1) unnamed_addr #4 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs4_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB5_4IterNtCsRujiHMkeh3_11proc_macro25IdentE3newCshVzvyy7iigg_12salsa_macros(ptr align 8 %0, i64 %1)
  ret { ptr, ptr } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, ptr } @_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtCsRujiHMkeh3_11proc_macro27Literal4iterCshVzvyy7iigg_12salsa_macros(ptr align 8 %0, i64 %1) unnamed_addr #4 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs4_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB5_4IterNtCsRujiHMkeh3_11proc_macro27LiteralE3newCshVzvyy7iigg_12salsa_macros(ptr align 8 %0, i64 %1)
  ret { ptr, ptr } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, ptr } @_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtCsRujiHMkeh3_11proc_macro25Ident4iterCshVzvyy7iigg_12salsa_macros(ptr align 8 %0, i64 %1) unnamed_addr #4 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs4_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB5_4IterRNtCsRujiHMkeh3_11proc_macro25IdentE3newCshVzvyy7iigg_12salsa_macros(ptr align 8 %0, i64 %1)
  ret { ptr, ptr } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, ptr } @_RNvMNtCs4NRVxsYgnAr_4core5sliceSj4iterCshVzvyy7iigg_12salsa_macros(ptr align 8 %0, i64 %1) unnamed_addr #4 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs4_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB5_4IterjE3newCshVzvyy7iigg_12salsa_macros(ptr align 8 %0, i64 %1)
  ret { ptr, ptr } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvMNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7step_byINtB2_6StepByINtNtNtB8_3ops5range5RangejEE3newCshVzvyy7iigg_12salsa_macros(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, i64 %1, i64 %2, i64 %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr nonnull @13, i64 27, ptr nonnull align 8 @15) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = tail call { i64, i64 } @_RNvXsh_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7step_byINtNtNtBb_3ops5range5RangejEINtB5_14SpecRangeSetupBQ_E5setupCshVzvyy7iigg_12salsa_macros(i64 %1, i64 %2, i64 %3) ; 2 uses
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

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvMs2_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Arguments17from_str_nonconstCshVzvyy7iigg_12salsa_macros(ptr %0, i64 %1) unnamed_addr #2 {
bb.a:
  %i.a = shl i64 %1, 1
  %i.b = or disjoint i64 %i.a, 1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.e = insertvalue { ptr, ptr } %i.d, ptr %i.c, 1
  ret { ptr, ptr } %i.e
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvMs4_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Arguments8from_strCshVzvyy7iigg_12salsa_macros(ptr %0, i64 %1) unnamed_addr #2 {
bb.a:
  %i.a = shl i64 %1, 1
  %i.b = or disjoint i64 %i.a, 1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.e = insertvalue { ptr, ptr } %i.d, ptr %i.c, 1
  ret { ptr, ptr } %i.e
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define hidden void @_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytesCshVzvyy7iigg_12salsa_macros(ptr nofree captures(none) %0, ptr nofree captures(none) %1, i64 %2) unnamed_addr #3 {
bb.a:
  %i.a = lshr i64 %2, 3                           ; 5 uses
  %i.b = and i64 %2, 7                            ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECshVzvyy7iigg_12salsa_macros.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %min.iters.check = icmp ult i64 %2, 64
  br i1 %min.iters.check, label %.lr.ph.i.preheader12, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.c = and i64 %2, -8                           ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.c
  %scevgep8 = getelementptr i8, ptr %1, i64 %i.c
  %bound0 = icmp ult ptr %0, %scevgep8
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader12, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, 2305843009213693948      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.d, align 1, !alias.scope !50, !noalias !53
  %wide.load9 = load <2 x i64>, ptr %i.f, align 1, !alias.scope !50, !noalias !53
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %wide.load10 = load <2 x i64>, ptr %i.e, align 1, !alias.scope !53
  %wide.load11 = load <2 x i64>, ptr %i.g, align 1, !alias.scope !53
  store <2 x i64> %wide.load10, ptr %i.d, align 1, !alias.scope !50, !noalias !53
  store <2 x i64> %wide.load11, ptr %i.f, align 1, !alias.scope !50, !noalias !53
  store <2 x i64> %wide.load, ptr %i.e, align 1, !alias.scope !53
  store <2 x i64> %wide.load9, ptr %i.g, align 1, !alias.scope !53
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !55

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECshVzvyy7iigg_12salsa_macros.exit, label %.lr.ph.i.preheader12

.lr.ph.i.preheader12:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.sroa.0.03.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.0.03.i.ph, 1
  %3 = and i64 %2, 8
  %lcmp.mod.not = icmp eq i64 %3, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader12
  %i.i = or disjoint i64 %.sroa.0.03.i.ph, 1
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.03.i.ph ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.03.i.ph ; 2 uses
  %.sroa.0.0.copyload.i.i.prol = load i64, ptr %i.j, align 1
  %.sroa.02.0.copyload.i.i.prol = load i64, ptr %i.k, align 1
  store i64 %.sroa.02.0.copyload.i.i.prol, ptr %i.j, align 1
  store i64 %.sroa.0.0.copyload.i.i.prol, ptr %i.k, align 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader12
  %.sroa.0.03.i.unr = phi i64 [ %.sroa.0.03.i.ph, %.lr.ph.i.preheader12 ], [ %i.i, %.lr.ph.i.prol ]
  %i.l = icmp eq i64 %i.a, %.neg
  br i1 %i.l, label %_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECshVzvyy7iigg_12salsa_macros.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.0.03.i = phi i64 [ %i.p, %.lr.ph.i ], [ %.sroa.0.03.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.m = add nuw nsw i64 %.sroa.0.03.i, 1         ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.03.i ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.03.i ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.n, align 1
  %.sroa.02.0.copyload.i.i = load i64, ptr %i.o, align 1
  store i64 %.sroa.02.0.copyload.i.i, ptr %i.n, align 1
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.o, align 1
  %i.p = add nuw nsw i64 %.sroa.0.03.i, 2         ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.m ; 2 uses
  %.sroa.0.0.copyload.i.i.1 = load i64, ptr %i.q, align 1
  %.sroa.02.0.copyload.i.i.1 = load i64, ptr %i.r, align 1
  store i64 %.sroa.02.0.copyload.i.i.1, ptr %i.q, align 1
  store i64 %.sroa.0.0.copyload.i.i.1, ptr %i.r, align 1
  %exitcond.not.i.1 = icmp eq i64 %i.p, %i.a
  br i1 %exitcond.not.i.1, label %_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECshVzvyy7iigg_12salsa_macros.exit, label %.lr.ph.i, !llvm.loop !56

_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECshVzvyy7iigg_12salsa_macros.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.a
  %.not4 = icmp eq i64 %i.b, 0
  br i1 %.not4, label %_RNvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_shortCshVzvyy7iigg_12salsa_macros.exit, label %bb.b

bb.b:                                             ; preds = %_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECshVzvyy7iigg_12salsa_macros.exit
  %i.s = and i64 %2, -8                           ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %i.s ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %i.s ; 4 uses
  %i.v = icmp samesign ult i64 %i.b, 4
  br i1 %i.v, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i.i5 = load i32, ptr %i.t, align 1
  %.sroa.02.0.copyload.i.i6 = load i32, ptr %i.u, align 1
  store i32 %.sroa.02.0.copyload.i.i6, ptr %i.t, align 1
  store i32 %.sroa.0.0.copyload.i.i5, ptr %i.u, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.i = phi i64 [ 0, %bb.b ], [ 4, %bb.c ] ; 4 uses
  %i.w = and i64 %2, 2
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.0.0.i ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.0.0.i ; 2 uses
  %.sroa.0.0.copyload.i9.i = load i16, ptr %i.y, align 1
  %.sroa.02.0.copyload.i10.i = load i16, ptr %i.z, align 1
  store i16 %.sroa.02.0.copyload.i10.i, ptr %i.y, align 1
  store i16 %.sroa.0.0.copyload.i9.i, ptr %i.z, align 1
  %i.aa = or disjoint i64 %.sroa.0.0.i, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i, %bb.d ], [ %i.aa, %bb.e ] ; 2 uses
  %4 = and i64 %2, 1
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %_RNvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_shortCshVzvyy7iigg_12salsa_macros.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.0.1.i ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.0.1.i ; 2 uses
  %.sroa.0.0.copyload.i11.i = load i8, ptr %i.ab, align 1
  %.sroa.02.0.copyload.i12.i = load i8, ptr %i.ac, align 1
  store i8 %.sroa.02.0.copyload.i12.i, ptr %i.ab, align 1
  store i8 %.sroa.0.0.copyload.i11.i, ptr %i.ac, align 1
  br label %_RNvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_shortCshVzvyy7iigg_12salsa_macros.exit

_RNvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_shortCshVzvyy7iigg_12salsa_macros.exit: ; preds = %bb.g, %bb.f, %_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECshVzvyy7iigg_12salsa_macros.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvNtCscdodAO9FK5_5alloc3fmt6formatCshVzvyy7iigg_12salsa_macros(ptr sret([24 x i8]) align 8 %0, ptr %1, ptr %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.b, align 8
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %3 = and i64 %i.c, 1
  %.not = icmp eq i64 %3, 0
  %i.d = lshr i64 %i.c, 1
  %.sroa.0.0 = select i1 %.not, ptr null, ptr %1
  call void @_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsRujiHMkeh3_11proc_macro2(ptr sret([24 x i8]) align 8 %0, ptr %.sroa.0.0, i64 %i.d, ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCshVzvyy7iigg_12salsa_macros9supertype9enum_impl(ptr noalias nofree nonnull writeonly align 8 captures(none) %0, ptr nonnull align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 13 uses
  %i.d = alloca [32 x i8], align 8                ; 2 uses
  %i.e = alloca [32 x i8], align 8                ; 2 uses
  %i.f = alloca [32 x i8], align 8                ; 10 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 2 uses
  %i.i = alloca [32 x i8], align 8                ; 2 uses
  %i.j = alloca [32 x i8], align 8                ; 10 uses
  %i.k = alloca [32 x i8], align 8                ; 2 uses
  %i.l = alloca [32 x i8], align 8                ; 5 uses
  %i.m = alloca [32 x i8], align 8                ; 2 uses
  %i.n = alloca [32 x i8], align 8                ; 22 uses
  %i.o = alloca [32 x i8], align 8                ; 2 uses
  %i.p = alloca [32 x i8], align 8                ; 4 uses
  %i.q = alloca [32 x i8], align 8                ; 2 uses
  %i.r = alloca [32 x i8], align 8                ; 4 uses
  %i.s = alloca [32 x i8], align 8                ; 2 uses
  %i.t = alloca [32 x i8], align 8                ; 4 uses
  %i.u = alloca [32 x i8], align 8                ; 2 uses
  %i.v = alloca [32 x i8], align 8                ; 7 uses
  %i.w = alloca [32 x i8], align 8                ; 2 uses
  %i.x = alloca [32 x i8], align 8                ; 5 uses
  %i.y = alloca [32 x i8], align 8                ; 2 uses
  %i.z = alloca [32 x i8], align 8                ; 6 uses
  %i.aa = alloca [32 x i8], align 8               ; 2 uses
  %i.ab = alloca [32 x i8], align 8               ; 4 uses
  %i.ac = alloca [32 x i8], align 8               ; 2 uses
  %i.ad = alloca [8 x i8], align 8                ; 2 uses
  %i.ae = alloca [8 x i8], align 8                ; 2 uses
  %i.af = alloca [16 x i8], align 8               ; 3 uses
  %i.ag = alloca [16 x i8], align 8               ; 3 uses
  %i.ah = alloca [32 x i8], align 8               ; 21 uses
  %i.ai = alloca [32 x i8], align 8               ; 2 uses
  %i.aj = alloca [32 x i8], align 8               ; 17 uses
  %i.ak = alloca [32 x i8], align 8               ; 2 uses
  %i.al = alloca [32 x i8], align 8               ; 4 uses
  %i.am = alloca [32 x i8], align 8               ; 2 uses
  %i.an = alloca [32 x i8], align 8               ; 4 uses
  %i.ao = alloca [32 x i8], align 8               ; 2 uses
  %i.ap = alloca [32 x i8], align 8               ; 13 uses
  %i.aq = alloca [32 x i8], align 8               ; 2 uses
  %i.ar = alloca [8 x i8], align 8                ; 2 uses
  %i.as = alloca [16 x i8], align 8               ; 3 uses
  %i.at = alloca [32 x i8], align 8               ; 2 uses
  %i.au = alloca [32 x i8], align 8               ; 12 uses
  %i.av = alloca [32 x i8], align 8               ; 2 uses
  %i.aw = alloca [32 x i8], align 8               ; 9 uses
  %i.ax = alloca [32 x i8], align 8               ; 2 uses
  %i.ay = alloca [32 x i8], align 8               ; 7 uses
  %i.az = alloca [32 x i8], align 8               ; 4 uses
  %i.ba = alloca [8 x i8], align 8                ; 4 uses
  %i.bb = alloca [16 x i8], align 8               ; 4 uses
  %i.bc = alloca [32 x i8], align 8               ; 24 uses
  %i.bd = alloca [32 x i8], align 8               ; 2 uses
  %i.be = alloca [32 x i8], align 8               ; 4 uses
  %i.bf = alloca [32 x i8], align 8               ; 2 uses
  %i.bg = alloca [32 x i8], align 8               ; 7 uses
  %i.bh = alloca [32 x i8], align 8               ; 4 uses
  %i.bi = alloca [8 x i8], align 8                ; 4 uses
  %i.bj = alloca [16 x i8], align 8               ; 4 uses
  %i.bk = alloca [32 x i8], align 8               ; 10 uses
  %i.bl = alloca [32 x i8], align 8               ; 2 uses
  %i.bm = alloca [8 x i8], align 8                ; 4 uses
  %i.bn = alloca [16 x i8], align 8               ; 4 uses
  %i.bo = alloca [32 x i8], align 8               ; 22 uses
  %i.bp = alloca [32 x i8], align 8               ; 2 uses
  %i.bq = alloca [32 x i8], align 8               ; 4 uses
  %i.br = alloca [32 x i8], align 8               ; 2 uses
  %i.bs = alloca [32 x i8], align 8               ; 13 uses
  %i.bt = alloca [32 x i8], align 8               ; 2 uses
  %i.bu = alloca [32 x i8], align 8               ; 14 uses
  %i.bv = alloca [32 x i8], align 8               ; 2 uses
  %i.bw = alloca [32 x i8], align 8               ; 9 uses
  %i.bx = alloca [32 x i8], align 8               ; 2 uses
  %i.by = alloca [32 x i8], align 8               ; 4 uses
  %i.bz = alloca [32 x i8], align 8               ; 2 uses
  %i.ca = alloca [32 x i8], align 8               ; 4 uses
  %i.cb = alloca [32 x i8], align 8               ; 2 uses
  %i.cc = alloca [32 x i8], align 8               ; 4 uses
  %i.cd = alloca [32 x i8], align 8               ; 2 uses
  %i.ce = alloca [32 x i8], align 8               ; 17 uses
  %i.cf = alloca [32 x i8], align 8               ; 2 uses
  %i.cg = alloca [32 x i8], align 8               ; 2 uses
  %i.ch = alloca [32 x i8], align 8               ; 19 uses
  %i.ci = alloca [32 x i8], align 8               ; 2 uses
  %i.cj = alloca [8 x i8], align 8                ; 3 uses
  %i.ck = alloca [16 x i8], align 8               ; 3 uses
  %i.cl = alloca [32 x i8], align 8               ; 2 uses
  %i.cm = alloca [32 x i8], align 8               ; 2 uses
  %i.cn = alloca [32 x i8], align 8               ; 15 uses
  %i.co = alloca [32 x i8], align 8               ; 2 uses
  %i.cp = alloca [32 x i8], align 8               ; 19 uses
  %i.cq = alloca [32 x i8], align 8               ; 2 uses
  %i.cr = alloca [32 x i8], align 8               ; 8 uses
  %i.cs = alloca [32 x i8], align 8               ; 2 uses
  %i.ct = alloca [32 x i8], align 8               ; 2 uses
  %i.cu = alloca [8 x i8], align 8                ; 2 uses
  %i.cv = alloca [16 x i8], align 8               ; 3 uses
  %i.cw = alloca [32 x i8], align 8               ; 6 uses
  %i.cx = alloca [32 x i8], align 8               ; 2 uses
  %i.cy = alloca [8 x i8], align 8                ; 2 uses
  %i.cz = alloca [8 x i8], align 8                ; 2 uses
  %i.da = alloca [16 x i8], align 8               ; 3 uses
  %i.db = alloca [16 x i8], align 8               ; 3 uses
  %i.dc = alloca [32 x i8], align 8               ; 40 uses
  %i.dd = alloca [32 x i8], align 8               ; 2 uses
  %i.de = alloca [32 x i8], align 8               ; 6 uses
  %i.df = alloca [32 x i8], align 8               ; 2 uses
  %i.dg = alloca [32 x i8], align 8               ; 70 uses
  %i.dh = alloca [32 x i8], align 8               ; 2 uses
  %i.di = alloca [32 x i8], align 8               ; 13 uses
  %i.dj = alloca [32 x i8], align 8               ; 4 uses
  %i.dk = alloca [24 x i8], align 8               ; 2 uses
  %i.dl = alloca [24 x i8], align 8               ; 2 uses
  %i.dm = alloca [24 x i8], align 8               ; 6 uses
  %i.dn = alloca [24 x i8], align 8               ; 2 uses
  %i.do = alloca [24 x i8], align 8               ; 5 uses
  %i.dp = alloca [24 x i8], align 8               ; 4 uses
  %i.dq = alloca [32 x i8], align 8               ; 4 uses
  %i.dr = alloca [32 x i8], align 8               ; 2 uses
  %i.ds = alloca [32 x i8], align 8               ; 6 uses
  %i.dt = alloca [32 x i8], align 8               ; 2 uses
  %i.du = alloca [32 x i8], align 8               ; 4 uses
  %i.dv = alloca [32 x i8], align 8               ; 2 uses
  %i.dw = alloca [32 x i8], align 8               ; 24 uses
  %i.dx = alloca [32 x i8], align 8               ; 2 uses
  %i.dy = alloca [32 x i8], align 8               ; 15 uses
  %i.dz = alloca [32 x i8], align 8               ; 2 uses
  %i.ea = alloca [32 x i8], align 8               ; 4 uses
  %i.eb = alloca [32 x i8], align 8               ; 2 uses
  %i.ec = alloca [32 x i8], align 8               ; 11 uses
  %i.ed = alloca [32 x i8], align 8               ; 2 uses
  %i.ee = alloca [32 x i8], align 8               ; 13 uses
  %i.ef = alloca [32 x i8], align 8               ; 4 uses
  %i.eg = alloca [32 x i8], align 8               ; 4 uses
  %i.eh = alloca [32 x i8], align 8               ; 2 uses
  %i.ei = alloca [32 x i8], align 8               ; 4 uses
  %i.ej = alloca [32 x i8], align 8               ; 2 uses
  %i.ek = alloca [8 x i8], align 8                ; 2 uses
  %i.el = alloca [16 x i8], align 8               ; 3 uses
  %i.em = alloca [32 x i8], align 8               ; 15 uses
  %i.en = alloca [32 x i8], align 8               ; 2 uses
  %i.eo = alloca [32 x i8], align 8               ; 6 uses
  %i.ep = alloca [32 x i8], align 8               ; 2 uses
  %i.eq = alloca [32 x i8], align 8               ; 5 uses
  %i.er = alloca [32 x i8], align 8               ; 2 uses
  %i.es = alloca [32 x i8], align 8               ; 4 uses
  %i.et = alloca [32 x i8], align 8               ; 2 uses
  %i.eu = alloca [32 x i8], align 8               ; 13 uses
  %i.ev = alloca [32 x i8], align 8               ; 2 uses
  %i.ew = alloca [32 x i8], align 8               ; 13 uses
  %i.ex = alloca [32 x i8], align 8               ; 4 uses
  %i.ey = alloca [24 x i8], align 8               ; 4 uses
  %i.ez = alloca [8 x i8], align 8                ; 4 uses
  %i.fa = alloca [8 x i8], align 8                ; 4 uses
  %i.fb = alloca [8 x i8], align 8                ; 4 uses
  %i.fc = alloca [24 x i8], align 8               ; 2 uses
  %i.fd = alloca [248 x i8], align 8              ; 2 uses
  %i.fe = alloca [24 x i8], align 8               ; 2 uses
  %i.ff = alloca [16 x i8], align 8               ; 6 uses
  %i.fg = alloca [24 x i8], align 8               ; 2 uses
  %i.fh = alloca [24 x i8], align 8               ; 8 uses
  %i.fi = alloca [24 x i8], align 8               ; 8 uses
  %i.fj = alloca [24 x i8], align 8               ; 7 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 176
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXsG_NtCsRujiHMkeh3_11proc_macro23impNtB5_5IdentNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCshVzvyy7iigg_12salsa_macros(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.fk)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  invoke void @_RNvXs2_NtCsRujiHMkeh3_11proc_macro26markerNtB5_19ProcMacroAutoTraitsNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCshVzvyy7iigg_12salsa_macros(ptr nonnull %i.fl)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.fm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsRujiHMkeh3_11proc_macro23imp5IdentEBF_(ptr nonnull align 8 %i.b) #16
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.fn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable

.body:                                            ; preds = %bb.d, %bb.b, %bb.f
  %.pn99 = phi { ptr, i32 } [ %.pn97, %bb.f ], [ %i.fo, %bb.d ], [ %i.fm, %bb.b ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3Eghgi3KVFH_3syn4item8ItemEnumEBF_(ptr nonnull align 8 %1) #16
          to label %bb.abk unwind label %bb.ug

end_hunk_0
