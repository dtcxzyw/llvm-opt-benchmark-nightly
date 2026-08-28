Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/salsa-rs/original/salsa_macros-fbc2f095275dd02c.salsa_macros.d0d34daddd3cd1da-cgu.03?download=true
inline.NumInlined: 236
inline.NumDeleted: 203
begin_hunk_0_@_RNvMNtCscdodAO9FK5_5alloc3vecINtB2_3VecNtNtCshVzvyy7iigg_12salsa_macros11salsa_value12CheckedFieldE3newBF_:bb.a
  store i64 0, ptr %i.b, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCsRujiHMkeh3_11proc_macro25IdentE4pushCshVzvyy7iigg_12salsa_macros(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCsRujiHMkeh3_11proc_macro25IdentE8push_mutCshVzvyy7iigg_12salsa_macros.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCsRujiHMkeh3_11proc_macro25IdentE8grow_oneCshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %0)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCsRujiHMkeh3_11proc_macro25IdentE8push_mutCshVzvyy7iigg_12salsa_macros.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsRujiHMkeh3_11proc_macro25IdentEBD_(ptr align 8 %1) #20
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCsRujiHMkeh3_11proc_macro25IdentE8push_mutCshVzvyy7iigg_12salsa_macros.exit: ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.j = add i64 %i.b, 1
  store i64 %i.j, ptr %i.a, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs3Eghgi3KVFH_3syn2ty4TypeE4pushCshVzvyy7iigg_12salsa_macros(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs3Eghgi3KVFH_3syn2ty4TypeE8push_mutCshVzvyy7iigg_12salsa_macros.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs3Eghgi3KVFH_3syn2ty4TypeE8grow_oneCshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %0)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs3Eghgi3KVFH_3syn2ty4TypeE8push_mutCshVzvyy7iigg_12salsa_macros.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3Eghgi3KVFH_3syn2ty4TypeEBF_(ptr align 8 %1) #20
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs3Eghgi3KVFH_3syn2ty4TypeE8push_mutCshVzvyy7iigg_12salsa_macros.exit: ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw [248 x i8], ptr %i.h, i64 %i.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.i, ptr noundef nonnull align 8 dereferenceable(248) %1, i64 248, i1 false)
  %i.j = add i64 %i.b, 1
  store i64 %i.j, ptr %i.a, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs3Eghgi3KVFH_3syn8generics14WherePredicateE4pushCshVzvyy7iigg_12salsa_macros(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs3Eghgi3KVFH_3syn8generics14WherePredicateE8push_mutCshVzvyy7iigg_12salsa_macros.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs3Eghgi3KVFH_3syn8generics14WherePredicateE8grow_oneCshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %0)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs3Eghgi3KVFH_3syn8generics14WherePredicateE8push_mutCshVzvyy7iigg_12salsa_macros.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3Eghgi3KVFH_3syn8generics14WherePredicateEBF_(ptr align 8 %1) #20
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs3Eghgi3KVFH_3syn8generics14WherePredicateE8push_mutCshVzvyy7iigg_12salsa_macros.exit: ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw [360 x i8], ptr %i.h, i64 %i.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.i, ptr noundef nonnull align 8 dereferenceable(360) %1, i64 360, i1 false)
  %i.j = add i64 %i.b, 1
  store i64 %i.j, ptr %i.a, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshVzvyy7iigg_12salsa_macros11salsa_value12CheckedFieldE4pushBI_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshVzvyy7iigg_12salsa_macros11salsa_value12CheckedFieldE8push_mutBI_.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshVzvyy7iigg_12salsa_macros11salsa_value12CheckedFieldE8grow_oneBP_(ptr nonnull align 8 %0)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshVzvyy7iigg_12salsa_macros11salsa_value12CheckedFieldE8push_mutBI_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCshVzvyy7iigg_12salsa_macros11salsa_value12CheckedFieldEBF_(ptr align 8 %1) #20
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshVzvyy7iigg_12salsa_macros11salsa_value12CheckedFieldE8push_mutBI_.exit: ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.j = add i64 %i.b, 1
  store i64 %i.j, ptr %i.a, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtCs3Eghgi3KVFH_3syn4attr9AttributeE4pushCshVzvyy7iigg_12salsa_macros(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtCs3Eghgi3KVFH_3syn4attr9AttributeE8push_mutCshVzvyy7iigg_12salsa_macros.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtCs3Eghgi3KVFH_3syn4attr9AttributeE8grow_oneCshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %0)
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtCs3Eghgi3KVFH_3syn4attr9AttributeE8push_mutCshVzvyy7iigg_12salsa_macros.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtCs3Eghgi3KVFH_3syn4attr9AttributeE8push_mutCshVzvyy7iigg_12salsa_macros.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.b
  store ptr %1, ptr %i.g, align 8
  %i.h = add i64 %i.b, 1
  store i64 %i.h, ptr %i.a, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden i64 @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtCsRujiHMkeh3_11proc_macro27LiteralE3lenCshVzvyy7iigg_12salsa_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  ret i64 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs3Eghgi3KVFH_3syn4attr9AttributeE6removeCshVzvyy7iigg_12salsa_macros(ptr nofree writeonly sret([248 x i8]) align 8 captures(none) %0, ptr nofree align 8 captures(none) %1, i64 %2, ptr align 8 %3) unnamed_addr #5 {
