inline.NumInlined: 4
inline.NumDeleted: 4
begin_hunk_0_@_RNCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0B3_:bb.a
  %i.s = alloca [24 x i8], align 8                ; 2 uses
  %i.t = alloca [32 x i8], align 8                ; 2 uses
  %i.u = alloca [32 x i8], align 8                ; 4 uses
  %i.v = alloca [8 x i8], align 8                 ; 3 uses
  %i.w = alloca [24 x i8], align 8                ; 8 uses
  %i.x = alloca [40 x i8], align 8                ; 5 uses
  %i.y = alloca [32 x i8], align 8                ; 5 uses
end_hunk_0
begin_hunk_1_@_RNCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0B3_:bb.a
  %i.ba = load i8, ptr %i.az, align 8
  %i.bb = trunc nuw i8 %i.ba to i1
  %i.bc = invoke align 8 ptr @_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninitCs4ZaLwAtrTbk_16deltalake_derive(i64 8, i64 32) #8
          to label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxANtCsbjGuDcEILED_11proc_macro211TokenStreamj1_E10new_uninitCs4ZaLwAtrTbk_16deltalake_derive.exit unwind label %bb.q

bb.p:                                             ; preds = %bb.w, %bb.r, %bb.q
  %.sroa.011.2 = phi i1 [ false, %bb.w ], [ %.sroa.011.3, %bb.q ], [ true, %bb.r ]
end_hunk_1
begin_hunk_2_@_RNCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0B3_:bb.a
          to label %bb.r unwind label %bb.ba

bb.v:                                             ; preds = %bb.t
  %3 = load ptr, ptr %i.v, align 8                ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 32, i1 false)
  store i64 1, ptr %i.w, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %3, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 1, ptr %i.bh, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
end_hunk_2
