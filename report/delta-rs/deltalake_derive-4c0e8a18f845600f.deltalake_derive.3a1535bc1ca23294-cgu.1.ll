inline.NumInlined: 47
inline.NumDeleted: 38
begin_hunk_0_@_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtBK_5token5CommaEE4pushCs4ZaLwAtrTbk_16deltalake_derive:bb.a
  %i.j = add i64 %i.b, 1
  store i64 %i.j, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtB6_6string6StringE8is_emptyCs4ZaLwAtrTbk_16deltalake_derive(ptr readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp eq i64 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden i64 @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecTNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtBJ_5token5CommaEE3lenCs4ZaLwAtrTbk_16deltalake_derive(ptr readonly align 8 captures(none) %0) unnamed_addr #4 {
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
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = and i64 %i.c, 1
  %.not = icmp eq i64 %i.d, 0
  %i.e = lshr i64 %i.c, 1
  %.sroa.0.0 = select i1 %.not, ptr null, ptr %1
  call void @_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbjGuDcEILED_11proc_macro2(ptr sret([24 x i8]) align 8 %0, ptr %.sroa.0.0, i64 %i.e, ptr nonnull align 8 %i.a) #18
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
define hidden void @_RNvXNtCsBGNUbrdbJ0_5quote9to_tokensRNtNtCs7nQiqFc7Txl_3syn2ty8TypePathNtB2_8ToTokens9to_tokensCs4ZaLwAtrTbk_16deltalake_derive(ptr readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #6 {
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
  %common.resume.op.ph = phi { ptr, i32 } [ %i.as, %bb.o ], [ %i.s, %bb.d ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %.sink, i64 40, i1 false)
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.u, %bb.r
  %common.resume.op = phi { ptr, i32 } [ %i.bd, %bb.r ], [ %i.bf, %bb.u ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false)
  %.pre.i = load i64, ptr %i.l, align 8
  br label %_RNvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6Buffer4pushCs4ZaLwAtrTbk_16deltalake_derive.exit

_RNvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6Buffer4pushCs4ZaLwAtrTbk_16deltalake_derive.exit: ; preds = %bb.b, %bb.e
  %i.t = phi i64 [ %i.m, %bb.b ], [ %.pre.i, %bb.e ]
  %i.u = load ptr, ptr %2, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.t
  store i8 1, ptr %i.v, align 1
  %i.w = load i64, ptr %i.l, align 8
  %i.x = add i64 %i.w, 1
  store i64 %i.x, ptr %i.l, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @_RNvXNtNtCsjJ0p09o2jmV_10proc_macro6bridge3rpcuINtB2_6EncodeuE6encodeCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %2, ptr %3)
  br label %bb.t

bb.f:                                             ; preds = %bb.a
  store i32 %1, ptr %i.j, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 13 uses
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = icmp eq i64 %i.z, %i.ab
  br i1 %i.ac, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %2, align 8
  %.sroa.4.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %2, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  store ptr @_RNvNvXs6_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx.i6, align 8
  %.sroa.5.0..sroa_idx.i7 = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr @_RNvNvXs6_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx.i7, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr nonnull sret([40 x i8]) align 8 %i.f, ptr nonnull byval([40 x i8]) align 8 %i.g, i64 1) #19, !inline_history !43
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjJ0p09o2jmV_10proc_macro6bridge6buffer6BufferECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %2)
          to label %bb.h unwind label %bb.u

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false)
  %.pre.i8 = load i64, ptr %i.y, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.af = phi i64 [ %i.z, %bb.f ], [ %.pre.i8, %bb.h ]
  %i.ag = load ptr, ptr %2, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.af
  store i8 0, ptr %i.ah, align 1
  %i.ai = load i64, ptr %i.y, align 8
  %i.aj = add i64 %i.ai, 1                        ; 5 uses
  store i64 %i.aj, ptr %i.y, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %1, ptr %i.e, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ak = load i64, ptr %i.aa, align 8
  %i.al = icmp eq i64 %i.aj, %i.ak
  br i1 %i.al, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %2, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  store ptr @_RNvNvXs6_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr @_RNvNvXs6_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx.i.i, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr nonnull sret([40 x i8]) align 8 %i.c, ptr nonnull byval([40 x i8]) align 8 %i.d, i64 1) #19, !inline_history !44
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjJ0p09o2jmV_10proc_macro6bridge6buffer6BufferECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %2)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  %.pre.i.i = load i64, ptr %i.y, align 8
  br label %bb.q