bb.a:
  %.sroa.4 = alloca [240 x i8], align 8           ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noalias !280 ; 4 uses
  %.not.i = icmp ult i64 %2, %i.b
  br i1 %.not.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs3Eghgi3KVFH_3syn4attr9AttributeE10try_removeCshVzvyy7iigg_12salsa_macros.exit, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs3Eghgi3KVFH_3syn4attr9AttributeE10try_removeCshVzvyy7iigg_12salsa_macros.exit.thread

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs3Eghgi3KVFH_3syn4attr9AttributeE10try_removeCshVzvyy7iigg_12salsa_macros.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !noalias !280
  %i.e = getelementptr inbounds nuw [248 x i8], ptr %i.d, i64 %2 ; 4 uses
  %.sroa.03.0.copyload = load i64, ptr %i.e, align 8 ; 2 uses
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(240) %.sroa.44.0..sroa_idx, i64 240, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 248
  %i.g = xor i64 %2, -1
  %i.h = add i64 %i.b, %i.g
  %i.i = mul i64 %i.h, 248
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.e, ptr nonnull align 8 %i.f, i64 %i.i, i1 false), !noalias !280
  %i.j = add i64 %i.b, -1                         ; 2 uses
  store i64 %i.j, ptr %i.a, align 8, !noalias !280
  %.not = icmp eq i64 %.sroa.03.0.copyload, -1
  br i1 %.not, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs3Eghgi3KVFH_3syn4attr9AttributeE10try_removeCshVzvyy7iigg_12salsa_macros.exit.thread, label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs3Eghgi3KVFH_3syn4attr9AttributeE10try_removeCshVzvyy7iigg_12salsa_macros.exit
  store i64 %.sroa.03.0.copyload, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(240) %.sroa.4, i64 240, i1 false)
  ret void

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs3Eghgi3KVFH_3syn4attr9AttributeE10try_removeCshVzvyy7iigg_12salsa_macros.exit.thread: ; preds = %bb.a, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs3Eghgi3KVFH_3syn4attr9AttributeE10try_removeCshVzvyy7iigg_12salsa_macros.exit
  %i.k = phi i64 [ %i.b, %bb.a ], [ %i.j, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs3Eghgi3KVFH_3syn4attr9AttributeE10try_removeCshVzvyy7iigg_12salsa_macros.exit ]
  tail call void @_RNvNvMs_NtCscdodAO9FK5_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 %2, i64 %i.k, ptr align 8 %3) #19
  unreachable
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden i64 @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCshVzvyy7iigg_12salsa_macros12salsa_struct10SalsaFieldE3lenBH_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  ret i64 %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden i64 @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTNtNtCs3Eghgi3KVFH_3syn4data7VariantNtNtBI_5token5CommaEE3lenCshVzvyy7iigg_12salsa_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  ret i64 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs4_NtNtCs66Sk1bwUSDc_5quote9___private3extINtNtCscdodAO9FK5_5alloc3vec3VecNtCsRujiHMkeh3_11proc_macro211TokenStreamENtB5_16RepAsIteratorExt15quote_into_iterCshVzvyy7iigg_12salsa_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8
  %i.c = tail call { ptr, ptr } @_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtCsRujiHMkeh3_11proc_macro211TokenStream4iterCshVzvyy7iigg_12salsa_macros(ptr align 8 %.val, i64 %.val1)
  ret { ptr, ptr } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs4_NtNtCs66Sk1bwUSDc_5quote9___private3extINtNtCscdodAO9FK5_5alloc3vec3VecNtCsRujiHMkeh3_11proc_macro25IdentENtB5_16RepAsIteratorExt15quote_into_iterCshVzvyy7iigg_12salsa_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = tail call { ptr, ptr } @_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtCsRujiHMkeh3_11proc_macro25Ident4iterCshVzvyy7iigg_12salsa_macros(ptr align 8 %i.b, i64 %i.d)
  ret { ptr, ptr } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs4_NtNtCs66Sk1bwUSDc_5quote9___private3extINtNtCscdodAO9FK5_5alloc3vec3VecNtCsRujiHMkeh3_11proc_macro27LiteralENtB5_16RepAsIteratorExt15quote_into_iterCshVzvyy7iigg_12salsa_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8
  %i.c = tail call { ptr, ptr } @_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtCsRujiHMkeh3_11proc_macro27Literal4iterCshVzvyy7iigg_12salsa_macros(ptr align 8 %.val, i64 %.val1)
  ret { ptr, ptr } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs4_NtNtCs66Sk1bwUSDc_5quote9___private3extINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs3Eghgi3KVFH_3syn2ty4TypeENtB5_16RepAsIteratorExt15quote_into_iterCshVzvyy7iigg_12salsa_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = tail call { ptr, ptr } @_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs3Eghgi3KVFH_3syn2ty4Type4iterCshVzvyy7iigg_12salsa_macros(ptr align 8 %i.b, i64 %i.d)
  ret { ptr, ptr } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs4_NtNtCs66Sk1bwUSDc_5quote9___private3extINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs3Eghgi3KVFH_3syn4attr9AttributeENtB5_16RepAsIteratorExt15quote_into_iterCshVzvyy7iigg_12salsa_macros(ptr align 8 %0) unnamed_addr #5 {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvXs7_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs3Eghgi3KVFH_3syn4attr9AttributeENtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5derefBI_(ptr align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0
  %i.c = extractvalue { ptr, i64 } %i.a, 1
  %i.d = tail call { ptr, ptr } @_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs3Eghgi3KVFH_3syn4attr9Attribute4iterBy_(ptr align 8 %i.b, i64 %i.c)
  ret { ptr, ptr } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs4_NtNtCs66Sk1bwUSDc_5quote9___private3extINtNtCscdodAO9FK5_5alloc3vec3VecRNtCsRujiHMkeh3_11proc_macro25IdentENtB5_16RepAsIteratorExt15quote_into_iterCshVzvyy7iigg_12salsa_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8
  %i.c = tail call { ptr, ptr } @_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtCsRujiHMkeh3_11proc_macro25Ident4iterCshVzvyy7iigg_12salsa_macros(ptr align 8 %.val, i64 %.val1)
  ret { ptr, ptr } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs4_NtNtCs66Sk1bwUSDc_5quote9___private3extINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCs3Eghgi3KVFH_3syn11restriction10VisibilityENtB5_16RepAsIteratorExt15quote_into_iterCshVzvyy7iigg_12salsa_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8
  %i.c = tail call { ptr, ptr } @_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCs3Eghgi3KVFH_3syn11restriction10Visibility4iterCshVzvyy7iigg_12salsa_macros(ptr align 8 %.val, i64 %.val1)
  ret { ptr, ptr } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs4_NtNtCs66Sk1bwUSDc_5quote9___private3extINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCs3Eghgi3KVFH_3syn2ty4TypeENtB5_16RepAsIteratorExt15quote_into_iterCshVzvyy7iigg_12salsa_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = tail call { ptr, ptr } @_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCs3Eghgi3KVFH_3syn2ty4Type4iterCshVzvyy7iigg_12salsa_macros(ptr align 8 %i.b, i64 %i.d)
  ret { ptr, ptr } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs4_NtNtCs66Sk1bwUSDc_5quote9___private3extINtNtCscdodAO9FK5_5alloc3vec3VecRSRNtNtCs3Eghgi3KVFH_3syn4attr9AttributeENtB5_16RepAsIteratorExt15quote_into_iterCshVzvyy7iigg_12salsa_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8
  %i.c = tail call { ptr, ptr } @_RNvMNtCs4NRVxsYgnAr_4core5sliceSRSRNtNtCs3Eghgi3KVFH_3syn4attr9Attribute4iterCshVzvyy7iigg_12salsa_macros(ptr align 8 %.val, i64 %.val1)
  ret { ptr, ptr } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs4_NtNtCs66Sk1bwUSDc_5quote9___private3extINtNtCscdodAO9FK5_5alloc3vec3VecjENtB5_16RepAsIteratorExt15quote_into_iterCshVzvyy7iigg_12salsa_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8
  %i.c = tail call { ptr, ptr } @_RNvMNtCs4NRVxsYgnAr_4core5sliceSj4iterCshVzvyy7iigg_12salsa_macros(ptr align 8 %.val, i64 %.val1)
  ret { ptr, ptr } %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvXs7_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCsRujiHMkeh3_11proc_macro25IdentENtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5derefCshVzvyy7iigg_12salsa_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvXs7_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs3Eghgi3KVFH_3syn2ty4TypeENtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5derefCshVzvyy7iigg_12salsa_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvXs7_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs3Eghgi3KVFH_3syn4item8ImplItemENtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5derefCshVzvyy7iigg_12salsa_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvXs7_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs3Eghgi3KVFH_3syn8generics14WherePredicateENtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5derefCshVzvyy7iigg_12salsa_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvXs7_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs3Eghgi3KVFH_3syn8lifetime8LifetimeENtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5derefCshVzvyy7iigg_12salsa_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvXs7_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshVzvyy7iigg_12salsa_macros11salsa_value12CheckedFieldENtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5derefBI_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}
end_hunk_0
