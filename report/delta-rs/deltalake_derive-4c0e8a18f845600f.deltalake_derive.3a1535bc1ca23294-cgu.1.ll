inline.NumInlined: 47
inline.NumDeleted: 38
begin_hunk_0_@_RNvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6Buffer17extend_from_sliceCs4ZaLwAtrTbk_16deltalake_derive:bb.a
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.e
  %i.k = phi i64 [ %i.f, %bb.a ], [ %.pre, %bb.e ]
  %i.l = load ptr, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %1, i64 %2, i1 false)
  %i.n = load i64, ptr %i.e, align 8
  %i.o = add i64 %i.n, %2
  store i64 %i.o, ptr %i.e, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  resume { ptr, i32 } %i.p

bb.e:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  %.pre = load i64, ptr %i.e, align 8
  br label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamE4pushCs4ZaLwAtrTbk_16deltalake_derive(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamE8push_mutCs4ZaLwAtrTbk_16deltalake_derive.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtCsbjGuDcEILED_11proc_macro211TokenStreamE8grow_oneCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %0)
          to label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamE8push_mutCs4ZaLwAtrTbk_16deltalake_derive.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr align 8 %1) #20
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamE8push_mutCs4ZaLwAtrTbk_16deltalake_derive.exit: ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.j = add i64 %i.b, 1
  store i64 %i.j, ptr %i.a, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringE4pushCs4ZaLwAtrTbk_16deltalake_derive(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCs4ZaLwAtrTbk_16deltalake_derive.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCs2pqxYH9ZEk8_3std(ptr nonnull align 8 %0)
          to label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCs4ZaLwAtrTbk_16deltalake_derive.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsbjGuDcEILED_11proc_macro2(ptr align 8 %1) #20
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCs4ZaLwAtrTbk_16deltalake_derive.exit: ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.j = add i64 %i.b, 1
  store i64 %i.j, ptr %i.a, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs7nQiqFc7Txl_3syn4attr4MetaE4pushCs4ZaLwAtrTbk_16deltalake_derive(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs7nQiqFc7Txl_3syn4attr4MetaE8push_mutCs4ZaLwAtrTbk_16deltalake_derive.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs7nQiqFc7Txl_3syn4attr4MetaE8grow_oneCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %0)
          to label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs7nQiqFc7Txl_3syn4attr4MetaE8push_mutCs4ZaLwAtrTbk_16deltalake_derive.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4attr4MetaEBK_(ptr align 8 %1) #20
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs7nQiqFc7Txl_3syn4attr4MetaE8push_mutCs4ZaLwAtrTbk_16deltalake_derive.exit: ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw [232 x i8], ptr %i.h, i64 %i.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.i, ptr noundef nonnull align 8 dereferenceable(232) %1, i64 232, i1 false)
  %i.j = add i64 %i.b, 1
  store i64 %i.j, ptr %i.a, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtBK_5token5CommaEE4pushCs4ZaLwAtrTbk_16deltalake_derive(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtBK_5token5CommaEE8push_mutCs4ZaLwAtrTbk_16deltalake_derive.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtBR_5token5CommaEE8grow_oneCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %0)
          to label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtBK_5token5CommaEE8push_mutCs4ZaLwAtrTbk_16deltalake_derive.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtBL_5token5CommaEECs4ZaLwAtrTbk_16deltalake_derive(ptr align 8 %1) #20
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtBK_5token5CommaEE8push_mutCs4ZaLwAtrTbk_16deltalake_derive.exit: ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw [240 x i8], ptr %i.h, i64 %i.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.i, ptr noundef nonnull align 8 dereferenceable(240) %1, i64 240, i1 false)
  %i.j = add i64 %i.b, 1
  store i64 %i.j, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtB6_6string6StringE8is_emptyCs4ZaLwAtrTbk_16deltalake_derive(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp eq i64 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden i64 @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecTNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtBJ_5token5CommaEE3lenCs4ZaLwAtrTbk_16deltalake_derive(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  ret i64 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvNtCs6Po7BT7Nknu_5alloc3fmt6formatCs4ZaLwAtrTbk_16deltalake_derive(ptr sret([24 x i8]) align 8 %0, ptr %1, ptr %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.b, align 8
  %i.c = ptrtoint ptr %2 to i64
  %3 = trunc nuw i64 %i.c to i1
  %.sroa.0.0 = select i1 %3, ptr %1, ptr null
  call void @_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbjGuDcEILED_11proc_macro2(ptr sret([24 x i8]) align 8 %0, ptr %.sroa.0.0, i64 0, ptr nonnull align 8 %i.a) #18
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { i64, i64 } @_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchrCs4ZaLwAtrTbk_16deltalake_derive(i8 %0, ptr %1, i64 %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %2, 16
  br i1 %i.a, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { i64, i64 } @_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr14memchr_aligned(i8 %0, ptr %1, i64 %2) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %.lr.ph, %.preheader, %bb.b
  %.sroa.4.0 = phi i64 [ %i.d, %bb.b ], [ undef, %.preheader ], [ %.sroa.01.05, %.lr.ph ], [ %.sroa.01.05, %bb.c ]
  %.sroa.0.0 = phi i64 [ %i.c, %bb.b ], [ 0, %.preheader ], [ 0, %bb.c ], [ 1, %.lr.ph ]
  %i.e = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.f = insertvalue { i64, i64 } %i.e, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.f

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %.sroa.01.05 = phi i64 [ %i.j, %bb.c ], [ 0, %.preheader ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05
  %i.h = load i8, ptr %i.g, align 1
  %i.i = icmp eq i8 %i.h, %0
  br i1 %i.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.j = add nuw i64 %.sroa.01.05, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %2
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCsBGNUbrdbJ0_5quote9to_tokensRNtNtCs7nQiqFc7Txl_3syn2ty8TypePathNtB2_8ToTokens9to_tokensCs4ZaLwAtrTbk_16deltalake_derive(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call void @_RNvXs5_NtNtCs7nQiqFc7Txl_3syn2ty8printingNtB7_8TypePathNtNtCsBGNUbrdbJ0_5quote9to_tokens8ToTokens9to_tokens(ptr align 8 %i.a, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNvNtCsjJ0p09o2jmV_10proc_macro6bridges3_1__INtNtCsbvkFyIu7lgC_4core6option6OptionReEINtNtB4_3rpc6EncodeuE6encodeCs4ZaLwAtrTbk_16deltalake_derive(ptr %0, i64 %1, ptr align 8 %2, ptr %3) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = alloca [40 x i8], align 8                ; 5 uses
  %.not = icmp eq ptr %0, null
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.g = load i64, ptr %i.e, align 8              ; 2 uses
  %i.h = load i64, ptr %i.f, align 8
  %i.i = icmp eq i64 %i.g, %i.h
  br i1 %i.i, label %bb.c, label %_RNvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6Buffer4pushCs4ZaLwAtrTbk_16deltalake_derive.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %2, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store ptr @_RNvNvXs6_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr @_RNvNvXs6_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr nonnull sret([40 x i8]) align 8 %i.c, ptr nonnull byval([40 x i8]) align 8 %i.d, i64 1) #19, !inline_history !43
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjJ0p09o2jmV_10proc_macro6bridge6buffer6BufferECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %2)
          to label %bb.e unwind label %bb.d

common.resume:                                    ; preds = %bb.h, %bb.d
  %.sink = phi ptr [ %i.a, %bb.h ], [ %i.c, %bb.d ]
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.h ], [ %i.l, %bb.d ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %.sink, i64 40, i1 false)
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  %.pre.i = load i64, ptr %i.e, align 8
  br label %_RNvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6Buffer4pushCs4ZaLwAtrTbk_16deltalake_derive.exit

_RNvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6Buffer4pushCs4ZaLwAtrTbk_16deltalake_derive.exit: ; preds = %bb.b, %bb.e
  %i.m = phi i64 [ %i.g, %bb.b ], [ %.pre.i, %bb.e ]
  %i.n = load ptr, ptr %2, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m
  store i8 0, ptr %i.o, align 1
  %i.p = load i64, ptr %i.e, align 8
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_RNvXs8_NtNtCsjJ0p09o2jmV_10proc_macro6bridge3rpcReINtB5_6EncodeuE6encodeCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull %0, i64 %1, ptr nonnull align 8 %2, ptr %3)
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.r = load i64, ptr %i.e, align 8              ; 2 uses
  %i.s = load i64, ptr %i.f, align 8
  %i.t = icmp eq i64 %i.r, %i.s
  br i1 %i.t, label %bb.g, label %_RNvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6Buffer4pushCs4ZaLwAtrTbk_16deltalake_derive.exit8

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %2, align 8
  %.sroa.4.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %2, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store ptr @_RNvNvXs6_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx.i5, align 8
  %.sroa.5.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr @_RNvNvXs6_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx.i6, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr nonnull sret([40 x i8]) align 8 %i.a, ptr nonnull byval([40 x i8]) align 8 %i.b, i64 1) #19, !inline_history !43
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjJ0p09o2jmV_10proc_macro6bridge6buffer6BufferECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %2)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  %.pre.i7 = load i64, ptr %i.e, align 8
  br label %_RNvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6Buffer4pushCs4ZaLwAtrTbk_16deltalake_derive.exit8

_RNvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6Buffer4pushCs4ZaLwAtrTbk_16deltalake_derive.exit8: ; preds = %bb.f, %bb.i
  %i.x = phi i64 [ %i.r, %bb.f ], [ %.pre.i7, %bb.i ]
  %i.y = load ptr, ptr %2, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.x
  store i8 1, ptr %i.z, align 1
  %i.aa = load i64, ptr %i.e, align 8
  %i.ab = add i64 %i.aa, 1
  store i64 %i.ab, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.j:                                             ; preds = %_RNvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6Buffer4pushCs4ZaLwAtrTbk_16deltalake_derive.exit, %_RNvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6Buffer4pushCs4ZaLwAtrTbk_16deltalake_derive.exit8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNvNtCsjJ0p09o2jmV_10proc_macro6bridges4_1__INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBO_6option6OptionNtNtB4_6client11TokenStreamEuEINtNtB4_3rpc6EncodeuE6encodeCs4ZaLwAtrTbk_16deltalake_derive(i32 %0, i32 %1, ptr align 8 %2, ptr %3) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = alloca [40 x i8], align 8                ; 5 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 5 uses
  %i.g = alloca [40 x i8], align 8                ; 5 uses
  %i.h = alloca [40 x i8], align 8                ; 5 uses
  %i.i = alloca [40 x i8], align 8                ; 5 uses
  %i.j = alloca [4 x i8], align 4                 ; 2 uses
  %i.k = trunc i32 %0 to i1
  br i1 %i.k, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load i64, ptr %i.n, align 8
  %i.p = icmp eq i64 %i.m, %i.o
  br i1 %i.p, label %bb.c, label %_RNvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6Buffer4pushCs4ZaLwAtrTbk_16deltalake_derive.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %2, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store ptr @_RNvNvXs6_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr @_RNvNvXs6_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr nonnull sret([40 x i8]) align 8 %i.h, ptr nonnull byval([40 x i8]) align 8 %i.i, i64 1) #19, !inline_history !43
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjJ0p09o2jmV_10proc_macro6bridge6buffer6BufferECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %2)
          to label %bb.e unwind label %bb.d

common.resume.sink.split:                         ; preds = %bb.d, %bb.o
  %.sink = phi ptr [ %i.a, %bb.o ], [ %i.h, %bb.d ]
end_hunk_0