bb.m:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ao = load i64, ptr %i.aa, align 8
  %i.ap = icmp eq i64 %i.aj, %i.ao
  br i1 %i.ap, label %bb.n, label %_RNvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6Buffer4pushCs4ZaLwAtrTbk_16deltalake_derive.exit7.i

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %2, align 8
  %.sroa.4.0..sroa_idx.i4.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  store ptr @_RNvNvXs6_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx.i4.i, align 8
  %.sroa.5.0..sroa_idx.i5.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr @_RNvNvXs6_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx.i5.i, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr nonnull sret([40 x i8]) align 8 %i.a, ptr nonnull byval([40 x i8]) align 8 %i.b, i64 1) #19, !inline_history !44
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjJ0p09o2jmV_10proc_macro6bridge6buffer6BufferECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %2)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  %.pre.i6.i = load i64, ptr %i.y, align 8
  br label %_RNvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6Buffer4pushCs4ZaLwAtrTbk_16deltalake_derive.exit7.i

_RNvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6Buffer4pushCs4ZaLwAtrTbk_16deltalake_derive.exit7.i: ; preds = %bb.p, %bb.m
  %i.at = phi i64 [ %i.aj, %bb.m ], [ %.pre.i6.i, %bb.p ]
  %i.au = load ptr, ptr %2, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.at
  store i8 1, ptr %i.av, align 1
  %i.aw = load i64, ptr %i.y, align 8
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %i.y, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvXNvNtCsjJ0p09o2jmV_10proc_macro6bridges3_1__INtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB4_6client11TokenStreamEINtNtB4_3rpc6EncodeuE6encodeCs4ZaLwAtrTbk_16deltalake_derive.exit

bb.q:                                             ; preds = %bb.l, %bb.j
  %i.ay = phi i64 [ %i.aj, %bb.j ], [ %.pre.i.i, %bb.l ]
  %i.az = load ptr, ptr %2, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ay
  store i8 0, ptr %i.ba, align 1
  %i.bb = load i64, ptr %i.y, align 8
  %i.bc = add i64 %i.bb, 1
  store i64 %i.bc, ptr %i.y, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_RNvXs1_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6clientNtB5_11TokenStreamINtNtB7_3rpc6EncodeuE6encodeCs4ZaLwAtrTbk_16deltalake_derive(i32 %1, ptr nonnull align 8 %2, ptr %3)
  br label %_RNvXNvNtCsjJ0p09o2jmV_10proc_macro6bridges3_1__INtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB4_6client11TokenStreamEINtNtB4_3rpc6EncodeuE6encodeCs4ZaLwAtrTbk_16deltalake_derive.exit

bb.r:                                             ; preds = %bb.k
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjJ0p09o2jmV_10proc_macro6bridge6client11TokenStreamECsbjGuDcEILED_11proc_macro2(ptr nonnull align 4 %i.e) #20
          to label %common.resume unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #21
  unreachable

_RNvXNvNtCsjJ0p09o2jmV_10proc_macro6bridges3_1__INtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB4_6client11TokenStreamEINtNtB4_3rpc6EncodeuE6encodeCs4ZaLwAtrTbk_16deltalake_derive.exit: ; preds = %bb.q, %_RNvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6Buffer4pushCs4ZaLwAtrTbk_16deltalake_derive.exit7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.t

bb.t:                                             ; preds = %_RNvXNvNtCsjJ0p09o2jmV_10proc_macro6bridges3_1__INtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB4_6client11TokenStreamEINtNtB4_3rpc6EncodeuE6encodeCs4ZaLwAtrTbk_16deltalake_derive.exit, %_RNvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6Buffer4pushCs4ZaLwAtrTbk_16deltalake_derive.exit
  ret void

bb.u:                                             ; preds = %bb.g
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsjJ0p09o2jmV_10proc_macro6bridge6client11TokenStreamEECsbjGuDcEILED_11proc_macro2(ptr nonnull align 4 %i.j) #20
          to label %common.resume unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #21
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNvNtCsjJ0p09o2jmV_10proc_macro6bridges4_1__INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB4_3rpc12PanicMessageEINtB1o_6EncodeuE6encodeCs4ZaLwAtrTbk_16deltalake_derive(ptr readonly align 8 captures(none) %0, ptr align 8 %1, ptr %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = alloca [40 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  %i.f = alloca [24 x i8], align 8                ; 3 uses
  %i.g = load i64, ptr %0, align 8
  %.not = icmp eq i64 %i.g, -9223372036854775805
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp eq i64 %i.i, %i.k
  br i1 %i.l, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %1, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store ptr @_RNvNvXs6_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr @_RNvNvXs6_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr nonnull sret([40 x i8]) align 8 %i.c, ptr nonnull byval([40 x i8]) align 8 %i.d, i64 1) #19, !inline_history !43
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjJ0p09o2jmV_10proc_macro6bridge6buffer6BufferECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %1)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  %.pre.i = load i64, ptr %i.h, align 8
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load i64, ptr %i.q, align 8
  %i.s = icmp eq i64 %i.p, %i.r
  br i1 %i.s, label %bb.f, label %_RNvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6Buffer4pushCs4ZaLwAtrTbk_16deltalake_derive.exit7

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %1, align 8
  %.sroa.4.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  store ptr @_RNvNvXs6_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx.i4, align 8
  %.sroa.5.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr @_RNvNvXs6_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx.i5, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr nonnull sret([40 x i8]) align 8 %i.a, ptr nonnull byval([40 x i8]) align 8 %i.b, i64 1) #19, !inline_history !43
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjJ0p09o2jmV_10proc_macro6bridge6buffer6BufferECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %1)
          to label %bb.h unwind label %bb.g

common.resume:                                    ; preds = %bb.k, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.g ], [ %i.ag, %bb.k ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  br label %common.resume

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  %.pre.i6 = load i64, ptr %i.o, align 8
  br label %_RNvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6Buffer4pushCs4ZaLwAtrTbk_16deltalake_derive.exit7

_RNvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6Buffer4pushCs4ZaLwAtrTbk_16deltalake_derive.exit7: ; preds = %bb.e, %bb.h
  %i.w = phi i64 [ %i.p, %bb.e ], [ %.pre.i6, %bb.h ]
  %i.x = load ptr, ptr %1, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.w
  store i8 0, ptr %i.y, align 1
  %i.z = load i64, ptr %i.o, align 8
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.o, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvXNtNtCsjJ0p09o2jmV_10proc_macro6bridge3rpcuINtB2_6EncodeuE6encodeCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %1, ptr %2)
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %_RNvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6Buffer4pushCs4ZaLwAtrTbk_16deltalake_derive.exit7
  ret void

bb.j:                                             ; preds = %bb.d, %bb.b
  %i.ab = phi i64 [ %i.i, %bb.b ], [ %.pre.i, %bb.d ]
  %i.ac = load ptr, ptr %1, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ab
  store i8 1, ptr %i.ad, align 1
  %i.ae = load i64, ptr %i.h, align 8
  %i.af = add i64 %i.ae, 1
  store i64 %i.af, ptr %i.h, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @_RNvXsh_NtNtCsjJ0p09o2jmV_10proc_macro6bridge3rpcNtB5_12PanicMessageINtB5_6EncodeuE6encodeCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.e, ptr nonnull align 8 %1, ptr %2)
  br label %bb.i

bb.k:                                             ; preds = %bb.c
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjJ0p09o2jmV_10proc_macro6bridge3rpc12PanicMessageECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.f) #20
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #21
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB8_8IntoIterppENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtBc_6string6StringNtNtBc_5alloc6GlobalEB12_4dropCs4ZaLwAtrTbk_16deltalake_derive(ptr readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i64, ptr %i.d, align 8
  store i64 %i.e, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.f, align 8
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtBL_6string6StringEECsl1mHGn7pXMx_12convert_case(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB8_8IntoIterppENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtBc_5alloc6GlobalEB12_4dropCs4ZaLwAtrTbk_16deltalake_derive(ptr readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i64, ptr %i.d, align 8
  store i64 %i.e, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.f, align 8
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCs7nQiqFc7Txl_3syn4attr4MetaEECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB8_8IntoIterppENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropINtB2_9DropGuardTNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtB25_5token5CommaENtNtBc_5alloc6GlobalEB12_4dropCs4ZaLwAtrTbk_16deltalake_derive(ptr readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i64, ptr %i.d, align 8
end_hunk_0
begin_hunk_1_@_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs4ZaLwAtrTbk_16deltalake_derive:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtCsbjGuDcEILED_11proc_macro211TokenStreamECs4ZaLwAtrTbk_16deltalake_derive(ptr align 8 %i.b, i64 %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs7nQiqFc7Txl_3syn4attr4MetaENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs4ZaLwAtrTbk_16deltalake_derive(ptr readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtNtCs7nQiqFc7Txl_3syn4attr4MetaECs4ZaLwAtrTbk_16deltalake_derive(ptr align 8 %i.b, i64 %i.d)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs4ZaLwAtrTbk_16deltalake_derive(ptr readnone align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtBK_5token5CommaEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs4ZaLwAtrTbk_16deltalake_derive(ptr readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSTNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtBM_5token5CommaEECs4ZaLwAtrTbk_16deltalake_derive(ptr align 8 %i.b, i64 %i.d)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtCs7nQiqFc7Txl_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try11from_outputCs4ZaLwAtrTbk_16deltalake_derive(ptr writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr readonly align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtCs7nQiqFc7Txl_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs4ZaLwAtrTbk_16deltalake_derive(ptr writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr readonly align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %. = and i64 %i.a, 1
  store i64 %., ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtCs7nQiqFc7Txl_3syn10punctuated10PunctuatedNtNtBP_4attr4MetaNtNtBP_5token5CommaENtNtBP_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs4ZaLwAtrTbk_16deltalake_derive(ptr writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr readonly align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtCs4ZaLwAtrTbk_16deltalake_derive15FieldAttributesNtNtCs7nQiqFc7Txl_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBM_(ptr writeonly sret([80 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr readonly align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs7nQiqFc7Txl_3syn6derive11DeriveInputNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs4ZaLwAtrTbk_16deltalake_derive(ptr writeonly sret([240 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr readonly align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = icmp eq i64 %i.a, 5
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i64 5, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(240) %1, i64 240, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultRNtCsbjGuDcEILED_11proc_macro25IdentNtNtCs7nQiqFc7Txl_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs4ZaLwAtrTbk_16deltalake_derive(ptr writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 16)) %0, ptr readonly align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %.not = icmp eq i64 %i.a, -9223372036854775808
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultRNtNtCs7nQiqFc7Txl_3syn4attr13MetaNameValueNtNtBP_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs4ZaLwAtrTbk_16deltalake_derive(ptr writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 16)) %0, ptr readonly align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %.not = icmp eq i64 %i.a, -9223372036854775808
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtCs7nQiqFc7Txl_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1Y_EE13from_residualCs4ZaLwAtrTbk_16deltalake_derive(ptr writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr readonly align 8 captures(none) %1, ptr readnone align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtCs7nQiqFc7Txl_3syn10punctuated10PunctuatedNtNtBP_4attr4MetaNtNtBP_5token5CommaENtNtBP_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB26_EE13from_residualCs4ZaLwAtrTbk_16deltalake_derive(ptr writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr readonly align 8 captures(none) %1, ptr readnone align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 -9223372036854775808, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtCs4ZaLwAtrTbk_16deltalake_derive15FieldAttributesNtNtCs7nQiqFc7Txl_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1z_EE13from_residualBM_(ptr writeonly sret([80 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr readonly align 8 captures(none) %1, ptr readnone align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 -9223372036854775808, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXsz_NtCsbjGuDcEILED_11proc_macro23impNtB5_11TokenStreamNtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs4ZaLwAtrTbk_16deltalake_derive(ptr writeonly sret([32 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %.sroa.0 = alloca [24 x i8], align 8            ; 2 uses
  %i.c = load i64, ptr %1, align 8
  %i.d = icmp eq i64 %i.c, -9223372036854775808
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = tail call ptr @_RNvXs1_NtCsbjGuDcEILED_11proc_macro25rcvecINtB5_5RcVecNtB7_9TokenTreeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneB7_(ptr nonnull align 8 %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = tail call i32 @_RNvXsU_CsjJ0p09o2jmV_10proc_macroNtB5_11TokenStreamNtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 4 %i.h) #18, !noalias !48 ; 2 uses
  store i32 %i.i, ptr %i.b, align 4, !noalias !48
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtCsjJ0p09o2jmV_10proc_macro9TokenTreeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsbjGuDcEILED_11proc_macro2(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %1)
          to label %_RNvXsA_NtCsbjGuDcEILED_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs4ZaLwAtrTbk_16deltalake_derive.exit unwind label %bb.d, !noalias !48

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjJ0p09o2jmV_10proc_macro11TokenStreamECsbjGuDcEILED_11proc_macro2(ptr nonnull align 4 %i.b) #20
          to label %bb.f unwind label %bb.e, !noalias !48

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #21, !noalias !48
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.j

_RNvXsA_NtCsbjGuDcEILED_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs4ZaLwAtrTbk_16deltalake_derive.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i64 24, i1 false)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.i, ptr %.sroa.2.0..sroa_idx, align 8
  br label %bb.g

bb.g:                                             ; preds = %_RNvXsA_NtCsbjGuDcEILED_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs4ZaLwAtrTbk_16deltalake_derive.exit, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #10

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXsr_NtNtCsbvkFyIu7lgC_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_7Pattern13into_searcherCs4ZaLwAtrTbk_16deltalake_derive(ptr sret([40 x i8]) align 8, ptr, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXso_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs4ZaLwAtrTbk_16deltalake_derive(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXsp_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs4ZaLwAtrTbk_16deltalake_derive(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @_RNvXst_NtNtCsbvkFyIu7lgC_4core3str7patternReNtB5_7Pattern15is_contained_inCs4ZaLwAtrTbk_16deltalake_derive(ptr, i64, ptr, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCNCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys00B5_(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #11

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNvXs6_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from7reserve(ptr sret([40 x i8]) align 8, ptr byval([40 x i8]) align 8, i64) unnamed_addr #10

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNvXs6_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from4drop(ptr byval([40 x i8]) align 8) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjJ0p09o2jmV_10proc_macro6bridge6buffer6BufferECs4ZaLwAtrTbk_16deltalake_derive(ptr align 8) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_10filter_map9FilterMapINtNtNtB6_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1W_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2u_(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_10filter_map9FilterMapINtNtNtB6_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1W_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2u_(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #12

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr align 8) unnamed_addr #6

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_10filter_map9FilterMapINtNtNtB6_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1W_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2u_(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_10filter_map9FilterMapINtNtNtB6_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1W_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2u_(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1I_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2g_(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1I_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2g_(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare align 8 ptr @_RNvXst_NtCs7nQiqFc7Txl_3syn10punctuatedINtB5_4IterNtNtB7_4data5FieldENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB7_(ptr align 8) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXst_NtCs7nQiqFc7Txl_3syn10punctuatedINtB5_4IterNtNtB7_4data5FieldENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator9size_hintCs4ZaLwAtrTbk_16deltalake_derive(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7nQiqFc7Txl_3syn10punctuated4IterNtNtBL_4data5FieldEECs4ZaLwAtrTbk_16deltalake_derive(ptr align 8) unnamed_addr #6

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtB6_8adapters12GenericShuntINtNtBO_10filter_map9FilterMapINtNtNtB8_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0EINtNtB8_6result6ResultNtNtB8_7convert10InfallibleNtNtB2f_5error5ErrorEENtB2_12IntoIterator9into_iterB2N_(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtB6_8adapters12GenericShuntINtNtBO_10filter_map9FilterMapINtNtNtB8_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0EINtNtB8_6result6ResultNtNtB8_7convert10InfallibleNtNtB2f_5error5ErrorEENtB2_12IntoIterator9into_iterB2N_(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtB6_8adapters12GenericShuntINtNtBO_3map3MapINtNtNtB8_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys0EINtNtB8_6result6ResultNtNtB8_7convert10InfallibleNtNtB21_5error5ErrorEENtB2_12IntoIterator9into_iterB2z_(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtCs7nQiqFc7Txl_3syn10punctuated4IterNtNtBQ_4data5FieldENtB2_12IntoIterator9into_iterCs4ZaLwAtrTbk_16deltalake_derive(ptr, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters10filter_map9FilterMapINtNtNtB8_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0ENtB2_12IntoIterator9into_iterB2t_(ptr, ptr) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_10filter_map9FilterMapINtNtNtB6_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0ENtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1P_5error5ErrorENCINvXso_B42_IB40_INtNtCs6Po7BT7Nknu_5alloc3vec3VecB3j_EB4M_EINtNtNtB4_6traits7collect12FromIteratorIB40_B3j_B4M_EE9from_iterBQ_E0B5p_EB2n_(ptr sret([32 x i8]) align 8, ptr, ptr) unnamed_addr #6

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters10filter_map9FilterMapINtNtNtB8_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0ENtB2_12IntoIterator9into_iterB2t_(ptr, ptr) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_10filter_map9FilterMapINtNtNtB6_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0ENtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1P_5error5ErrorENCINvXso_B43_IB41_INtNtCs6Po7BT7Nknu_5alloc3vec3VecB3k_EB4N_EINtNtNtB4_6traits7collect12FromIteratorIB41_B3k_B4N_EE9from_iterBQ_E0B5q_EB2n_(ptr sret([32 x i8]) align 8, ptr, ptr) unnamed_addr #6

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtB8_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys0ENtB2_12IntoIterator9into_iterB2f_(ptr, ptr) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys0ENtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1B_5error5ErrorENCINvXso_B3M_IB3K_INtNtCs6Po7BT7Nknu_5alloc3vec3VecB33_EB4w_EINtNtNtB4_6traits7collect12FromIteratorIB3K_B33_B4w_EE9from_iterBQ_E0B59_EB29_(ptr sret([32 x i8]) align 8, ptr, ptr) unnamed_addr #6

; Function Attrs: inlinehint nonlazybind uwtable
declare { i64, ptr } @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbjGuDcEILED_11proc_macro2(i64, i64, i64) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare hidden void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtCsbjGuDcEILED_11proc_macro211TokenStreamE8grow_oneCs4ZaLwAtrTbk_16deltalake_derive(ptr align 8) unnamed_addr #14

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCs2pqxYH9ZEk8_3std(ptr align 8) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsbjGuDcEILED_11proc_macro2(ptr align 8) unnamed_addr #6

; Function Attrs: noinline nonlazybind uwtable
declare hidden void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs7nQiqFc7Txl_3syn4attr4MetaE8grow_oneCs4ZaLwAtrTbk_16deltalake_derive(ptr align 8) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4attr4MetaEBK_(ptr align 8) unnamed_addr #6

; Function Attrs: noinline nonlazybind uwtable
declare hidden void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtBR_5token5CommaEE8grow_oneCs4ZaLwAtrTbk_16deltalake_derive(ptr align 8) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtBL_5token5CommaEECs4ZaLwAtrTbk_16deltalake_derive(ptr align 8) unnamed_addr #6

; Function Attrs: cold nonlazybind uwtable
declare void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3mivhH47tD_9addr2line(ptr align 8, i64, i64, i64, i64) unnamed_addr #15

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbjGuDcEILED_11proc_macro2(ptr sret([24 x i8]) align 8, ptr, i64, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr14memchr_aligned(i8, ptr, i64) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs5_NtNtCs7nQiqFc7Txl_3syn2ty8printingNtB7_8TypePathNtNtCsBGNUbrdbJ0_5quote9to_tokens8ToTokens9to_tokens(ptr align 8, ptr align 8) unnamed_addr #6

; Function Attrs: inlinehint nonlazybind uwtable
declare i64 @_RNvYjNtNtCsbvkFyIu7lgC_4core3cmp3Ord3maxCsbjGuDcEILED_11proc_macro2(i64, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamEECs4ZaLwAtrTbk_16deltalake_derive(ptr align 8) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRNtNtCs7nQiqFc7Txl_3syn4data5FieldEECs4ZaLwAtrTbk_16deltalake_derive(ptr align 8) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6clientNtB5_11TokenStreamINtNtB7_3rpc6EncodeuE6encodeCs4ZaLwAtrTbk_16deltalake_derive(i32, ptr align 8, ptr) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjJ0p09o2jmV_10proc_macro6bridge6client11TokenStreamECsbjGuDcEILED_11proc_macro2(ptr align 4) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs8_NtNtCsjJ0p09o2jmV_10proc_macro6bridge3rpcReINtB5_6EncodeuE6encodeCs4ZaLwAtrTbk_16deltalake_derive(ptr, i64, ptr align 8, ptr) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsjJ0p09o2jmV_10proc_macro6bridge6client11TokenStreamEECsbjGuDcEILED_11proc_macro2(ptr align 4) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsjJ0p09o2jmV_10proc_macro6bridge3rpcuINtB2_6EncodeuE6encodeCs4ZaLwAtrTbk_16deltalake_derive(ptr align 8, ptr) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsh_NtNtCsjJ0p09o2jmV_10proc_macro6bridge3rpcNtB5_12PanicMessageINtB5_6EncodeuE6encodeCs4ZaLwAtrTbk_16deltalake_derive(ptr align 8, ptr align 8, ptr) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjJ0p09o2jmV_10proc_macro6bridge3rpc12PanicMessageECs4ZaLwAtrTbk_16deltalake_derive(ptr align 8) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtBL_6string6StringEECsl1mHGn7pXMx_12convert_case(ptr align 8) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCs7nQiqFc7Txl_3syn4attr4MetaEECs4ZaLwAtrTbk_16deltalake_derive(ptr align 8) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecTNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtB1p_5token5CommaEEECs4ZaLwAtrTbk_16deltalake_derive(ptr align 8) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden i32 @_RNvXs7_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6clientNtB5_4SpanINtNtB7_3rpc6DecodeuE6decodeCs4ZaLwAtrTbk_16deltalake_derive(ptr align 8, ptr) unnamed_addr #6

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvMNtCsbvkFyIu7lgC_4core5sliceSNtCsbjGuDcEILED_11proc_macro211TokenStream4iterCs4ZaLwAtrTbk_16deltalake_derive(ptr align 8, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden i32 @_RNvXs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6clientNtB5_11TokenStreamINtNtB7_3rpc6DecodeuE6decodeCs4ZaLwAtrTbk_16deltalake_derive(ptr align 8, ptr) unnamed_addr #6

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i32 @_RNvXsU_CsjJ0p09o2jmV_10proc_macroNtB5_11TokenStreamNtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs4ZaLwAtrTbk_16deltalake_derive(ptr align 4) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtCsjJ0p09o2jmV_10proc_macro9TokenTreeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsbjGuDcEILED_11proc_macro2(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjJ0p09o2jmV_10proc_macro11TokenStreamECsbjGuDcEILED_11proc_macro2(ptr align 4) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtNtCs6Po7BT7Nknu_5alloc6string6StringECsl1mHGn7pXMx_12convert_case(ptr align 8, i64) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtBP_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtBT_6string6StringNtNtBT_5alloc6GlobalEECs4ZaLwAtrTbk_16deltalake_derive(ptr align 8) unnamed_addr #6
end_hunk_1
