Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx.rustworkx.eb4f31e2585f1285-cgu.0?download=true
inline.NumInlined: 67643
inline.NumDeleted: 27589
loop-unroll.NumCompletelyUnrolled: 143
loop-unroll.NumRuntimeUnrolled: 261
loop-unroll.NumUnrolled: 405
begin_hunk_0_@_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTjNtNtCskcxRuJ53GpR_9rustworkx9iterators11PathMappingEEBH_:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26801)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26802)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26803)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !26804, !noundef !67 ; 4 uses
  %i.c = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.c, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !26804, !nonnull !67, !noundef !67
  %i.e = shl i64 %.val1.i.i.i, 3
  %i.f = icmp slt i64 %.val1.i.i.i, 2305843009213693950
  tail call void @llvm.assume(i1 %i.f)
  %i.g = and i64 %i.e, -16                        ; 2 uses
  %i.h = add i64 %i.g, 16                         ; 2 uses
  %i.i = add nsw i64 %.val1.i.i.i, 17
  %i.j = add i64 %i.i, %i.h                       ; 3 uses
  %i.k = icmp uge i64 %i.j, %i.h
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp ult i64 %i.j, 9223372036854775793
  tail call void @llvm.assume(i1 %i.l)
  %i.m = sub nuw nsw i64 -16, %i.g
  %i.n = getelementptr inbounds i8, ptr %.val.i.i.i, i64 %i.m
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !26804
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26805)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !26806, !nonnull !67, !noundef !67 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i.i = load i64, ptr %i.p, align 8, !alias.scope !26806, !noundef !67 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26807)
  %i.q = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.q, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtCsfztDQZkQYYe_8indexmap6BucketjIBw_jEEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketjINtNtCs87CvPiUlf0m_5alloc3vec3VecjEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %.sroa.0.012.i.i.i.i.i.i = phi i64 [ %i.s, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketjINtNtCs87CvPiUlf0m_5alloc3vec3VecjEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i ] ; 2 uses
  %i.r = getelementptr inbounds nuw [40 x i8], ptr %.val.i.i.i.i, i64 %.sroa.0.012.i.i.i.i.i.i ; 2 uses
  %i.s = add nuw nsw i64 %.sroa.0.012.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !26808, !noalias !26806 ; 2 uses
  %i.t = icmp eq i64 %.val8.i.i.i.i.i.i, 0
  br i1 %i.t, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketjINtNtCs87CvPiUlf0m_5alloc3vec3VecjEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.u = getelementptr i8, ptr %i.r, i64 8
  %.val9.i.i.i.i.i.i = load ptr, ptr %i.u, align 8, !alias.scope !26807, !noalias !26806, !nonnull !67, !noundef !67
  %i.v = shl nuw i64 %.val8.i.i.i.i.i.i, 3
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !26809
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketjINtNtCs87CvPiUlf0m_5alloc3vec3VecjEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketjINtNtCs87CvPiUlf0m_5alloc3vec3VecjEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.w = icmp eq i64 %i.s, %.val1.i.i.i.i
  br i1 %i.w, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtCsfztDQZkQYYe_8indexmap6BucketjIBw_jEEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtCsfztDQZkQYYe_8indexmap6BucketjIBw_jEEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketjINtNtCs87CvPiUlf0m_5alloc3vec3VecjEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %.val2.i.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !26806 ; 2 uses
  %i.x = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.x, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCskcxRuJ53GpR_9rustworkx9iterators11PathMappingEBF_.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtCsfztDQZkQYYe_8indexmap6BucketjIBw_jEEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %i.y = mul nuw i64 %.val2.i.i.i.i, 40
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !26806
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCskcxRuJ53GpR_9rustworkx9iterators11PathMappingEBF_.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCskcxRuJ53GpR_9rustworkx9iterators11PathMappingEBF_.exit: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtCsfztDQZkQYYe_8indexmap6BucketjIBw_jEEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEBH_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26816)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26817)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26818)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !26819, !noundef !67 ; 4 uses
  %i.c = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.c, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !26819, !nonnull !67, !noundef !67
  %i.e = shl i64 %.val1.i.i.i, 3
  %i.f = icmp slt i64 %.val1.i.i.i, 2305843009213693950
  tail call void @llvm.assume(i1 %i.f)
  %i.g = and i64 %i.e, -16                        ; 2 uses
  %i.h = add i64 %i.g, 16                         ; 2 uses
  %i.i = add nsw i64 %.val1.i.i.i, 17
  %i.j = add i64 %i.i, %i.h                       ; 3 uses
  %i.k = icmp uge i64 %i.j, %i.h
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp ult i64 %i.j, 9223372036854775793
  tail call void @llvm.assume(i1 %i.l)
  %i.m = sub nuw nsw i64 -16, %i.g
  %i.n = getelementptr inbounds i8, ptr %.val.i.i.i, i64 %i.m
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !26819
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i, %bb.a
  %.val2.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !26819 ; 2 uses
  %i.o = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.o, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEBF_.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !26819, !nonnull !67, !noundef !67
  %i.q = mul nuw i64 %.val2.i.i.i, 24
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !26819
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEBF_.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEBF_.exit: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTjTjjINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx(ptr %.24.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.24.val) ]
  %i.a = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i = load i64, ptr %i.a, align 8, !noundef !67
  %i.b = icmp sgt i64 %.val.i.i.i.i.i, 0
  br i1 %i.b, label %bb.c, label %bb.b, !prof !125

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.24.val)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTjjINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBJ_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_Py_DecRef(ptr noundef nonnull %.24.val) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTjjINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBJ_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTjjINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBJ_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTjjINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBJ_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx(ptr %.16.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.16.val) ]
  %i.a = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i = load i64, ptr %i.a, align 8, !noundef !67
  %i.b = icmp sgt i64 %.val.i.i.i.i, 0
  br i1 %i.b, label %bb.c, label %bb.b, !prof !125

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.16.val)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_Py_DecRef(ptr noundef nonnull %.16.val) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i8 0, 3) i8 @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort10merge_sortNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBN_INtB4_16ParallelSliceMutBN_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2y_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtBP_5GraphuuNtBR_10UndirectedENCINvB3z_40greedy_edge_color_with_coloring_strategyRINtNtBP_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6U_5types3any5PyAnyEB6P_B58_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6U_3err5PyErrEs1_0B92_E0E0EB85_(ptr noalias nofree noundef nonnull align 4 captures(address) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noundef %2, ptr nofree readonly captures(none) %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i64 0, ptr %i.d, align 8
  %.not81 = icmp eq i64 %1, 0
  br i1 %.not81, label %.loopexit22, label %.lr.ph80

.lr.ph80:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = xor i64 %i.a, -1
  %i.g = add i64 %i.a, 4
  br label %bb.b

.loopexit22:                                      ; preds = %._crit_edge, %bb.a, %bb.g
  %.sroa.0.0 = phi i8 [ %., %bb.g ], [ 2, %bb.a ], [ 2, %._crit_edge ]
  %.val30 = load i64, ptr %i.b, align 8           ; 2 uses
  %i.h = icmp eq i64 %.val30, 0
  br i1 %i.h, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i: ; preds = %.loopexit22
  %.val31 = load ptr, ptr %i.c, align 8, !nonnull !67, !noundef !67
  %i.i = shl nuw i64 %.val30, 4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val31, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %.loopexit22, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i8 %.sroa.0.0

bb.b:                                             ; preds = %.lr.ph80, %._crit_edge
  %i.j = phi ptr [ inttoptr (i64 8 to ptr), %.lr.ph80 ], [ %i.be, %._crit_edge ]
  %i.k = phi i64 [ 0, %.lr.ph80 ], [ %i.ce, %._crit_edge ] ; 3 uses
  %.sroa.02.078 = phi i64 [ 0, %.lr.ph80 ], [ %.sroa.0.0.i37, %._crit_edge ] ; 10 uses
  %i.l = sub nuw nsw i64 %1, %.sroa.02.078        ; 9 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.02.078 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26892)
  %i.n = icmp samesign ult i64 %i.l, 2
  br i1 %i.n, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val17.i = load i32, ptr %i.o, align 4, !alias.scope !26892 ; 3 uses
  %.val18.i = load i32, ptr %i.m, align 4, !alias.scope !26892
  %i.p = tail call fastcc noundef zeroext i1 @_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_(ptr nonnull readonly %.0.val, i32 %.val17.i, i32 %.val18.i) #64, !noalias !26892
  %.not11.i = icmp eq i64 %i.l, 2                 ; 2 uses
  br i1 %i.p, label %.preheader.i, label %.preheader1.i

.preheader1.i:                                    ; preds = %bb.c
  br i1 %.not11.i, label %.loopexit, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.c
  br i1 %.not11.i, label %.loopexit, label %.lr.ph7.i

.lr.ph.i:                                         ; preds = %.preheader1.i, %bb.d
  %.val15.i = phi i32 [ %.val14.i, %bb.d ], [ %.val17.i, %.preheader1.i ]
  %.sroa.01.03.i = phi i64 [ %i.s, %bb.d ], [ 2, %.preheader1.i ] ; 4 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.01.03.i
  %3 = add nsw i64 %.sroa.01.03.i, -1
  %4 = icmp samesign ult i64 %3, %i.l
  tail call void @llvm.assume(i1 %4)
  %.val14.i = load i32, ptr %i.q, align 4, !alias.scope !26892 ; 2 uses
  %i.r = tail call fastcc noundef zeroext i1 @_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_(ptr nonnull readonly %.0.val, i32 %.val14.i, i32 %.val15.i) #64, !noalias !26892
  br i1 %i.r, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.s = add nuw nsw i64 %.sroa.01.03.i, 1        ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.s, %i.l
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph7.i:                                        ; preds = %.preheader.i, %bb.e
  %.val12.i = phi i32 [ %.val11.i, %bb.e ], [ %.val17.i, %.preheader.i ]
  %.sroa.01.16.i = phi i64 [ %i.v, %bb.e ], [ 2, %.preheader.i ] ; 4 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.01.16.i
  %5 = add nsw i64 %.sroa.01.16.i, -1
  %6 = icmp samesign ult i64 %5, %i.l
  tail call void @llvm.assume(i1 %6)
  %.val11.i = load i32, ptr %i.t, align 4, !alias.scope !26892 ; 2 uses
  %i.u = tail call fastcc noundef zeroext i1 @_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_(ptr nonnull readonly %.0.val, i32 %.val11.i, i32 %.val12.i) #64, !noalias !26892
  br i1 %i.u, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %.lr.ph7.i
  %i.v = add nuw nsw i64 %.sroa.01.16.i, 1        ; 2 uses
  %exitcond14.not.i = icmp eq i64 %i.v, %i.l
  br i1 %exitcond14.not.i, label %.loopexit, label %.lr.ph7.i

.loopexit23:                                      ; preds = %bb.k, %bb.n
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp:                               ; preds = %.invoke229, %.invoke, %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp, %.loopexit23
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit23 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.val = load i64, ptr %i.b, align 8             ; 2 uses
  %i.w = icmp eq i64 %.val, 0
  br i1 %i.w, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit36, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i35

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i35: ; preds = %bb.f
  %.val29 = load ptr, ptr %i.c, align 8, !nonnull !67, !noundef !67
  %i.x = shl nuw i64 %.val, 4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val29, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) 8) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit36

.loopexit:                                        ; preds = %bb.d, %.lr.ph.i, %bb.e, %.lr.ph7.i, %.preheader.i, %.preheader1.i, %bb.b
  %.sroa.4.0.i = phi i1 [ false, %bb.b ], [ true, %.preheader.i ], [ true, %bb.e ], [ false, %.preheader1.i ], [ true, %.lr.ph7.i ], [ false, %.lr.ph.i ], [ false, %bb.d ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %i.l, %bb.b ], [ 2, %.preheader.i ], [ %i.l, %bb.e ], [ 2, %.preheader1.i ], [ %.sroa.01.16.i, %.lr.ph7.i ], [ %i.l, %bb.d ], [ %.sroa.01.03.i, %.lr.ph.i ] ; 7 uses
  %i.y = add i64 %.sroa.0.0.i, %.sroa.02.078      ; 8 uses
  %i.z = icmp eq i64 %.sroa.02.078, 0
  %i.aa = icmp eq i64 %i.y, %1
  %or.cond = and i1 %i.z, %i.aa
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.loopexit
  %. = zext i1 %.sroa.4.0.i to i8
  br label %.loopexit22

bb.h:                                             ; preds = %.loopexit
  br i1 %.sroa.4.0.i, label %bb.l, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit

_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i, %middle.block, %bb.m, %bb.h
  %i.ab = icmp uge i64 %i.y, %.sroa.02.078
  %i.ac = icmp ule i64 %i.y, %1
  %or.cond.i = and i1 %i.ab, %i.ac
  br i1 %or.cond.i, label %bb.j, label %bb.i, !prof !125

bb.i:                                             ; preds = %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @586, i64 noundef 44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @587) #60
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit
  %i.ad = icmp samesign ult i64 %.sroa.0.0.i, 10
  %i.ae = icmp samesign ult i64 %i.y, %1
  %or.cond3.i = and i1 %i.ad, %i.ae
  br i1 %or.cond3.i, label %bb.k, label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2I_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtBZ_5GraphuuNtB11_10UndirectedENCINvB3J_40greedy_edge_color_with_coloring_strategyRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB75_5types3any5PyAnyEB70_B5i_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB75_3err5PyErrEs1_0B9d_E0E0EB8g_.exit

bb.k:                                             ; preds = %bb.j
  %i.af = add nuw nsw i64 %.sroa.02.078, 10
  %i.ag = tail call i64 @llvm.umin.i64(i64 %i.af, i64 range(i64 0, 2305843009213693952) %1) ; 2 uses
  %i.ah = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 1)
  %i.ai = sub i64 %i.ag, %.sroa.02.078            ; 2 uses
  invoke fastcc void @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort25insertion_sort_shift_leftNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSB12_INtB4_16ParallelSliceMutB12_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2P_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB14_5GraphuuNtB16_10UndirectedENCINvB3Q_40greedy_edge_color_with_coloring_strategyRINtNtB14_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7e_5types3any5PyAnyEB79_B5q_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB7e_3err5PyErrEs1_0B9m_E0E0EB8p_(ptr noalias nofree noundef nonnull align 4 %i.m, i64 noundef %i.ai, i64 noundef %i.ah, ptr readonly %.0.val) #62
          to label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2I_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtBZ_5GraphuuNtB11_10UndirectedENCINvB3J_40greedy_edge_color_with_coloring_strategyRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB75_5types3any5PyAnyEB70_B5i_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB75_3err5PyErrEs1_0B9d_E0E0EB8g_.exit unwind label %.loopexit23

bb.l:                                             ; preds = %bb.h
  %i.aj = icmp ult i64 %i.y, %.sroa.02.078
  %.not = icmp ugt i64 %i.y, %1
  %or.cond27 = or i1 %i.aj, %.not
  br i1 %or.cond27, label %.invoke, label %bb.m, !prof !90

.invoke:                                          ; preds = %bb.l, %bb.x
  %i.ak = phi i64 [ %i.ck, %bb.x ], [ %.sroa.02.078, %bb.l ]
  %i.al = phi i64 [ %i.ct, %bb.x ], [ %i.y, %bb.l ]
  %i.am = phi ptr [ @577, %bb.x ], [ @578, %bb.l ]
  invoke void @_RNvNtNtCslwFuT2d6ECx_4core5slice5index16slice_index_fail(i64 noundef %i.ak, i64 noundef %i.al, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.am) #61
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.an = lshr i64 %.sroa.0.0.i, 1                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26893)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26894)
  %.not.i = icmp eq i64 %i.an, 0
  br i1 %.not.i, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i: ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0.0.i ; 2 uses
  %min.iters.check = icmp samesign ult i64 %.sroa.0.0.i, 16
  br i1 %min.iters.check, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i
  %n.vec = and i64 %i.an, 4611686018427387896     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ap = xor i64 %index, -1
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index ; 3 uses
  %i.ar = getelementptr [4 x i8], ptr %i.ao, i64 %i.ap ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.aq, align 4, !alias.scope !26893, !noalias !26894
  %wide.load276 = load <4 x i32>, ptr %i.as, align 4, !alias.scope !26893, !noalias !26894
  %i.at = getelementptr i8, ptr %i.ar, i64 -12    ; 2 uses
  %i.au = getelementptr i8, ptr %i.ar, i64 -28    ; 2 uses
  %wide.load277 = load <4 x i32>, ptr %i.at, align 4, !alias.scope !26894, !noalias !26893
  %wide.load278 = load <4 x i32>, ptr %i.au, align 4, !alias.scope !26894, !noalias !26893
  %reverse = shufflevector <4 x i32> %wide.load277, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse279 = shufflevector <4 x i32> %wide.load278, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %i.aq, align 4, !alias.scope !26893, !noalias !26894
  store <4 x i32> %reverse279, ptr %i.as, align 4, !alias.scope !26893, !noalias !26894
  %reverse280 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse281 = shufflevector <4 x i32> %wide.load276, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse280, ptr %i.at, align 4, !alias.scope !26894, !noalias !26893
  store <4 x i32> %reverse281, ptr %i.au, align 4, !alias.scope !26894, !noalias !26893
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !26825

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i, %middle.block
  %.sroa.0.016.i.ph = phi i64 [ 0, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i
  %.sroa.0.016.i = phi i64 [ %i.bb, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i ], [ %.sroa.0.016.i.ph, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader ] ; 3 uses
  %i.aw = xor i64 %.sroa.0.016.i, -1
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0.016.i ; 2 uses
  %i.ay = getelementptr [4 x i8], ptr %i.ao, i64 %i.aw ; 2 uses
  %i.az = load i32, ptr %i.ax, align 4, !alias.scope !26893, !noalias !26894, !noundef !67
  %i.ba = load i32, ptr %i.ay, align 4, !alias.scope !26894, !noalias !26893
  store i32 %i.ba, ptr %i.ax, align 4, !alias.scope !26893, !noalias !26894
  store i32 %i.az, ptr %i.ay, align 4, !alias.scope !26894, !noalias !26893
  %i.bb = add nuw nsw i64 %.sroa.0.016.i, 1       ; 2 uses
  %exitcond.not.i39 = icmp eq i64 %i.bb, %i.an
  br i1 %exitcond.not.i39, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i, !llvm.loop !26826

_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2I_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtBZ_5GraphuuNtB11_10UndirectedENCINvB3J_40greedy_edge_color_with_coloring_strategyRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB75_5types3any5PyAnyEB70_B5i_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB75_3err5PyErrEs1_0B9d_E0E0EB8g_.exit: ; preds = %bb.j, %bb.k
  %.pre-phi = phi i64 [ %i.ai, %bb.k ], [ %.sroa.0.0.i, %bb.j ]
  %.sroa.0.0.i37 = phi i64 [ %i.ag, %bb.k ], [ %i.y, %bb.j ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26895)
  %i.bc = load i64, ptr %i.b, align 8, !range !70, !alias.scope !26895, !noundef !67
  %i.bd = icmp eq i64 %i.k, %i.bc
  br i1 %i.bd, label %bb.n, label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit

bb.n:                                             ; preds = %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2I_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtBZ_5GraphuuNtB11_10UndirectedENCINvB3J_40greedy_edge_color_with_coloring_strategyRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB75_5types3any5PyAnyEB70_B5i_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB75_3err5PyErrEs1_0B9d_E0E0EB8g_.exit
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #62
          to label %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge unwind label %.loopexit23

._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge: ; preds = %bb.n
  %.pre = load ptr, ptr %i.c, align 8, !alias.scope !26895
  br label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit

_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit: ; preds = %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2I_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtBZ_5GraphuuNtB11_10UndirectedENCINvB3J_40greedy_edge_color_with_coloring_strategyRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB75_5types3any5PyAnyEB70_B5i_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB75_3err5PyErrEs1_0B9d_E0E0EB8g_.exit
  %i.be = phi ptr [ %.pre, %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge ], [ %i.j, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2I_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtBZ_5GraphuuNtB11_10UndirectedENCINvB3J_40greedy_edge_color_with_coloring_strategyRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB75_5types3any5PyAnyEB70_B5i_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB75_3err5PyErrEs1_0B9d_E0E0EB8g_.exit ] ; 6 uses
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %i.k ; 2 uses
  store i64 %.pre-phi, ptr %i.bf, align 8, !noalias !26895
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i64 %.sroa.02.078, ptr %i.bg, align 8, !noalias !26895
  %i.bh = add i64 %i.k, 1                         ; 4 uses
  store i64 %i.bh, ptr %i.d, align 8
  %i.bi = icmp samesign ugt i64 %i.bh, 1
  br i1 %i.bi, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit
  %storemerge74 = phi i64 [ %i.km, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit ], [ %i.bh, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit ] ; 14 uses
  %i.bj = getelementptr [16 x i8], ptr %i.be, i64 %storemerge74 ; 5 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 -16
  %i.bl = getelementptr i8, ptr %i.bj, i64 -8
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !26896, !noundef !67
  %i.bn = load i64, ptr %i.bk, align 8, !alias.scope !26896, !noundef !67 ; 4 uses
  %i.bo = add i64 %i.bn, %i.bm
  %i.bp = icmp eq i64 %i.bo, %1
  br i1 %i.bp, label %bb.q, label %bb.o

bb.o:                                             ; preds = %.lr.ph
  %i.bq = getelementptr i8, ptr %i.bj, i64 -32
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !26896, !noundef !67 ; 3 uses
  %.not.i43 = icmp ugt i64 %i.br, %i.bn
  br i1 %.not.i43, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.not14.i = icmp eq i64 %storemerge74, 2
  br i1 %.not14.i, label %._crit_edge, label %bb.s

bb.q:                                             ; preds = %bb.o, %.lr.ph
end_hunk_0
begin_hunk_1_@_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort10merge_sortNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBN_INtB4_16ParallelSliceMutBN_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2y_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtBP_5GraphuuNtBR_10UndirectedENCINvB3z_40greedy_edge_color_with_coloring_strategyRINtNtBP_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6U_5types3any5PyAnyEB6P_B58_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6U_3err5PyErrEs1_0B92_E0E0EB85_:bb.a
  br label %bb.al

bb.al:                                            ; preds = %bb.an, %bb.ak
  %.sroa.011.0.i.i.i.i.i = phi i64 [ 0, %bb.ak ], [ %i.im, %bb.an ]
  %.pn.i.i.i.i = phi i64 [ %i.hr, %bb.ak ], [ %i.in, %bb.an ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i, %i.ej ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i = load <16 x i8>, ptr %i.hw, align 1, !noalias !26916 ; 2 uses
  %i.hx = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, %i.hv
  %i.hy = bitcast <16 x i1> %i.hx to i16          ; 2 uses
  %.not.i.not30.i.i.i.i = icmp eq i16 %i.hy, 0
  br i1 %.not.i.not30.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.al, %bb.am
  %.sroa.05.0.i31.i.i.i.i = phi i16 [ %i.il, %bb.am ], [ %i.hy, %bb.al ] ; 3 uses
  %i.hz = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i.i, i1 true)
  %i.ia = zext nneg i16 %i.hz to i64
  %i.ib = add i64 %.sroa.01.0.i.i.i.i.i, %i.ia
  %.fr172 = freeze i64 %i.ib
  %i.ic = and i64 %.fr172, %i.ej
  %i.id = sub i64 0, %i.ic
  %i.ie = getelementptr [16 x i8], ptr %i.ek, i64 %i.id ; 2 uses
  %i.if = getelementptr inbounds i8, ptr %i.ie, i64 -16
  %.val2.i.i.i.i.i = load i32, ptr %i.if, align 4, !noalias !26917, !noundef !67
  %i.ig = icmp eq i32 %.sroa.0.0.val.i, %.val2.i.i.i.i.i
  br i1 %i.ig, label %_RNCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphuuNtB1u_10UndirectedENCINvB4_40greedy_edge_color_with_coloring_strategyRINtNtB1s_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3Y_5types3any5PyAnyEB3T_B2b_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB3Y_3err5PyErrEs1_0B66_E0B59_.exit.i, label %bb.am, !prof !77

._crit_edge.i.i.i.i:                              ; preds = %bb.am, %bb.al
  %i.ih = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, splat (i8 -1)
  %i.ii = bitcast <16 x i1> %i.ih to i16
  %i.ij = icmp eq i16 %i.ii, 0
  br i1 %i.ij, label %bb.an, label %_RNCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphuuNtB1u_10UndirectedENCINvB4_40greedy_edge_color_with_coloring_strategyRINtNtB1s_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3Y_5types3any5PyAnyEB3T_B2b_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB3Y_3err5PyErrEs1_0B66_E0B59_.exit.i, !prof !71

bb.am:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ik = add i16 %.sroa.05.0.i31.i.i.i.i, -1
  %i.il = and i16 %i.ik, %.sroa.05.0.i31.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.il, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.an:                                            ; preds = %._crit_edge.i.i.i.i
  %i.im = add i64 %.sroa.011.0.i.i.i.i.i, 16      ; 2 uses
  %i.in = add i64 %.sroa.01.0.i.i.i.i.i, %i.im
  br label %bb.al

_RNCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphuuNtB1u_10UndirectedENCINvB4_40greedy_edge_color_with_coloring_strategyRINtNtB1s_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3Y_5types3any5PyAnyEB3T_B2b_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB3Y_3err5PyErrEs1_0B66_E0B59_.exit.i: ; preds = %._crit_edge.i.i.i.i, %.lr.ph.i.i.i.i
  %.fr = phi ptr [ %i.ie, %.lr.ph.i.i.i.i ], [ null, %._crit_edge.i.i.i.i ] ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %.fr, null        ; 2 uses
  %i.io = getelementptr inbounds i8, ptr %.fr, i64 -8
  %i.ip = zext i32 %.val31.i to i64
  %i.iq = xor i64 %.val.i.i.i, %i.ip
  %i.ir = zext i64 %i.iq to i128
  %i.is = mul nuw i128 %i.dw, %i.ir               ; 2 uses
  %i.it = lshr i128 %i.is, 64
  %i.iu = xor i128 %i.it, %i.is
  %i.iv = trunc i128 %i.iu to i64                 ; 2 uses
  %i.iw = lshr i64 %i.iv, 57
  %i.ix = trunc nuw nsw i64 %i.iw to i8
  %i.iy = insertelement <16 x i8> poison, i8 %i.ix, i64 0
  %i.iz = shufflevector <16 x i8> %i.iy, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ao

bb.ao:                                            ; preds = %bb.aq, %_RNCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphuuNtB1u_10UndirectedENCINvB4_40greedy_edge_color_with_coloring_strategyRINtNtB1s_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3Y_5types3any5PyAnyEB3T_B2b_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB3Y_3err5PyErrEs1_0B66_E0B59_.exit.i
  %.sroa.011.0.i.i.i.i7.i = phi i64 [ 0, %_RNCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphuuNtB1u_10UndirectedENCINvB4_40greedy_edge_color_with_coloring_strategyRINtNtB1s_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3Y_5types3any5PyAnyEB3T_B2b_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB3Y_3err5PyErrEs1_0B66_E0B59_.exit.i ], [ %i.jq, %bb.aq ]
  %.pn.i.i.i8.i = phi i64 [ %i.iv, %_RNCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphuuNtB1u_10UndirectedENCINvB4_40greedy_edge_color_with_coloring_strategyRINtNtB1s_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3Y_5types3any5PyAnyEB3T_B2b_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB3Y_3err5PyErrEs1_0B66_E0B59_.exit.i ], [ %i.jr, %bb.aq ]
  %.sroa.01.0.i.i.i.i9.i = and i64 %.pn.i.i.i8.i, %i.ej ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.sroa.01.0.i.i.i.i9.i
  %.sroa.0.0.copyload.i24.i.i.i10.i = load <16 x i8>, ptr %i.ja, align 1, !noalias !26918 ; 2 uses
  %i.jb = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i10.i, %i.iz
  %i.jc = bitcast <16 x i1> %i.jb to i16          ; 2 uses
  %.not.i.not30.i.i.i11.i = icmp eq i16 %i.jc, 0
  br i1 %.not.i.not30.i.i.i11.i, label %._crit_edge.i.i.i16.i, label %.lr.ph.i.i.i12.i

.lr.ph.i.i.i12.i:                                 ; preds = %bb.ao, %bb.ap
  %.sroa.05.0.i31.i.i.i13.i = phi i16 [ %i.jp, %bb.ap ], [ %i.jc, %bb.ao ] ; 3 uses
  %i.jd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i13.i, i1 true)
  %i.je = zext nneg i16 %i.jd to i64
  %i.jf = add i64 %.sroa.01.0.i.i.i.i9.i, %i.je
  %i.jg = and i64 %i.jf, %i.ej
  %i.jh = sub nsw i64 0, %i.jg
  %i.ji = getelementptr inbounds [16 x i8], ptr %i.ek, i64 %i.jh ; 2 uses
  %i.jj = getelementptr inbounds i8, ptr %i.ji, i64 -16
  %.val2.i.i.i.i14.i = load i32, ptr %i.jj, align 4, !noalias !26919, !noundef !67
  %i.jk = icmp eq i32 %.val31.i, %.val2.i.i.i.i14.i
  br i1 %i.jk, label %bb.ar, label %bb.ap, !prof !77

._crit_edge.i.i.i16.i:                            ; preds = %bb.ap, %bb.ao
  %i.jl = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i10.i, splat (i8 -1)
  %i.jm = bitcast <16 x i1> %i.jl to i16
  %i.jn = icmp eq i16 %i.jm, 0
  br i1 %i.jn, label %bb.aq, label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_.exit, !prof !71

bb.ap:                                            ; preds = %.lr.ph.i.i.i12.i
  %i.jo = add i16 %.sroa.05.0.i31.i.i.i13.i, -1
  %i.jp = and i16 %i.jo, %.sroa.05.0.i31.i.i.i13.i ; 2 uses
  %.not.i.not.i.i.i15.i = icmp eq i16 %i.jp, 0
  br i1 %.not.i.not.i.i.i15.i, label %._crit_edge.i.i.i16.i, label %.lr.ph.i.i.i12.i

bb.aq:                                            ; preds = %._crit_edge.i.i.i16.i
  %i.jq = add i64 %.sroa.011.0.i.i.i.i7.i, 16     ; 2 uses
  %i.jr = add i64 %.sroa.01.0.i.i.i.i9.i, %i.jq
  br label %bb.ao

bb.ar:                                            ; preds = %.lr.ph.i.i.i12.i
  br i1 %.not.i.i.i.not, label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_.exit.thread, label %.split14

.split14:                                         ; preds = %bb.ar
  %i.js = getelementptr inbounds i8, ptr %i.ji, i64 -8
  %.val.i.i.i.i.i = load i64, ptr %i.js, align 8, !noalias !26897, !noundef !67
  %.val1.i.i.i.i.i = load i64, ptr %i.io, align 8, !noalias !26897, !noundef !67
  %i.jt = icmp ult i64 %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  br i1 %i.jt, label %bb.as, label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_.exit.thread

_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_.exit: ; preds = %._crit_edge.i.i.i16.i
  br i1 %.not.i.i.i.not, label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_.exit.thread, label %bb.as

bb.as:                                            ; preds = %.split14, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_.exit
  br label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_.exit.thread

_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_.exit.thread: ; preds = %bb.ar, %.split14, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_.exit, %bb.as
  %.sroa.0.0.i.i.i.i13 = phi i1 [ true, %bb.as ], [ false, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_.exit ], [ false, %.split14 ], [ false, %bb.ar ] ; 2 uses
  %i.ju = phi i32 [ %.sroa.0.0.val.i, %bb.as ], [ %.val31.i, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_.exit ], [ %.val31.i, %.split14 ], [ %.val31.i, %bb.ar ]
  store i32 %i.ju, ptr %.sroa.18.318.i, align 4, !alias.scope !26897
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.18.318.i, i64 4 ; 2 uses
  %i.jw = zext i1 %.sroa.0.0.i.i.i.i13 to i64
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.020.i, i64 %i.jw ; 2 uses
  %i.jy = xor i1 %.sroa.0.0.i.i.i.i13, true
  %i.jz = zext i1 %i.jy to i64
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.219.i, i64 %i.jz ; 3 uses
  %i.kb = icmp ult ptr %i.ka, %i.dp
  %i.kc = icmp ult ptr %i.jx, %i.cy
  %or.cond30.i = select i1 %i.kb, i1 %i.kc, i1 false
  br i1 %or.cond30.i, label %bb.ak, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_.exit.thread, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_.exit.thread.us, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_.exit75.thread, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_.exit75.thread.us, %.lr.ph.i45.split.us.split.us, %bb.aa, %bb.z
  %.sroa.18.1.i = phi ptr [ %i.ed, %.lr.ph.i45.split.us.split.us ], [ %i.cx, %bb.z ], [ %i.cw, %bb.aa ], [ %i.ee, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_.exit.thread.us ], [ %i.hf, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_.exit75.thread ], [ %i.cx, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_.exit75.thread.us ], [ %i.jv, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_.exit.thread ]
  %.sroa.10.1.i = phi ptr [ %i.dp, %.lr.ph.i45.split.us.split.us ], [ %i.db, %bb.z ], [ %i.dp, %bb.aa ], [ %i.dp, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_.exit.thread.us ], [ %i.he, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_.exit75.thread ], [ %i.dh, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_.exit75.thread.us ], [ %i.dp, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_.exit.thread ]
  %.sroa.0.015.i = phi ptr [ %i.e, %.lr.ph.i45.split.us.split.us ], [ %2, %bb.z ], [ %2, %bb.aa ], [ %i.ef, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_.exit.thread.us ], [ %2, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_.exit75.thread ], [ %2, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_.exit75.thread.us ], [ %i.ka, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_.exit.thread ] ; 2 uses
  %i.kd = ptrtoint ptr %.sroa.10.1.i to i64
  %i.ke = ptrtoint ptr %.sroa.0.015.i to i64
  %i.kf = sub i64 %i.kd, %i.ke
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.sroa.18.1.i, ptr align 4 %.sroa.0.015.i, i64 %i.kf, i1 false), !noalias !26920
  %i.kg = add i64 %i.cq, %i.ci
  store i64 %i.kg, ptr %i.cp, align 8
  store i64 %i.ck, ptr %i.cr, align 8
  %i.kh = icmp samesign ult i64 %storemerge74, 576460752303423488
  tail call void @llvm.assume(i1 %i.kh)
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.kj = xor i64 %.sroa.4.0.i41.ph, -1
  %i.kk = add nsw i64 %storemerge74, %i.kj
  %i.kl = shl nuw nsw i64 %i.kk, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ch, ptr nonnull align 8 %i.ki, i64 %i.kl, i1 false), !noalias !26921
  %i.km = add nsw i64 %storemerge74, -1           ; 3 uses
  store i64 %i.km, ptr %i.d, align 8
  %i.kn = icmp samesign ugt i64 %storemerge74, 2
  br i1 %i.kn, label %.lr.ph, label %._crit_edge

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit36: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i35, %bb.f
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i8 0, 3) i8 @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort10merge_sortNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBN_INtB4_16ParallelSliceMutBN_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2y_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtBP_5GraphuuNtBR_10UndirectedENCINvB3z_40greedy_edge_color_with_coloring_strategyRINtNtBP_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6U_5types3any5PyAnyEB6P_B58_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0EB85_(ptr noalias nofree noundef nonnull align 4 captures(address) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noundef %2, ptr nofree readonly captures(none) %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i64 0, ptr %i.d, align 8
  %.not81 = icmp eq i64 %1, 0
  br i1 %.not81, label %.loopexit22, label %.lr.ph80

.lr.ph80:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = xor i64 %i.a, -1
  %i.g = add i64 %i.a, 4
  br label %bb.b

.loopexit22:                                      ; preds = %._crit_edge, %bb.a, %bb.g
  %.sroa.0.0 = phi i8 [ %., %bb.g ], [ 2, %bb.a ], [ 2, %._crit_edge ]
  %.val30 = load i64, ptr %i.b, align 8           ; 2 uses
  %i.h = icmp eq i64 %.val30, 0
  br i1 %i.h, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i: ; preds = %.loopexit22
  %.val31 = load ptr, ptr %i.c, align 8, !nonnull !67, !noundef !67
  %i.i = shl nuw i64 %.val30, 4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val31, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %.loopexit22, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i8 %.sroa.0.0

bb.b:                                             ; preds = %.lr.ph80, %._crit_edge
  %i.j = phi ptr [ inttoptr (i64 8 to ptr), %.lr.ph80 ], [ %i.be, %._crit_edge ]
  %i.k = phi i64 [ 0, %.lr.ph80 ], [ %i.ce, %._crit_edge ] ; 3 uses
  %.sroa.02.078 = phi i64 [ 0, %.lr.ph80 ], [ %.sroa.0.0.i37, %._crit_edge ] ; 10 uses
  %i.l = sub nuw nsw i64 %1, %.sroa.02.078        ; 9 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.02.078 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26994)
  %i.n = icmp samesign ult i64 %i.l, 2
  br i1 %i.n, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val17.i = load i32, ptr %i.o, align 4, !alias.scope !26994 ; 3 uses
  %.val18.i = load i32, ptr %i.m, align 4, !alias.scope !26994
  %i.p = tail call fastcc noundef zeroext i1 @_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_(ptr nonnull readonly %.0.val, i32 %.val17.i, i32 %.val18.i) #64, !noalias !26994
  %.not11.i = icmp eq i64 %i.l, 2                 ; 2 uses
  br i1 %i.p, label %.preheader.i, label %.preheader1.i

.preheader1.i:                                    ; preds = %bb.c
  br i1 %.not11.i, label %.loopexit, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.c
  br i1 %.not11.i, label %.loopexit, label %.lr.ph7.i

.lr.ph.i:                                         ; preds = %.preheader1.i, %bb.d
  %.val15.i = phi i32 [ %.val14.i, %bb.d ], [ %.val17.i, %.preheader1.i ]
  %.sroa.01.03.i = phi i64 [ %i.s, %bb.d ], [ 2, %.preheader1.i ] ; 4 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.01.03.i
  %3 = add nsw i64 %.sroa.01.03.i, -1
  %4 = icmp samesign ult i64 %3, %i.l
  tail call void @llvm.assume(i1 %4)
  %.val14.i = load i32, ptr %i.q, align 4, !alias.scope !26994 ; 2 uses
  %i.r = tail call fastcc noundef zeroext i1 @_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_(ptr nonnull readonly %.0.val, i32 %.val14.i, i32 %.val15.i) #64, !noalias !26994
  br i1 %i.r, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.s = add nuw nsw i64 %.sroa.01.03.i, 1        ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.s, %i.l
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph7.i:                                        ; preds = %.preheader.i, %bb.e
  %.val12.i = phi i32 [ %.val11.i, %bb.e ], [ %.val17.i, %.preheader.i ]
  %.sroa.01.16.i = phi i64 [ %i.v, %bb.e ], [ 2, %.preheader.i ] ; 4 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.01.16.i
  %5 = add nsw i64 %.sroa.01.16.i, -1
  %6 = icmp samesign ult i64 %5, %i.l
  tail call void @llvm.assume(i1 %6)
  %.val11.i = load i32, ptr %i.t, align 4, !alias.scope !26994 ; 2 uses
  %i.u = tail call fastcc noundef zeroext i1 @_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_(ptr nonnull readonly %.0.val, i32 %.val11.i, i32 %.val12.i) #64, !noalias !26994
  br i1 %i.u, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %.lr.ph7.i
  %i.v = add nuw nsw i64 %.sroa.01.16.i, 1        ; 2 uses
  %exitcond14.not.i = icmp eq i64 %i.v, %i.l
  br i1 %exitcond14.not.i, label %.loopexit, label %.lr.ph7.i

.loopexit23:                                      ; preds = %bb.k, %bb.n
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp:                               ; preds = %.invoke229, %.invoke, %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp, %.loopexit23
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit23 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.val = load i64, ptr %i.b, align 8             ; 2 uses
  %i.w = icmp eq i64 %.val, 0
  br i1 %i.w, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit36, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i35

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i35: ; preds = %bb.f
  %.val29 = load ptr, ptr %i.c, align 8, !nonnull !67, !noundef !67
  %i.x = shl nuw i64 %.val, 4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val29, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) 8) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit36

.loopexit:                                        ; preds = %bb.d, %.lr.ph.i, %bb.e, %.lr.ph7.i, %.preheader.i, %.preheader1.i, %bb.b
  %.sroa.4.0.i = phi i1 [ false, %bb.b ], [ true, %.preheader.i ], [ true, %bb.e ], [ false, %.preheader1.i ], [ true, %.lr.ph7.i ], [ false, %.lr.ph.i ], [ false, %bb.d ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %i.l, %bb.b ], [ 2, %.preheader.i ], [ %i.l, %bb.e ], [ 2, %.preheader1.i ], [ %.sroa.01.16.i, %.lr.ph7.i ], [ %i.l, %bb.d ], [ %.sroa.01.03.i, %.lr.ph.i ] ; 7 uses
  %i.y = add i64 %.sroa.0.0.i, %.sroa.02.078      ; 8 uses
  %i.z = icmp eq i64 %.sroa.02.078, 0
  %i.aa = icmp eq i64 %i.y, %1
  %or.cond = and i1 %i.z, %i.aa
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.loopexit
  %. = zext i1 %.sroa.4.0.i to i8
  br label %.loopexit22

bb.h:                                             ; preds = %.loopexit
  br i1 %.sroa.4.0.i, label %bb.l, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit

_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i, %middle.block, %bb.m, %bb.h
  %i.ab = icmp uge i64 %i.y, %.sroa.02.078
  %i.ac = icmp ule i64 %i.y, %1
  %or.cond.i = and i1 %i.ab, %i.ac
  br i1 %or.cond.i, label %bb.j, label %bb.i, !prof !125

bb.i:                                             ; preds = %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @586, i64 noundef 44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @587) #60
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit
  %i.ad = icmp samesign ult i64 %.sroa.0.0.i, 10
  %i.ae = icmp samesign ult i64 %i.y, %1
  %or.cond3.i = and i1 %i.ad, %i.ae
  br i1 %or.cond3.i, label %bb.k, label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2I_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtBZ_5GraphuuNtB11_10UndirectedENCINvB3J_40greedy_edge_color_with_coloring_strategyRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB75_5types3any5PyAnyEB70_B5i_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0EB8g_.exit

bb.k:                                             ; preds = %bb.j
  %i.af = add nuw nsw i64 %.sroa.02.078, 10
  %i.ag = tail call i64 @llvm.umin.i64(i64 %i.af, i64 range(i64 0, 2305843009213693952) %1) ; 2 uses
  %i.ah = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 1)
  %i.ai = sub i64 %i.ag, %.sroa.02.078            ; 2 uses
  invoke fastcc void @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort25insertion_sort_shift_leftNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSB12_INtB4_16ParallelSliceMutB12_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2P_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB14_5GraphuuNtB16_10UndirectedENCINvB3Q_40greedy_edge_color_with_coloring_strategyRINtNtB14_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7e_5types3any5PyAnyEB79_B5q_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0EB8p_(ptr noalias nofree noundef nonnull align 4 %i.m, i64 noundef %i.ai, i64 noundef %i.ah, ptr readonly %.0.val) #62
          to label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2I_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtBZ_5GraphuuNtB11_10UndirectedENCINvB3J_40greedy_edge_color_with_coloring_strategyRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB75_5types3any5PyAnyEB70_B5i_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0EB8g_.exit unwind label %.loopexit23

bb.l:                                             ; preds = %bb.h
  %i.aj = icmp ult i64 %i.y, %.sroa.02.078
  %.not = icmp ugt i64 %i.y, %1
  %or.cond27 = or i1 %i.aj, %.not
  br i1 %or.cond27, label %.invoke, label %bb.m, !prof !90

.invoke:                                          ; preds = %bb.l, %bb.x
  %i.ak = phi i64 [ %i.ck, %bb.x ], [ %.sroa.02.078, %bb.l ]
  %i.al = phi i64 [ %i.ct, %bb.x ], [ %i.y, %bb.l ]
  %i.am = phi ptr [ @577, %bb.x ], [ @578, %bb.l ]
  invoke void @_RNvNtNtCslwFuT2d6ECx_4core5slice5index16slice_index_fail(i64 noundef %i.ak, i64 noundef %i.al, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.am) #61
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.an = lshr i64 %.sroa.0.0.i, 1                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26995)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26996)
  %.not.i = icmp eq i64 %i.an, 0
  br i1 %.not.i, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i: ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0.0.i ; 2 uses
  %min.iters.check = icmp samesign ult i64 %.sroa.0.0.i, 16
  br i1 %min.iters.check, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i
  %n.vec = and i64 %i.an, 4611686018427387896     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ap = xor i64 %index, -1
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index ; 3 uses
  %i.ar = getelementptr [4 x i8], ptr %i.ao, i64 %i.ap ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.aq, align 4, !alias.scope !26995, !noalias !26996
  %wide.load276 = load <4 x i32>, ptr %i.as, align 4, !alias.scope !26995, !noalias !26996
  %i.at = getelementptr i8, ptr %i.ar, i64 -12    ; 2 uses
  %i.au = getelementptr i8, ptr %i.ar, i64 -28    ; 2 uses
  %wide.load277 = load <4 x i32>, ptr %i.at, align 4, !alias.scope !26996, !noalias !26995
  %wide.load278 = load <4 x i32>, ptr %i.au, align 4, !alias.scope !26996, !noalias !26995
  %reverse = shufflevector <4 x i32> %wide.load277, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse279 = shufflevector <4 x i32> %wide.load278, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %i.aq, align 4, !alias.scope !26995, !noalias !26996
  store <4 x i32> %reverse279, ptr %i.as, align 4, !alias.scope !26995, !noalias !26996
  %reverse280 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse281 = shufflevector <4 x i32> %wide.load276, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse280, ptr %i.at, align 4, !alias.scope !26996, !noalias !26995
  store <4 x i32> %reverse281, ptr %i.au, align 4, !alias.scope !26996, !noalias !26995
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !26927

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i, %middle.block
  %.sroa.0.016.i.ph = phi i64 [ 0, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i
  %.sroa.0.016.i = phi i64 [ %i.bb, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i ], [ %.sroa.0.016.i.ph, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader ] ; 3 uses
  %i.aw = xor i64 %.sroa.0.016.i, -1
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0.016.i ; 2 uses
  %i.ay = getelementptr [4 x i8], ptr %i.ao, i64 %i.aw ; 2 uses
  %i.az = load i32, ptr %i.ax, align 4, !alias.scope !26995, !noalias !26996, !noundef !67
  %i.ba = load i32, ptr %i.ay, align 4, !alias.scope !26996, !noalias !26995
  store i32 %i.ba, ptr %i.ax, align 4, !alias.scope !26995, !noalias !26996
  store i32 %i.az, ptr %i.ay, align 4, !alias.scope !26996, !noalias !26995
  %i.bb = add nuw nsw i64 %.sroa.0.016.i, 1       ; 2 uses
  %exitcond.not.i39 = icmp eq i64 %i.bb, %i.an
  br i1 %exitcond.not.i39, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i, !llvm.loop !26928

_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2I_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtBZ_5GraphuuNtB11_10UndirectedENCINvB3J_40greedy_edge_color_with_coloring_strategyRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB75_5types3any5PyAnyEB70_B5i_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0EB8g_.exit: ; preds = %bb.j, %bb.k
  %.pre-phi = phi i64 [ %i.ai, %bb.k ], [ %.sroa.0.0.i, %bb.j ]
  %.sroa.0.0.i37 = phi i64 [ %i.ag, %bb.k ], [ %i.y, %bb.j ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26997)
  %i.bc = load i64, ptr %i.b, align 8, !range !70, !alias.scope !26997, !noundef !67
  %i.bd = icmp eq i64 %i.k, %i.bc
  br i1 %i.bd, label %bb.n, label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit

bb.n:                                             ; preds = %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2I_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtBZ_5GraphuuNtB11_10UndirectedENCINvB3J_40greedy_edge_color_with_coloring_strategyRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB75_5types3any5PyAnyEB70_B5i_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0EB8g_.exit
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #62
          to label %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge unwind label %.loopexit23

._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge: ; preds = %bb.n
  %.pre = load ptr, ptr %i.c, align 8, !alias.scope !26997
  br label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit

_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit: ; preds = %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2I_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtBZ_5GraphuuNtB11_10UndirectedENCINvB3J_40greedy_edge_color_with_coloring_strategyRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB75_5types3any5PyAnyEB70_B5i_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0EB8g_.exit
  %i.be = phi ptr [ %.pre, %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge ], [ %i.j, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2I_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtBZ_5GraphuuNtB11_10UndirectedENCINvB3J_40greedy_edge_color_with_coloring_strategyRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB75_5types3any5PyAnyEB70_B5i_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0EB8g_.exit ] ; 6 uses
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %i.k ; 2 uses
  store i64 %.pre-phi, ptr %i.bf, align 8, !noalias !26997
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i64 %.sroa.02.078, ptr %i.bg, align 8, !noalias !26997
  %i.bh = add i64 %i.k, 1                         ; 4 uses
  store i64 %i.bh, ptr %i.d, align 8
  %i.bi = icmp samesign ugt i64 %i.bh, 1
  br i1 %i.bi, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit
  %storemerge74 = phi i64 [ %i.km, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit ], [ %i.bh, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit ] ; 14 uses
  %i.bj = getelementptr [16 x i8], ptr %i.be, i64 %storemerge74 ; 5 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 -16
  %i.bl = getelementptr i8, ptr %i.bj, i64 -8
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !26998, !noundef !67
  %i.bn = load i64, ptr %i.bk, align 8, !alias.scope !26998, !noundef !67 ; 4 uses
  %i.bo = add i64 %i.bn, %i.bm
  %i.bp = icmp eq i64 %i.bo, %1
  br i1 %i.bp, label %bb.q, label %bb.o

bb.o:                                             ; preds = %.lr.ph
  %i.bq = getelementptr i8, ptr %i.bj, i64 -32
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !26998, !noundef !67 ; 3 uses
  %.not.i43 = icmp ugt i64 %i.br, %i.bn
  br i1 %.not.i43, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.not14.i = icmp eq i64 %storemerge74, 2
  br i1 %.not14.i, label %._crit_edge, label %bb.s

bb.q:                                             ; preds = %bb.o, %.lr.ph
end_hunk_1
begin_hunk_2_@_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort10merge_sortNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBN_INtB4_16ParallelSliceMutBN_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2y_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtBP_5GraphuuNtBR_10UndirectedENCINvB3z_40greedy_edge_color_with_coloring_strategyRINtNtBP_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6U_5types3any5PyAnyEB6P_B58_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0EB85_:bb.a
  br label %bb.al

bb.al:                                            ; preds = %bb.an, %bb.ak
  %.sroa.011.0.i.i.i.i.i = phi i64 [ 0, %bb.ak ], [ %i.im, %bb.an ]
  %.pn.i.i.i.i = phi i64 [ %i.hr, %bb.ak ], [ %i.in, %bb.an ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i, %i.ej ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i = load <16 x i8>, ptr %i.hw, align 1, !noalias !27018 ; 2 uses
  %i.hx = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, %i.hv
  %i.hy = bitcast <16 x i1> %i.hx to i16          ; 2 uses
  %.not.i.not30.i.i.i.i = icmp eq i16 %i.hy, 0
  br i1 %.not.i.not30.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.al, %bb.am
  %.sroa.05.0.i31.i.i.i.i = phi i16 [ %i.il, %bb.am ], [ %i.hy, %bb.al ] ; 3 uses
  %i.hz = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i.i, i1 true)
  %i.ia = zext nneg i16 %i.hz to i64
  %i.ib = add i64 %.sroa.01.0.i.i.i.i.i, %i.ia
  %.fr172 = freeze i64 %i.ib
  %i.ic = and i64 %.fr172, %i.ej
  %i.id = sub i64 0, %i.ic
  %i.ie = getelementptr [16 x i8], ptr %i.ek, i64 %i.id ; 2 uses
  %i.if = getelementptr inbounds i8, ptr %i.ie, i64 -16
  %.val2.i.i.i.i.i = load i32, ptr %i.if, align 4, !noalias !27019, !noundef !67
  %i.ig = icmp eq i32 %.sroa.0.0.val.i, %.val2.i.i.i.i.i
  br i1 %i.ig, label %_RNCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphuuNtB1u_10UndirectedENCINvB4_40greedy_edge_color_with_coloring_strategyRINtNtB1s_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3Y_5types3any5PyAnyEB3T_B2b_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0B59_.exit.i, label %bb.am, !prof !77

._crit_edge.i.i.i.i:                              ; preds = %bb.am, %bb.al
  %i.ih = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, splat (i8 -1)
  %i.ii = bitcast <16 x i1> %i.ih to i16
  %i.ij = icmp eq i16 %i.ii, 0
  br i1 %i.ij, label %bb.an, label %_RNCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphuuNtB1u_10UndirectedENCINvB4_40greedy_edge_color_with_coloring_strategyRINtNtB1s_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3Y_5types3any5PyAnyEB3T_B2b_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0B59_.exit.i, !prof !71

bb.am:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ik = add i16 %.sroa.05.0.i31.i.i.i.i, -1
  %i.il = and i16 %i.ik, %.sroa.05.0.i31.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.il, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.an:                                            ; preds = %._crit_edge.i.i.i.i
  %i.im = add i64 %.sroa.011.0.i.i.i.i.i, 16      ; 2 uses
  %i.in = add i64 %.sroa.01.0.i.i.i.i.i, %i.im
  br label %bb.al

_RNCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphuuNtB1u_10UndirectedENCINvB4_40greedy_edge_color_with_coloring_strategyRINtNtB1s_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3Y_5types3any5PyAnyEB3T_B2b_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0B59_.exit.i: ; preds = %._crit_edge.i.i.i.i, %.lr.ph.i.i.i.i
  %.fr = phi ptr [ %i.ie, %.lr.ph.i.i.i.i ], [ null, %._crit_edge.i.i.i.i ] ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %.fr, null        ; 2 uses
  %i.io = getelementptr inbounds i8, ptr %.fr, i64 -8
  %i.ip = zext i32 %.val31.i to i64
  %i.iq = xor i64 %.val.i.i.i, %i.ip
  %i.ir = zext i64 %i.iq to i128
  %i.is = mul nuw i128 %i.dw, %i.ir               ; 2 uses
  %i.it = lshr i128 %i.is, 64
  %i.iu = xor i128 %i.it, %i.is
  %i.iv = trunc i128 %i.iu to i64                 ; 2 uses
  %i.iw = lshr i64 %i.iv, 57
  %i.ix = trunc nuw nsw i64 %i.iw to i8
  %i.iy = insertelement <16 x i8> poison, i8 %i.ix, i64 0
  %i.iz = shufflevector <16 x i8> %i.iy, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ao

bb.ao:                                            ; preds = %bb.aq, %_RNCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphuuNtB1u_10UndirectedENCINvB4_40greedy_edge_color_with_coloring_strategyRINtNtB1s_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3Y_5types3any5PyAnyEB3T_B2b_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0B59_.exit.i
  %.sroa.011.0.i.i.i.i7.i = phi i64 [ 0, %_RNCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphuuNtB1u_10UndirectedENCINvB4_40greedy_edge_color_with_coloring_strategyRINtNtB1s_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3Y_5types3any5PyAnyEB3T_B2b_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0B59_.exit.i ], [ %i.jq, %bb.aq ]
  %.pn.i.i.i8.i = phi i64 [ %i.iv, %_RNCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphuuNtB1u_10UndirectedENCINvB4_40greedy_edge_color_with_coloring_strategyRINtNtB1s_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3Y_5types3any5PyAnyEB3T_B2b_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0B59_.exit.i ], [ %i.jr, %bb.aq ]
  %.sroa.01.0.i.i.i.i9.i = and i64 %.pn.i.i.i8.i, %i.ej ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.sroa.01.0.i.i.i.i9.i
  %.sroa.0.0.copyload.i24.i.i.i10.i = load <16 x i8>, ptr %i.ja, align 1, !noalias !27020 ; 2 uses
  %i.jb = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i10.i, %i.iz
  %i.jc = bitcast <16 x i1> %i.jb to i16          ; 2 uses
  %.not.i.not30.i.i.i11.i = icmp eq i16 %i.jc, 0
  br i1 %.not.i.not30.i.i.i11.i, label %._crit_edge.i.i.i16.i, label %.lr.ph.i.i.i12.i

.lr.ph.i.i.i12.i:                                 ; preds = %bb.ao, %bb.ap
  %.sroa.05.0.i31.i.i.i13.i = phi i16 [ %i.jp, %bb.ap ], [ %i.jc, %bb.ao ] ; 3 uses
  %i.jd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i13.i, i1 true)
  %i.je = zext nneg i16 %i.jd to i64
  %i.jf = add i64 %.sroa.01.0.i.i.i.i9.i, %i.je
  %i.jg = and i64 %i.jf, %i.ej
  %i.jh = sub nsw i64 0, %i.jg
  %i.ji = getelementptr inbounds [16 x i8], ptr %i.ek, i64 %i.jh ; 2 uses
  %i.jj = getelementptr inbounds i8, ptr %i.ji, i64 -16
  %.val2.i.i.i.i14.i = load i32, ptr %i.jj, align 4, !noalias !27021, !noundef !67
  %i.jk = icmp eq i32 %.val31.i, %.val2.i.i.i.i14.i
  br i1 %i.jk, label %bb.ar, label %bb.ap, !prof !77

._crit_edge.i.i.i16.i:                            ; preds = %bb.ap, %bb.ao
  %i.jl = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i10.i, splat (i8 -1)
  %i.jm = bitcast <16 x i1> %i.jl to i16
  %i.jn = icmp eq i16 %i.jm, 0
  br i1 %i.jn, label %bb.aq, label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_.exit, !prof !71

bb.ap:                                            ; preds = %.lr.ph.i.i.i12.i
  %i.jo = add i16 %.sroa.05.0.i31.i.i.i13.i, -1
  %i.jp = and i16 %i.jo, %.sroa.05.0.i31.i.i.i13.i ; 2 uses
  %.not.i.not.i.i.i15.i = icmp eq i16 %i.jp, 0
  br i1 %.not.i.not.i.i.i15.i, label %._crit_edge.i.i.i16.i, label %.lr.ph.i.i.i12.i

bb.aq:                                            ; preds = %._crit_edge.i.i.i16.i
  %i.jq = add i64 %.sroa.011.0.i.i.i.i7.i, 16     ; 2 uses
  %i.jr = add i64 %.sroa.01.0.i.i.i.i9.i, %i.jq
  br label %bb.ao

bb.ar:                                            ; preds = %.lr.ph.i.i.i12.i
  br i1 %.not.i.i.i.not, label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_.exit.thread, label %.split14

.split14:                                         ; preds = %bb.ar
  %i.js = getelementptr inbounds i8, ptr %i.ji, i64 -8
  %.val.i.i.i.i.i = load i64, ptr %i.js, align 8, !noalias !26999, !noundef !67
  %.val1.i.i.i.i.i = load i64, ptr %i.io, align 8, !noalias !26999, !noundef !67
  %i.jt = icmp ult i64 %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  br i1 %i.jt, label %bb.as, label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_.exit.thread

_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_.exit: ; preds = %._crit_edge.i.i.i16.i
  br i1 %.not.i.i.i.not, label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_.exit.thread, label %bb.as

bb.as:                                            ; preds = %.split14, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_.exit
  br label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_.exit.thread

_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_.exit.thread: ; preds = %bb.ar, %.split14, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_.exit, %bb.as
  %.sroa.0.0.i.i.i.i13 = phi i1 [ true, %bb.as ], [ false, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_.exit ], [ false, %.split14 ], [ false, %bb.ar ] ; 2 uses
  %i.ju = phi i32 [ %.sroa.0.0.val.i, %bb.as ], [ %.val31.i, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_.exit ], [ %.val31.i, %.split14 ], [ %.val31.i, %bb.ar ]
  store i32 %i.ju, ptr %.sroa.18.318.i, align 4, !alias.scope !26999
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.18.318.i, i64 4 ; 2 uses
  %i.jw = zext i1 %.sroa.0.0.i.i.i.i13 to i64
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.020.i, i64 %i.jw ; 2 uses
  %i.jy = xor i1 %.sroa.0.0.i.i.i.i13, true
  %i.jz = zext i1 %i.jy to i64
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.219.i, i64 %i.jz ; 3 uses
  %i.kb = icmp ult ptr %i.ka, %i.dp
  %i.kc = icmp ult ptr %i.jx, %i.cy
  %or.cond30.i = select i1 %i.kb, i1 %i.kc, i1 false
  br i1 %or.cond30.i, label %bb.ak, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_.exit.thread, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_.exit.thread.us, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_.exit75.thread, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_.exit75.thread.us, %.lr.ph.i45.split.us.split.us, %bb.aa, %bb.z
  %.sroa.18.1.i = phi ptr [ %i.ed, %.lr.ph.i45.split.us.split.us ], [ %i.cx, %bb.z ], [ %i.cw, %bb.aa ], [ %i.ee, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_.exit.thread.us ], [ %i.hf, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_.exit75.thread ], [ %i.cx, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_.exit75.thread.us ], [ %i.jv, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_.exit.thread ]
  %.sroa.10.1.i = phi ptr [ %i.dp, %.lr.ph.i45.split.us.split.us ], [ %i.db, %bb.z ], [ %i.dp, %bb.aa ], [ %i.dp, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_.exit.thread.us ], [ %i.he, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_.exit75.thread ], [ %i.dh, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_.exit75.thread.us ], [ %i.dp, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_.exit.thread ]
  %.sroa.0.015.i = phi ptr [ %i.e, %.lr.ph.i45.split.us.split.us ], [ %2, %bb.z ], [ %2, %bb.aa ], [ %i.ef, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_.exit.thread.us ], [ %2, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_.exit75.thread ], [ %2, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_.exit75.thread.us ], [ %i.ka, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_.exit.thread ] ; 2 uses
  %i.kd = ptrtoint ptr %.sroa.10.1.i to i64
  %i.ke = ptrtoint ptr %.sroa.0.015.i to i64
  %i.kf = sub i64 %i.kd, %i.ke
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.sroa.18.1.i, ptr align 4 %.sroa.0.015.i, i64 %i.kf, i1 false), !noalias !27022
  %i.kg = add i64 %i.cq, %i.ci
  store i64 %i.kg, ptr %i.cp, align 8
  store i64 %i.ck, ptr %i.cr, align 8
  %i.kh = icmp samesign ult i64 %storemerge74, 576460752303423488
  tail call void @llvm.assume(i1 %i.kh)
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.kj = xor i64 %.sroa.4.0.i41.ph, -1
  %i.kk = add nsw i64 %storemerge74, %i.kj
  %i.kl = shl nuw nsw i64 %i.kk, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ch, ptr nonnull align 8 %i.ki, i64 %i.kl, i1 false), !noalias !27023
  %i.km = add nsw i64 %storemerge74, -1           ; 3 uses
  store i64 %i.km, ptr %i.d, align 8
  %i.kn = icmp samesign ugt i64 %storemerge74, 2
  br i1 %i.kn, label %.lr.ph, label %._crit_edge

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit36: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i35, %bb.f
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i8 0, 3) i8 @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort10merge_sortNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBN_INtB4_16ParallelSliceMutBN_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2y_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtBP_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5y_5types3any5PyAnyEB5t_NtBR_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB5y_3err5PyErrE0E0EB6W_(ptr noalias nofree noundef nonnull align 4 captures(address) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noundef %2, ptr nofree readonly captures(none) %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i64 0, ptr %i.d, align 8
  %.not81 = icmp eq i64 %1, 0
  br i1 %.not81, label %.loopexit22, label %.lr.ph80

.lr.ph80:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = xor i64 %i.a, -1
  %i.g = add i64 %i.a, 4
  br label %bb.b

.loopexit22:                                      ; preds = %._crit_edge, %bb.a, %bb.g
  %.sroa.0.0 = phi i8 [ %., %bb.g ], [ 2, %bb.a ], [ 2, %._crit_edge ]
  %.val30 = load i64, ptr %i.b, align 8           ; 2 uses
  %i.h = icmp eq i64 %.val30, 0
  br i1 %i.h, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i: ; preds = %.loopexit22
  %.val31 = load ptr, ptr %i.c, align 8, !nonnull !67, !noundef !67
  %i.i = shl nuw i64 %.val30, 4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val31, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %.loopexit22, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i8 %.sroa.0.0

bb.b:                                             ; preds = %.lr.ph80, %._crit_edge
  %i.j = phi ptr [ inttoptr (i64 8 to ptr), %.lr.ph80 ], [ %i.be, %._crit_edge ]
  %i.k = phi i64 [ 0, %.lr.ph80 ], [ %i.ce, %._crit_edge ] ; 3 uses
  %.sroa.02.078 = phi i64 [ 0, %.lr.ph80 ], [ %.sroa.0.0.i37, %._crit_edge ] ; 10 uses
  %i.l = sub nuw nsw i64 %1, %.sroa.02.078        ; 9 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.02.078 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27096)
  %i.n = icmp samesign ult i64 %i.l, 2
  br i1 %i.n, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val17.i = load i32, ptr %i.o, align 4, !alias.scope !27096 ; 3 uses
  %.val18.i = load i32, ptr %i.m, align 4, !alias.scope !27096
  %i.p = tail call fastcc noundef zeroext i1 @_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_(ptr nonnull readonly %.0.val, i32 %.val17.i, i32 %.val18.i) #64, !noalias !27096
  %.not11.i = icmp eq i64 %i.l, 2                 ; 2 uses
  br i1 %i.p, label %.preheader.i, label %.preheader1.i

.preheader1.i:                                    ; preds = %bb.c
  br i1 %.not11.i, label %.loopexit, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.c
  br i1 %.not11.i, label %.loopexit, label %.lr.ph7.i

.lr.ph.i:                                         ; preds = %.preheader1.i, %bb.d
  %.val15.i = phi i32 [ %.val14.i, %bb.d ], [ %.val17.i, %.preheader1.i ]
  %.sroa.01.03.i = phi i64 [ %i.s, %bb.d ], [ 2, %.preheader1.i ] ; 4 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.01.03.i
  %3 = add nsw i64 %.sroa.01.03.i, -1
  %4 = icmp samesign ult i64 %3, %i.l
  tail call void @llvm.assume(i1 %4)
  %.val14.i = load i32, ptr %i.q, align 4, !alias.scope !27096 ; 2 uses
  %i.r = tail call fastcc noundef zeroext i1 @_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_(ptr nonnull readonly %.0.val, i32 %.val14.i, i32 %.val15.i) #64, !noalias !27096
  br i1 %i.r, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.s = add nuw nsw i64 %.sroa.01.03.i, 1        ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.s, %i.l
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph7.i:                                        ; preds = %.preheader.i, %bb.e
  %.val12.i = phi i32 [ %.val11.i, %bb.e ], [ %.val17.i, %.preheader.i ]
  %.sroa.01.16.i = phi i64 [ %i.v, %bb.e ], [ 2, %.preheader.i ] ; 4 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.01.16.i
  %5 = add nsw i64 %.sroa.01.16.i, -1
  %6 = icmp samesign ult i64 %5, %i.l
  tail call void @llvm.assume(i1 %6)
  %.val11.i = load i32, ptr %i.t, align 4, !alias.scope !27096 ; 2 uses
  %i.u = tail call fastcc noundef zeroext i1 @_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_(ptr nonnull readonly %.0.val, i32 %.val11.i, i32 %.val12.i) #64, !noalias !27096
  br i1 %i.u, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %.lr.ph7.i
  %i.v = add nuw nsw i64 %.sroa.01.16.i, 1        ; 2 uses
  %exitcond14.not.i = icmp eq i64 %i.v, %i.l
  br i1 %exitcond14.not.i, label %.loopexit, label %.lr.ph7.i

.loopexit23:                                      ; preds = %bb.k, %bb.n
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp:                               ; preds = %.invoke229, %.invoke, %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp, %.loopexit23
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit23 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.val = load i64, ptr %i.b, align 8             ; 2 uses
  %i.w = icmp eq i64 %.val, 0
  br i1 %i.w, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit36, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i35

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i35: ; preds = %bb.f
  %.val29 = load ptr, ptr %i.c, align 8, !nonnull !67, !noundef !67
  %i.x = shl nuw i64 %.val, 4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val29, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) 8) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit36

.loopexit:                                        ; preds = %bb.d, %.lr.ph.i, %bb.e, %.lr.ph7.i, %.preheader.i, %.preheader1.i, %bb.b
  %.sroa.4.0.i = phi i1 [ false, %bb.b ], [ true, %.preheader.i ], [ true, %bb.e ], [ false, %.preheader1.i ], [ true, %.lr.ph7.i ], [ false, %.lr.ph.i ], [ false, %bb.d ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %i.l, %bb.b ], [ 2, %.preheader.i ], [ %i.l, %bb.e ], [ 2, %.preheader1.i ], [ %.sroa.01.16.i, %.lr.ph7.i ], [ %i.l, %bb.d ], [ %.sroa.01.03.i, %.lr.ph.i ] ; 7 uses
  %i.y = add i64 %.sroa.0.0.i, %.sroa.02.078      ; 8 uses
  %i.z = icmp eq i64 %.sroa.02.078, 0
  %i.aa = icmp eq i64 %i.y, %1
  %or.cond = and i1 %i.z, %i.aa
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.loopexit
  %. = zext i1 %.sroa.4.0.i to i8
  br label %.loopexit22

bb.h:                                             ; preds = %.loopexit
  br i1 %.sroa.4.0.i, label %bb.l, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit

_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i, %middle.block, %bb.m, %bb.h
  %i.ab = icmp uge i64 %i.y, %.sroa.02.078
  %i.ac = icmp ule i64 %i.y, %1
  %or.cond.i = and i1 %i.ab, %i.ac
  br i1 %or.cond.i, label %bb.j, label %bb.i, !prof !125

bb.i:                                             ; preds = %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @586, i64 noundef 44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @587) #60
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit
  %i.ad = icmp samesign ult i64 %.sroa.0.0.i, 10
  %i.ae = icmp samesign ult i64 %i.y, %1
  %or.cond3.i = and i1 %i.ad, %i.ae
  br i1 %or.cond3.i, label %bb.k, label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2I_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5I_5types3any5PyAnyEB5D_NtB11_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB5I_3err5PyErrE0E0EB77_.exit

bb.k:                                             ; preds = %bb.j
  %i.af = add nuw nsw i64 %.sroa.02.078, 10
  %i.ag = tail call i64 @llvm.umin.i64(i64 %i.af, i64 range(i64 0, 2305843009213693952) %1) ; 2 uses
  %i.ah = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 1)
  %i.ai = sub i64 %i.ag, %.sroa.02.078            ; 2 uses
  invoke fastcc void @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort25insertion_sort_shift_leftNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSB12_INtB4_16ParallelSliceMutB12_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2P_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB14_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5Q_5types3any5PyAnyEB5L_NtB16_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB5Q_3err5PyErrE0E0EB7f_(ptr noalias nofree noundef nonnull align 4 %i.m, i64 noundef %i.ai, i64 noundef %i.ah, ptr readonly %.0.val) #62
          to label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2I_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5I_5types3any5PyAnyEB5D_NtB11_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB5I_3err5PyErrE0E0EB77_.exit unwind label %.loopexit23

bb.l:                                             ; preds = %bb.h
  %i.aj = icmp ult i64 %i.y, %.sroa.02.078
  %.not = icmp ugt i64 %i.y, %1
  %or.cond27 = or i1 %i.aj, %.not
  br i1 %or.cond27, label %.invoke, label %bb.m, !prof !90

.invoke:                                          ; preds = %bb.l, %bb.x
  %i.ak = phi i64 [ %i.ck, %bb.x ], [ %.sroa.02.078, %bb.l ]
  %i.al = phi i64 [ %i.ct, %bb.x ], [ %i.y, %bb.l ]
  %i.am = phi ptr [ @577, %bb.x ], [ @578, %bb.l ]
  invoke void @_RNvNtNtCslwFuT2d6ECx_4core5slice5index16slice_index_fail(i64 noundef %i.ak, i64 noundef %i.al, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.am) #61
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.an = lshr i64 %.sroa.0.0.i, 1                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27097)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27098)
  %.not.i = icmp eq i64 %i.an, 0
  br i1 %.not.i, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i: ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0.0.i ; 2 uses
  %min.iters.check = icmp samesign ult i64 %.sroa.0.0.i, 16
  br i1 %min.iters.check, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i
  %n.vec = and i64 %i.an, 4611686018427387896     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ap = xor i64 %index, -1
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index ; 3 uses
  %i.ar = getelementptr [4 x i8], ptr %i.ao, i64 %i.ap ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.aq, align 4, !alias.scope !27097, !noalias !27098
  %wide.load276 = load <4 x i32>, ptr %i.as, align 4, !alias.scope !27097, !noalias !27098
  %i.at = getelementptr i8, ptr %i.ar, i64 -12    ; 2 uses
  %i.au = getelementptr i8, ptr %i.ar, i64 -28    ; 2 uses
  %wide.load277 = load <4 x i32>, ptr %i.at, align 4, !alias.scope !27098, !noalias !27097
  %wide.load278 = load <4 x i32>, ptr %i.au, align 4, !alias.scope !27098, !noalias !27097
  %reverse = shufflevector <4 x i32> %wide.load277, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse279 = shufflevector <4 x i32> %wide.load278, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %i.aq, align 4, !alias.scope !27097, !noalias !27098
  store <4 x i32> %reverse279, ptr %i.as, align 4, !alias.scope !27097, !noalias !27098
  %reverse280 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse281 = shufflevector <4 x i32> %wide.load276, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse280, ptr %i.at, align 4, !alias.scope !27098, !noalias !27097
  store <4 x i32> %reverse281, ptr %i.au, align 4, !alias.scope !27098, !noalias !27097
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !27029

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i, %middle.block
  %.sroa.0.016.i.ph = phi i64 [ 0, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i
  %.sroa.0.016.i = phi i64 [ %i.bb, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i ], [ %.sroa.0.016.i.ph, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader ] ; 3 uses
  %i.aw = xor i64 %.sroa.0.016.i, -1
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0.016.i ; 2 uses
  %i.ay = getelementptr [4 x i8], ptr %i.ao, i64 %i.aw ; 2 uses
  %i.az = load i32, ptr %i.ax, align 4, !alias.scope !27097, !noalias !27098, !noundef !67
  %i.ba = load i32, ptr %i.ay, align 4, !alias.scope !27098, !noalias !27097
  store i32 %i.ba, ptr %i.ax, align 4, !alias.scope !27097, !noalias !27098
  store i32 %i.az, ptr %i.ay, align 4, !alias.scope !27098, !noalias !27097
  %i.bb = add nuw nsw i64 %.sroa.0.016.i, 1       ; 2 uses
  %exitcond.not.i39 = icmp eq i64 %i.bb, %i.an
  br i1 %exitcond.not.i39, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i, !llvm.loop !27030

_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2I_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5I_5types3any5PyAnyEB5D_NtB11_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB5I_3err5PyErrE0E0EB77_.exit: ; preds = %bb.j, %bb.k
  %.pre-phi = phi i64 [ %i.ai, %bb.k ], [ %.sroa.0.0.i, %bb.j ]
  %.sroa.0.0.i37 = phi i64 [ %i.ag, %bb.k ], [ %i.y, %bb.j ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27099)
  %i.bc = load i64, ptr %i.b, align 8, !range !70, !alias.scope !27099, !noundef !67
  %i.bd = icmp eq i64 %i.k, %i.bc
  br i1 %i.bd, label %bb.n, label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit

bb.n:                                             ; preds = %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2I_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5I_5types3any5PyAnyEB5D_NtB11_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB5I_3err5PyErrE0E0EB77_.exit
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #62
          to label %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge unwind label %.loopexit23

._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge: ; preds = %bb.n
  %.pre = load ptr, ptr %i.c, align 8, !alias.scope !27099
  br label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit

_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit: ; preds = %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2I_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5I_5types3any5PyAnyEB5D_NtB11_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB5I_3err5PyErrE0E0EB77_.exit
  %i.be = phi ptr [ %.pre, %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge ], [ %i.j, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2I_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5I_5types3any5PyAnyEB5D_NtB11_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB5I_3err5PyErrE0E0EB77_.exit ] ; 6 uses
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %i.k ; 2 uses
  store i64 %.pre-phi, ptr %i.bf, align 8, !noalias !27099
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i64 %.sroa.02.078, ptr %i.bg, align 8, !noalias !27099
  %i.bh = add i64 %i.k, 1                         ; 4 uses
  store i64 %i.bh, ptr %i.d, align 8
  %i.bi = icmp samesign ugt i64 %i.bh, 1
  br i1 %i.bi, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit
  %storemerge74 = phi i64 [ %i.km, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit ], [ %i.bh, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit ] ; 14 uses
  %i.bj = getelementptr [16 x i8], ptr %i.be, i64 %storemerge74 ; 5 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 -16
  %i.bl = getelementptr i8, ptr %i.bj, i64 -8
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !27100, !noundef !67
  %i.bn = load i64, ptr %i.bk, align 8, !alias.scope !27100, !noundef !67 ; 4 uses
  %i.bo = add i64 %i.bn, %i.bm
  %i.bp = icmp eq i64 %i.bo, %1
  br i1 %i.bp, label %bb.q, label %bb.o

bb.o:                                             ; preds = %.lr.ph
  %i.bq = getelementptr i8, ptr %i.bj, i64 -32
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !27100, !noundef !67 ; 3 uses
  %.not.i43 = icmp ugt i64 %i.br, %i.bn
  br i1 %.not.i43, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.not14.i = icmp eq i64 %storemerge74, 2
  br i1 %.not14.i, label %._crit_edge, label %bb.s

bb.q:                                             ; preds = %bb.o, %.lr.ph
end_hunk_2
begin_hunk_3_@_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort10merge_sortNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBN_INtB4_16ParallelSliceMutBN_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2y_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtBP_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5y_5types3any5PyAnyEB5t_NtBR_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB5y_3err5PyErrE0E0EB6W_:bb.a
  br label %bb.al

bb.al:                                            ; preds = %bb.an, %bb.ak
  %.sroa.011.0.i.i.i.i.i = phi i64 [ 0, %bb.ak ], [ %i.im, %bb.an ]
  %.pn.i.i.i.i = phi i64 [ %i.hr, %bb.ak ], [ %i.in, %bb.an ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i, %i.ej ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i = load <16 x i8>, ptr %i.hw, align 1, !noalias !27120 ; 2 uses
  %i.hx = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, %i.hv
  %i.hy = bitcast <16 x i1> %i.hx to i16          ; 2 uses
  %.not.i.not30.i.i.i.i = icmp eq i16 %i.hy, 0
  br i1 %.not.i.not30.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.al, %bb.am
  %.sroa.05.0.i31.i.i.i.i = phi i16 [ %i.il, %bb.am ], [ %i.hy, %bb.al ] ; 3 uses
  %i.hz = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i.i, i1 true)
  %i.ia = zext nneg i16 %i.hz to i64
  %i.ib = add i64 %.sroa.01.0.i.i.i.i.i, %i.ia
  %.fr172 = freeze i64 %i.ib
  %i.ic = and i64 %.fr172, %i.ej
  %i.id = sub i64 0, %i.ic
  %i.ie = getelementptr [16 x i8], ptr %i.ek, i64 %i.id ; 2 uses
  %i.if = getelementptr inbounds i8, ptr %i.ie, i64 -16
  %.val2.i.i.i.i.i = load i32, ptr %i.if, align 4, !noalias !27121, !noundef !67
  %i.ig = icmp eq i32 %.sroa.0.0.val.i, %.val2.i.i.i.i.i
  br i1 %i.ig, label %_RNCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2B_5types3any5PyAnyEB2w_NtB1w_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB2B_3err5PyErrE0B40_.exit.i, label %bb.am, !prof !77

._crit_edge.i.i.i.i:                              ; preds = %bb.am, %bb.al
  %i.ih = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, splat (i8 -1)
  %i.ii = bitcast <16 x i1> %i.ih to i16
  %i.ij = icmp eq i16 %i.ii, 0
  br i1 %i.ij, label %bb.an, label %_RNCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2B_5types3any5PyAnyEB2w_NtB1w_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB2B_3err5PyErrE0B40_.exit.i, !prof !71

bb.am:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ik = add i16 %.sroa.05.0.i31.i.i.i.i, -1
  %i.il = and i16 %i.ik, %.sroa.05.0.i31.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.il, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.an:                                            ; preds = %._crit_edge.i.i.i.i
  %i.im = add i64 %.sroa.011.0.i.i.i.i.i, 16      ; 2 uses
  %i.in = add i64 %.sroa.01.0.i.i.i.i.i, %i.im
  br label %bb.al

_RNCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2B_5types3any5PyAnyEB2w_NtB1w_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB2B_3err5PyErrE0B40_.exit.i: ; preds = %._crit_edge.i.i.i.i, %.lr.ph.i.i.i.i
  %.fr = phi ptr [ %i.ie, %.lr.ph.i.i.i.i ], [ null, %._crit_edge.i.i.i.i ] ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %.fr, null        ; 2 uses
  %i.io = getelementptr inbounds i8, ptr %.fr, i64 -8
  %i.ip = zext i32 %.val31.i to i64
  %i.iq = xor i64 %.val.i.i.i, %i.ip
  %i.ir = zext i64 %i.iq to i128
  %i.is = mul nuw i128 %i.dw, %i.ir               ; 2 uses
  %i.it = lshr i128 %i.is, 64
  %i.iu = xor i128 %i.it, %i.is
  %i.iv = trunc i128 %i.iu to i64                 ; 2 uses
  %i.iw = lshr i64 %i.iv, 57
  %i.ix = trunc nuw nsw i64 %i.iw to i8
  %i.iy = insertelement <16 x i8> poison, i8 %i.ix, i64 0
  %i.iz = shufflevector <16 x i8> %i.iy, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ao

bb.ao:                                            ; preds = %bb.aq, %_RNCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2B_5types3any5PyAnyEB2w_NtB1w_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB2B_3err5PyErrE0B40_.exit.i
  %.sroa.011.0.i.i.i.i7.i = phi i64 [ 0, %_RNCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2B_5types3any5PyAnyEB2w_NtB1w_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB2B_3err5PyErrE0B40_.exit.i ], [ %i.jq, %bb.aq ]
  %.pn.i.i.i8.i = phi i64 [ %i.iv, %_RNCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2B_5types3any5PyAnyEB2w_NtB1w_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB2B_3err5PyErrE0B40_.exit.i ], [ %i.jr, %bb.aq ]
  %.sroa.01.0.i.i.i.i9.i = and i64 %.pn.i.i.i8.i, %i.ej ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.sroa.01.0.i.i.i.i9.i
  %.sroa.0.0.copyload.i24.i.i.i10.i = load <16 x i8>, ptr %i.ja, align 1, !noalias !27122 ; 2 uses
  %i.jb = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i10.i, %i.iz
  %i.jc = bitcast <16 x i1> %i.jb to i16          ; 2 uses
  %.not.i.not30.i.i.i11.i = icmp eq i16 %i.jc, 0
  br i1 %.not.i.not30.i.i.i11.i, label %._crit_edge.i.i.i16.i, label %.lr.ph.i.i.i12.i

.lr.ph.i.i.i12.i:                                 ; preds = %bb.ao, %bb.ap
  %.sroa.05.0.i31.i.i.i13.i = phi i16 [ %i.jp, %bb.ap ], [ %i.jc, %bb.ao ] ; 3 uses
  %i.jd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i13.i, i1 true)
  %i.je = zext nneg i16 %i.jd to i64
  %i.jf = add i64 %.sroa.01.0.i.i.i.i9.i, %i.je
  %i.jg = and i64 %i.jf, %i.ej
  %i.jh = sub nsw i64 0, %i.jg
  %i.ji = getelementptr inbounds [16 x i8], ptr %i.ek, i64 %i.jh ; 2 uses
  %i.jj = getelementptr inbounds i8, ptr %i.ji, i64 -16
  %.val2.i.i.i.i14.i = load i32, ptr %i.jj, align 4, !noalias !27123, !noundef !67
  %i.jk = icmp eq i32 %.val31.i, %.val2.i.i.i.i14.i
  br i1 %i.jk, label %bb.ar, label %bb.ap, !prof !77

._crit_edge.i.i.i16.i:                            ; preds = %bb.ap, %bb.ao
  %i.jl = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i10.i, splat (i8 -1)
  %i.jm = bitcast <16 x i1> %i.jl to i16
  %i.jn = icmp eq i16 %i.jm, 0
  br i1 %i.jn, label %bb.aq, label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_.exit, !prof !71

bb.ap:                                            ; preds = %.lr.ph.i.i.i12.i
  %i.jo = add i16 %.sroa.05.0.i31.i.i.i13.i, -1
  %i.jp = and i16 %i.jo, %.sroa.05.0.i31.i.i.i13.i ; 2 uses
  %.not.i.not.i.i.i15.i = icmp eq i16 %i.jp, 0
  br i1 %.not.i.not.i.i.i15.i, label %._crit_edge.i.i.i16.i, label %.lr.ph.i.i.i12.i

bb.aq:                                            ; preds = %._crit_edge.i.i.i16.i
  %i.jq = add i64 %.sroa.011.0.i.i.i.i7.i, 16     ; 2 uses
  %i.jr = add i64 %.sroa.01.0.i.i.i.i9.i, %i.jq
  br label %bb.ao

bb.ar:                                            ; preds = %.lr.ph.i.i.i12.i
  br i1 %.not.i.i.i.not, label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_.exit.thread, label %.split14

.split14:                                         ; preds = %bb.ar
  %i.js = getelementptr inbounds i8, ptr %i.ji, i64 -8
  %.val.i.i.i.i.i = load i64, ptr %i.js, align 8, !noalias !27101, !noundef !67
  %.val1.i.i.i.i.i = load i64, ptr %i.io, align 8, !noalias !27101, !noundef !67
  %i.jt = icmp ult i64 %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  br i1 %i.jt, label %bb.as, label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_.exit.thread

_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_.exit: ; preds = %._crit_edge.i.i.i16.i
  br i1 %.not.i.i.i.not, label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_.exit.thread, label %bb.as

bb.as:                                            ; preds = %.split14, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_.exit
  br label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_.exit.thread

_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_.exit.thread: ; preds = %bb.ar, %.split14, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_.exit, %bb.as
  %.sroa.0.0.i.i.i.i13 = phi i1 [ true, %bb.as ], [ false, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_.exit ], [ false, %.split14 ], [ false, %bb.ar ] ; 2 uses
  %i.ju = phi i32 [ %.sroa.0.0.val.i, %bb.as ], [ %.val31.i, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_.exit ], [ %.val31.i, %.split14 ], [ %.val31.i, %bb.ar ]
  store i32 %i.ju, ptr %.sroa.18.318.i, align 4, !alias.scope !27101
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.18.318.i, i64 4 ; 2 uses
  %i.jw = zext i1 %.sroa.0.0.i.i.i.i13 to i64
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.020.i, i64 %i.jw ; 2 uses
  %i.jy = xor i1 %.sroa.0.0.i.i.i.i13, true
  %i.jz = zext i1 %i.jy to i64
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.219.i, i64 %i.jz ; 3 uses
  %i.kb = icmp ult ptr %i.ka, %i.dp
  %i.kc = icmp ult ptr %i.jx, %i.cy
  %or.cond30.i = select i1 %i.kb, i1 %i.kc, i1 false
  br i1 %or.cond30.i, label %bb.ak, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_.exit.thread, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_.exit.thread.us, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_.exit75.thread, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_.exit75.thread.us, %.lr.ph.i45.split.us.split.us, %bb.aa, %bb.z
  %.sroa.18.1.i = phi ptr [ %i.ed, %.lr.ph.i45.split.us.split.us ], [ %i.cx, %bb.z ], [ %i.cw, %bb.aa ], [ %i.ee, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_.exit.thread.us ], [ %i.hf, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_.exit75.thread ], [ %i.cx, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_.exit75.thread.us ], [ %i.jv, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_.exit.thread ]
  %.sroa.10.1.i = phi ptr [ %i.dp, %.lr.ph.i45.split.us.split.us ], [ %i.db, %bb.z ], [ %i.dp, %bb.aa ], [ %i.dp, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_.exit.thread.us ], [ %i.he, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_.exit75.thread ], [ %i.dh, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_.exit75.thread.us ], [ %i.dp, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_.exit.thread ]
  %.sroa.0.015.i = phi ptr [ %i.e, %.lr.ph.i45.split.us.split.us ], [ %2, %bb.z ], [ %2, %bb.aa ], [ %i.ef, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_.exit.thread.us ], [ %2, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_.exit75.thread ], [ %2, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_.exit75.thread.us ], [ %i.ka, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_.exit.thread ] ; 2 uses
  %i.kd = ptrtoint ptr %.sroa.10.1.i to i64
  %i.ke = ptrtoint ptr %.sroa.0.015.i to i64
  %i.kf = sub i64 %i.kd, %i.ke
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.sroa.18.1.i, ptr align 4 %.sroa.0.015.i, i64 %i.kf, i1 false), !noalias !27124
  %i.kg = add i64 %i.cq, %i.ci
  store i64 %i.kg, ptr %i.cp, align 8
  store i64 %i.ck, ptr %i.cr, align 8
  %i.kh = icmp samesign ult i64 %storemerge74, 576460752303423488
  tail call void @llvm.assume(i1 %i.kh)
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.kj = xor i64 %.sroa.4.0.i41.ph, -1
  %i.kk = add nsw i64 %storemerge74, %i.kj
  %i.kl = shl nuw nsw i64 %i.kk, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ch, ptr nonnull align 8 %i.ki, i64 %i.kl, i1 false), !noalias !27125
  %i.km = add nsw i64 %storemerge74, -1           ; 3 uses
  store i64 %i.km, ptr %i.d, align 8
  %i.kn = icmp samesign ugt i64 %storemerge74, 2
  br i1 %i.kn, label %.lr.ph, label %._crit_edge

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit36: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i35, %bb.f
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i8 0, 3) i8 @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort10merge_sortNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBN_INtB4_16ParallelSliceMutBN_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2y_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtBP_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5y_5types3any5PyAnyEB5t_NtBR_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0EB6W_(ptr noalias nofree noundef nonnull align 4 captures(address) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noundef %2, ptr nofree readonly captures(none) %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i64 0, ptr %i.d, align 8
  %.not81 = icmp eq i64 %1, 0
  br i1 %.not81, label %.loopexit22, label %.lr.ph80

.lr.ph80:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = xor i64 %i.a, -1
  %i.g = add i64 %i.a, 4
  br label %bb.b

.loopexit22:                                      ; preds = %._crit_edge, %bb.a, %bb.g
  %.sroa.0.0 = phi i8 [ %., %bb.g ], [ 2, %bb.a ], [ 2, %._crit_edge ]
  %.val30 = load i64, ptr %i.b, align 8           ; 2 uses
  %i.h = icmp eq i64 %.val30, 0
  br i1 %i.h, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i: ; preds = %.loopexit22
  %.val31 = load ptr, ptr %i.c, align 8, !nonnull !67, !noundef !67
  %i.i = shl nuw i64 %.val30, 4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val31, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %.loopexit22, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i8 %.sroa.0.0

bb.b:                                             ; preds = %.lr.ph80, %._crit_edge
  %i.j = phi ptr [ inttoptr (i64 8 to ptr), %.lr.ph80 ], [ %i.be, %._crit_edge ]
  %i.k = phi i64 [ 0, %.lr.ph80 ], [ %i.ce, %._crit_edge ] ; 3 uses
  %.sroa.02.078 = phi i64 [ 0, %.lr.ph80 ], [ %.sroa.0.0.i37, %._crit_edge ] ; 10 uses
  %i.l = sub nuw nsw i64 %1, %.sroa.02.078        ; 9 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.02.078 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27198)
  %i.n = icmp samesign ult i64 %i.l, 2
  br i1 %i.n, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val17.i = load i32, ptr %i.o, align 4, !alias.scope !27198 ; 3 uses
  %.val18.i = load i32, ptr %i.m, align 4, !alias.scope !27198
  %i.p = tail call fastcc noundef zeroext i1 @_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_(ptr nonnull readonly %.0.val, i32 %.val17.i, i32 %.val18.i) #64, !noalias !27198
  %.not11.i = icmp eq i64 %i.l, 2                 ; 2 uses
  br i1 %i.p, label %.preheader.i, label %.preheader1.i

.preheader1.i:                                    ; preds = %bb.c
  br i1 %.not11.i, label %.loopexit, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.c
  br i1 %.not11.i, label %.loopexit, label %.lr.ph7.i

.lr.ph.i:                                         ; preds = %.preheader1.i, %bb.d
  %.val15.i = phi i32 [ %.val14.i, %bb.d ], [ %.val17.i, %.preheader1.i ]
  %.sroa.01.03.i = phi i64 [ %i.s, %bb.d ], [ 2, %.preheader1.i ] ; 4 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.01.03.i
  %3 = add nsw i64 %.sroa.01.03.i, -1
  %4 = icmp samesign ult i64 %3, %i.l
  tail call void @llvm.assume(i1 %4)
  %.val14.i = load i32, ptr %i.q, align 4, !alias.scope !27198 ; 2 uses
  %i.r = tail call fastcc noundef zeroext i1 @_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_(ptr nonnull readonly %.0.val, i32 %.val14.i, i32 %.val15.i) #64, !noalias !27198
  br i1 %i.r, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.s = add nuw nsw i64 %.sroa.01.03.i, 1        ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.s, %i.l
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph7.i:                                        ; preds = %.preheader.i, %bb.e
  %.val12.i = phi i32 [ %.val11.i, %bb.e ], [ %.val17.i, %.preheader.i ]
  %.sroa.01.16.i = phi i64 [ %i.v, %bb.e ], [ 2, %.preheader.i ] ; 4 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.01.16.i
  %5 = add nsw i64 %.sroa.01.16.i, -1
  %6 = icmp samesign ult i64 %5, %i.l
  tail call void @llvm.assume(i1 %6)
  %.val11.i = load i32, ptr %i.t, align 4, !alias.scope !27198 ; 2 uses
  %i.u = tail call fastcc noundef zeroext i1 @_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_(ptr nonnull readonly %.0.val, i32 %.val11.i, i32 %.val12.i) #64, !noalias !27198
  br i1 %i.u, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %.lr.ph7.i
  %i.v = add nuw nsw i64 %.sroa.01.16.i, 1        ; 2 uses
  %exitcond14.not.i = icmp eq i64 %i.v, %i.l
  br i1 %exitcond14.not.i, label %.loopexit, label %.lr.ph7.i

.loopexit23:                                      ; preds = %bb.k, %bb.n
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp:                               ; preds = %.invoke229, %.invoke, %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp, %.loopexit23
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit23 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.val = load i64, ptr %i.b, align 8             ; 2 uses
  %i.w = icmp eq i64 %.val, 0
  br i1 %i.w, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit36, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i35

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i35: ; preds = %bb.f
  %.val29 = load ptr, ptr %i.c, align 8, !nonnull !67, !noundef !67
  %i.x = shl nuw i64 %.val, 4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val29, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) 8) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit36

.loopexit:                                        ; preds = %bb.d, %.lr.ph.i, %bb.e, %.lr.ph7.i, %.preheader.i, %.preheader1.i, %bb.b
  %.sroa.4.0.i = phi i1 [ false, %bb.b ], [ true, %.preheader.i ], [ true, %bb.e ], [ false, %.preheader1.i ], [ true, %.lr.ph7.i ], [ false, %.lr.ph.i ], [ false, %bb.d ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %i.l, %bb.b ], [ 2, %.preheader.i ], [ %i.l, %bb.e ], [ 2, %.preheader1.i ], [ %.sroa.01.16.i, %.lr.ph7.i ], [ %i.l, %bb.d ], [ %.sroa.01.03.i, %.lr.ph.i ] ; 7 uses
  %i.y = add i64 %.sroa.0.0.i, %.sroa.02.078      ; 8 uses
  %i.z = icmp eq i64 %.sroa.02.078, 0
  %i.aa = icmp eq i64 %i.y, %1
  %or.cond = and i1 %i.z, %i.aa
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.loopexit
  %. = zext i1 %.sroa.4.0.i to i8
  br label %.loopexit22

bb.h:                                             ; preds = %.loopexit
  br i1 %.sroa.4.0.i, label %bb.l, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit

_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i, %middle.block, %bb.m, %bb.h
  %i.ab = icmp uge i64 %i.y, %.sroa.02.078
  %i.ac = icmp ule i64 %i.y, %1
  %or.cond.i = and i1 %i.ab, %i.ac
  br i1 %or.cond.i, label %bb.j, label %bb.i, !prof !125

bb.i:                                             ; preds = %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @586, i64 noundef 44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @587) #60
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit
  %i.ad = icmp samesign ult i64 %.sroa.0.0.i, 10
  %i.ae = icmp samesign ult i64 %i.y, %1
  %or.cond3.i = and i1 %i.ad, %i.ae
  br i1 %or.cond3.i, label %bb.k, label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2I_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5I_5types3any5PyAnyEB5D_NtB11_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0EB77_.exit

bb.k:                                             ; preds = %bb.j
  %i.af = add nuw nsw i64 %.sroa.02.078, 10
  %i.ag = tail call i64 @llvm.umin.i64(i64 %i.af, i64 range(i64 0, 2305843009213693952) %1) ; 2 uses
  %i.ah = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 1)
  %i.ai = sub i64 %i.ag, %.sroa.02.078            ; 2 uses
  invoke fastcc void @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort25insertion_sort_shift_leftNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSB12_INtB4_16ParallelSliceMutB12_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2P_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB14_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5Q_5types3any5PyAnyEB5L_NtB16_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0EB7f_(ptr noalias nofree noundef nonnull align 4 %i.m, i64 noundef %i.ai, i64 noundef %i.ah, ptr readonly %.0.val) #62
          to label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2I_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5I_5types3any5PyAnyEB5D_NtB11_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0EB77_.exit unwind label %.loopexit23

bb.l:                                             ; preds = %bb.h
  %i.aj = icmp ult i64 %i.y, %.sroa.02.078
  %.not = icmp ugt i64 %i.y, %1
  %or.cond27 = or i1 %i.aj, %.not
  br i1 %or.cond27, label %.invoke, label %bb.m, !prof !90

.invoke:                                          ; preds = %bb.l, %bb.x
  %i.ak = phi i64 [ %i.ck, %bb.x ], [ %.sroa.02.078, %bb.l ]
  %i.al = phi i64 [ %i.ct, %bb.x ], [ %i.y, %bb.l ]
  %i.am = phi ptr [ @577, %bb.x ], [ @578, %bb.l ]
  invoke void @_RNvNtNtCslwFuT2d6ECx_4core5slice5index16slice_index_fail(i64 noundef %i.ak, i64 noundef %i.al, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.am) #61
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.an = lshr i64 %.sroa.0.0.i, 1                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27200)
  %.not.i = icmp eq i64 %i.an, 0
  br i1 %.not.i, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i: ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0.0.i ; 2 uses
  %min.iters.check = icmp samesign ult i64 %.sroa.0.0.i, 16
  br i1 %min.iters.check, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i
  %n.vec = and i64 %i.an, 4611686018427387896     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ap = xor i64 %index, -1
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index ; 3 uses
  %i.ar = getelementptr [4 x i8], ptr %i.ao, i64 %i.ap ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.aq, align 4, !alias.scope !27199, !noalias !27200
  %wide.load276 = load <4 x i32>, ptr %i.as, align 4, !alias.scope !27199, !noalias !27200
  %i.at = getelementptr i8, ptr %i.ar, i64 -12    ; 2 uses
  %i.au = getelementptr i8, ptr %i.ar, i64 -28    ; 2 uses
  %wide.load277 = load <4 x i32>, ptr %i.at, align 4, !alias.scope !27200, !noalias !27199
  %wide.load278 = load <4 x i32>, ptr %i.au, align 4, !alias.scope !27200, !noalias !27199
  %reverse = shufflevector <4 x i32> %wide.load277, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse279 = shufflevector <4 x i32> %wide.load278, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %i.aq, align 4, !alias.scope !27199, !noalias !27200
  store <4 x i32> %reverse279, ptr %i.as, align 4, !alias.scope !27199, !noalias !27200
  %reverse280 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse281 = shufflevector <4 x i32> %wide.load276, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse280, ptr %i.at, align 4, !alias.scope !27200, !noalias !27199
  store <4 x i32> %reverse281, ptr %i.au, align 4, !alias.scope !27200, !noalias !27199
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !27131

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i, %middle.block
  %.sroa.0.016.i.ph = phi i64 [ 0, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i
  %.sroa.0.016.i = phi i64 [ %i.bb, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i ], [ %.sroa.0.016.i.ph, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader ] ; 3 uses
  %i.aw = xor i64 %.sroa.0.016.i, -1
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0.016.i ; 2 uses
  %i.ay = getelementptr [4 x i8], ptr %i.ao, i64 %i.aw ; 2 uses
  %i.az = load i32, ptr %i.ax, align 4, !alias.scope !27199, !noalias !27200, !noundef !67
  %i.ba = load i32, ptr %i.ay, align 4, !alias.scope !27200, !noalias !27199
  store i32 %i.ba, ptr %i.ax, align 4, !alias.scope !27199, !noalias !27200
  store i32 %i.az, ptr %i.ay, align 4, !alias.scope !27200, !noalias !27199
  %i.bb = add nuw nsw i64 %.sroa.0.016.i, 1       ; 2 uses
  %exitcond.not.i39 = icmp eq i64 %i.bb, %i.an
  br i1 %exitcond.not.i39, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i, !llvm.loop !27132

_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2I_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5I_5types3any5PyAnyEB5D_NtB11_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0EB77_.exit: ; preds = %bb.j, %bb.k
  %.pre-phi = phi i64 [ %i.ai, %bb.k ], [ %.sroa.0.0.i, %bb.j ]
  %.sroa.0.0.i37 = phi i64 [ %i.ag, %bb.k ], [ %i.y, %bb.j ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27201)
  %i.bc = load i64, ptr %i.b, align 8, !range !70, !alias.scope !27201, !noundef !67
  %i.bd = icmp eq i64 %i.k, %i.bc
  br i1 %i.bd, label %bb.n, label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit

bb.n:                                             ; preds = %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2I_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5I_5types3any5PyAnyEB5D_NtB11_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0EB77_.exit
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #62
          to label %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge unwind label %.loopexit23

._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge: ; preds = %bb.n
  %.pre = load ptr, ptr %i.c, align 8, !alias.scope !27201
  br label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit

_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit: ; preds = %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2I_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5I_5types3any5PyAnyEB5D_NtB11_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0EB77_.exit
  %i.be = phi ptr [ %.pre, %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge ], [ %i.j, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2I_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5I_5types3any5PyAnyEB5D_NtB11_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0EB77_.exit ] ; 6 uses
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %i.k ; 2 uses
  store i64 %.pre-phi, ptr %i.bf, align 8, !noalias !27201
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i64 %.sroa.02.078, ptr %i.bg, align 8, !noalias !27201
  %i.bh = add i64 %i.k, 1                         ; 4 uses
  store i64 %i.bh, ptr %i.d, align 8
  %i.bi = icmp samesign ugt i64 %i.bh, 1
  br i1 %i.bi, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit
  %storemerge74 = phi i64 [ %i.km, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit ], [ %i.bh, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit ] ; 14 uses
  %i.bj = getelementptr [16 x i8], ptr %i.be, i64 %storemerge74 ; 5 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 -16
  %i.bl = getelementptr i8, ptr %i.bj, i64 -8
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !27202, !noundef !67
  %i.bn = load i64, ptr %i.bk, align 8, !alias.scope !27202, !noundef !67 ; 4 uses
  %i.bo = add i64 %i.bn, %i.bm
  %i.bp = icmp eq i64 %i.bo, %1
  br i1 %i.bp, label %bb.q, label %bb.o

bb.o:                                             ; preds = %.lr.ph
  %i.bq = getelementptr i8, ptr %i.bj, i64 -32
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !27202, !noundef !67 ; 3 uses
  %.not.i43 = icmp ugt i64 %i.br, %i.bn
  br i1 %.not.i43, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.not14.i = icmp eq i64 %storemerge74, 2
  br i1 %.not14.i, label %._crit_edge, label %bb.s

bb.q:                                             ; preds = %bb.o, %.lr.ph
end_hunk_3
begin_hunk_4_@_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort10merge_sortNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBN_INtB4_16ParallelSliceMutBN_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2y_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtBP_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5y_5types3any5PyAnyEB5t_NtBR_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0EB6W_:bb.a
  br label %bb.al

bb.al:                                            ; preds = %bb.an, %bb.ak
  %.sroa.011.0.i.i.i.i.i = phi i64 [ 0, %bb.ak ], [ %i.im, %bb.an ]
  %.pn.i.i.i.i = phi i64 [ %i.hr, %bb.ak ], [ %i.in, %bb.an ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i, %i.ej ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i = load <16 x i8>, ptr %i.hw, align 1, !noalias !27222 ; 2 uses
  %i.hx = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, %i.hv
  %i.hy = bitcast <16 x i1> %i.hx to i16          ; 2 uses
  %.not.i.not30.i.i.i.i = icmp eq i16 %i.hy, 0
  br i1 %.not.i.not30.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.al, %bb.am
  %.sroa.05.0.i31.i.i.i.i = phi i16 [ %i.il, %bb.am ], [ %i.hy, %bb.al ] ; 3 uses
  %i.hz = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i.i, i1 true)
  %i.ia = zext nneg i16 %i.hz to i64
  %i.ib = add i64 %.sroa.01.0.i.i.i.i.i, %i.ia
  %.fr172 = freeze i64 %i.ib
  %i.ic = and i64 %.fr172, %i.ej
  %i.id = sub i64 0, %i.ic
  %i.ie = getelementptr [16 x i8], ptr %i.ek, i64 %i.id ; 2 uses
  %i.if = getelementptr inbounds i8, ptr %i.ie, i64 -16
  %.val2.i.i.i.i.i = load i32, ptr %i.if, align 4, !noalias !27223, !noundef !67
  %i.ig = icmp eq i32 %.sroa.0.0.val.i, %.val2.i.i.i.i.i
  br i1 %i.ig, label %_RNCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2B_5types3any5PyAnyEB2w_NtB1w_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0B40_.exit.i, label %bb.am, !prof !77

._crit_edge.i.i.i.i:                              ; preds = %bb.am, %bb.al
  %i.ih = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, splat (i8 -1)
  %i.ii = bitcast <16 x i1> %i.ih to i16
  %i.ij = icmp eq i16 %i.ii, 0
  br i1 %i.ij, label %bb.an, label %_RNCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2B_5types3any5PyAnyEB2w_NtB1w_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0B40_.exit.i, !prof !71

bb.am:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ik = add i16 %.sroa.05.0.i31.i.i.i.i, -1
  %i.il = and i16 %i.ik, %.sroa.05.0.i31.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.il, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.an:                                            ; preds = %._crit_edge.i.i.i.i
  %i.im = add i64 %.sroa.011.0.i.i.i.i.i, 16      ; 2 uses
  %i.in = add i64 %.sroa.01.0.i.i.i.i.i, %i.im
  br label %bb.al

_RNCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2B_5types3any5PyAnyEB2w_NtB1w_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0B40_.exit.i: ; preds = %._crit_edge.i.i.i.i, %.lr.ph.i.i.i.i
  %.fr = phi ptr [ %i.ie, %.lr.ph.i.i.i.i ], [ null, %._crit_edge.i.i.i.i ] ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %.fr, null        ; 2 uses
  %i.io = getelementptr inbounds i8, ptr %.fr, i64 -8
  %i.ip = zext i32 %.val31.i to i64
  %i.iq = xor i64 %.val.i.i.i, %i.ip
  %i.ir = zext i64 %i.iq to i128
  %i.is = mul nuw i128 %i.dw, %i.ir               ; 2 uses
  %i.it = lshr i128 %i.is, 64
  %i.iu = xor i128 %i.it, %i.is
  %i.iv = trunc i128 %i.iu to i64                 ; 2 uses
  %i.iw = lshr i64 %i.iv, 57
  %i.ix = trunc nuw nsw i64 %i.iw to i8
  %i.iy = insertelement <16 x i8> poison, i8 %i.ix, i64 0
  %i.iz = shufflevector <16 x i8> %i.iy, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ao

bb.ao:                                            ; preds = %bb.aq, %_RNCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2B_5types3any5PyAnyEB2w_NtB1w_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0B40_.exit.i
  %.sroa.011.0.i.i.i.i7.i = phi i64 [ 0, %_RNCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2B_5types3any5PyAnyEB2w_NtB1w_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0B40_.exit.i ], [ %i.jq, %bb.aq ]
  %.pn.i.i.i8.i = phi i64 [ %i.iv, %_RNCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2B_5types3any5PyAnyEB2w_NtB1w_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0B40_.exit.i ], [ %i.jr, %bb.aq ]
  %.sroa.01.0.i.i.i.i9.i = and i64 %.pn.i.i.i8.i, %i.ej ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.sroa.01.0.i.i.i.i9.i
  %.sroa.0.0.copyload.i24.i.i.i10.i = load <16 x i8>, ptr %i.ja, align 1, !noalias !27224 ; 2 uses
  %i.jb = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i10.i, %i.iz
  %i.jc = bitcast <16 x i1> %i.jb to i16          ; 2 uses
  %.not.i.not30.i.i.i11.i = icmp eq i16 %i.jc, 0
  br i1 %.not.i.not30.i.i.i11.i, label %._crit_edge.i.i.i16.i, label %.lr.ph.i.i.i12.i

.lr.ph.i.i.i12.i:                                 ; preds = %bb.ao, %bb.ap
  %.sroa.05.0.i31.i.i.i13.i = phi i16 [ %i.jp, %bb.ap ], [ %i.jc, %bb.ao ] ; 3 uses
  %i.jd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i13.i, i1 true)
  %i.je = zext nneg i16 %i.jd to i64
  %i.jf = add i64 %.sroa.01.0.i.i.i.i9.i, %i.je
  %i.jg = and i64 %i.jf, %i.ej
  %i.jh = sub nsw i64 0, %i.jg
  %i.ji = getelementptr inbounds [16 x i8], ptr %i.ek, i64 %i.jh ; 2 uses
  %i.jj = getelementptr inbounds i8, ptr %i.ji, i64 -16
  %.val2.i.i.i.i14.i = load i32, ptr %i.jj, align 4, !noalias !27225, !noundef !67
  %i.jk = icmp eq i32 %.val31.i, %.val2.i.i.i.i14.i
  br i1 %i.jk, label %bb.ar, label %bb.ap, !prof !77

._crit_edge.i.i.i16.i:                            ; preds = %bb.ap, %bb.ao
  %i.jl = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i10.i, splat (i8 -1)
  %i.jm = bitcast <16 x i1> %i.jl to i16
  %i.jn = icmp eq i16 %i.jm, 0
  br i1 %i.jn, label %bb.aq, label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_.exit, !prof !71

bb.ap:                                            ; preds = %.lr.ph.i.i.i12.i
  %i.jo = add i16 %.sroa.05.0.i31.i.i.i13.i, -1
  %i.jp = and i16 %i.jo, %.sroa.05.0.i31.i.i.i13.i ; 2 uses
  %.not.i.not.i.i.i15.i = icmp eq i16 %i.jp, 0
  br i1 %.not.i.not.i.i.i15.i, label %._crit_edge.i.i.i16.i, label %.lr.ph.i.i.i12.i

bb.aq:                                            ; preds = %._crit_edge.i.i.i16.i
  %i.jq = add i64 %.sroa.011.0.i.i.i.i7.i, 16     ; 2 uses
  %i.jr = add i64 %.sroa.01.0.i.i.i.i9.i, %i.jq
  br label %bb.ao

bb.ar:                                            ; preds = %.lr.ph.i.i.i12.i
  br i1 %.not.i.i.i.not, label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_.exit.thread, label %.split14

.split14:                                         ; preds = %bb.ar
  %i.js = getelementptr inbounds i8, ptr %i.ji, i64 -8
  %.val.i.i.i.i.i = load i64, ptr %i.js, align 8, !noalias !27203, !noundef !67
  %.val1.i.i.i.i.i = load i64, ptr %i.io, align 8, !noalias !27203, !noundef !67
  %i.jt = icmp ult i64 %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  br i1 %i.jt, label %bb.as, label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_.exit.thread

_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_.exit: ; preds = %._crit_edge.i.i.i16.i
  br i1 %.not.i.i.i.not, label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_.exit.thread, label %bb.as

bb.as:                                            ; preds = %.split14, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_.exit
  br label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_.exit.thread

_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_.exit.thread: ; preds = %bb.ar, %.split14, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_.exit, %bb.as
  %.sroa.0.0.i.i.i.i13 = phi i1 [ true, %bb.as ], [ false, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_.exit ], [ false, %.split14 ], [ false, %bb.ar ] ; 2 uses
  %i.ju = phi i32 [ %.sroa.0.0.val.i, %bb.as ], [ %.val31.i, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_.exit ], [ %.val31.i, %.split14 ], [ %.val31.i, %bb.ar ]
  store i32 %i.ju, ptr %.sroa.18.318.i, align 4, !alias.scope !27203
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.18.318.i, i64 4 ; 2 uses
  %i.jw = zext i1 %.sroa.0.0.i.i.i.i13 to i64
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.020.i, i64 %i.jw ; 2 uses
  %i.jy = xor i1 %.sroa.0.0.i.i.i.i13, true
  %i.jz = zext i1 %i.jy to i64
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.219.i, i64 %i.jz ; 3 uses
  %i.kb = icmp ult ptr %i.ka, %i.dp
  %i.kc = icmp ult ptr %i.jx, %i.cy
  %or.cond30.i = select i1 %i.kb, i1 %i.kc, i1 false
  br i1 %or.cond30.i, label %bb.ak, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_.exit.thread, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_.exit.thread.us, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_.exit75.thread, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_.exit75.thread.us, %.lr.ph.i45.split.us.split.us, %bb.aa, %bb.z
  %.sroa.18.1.i = phi ptr [ %i.ed, %.lr.ph.i45.split.us.split.us ], [ %i.cx, %bb.z ], [ %i.cw, %bb.aa ], [ %i.ee, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_.exit.thread.us ], [ %i.hf, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_.exit75.thread ], [ %i.cx, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_.exit75.thread.us ], [ %i.jv, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_.exit.thread ]
  %.sroa.10.1.i = phi ptr [ %i.dp, %.lr.ph.i45.split.us.split.us ], [ %i.db, %bb.z ], [ %i.dp, %bb.aa ], [ %i.dp, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_.exit.thread.us ], [ %i.he, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_.exit75.thread ], [ %i.dh, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_.exit75.thread.us ], [ %i.dp, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_.exit.thread ]
  %.sroa.0.015.i = phi ptr [ %i.e, %.lr.ph.i45.split.us.split.us ], [ %2, %bb.z ], [ %2, %bb.aa ], [ %i.ef, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_.exit.thread.us ], [ %2, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_.exit75.thread ], [ %2, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_.exit75.thread.us ], [ %i.ka, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_.exit.thread ] ; 2 uses
  %i.kd = ptrtoint ptr %.sroa.10.1.i to i64
  %i.ke = ptrtoint ptr %.sroa.0.015.i to i64
  %i.kf = sub i64 %i.kd, %i.ke
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.sroa.18.1.i, ptr align 4 %.sroa.0.015.i, i64 %i.kf, i1 false), !noalias !27226
  %i.kg = add i64 %i.cq, %i.ci
  store i64 %i.kg, ptr %i.cp, align 8
  store i64 %i.ck, ptr %i.cr, align 8
  %i.kh = icmp samesign ult i64 %storemerge74, 576460752303423488
  tail call void @llvm.assume(i1 %i.kh)
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.kj = xor i64 %.sroa.4.0.i41.ph, -1
  %i.kk = add nsw i64 %storemerge74, %i.kj
  %i.kl = shl nuw nsw i64 %i.kk, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ch, ptr nonnull align 8 %i.ki, i64 %i.kl, i1 false), !noalias !27227
  %i.km = add nsw i64 %storemerge74, -1           ; 3 uses
  store i64 %i.km, ptr %i.d, align 8
  %i.kn = icmp samesign ugt i64 %storemerge74, 2
  br i1 %i.kn, label %.lr.ph, label %._crit_edge

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit36: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i35, %bb.f
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i8 0, 3) i8 @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort10merge_sortNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBN_INtB4_16ParallelSliceMutBN_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtBP_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB54_5types3any5PyAnyEB4Z_EE0E0ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 4 captures(address) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noundef %2, ptr nofree readonly captures(none) %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i64 0, ptr %i.d, align 8
  %.not93 = icmp eq i64 %1, 0
  br i1 %.not93, label %.loopexit34, label %.lr.ph92

.lr.ph92:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = xor i64 %i.a, -1
  %i.g = add i64 %i.a, 4
  br label %bb.b

.loopexit34:                                      ; preds = %._crit_edge, %bb.a, %bb.g
  %.sroa.0.0 = phi i8 [ %., %bb.g ], [ 2, %bb.a ], [ 2, %._crit_edge ]
  %.val30 = load i64, ptr %i.b, align 8           ; 2 uses
  %i.h = icmp eq i64 %.val30, 0
  br i1 %i.h, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i: ; preds = %.loopexit34
  %.val31 = load ptr, ptr %i.c, align 8, !nonnull !67, !noundef !67
  %i.i = shl nuw i64 %.val30, 4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val31, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %.loopexit34, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i8 %.sroa.0.0

bb.b:                                             ; preds = %.lr.ph92, %._crit_edge
  %i.j = phi ptr [ inttoptr (i64 8 to ptr), %.lr.ph92 ], [ %i.be, %._crit_edge ]
  %i.k = phi i64 [ 0, %.lr.ph92 ], [ %i.ce, %._crit_edge ] ; 3 uses
  %.sroa.02.090 = phi i64 [ 0, %.lr.ph92 ], [ %.sroa.0.0.i37, %._crit_edge ] ; 10 uses
  %i.l = sub nuw nsw i64 %1, %.sroa.02.090        ; 9 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.02.090 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27300)
  %i.n = icmp samesign ult i64 %i.l, 2
  br i1 %i.n, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val17.i = load i32, ptr %i.o, align 4, !alias.scope !27300 ; 3 uses
  %.val18.i = load i32, ptr %i.m, align 4, !alias.scope !27300
  %i.p = tail call fastcc noundef zeroext i1 @_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx(ptr nonnull readonly %.0.val, i32 %.val17.i, i32 %.val18.i) #64, !noalias !27300
  %.not11.i = icmp eq i64 %i.l, 2                 ; 2 uses
  br i1 %i.p, label %.preheader.i, label %.preheader1.i

.preheader1.i:                                    ; preds = %bb.c
  br i1 %.not11.i, label %.loopexit, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.c
  br i1 %.not11.i, label %.loopexit, label %.lr.ph7.i

.lr.ph.i:                                         ; preds = %.preheader1.i, %bb.d
  %.val15.i = phi i32 [ %.val14.i, %bb.d ], [ %.val17.i, %.preheader1.i ]
  %.sroa.01.03.i = phi i64 [ %i.s, %bb.d ], [ 2, %.preheader1.i ] ; 4 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.01.03.i
  %3 = add nsw i64 %.sroa.01.03.i, -1
  %4 = icmp samesign ult i64 %3, %i.l
  tail call void @llvm.assume(i1 %4)
  %.val14.i = load i32, ptr %i.q, align 4, !alias.scope !27300 ; 2 uses
  %i.r = tail call fastcc noundef zeroext i1 @_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx(ptr nonnull readonly %.0.val, i32 %.val14.i, i32 %.val15.i) #64, !noalias !27300
  br i1 %i.r, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.s = add nuw nsw i64 %.sroa.01.03.i, 1        ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.s, %i.l
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph7.i:                                        ; preds = %.preheader.i, %bb.e
  %.val12.i = phi i32 [ %.val11.i, %bb.e ], [ %.val17.i, %.preheader.i ]
  %.sroa.01.16.i = phi i64 [ %i.v, %bb.e ], [ 2, %.preheader.i ] ; 4 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.01.16.i
  %5 = add nsw i64 %.sroa.01.16.i, -1
  %6 = icmp samesign ult i64 %5, %i.l
  tail call void @llvm.assume(i1 %6)
  %.val11.i = load i32, ptr %i.t, align 4, !alias.scope !27300 ; 2 uses
  %i.u = tail call fastcc noundef zeroext i1 @_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx(ptr nonnull readonly %.0.val, i32 %.val11.i, i32 %.val12.i) #64, !noalias !27300
  br i1 %i.u, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %.lr.ph7.i
  %i.v = add nuw nsw i64 %.sroa.01.16.i, 1        ; 2 uses
  %exitcond14.not.i = icmp eq i64 %i.v, %i.l
  br i1 %exitcond14.not.i, label %.loopexit, label %.lr.ph7.i

.loopexit35:                                      ; preds = %bb.k, %bb.n
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp:                               ; preds = %.invoke245, %.invoke, %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp, %.loopexit35
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit35 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.val = load i64, ptr %i.b, align 8             ; 2 uses
  %i.w = icmp eq i64 %.val, 0
  br i1 %i.w, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit36, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i35

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i35: ; preds = %bb.f
  %.val29 = load ptr, ptr %i.c, align 8, !nonnull !67, !noundef !67
  %i.x = shl nuw i64 %.val, 4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val29, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) 8) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit36

.loopexit:                                        ; preds = %bb.d, %.lr.ph.i, %bb.e, %.lr.ph7.i, %.preheader.i, %.preheader1.i, %bb.b
  %.sroa.4.0.i = phi i1 [ false, %bb.b ], [ true, %.preheader.i ], [ true, %bb.e ], [ false, %.preheader1.i ], [ true, %.lr.ph7.i ], [ false, %.lr.ph.i ], [ false, %bb.d ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %i.l, %bb.b ], [ 2, %.preheader.i ], [ %i.l, %bb.e ], [ 2, %.preheader1.i ], [ %.sroa.01.16.i, %.lr.ph7.i ], [ %i.l, %bb.d ], [ %.sroa.01.03.i, %.lr.ph.i ] ; 7 uses
  %i.y = add i64 %.sroa.0.0.i, %.sroa.02.090      ; 8 uses
  %i.z = icmp eq i64 %.sroa.02.090, 0
  %i.aa = icmp eq i64 %i.y, %1
  %or.cond = and i1 %i.z, %i.aa
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.loopexit
  %. = zext i1 %.sroa.4.0.i to i8
  br label %.loopexit34

bb.h:                                             ; preds = %.loopexit
  br i1 %.sroa.4.0.i, label %bb.l, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit

_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i, %middle.block, %bb.m, %bb.h
  %i.ab = icmp uge i64 %i.y, %.sroa.02.090
  %i.ac = icmp ule i64 %i.y, %1
  %or.cond.i = and i1 %i.ab, %i.ac
  br i1 %or.cond.i, label %bb.j, label %bb.i, !prof !125

bb.i:                                             ; preds = %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @586, i64 noundef 44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @587) #60
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit
  %i.ad = icmp samesign ult i64 %.sroa.0.0.i, 10
  %i.ae = icmp samesign ult i64 %i.y, %1
  %or.cond3.i = and i1 %i.ad, %i.ae
  br i1 %or.cond3.i, label %bb.k, label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5e_5types3any5PyAnyEB59_EE0E0ECskcxRuJ53GpR_9rustworkx.exit

bb.k:                                             ; preds = %bb.j
  %i.af = add nuw nsw i64 %.sroa.02.090, 10
  %i.ag = tail call i64 @llvm.umin.i64(i64 %i.af, i64 range(i64 1, 2305843009213693952) %1) ; 2 uses
  %i.ah = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 1)
  %i.ai = sub nsw i64 %i.ag, %.sroa.02.090        ; 2 uses
  invoke fastcc void @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort25insertion_sort_shift_leftNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSB12_INtB4_16ParallelSliceMutB12_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB14_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5m_5types3any5PyAnyEB5h_EE0E0ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 4 %i.m, i64 noundef %i.ai, i64 noundef %i.ah, ptr readonly %.0.val) #62
          to label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5e_5types3any5PyAnyEB59_EE0E0ECskcxRuJ53GpR_9rustworkx.exit unwind label %.loopexit35

bb.l:                                             ; preds = %bb.h
  %i.aj = icmp ult i64 %i.y, %.sroa.02.090
  %.not = icmp ugt i64 %i.y, %1
  %or.cond27 = or i1 %i.aj, %.not
  br i1 %or.cond27, label %.invoke, label %bb.m, !prof !90

.invoke:                                          ; preds = %bb.l, %bb.x
  %i.ak = phi i64 [ %i.ck, %bb.x ], [ %.sroa.02.090, %bb.l ]
  %i.al = phi i64 [ %i.ct, %bb.x ], [ %i.y, %bb.l ]
  %i.am = phi ptr [ @577, %bb.x ], [ @578, %bb.l ]
  invoke void @_RNvNtNtCslwFuT2d6ECx_4core5slice5index16slice_index_fail(i64 noundef %i.ak, i64 noundef %i.al, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.am) #61
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.an = lshr i64 %.sroa.0.0.i, 1                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27302)
  %.not.i = icmp eq i64 %i.an, 0
  br i1 %.not.i, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i: ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0.0.i ; 2 uses
  %min.iters.check = icmp samesign ult i64 %.sroa.0.0.i, 16
  br i1 %min.iters.check, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i
  %n.vec = and i64 %i.an, 4611686018427387896     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ap = xor i64 %index, -1
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index ; 3 uses
  %i.ar = getelementptr [4 x i8], ptr %i.ao, i64 %i.ap ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.aq, align 4, !alias.scope !27301, !noalias !27302
  %wide.load294 = load <4 x i32>, ptr %i.as, align 4, !alias.scope !27301, !noalias !27302
  %i.at = getelementptr i8, ptr %i.ar, i64 -12    ; 2 uses
  %i.au = getelementptr i8, ptr %i.ar, i64 -28    ; 2 uses
  %wide.load295 = load <4 x i32>, ptr %i.at, align 4, !alias.scope !27302, !noalias !27301
  %wide.load296 = load <4 x i32>, ptr %i.au, align 4, !alias.scope !27302, !noalias !27301
  %reverse = shufflevector <4 x i32> %wide.load295, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse297 = shufflevector <4 x i32> %wide.load296, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %i.aq, align 4, !alias.scope !27301, !noalias !27302
  store <4 x i32> %reverse297, ptr %i.as, align 4, !alias.scope !27301, !noalias !27302
  %reverse298 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse299 = shufflevector <4 x i32> %wide.load294, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse298, ptr %i.at, align 4, !alias.scope !27302, !noalias !27301
  store <4 x i32> %reverse299, ptr %i.au, align 4, !alias.scope !27302, !noalias !27301
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !27233

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i, %middle.block
  %.sroa.0.016.i.ph = phi i64 [ 0, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i
  %.sroa.0.016.i = phi i64 [ %i.bb, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i ], [ %.sroa.0.016.i.ph, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader ] ; 3 uses
  %i.aw = xor i64 %.sroa.0.016.i, -1
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0.016.i ; 2 uses
  %i.ay = getelementptr [4 x i8], ptr %i.ao, i64 %i.aw ; 2 uses
  %i.az = load i32, ptr %i.ax, align 4, !alias.scope !27301, !noalias !27302, !noundef !67
  %i.ba = load i32, ptr %i.ay, align 4, !alias.scope !27302, !noalias !27301
  store i32 %i.ba, ptr %i.ax, align 4, !alias.scope !27301, !noalias !27302
  store i32 %i.az, ptr %i.ay, align 4, !alias.scope !27302, !noalias !27301
  %i.bb = add nuw nsw i64 %.sroa.0.016.i, 1       ; 2 uses
  %exitcond.not.i39 = icmp eq i64 %i.bb, %i.an
  br i1 %exitcond.not.i39, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i, !llvm.loop !27234

_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5e_5types3any5PyAnyEB59_EE0E0ECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.j, %bb.k
  %.pre-phi = phi i64 [ %i.ai, %bb.k ], [ %.sroa.0.0.i, %bb.j ]
  %.sroa.0.0.i37 = phi i64 [ %i.ag, %bb.k ], [ %i.y, %bb.j ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27303)
  %i.bc = load i64, ptr %i.b, align 8, !range !70, !alias.scope !27303, !noundef !67
  %i.bd = icmp eq i64 %i.k, %i.bc
  br i1 %i.bd, label %bb.n, label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit

bb.n:                                             ; preds = %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5e_5types3any5PyAnyEB59_EE0E0ECskcxRuJ53GpR_9rustworkx.exit
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #62
          to label %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge unwind label %.loopexit35

._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge: ; preds = %bb.n
  %.pre = load ptr, ptr %i.c, align 8, !alias.scope !27303
  br label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit

_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit: ; preds = %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5e_5types3any5PyAnyEB59_EE0E0ECskcxRuJ53GpR_9rustworkx.exit
  %i.be = phi ptr [ %.pre, %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge ], [ %i.j, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5e_5types3any5PyAnyEB59_EE0E0ECskcxRuJ53GpR_9rustworkx.exit ] ; 6 uses
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %i.k ; 2 uses
  store i64 %.pre-phi, ptr %i.bf, align 8, !noalias !27303
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i64 %.sroa.02.090, ptr %i.bg, align 8, !noalias !27303
  %i.bh = add i64 %i.k, 1                         ; 4 uses
  store i64 %i.bh, ptr %i.d, align 8
  %i.bi = icmp samesign ugt i64 %i.bh, 1
  br i1 %i.bi, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit
  %storemerge86 = phi i64 [ %i.ko, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit ], [ %i.bh, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit ] ; 14 uses
  %i.bj = getelementptr [16 x i8], ptr %i.be, i64 %storemerge86 ; 5 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 -16
  %i.bl = getelementptr i8, ptr %i.bj, i64 -8
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !27304, !noundef !67
  %i.bn = load i64, ptr %i.bk, align 8, !alias.scope !27304, !noundef !67 ; 4 uses
  %i.bo = add i64 %i.bn, %i.bm
  %i.bp = icmp eq i64 %i.bo, %1
  br i1 %i.bp, label %bb.q, label %bb.o

bb.o:                                             ; preds = %.lr.ph
  %i.bq = getelementptr i8, ptr %i.bj, i64 -32
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !27304, !noundef !67 ; 3 uses
  %.not.i43 = icmp ugt i64 %i.br, %i.bn
  br i1 %.not.i43, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.not14.i = icmp eq i64 %storemerge86, 2
  br i1 %.not14.i, label %._crit_edge, label %bb.s

bb.q:                                             ; preds = %bb.o, %.lr.ph
end_hunk_4
begin_hunk_5_@_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort10merge_sortNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBN_INtB4_16ParallelSliceMutBN_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtBP_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB54_5types3any5PyAnyEB4Z_EE0E0ECskcxRuJ53GpR_9rustworkx:bb.a
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i, %i.ej ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i = load <16 x i8>, ptr %i.hx, align 1, !noalias !27324 ; 2 uses
  %i.hy = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, %i.hw
  %i.hz = bitcast <16 x i1> %i.hy to i16          ; 2 uses
  %.not.i.not30.i.i.i.i = icmp eq i16 %i.hz, 0
  br i1 %.not.i.not30.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.al, %bb.am
  %.sroa.05.0.i31.i.i.i.i = phi i16 [ %i.im, %bb.am ], [ %i.hz, %bb.al ] ; 3 uses
  %i.ia = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i.i, i1 true)
  %i.ib = zext nneg i16 %i.ia to i64
  %i.ic = add i64 %.sroa.01.0.i.i.i.i.i, %i.ib
  %i.id = and i64 %i.ic, %i.ej
  %i.ie = sub nsw i64 0, %i.id
  %i.if = getelementptr inbounds [16 x i8], ptr %i.ek, i64 %i.ie ; 2 uses
  %i.ig = getelementptr inbounds i8, ptr %i.if, i64 -16
  %.val2.i.i.i.i.i = load i32, ptr %i.ig, align 4, !noalias !27325, !noundef !67
  %i.ih = icmp eq i32 %.sroa.0.0.val.i, %.val2.i.i.i.i.i
  br i1 %i.ih, label %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_EE0CskcxRuJ53GpR_9rustworkx.exit.i, label %bb.am, !prof !77

._crit_edge.i.i.i.i:                              ; preds = %bb.am, %bb.al
  %i.ii = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, splat (i8 -1)
  %i.ij = bitcast <16 x i1> %i.ii to i16
  %i.ik = icmp eq i16 %i.ij, 0
  br i1 %i.ik, label %bb.an, label %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_EE0CskcxRuJ53GpR_9rustworkx.exit.i, !prof !71

bb.am:                                            ; preds = %.lr.ph.i.i.i.i
  %i.il = add i16 %.sroa.05.0.i31.i.i.i.i, -1
  %i.im = and i16 %i.il, %.sroa.05.0.i31.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.im, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.an:                                            ; preds = %._crit_edge.i.i.i.i
  %i.in = add i64 %.sroa.011.0.i.i.i.i.i, 16      ; 2 uses
  %i.io = add i64 %.sroa.01.0.i.i.i.i.i, %i.in
  br label %bb.al

_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_EE0CskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %._crit_edge.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ip = phi ptr [ %i.if, %.lr.ph.i.i.i.i ], [ null, %._crit_edge.i.i.i.i ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ip, null
  %i.iq = getelementptr inbounds i8, ptr %i.ip, i64 -8
  %i.ir = zext i32 %.val31.i to i64
  %i.is = xor i64 %.val.i.i.i, %i.ir
  %i.it = zext i64 %i.is to i128
  %i.iu = mul nuw i128 %i.dw, %i.it               ; 2 uses
  %i.iv = lshr i128 %i.iu, 64
  %i.iw = xor i128 %i.iv, %i.iu
  %i.ix = trunc i128 %i.iw to i64                 ; 2 uses
  %i.iy = lshr i64 %i.ix, 57
  %i.iz = trunc nuw nsw i64 %i.iy to i8
  %i.ja = insertelement <16 x i8> poison, i8 %i.iz, i64 0
  %i.jb = shufflevector <16 x i8> %i.ja, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ao

bb.ao:                                            ; preds = %bb.aq, %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_EE0CskcxRuJ53GpR_9rustworkx.exit.i
  %.sroa.011.0.i.i.i.i7.i = phi i64 [ 0, %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_EE0CskcxRuJ53GpR_9rustworkx.exit.i ], [ %i.js, %bb.aq ]
  %.pn.i.i.i8.i = phi i64 [ %i.ix, %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_EE0CskcxRuJ53GpR_9rustworkx.exit.i ], [ %i.jt, %bb.aq ]
  %.sroa.01.0.i.i.i.i9.i = and i64 %.pn.i.i.i8.i, %i.ej ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.sroa.01.0.i.i.i.i9.i
  %.sroa.0.0.copyload.i24.i.i.i10.i = load <16 x i8>, ptr %i.jc, align 1, !noalias !27326 ; 2 uses
  %i.jd = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i10.i, %i.jb
  %i.je = bitcast <16 x i1> %i.jd to i16          ; 2 uses
  %.not.i.not30.i.i.i11.i = icmp eq i16 %i.je, 0
  br i1 %.not.i.not30.i.i.i11.i, label %._crit_edge.i.i.i16.i, label %.lr.ph.i.i.i12.i

.lr.ph.i.i.i12.i:                                 ; preds = %bb.ao, %bb.ap
  %.sroa.05.0.i31.i.i.i13.i = phi i16 [ %i.jr, %bb.ap ], [ %i.je, %bb.ao ] ; 3 uses
  %i.jf = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i13.i, i1 true)
  %i.jg = zext nneg i16 %i.jf to i64
  %i.jh = add i64 %.sroa.01.0.i.i.i.i9.i, %i.jg
  %.fr186 = freeze i64 %i.jh
  %i.ji = and i64 %.fr186, %i.ej
  %i.jj = sub i64 0, %i.ji
  %i.jk = getelementptr [16 x i8], ptr %i.ek, i64 %i.jj ; 2 uses
  %i.jl = getelementptr inbounds i8, ptr %i.jk, i64 -16
  %.val2.i.i.i.i14.i = load i32, ptr %i.jl, align 4, !noalias !27327, !noundef !67
  %i.jm = icmp eq i32 %.val31.i, %.val2.i.i.i.i14.i
  br i1 %i.jm, label %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_jE0ECskcxRuJ53GpR_9rustworkx.exit.i.i17.i, label %bb.ap, !prof !77

._crit_edge.i.i.i16.i:                            ; preds = %bb.ap, %bb.ao
  %i.jn = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i10.i, splat (i8 -1)
  %i.jo = bitcast <16 x i1> %i.jn to i16
  %i.jp = icmp eq i16 %i.jo, 0
  br i1 %i.jp, label %bb.aq, label %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_jE0ECskcxRuJ53GpR_9rustworkx.exit.i.i17.i, !prof !71

bb.ap:                                            ; preds = %.lr.ph.i.i.i12.i
  %i.jq = add i16 %.sroa.05.0.i31.i.i.i13.i, -1
  %i.jr = and i16 %i.jq, %.sroa.05.0.i31.i.i.i13.i ; 2 uses
  %.not.i.not.i.i.i15.i = icmp eq i16 %i.jr, 0
  br i1 %.not.i.not.i.i.i15.i, label %._crit_edge.i.i.i16.i, label %.lr.ph.i.i.i12.i

bb.aq:                                            ; preds = %._crit_edge.i.i.i16.i
  %i.js = add i64 %.sroa.011.0.i.i.i.i7.i, 16     ; 2 uses
  %i.jt = add i64 %.sroa.01.0.i.i.i.i9.i, %i.js
  br label %bb.ao

_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_jE0ECskcxRuJ53GpR_9rustworkx.exit.i.i17.i: ; preds = %._crit_edge.i.i.i16.i, %.lr.ph.i.i.i12.i
  %.fr = phi ptr [ %i.jk, %.lr.ph.i.i.i12.i ], [ null, %._crit_edge.i.i.i16.i ] ; 2 uses
  %.not.i.i18.i.not = icmp eq ptr %.fr, null      ; 2 uses
  %i.ju = getelementptr inbounds i8, ptr %.fr, i64 -8
  br i1 %.not.i.i.i, label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx.exit, label %bb.ar

bb.ar:                                            ; preds = %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_jE0ECskcxRuJ53GpR_9rustworkx.exit.i.i17.i
  br i1 %.not.i.i18.i.not, label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx.exit.thread22, label %.split20

.split20:                                         ; preds = %bb.ar
  %.val.i.i.i.i = load i64, ptr %i.iq, align 8, !noalias !27305, !noundef !67
  %.val1.i.i.i.i = load i64, ptr %i.ju, align 8, !noalias !27305, !noundef !67
  %i.jv = icmp ult i64 %.val.i.i.i.i, %.val1.i.i.i.i
  br i1 %i.jv, label %bb.as, label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx.exit.thread22

_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_jE0ECskcxRuJ53GpR_9rustworkx.exit.i.i17.i
  br i1 %.not.i.i18.i.not, label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx.exit.thread22, label %bb.as

bb.as:                                            ; preds = %.split20, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx.exit
  br label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx.exit.thread22

_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx.exit.thread22: ; preds = %bb.ar, %.split20, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx.exit, %bb.as
  %.sroa.0.0.i.i25.i19 = phi i1 [ true, %bb.as ], [ false, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx.exit ], [ false, %bb.ar ], [ false, %.split20 ] ; 2 uses
  %i.jw = phi i32 [ %.sroa.0.0.val.i, %bb.as ], [ %.val31.i, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx.exit ], [ %.val31.i, %bb.ar ], [ %.val31.i, %.split20 ]
  store i32 %i.jw, ptr %.sroa.18.318.i, align 4, !alias.scope !27305
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.18.318.i, i64 4 ; 2 uses
  %i.jy = zext i1 %.sroa.0.0.i.i25.i19 to i64
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.020.i, i64 %i.jy ; 2 uses
  %i.ka = xor i1 %.sroa.0.0.i.i25.i19, true
  %i.kb = zext i1 %i.ka to i64
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.219.i, i64 %i.kb ; 3 uses
  %i.kd = icmp ult ptr %i.kc, %i.dp
  %i.ke = icmp ult ptr %i.jz, %i.cy
  %or.cond30.i = select i1 %i.kd, i1 %i.ke, i1 false
  br i1 %or.cond30.i, label %bb.ak, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx.exit.thread22, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx.exit.thread22.us, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx.exit82.thread, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx.exit82.thread10.us, %.lr.ph.i45.split.us.split.us, %bb.aa, %bb.z
  %.sroa.18.1.i = phi ptr [ %i.ed, %.lr.ph.i45.split.us.split.us ], [ %i.cx, %bb.z ], [ %i.cw, %bb.aa ], [ %i.ee, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx.exit.thread22.us ], [ %i.hg, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx.exit82.thread ], [ %i.cx, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx.exit82.thread10.us ], [ %i.jx, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx.exit.thread22 ]
  %.sroa.10.1.i = phi ptr [ %i.dp, %.lr.ph.i45.split.us.split.us ], [ %i.db, %bb.z ], [ %i.dp, %bb.aa ], [ %i.dp, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx.exit.thread22.us ], [ %i.hf, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx.exit82.thread ], [ %i.dh, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx.exit82.thread10.us ], [ %i.dp, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx.exit.thread22 ]
  %.sroa.0.015.i = phi ptr [ %i.e, %.lr.ph.i45.split.us.split.us ], [ %2, %bb.z ], [ %2, %bb.aa ], [ %i.ef, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx.exit.thread22.us ], [ %2, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx.exit82.thread ], [ %2, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx.exit82.thread10.us ], [ %i.kc, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx.exit.thread22 ] ; 2 uses
  %i.kf = ptrtoint ptr %.sroa.10.1.i to i64
  %i.kg = ptrtoint ptr %.sroa.0.015.i to i64
  %i.kh = sub i64 %i.kf, %i.kg
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.sroa.18.1.i, ptr align 4 %.sroa.0.015.i, i64 %i.kh, i1 false), !noalias !27328
  %i.ki = add i64 %i.cq, %i.ci
  store i64 %i.ki, ptr %i.cp, align 8
  store i64 %i.ck, ptr %i.cr, align 8
  %i.kj = icmp samesign ult i64 %storemerge86, 576460752303423488
  tail call void @llvm.assume(i1 %i.kj)
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.kl = xor i64 %.sroa.4.0.i41.ph, -1
  %i.km = add nsw i64 %storemerge86, %i.kl
  %i.kn = shl nuw nsw i64 %i.km, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ch, ptr nonnull align 8 %i.kk, i64 %i.kn, i1 false), !noalias !27329
  %i.ko = add nsw i64 %storemerge86, -1           ; 3 uses
  store i64 %i.ko, ptr %i.d, align 8
  %i.kp = icmp samesign ugt i64 %storemerge86, 2
  br i1 %i.kp, label %.lr.ph, label %._crit_edge

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit36: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i35, %bb.f
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i8 0, 3) i8 @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort10merge_sortNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBN_INtB4_16ParallelSliceMutBN_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtBP_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB54_5types3any5PyAnyEB4Z_NtBR_10UndirectedEE0E0ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 4 captures(address) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noundef %2, ptr nofree readonly captures(none) %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i64 0, ptr %i.d, align 8
  %.not93 = icmp eq i64 %1, 0
  br i1 %.not93, label %.loopexit34, label %.lr.ph92

.lr.ph92:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = xor i64 %i.a, -1
  %i.g = add i64 %i.a, 4
  br label %bb.b

.loopexit34:                                      ; preds = %._crit_edge, %bb.a, %bb.g
  %.sroa.0.0 = phi i8 [ %., %bb.g ], [ 2, %bb.a ], [ 2, %._crit_edge ]
  %.val30 = load i64, ptr %i.b, align 8           ; 2 uses
  %i.h = icmp eq i64 %.val30, 0
  br i1 %i.h, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i: ; preds = %.loopexit34
  %.val31 = load ptr, ptr %i.c, align 8, !nonnull !67, !noundef !67
  %i.i = shl nuw i64 %.val30, 4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val31, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %.loopexit34, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i8 %.sroa.0.0

bb.b:                                             ; preds = %.lr.ph92, %._crit_edge
  %i.j = phi ptr [ inttoptr (i64 8 to ptr), %.lr.ph92 ], [ %i.be, %._crit_edge ]
  %i.k = phi i64 [ 0, %.lr.ph92 ], [ %i.ce, %._crit_edge ] ; 3 uses
  %.sroa.02.090 = phi i64 [ 0, %.lr.ph92 ], [ %.sroa.0.0.i37, %._crit_edge ] ; 10 uses
  %i.l = sub nuw nsw i64 %1, %.sroa.02.090        ; 9 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.02.090 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27402)
  %i.n = icmp samesign ult i64 %i.l, 2
  br i1 %i.n, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val17.i = load i32, ptr %i.o, align 4, !alias.scope !27402 ; 3 uses
  %.val18.i = load i32, ptr %i.m, align 4, !alias.scope !27402
  %i.p = tail call fastcc noundef zeroext i1 @_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx(ptr nonnull readonly %.0.val, i32 %.val17.i, i32 %.val18.i) #64, !noalias !27402
  %.not11.i = icmp eq i64 %i.l, 2                 ; 2 uses
  br i1 %i.p, label %.preheader.i, label %.preheader1.i

.preheader1.i:                                    ; preds = %bb.c
  br i1 %.not11.i, label %.loopexit, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.c
  br i1 %.not11.i, label %.loopexit, label %.lr.ph7.i

.lr.ph.i:                                         ; preds = %.preheader1.i, %bb.d
  %.val15.i = phi i32 [ %.val14.i, %bb.d ], [ %.val17.i, %.preheader1.i ]
  %.sroa.01.03.i = phi i64 [ %i.s, %bb.d ], [ 2, %.preheader1.i ] ; 4 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.01.03.i
  %3 = add nsw i64 %.sroa.01.03.i, -1
  %4 = icmp samesign ult i64 %3, %i.l
  tail call void @llvm.assume(i1 %4)
  %.val14.i = load i32, ptr %i.q, align 4, !alias.scope !27402 ; 2 uses
  %i.r = tail call fastcc noundef zeroext i1 @_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx(ptr nonnull readonly %.0.val, i32 %.val14.i, i32 %.val15.i) #64, !noalias !27402
  br i1 %i.r, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.s = add nuw nsw i64 %.sroa.01.03.i, 1        ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.s, %i.l
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph7.i:                                        ; preds = %.preheader.i, %bb.e
  %.val12.i = phi i32 [ %.val11.i, %bb.e ], [ %.val17.i, %.preheader.i ]
  %.sroa.01.16.i = phi i64 [ %i.v, %bb.e ], [ 2, %.preheader.i ] ; 4 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.01.16.i
  %5 = add nsw i64 %.sroa.01.16.i, -1
  %6 = icmp samesign ult i64 %5, %i.l
  tail call void @llvm.assume(i1 %6)
  %.val11.i = load i32, ptr %i.t, align 4, !alias.scope !27402 ; 2 uses
  %i.u = tail call fastcc noundef zeroext i1 @_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx(ptr nonnull readonly %.0.val, i32 %.val11.i, i32 %.val12.i) #64, !noalias !27402
  br i1 %i.u, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %.lr.ph7.i
  %i.v = add nuw nsw i64 %.sroa.01.16.i, 1        ; 2 uses
  %exitcond14.not.i = icmp eq i64 %i.v, %i.l
  br i1 %exitcond14.not.i, label %.loopexit, label %.lr.ph7.i

.loopexit35:                                      ; preds = %bb.k, %bb.n
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp:                               ; preds = %.invoke245, %.invoke, %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp, %.loopexit35
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit35 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.val = load i64, ptr %i.b, align 8             ; 2 uses
  %i.w = icmp eq i64 %.val, 0
  br i1 %i.w, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit36, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i35

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i35: ; preds = %bb.f
  %.val29 = load ptr, ptr %i.c, align 8, !nonnull !67, !noundef !67
  %i.x = shl nuw i64 %.val, 4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val29, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) 8) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit36

.loopexit:                                        ; preds = %bb.d, %.lr.ph.i, %bb.e, %.lr.ph7.i, %.preheader.i, %.preheader1.i, %bb.b
  %.sroa.4.0.i = phi i1 [ false, %bb.b ], [ true, %.preheader.i ], [ true, %bb.e ], [ false, %.preheader1.i ], [ true, %.lr.ph7.i ], [ false, %.lr.ph.i ], [ false, %bb.d ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %i.l, %bb.b ], [ 2, %.preheader.i ], [ %i.l, %bb.e ], [ 2, %.preheader1.i ], [ %.sroa.01.16.i, %.lr.ph7.i ], [ %i.l, %bb.d ], [ %.sroa.01.03.i, %.lr.ph.i ] ; 7 uses
  %i.y = add i64 %.sroa.0.0.i, %.sroa.02.090      ; 8 uses
  %i.z = icmp eq i64 %.sroa.02.090, 0
  %i.aa = icmp eq i64 %i.y, %1
  %or.cond = and i1 %i.z, %i.aa
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.loopexit
  %. = zext i1 %.sroa.4.0.i to i8
  br label %.loopexit34

bb.h:                                             ; preds = %.loopexit
  br i1 %.sroa.4.0.i, label %bb.l, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit

_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i, %middle.block, %bb.m, %bb.h
  %i.ab = icmp uge i64 %i.y, %.sroa.02.090
  %i.ac = icmp ule i64 %i.y, %1
  %or.cond.i = and i1 %i.ab, %i.ac
  br i1 %or.cond.i, label %bb.j, label %bb.i, !prof !125

bb.i:                                             ; preds = %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @586, i64 noundef 44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @587) #60
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit
  %i.ad = icmp samesign ult i64 %.sroa.0.0.i, 10
  %i.ae = icmp samesign ult i64 %i.y, %1
  %or.cond3.i = and i1 %i.ad, %i.ae
  br i1 %or.cond3.i, label %bb.k, label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5e_5types3any5PyAnyEB59_NtB11_10UndirectedEE0E0ECskcxRuJ53GpR_9rustworkx.exit

bb.k:                                             ; preds = %bb.j
  %i.af = add nuw nsw i64 %.sroa.02.090, 10
  %i.ag = tail call i64 @llvm.umin.i64(i64 %i.af, i64 range(i64 0, 2305843009213693952) %1) ; 2 uses
  %i.ah = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 1)
  %i.ai = sub i64 %i.ag, %.sroa.02.090            ; 2 uses
  invoke fastcc void @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort25insertion_sort_shift_leftNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSB12_INtB4_16ParallelSliceMutB12_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB14_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5m_5types3any5PyAnyEB5h_NtB16_10UndirectedEE0E0ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 4 %i.m, i64 noundef %i.ai, i64 noundef %i.ah, ptr readonly %.0.val) #62
          to label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5e_5types3any5PyAnyEB59_NtB11_10UndirectedEE0E0ECskcxRuJ53GpR_9rustworkx.exit unwind label %.loopexit35

bb.l:                                             ; preds = %bb.h
  %i.aj = icmp ult i64 %i.y, %.sroa.02.090
  %.not = icmp ugt i64 %i.y, %1
  %or.cond27 = or i1 %i.aj, %.not
  br i1 %or.cond27, label %.invoke, label %bb.m, !prof !90

.invoke:                                          ; preds = %bb.l, %bb.x
  %i.ak = phi i64 [ %i.ck, %bb.x ], [ %.sroa.02.090, %bb.l ]
  %i.al = phi i64 [ %i.ct, %bb.x ], [ %i.y, %bb.l ]
  %i.am = phi ptr [ @577, %bb.x ], [ @578, %bb.l ]
  invoke void @_RNvNtNtCslwFuT2d6ECx_4core5slice5index16slice_index_fail(i64 noundef %i.ak, i64 noundef %i.al, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.am) #61
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.an = lshr i64 %.sroa.0.0.i, 1                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27404)
  %.not.i = icmp eq i64 %i.an, 0
  br i1 %.not.i, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i: ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0.0.i ; 2 uses
  %min.iters.check = icmp samesign ult i64 %.sroa.0.0.i, 16
  br i1 %min.iters.check, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i
  %n.vec = and i64 %i.an, 4611686018427387896     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ap = xor i64 %index, -1
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index ; 3 uses
  %i.ar = getelementptr [4 x i8], ptr %i.ao, i64 %i.ap ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.aq, align 4, !alias.scope !27403, !noalias !27404
  %wide.load294 = load <4 x i32>, ptr %i.as, align 4, !alias.scope !27403, !noalias !27404
  %i.at = getelementptr i8, ptr %i.ar, i64 -12    ; 2 uses
  %i.au = getelementptr i8, ptr %i.ar, i64 -28    ; 2 uses
  %wide.load295 = load <4 x i32>, ptr %i.at, align 4, !alias.scope !27404, !noalias !27403
  %wide.load296 = load <4 x i32>, ptr %i.au, align 4, !alias.scope !27404, !noalias !27403
  %reverse = shufflevector <4 x i32> %wide.load295, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse297 = shufflevector <4 x i32> %wide.load296, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %i.aq, align 4, !alias.scope !27403, !noalias !27404
  store <4 x i32> %reverse297, ptr %i.as, align 4, !alias.scope !27403, !noalias !27404
  %reverse298 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse299 = shufflevector <4 x i32> %wide.load294, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse298, ptr %i.at, align 4, !alias.scope !27404, !noalias !27403
  store <4 x i32> %reverse299, ptr %i.au, align 4, !alias.scope !27404, !noalias !27403
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !27335

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i, %middle.block
  %.sroa.0.016.i.ph = phi i64 [ 0, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i
  %.sroa.0.016.i = phi i64 [ %i.bb, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i ], [ %.sroa.0.016.i.ph, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader ] ; 3 uses
  %i.aw = xor i64 %.sroa.0.016.i, -1
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0.016.i ; 2 uses
  %i.ay = getelementptr [4 x i8], ptr %i.ao, i64 %i.aw ; 2 uses
  %i.az = load i32, ptr %i.ax, align 4, !alias.scope !27403, !noalias !27404, !noundef !67
  %i.ba = load i32, ptr %i.ay, align 4, !alias.scope !27404, !noalias !27403
  store i32 %i.ba, ptr %i.ax, align 4, !alias.scope !27403, !noalias !27404
  store i32 %i.az, ptr %i.ay, align 4, !alias.scope !27404, !noalias !27403
  %i.bb = add nuw nsw i64 %.sroa.0.016.i, 1       ; 2 uses
  %exitcond.not.i39 = icmp eq i64 %i.bb, %i.an
  br i1 %exitcond.not.i39, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i, !llvm.loop !27336

_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5e_5types3any5PyAnyEB59_NtB11_10UndirectedEE0E0ECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.j, %bb.k
  %.pre-phi = phi i64 [ %i.ai, %bb.k ], [ %.sroa.0.0.i, %bb.j ]
  %.sroa.0.0.i37 = phi i64 [ %i.ag, %bb.k ], [ %i.y, %bb.j ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27405)
  %i.bc = load i64, ptr %i.b, align 8, !range !70, !alias.scope !27405, !noundef !67
  %i.bd = icmp eq i64 %i.k, %i.bc
  br i1 %i.bd, label %bb.n, label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit

bb.n:                                             ; preds = %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5e_5types3any5PyAnyEB59_NtB11_10UndirectedEE0E0ECskcxRuJ53GpR_9rustworkx.exit
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #62
          to label %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge unwind label %.loopexit35

._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge: ; preds = %bb.n
  %.pre = load ptr, ptr %i.c, align 8, !alias.scope !27405
  br label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit

_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit: ; preds = %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5e_5types3any5PyAnyEB59_NtB11_10UndirectedEE0E0ECskcxRuJ53GpR_9rustworkx.exit
  %i.be = phi ptr [ %.pre, %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge ], [ %i.j, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5e_5types3any5PyAnyEB59_NtB11_10UndirectedEE0E0ECskcxRuJ53GpR_9rustworkx.exit ] ; 6 uses
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %i.k ; 2 uses
  store i64 %.pre-phi, ptr %i.bf, align 8, !noalias !27405
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i64 %.sroa.02.090, ptr %i.bg, align 8, !noalias !27405
  %i.bh = add i64 %i.k, 1                         ; 4 uses
  store i64 %i.bh, ptr %i.d, align 8
  %i.bi = icmp samesign ugt i64 %i.bh, 1
  br i1 %i.bi, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit
  %storemerge86 = phi i64 [ %i.ko, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit ], [ %i.bh, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit ] ; 14 uses
  %i.bj = getelementptr [16 x i8], ptr %i.be, i64 %storemerge86 ; 5 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 -16
  %i.bl = getelementptr i8, ptr %i.bj, i64 -8
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !27406, !noundef !67
  %i.bn = load i64, ptr %i.bk, align 8, !alias.scope !27406, !noundef !67 ; 4 uses
  %i.bo = add i64 %i.bn, %i.bm
  %i.bp = icmp eq i64 %i.bo, %1
  br i1 %i.bp, label %bb.q, label %bb.o

bb.o:                                             ; preds = %.lr.ph
  %i.bq = getelementptr i8, ptr %i.bj, i64 -32
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !27406, !noundef !67 ; 3 uses
  %.not.i43 = icmp ugt i64 %i.br, %i.bn
  br i1 %.not.i43, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.not14.i = icmp eq i64 %storemerge86, 2
  br i1 %.not14.i, label %._crit_edge, label %bb.s

bb.q:                                             ; preds = %bb.o, %.lr.ph
end_hunk_5
begin_hunk_6_@_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort10merge_sortNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBN_INtB4_16ParallelSliceMutBN_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtBP_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB54_5types3any5PyAnyEB4Z_NtBR_10UndirectedEE0E0ECskcxRuJ53GpR_9rustworkx:bb.a
  %i.hv = insertelement <16 x i8> poison, i8 %i.hu, i64 0
  %i.hw = shufflevector <16 x i8> %i.hv, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.al

bb.al:                                            ; preds = %bb.an, %bb.ak
  %.sroa.011.0.i.i.i.i.i = phi i64 [ 0, %bb.ak ], [ %i.in, %bb.an ]
  %.pn.i.i.i.i = phi i64 [ %i.hs, %bb.ak ], [ %i.io, %bb.an ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i, %i.ej ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i = load <16 x i8>, ptr %i.hx, align 1, !noalias !27426 ; 2 uses
  %i.hy = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, %i.hw
  %i.hz = bitcast <16 x i1> %i.hy to i16          ; 2 uses
  %.not.i.not30.i.i.i.i = icmp eq i16 %i.hz, 0
  br i1 %.not.i.not30.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.al, %bb.am
  %.sroa.05.0.i31.i.i.i.i = phi i16 [ %i.im, %bb.am ], [ %i.hz, %bb.al ] ; 3 uses
  %i.ia = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i.i, i1 true)
  %i.ib = zext nneg i16 %i.ia to i64
  %i.ic = add i64 %.sroa.01.0.i.i.i.i.i, %i.ib
  %i.id = and i64 %i.ic, %i.ej
  %i.ie = sub nsw i64 0, %i.id
  %i.if = getelementptr inbounds [16 x i8], ptr %i.ek, i64 %i.ie ; 2 uses
  %i.ig = getelementptr inbounds i8, ptr %i.if, i64 -16
  %.val2.i.i.i.i.i = load i32, ptr %i.ig, align 4, !noalias !27427, !noundef !67
  %i.ih = icmp eq i32 %.sroa.0.0.val.i, %.val2.i.i.i.i.i
  br i1 %i.ih, label %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_NtB1o_10UndirectedEE0CskcxRuJ53GpR_9rustworkx.exit.i, label %bb.am, !prof !77

._crit_edge.i.i.i.i:                              ; preds = %bb.am, %bb.al
  %i.ii = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, splat (i8 -1)
  %i.ij = bitcast <16 x i1> %i.ii to i16
  %i.ik = icmp eq i16 %i.ij, 0
  br i1 %i.ik, label %bb.an, label %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_NtB1o_10UndirectedEE0CskcxRuJ53GpR_9rustworkx.exit.i, !prof !71

bb.am:                                            ; preds = %.lr.ph.i.i.i.i
  %i.il = add i16 %.sroa.05.0.i31.i.i.i.i, -1
  %i.im = and i16 %i.il, %.sroa.05.0.i31.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.im, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.an:                                            ; preds = %._crit_edge.i.i.i.i
  %i.in = add i64 %.sroa.011.0.i.i.i.i.i, 16      ; 2 uses
  %i.io = add i64 %.sroa.01.0.i.i.i.i.i, %i.in
  br label %bb.al

_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_NtB1o_10UndirectedEE0CskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %._crit_edge.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ip = phi ptr [ %i.if, %.lr.ph.i.i.i.i ], [ null, %._crit_edge.i.i.i.i ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ip, null
  %i.iq = getelementptr inbounds i8, ptr %i.ip, i64 -8
  %i.ir = zext i32 %.val31.i to i64
  %i.is = xor i64 %.val.i.i.i, %i.ir
  %i.it = zext i64 %i.is to i128
  %i.iu = mul nuw i128 %i.dw, %i.it               ; 2 uses
  %i.iv = lshr i128 %i.iu, 64
  %i.iw = xor i128 %i.iv, %i.iu
  %i.ix = trunc i128 %i.iw to i64                 ; 2 uses
  %i.iy = lshr i64 %i.ix, 57
  %i.iz = trunc nuw nsw i64 %i.iy to i8
  %i.ja = insertelement <16 x i8> poison, i8 %i.iz, i64 0
  %i.jb = shufflevector <16 x i8> %i.ja, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ao

bb.ao:                                            ; preds = %bb.aq, %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_NtB1o_10UndirectedEE0CskcxRuJ53GpR_9rustworkx.exit.i
  %.sroa.011.0.i.i.i.i7.i = phi i64 [ 0, %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_NtB1o_10UndirectedEE0CskcxRuJ53GpR_9rustworkx.exit.i ], [ %i.js, %bb.aq ]
  %.pn.i.i.i8.i = phi i64 [ %i.ix, %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_NtB1o_10UndirectedEE0CskcxRuJ53GpR_9rustworkx.exit.i ], [ %i.jt, %bb.aq ]
  %.sroa.01.0.i.i.i.i9.i = and i64 %.pn.i.i.i8.i, %i.ej ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.sroa.01.0.i.i.i.i9.i
  %.sroa.0.0.copyload.i24.i.i.i10.i = load <16 x i8>, ptr %i.jc, align 1, !noalias !27428 ; 2 uses
  %i.jd = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i10.i, %i.jb
  %i.je = bitcast <16 x i1> %i.jd to i16          ; 2 uses
  %.not.i.not30.i.i.i11.i = icmp eq i16 %i.je, 0
  br i1 %.not.i.not30.i.i.i11.i, label %._crit_edge.i.i.i16.i, label %.lr.ph.i.i.i12.i

.lr.ph.i.i.i12.i:                                 ; preds = %bb.ao, %bb.ap
  %.sroa.05.0.i31.i.i.i13.i = phi i16 [ %i.jr, %bb.ap ], [ %i.je, %bb.ao ] ; 3 uses
  %i.jf = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i13.i, i1 true)
  %i.jg = zext nneg i16 %i.jf to i64
  %i.jh = add i64 %.sroa.01.0.i.i.i.i9.i, %i.jg
  %.fr186 = freeze i64 %i.jh
  %i.ji = and i64 %.fr186, %i.ej
  %i.jj = sub i64 0, %i.ji
  %i.jk = getelementptr [16 x i8], ptr %i.ek, i64 %i.jj ; 2 uses
  %i.jl = getelementptr inbounds i8, ptr %i.jk, i64 -16
  %.val2.i.i.i.i14.i = load i32, ptr %i.jl, align 4, !noalias !27429, !noundef !67
  %i.jm = icmp eq i32 %.val31.i, %.val2.i.i.i.i14.i
  br i1 %i.jm, label %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_jE0ECskcxRuJ53GpR_9rustworkx.exit.i.i17.i, label %bb.ap, !prof !77

._crit_edge.i.i.i16.i:                            ; preds = %bb.ap, %bb.ao
  %i.jn = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i10.i, splat (i8 -1)
  %i.jo = bitcast <16 x i1> %i.jn to i16
  %i.jp = icmp eq i16 %i.jo, 0
  br i1 %i.jp, label %bb.aq, label %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_jE0ECskcxRuJ53GpR_9rustworkx.exit.i.i17.i, !prof !71

bb.ap:                                            ; preds = %.lr.ph.i.i.i12.i
  %i.jq = add i16 %.sroa.05.0.i31.i.i.i13.i, -1
  %i.jr = and i16 %i.jq, %.sroa.05.0.i31.i.i.i13.i ; 2 uses
  %.not.i.not.i.i.i15.i = icmp eq i16 %i.jr, 0
  br i1 %.not.i.not.i.i.i15.i, label %._crit_edge.i.i.i16.i, label %.lr.ph.i.i.i12.i

bb.aq:                                            ; preds = %._crit_edge.i.i.i16.i
  %i.js = add i64 %.sroa.011.0.i.i.i.i7.i, 16     ; 2 uses
  %i.jt = add i64 %.sroa.01.0.i.i.i.i9.i, %i.js
  br label %bb.ao

_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_jE0ECskcxRuJ53GpR_9rustworkx.exit.i.i17.i: ; preds = %._crit_edge.i.i.i16.i, %.lr.ph.i.i.i12.i
  %.fr = phi ptr [ %i.jk, %.lr.ph.i.i.i12.i ], [ null, %._crit_edge.i.i.i16.i ] ; 2 uses
  %.not.i.i18.i.not = icmp eq ptr %.fr, null      ; 2 uses
  %i.ju = getelementptr inbounds i8, ptr %.fr, i64 -8
  br i1 %.not.i.i.i, label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx.exit, label %bb.ar

bb.ar:                                            ; preds = %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_jE0ECskcxRuJ53GpR_9rustworkx.exit.i.i17.i
  br i1 %.not.i.i18.i.not, label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx.exit.thread22, label %.split20

.split20:                                         ; preds = %bb.ar
  %.val.i.i.i.i = load i64, ptr %i.iq, align 8, !noalias !27407, !noundef !67
  %.val1.i.i.i.i = load i64, ptr %i.ju, align 8, !noalias !27407, !noundef !67
  %i.jv = icmp ult i64 %.val.i.i.i.i, %.val1.i.i.i.i
  br i1 %i.jv, label %bb.as, label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx.exit.thread22

_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_jE0ECskcxRuJ53GpR_9rustworkx.exit.i.i17.i
  br i1 %.not.i.i18.i.not, label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx.exit.thread22, label %bb.as

bb.as:                                            ; preds = %.split20, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx.exit
  br label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx.exit.thread22

_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx.exit.thread22: ; preds = %bb.ar, %.split20, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx.exit, %bb.as
  %.sroa.0.0.i.i25.i19 = phi i1 [ true, %bb.as ], [ false, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx.exit ], [ false, %bb.ar ], [ false, %.split20 ] ; 2 uses
  %i.jw = phi i32 [ %.sroa.0.0.val.i, %bb.as ], [ %.val31.i, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx.exit ], [ %.val31.i, %bb.ar ], [ %.val31.i, %.split20 ]
  store i32 %i.jw, ptr %.sroa.18.318.i, align 4, !alias.scope !27407
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.18.318.i, i64 4 ; 2 uses
  %i.jy = zext i1 %.sroa.0.0.i.i25.i19 to i64
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.020.i, i64 %i.jy ; 2 uses
  %i.ka = xor i1 %.sroa.0.0.i.i25.i19, true
  %i.kb = zext i1 %i.ka to i64
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.219.i, i64 %i.kb ; 3 uses
  %i.kd = icmp ult ptr %i.kc, %i.dp
  %i.ke = icmp ult ptr %i.jz, %i.cy
  %or.cond30.i = select i1 %i.kd, i1 %i.ke, i1 false
  br i1 %or.cond30.i, label %bb.ak, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx.exit.thread22, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx.exit.thread22.us, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx.exit82.thread, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx.exit82.thread10.us, %.lr.ph.i45.split.us.split.us, %bb.aa, %bb.z
  %.sroa.18.1.i = phi ptr [ %i.ed, %.lr.ph.i45.split.us.split.us ], [ %i.cx, %bb.z ], [ %i.cw, %bb.aa ], [ %i.ee, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx.exit.thread22.us ], [ %i.hg, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx.exit82.thread ], [ %i.cx, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx.exit82.thread10.us ], [ %i.jx, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx.exit.thread22 ]
  %.sroa.10.1.i = phi ptr [ %i.dp, %.lr.ph.i45.split.us.split.us ], [ %i.db, %bb.z ], [ %i.dp, %bb.aa ], [ %i.dp, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx.exit.thread22.us ], [ %i.hf, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx.exit82.thread ], [ %i.dh, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx.exit82.thread10.us ], [ %i.dp, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx.exit.thread22 ]
  %.sroa.0.015.i = phi ptr [ %i.e, %.lr.ph.i45.split.us.split.us ], [ %2, %bb.z ], [ %2, %bb.aa ], [ %i.ef, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx.exit.thread22.us ], [ %2, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx.exit82.thread ], [ %2, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx.exit82.thread10.us ], [ %i.kc, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx.exit.thread22 ] ; 2 uses
  %i.kf = ptrtoint ptr %.sroa.10.1.i to i64
  %i.kg = ptrtoint ptr %.sroa.0.015.i to i64
  %i.kh = sub i64 %i.kf, %i.kg
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.sroa.18.1.i, ptr align 4 %.sroa.0.015.i, i64 %i.kh, i1 false), !noalias !27430
  %i.ki = add i64 %i.cq, %i.ci
  store i64 %i.ki, ptr %i.cp, align 8
  store i64 %i.ck, ptr %i.cr, align 8
  %i.kj = icmp samesign ult i64 %storemerge86, 576460752303423488
  tail call void @llvm.assume(i1 %i.kj)
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.kl = xor i64 %.sroa.4.0.i41.ph, -1
  %i.km = add nsw i64 %storemerge86, %i.kl
  %i.kn = shl nuw nsw i64 %i.km, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ch, ptr nonnull align 8 %i.kk, i64 %i.kn, i1 false), !noalias !27431
  %i.ko = add nsw i64 %storemerge86, -1           ; 3 uses
  store i64 %i.ko, ptr %i.d, align 8
  %i.kp = icmp samesign ugt i64 %storemerge86, 2
  br i1 %i.kp, label %.lr.ph, label %._crit_edge

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit36: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i35, %bb.f
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i8 0, 3) i8 @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort10merge_sortNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNvYBN_NtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2ltECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 4 captures(address) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.c, align 8
  %.not57 = icmp eq i64 %1, 0
  br i1 %.not57, label %.loopexit7, label %.lr.ph56

.loopexit7:                                       ; preds = %._crit_edge, %bb.a, %bb.f
  %.sroa.0.0 = phi i8 [ %., %bb.f ], [ 2, %bb.a ], [ 2, %._crit_edge ]
  %.val30 = load i64, ptr %i.a, align 8           ; 2 uses
  %i.d = icmp eq i64 %.val30, 0
  br i1 %i.d, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i: ; preds = %.loopexit7
  %.val31 = load ptr, ptr %i.b, align 8, !nonnull !67, !noundef !67
  %i.e = shl nuw i64 %.val30, 4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val31, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 8) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %.loopexit7, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i8 %.sroa.0.0

.lr.ph56:                                         ; preds = %bb.a, %._crit_edge
  %i.f = phi ptr [ %i.ba, %._crit_edge ], [ inttoptr (i64 8 to ptr), %bb.a ]
  %i.g = phi i64 [ %storemerge.lcssa, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %.sroa.02.054 = phi i64 [ %.sroa.0.0.i34, %._crit_edge ], [ 0, %bb.a ] ; 10 uses
  %i.h = sub nuw nsw i64 %1, %.sroa.02.054        ; 9 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.02.054 ; 8 uses
  %i.j = icmp samesign ult i64 %i.h, 2
  br i1 %i.j, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph56
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %.val14.i = load i32, ptr %i.k, align 4, !alias.scope !27454, !noundef !67 ; 3 uses
  %.val15.i = load i32, ptr %i.i, align 4, !alias.scope !27454, !noundef !67
  %i.l = icmp ult i32 %.val14.i, %.val15.i
  %.not11.i = icmp eq i64 %i.h, 2                 ; 2 uses
  br i1 %i.l, label %.preheader.i, label %.preheader1.i

.preheader1.i:                                    ; preds = %bb.b
  br i1 %.not11.i, label %.loopexit, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.b
  br i1 %.not11.i, label %.loopexit, label %.lr.ph7.i

.lr.ph.i:                                         ; preds = %.preheader1.i, %bb.c
  %.val13.i = phi i32 [ %.val12.i, %bb.c ], [ %.val14.i, %.preheader1.i ]
  %.sroa.01.03.i = phi i64 [ %i.o, %bb.c ], [ 2, %.preheader1.i ] ; 4 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.sroa.01.03.i
  %3 = add nsw i64 %.sroa.01.03.i, -1
  %4 = icmp samesign ult i64 %3, %i.h
  tail call void @llvm.assume(i1 %4)
  %.val12.i = load i32, ptr %i.m, align 4, !alias.scope !27454, !noundef !67 ; 2 uses
  %i.n = icmp ult i32 %.val12.i, %.val13.i
  br i1 %i.n, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.o = add nuw nsw i64 %.sroa.01.03.i, 1        ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.o, %i.h
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph7.i:                                        ; preds = %.preheader.i, %bb.d
  %.val11.i = phi i32 [ %.val.i, %bb.d ], [ %.val14.i, %.preheader.i ]
  %.sroa.01.16.i = phi i64 [ %i.r, %bb.d ], [ 2, %.preheader.i ] ; 4 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.sroa.01.16.i
  %5 = add nsw i64 %.sroa.01.16.i, -1
  %6 = icmp samesign ult i64 %5, %i.h
  tail call void @llvm.assume(i1 %6)
  %.val.i = load i32, ptr %i.p, align 4, !alias.scope !27454, !noundef !67 ; 2 uses
  %i.q = icmp ult i32 %.val.i, %.val11.i
  br i1 %i.q, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %.lr.ph7.i
  %i.r = add nuw nsw i64 %.sroa.01.16.i, 1        ; 2 uses
  %exitcond14.not.i = icmp eq i64 %i.r, %i.h
  br i1 %exitcond14.not.i, label %.loopexit, label %.lr.ph7.i

.loopexit8:                                       ; preds = %bb.j, %bb.m
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp:                               ; preds = %.invoke152, %.invoke, %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp, %.loopexit8
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit8 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.val = load i64, ptr %i.a, align 8             ; 2 uses
  %i.s = icmp eq i64 %.val, 0
  br i1 %i.s, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit33, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i32

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i32: ; preds = %bb.e
  %.val29 = load ptr, ptr %i.b, align 8, !nonnull !67, !noundef !67
  %i.t = shl nuw i64 %.val, 4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val29, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit33

.loopexit:                                        ; preds = %bb.c, %.lr.ph.i, %bb.d, %.lr.ph7.i, %.preheader.i, %.preheader1.i, %.lr.ph56
  %.sroa.4.0.i = phi i1 [ false, %.lr.ph56 ], [ true, %.preheader.i ], [ true, %bb.d ], [ false, %.preheader1.i ], [ true, %.lr.ph7.i ], [ false, %.lr.ph.i ], [ false, %bb.c ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %i.h, %.lr.ph56 ], [ 2, %.preheader.i ], [ %i.h, %bb.d ], [ 2, %.preheader1.i ], [ %.sroa.01.16.i, %.lr.ph7.i ], [ %i.h, %bb.c ], [ %.sroa.01.03.i, %.lr.ph.i ] ; 7 uses
  %i.u = add i64 %.sroa.0.0.i, %.sroa.02.054      ; 8 uses
  %i.v = icmp eq i64 %.sroa.02.054, 0
  %i.w = icmp eq i64 %i.u, %1
  %or.cond = and i1 %i.v, %i.w
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.loopexit
  %. = zext i1 %.sroa.4.0.i to i8
  br label %.loopexit7

bb.g:                                             ; preds = %.loopexit
  br i1 %.sroa.4.0.i, label %bb.k, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit

_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i, %middle.block, %bb.l, %bb.g
  %i.x = icmp uge i64 %i.u, %.sroa.02.054
  %i.y = icmp ule i64 %i.u, %1
  %or.cond.i = and i1 %i.x, %i.y
  br i1 %or.cond.i, label %bb.i, label %bb.h, !prof !125

bb.h:                                             ; preds = %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @586, i64 noundef 44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @587) #60
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit
  %i.z = icmp samesign ult i64 %.sroa.0.0.i, 10
  %i.aa = icmp samesign ult i64 %i.u, %1
  %or.cond3.i = and i1 %i.z, %i.aa
  br i1 %or.cond3.i, label %bb.j, label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNvYBX_NtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2ltECskcxRuJ53GpR_9rustworkx.exit

bb.j:                                             ; preds = %bb.i
  %i.ab = add nuw nsw i64 %.sroa.02.054, 10
  %i.ac = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 range(i64 0, 2305843009213693952) %1) ; 2 uses
  %i.ad = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 1)
  %i.ae = sub i64 %i.ac, %.sroa.02.054            ; 2 uses
  invoke fastcc void @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort25insertion_sort_shift_leftNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNvYB12_NtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2ltECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 4 %i.i, i64 noundef %i.ae, i64 noundef %i.ad) #62
          to label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNvYBX_NtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2ltECskcxRuJ53GpR_9rustworkx.exit unwind label %.loopexit8

bb.k:                                             ; preds = %bb.g
  %i.af = icmp ult i64 %i.u, %.sroa.02.054
  %.not = icmp ugt i64 %i.u, %1
  %or.cond27 = or i1 %i.af, %.not
  br i1 %or.cond27, label %.invoke, label %bb.l, !prof !90

.invoke:                                          ; preds = %bb.k, %bb.w
  %i.ag = phi i64 [ %i.cf, %bb.w ], [ %.sroa.02.054, %bb.k ]
  %i.ah = phi i64 [ %i.co, %bb.w ], [ %i.u, %bb.k ]
  %i.ai = phi ptr [ @577, %bb.w ], [ @578, %bb.k ]
  invoke void @_RNvNtNtCslwFuT2d6ECx_4core5slice5index16slice_index_fail(i64 noundef %i.ag, i64 noundef %i.ah, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ai) #61
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.aj = lshr i64 %.sroa.0.0.i, 1                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27455)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27456)
  %.not.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i: ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.sroa.0.0.i ; 2 uses
  %min.iters.check = icmp samesign ult i64 %.sroa.0.0.i, 16
  br i1 %min.iters.check, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i
  %n.vec = and i64 %i.aj, 4611686018427387896     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.al = xor i64 %index, -1
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index ; 3 uses
  %i.an = getelementptr [4 x i8], ptr %i.ak, i64 %i.al ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.am, align 4, !alias.scope !27455, !noalias !27456
  %wide.load184 = load <4 x i32>, ptr %i.ao, align 4, !alias.scope !27455, !noalias !27456
  %i.ap = getelementptr i8, ptr %i.an, i64 -12    ; 2 uses
  %i.aq = getelementptr i8, ptr %i.an, i64 -28    ; 2 uses
  %wide.load185 = load <4 x i32>, ptr %i.ap, align 4, !alias.scope !27456, !noalias !27455
  %wide.load186 = load <4 x i32>, ptr %i.aq, align 4, !alias.scope !27456, !noalias !27455
  %reverse = shufflevector <4 x i32> %wide.load185, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse187 = shufflevector <4 x i32> %wide.load186, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %i.am, align 4, !alias.scope !27455, !noalias !27456
  store <4 x i32> %reverse187, ptr %i.ao, align 4, !alias.scope !27455, !noalias !27456
  %reverse188 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse189 = shufflevector <4 x i32> %wide.load184, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse188, ptr %i.ap, align 4, !alias.scope !27456, !noalias !27455
  store <4 x i32> %reverse189, ptr %i.aq, align 4, !alias.scope !27456, !noalias !27455
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !27437

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i, %middle.block
  %.sroa.0.016.i.ph = phi i64 [ 0, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i
  %.sroa.0.016.i = phi i64 [ %i.ax, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i ], [ %.sroa.0.016.i.ph, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader ] ; 3 uses
  %i.as = xor i64 %.sroa.0.016.i, -1
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.sroa.0.016.i ; 2 uses
  %i.au = getelementptr [4 x i8], ptr %i.ak, i64 %i.as ; 2 uses
  %i.av = load i32, ptr %i.at, align 4, !alias.scope !27455, !noalias !27456, !noundef !67
  %i.aw = load i32, ptr %i.au, align 4, !alias.scope !27456, !noalias !27455
  store i32 %i.aw, ptr %i.at, align 4, !alias.scope !27455, !noalias !27456
  store i32 %i.av, ptr %i.au, align 4, !alias.scope !27456, !noalias !27455
  %i.ax = add nuw nsw i64 %.sroa.0.016.i, 1       ; 2 uses
  %exitcond.not.i36 = icmp eq i64 %i.ax, %i.aj
  br i1 %exitcond.not.i36, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i, !llvm.loop !27438

_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNvYBX_NtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2ltECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.i, %bb.j
  %.pre-phi = phi i64 [ %i.ae, %bb.j ], [ %.sroa.0.0.i, %bb.i ]
  %.sroa.0.0.i34 = phi i64 [ %i.ac, %bb.j ], [ %i.u, %bb.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27457)
  %i.ay = load i64, ptr %i.a, align 8, !range !70, !alias.scope !27457, !noundef !67
  %i.az = icmp eq i64 %i.g, %i.ay
  br i1 %i.az, label %bb.m, label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit

bb.m:                                             ; preds = %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNvYBX_NtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2ltECskcxRuJ53GpR_9rustworkx.exit
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #62
          to label %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge unwind label %.loopexit8

._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge: ; preds = %bb.m
  %.pre = load ptr, ptr %i.b, align 8, !alias.scope !27457
  br label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit

_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit: ; preds = %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNvYBX_NtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2ltECskcxRuJ53GpR_9rustworkx.exit
  %i.ba = phi ptr [ %.pre, %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge ], [ %i.f, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNvYBX_NtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2ltECskcxRuJ53GpR_9rustworkx.exit ] ; 6 uses
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %i.g ; 2 uses
  store i64 %.pre-phi, ptr %i.bb, align 8, !noalias !27457
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 %.sroa.02.054, ptr %i.bc, align 8, !noalias !27457
  %i.bd = add i64 %i.g, 1                         ; 3 uses
  %i.be = icmp samesign ugt i64 %i.bd, 1
  br i1 %i.be, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit
  %storemerge47 = phi i64 [ %i.ed, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit ], [ %i.bd, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit ] ; 14 uses
  %i.bf = getelementptr [16 x i8], ptr %i.ba, i64 %storemerge47 ; 5 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 -16
  %i.bh = getelementptr i8, ptr %i.bf, i64 -8
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !27458, !noundef !67
  %i.bj = load i64, ptr %i.bg, align 8, !alias.scope !27458, !noundef !67 ; 4 uses
  %i.bk = add i64 %i.bj, %i.bi
  %i.bl = icmp eq i64 %i.bk, %1
  br i1 %i.bl, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %i.bm = getelementptr i8, ptr %i.bf, i64 -32
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !27458, !noundef !67 ; 3 uses
  %.not.i40 = icmp ugt i64 %i.bn, %i.bj
  br i1 %.not.i40, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.not14.i = icmp eq i64 %storemerge47, 2
  br i1 %.not14.i, label %._crit_edge, label %bb.r

bb.p:                                             ; preds = %bb.n, %.lr.ph
  %.not17.i = icmp eq i64 %storemerge47, 2
end_hunk_6
begin_hunk_7_@_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort10merge_sortNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNvYBN_NtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2ltECskcxRuJ53GpR_9rustworkx:bb.a
  %i.bo = icmp samesign ugt i64 %storemerge47, 3
  br i1 %i.bo, label %bb.s, label %._crit_edge

bb.r:                                             ; preds = %bb.o
  %i.bp = getelementptr i8, ptr %i.bf, i64 -48
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !27458, !noundef !67 ; 2 uses
  %i.br = add i64 %i.bn, %i.bj
  %.not15.i = icmp ugt i64 %i.bq, %i.br
  br i1 %.not15.i, label %bb.q, label %.thread.i

bb.s:                                             ; preds = %bb.q
  %i.bs = getelementptr i8, ptr %i.bf, i64 -64
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !27458, !noundef !67
  %i.bu = add i64 %i.bq, %i.bn
  %.not16.i = icmp ugt i64 %i.bt, %i.bu
  br i1 %.not16.i, label %._crit_edge, label %.thread.i

bb.t:                                             ; preds = %.thread.i, %bb.p
  %i.bv = add nsw i64 %storemerge47, -2
  br label %bb.u

.thread.i:                                        ; preds = %bb.p, %bb.s, %bb.r
  %i.bw = add nsw i64 %storemerge47, -3           ; 2 uses
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %i.bw
  %i.by = load i64, ptr %i.bx, align 8, !alias.scope !27458, !noundef !67
  %i.bz = icmp ult i64 %i.by, %i.bj
  br i1 %i.bz, label %bb.u, label %bb.t

._crit_edge:                                      ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit, %bb.o, %bb.q, %bb.s, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit
  %storemerge.lcssa = phi i64 [ %i.bd, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit ], [ %storemerge47, %bb.s ], [ 3, %bb.q ], [ 2, %bb.o ], [ 1, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit ] ; 2 uses
  store i64 %storemerge.lcssa, ptr %i.c, align 8
  %i.ca = icmp ult i64 %.sroa.0.0.i34, %1
  br i1 %i.ca, label %.lr.ph56, label %.loopexit7

bb.u:                                             ; preds = %bb.t, %.thread.i
  %.sroa.4.0.i38.ph = phi i64 [ %i.bw, %.thread.i ], [ %i.bv, %bb.t ] ; 5 uses
  %i.cb = icmp ult i64 %.sroa.4.0.i38.ph, %storemerge47
  br i1 %i.cb, label %bb.v, label %.invoke152

bb.v:                                             ; preds = %bb.u
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %.sroa.4.0.i38.ph ; 4 uses
  %i.cd = load i64, ptr %i.cc, align 8, !noundef !67 ; 7 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !noundef !67 ; 5 uses
  %i.cg = add nuw nsw i64 %.sroa.4.0.i38.ph, 1    ; 3 uses
  %i.ch = icmp ult i64 %i.cg, %storemerge47
  br i1 %i.ch, label %bb.w, label %.invoke152

.invoke152:                                       ; preds = %bb.v, %bb.u
  %i.ci = phi i64 [ %.sroa.4.0.i38.ph, %bb.u ], [ %i.cg, %bb.v ]
  %i.cj = phi ptr [ @575, %bb.u ], [ @576, %bb.v ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.ci, i64 noundef %storemerge47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cj) #61
          to label %.cont153 unwind label %.loopexit.split-lp

.cont153:                                         ; preds = %.invoke152
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %i.cg ; 3 uses
  %i.cl = load i64, ptr %i.ck, align 8, !noundef !67 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !noundef !67
  %i.co = add i64 %i.cn, %i.cl                    ; 5 uses
  %i.cp = icmp ult i64 %i.co, %i.cf
  %.not26 = icmp ugt i64 %i.co, %1
  %or.cond28 = or i1 %i.cp, %.not26
  br i1 %or.cond28, label %.invoke, label %bb.x, !prof !90

bb.x:                                             ; preds = %bb.w
  %i.cq = sub nuw i64 %i.co, %i.cf                ; 3 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cf ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27459)
  %.idx30.i = shl nuw nsw i64 %i.cd, 2            ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.idx30.i ; 4 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.co ; 2 uses
  %i.cu = sub i64 %i.cq, %i.cd                    ; 2 uses
  %.not.i41 = icmp ugt i64 %i.cd, %i.cu
  br i1 %.not.i41, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cv = shl nuw nsw i64 %i.cu, 2                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr nonnull align 4 %i.cs, i64 %i.cv, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 %i.cv ; 2 uses
  %.not32.i = icmp eq i64 %i.cq, %i.cd
  br i1 %.not32.i, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit, label %.lr.ph27.i

bb.z:                                             ; preds = %bb.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr nonnull align 4 %i.cr, i64 %.idx30.i, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 %.idx30.i ; 3 uses
  %i.cy = icmp ne i64 %i.cd, 0
  %i.cz = icmp samesign ult i64 %i.cd, %i.cq
  %or.cond3018.i = select i1 %i.cy, i1 %i.cz, i1 false
  br i1 %or.cond3018.i, label %.lr.ph.i42, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit

.lr.ph27.i:                                       ; preds = %bb.y, %.lr.ph27.i
  %.sroa.08.026.i = phi ptr [ %i.dg, %.lr.ph27.i ], [ %i.ct, %bb.y ]
  %.sroa.10.025.i = phi ptr [ %i.df, %.lr.ph27.i ], [ %i.cw, %bb.y ] ; 2 uses
  %.sroa.18.024.i = phi ptr [ %i.dd, %.lr.ph27.i ], [ %i.cs, %bb.y ] ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %.sroa.10.025.i, i64 -4
  %i.db = getelementptr inbounds i8, ptr %.sroa.18.024.i, i64 -4
  %.val31.i = load i32, ptr %i.da, align 4, !noalias !27459, !noundef !67
  %.val32.i = load i32, ptr %i.db, align 4, !alias.scope !27459, !noundef !67
  %i.dc = icmp ult i32 %.val31.i, %.val32.i       ; 3 uses
  %.neg.i = sext i1 %i.dc to i64
  %i.dd = getelementptr inbounds [4 x i8], ptr %.sroa.18.024.i, i64 %.neg.i ; 4 uses
  %i.de = xor i1 %i.dc, true
  %.neg29.i = sext i1 %i.de to i64
  %i.df = getelementptr inbounds [4 x i8], ptr %.sroa.10.025.i, i64 %.neg29.i ; 4 uses
  %.sroa.020.0.i = select i1 %i.dc, ptr %i.dd, ptr %i.df
  %i.dg = getelementptr inbounds i8, ptr %.sroa.08.026.i, i64 -4 ; 2 uses
  %i.dh = load i32, ptr %.sroa.020.0.i, align 4
  store i32 %i.dh, ptr %i.dg, align 4, !alias.scope !27459
  %i.di = icmp ult ptr %i.cr, %i.dd
  %i.dj = icmp ult ptr %2, %i.df
  %or.cond.i44 = select i1 %i.di, i1 %i.dj, i1 false
  br i1 %or.cond.i44, label %.lr.ph27.i, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit

.lr.ph.i42:                                       ; preds = %bb.z, %.lr.ph.i42
  %.sroa.0.021.i = phi ptr [ %i.do, %.lr.ph.i42 ], [ %i.cs, %bb.z ] ; 2 uses
  %.sroa.0.120.i = phi ptr [ %i.dr, %.lr.ph.i42 ], [ %2, %bb.z ] ; 2 uses
  %.sroa.18.219.i = phi ptr [ %i.dm, %.lr.ph.i42 ], [ %i.cr, %bb.z ] ; 2 uses
  %.sroa.0.0.val.i = load i32, ptr %.sroa.0.021.i, align 4, !alias.scope !27459, !noundef !67 ; 2 uses
  %.val.i43 = load i32, ptr %.sroa.0.120.i, align 4, !noalias !27459, !noundef !67 ; 2 uses
  %i.dk = icmp ult i32 %.sroa.0.0.val.i, %.val.i43 ; 2 uses
  %i.dl = tail call i32 @llvm.umin.i32(i32 %.sroa.0.0.val.i, i32 %.val.i43)
  store i32 %i.dl, ptr %.sroa.18.219.i, align 4, !alias.scope !27459
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.18.219.i, i64 4 ; 2 uses
  %i.dn = zext i1 %i.dk to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.021.i, i64 %i.dn ; 2 uses
  %i.dp = xor i1 %i.dk, true
  %i.dq = zext i1 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.120.i, i64 %i.dq ; 3 uses
  %i.ds = icmp ult ptr %i.dr, %i.cx
  %i.dt = icmp ult ptr %i.do, %i.ct
  %or.cond30.i = select i1 %i.ds, i1 %i.dt, i1 false
  br i1 %or.cond30.i, label %.lr.ph.i42, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit: ; preds = %.lr.ph.i42, %.lr.ph27.i, %bb.z, %bb.y
  %.sroa.18.1.i = phi ptr [ %i.dd, %.lr.ph27.i ], [ %i.cs, %bb.y ], [ %i.cr, %bb.z ], [ %i.dm, %.lr.ph.i42 ]
  %.sroa.10.1.i = phi ptr [ %i.df, %.lr.ph27.i ], [ %i.cw, %bb.y ], [ %i.cx, %bb.z ], [ %i.cx, %.lr.ph.i42 ]
  %.sroa.0.015.i = phi ptr [ %2, %.lr.ph27.i ], [ %2, %bb.y ], [ %2, %bb.z ], [ %i.dr, %.lr.ph.i42 ] ; 2 uses
  %i.du = ptrtoint ptr %.sroa.10.1.i to i64
  %i.dv = ptrtoint ptr %.sroa.0.015.i to i64
  %i.dw = sub i64 %i.du, %i.dv
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.18.1.i, ptr align 4 %.sroa.0.015.i, i64 %i.dw, i1 false), !noalias !27460
  %i.dx = add i64 %i.cl, %i.cd
  store i64 %i.dx, ptr %i.ck, align 8
  store i64 %i.cf, ptr %i.cm, align 8
  %i.dy = icmp samesign ult i64 %storemerge47, 576460752303423488
  tail call void @llvm.assume(i1 %i.dy)
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ea = xor i64 %.sroa.4.0.i38.ph, -1
  %i.eb = add nsw i64 %storemerge47, %i.ea
  %i.ec = shl nuw nsw i64 %i.eb, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cc, ptr nonnull align 8 %i.dz, i64 %i.ec, i1 false), !noalias !27461
  %i.ed = add nsw i64 %storemerge47, -1
  %i.ee = icmp samesign ugt i64 %storemerge47, 2
  br i1 %i.ee, label %.lr.ph, label %._crit_edge

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit33: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i32, %bb.e
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i8 0, 3) i8 @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort10merge_sortjNCINvYSjINtB4_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB2q_11Vf2ppSorterINtB2q_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0EB2u_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noundef %2, ptr nofree readonly captures(none) %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.c, align 8
  %.not254 = icmp eq i64 %1, 0
  br i1 %.not254, label %.loopexit7, label %.lr.ph253

.lr.ph253:                                        ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.0.val, i64 8     ; 3 uses
  br label %bb.b

.loopexit7:                                       ; preds = %._crit_edge, %bb.a, %bb.l
  %.sroa.0.0 = phi i8 [ %., %bb.l ], [ 2, %bb.a ], [ 2, %._crit_edge ]
  %.val30 = load i64, ptr %i.a, align 8           ; 2 uses
  %i.e = icmp eq i64 %.val30, 0
  br i1 %i.e, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i: ; preds = %.loopexit7
  %.val31 = load ptr, ptr %i.b, align 8, !nonnull !67, !noundef !67
  %i.f = shl nuw i64 %.val30, 4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val31, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 8) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %.loopexit7, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i8 %.sroa.0.0

bb.b:                                             ; preds = %.lr.ph253, %._crit_edge
  %i.g = phi ptr [ inttoptr (i64 8 to ptr), %.lr.ph253 ], [ %i.di, %._crit_edge ]
  %i.h = phi i64 [ 0, %.lr.ph253 ], [ %storemerge.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.02.0251 = phi i64 [ 0, %.lr.ph253 ], [ %.sroa.0.0.i48, %._crit_edge ] ; 10 uses
  %i.i = sub nuw nsw i64 %1, %.sroa.02.0251       ; 9 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.02.0251 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27508)
  %i.k = icmp samesign ult i64 %i.i, 2
  br i1 %i.k, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val17.i = load i64, ptr %i.l, align 8, !alias.scope !27508, !noundef !67 ; 9 uses
  %.val18.i = load i64, ptr %i.j, align 8, !alias.scope !27508 ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val3.i.i = load ptr, ptr %.0.val, align 8, !noalias !27508, !nonnull !67, !align !98, !noundef !67 ; 2 uses
  %.val4.i.i = load ptr, ptr %i.d, align 8, !noalias !27508 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val3.i.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !27509, !noundef !67 ; 12 uses
  %i.o = icmp ult i64 %.val17.i, %i.n
  br i1 %i.o, label %bb.d, label %.invoke743

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i.i) ]
  %i.p = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noalias !27509, !noundef !67 ; 12 uses
  %i.r = icmp ult i64 %.val17.i, %i.q
  br i1 %i.r, label %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i.i, label %.invoke743

.invoke743:                                       ; preds = %bb.e, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i.i, %bb.d, %bb.c, %bb.g, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i21.i, %bb.f, %.lr.ph.i, %bb.j, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i27.i, %bb.i, %.lr.ph26.i
  %i.s = phi i64 [ %.val15.i, %bb.g ], [ %.val12.i, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i27.i ], [ %.val11.i, %.lr.ph26.i ], [ %.val11.i, %bb.i ], [ %.val12.i, %bb.j ], [ %.val14.i, %.lr.ph.i ], [ %.val14.i, %bb.f ], [ %.val15.i, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i21.i ], [ %.val17.i, %bb.c ], [ %.val17.i, %bb.d ], [ %.val18.i, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i.i ], [ %.val18.i, %bb.e ]
  %i.t = phi i64 [ %i.q, %bb.g ], [ %i.n, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i27.i ], [ %i.n, %.lr.ph26.i ], [ %i.q, %bb.i ], [ %i.q, %bb.j ], [ %i.n, %.lr.ph.i ], [ %i.q, %bb.f ], [ %i.n, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i21.i ], [ %i.n, %bb.c ], [ %i.q, %bb.d ], [ %i.n, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i.i ], [ %i.q, %bb.e ]
  %i.u = phi ptr [ @1476, %bb.g ], [ @1475, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i27.i ], [ @1475, %.lr.ph26.i ], [ @1476, %bb.i ], [ @1476, %bb.j ], [ @1475, %.lr.ph.i ], [ @1476, %bb.f ], [ @1475, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i21.i ], [ @1475, %bb.c ], [ @1476, %bb.d ], [ @1475, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i.i ], [ @1476, %bb.e ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.s, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u) #60
          to label %.cont744 unwind label %.loopexit.split-lp

.cont744:                                         ; preds = %.invoke743
  unreachable

_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i.i: ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !noalias !27509, !nonnull !67, !noundef !67 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val3.i.i, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !noalias !27509, !nonnull !67, !noundef !67 ; 6 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.val17.i
  %i.aa = load i64, ptr %i.z, align 8, !noalias !27509, !noundef !67 ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.val17.i
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !27509, !noundef !67 ; 2 uses
  %i.ad = icmp ult i64 %.val18.i, %i.n
  br i1 %i.ad, label %bb.e, label %.invoke743

bb.e:                                             ; preds = %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i.i
  %i.ae = icmp ult i64 %.val18.i, %i.q
  br i1 %i.ae, label %_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0B24_.exit.i, label %.invoke743

_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0B24_.exit.i: ; preds = %bb.e
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.val18.i
  %i.ag = load i64, ptr %i.af, align 8, !noalias !27510, !noundef !67 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.val18.i
  %i.ai = load i64, ptr %i.ah, align 8, !noalias !27510, !noundef !67 ; 2 uses
  %i.aj = icmp eq i64 %i.aa, %i.ag
  %i.ak = icmp ult i64 %i.aa, %i.ag
  %i.al = icmp eq i64 %i.ac, %i.ai
  %i.am = icmp ult i64 %i.ac, %i.ai
  %i.an = icmp ult i64 %.val18.i, %.val17.i
  %spec.select.i.i = select i1 %i.al, i1 %i.an, i1 %i.am
  %.sroa.0.1.in.i.i.i = select i1 %i.aj, i1 %spec.select.i.i, i1 %i.ak
  %.not29.i = icmp eq i64 %i.i, 2                 ; 2 uses
  br i1 %.sroa.0.1.in.i.i.i, label %.preheader.i, label %.preheader1.i

.preheader1.i:                                    ; preds = %_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0B24_.exit.i
  br i1 %.not29.i, label %.loopexit, label %.lr.ph.i

.preheader.i:                                     ; preds = %_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0B24_.exit.i
  br i1 %.not29.i, label %.loopexit, label %.lr.ph26.i

.lr.ph.i:                                         ; preds = %.preheader1.i, %bb.h
  %.val15.i = phi i64 [ %.val14.i, %bb.h ], [ %.val17.i, %.preheader1.i ] ; 7 uses
  %.sroa.01.023.i = phi i64 [ %i.bg, %bb.h ], [ 2, %.preheader1.i ] ; 4 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.01.023.i
  %3 = add nsw i64 %.sroa.01.023.i, -1
  %4 = icmp samesign ult i64 %3, %i.i
  tail call void @llvm.assume(i1 %4)
  %.val14.i = load i64, ptr %i.ao, align 8, !alias.scope !27508, !noundef !67 ; 8 uses
  %i.ap = icmp ult i64 %.val14.i, %i.n
  br i1 %i.ap, label %bb.f, label %.invoke743

bb.f:                                             ; preds = %.lr.ph.i
  %i.aq = icmp ult i64 %.val14.i, %i.q
  br i1 %i.aq, label %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i21.i, label %.invoke743

_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i21.i: ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.val14.i
  %i.as = load i64, ptr %i.ar, align 8, !noalias !27511, !noundef !67 ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.val14.i
  %i.au = load i64, ptr %i.at, align 8, !noalias !27511, !noundef !67 ; 2 uses
  %i.av = icmp ult i64 %.val15.i, %i.n
  br i1 %i.av, label %bb.g, label %.invoke743

bb.g:                                             ; preds = %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i21.i
  %i.aw = icmp ult i64 %.val15.i, %i.q
  br i1 %i.aw, label %_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0B24_.exit24.i, label %.invoke743

_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0B24_.exit24.i: ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.val15.i
  %i.ay = load i64, ptr %i.ax, align 8, !noalias !27512, !noundef !67 ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.val15.i
  %i.ba = load i64, ptr %i.az, align 8, !noalias !27512, !noundef !67 ; 2 uses
  %i.bb = icmp eq i64 %i.as, %i.ay
  %i.bc = icmp ult i64 %i.as, %i.ay
  %i.bd = icmp eq i64 %i.au, %i.ba
  %i.be = icmp ult i64 %i.au, %i.ba
  %i.bf = icmp ult i64 %.val15.i, %.val14.i
  %spec.select.i22.i = select i1 %i.bd, i1 %i.bf, i1 %i.be
  %.sroa.0.1.in.i.i23.i = select i1 %i.bb, i1 %spec.select.i22.i, i1 %i.bc
  br i1 %.sroa.0.1.in.i.i23.i, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0B24_.exit24.i
  %i.bg = add nuw nsw i64 %.sroa.01.023.i, 1      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bg, %i.i
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph26.i:                                       ; preds = %.preheader.i, %bb.k
  %.val12.i = phi i64 [ %.val11.i, %bb.k ], [ %.val17.i, %.preheader.i ] ; 7 uses
  %.sroa.01.125.i = phi i64 [ %i.bz, %bb.k ], [ 2, %.preheader.i ] ; 4 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.01.125.i
  %5 = add nsw i64 %.sroa.01.125.i, -1
  %6 = icmp samesign ult i64 %5, %i.i
  tail call void @llvm.assume(i1 %6)
  %.val11.i = load i64, ptr %i.bh, align 8, !alias.scope !27508, !noundef !67 ; 8 uses
  %i.bi = icmp ult i64 %.val11.i, %i.n
  br i1 %i.bi, label %bb.i, label %.invoke743

bb.i:                                             ; preds = %.lr.ph26.i
  %i.bj = icmp ult i64 %.val11.i, %i.q
  br i1 %i.bj, label %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i27.i, label %.invoke743

_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i27.i: ; preds = %bb.i
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.val11.i
  %i.bl = load i64, ptr %i.bk, align 8, !noalias !27513, !noundef !67 ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.val11.i
  %i.bn = load i64, ptr %i.bm, align 8, !noalias !27513, !noundef !67 ; 2 uses
  %i.bo = icmp ult i64 %.val12.i, %i.n
  br i1 %i.bo, label %bb.j, label %.invoke743

bb.j:                                             ; preds = %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i27.i
  %i.bp = icmp ult i64 %.val12.i, %i.q
  br i1 %i.bp, label %_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0B24_.exit30.i, label %.invoke743

_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0B24_.exit30.i: ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.val12.i
  %i.br = load i64, ptr %i.bq, align 8, !noalias !27514, !noundef !67 ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.val12.i
  %i.bt = load i64, ptr %i.bs, align 8, !noalias !27514, !noundef !67 ; 2 uses
  %i.bu = icmp eq i64 %i.bl, %i.br
  %i.bv = icmp ult i64 %i.bl, %i.br
  %i.bw = icmp eq i64 %i.bn, %i.bt
  %i.bx = icmp ult i64 %i.bn, %i.bt
  %i.by = icmp ult i64 %.val12.i, %.val11.i
  %spec.select.i28.i = select i1 %i.bw, i1 %i.by, i1 %i.bx
  %.sroa.0.1.in.i.i29.i = select i1 %i.bu, i1 %spec.select.i28.i, i1 %i.bv
  br i1 %.sroa.0.1.in.i.i29.i, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0B24_.exit30.i
  %i.bz = add nuw nsw i64 %.sroa.01.125.i, 1      ; 2 uses
  %exitcond48.not.i = icmp eq i64 %i.bz, %i.i
  br i1 %exitcond48.not.i, label %.loopexit, label %.lr.ph26.i

.loopexit8:                                       ; preds = %bb.p, %bb.s
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %.invoke743, %.invoke741, %.invoke, %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit8, %.loopexit.split-lp, %bb.ao
  %eh.lpad-body = phi { ptr, i32 } [ %i.ie, %bb.ao ], [ %lpad.loopexit, %.loopexit8 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.val = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ca = icmp eq i64 %.val, 0
  br i1 %i.ca, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit47, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i46

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i46: ; preds = %.body
  %.val29 = load ptr, ptr %i.b, align 8, !nonnull !67, !noundef !67
  %i.cb = shl nuw i64 %.val, 4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val29, i64 noundef %i.cb, i64 noundef range(i64 1, -9223372036854775807) 8) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit47

.loopexit:                                        ; preds = %bb.h, %_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0B24_.exit24.i, %bb.k, %_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0B24_.exit30.i, %.preheader.i, %.preheader1.i, %bb.b
  %.sroa.4.0.i = phi i1 [ false, %bb.b ], [ true, %.preheader.i ], [ true, %bb.k ], [ false, %.preheader1.i ], [ true, %_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0B24_.exit30.i ], [ false, %_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0B24_.exit24.i ], [ false, %bb.h ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %i.i, %bb.b ], [ 2, %.preheader.i ], [ %i.i, %bb.k ], [ 2, %.preheader1.i ], [ %.sroa.01.125.i, %_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0B24_.exit30.i ], [ %i.i, %bb.h ], [ %.sroa.01.023.i, %_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0B24_.exit24.i ] ; 7 uses
  %i.cc = add i64 %.sroa.0.0.i, %.sroa.02.0251    ; 8 uses
  %i.cd = icmp eq i64 %.sroa.02.0251, 0
  %i.ce = icmp eq i64 %i.cc, %1
  %or.cond = and i1 %i.cd, %i.ce
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.loopexit
  %. = zext i1 %.sroa.4.0.i to i8
  br label %.loopexit7

bb.m:                                             ; preds = %.loopexit
  br i1 %.sroa.4.0.i, label %bb.q, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapjECskcxRuJ53GpR_9rustworkx.exit

_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapjECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i, %middle.block, %bb.r, %bb.m
  %i.cf = icmp uge i64 %i.cc, %.sroa.02.0251
  %i.cg = icmp ule i64 %i.cc, %1
  %or.cond.i = and i1 %i.cf, %i.cg
  br i1 %or.cond.i, label %bb.o, label %bb.n, !prof !125

bb.n:                                             ; preds = %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapjECskcxRuJ53GpR_9rustworkx.exit
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @586, i64 noundef 44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @587) #60
          to label %.noexc49 unwind label %.loopexit.split-lp

.noexc49:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapjECskcxRuJ53GpR_9rustworkx.exit
  %i.ch = icmp samesign ult i64 %.sroa.0.0.i, 10
  %i.ci = icmp samesign ult i64 %i.cc, %1
  %or.cond3.i = and i1 %i.ch, %i.ci
  br i1 %or.cond3.i, label %bb.p, label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchjNCINvYSjINtB4_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB2A_11Vf2ppSorterINtB2A_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0EB2E_.exit

bb.p:                                             ; preds = %bb.o
  %i.cj = add nuw nsw i64 %.sroa.02.0251, 10
  %i.ck = tail call i64 @llvm.umin.i64(i64 %i.cj, i64 range(i64 1, 1152921504606846976) %1) ; 2 uses
  %i.cl = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 1)
  %i.cm = sub nsw i64 %i.ck, %.sroa.02.0251       ; 2 uses
  invoke fastcc void @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort25insertion_sort_shift_leftjNCINvYSjINtB4_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB2F_11Vf2ppSorterINtB2F_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0EB2J_(ptr noalias nofree noundef nonnull align 8 %i.j, i64 noundef %i.cm, i64 noundef %i.cl, ptr readonly %.0.val) #62
          to label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchjNCINvYSjINtB4_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB2A_11Vf2ppSorterINtB2A_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0EB2E_.exit unwind label %.loopexit8

bb.q:                                             ; preds = %bb.m
  %i.cn = icmp ult i64 %i.cc, %.sroa.02.0251
  %.not = icmp ugt i64 %i.cc, %1
  %or.cond27 = or i1 %i.cn, %.not
  br i1 %or.cond27, label %.invoke, label %bb.r, !prof !90

.invoke:                                          ; preds = %bb.q, %bb.ac
  %i.co = phi i64 [ %i.en, %bb.ac ], [ %.sroa.02.0251, %bb.q ]
  %i.cp = phi i64 [ %i.ew, %bb.ac ], [ %i.cc, %bb.q ]
  %i.cq = phi ptr [ @577, %bb.ac ], [ @578, %bb.q ]
  invoke void @_RNvNtNtCslwFuT2d6ECx_4core5slice5index16slice_index_fail(i64 noundef %i.co, i64 noundef %i.cp, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cq) #61
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.cr = lshr i64 %.sroa.0.0.i, 1                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27515)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27516)
  %.not.i = icmp eq i64 %i.cr, 0
  br i1 %.not.i, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapjECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i: ; preds = %bb.r
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.0.0.i ; 2 uses
  %min.iters.check = icmp samesign ult i64 %.sroa.0.0.i, 8
  br i1 %min.iters.check, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i
  %n.vec = and i64 %i.cr, 4611686018427387900     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ct = xor i64 %index, -1
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %index ; 3 uses
  %i.cv = getelementptr [8 x i8], ptr %i.cs, i64 %i.ct ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.cu, align 8, !alias.scope !27515, !noalias !27516
  %wide.load888 = load <2 x i64>, ptr %i.cw, align 8, !alias.scope !27515, !noalias !27516
  %i.cx = getelementptr i8, ptr %i.cv, i64 -8     ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cv, i64 -24    ; 2 uses
  %wide.load889 = load <2 x i64>, ptr %i.cx, align 8, !alias.scope !27516, !noalias !27515
  %wide.load890 = load <2 x i64>, ptr %i.cy, align 8, !alias.scope !27516, !noalias !27515
  %reverse = shufflevector <2 x i64> %wide.load889, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse891 = shufflevector <2 x i64> %wide.load890, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse, ptr %i.cu, align 8, !alias.scope !27515, !noalias !27516
  store <2 x i64> %reverse891, ptr %i.cw, align 8, !alias.scope !27515, !noalias !27516
  %reverse892 = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse893 = shufflevector <2 x i64> %wide.load888, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse892, ptr %i.cx, align 8, !alias.scope !27516, !noalias !27515
  store <2 x i64> %reverse893, ptr %i.cy, align 8, !alias.scope !27516, !noalias !27515
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !27479

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cr, %n.vec
  br i1 %cmp.n, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapjECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader

_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i, %middle.block
  %.sroa.0.016.i.ph = phi i64 [ 0, %_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader, %_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i
  %.sroa.0.016.i = phi i64 [ %i.df, %_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i ], [ %.sroa.0.016.i.ph, %_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader ] ; 3 uses
  %i.da = xor i64 %.sroa.0.016.i, -1
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.0.016.i ; 2 uses
  %i.dc = getelementptr [8 x i8], ptr %i.cs, i64 %i.da ; 2 uses
  %i.dd = load i64, ptr %i.db, align 8, !alias.scope !27515, !noalias !27516, !noundef !67
  %i.de = load i64, ptr %i.dc, align 8, !alias.scope !27516, !noalias !27515
  store i64 %i.de, ptr %i.db, align 8, !alias.scope !27515, !noalias !27516
  store i64 %i.dd, ptr %i.dc, align 8, !alias.scope !27516, !noalias !27515
  %i.df = add nuw nsw i64 %.sroa.0.016.i, 1       ; 2 uses
  %exitcond.not.i51 = icmp eq i64 %i.df, %i.cr
  br i1 %exitcond.not.i51, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapjECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i, !llvm.loop !27480

_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchjNCINvYSjINtB4_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB2A_11Vf2ppSorterINtB2A_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0EB2E_.exit: ; preds = %bb.o, %bb.p
  %.pre-phi = phi i64 [ %i.cm, %bb.p ], [ %.sroa.0.0.i, %bb.o ]
  %.sroa.0.0.i48 = phi i64 [ %i.ck, %bb.p ], [ %i.cc, %bb.o ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27517)
  %i.dg = load i64, ptr %i.a, align 8, !range !70, !alias.scope !27517, !noundef !67
  %i.dh = icmp eq i64 %i.h, %i.dg
  br i1 %i.dh, label %bb.s, label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit

bb.s:                                             ; preds = %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchjNCINvYSjINtB4_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB2A_11Vf2ppSorterINtB2A_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0EB2E_.exit
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #62
          to label %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge unwind label %.loopexit8

._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge: ; preds = %bb.s
  %.pre = load ptr, ptr %i.b, align 8, !alias.scope !27517
  br label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit

_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit: ; preds = %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchjNCINvYSjINtB4_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB2A_11Vf2ppSorterINtB2A_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0EB2E_.exit
  %i.di = phi ptr [ %.pre, %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge ], [ %i.g, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchjNCINvYSjINtB4_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB2A_11Vf2ppSorterINtB2A_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0EB2E_.exit ] ; 6 uses
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %i.di, i64 %i.h ; 2 uses
end_hunk_7
begin_hunk_8_@_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort10merge_sortjNCINvYSjINtB4_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB2q_11Vf2ppSorterINtB2q_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0EB2u_:bb.a
  %.val33.i = load i64, ptr %i.fs, align 8, !noalias !27519, !noundef !67 ; 7 uses
  %.val34.i = load i64, ptr %i.ft, align 8, !alias.scope !27519 ; 7 uses
  %i.fu = icmp ult i64 %.val33.i, %i.fg
  br i1 %i.fu, label %bb.ah, label %.invoke896

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i.i59) ]
  %i.fv = load i64, ptr %i.fh, align 8, !noalias !27520, !noundef !67 ; 4 uses
  %i.fw = icmp ult i64 %.val33.i, %i.fv
  br i1 %i.fw, label %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i.i60, label %.invoke896

_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i.i60: ; preds = %bb.ah
  %i.fx = load ptr, ptr %i.fi, align 8, !noalias !27520, !nonnull !67, !noundef !67 ; 2 uses
  %i.fy = load ptr, ptr %i.fj, align 8, !noalias !27520, !nonnull !67, !noundef !67 ; 2 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %.val33.i
  %i.ga = load i64, ptr %i.fz, align 8, !noalias !27520, !noundef !67 ; 2 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %.val33.i
  %i.gc = load i64, ptr %i.gb, align 8, !noalias !27520, !noundef !67 ; 2 uses
  %i.gd = icmp ult i64 %.val34.i, %i.fg
  br i1 %i.gd, label %bb.ai, label %.invoke896

bb.ai:                                            ; preds = %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i.i60
  %i.ge = icmp ult i64 %.val34.i, %i.fv
  br i1 %i.ge, label %bb.aj, label %.invoke896

.invoke896:                                       ; preds = %bb.ai, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i.i60, %bb.ah, %bb.ag
  %i.gf = phi i64 [ %.val34.i, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i.i60 ], [ %.val33.i, %bb.ah ], [ %.val33.i, %bb.ag ], [ %.val34.i, %bb.ai ]
  %i.gg = phi i64 [ %i.fg, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i.i60 ], [ %i.fv, %bb.ah ], [ %i.fg, %bb.ag ], [ %i.fv, %bb.ai ]
  %i.gh = phi ptr [ @1475, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i.i60 ], [ @1476, %bb.ah ], [ @1475, %bb.ag ], [ @1476, %bb.ai ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.gf, i64 noundef %i.gg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gh) #60
          to label %.cont897 unwind label %bb.ao, !noalias !27519

.cont897:                                         ; preds = %.invoke896
  unreachable

bb.aj:                                            ; preds = %bb.ai
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %.val34.i
  %i.gj = load i64, ptr %i.gi, align 8, !noalias !27522, !noundef !67 ; 2 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %.val34.i
  %i.gl = load i64, ptr %i.gk, align 8, !noalias !27522, !noundef !67 ; 2 uses
  %i.gm = icmp eq i64 %i.ga, %i.gj
  %i.gn = icmp ult i64 %i.ga, %i.gj
  %i.go = icmp eq i64 %i.gc, %i.gl
  %i.gp = icmp ult i64 %i.gc, %i.gl
  %i.gq = icmp ult i64 %.val34.i, %.val33.i
  %spec.select.i.i61 = select i1 %i.go, i1 %i.gq, i1 %i.gp
  %.sroa.0.1.in.i.i.i62 = select i1 %i.gm, i1 %spec.select.i.i61, i1 %i.gn ; 3 uses
  %.neg.i = sext i1 %.sroa.0.1.in.i.i.i62 to i64
  %i.gr = getelementptr inbounds [8 x i8], ptr %.sroa.18.064.i, i64 %.neg.i ; 4 uses
  %i.gs = xor i1 %.sroa.0.1.in.i.i.i62, true
  %.neg29.i = sext i1 %i.gs to i64
  %i.gt = getelementptr inbounds [8 x i8], ptr %.sroa.10.065.i, i64 %.neg29.i ; 4 uses
  %.sroa.020.0.i = select i1 %.sroa.0.1.in.i.i.i62, ptr %i.gr, ptr %i.gt
  %i.gu = getelementptr inbounds i8, ptr %.sroa.08.066.i, i64 -8 ; 2 uses
  %i.gv = load i64, ptr %.sroa.020.0.i, align 8
  store i64 %i.gv, ptr %i.gu, align 8, !alias.scope !27519
  %i.gw = icmp ult ptr %i.ez, %i.gr
  %i.gx = icmp ult ptr %2, %i.gt
  %or.cond.i63 = select i1 %i.gw, i1 %i.gx, i1 false
  br i1 %or.cond.i63, label %bb.ag, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit

bb.ak:                                            ; preds = %bb.an, %.lr.ph.i57
  %.sroa.0.061.i = phi ptr [ %i.fa, %.lr.ph.i57 ], [ %i.hy, %bb.an ] ; 2 uses
  %.sroa.0.260.i = phi ptr [ %2, %.lr.ph.i57 ], [ %i.ib, %bb.an ] ; 3 uses
  %.sroa.18.359.i = phi ptr [ %i.ez, %.lr.ph.i57 ], [ %i.hw, %bb.an ] ; 3 uses
  %.sroa.0.0.val.i = load i64, ptr %.sroa.0.061.i, align 8, !alias.scope !27519, !noundef !67 ; 8 uses
  %.val31.i = load i64, ptr %.sroa.0.260.i, align 8, !noalias !27519 ; 8 uses
  %i.gy = icmp ult i64 %.sroa.0.0.val.i, %i.fo
  br i1 %i.gy, label %bb.al, label %.invoke894

bb.al:                                            ; preds = %bb.ak
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i39.i) ]
  %i.gz = load i64, ptr %i.fp, align 8, !noalias !27521, !noundef !67 ; 4 uses
  %i.ha = icmp ult i64 %.sroa.0.0.val.i, %i.gz
  br i1 %i.ha, label %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i40.i, label %.invoke894

_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i40.i: ; preds = %bb.al
  %i.hb = load ptr, ptr %i.fq, align 8, !noalias !27521, !nonnull !67, !noundef !67 ; 2 uses
  %i.hc = load ptr, ptr %i.fr, align 8, !noalias !27521, !nonnull !67, !noundef !67 ; 2 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %.sroa.0.0.val.i
  %i.he = load i64, ptr %i.hd, align 8, !noalias !27521, !noundef !67 ; 2 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %.sroa.0.0.val.i
  %i.hg = load i64, ptr %i.hf, align 8, !noalias !27521, !noundef !67 ; 2 uses
  %i.hh = icmp ult i64 %.val31.i, %i.fo
  br i1 %i.hh, label %bb.am, label %.invoke894

bb.am:                                            ; preds = %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i40.i
  %i.hi = icmp ult i64 %.val31.i, %i.gz
  br i1 %i.hi, label %bb.an, label %.invoke894

.invoke894:                                       ; preds = %bb.am, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i40.i, %bb.al, %bb.ak
  %i.hj = phi i64 [ %.val31.i, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i40.i ], [ %.sroa.0.0.val.i, %bb.al ], [ %.sroa.0.0.val.i, %bb.ak ], [ %.val31.i, %bb.am ]
  %i.hk = phi i64 [ %i.fo, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i40.i ], [ %i.gz, %bb.al ], [ %i.fo, %bb.ak ], [ %i.gz, %bb.am ]
  %i.hl = phi ptr [ @1475, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i40.i ], [ @1476, %bb.al ], [ @1475, %bb.ak ], [ @1476, %bb.am ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.hj, i64 noundef %i.hk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hl) #60
          to label %.cont895 unwind label %bb.ao, !noalias !27519

.cont895:                                         ; preds = %.invoke894
  unreachable

bb.an:                                            ; preds = %bb.am
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %.val31.i
  %i.hn = load i64, ptr %i.hm, align 8, !noalias !27523, !noundef !67 ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %.val31.i
  %i.hp = load i64, ptr %i.ho, align 8, !noalias !27523, !noundef !67 ; 2 uses
  %i.hq = icmp eq i64 %i.he, %i.hn
  %i.hr = icmp ult i64 %i.he, %i.hn
  %i.hs = icmp eq i64 %i.hg, %i.hp
  %i.ht = icmp ult i64 %i.hg, %i.hp
  %i.hu = icmp ult i64 %.val31.i, %.sroa.0.0.val.i
  %spec.select.i41.i = select i1 %i.hs, i1 %i.hu, i1 %i.ht
  %.sroa.0.1.in.i.i42.i = select i1 %i.hq, i1 %spec.select.i41.i, i1 %i.hr ; 3 uses
  %i.hv = select i1 %.sroa.0.1.in.i.i42.i, i64 %.sroa.0.0.val.i, i64 %.val31.i
  store i64 %i.hv, ptr %.sroa.18.359.i, align 8, !alias.scope !27519
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.18.359.i, i64 8 ; 2 uses
  %i.hx = zext i1 %.sroa.0.1.in.i.i42.i to i64
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.061.i, i64 %i.hx ; 2 uses
  %i.hz = xor i1 %.sroa.0.1.in.i.i42.i, true
  %i.ia = zext i1 %i.hz to i64
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.260.i, i64 %i.ia ; 3 uses
  %i.ic = icmp ult ptr %i.ib, %i.fk
  %i.id = icmp ult ptr %i.hy, %i.fb
  %or.cond30.i = select i1 %i.ic, i1 %i.id, i1 false
  br i1 %or.cond30.i, label %bb.ak, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit

bb.ao:                                            ; preds = %.invoke896, %.invoke894
  %.sroa.18.2.i = phi ptr [ %.sroa.18.064.i, %.invoke896 ], [ %.sroa.18.359.i, %.invoke894 ]
  %.sroa.10.2.i = phi ptr [ %.sroa.10.065.i, %.invoke896 ], [ %i.fk, %.invoke894 ]
  %.sroa.0.1.i = phi ptr [ %2, %.invoke896 ], [ %.sroa.0.260.i, %.invoke894 ] ; 2 uses
  %i.ie = landingpad { ptr, i32 }
          cleanup
  %i.if = ptrtoint ptr %.sroa.10.2.i to i64
  %i.ig = ptrtoint ptr %.sroa.0.1.i to i64
  %i.ih = sub i64 %i.if, %i.ig
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.18.2.i, ptr align 8 %.sroa.0.1.i, i64 %i.ih, i1 false), !noalias !27524
  br label %.body

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.an, %bb.aj, %bb.af, %bb.ae
  %.sroa.18.1.i = phi ptr [ %i.gr, %bb.aj ], [ %i.fa, %bb.ae ], [ %i.ez, %bb.af ], [ %i.hw, %bb.an ]
  %.sroa.10.1.i = phi ptr [ %i.gt, %bb.aj ], [ %i.fe, %bb.ae ], [ %i.fk, %bb.af ], [ %i.fk, %bb.an ]
  %.sroa.0.015.i = phi ptr [ %2, %bb.aj ], [ %2, %bb.ae ], [ %2, %bb.af ], [ %i.ib, %bb.an ] ; 2 uses
  %i.ii = ptrtoint ptr %.sroa.10.1.i to i64
  %i.ij = ptrtoint ptr %.sroa.0.015.i to i64
  %i.ik = sub i64 %i.ii, %i.ij
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.sroa.18.1.i, ptr align 8 %.sroa.0.015.i, i64 %i.ik, i1 false), !noalias !27525
  %i.il = add i64 %i.et, %i.el
  store i64 %i.il, ptr %i.es, align 8
  store i64 %i.en, ptr %i.eu, align 8
  %i.im = icmp samesign ult i64 %storemerge244, 576460752303423488
  tail call void @llvm.assume(i1 %i.im)
  %i.in = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.io = xor i64 %.sroa.4.0.i53.ph, -1
  %i.ip = add nsw i64 %storemerge244, %i.io
  %i.iq = shl nuw nsw i64 %i.ip, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ek, ptr nonnull align 8 %i.in, i64 %i.iq, i1 false), !noalias !27526
  %i.ir = add nsw i64 %storemerge244, -1
  %i.is = icmp samesign ugt i64 %storemerge244, 2
  br i1 %i.is, label %.lr.ph, label %._crit_edge

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit47: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i46, %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i8 0, 3) i8 @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort10merge_sortjNCINvYSjINtB4_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB2q_11Vf2ppSorterINtB2q_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0EB2u_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noundef %2, ptr nofree readonly captures(none) %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.c, align 8
  %.not254 = icmp eq i64 %1, 0
  br i1 %.not254, label %.loopexit7, label %.lr.ph253

.lr.ph253:                                        ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.0.val, i64 8     ; 3 uses
  br label %bb.b

.loopexit7:                                       ; preds = %._crit_edge, %bb.a, %bb.l
  %.sroa.0.0 = phi i8 [ %., %bb.l ], [ 2, %bb.a ], [ 2, %._crit_edge ]
  %.val30 = load i64, ptr %i.a, align 8           ; 2 uses
  %i.e = icmp eq i64 %.val30, 0
  br i1 %i.e, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i: ; preds = %.loopexit7
  %.val31 = load ptr, ptr %i.b, align 8, !nonnull !67, !noundef !67
  %i.f = shl nuw i64 %.val30, 4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val31, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 8) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %.loopexit7, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i8 %.sroa.0.0

bb.b:                                             ; preds = %.lr.ph253, %._crit_edge
  %i.g = phi ptr [ inttoptr (i64 8 to ptr), %.lr.ph253 ], [ %i.di, %._crit_edge ]
  %i.h = phi i64 [ 0, %.lr.ph253 ], [ %storemerge.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.02.0251 = phi i64 [ 0, %.lr.ph253 ], [ %.sroa.0.0.i48, %._crit_edge ] ; 10 uses
  %i.i = sub nuw nsw i64 %1, %.sroa.02.0251       ; 9 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.02.0251 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27573)
  %i.k = icmp samesign ult i64 %i.i, 2
  br i1 %i.k, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val17.i = load i64, ptr %i.l, align 8, !alias.scope !27573, !noundef !67 ; 9 uses
  %.val18.i = load i64, ptr %i.j, align 8, !alias.scope !27573 ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val3.i.i = load ptr, ptr %.0.val, align 8, !noalias !27573, !nonnull !67, !align !98, !noundef !67 ; 2 uses
  %.val4.i.i = load ptr, ptr %i.d, align 8, !noalias !27573 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val3.i.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !27574, !noundef !67 ; 12 uses
  %i.o = icmp ult i64 %.val17.i, %i.n
  br i1 %i.o, label %bb.d, label %.invoke743

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i.i) ]
  %i.p = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noalias !27574, !noundef !67 ; 12 uses
  %i.r = icmp ult i64 %.val17.i, %i.q
  br i1 %i.r, label %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0Ba_.exit.i.i, label %.invoke743

.invoke743:                                       ; preds = %bb.e, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0Ba_.exit.i.i, %bb.d, %bb.c, %bb.g, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0Ba_.exit.i21.i, %bb.f, %.lr.ph.i, %bb.j, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0Ba_.exit.i27.i, %bb.i, %.lr.ph26.i
  %i.s = phi i64 [ %.val15.i, %bb.g ], [ %.val12.i, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0Ba_.exit.i27.i ], [ %.val11.i, %.lr.ph26.i ], [ %.val11.i, %bb.i ], [ %.val12.i, %bb.j ], [ %.val14.i, %.lr.ph.i ], [ %.val14.i, %bb.f ], [ %.val15.i, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0Ba_.exit.i21.i ], [ %.val17.i, %bb.c ], [ %.val17.i, %bb.d ], [ %.val18.i, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0Ba_.exit.i.i ], [ %.val18.i, %bb.e ]
  %i.t = phi i64 [ %i.q, %bb.g ], [ %i.n, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0Ba_.exit.i27.i ], [ %i.n, %.lr.ph26.i ], [ %i.q, %bb.i ], [ %i.q, %bb.j ], [ %i.n, %.lr.ph.i ], [ %i.q, %bb.f ], [ %i.n, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0Ba_.exit.i21.i ], [ %i.n, %bb.c ], [ %i.q, %bb.d ], [ %i.n, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0Ba_.exit.i.i ], [ %i.q, %bb.e ]
  %i.u = phi ptr [ @1476, %bb.g ], [ @1475, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0Ba_.exit.i27.i ], [ @1475, %.lr.ph26.i ], [ @1476, %bb.i ], [ @1476, %bb.j ], [ @1475, %.lr.ph.i ], [ @1476, %bb.f ], [ @1475, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0Ba_.exit.i21.i ], [ @1475, %bb.c ], [ @1476, %bb.d ], [ @1475, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0Ba_.exit.i.i ], [ @1476, %bb.e ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.s, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u) #60
          to label %.cont744 unwind label %.loopexit.split-lp

.cont744:                                         ; preds = %.invoke743
  unreachable

_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0Ba_.exit.i.i: ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !noalias !27574, !nonnull !67, !noundef !67 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val3.i.i, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !noalias !27574, !nonnull !67, !noundef !67 ; 6 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.val17.i
  %i.aa = load i64, ptr %i.z, align 8, !noalias !27574, !noundef !67 ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.val17.i
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !27574, !noundef !67 ; 2 uses
  %i.ad = icmp ult i64 %.val18.i, %i.n
  br i1 %i.ad, label %bb.e, label %.invoke743

bb.e:                                             ; preds = %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0Ba_.exit.i.i
  %i.ae = icmp ult i64 %.val18.i, %i.q
  br i1 %i.ae, label %_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0B24_.exit.i, label %.invoke743

_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0B24_.exit.i: ; preds = %bb.e
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.val18.i
  %i.ag = load i64, ptr %i.af, align 8, !noalias !27575, !noundef !67 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.val18.i
  %i.ai = load i64, ptr %i.ah, align 8, !noalias !27575, !noundef !67 ; 2 uses
  %i.aj = icmp eq i64 %i.aa, %i.ag
  %i.ak = icmp ult i64 %i.aa, %i.ag
  %i.al = icmp eq i64 %i.ac, %i.ai
  %i.am = icmp ult i64 %i.ac, %i.ai
  %i.an = icmp ult i64 %.val18.i, %.val17.i
  %spec.select.i.i = select i1 %i.al, i1 %i.an, i1 %i.am
  %.sroa.0.1.in.i.i.i = select i1 %i.aj, i1 %spec.select.i.i, i1 %i.ak
  %.not29.i = icmp eq i64 %i.i, 2                 ; 2 uses
  br i1 %.sroa.0.1.in.i.i.i, label %.preheader.i, label %.preheader1.i

.preheader1.i:                                    ; preds = %_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0B24_.exit.i
  br i1 %.not29.i, label %.loopexit, label %.lr.ph.i

.preheader.i:                                     ; preds = %_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0B24_.exit.i
  br i1 %.not29.i, label %.loopexit, label %.lr.ph26.i

.lr.ph.i:                                         ; preds = %.preheader1.i, %bb.h
  %.val15.i = phi i64 [ %.val14.i, %bb.h ], [ %.val17.i, %.preheader1.i ] ; 7 uses
  %.sroa.01.023.i = phi i64 [ %i.bg, %bb.h ], [ 2, %.preheader1.i ] ; 4 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.01.023.i
  %3 = add nsw i64 %.sroa.01.023.i, -1
  %4 = icmp samesign ult i64 %3, %i.i
  tail call void @llvm.assume(i1 %4)
  %.val14.i = load i64, ptr %i.ao, align 8, !alias.scope !27573, !noundef !67 ; 8 uses
  %i.ap = icmp ult i64 %.val14.i, %i.n
  br i1 %i.ap, label %bb.f, label %.invoke743

bb.f:                                             ; preds = %.lr.ph.i
  %i.aq = icmp ult i64 %.val14.i, %i.q
  br i1 %i.aq, label %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0Ba_.exit.i21.i, label %.invoke743

_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0Ba_.exit.i21.i: ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.val14.i
  %i.as = load i64, ptr %i.ar, align 8, !noalias !27576, !noundef !67 ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.val14.i
  %i.au = load i64, ptr %i.at, align 8, !noalias !27576, !noundef !67 ; 2 uses
  %i.av = icmp ult i64 %.val15.i, %i.n
  br i1 %i.av, label %bb.g, label %.invoke743

bb.g:                                             ; preds = %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0Ba_.exit.i21.i
  %i.aw = icmp ult i64 %.val15.i, %i.q
  br i1 %i.aw, label %_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0B24_.exit24.i, label %.invoke743

_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0B24_.exit24.i: ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.val15.i
  %i.ay = load i64, ptr %i.ax, align 8, !noalias !27577, !noundef !67 ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.val15.i
  %i.ba = load i64, ptr %i.az, align 8, !noalias !27577, !noundef !67 ; 2 uses
  %i.bb = icmp eq i64 %i.as, %i.ay
  %i.bc = icmp ult i64 %i.as, %i.ay
  %i.bd = icmp eq i64 %i.au, %i.ba
  %i.be = icmp ult i64 %i.au, %i.ba
  %i.bf = icmp ult i64 %.val15.i, %.val14.i
  %spec.select.i22.i = select i1 %i.bd, i1 %i.bf, i1 %i.be
  %.sroa.0.1.in.i.i23.i = select i1 %i.bb, i1 %spec.select.i22.i, i1 %i.bc
  br i1 %.sroa.0.1.in.i.i23.i, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0B24_.exit24.i
  %i.bg = add nuw nsw i64 %.sroa.01.023.i, 1      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bg, %i.i
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph26.i:                                       ; preds = %.preheader.i, %bb.k
  %.val12.i = phi i64 [ %.val11.i, %bb.k ], [ %.val17.i, %.preheader.i ] ; 7 uses
  %.sroa.01.125.i = phi i64 [ %i.bz, %bb.k ], [ 2, %.preheader.i ] ; 4 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.01.125.i
  %5 = add nsw i64 %.sroa.01.125.i, -1
  %6 = icmp samesign ult i64 %5, %i.i
  tail call void @llvm.assume(i1 %6)
  %.val11.i = load i64, ptr %i.bh, align 8, !alias.scope !27573, !noundef !67 ; 8 uses
  %i.bi = icmp ult i64 %.val11.i, %i.n
  br i1 %i.bi, label %bb.i, label %.invoke743

bb.i:                                             ; preds = %.lr.ph26.i
  %i.bj = icmp ult i64 %.val11.i, %i.q
  br i1 %i.bj, label %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0Ba_.exit.i27.i, label %.invoke743

_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0Ba_.exit.i27.i: ; preds = %bb.i
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.val11.i
  %i.bl = load i64, ptr %i.bk, align 8, !noalias !27578, !noundef !67 ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.val11.i
  %i.bn = load i64, ptr %i.bm, align 8, !noalias !27578, !noundef !67 ; 2 uses
  %i.bo = icmp ult i64 %.val12.i, %i.n
  br i1 %i.bo, label %bb.j, label %.invoke743

bb.j:                                             ; preds = %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0Ba_.exit.i27.i
  %i.bp = icmp ult i64 %.val12.i, %i.q
  br i1 %i.bp, label %_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0B24_.exit30.i, label %.invoke743

_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0B24_.exit30.i: ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.val12.i
  %i.br = load i64, ptr %i.bq, align 8, !noalias !27579, !noundef !67 ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.val12.i
  %i.bt = load i64, ptr %i.bs, align 8, !noalias !27579, !noundef !67 ; 2 uses
  %i.bu = icmp eq i64 %i.bl, %i.br
  %i.bv = icmp ult i64 %i.bl, %i.br
  %i.bw = icmp eq i64 %i.bn, %i.bt
  %i.bx = icmp ult i64 %i.bn, %i.bt
  %i.by = icmp ult i64 %.val12.i, %.val11.i
  %spec.select.i28.i = select i1 %i.bw, i1 %i.by, i1 %i.bx
  %.sroa.0.1.in.i.i29.i = select i1 %i.bu, i1 %spec.select.i28.i, i1 %i.bv
  br i1 %.sroa.0.1.in.i.i29.i, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0B24_.exit30.i
  %i.bz = add nuw nsw i64 %.sroa.01.125.i, 1      ; 2 uses
  %exitcond48.not.i = icmp eq i64 %i.bz, %i.i
  br i1 %exitcond48.not.i, label %.loopexit, label %.lr.ph26.i

.loopexit8:                                       ; preds = %bb.p, %bb.s
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %.invoke743, %.invoke741, %.invoke, %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit8, %.loopexit.split-lp, %bb.ao
  %eh.lpad-body = phi { ptr, i32 } [ %i.ie, %bb.ao ], [ %lpad.loopexit, %.loopexit8 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.val = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ca = icmp eq i64 %.val, 0
  br i1 %i.ca, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit47, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i46

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i46: ; preds = %.body
  %.val29 = load ptr, ptr %i.b, align 8, !nonnull !67, !noundef !67
  %i.cb = shl nuw i64 %.val, 4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val29, i64 noundef %i.cb, i64 noundef range(i64 1, -9223372036854775807) 8) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit47

.loopexit:                                        ; preds = %bb.h, %_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0B24_.exit24.i, %bb.k, %_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0B24_.exit30.i, %.preheader.i, %.preheader1.i, %bb.b
  %.sroa.4.0.i = phi i1 [ false, %bb.b ], [ true, %.preheader.i ], [ true, %bb.k ], [ false, %.preheader1.i ], [ true, %_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0B24_.exit30.i ], [ false, %_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0B24_.exit24.i ], [ false, %bb.h ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %i.i, %bb.b ], [ 2, %.preheader.i ], [ %i.i, %bb.k ], [ 2, %.preheader1.i ], [ %.sroa.01.125.i, %_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0B24_.exit30.i ], [ %i.i, %bb.h ], [ %.sroa.01.023.i, %_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0B24_.exit24.i ] ; 7 uses
  %i.cc = add i64 %.sroa.0.0.i, %.sroa.02.0251    ; 8 uses
  %i.cd = icmp eq i64 %.sroa.02.0251, 0
  %i.ce = icmp eq i64 %i.cc, %1
  %or.cond = and i1 %i.cd, %i.ce
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.loopexit
  %. = zext i1 %.sroa.4.0.i to i8
  br label %.loopexit7

bb.m:                                             ; preds = %.loopexit
  br i1 %.sroa.4.0.i, label %bb.q, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapjECskcxRuJ53GpR_9rustworkx.exit

_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapjECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i, %middle.block, %bb.r, %bb.m
  %i.cf = icmp uge i64 %i.cc, %.sroa.02.0251
  %i.cg = icmp ule i64 %i.cc, %1
  %or.cond.i = and i1 %i.cf, %i.cg
  br i1 %or.cond.i, label %bb.o, label %bb.n, !prof !125

bb.n:                                             ; preds = %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapjECskcxRuJ53GpR_9rustworkx.exit
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @586, i64 noundef 44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @587) #60
          to label %.noexc49 unwind label %.loopexit.split-lp

.noexc49:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapjECskcxRuJ53GpR_9rustworkx.exit
  %i.ch = icmp samesign ult i64 %.sroa.0.0.i, 10
  %i.ci = icmp samesign ult i64 %i.cc, %1
  %or.cond3.i = and i1 %i.ch, %i.ci
  br i1 %or.cond3.i, label %bb.p, label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchjNCINvYSjINtB4_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB2A_11Vf2ppSorterINtB2A_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0EB2E_.exit

bb.p:                                             ; preds = %bb.o
  %i.cj = add nuw nsw i64 %.sroa.02.0251, 10
  %i.ck = tail call i64 @llvm.umin.i64(i64 %i.cj, i64 range(i64 1, 1152921504606846976) %1) ; 2 uses
  %i.cl = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 1)
  %i.cm = sub nsw i64 %i.ck, %.sroa.02.0251       ; 2 uses
  invoke fastcc void @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort25insertion_sort_shift_leftjNCINvYSjINtB4_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB2F_11Vf2ppSorterINtB2F_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0EB2J_(ptr noalias nofree noundef nonnull align 8 %i.j, i64 noundef %i.cm, i64 noundef %i.cl, ptr readonly %.0.val) #62
          to label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchjNCINvYSjINtB4_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB2A_11Vf2ppSorterINtB2A_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0EB2E_.exit unwind label %.loopexit8

bb.q:                                             ; preds = %bb.m
  %i.cn = icmp ult i64 %i.cc, %.sroa.02.0251
  %.not = icmp ugt i64 %i.cc, %1
  %or.cond27 = or i1 %i.cn, %.not
  br i1 %or.cond27, label %.invoke, label %bb.r, !prof !90

.invoke:                                          ; preds = %bb.q, %bb.ac
  %i.co = phi i64 [ %i.en, %bb.ac ], [ %.sroa.02.0251, %bb.q ]
  %i.cp = phi i64 [ %i.ew, %bb.ac ], [ %i.cc, %bb.q ]
  %i.cq = phi ptr [ @577, %bb.ac ], [ @578, %bb.q ]
  invoke void @_RNvNtNtCslwFuT2d6ECx_4core5slice5index16slice_index_fail(i64 noundef %i.co, i64 noundef %i.cp, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cq) #61
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.cr = lshr i64 %.sroa.0.0.i, 1                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27580)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27581)
  %.not.i = icmp eq i64 %i.cr, 0
  br i1 %.not.i, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapjECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i: ; preds = %bb.r
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.0.0.i ; 2 uses
  %min.iters.check = icmp samesign ult i64 %.sroa.0.0.i, 8
  br i1 %min.iters.check, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i
  %n.vec = and i64 %i.cr, 4611686018427387900     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ct = xor i64 %index, -1
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %index ; 3 uses
  %i.cv = getelementptr [8 x i8], ptr %i.cs, i64 %i.ct ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.cu, align 8, !alias.scope !27580, !noalias !27581
  %wide.load888 = load <2 x i64>, ptr %i.cw, align 8, !alias.scope !27580, !noalias !27581
  %i.cx = getelementptr i8, ptr %i.cv, i64 -8     ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cv, i64 -24    ; 2 uses
  %wide.load889 = load <2 x i64>, ptr %i.cx, align 8, !alias.scope !27581, !noalias !27580
  %wide.load890 = load <2 x i64>, ptr %i.cy, align 8, !alias.scope !27581, !noalias !27580
  %reverse = shufflevector <2 x i64> %wide.load889, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse891 = shufflevector <2 x i64> %wide.load890, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse, ptr %i.cu, align 8, !alias.scope !27580, !noalias !27581
  store <2 x i64> %reverse891, ptr %i.cw, align 8, !alias.scope !27580, !noalias !27581
  %reverse892 = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse893 = shufflevector <2 x i64> %wide.load888, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse892, ptr %i.cx, align 8, !alias.scope !27581, !noalias !27580
  store <2 x i64> %reverse893, ptr %i.cy, align 8, !alias.scope !27581, !noalias !27580
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !27544

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cr, %n.vec
  br i1 %cmp.n, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapjECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader

_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i, %middle.block
  %.sroa.0.016.i.ph = phi i64 [ 0, %_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader, %_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i
  %.sroa.0.016.i = phi i64 [ %i.df, %_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i ], [ %.sroa.0.016.i.ph, %_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader ] ; 3 uses
  %i.da = xor i64 %.sroa.0.016.i, -1
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.0.016.i ; 2 uses
  %i.dc = getelementptr [8 x i8], ptr %i.cs, i64 %i.da ; 2 uses
  %i.dd = load i64, ptr %i.db, align 8, !alias.scope !27580, !noalias !27581, !noundef !67
  %i.de = load i64, ptr %i.dc, align 8, !alias.scope !27581, !noalias !27580
  store i64 %i.de, ptr %i.db, align 8, !alias.scope !27580, !noalias !27581
  store i64 %i.dd, ptr %i.dc, align 8, !alias.scope !27581, !noalias !27580
  %i.df = add nuw nsw i64 %.sroa.0.016.i, 1       ; 2 uses
  %exitcond.not.i51 = icmp eq i64 %i.df, %i.cr
  br i1 %exitcond.not.i51, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapjECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i, !llvm.loop !27545

_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchjNCINvYSjINtB4_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB2A_11Vf2ppSorterINtB2A_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0EB2E_.exit: ; preds = %bb.o, %bb.p
  %.pre-phi = phi i64 [ %i.cm, %bb.p ], [ %.sroa.0.0.i, %bb.o ]
  %.sroa.0.0.i48 = phi i64 [ %i.ck, %bb.p ], [ %i.cc, %bb.o ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27582)
  %i.dg = load i64, ptr %i.a, align 8, !range !70, !alias.scope !27582, !noundef !67
  %i.dh = icmp eq i64 %i.h, %i.dg
  br i1 %i.dh, label %bb.s, label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit

bb.s:                                             ; preds = %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchjNCINvYSjINtB4_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB2A_11Vf2ppSorterINtB2A_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0EB2E_.exit
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #62
          to label %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge unwind label %.loopexit8

._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge: ; preds = %bb.s
  %.pre = load ptr, ptr %i.b, align 8, !alias.scope !27582
  br label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit

_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit: ; preds = %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchjNCINvYSjINtB4_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB2A_11Vf2ppSorterINtB2A_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0EB2E_.exit
  %i.di = phi ptr [ %.pre, %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge ], [ %i.g, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchjNCINvYSjINtB4_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB2A_11Vf2ppSorterINtB2A_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0EB2E_.exit ] ; 6 uses
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %i.di, i64 %i.h ; 2 uses
end_hunk_8
begin_hunk_9_@_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort14break_patternsTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdEECskcxRuJ53GpR_9rustworkx:bb.a
  %i.l = xor i64 %i.k, %i.j                       ; 2 uses
  %i.m = shl i64 %i.l, 17
  %i.n = xor i64 %i.m, %i.l                       ; 3 uses
  %i.o = and i64 %i.n, %i.g                       ; 2 uses
  %.not = icmp samesign ult i64 %i.o, %1
  %i.p = select i1 %.not, i64 0, i64 %1
  %spec.select = sub nuw nsw i64 %i.o, %i.p       ; 3 uses
  %i.q = icmp samesign ult i64 %i.h, %1
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = icmp samesign ult i64 %spec.select, %1
  br i1 %i.r, label %bb.d, label %bb.i

bb.c:                                             ; preds = %bb.f, %bb.d, %bb.a
  %.lcssa = phi i64 [ %i.h, %bb.a ], [ %i.f, %bb.d ], [ %i.ao, %bb.f ]
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.lcssa, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @583) #60
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.h ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %spec.select ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false), !alias.scope !27714
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.u = shl i64 %i.n, 13
  %i.v = xor i64 %i.u, %i.n                       ; 2 uses
  %i.w = lshr i64 %i.v, 7
  %i.x = xor i64 %i.w, %i.v                       ; 2 uses
  %i.y = shl i64 %i.x, 17
  %i.z = xor i64 %i.y, %i.x                       ; 3 uses
  %i.aa = and i64 %i.z, %i.g                      ; 2 uses
  %.not.1 = icmp samesign ult i64 %i.aa, %1
  %i.ab = select i1 %.not.1, i64 0, i64 %1
  %spec.select.1 = sub nuw nsw i64 %i.aa, %i.ab   ; 3 uses
  %i.ac = icmp samesign ult i64 %i.f, %1
  br i1 %i.ac, label %bb.e, label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.ad = icmp samesign ult i64 %spec.select.1, %1
  br i1 %i.ad, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.f ; 2 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %spec.select.1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 16, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 16, i1 false), !alias.scope !27714
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ag = shl i64 %i.z, 13
  %i.ah = xor i64 %i.ag, %i.z                     ; 2 uses
  %i.ai = lshr i64 %i.ah, 7
  %i.aj = xor i64 %i.ai, %i.ah                    ; 2 uses
  %i.ak = shl i64 %i.aj, 17
  %i.al = xor i64 %i.ak, %i.aj
  %i.am = and i64 %i.al, %i.g                     ; 2 uses
  %.not.2 = icmp samesign ult i64 %i.am, %1
  %i.an = select i1 %.not.2, i64 0, i64 %1
  %spec.select.2 = sub nuw nsw i64 %i.am, %i.an   ; 3 uses
  %i.ao = or i64 %i.e, 1                          ; 3 uses
  %i.ap = icmp samesign ult i64 %i.ao, %1
  br i1 %i.ap, label %bb.g, label %bb.c

bb.g:                                             ; preds = %bb.f
  %i.aq = icmp samesign ult i64 %spec.select.2, %1
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ao ; 2 uses
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %spec.select.2 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 16, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %i.as, i64 16, i1 false), !alias.scope !27714
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.i:                                             ; preds = %bb.g, %bb.e, %bb.b
  %spec.select.lcssa27 = phi i64 [ %spec.select, %bb.b ], [ %spec.select.1, %bb.e ], [ %spec.select.2, %bb.g ]
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %spec.select.lcssa27, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @583) #60
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort14break_patternsTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB27_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 21, 288230376151711744) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %i.b = add nsw i64 %1, -1
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.b, i1 false)
  %i.d = sub nuw nsw i64 64, %i.c
  %i.e = lshr i64 %1, 1                           ; 2 uses
  %i.f = and i64 %i.e, 144115188075855870         ; 4 uses
  %notmask = shl nsw i64 -1, %i.d
  %i.g = xor i64 %notmask, -1                     ; 3 uses
  %i.h = add nsw i64 %i.f, -1                     ; 3 uses
  %i.i = shl i64 %1, 13
  %i.j = xor i64 %i.i, %1                         ; 2 uses
  %i.k = lshr i64 %i.j, 7
  %i.l = xor i64 %i.k, %i.j                       ; 2 uses
  %i.m = shl i64 %i.l, 17
  %i.n = xor i64 %i.m, %i.l                       ; 3 uses
  %i.o = and i64 %i.n, %i.g                       ; 2 uses
  %.not = icmp samesign ult i64 %i.o, %1
  %i.p = select i1 %.not, i64 0, i64 %1
  %spec.select = sub nuw nsw i64 %i.o, %i.p       ; 3 uses
  %i.q = icmp samesign ult i64 %i.h, %1
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = icmp samesign ult i64 %spec.select, %1
  br i1 %i.r, label %bb.d, label %bb.i

bb.c:                                             ; preds = %bb.f, %bb.d, %bb.a
  %.lcssa = phi i64 [ %i.h, %bb.a ], [ %i.f, %bb.d ], [ %i.ao, %bb.f ]
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.lcssa, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @583) #60
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.h ; 2 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %spec.select ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false), !alias.scope !27717
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.u = shl i64 %i.n, 13
  %i.v = xor i64 %i.u, %i.n                       ; 2 uses
  %i.w = lshr i64 %i.v, 7
  %i.x = xor i64 %i.w, %i.v                       ; 2 uses
  %i.y = shl i64 %i.x, 17
  %i.z = xor i64 %i.y, %i.x                       ; 3 uses
  %i.aa = and i64 %i.z, %i.g                      ; 2 uses
  %.not.1 = icmp samesign ult i64 %i.aa, %1
  %i.ab = select i1 %.not.1, i64 0, i64 %1
  %spec.select.1 = sub nuw nsw i64 %i.aa, %i.ab   ; 3 uses
  %i.ac = icmp samesign ult i64 %i.f, %1
  br i1 %i.ac, label %bb.e, label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.ad = icmp samesign ult i64 %spec.select.1, %1
  br i1 %i.ad, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.f ; 2 uses
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %spec.select.1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 32, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %i.af, i64 32, i1 false), !alias.scope !27717
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ag = shl i64 %i.z, 13
  %i.ah = xor i64 %i.ag, %i.z                     ; 2 uses
  %i.ai = lshr i64 %i.ah, 7
  %i.aj = xor i64 %i.ai, %i.ah                    ; 2 uses
  %i.ak = shl i64 %i.aj, 17
  %i.al = xor i64 %i.ak, %i.aj
  %i.am = and i64 %i.al, %i.g                     ; 2 uses
  %.not.2 = icmp samesign ult i64 %i.am, %1
  %i.an = select i1 %.not.2, i64 0, i64 %1
  %spec.select.2 = sub nuw nsw i64 %i.am, %i.an   ; 3 uses
  %i.ao = or i64 %i.e, 1                          ; 3 uses
  %i.ap = icmp samesign ult i64 %i.ao, %1
  br i1 %i.ap, label %bb.g, label %bb.c

bb.g:                                             ; preds = %bb.f
  %i.aq = icmp samesign ult i64 %spec.select.2, %1
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.ao ; 2 uses
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %spec.select.2 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.ar, i64 32, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %i.as, i64 32, i1 false), !alias.scope !27717
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.i:                                             ; preds = %bb.g, %bb.e, %bb.b
  %spec.select.lcssa27 = phi i64 [ %spec.select, %bb.b ], [ %spec.select.1, %bb.e ], [ %spec.select.2, %bb.g ]
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %spec.select.lcssa27, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @583) #60
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort22partial_insertion_sortNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBZ_INtB4_16ParallelSliceMutBZ_E20par_sort_unstable_byNCINvB11_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtB3x_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4C_3err5PyErrE0E0EB61_(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 21, 192153584101141163) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 20 uses
  %i.b = icmp samesign ult i64 %1, 50
  %.phi.trans.insert29 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre30 = load double, ptr %.phi.trans.insert29, align 8, !alias.scope !27742, !noalias !27743 ; 2 uses
  br i1 %i.b, label %.lr.ph.us, label %.lr.ph

.lr.ph.us:                                        ; preds = %bb.a, %bb.b
  %i.c = phi double [ %i.f, %bb.b ], [ %.pre30, %bb.a ] ; 2 uses
  %.sroa.02.14.us = phi i64 [ %i.t, %bb.b ], [ 1, %bb.a ] ; 5 uses
  %i.d = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.02.14.us ; 3 uses
  %2 = add nsw i64 %.sroa.02.14.us, -1            ; 2 uses
  %3 = icmp samesign ult i64 %2, %1
  tail call void @llvm.assume(i1 %3)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27744)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27745)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27746)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27747)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load double, ptr %i.e, align 8, !alias.scope !27743, !noalias !27742, !noundef !67 ; 3 uses
  %.not1.i.us = fcmp une double %i.f, %i.c
  br i1 %.not1.i.us, label %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.us, label %.split.us

.split.us:                                        ; preds = %.lr.ph.us
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %2 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !27742, !noalias !27743, !noundef !67
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !27743, !noalias !27742, !noundef !67
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !27742, !noalias !27743, !noundef !67 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !27743, !noalias !27742, !noundef !67 ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.m
  %i.q = icmp ult i64 %i.o, %i.m
  %i.r = icmp ult i64 %i.k, %i.i
  %spec.select.i.us = select i1 %i.p, i1 %i.r, i1 %i.q
  br i1 %spec.select.i.us, label %.split._crit_edge.us, label %bb.b

_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.us: ; preds = %.lr.ph.us
  %i.s = fcmp ult double %i.f, %i.c
  br i1 %i.s, label %.split._crit_edge.us, label %bb.b

bb.b:                                             ; preds = %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.us, %.split.us
  %i.t = add nuw nsw i64 %.sroa.02.14.us, 1       ; 2 uses
  %exitcond20.not = icmp eq i64 %i.t, %1
  br i1 %exitcond20.not, label %.split._crit_edge.us, label %.lr.ph.us

.split._crit_edge.us:                             ; preds = %bb.b, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.us, %.split.us
  %.sroa.02.1.lcssa.us.ph = phi i64 [ %1, %bb.b ], [ %.sroa.02.14.us, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.us ], [ %.sroa.02.14.us, %.split.us ]
  %i.u = icmp eq i64 %.sroa.02.1.lcssa.us.ph, %1
  br label %.split14

.split14:                                         ; preds = %bb.c, %bb.h, %bb.m, %bb.r, %bb.w, %bb.z, %bb.aa, %.split._crit_edge, %.split._crit_edge.1, %.split._crit_edge.2, %.split._crit_edge.3, %.split._crit_edge.4, %.split._crit_edge.us
  %.us-phi = phi i1 [ %i.u, %.split._crit_edge.us ], [ true, %.split._crit_edge ], [ true, %bb.h ], [ true, %.split._crit_edge.1 ], [ true, %.split._crit_edge.4 ], [ true, %.split._crit_edge.2 ], [ true, %.split._crit_edge.3 ], [ true, %bb.m ], [ false, %bb.z ], [ true, %bb.r ], [ true, %bb.w ], [ false, %bb.aa ], [ true, %bb.c ]
  ret i1 %.us-phi

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.v = phi double [ %i.aa, %bb.c ], [ %.pre30, %bb.a ] ; 2 uses
  %.sroa.02.14 = phi i64 [ %i.ap, %bb.c ], [ 1, %bb.a ] ; 12 uses
  %i.w = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.02.14 ; 3 uses
  %i.x = add nsw i64 %.sroa.02.14, -1             ; 2 uses
  %i.y = icmp samesign ult i64 %i.x, %1
  tail call void @llvm.assume(i1 %i.y)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27744)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27745)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27746)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27747)
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.aa = load double, ptr %i.z, align 8, !alias.scope !27743, !noalias !27742, !noundef !67 ; 3 uses
  %.not1.i = fcmp une double %i.aa, %i.v
  br i1 %.not1.i, label %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit, label %.split

.split:                                           ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.x ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !27742, !noalias !27743, !noundef !67
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !27743, !noalias !27742, !noundef !67
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !27742, !noalias !27743, !noundef !67 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !27743, !noalias !27742, !noundef !67 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, %i.ah
  %i.al = icmp ult i64 %i.aj, %i.ah
  %i.am = icmp ult i64 %i.af, %i.ad
  %spec.select.i = select i1 %i.ak, i1 %i.am, i1 %i.al
  br i1 %spec.select.i, label %.split._crit_edge, label %bb.c

_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit: ; preds = %.lr.ph
  %i.an = fcmp ult double %i.aa, %i.v
  br i1 %i.an, label %.split._crit_edge, label %bb.c

.split._crit_edge:                                ; preds = %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit, %.split
  %i.ao = icmp eq i64 %.sroa.02.14, %1
  br i1 %i.ao, label %.split14, label %bb.d

bb.c:                                             ; preds = %.split, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit
  %i.ap = add nuw nsw i64 %.sroa.02.14, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.ap, %1
  br i1 %exitcond.not, label %.split14, label %.lr.ph

bb.d:                                             ; preds = %.split._crit_edge
  %i.aq = add nsw i64 %.sroa.02.14, -1            ; 4 uses
  %i.ar = icmp ult i64 %i.aq, %1
  br i1 %i.ar, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.x, %bb.s, %bb.n, %bb.i, %bb.d
  %.lcssa15 = phi i64 [ %i.aq, %bb.d ], [ %i.br, %bb.i ], [ %i.cs, %bb.n ], [ %i.dt, %bb.s ], [ %i.eu, %bb.x ]
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.lcssa15, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @588) #60
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.aq ; 3 uses
  %i.at = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.02.14 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.as, i64 48, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.as, ptr noundef nonnull align 8 dereferenceable(48) %i.at, i64 48, i1 false), !alias.scope !27748
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.at, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.au = icmp samesign ugt i64 %.sroa.02.14, 1
  br i1 %i.au, label %bb.ab, label %.split12.1

bb.g:                                             ; preds = %bb.y, %bb.t, %bb.o, %bb.j
  %.sroa.02.1.lcssa.lcssa18 = phi i64 [ %.sroa.02.1.lcssa.4, %bb.y ], [ %.sroa.02.1.lcssa.1, %bb.j ], [ %.sroa.02.1.lcssa.2, %bb.o ], [ %.sroa.02.1.lcssa.3, %bb.t ]
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.sroa.02.1.lcssa.lcssa18, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @588) #60
  unreachable

.split12.1:                                       ; preds = %bb.f, %bb.ab
  %i.av = icmp samesign ult i64 %.sroa.02.14, %1  ; 2 uses
  br i1 %i.av, label %.lr.ph.preheader.1, label %.split._crit_edge.1

.lr.ph.preheader.1:                               ; preds = %.split12.1
  %.phi.trans.insert21 = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %.pre22 = load double, ptr %.phi.trans.insert21, align 8, !alias.scope !27749, !noalias !27750
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.h, %.lr.ph.preheader.1
  %i.aw = phi double [ %i.bb, %bb.h ], [ %.pre22, %.lr.ph.preheader.1 ] ; 2 uses
  %.sroa.02.14.1 = phi i64 [ %i.bp, %bb.h ], [ %.sroa.02.14, %.lr.ph.preheader.1 ] ; 5 uses
  %i.ax = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.02.14.1 ; 3 uses
  %i.ay = add nsw i64 %.sroa.02.14.1, -1          ; 2 uses
  %i.az = icmp ult i64 %i.ay, %1
  tail call void @llvm.assume(i1 %i.az)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27751)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27752)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27753)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27754)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.bb = load double, ptr %i.ba, align 8, !alias.scope !27750, !noalias !27749, !noundef !67 ; 3 uses
  %.not1.i.1 = fcmp une double %i.bb, %i.aw
  br i1 %.not1.i.1, label %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.1, label %.split.1

.split.1:                                         ; preds = %.lr.ph.1
  %i.bc = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.ay ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !27749, !noalias !27750, !noundef !67
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !27750, !noalias !27749, !noundef !67
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !27749, !noalias !27750, !noundef !67 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !27750, !noalias !27749, !noundef !67 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, %i.bi
  %i.bm = icmp ult i64 %i.bk, %i.bi
  %i.bn = icmp ult i64 %i.bg, %i.be
  %spec.select.i.1 = select i1 %i.bl, i1 %i.bn, i1 %i.bm
  br i1 %spec.select.i.1, label %.split._crit_edge.1, label %bb.h

_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.1: ; preds = %.lr.ph.1
  %i.bo = fcmp ult double %i.bb, %i.aw
  br i1 %i.bo, label %.split._crit_edge.1, label %bb.h

bb.h:                                             ; preds = %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.1, %.split.1
  %i.bp = add i64 %.sroa.02.14.1, 1               ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.bp, %1
  br i1 %exitcond.1.not, label %.split14, label %.lr.ph.1

.split._crit_edge.1:                              ; preds = %.split.1, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.1, %.split12.1
  %.sroa.02.1.lcssa.1 = phi i64 [ %.sroa.02.14, %.split12.1 ], [ %.sroa.02.14.1, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.1 ], [ %.sroa.02.14.1, %.split.1 ] ; 10 uses
  %i.bq = icmp eq i64 %.sroa.02.1.lcssa.1, %1
  br i1 %i.bq, label %.split14, label %bb.i

bb.i:                                             ; preds = %.split._crit_edge.1
  %i.br = add i64 %.sroa.02.1.lcssa.1, -1         ; 4 uses
  %i.bs = icmp ult i64 %i.br, %1
  br i1 %i.bs, label %bb.j, label %bb.e

bb.j:                                             ; preds = %bb.i
  br i1 %i.av, label %bb.k, label %bb.g

bb.k:                                             ; preds = %bb.j
  %i.bt = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.br ; 3 uses
  %i.bu = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.02.1.lcssa.1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.bt, i64 48, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bt, ptr noundef nonnull align 8 dereferenceable(48) %i.bu, i64 48, i1 false), !alias.scope !27748
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bu, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bv = icmp ugt i64 %.sroa.02.1.lcssa.1, 1
  br i1 %i.bv, label %bb.l, label %.split12.2

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort25insertion_sort_shift_leftNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSB12_INtB4_16ParallelSliceMutB12_E20par_sort_unstable_byNCINvB14_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4H_5types3any5PyAnyEB4C_NtB3C_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4H_3err5PyErrE0E0EB66_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.1, i64 noundef %i.br) #62
  tail call fastcc void @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort26insertion_sort_shift_rightNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSB13_INtB4_16ParallelSliceMutB13_E20par_sort_unstable_byNCINvB15_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4I_5types3any5PyAnyEB4D_NtB3D_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4I_3err5PyErrE0E0EB67_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.1) #62
  br label %.split12.2

.split12.2:                                       ; preds = %bb.l, %bb.k
  %i.bw = icmp ult i64 %.sroa.02.1.lcssa.1, %1    ; 2 uses
  br i1 %i.bw, label %.lr.ph.preheader.2, label %.split._crit_edge.2

.lr.ph.preheader.2:                               ; preds = %.split12.2
  %.phi.trans.insert23 = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %.pre24 = load double, ptr %.phi.trans.insert23, align 8, !alias.scope !27755, !noalias !27756
  br label %.lr.ph.2

.lr.ph.2:                                         ; preds = %bb.m, %.lr.ph.preheader.2
  %i.bx = phi double [ %i.cc, %bb.m ], [ %.pre24, %.lr.ph.preheader.2 ] ; 2 uses
  %.sroa.02.14.2 = phi i64 [ %i.cq, %bb.m ], [ %.sroa.02.1.lcssa.1, %.lr.ph.preheader.2 ] ; 5 uses
  %i.by = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.02.14.2 ; 3 uses
  %i.bz = add nsw i64 %.sroa.02.14.2, -1          ; 2 uses
  %i.ca = icmp ult i64 %i.bz, %1
  tail call void @llvm.assume(i1 %i.ca)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27757)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27758)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27759)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27760)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.cc = load double, ptr %i.cb, align 8, !alias.scope !27756, !noalias !27755, !noundef !67 ; 3 uses
  %.not1.i.2 = fcmp une double %i.cc, %i.bx
end_hunk_9
begin_hunk_10_@_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort22partial_insertion_sortNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBZ_INtB4_16ParallelSliceMutBZ_E20par_sort_unstable_byNCINvB11_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtB3x_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4C_3err5PyErrE0E0EB61_:bb.a
  %i.cs = add i64 %.sroa.02.1.lcssa.2, -1         ; 4 uses
  %i.ct = icmp ult i64 %i.cs, %1
  br i1 %i.ct, label %bb.o, label %bb.e

bb.o:                                             ; preds = %bb.n
  br i1 %i.bw, label %bb.p, label %bb.g

bb.p:                                             ; preds = %bb.o
  %i.cu = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.cs ; 3 uses
  %i.cv = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.02.1.lcssa.2 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.cu, i64 48, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cu, ptr noundef nonnull align 8 dereferenceable(48) %i.cv, i64 48, i1 false), !alias.scope !27748
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cv, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cw = icmp ugt i64 %.sroa.02.1.lcssa.2, 1
  br i1 %i.cw, label %bb.q, label %.split12.3

bb.q:                                             ; preds = %bb.p
  tail call fastcc void @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort25insertion_sort_shift_leftNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSB12_INtB4_16ParallelSliceMutB12_E20par_sort_unstable_byNCINvB14_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4H_5types3any5PyAnyEB4C_NtB3C_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4H_3err5PyErrE0E0EB66_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.2, i64 noundef %i.cs) #62
  tail call fastcc void @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort26insertion_sort_shift_rightNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSB13_INtB4_16ParallelSliceMutB13_E20par_sort_unstable_byNCINvB15_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4I_5types3any5PyAnyEB4D_NtB3D_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4I_3err5PyErrE0E0EB67_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.2) #62
  br label %.split12.3

.split12.3:                                       ; preds = %bb.q, %bb.p
  %i.cx = icmp ult i64 %.sroa.02.1.lcssa.2, %1    ; 2 uses
  br i1 %i.cx, label %.lr.ph.preheader.3, label %.split._crit_edge.3

.lr.ph.preheader.3:                               ; preds = %.split12.3
  %.phi.trans.insert25 = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  %.pre26 = load double, ptr %.phi.trans.insert25, align 8, !alias.scope !27761, !noalias !27762
  br label %.lr.ph.3

.lr.ph.3:                                         ; preds = %bb.r, %.lr.ph.preheader.3
  %i.cy = phi double [ %i.dd, %bb.r ], [ %.pre26, %.lr.ph.preheader.3 ] ; 2 uses
  %.sroa.02.14.3 = phi i64 [ %i.dr, %bb.r ], [ %.sroa.02.1.lcssa.2, %.lr.ph.preheader.3 ] ; 5 uses
  %i.cz = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.02.14.3 ; 3 uses
  %i.da = add nsw i64 %.sroa.02.14.3, -1          ; 2 uses
  %i.db = icmp ult i64 %i.da, %1
  tail call void @llvm.assume(i1 %i.db)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27763)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27764)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27765)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27766)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 40
  %i.dd = load double, ptr %i.dc, align 8, !alias.scope !27762, !noalias !27761, !noundef !67 ; 3 uses
  %.not1.i.3 = fcmp une double %i.dd, %i.cy
  br i1 %.not1.i.3, label %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.3, label %.split.3

.split.3:                                         ; preds = %.lr.ph.3
  %i.de = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.da ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.dg = load i64, ptr %i.df, align 8, !alias.scope !27761, !noalias !27762, !noundef !67
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %i.di = load i64, ptr %i.dh, align 8, !alias.scope !27762, !noalias !27761, !noundef !67
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dk = load i64, ptr %i.dj, align 8, !alias.scope !27761, !noalias !27762, !noundef !67 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.dm = load i64, ptr %i.dl, align 8, !alias.scope !27762, !noalias !27761, !noundef !67 ; 2 uses
  %i.dn = icmp eq i64 %i.dm, %i.dk
  %i.do = icmp ult i64 %i.dm, %i.dk
  %i.dp = icmp ult i64 %i.di, %i.dg
  %spec.select.i.3 = select i1 %i.dn, i1 %i.dp, i1 %i.do
  br i1 %spec.select.i.3, label %.split._crit_edge.3, label %bb.r

_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.3: ; preds = %.lr.ph.3
  %i.dq = fcmp ult double %i.dd, %i.cy
  br i1 %i.dq, label %.split._crit_edge.3, label %bb.r

bb.r:                                             ; preds = %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.3, %.split.3
  %i.dr = add i64 %.sroa.02.14.3, 1               ; 2 uses
  %exitcond.3.not = icmp eq i64 %i.dr, %1
  br i1 %exitcond.3.not, label %.split14, label %.lr.ph.3

.split._crit_edge.3:                              ; preds = %.split.3, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.3, %.split12.3
  %.sroa.02.1.lcssa.3 = phi i64 [ %.sroa.02.1.lcssa.2, %.split12.3 ], [ %.sroa.02.14.3, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.3 ], [ %.sroa.02.14.3, %.split.3 ] ; 10 uses
  %i.ds = icmp eq i64 %.sroa.02.1.lcssa.3, %1
  br i1 %i.ds, label %.split14, label %bb.s

bb.s:                                             ; preds = %.split._crit_edge.3
  %i.dt = add i64 %.sroa.02.1.lcssa.3, -1         ; 4 uses
  %i.du = icmp ult i64 %i.dt, %1
  br i1 %i.du, label %bb.t, label %bb.e

bb.t:                                             ; preds = %bb.s
  br i1 %i.cx, label %bb.u, label %bb.g

bb.u:                                             ; preds = %bb.t
  %i.dv = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.dt ; 3 uses
  %i.dw = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.02.1.lcssa.3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.dv, i64 48, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dv, ptr noundef nonnull align 8 dereferenceable(48) %i.dw, i64 48, i1 false), !alias.scope !27748
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dw, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dx = icmp ugt i64 %.sroa.02.1.lcssa.3, 1
  br i1 %i.dx, label %bb.v, label %.split12.4

bb.v:                                             ; preds = %bb.u
  tail call fastcc void @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort25insertion_sort_shift_leftNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSB12_INtB4_16ParallelSliceMutB12_E20par_sort_unstable_byNCINvB14_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4H_5types3any5PyAnyEB4C_NtB3C_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4H_3err5PyErrE0E0EB66_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.3, i64 noundef %i.dt) #62
  tail call fastcc void @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort26insertion_sort_shift_rightNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSB13_INtB4_16ParallelSliceMutB13_E20par_sort_unstable_byNCINvB15_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4I_5types3any5PyAnyEB4D_NtB3D_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4I_3err5PyErrE0E0EB67_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.3) #62
  br label %.split12.4

.split12.4:                                       ; preds = %bb.v, %bb.u
  %i.dy = icmp ult i64 %.sroa.02.1.lcssa.3, %1    ; 2 uses
  br i1 %i.dy, label %.lr.ph.preheader.4, label %.split._crit_edge.4

.lr.ph.preheader.4:                               ; preds = %.split12.4
  %.phi.trans.insert27 = getelementptr inbounds nuw i8, ptr %i.dv, i64 40
  %.pre28 = load double, ptr %.phi.trans.insert27, align 8, !alias.scope !27767, !noalias !27768
  br label %.lr.ph.4

.lr.ph.4:                                         ; preds = %bb.w, %.lr.ph.preheader.4
  %i.dz = phi double [ %i.ee, %bb.w ], [ %.pre28, %.lr.ph.preheader.4 ] ; 2 uses
  %.sroa.02.14.4 = phi i64 [ %i.es, %bb.w ], [ %.sroa.02.1.lcssa.3, %.lr.ph.preheader.4 ] ; 5 uses
  %i.ea = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.02.14.4 ; 3 uses
  %i.eb = add nsw i64 %.sroa.02.14.4, -1          ; 2 uses
  %i.ec = icmp ult i64 %i.eb, %1
  tail call void @llvm.assume(i1 %i.ec)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27769)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27770)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27771)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27772)
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 40
  %i.ee = load double, ptr %i.ed, align 8, !alias.scope !27768, !noalias !27767, !noundef !67 ; 3 uses
  %.not1.i.4 = fcmp une double %i.ee, %i.dz
  br i1 %.not1.i.4, label %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.4, label %.split.4

.split.4:                                         ; preds = %.lr.ph.4
  %i.ef = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.eb ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 32
  %i.eh = load i64, ptr %i.eg, align 8, !alias.scope !27767, !noalias !27768, !noundef !67
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %i.ej = load i64, ptr %i.ei, align 8, !alias.scope !27768, !noalias !27767, !noundef !67
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %i.el = load i64, ptr %i.ek, align 8, !alias.scope !27767, !noalias !27768, !noundef !67 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.en = load i64, ptr %i.em, align 8, !alias.scope !27768, !noalias !27767, !noundef !67 ; 2 uses
  %i.eo = icmp eq i64 %i.en, %i.el
  %i.ep = icmp ult i64 %i.en, %i.el
  %i.eq = icmp ult i64 %i.ej, %i.eh
  %spec.select.i.4 = select i1 %i.eo, i1 %i.eq, i1 %i.ep
  br i1 %spec.select.i.4, label %.split._crit_edge.4, label %bb.w

_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.4: ; preds = %.lr.ph.4
  %i.er = fcmp ult double %i.ee, %i.dz
  br i1 %i.er, label %.split._crit_edge.4, label %bb.w

bb.w:                                             ; preds = %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.4, %.split.4
  %i.es = add i64 %.sroa.02.14.4, 1               ; 2 uses
  %exitcond.4.not = icmp eq i64 %i.es, %1
  br i1 %exitcond.4.not, label %.split14, label %.lr.ph.4

.split._crit_edge.4:                              ; preds = %.split.4, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.4, %.split12.4
  %.sroa.02.1.lcssa.4 = phi i64 [ %.sroa.02.1.lcssa.3, %.split12.4 ], [ %.sroa.02.14.4, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.4 ], [ %.sroa.02.14.4, %.split.4 ] ; 7 uses
  %i.et = icmp eq i64 %.sroa.02.1.lcssa.4, %1
  br i1 %i.et, label %.split14, label %bb.x

bb.x:                                             ; preds = %.split._crit_edge.4
  %i.eu = add i64 %.sroa.02.1.lcssa.4, -1         ; 4 uses
  %i.ev = icmp ult i64 %i.eu, %1
  br i1 %i.ev, label %bb.y, label %bb.e

bb.y:                                             ; preds = %bb.x
  br i1 %i.dy, label %bb.z, label %bb.g

bb.z:                                             ; preds = %bb.y
  %i.ew = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.eu ; 2 uses
  %i.ex = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.02.1.lcssa.4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.ew, i64 48, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ew, ptr noundef nonnull align 8 dereferenceable(48) %i.ex, i64 48, i1 false), !alias.scope !27748
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ex, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ey = icmp ugt i64 %.sroa.02.1.lcssa.4, 1
  br i1 %i.ey, label %bb.aa, label %.split14

bb.aa:                                            ; preds = %bb.z
  tail call fastcc void @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort25insertion_sort_shift_leftNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSB12_INtB4_16ParallelSliceMutB12_E20par_sort_unstable_byNCINvB14_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4H_5types3any5PyAnyEB4C_NtB3C_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4H_3err5PyErrE0E0EB66_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.4, i64 noundef %i.eu) #62
  tail call fastcc void @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort26insertion_sort_shift_rightNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSB13_INtB4_16ParallelSliceMutB13_E20par_sort_unstable_byNCINvB15_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4I_5types3any5PyAnyEB4D_NtB3D_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4I_3err5PyErrE0E0EB67_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.4) #62
  br label %.split14

bb.ab:                                            ; preds = %bb.f
  tail call fastcc void @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort25insertion_sort_shift_leftNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSB12_INtB4_16ParallelSliceMutB12_E20par_sort_unstable_byNCINvB14_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4H_5types3any5PyAnyEB4C_NtB3C_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4H_3err5PyErrE0E0EB66_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %.sroa.02.14, i64 noundef %i.aq) #62
  tail call fastcc void @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort26insertion_sort_shift_rightNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSB13_INtB4_16ParallelSliceMutB13_E20par_sort_unstable_byNCINvB15_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4I_5types3any5PyAnyEB4D_NtB3D_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4I_3err5PyErrE0E0EB67_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %.sroa.02.14) #62
  br label %.split12.1
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort22partial_insertion_sortNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBZ_INtB4_16ParallelSliceMutBZ_E20par_sort_unstable_byNCINvB11_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4H_5types3any5PyAnyEB4C_NtB3C_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4H_3err5PyErrEs4_0E0EB66_(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 21, 192153584101141163) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 20 uses
  %i.b = icmp samesign ult i64 %1, 50
  %.phi.trans.insert29 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre30 = load i64, ptr %.phi.trans.insert29, align 8, !alias.scope !27797, !noalias !27798 ; 2 uses
  br i1 %i.b, label %.lr.ph.us, label %.lr.ph

.lr.ph.us:                                        ; preds = %bb.a, %bb.b
  %i.c = phi i64 [ %i.f, %bb.b ], [ %.pre30, %bb.a ] ; 2 uses
  %.sroa.02.14.us = phi i64 [ %i.u, %bb.b ], [ 1, %bb.a ] ; 5 uses
  %i.d = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.02.14.us ; 3 uses
  %2 = add nsw i64 %.sroa.02.14.us, -1            ; 2 uses
  %3 = icmp samesign ult i64 %2, %1
  tail call void @llvm.assume(i1 %3)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27799)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27800)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27801)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27802)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !27798, !noalias !27797, !noundef !67 ; 3 uses
  %i.g = icmp eq i64 %i.f, %i.c
  br i1 %i.g, label %.split.us, label %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.us

_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.us: ; preds = %.lr.ph.us
  %i.h = icmp ult i64 %i.f, %i.c
  br i1 %i.h, label %.split._crit_edge.us, label %bb.b

.split.us:                                        ; preds = %.lr.ph.us
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %2 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load double, ptr %i.j, align 8, !alias.scope !27797, !noalias !27798, !noundef !67
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.m = load double, ptr %i.l, align 8, !alias.scope !27798, !noalias !27797, !noundef !67
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !27797, !noalias !27798, !noundef !67 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !27798, !noalias !27797, !noundef !67 ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.o
  %i.s = icmp ult i64 %i.q, %i.o
  %i.t = fcmp ult double %i.m, %i.k
  %spec.select.i.us = select i1 %i.r, i1 %i.t, i1 %i.s
  br i1 %spec.select.i.us, label %.split._crit_edge.us, label %bb.b

bb.b:                                             ; preds = %.split.us, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.us
  %i.u = add nuw nsw i64 %.sroa.02.14.us, 1       ; 2 uses
  %exitcond20.not = icmp eq i64 %i.u, %1
  br i1 %exitcond20.not, label %.split._crit_edge.us, label %.lr.ph.us

.split._crit_edge.us:                             ; preds = %bb.b, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.us, %.split.us
  %.sroa.02.1.lcssa.us.ph = phi i64 [ %1, %bb.b ], [ %.sroa.02.14.us, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.us ], [ %.sroa.02.14.us, %.split.us ]
  %i.v = icmp eq i64 %.sroa.02.1.lcssa.us.ph, %1
  br label %.split14

.split14:                                         ; preds = %bb.c, %bb.h, %bb.m, %bb.r, %bb.w, %bb.z, %bb.aa, %.split._crit_edge, %.split._crit_edge.1, %.split._crit_edge.2, %.split._crit_edge.3, %.split._crit_edge.4, %.split._crit_edge.us
  %.us-phi = phi i1 [ %i.v, %.split._crit_edge.us ], [ true, %.split._crit_edge ], [ true, %bb.h ], [ true, %.split._crit_edge.1 ], [ true, %.split._crit_edge.4 ], [ true, %.split._crit_edge.2 ], [ true, %.split._crit_edge.3 ], [ true, %bb.m ], [ false, %bb.z ], [ true, %bb.r ], [ true, %bb.w ], [ false, %bb.aa ], [ true, %bb.c ]
  ret i1 %.us-phi

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.w = phi i64 [ %i.ab, %bb.c ], [ %.pre30, %bb.a ] ; 2 uses
  %.sroa.02.14 = phi i64 [ %i.ar, %bb.c ], [ 1, %bb.a ] ; 12 uses
  %i.x = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.02.14 ; 3 uses
  %i.y = add nsw i64 %.sroa.02.14, -1             ; 2 uses
  %i.z = icmp samesign ult i64 %i.y, %1
  tail call void @llvm.assume(i1 %i.z)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27799)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27800)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27801)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27802)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !27798, !noalias !27797, !noundef !67 ; 3 uses
  %i.ac = icmp eq i64 %i.ab, %i.w
  br i1 %i.ac, label %.split, label %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit

.split:                                           ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.y ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.af = load double, ptr %i.ae, align 8, !alias.scope !27797, !noalias !27798, !noundef !67
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.ah = load double, ptr %i.ag, align 8, !alias.scope !27798, !noalias !27797, !noundef !67
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !27797, !noalias !27798, !noundef !67 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !27798, !noalias !27797, !noundef !67 ; 2 uses
  %i.am = icmp eq i64 %i.al, %i.aj
  %i.an = icmp ult i64 %i.al, %i.aj
  %i.ao = fcmp ult double %i.ah, %i.af
  %spec.select.i = select i1 %i.am, i1 %i.ao, i1 %i.an
  br i1 %spec.select.i, label %.split._crit_edge, label %bb.c

_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit: ; preds = %.lr.ph
  %i.ap = icmp ult i64 %i.ab, %i.w
  br i1 %i.ap, label %.split._crit_edge, label %bb.c

.split._crit_edge:                                ; preds = %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit, %.split
  %i.aq = icmp eq i64 %.sroa.02.14, %1
  br i1 %i.aq, label %.split14, label %bb.d

bb.c:                                             ; preds = %.split, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit
  %i.ar = add nuw nsw i64 %.sroa.02.14, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.ar, %1
  br i1 %exitcond.not, label %.split14, label %.lr.ph

bb.d:                                             ; preds = %.split._crit_edge
  %i.as = add nsw i64 %.sroa.02.14, -1            ; 4 uses
  %i.at = icmp ult i64 %i.as, %1
  br i1 %i.at, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.x, %bb.s, %bb.n, %bb.i, %bb.d
  %.lcssa15 = phi i64 [ %i.as, %bb.d ], [ %i.bu, %bb.i ], [ %i.cw, %bb.n ], [ %i.dy, %bb.s ], [ %i.fa, %bb.x ]
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.lcssa15, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @588) #60
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.as ; 3 uses
  %i.av = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.02.14 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.au, i64 48, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.au, ptr noundef nonnull align 8 dereferenceable(48) %i.av, i64 48, i1 false), !alias.scope !27803
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.av, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aw = icmp samesign ugt i64 %.sroa.02.14, 1
  br i1 %i.aw, label %bb.ab, label %.split12.1

bb.g:                                             ; preds = %bb.y, %bb.t, %bb.o, %bb.j
  %.sroa.02.1.lcssa.lcssa18 = phi i64 [ %.sroa.02.1.lcssa.4, %bb.y ], [ %.sroa.02.1.lcssa.1, %bb.j ], [ %.sroa.02.1.lcssa.2, %bb.o ], [ %.sroa.02.1.lcssa.3, %bb.t ]
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.sroa.02.1.lcssa.lcssa18, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @588) #60
  unreachable

.split12.1:                                       ; preds = %bb.f, %bb.ab
  %i.ax = icmp samesign ult i64 %.sroa.02.14, %1  ; 2 uses
  br i1 %i.ax, label %.lr.ph.preheader.1, label %.split._crit_edge.1

.lr.ph.preheader.1:                               ; preds = %.split12.1
  %.phi.trans.insert21 = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %.pre22 = load i64, ptr %.phi.trans.insert21, align 8, !alias.scope !27804, !noalias !27805
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.h, %.lr.ph.preheader.1
  %i.ay = phi i64 [ %i.bd, %bb.h ], [ %.pre22, %.lr.ph.preheader.1 ] ; 2 uses
  %.sroa.02.14.1 = phi i64 [ %i.bs, %bb.h ], [ %.sroa.02.14, %.lr.ph.preheader.1 ] ; 5 uses
  %i.az = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.02.14.1 ; 3 uses
  %i.ba = add nsw i64 %.sroa.02.14.1, -1          ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %1
  tail call void @llvm.assume(i1 %i.bb)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27806)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27807)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27808)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27809)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !27805, !noalias !27804, !noundef !67 ; 3 uses
  %i.be = icmp eq i64 %i.bd, %i.ay
  br i1 %i.be, label %.split.1, label %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.1

_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.1: ; preds = %.lr.ph.1
  %i.bf = icmp ult i64 %i.bd, %i.ay
  br i1 %i.bf, label %.split._crit_edge.1, label %bb.h

.split.1:                                         ; preds = %.lr.ph.1
  %i.bg = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.ba ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.bi = load double, ptr %i.bh, align 8, !alias.scope !27804, !noalias !27805, !noundef !67
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.bk = load double, ptr %i.bj, align 8, !alias.scope !27805, !noalias !27804, !noundef !67
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !27804, !noalias !27805, !noundef !67 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !27805, !noalias !27804, !noundef !67 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, %i.bm
  %i.bq = icmp ult i64 %i.bo, %i.bm
  %i.br = fcmp ult double %i.bk, %i.bi
  %spec.select.i.1 = select i1 %i.bp, i1 %i.br, i1 %i.bq
  br i1 %spec.select.i.1, label %.split._crit_edge.1, label %bb.h

bb.h:                                             ; preds = %.split.1, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.1
  %i.bs = add i64 %.sroa.02.14.1, 1               ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.bs, %1
  br i1 %exitcond.1.not, label %.split14, label %.lr.ph.1

.split._crit_edge.1:                              ; preds = %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.1, %.split.1, %.split12.1
  %.sroa.02.1.lcssa.1 = phi i64 [ %.sroa.02.14, %.split12.1 ], [ %.sroa.02.14.1, %.split.1 ], [ %.sroa.02.14.1, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.1 ] ; 10 uses
  %i.bt = icmp eq i64 %.sroa.02.1.lcssa.1, %1
  br i1 %i.bt, label %.split14, label %bb.i

bb.i:                                             ; preds = %.split._crit_edge.1
  %i.bu = add i64 %.sroa.02.1.lcssa.1, -1         ; 4 uses
  %i.bv = icmp ult i64 %i.bu, %1
  br i1 %i.bv, label %bb.j, label %bb.e

bb.j:                                             ; preds = %bb.i
  br i1 %i.ax, label %bb.k, label %bb.g

bb.k:                                             ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.bu ; 3 uses
  %i.bx = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.02.1.lcssa.1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.bw, i64 48, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bw, ptr noundef nonnull align 8 dereferenceable(48) %i.bx, i64 48, i1 false), !alias.scope !27803
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bx, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.by = icmp ugt i64 %.sroa.02.1.lcssa.1, 1
  br i1 %i.by, label %bb.l, label %.split12.2

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort25insertion_sort_shift_leftNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSB12_INtB4_16ParallelSliceMutB12_E20par_sort_unstable_byNCINvB14_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4M_5types3any5PyAnyEB4H_NtB3H_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4M_3err5PyErrEs4_0E0EB6b_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.1, i64 noundef %i.bu) #62
  tail call fastcc void @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort26insertion_sort_shift_rightNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSB13_INtB4_16ParallelSliceMutB13_E20par_sort_unstable_byNCINvB15_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB3I_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4N_3err5PyErrEs4_0E0EB6c_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.1) #62
  br label %.split12.2

.split12.2:                                       ; preds = %bb.l, %bb.k
  %i.bz = icmp ult i64 %.sroa.02.1.lcssa.1, %1    ; 2 uses
  br i1 %i.bz, label %.lr.ph.preheader.2, label %.split._crit_edge.2

.lr.ph.preheader.2:                               ; preds = %.split12.2
  %.phi.trans.insert23 = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %.pre24 = load i64, ptr %.phi.trans.insert23, align 8, !alias.scope !27810, !noalias !27811
  br label %.lr.ph.2

.lr.ph.2:                                         ; preds = %bb.m, %.lr.ph.preheader.2
  %i.ca = phi i64 [ %i.cf, %bb.m ], [ %.pre24, %.lr.ph.preheader.2 ] ; 2 uses
  %.sroa.02.14.2 = phi i64 [ %i.cu, %bb.m ], [ %.sroa.02.1.lcssa.1, %.lr.ph.preheader.2 ] ; 5 uses
  %i.cb = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.02.14.2 ; 3 uses
  %i.cc = add nsw i64 %.sroa.02.14.2, -1          ; 2 uses
  %i.cd = icmp ult i64 %i.cc, %1
  tail call void @llvm.assume(i1 %i.cd)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27812)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27813)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27814)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27815)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !27811, !noalias !27810, !noundef !67 ; 3 uses
  %i.cg = icmp eq i64 %i.cf, %i.ca
  br i1 %i.cg, label %.split.2, label %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.2

_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.2: ; preds = %.lr.ph.2
  %i.ch = icmp ult i64 %i.cf, %i.ca
end_hunk_10
begin_hunk_11_@_RINvNtNtNtCs68Jln09rRqb_8petgraph4algo3scc12kosaraju_scc12kosaraju_sccRINtNtNtB8_10graph_impl12stable_graph11StableGraphuuEECskcxRuJ53GpR_9rustworkx:bb.a
          to label %common.resume unwind label %bb.ad

bb.at:                                            ; preds = %bb.as, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i96
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit100 unwind label %bb.ad
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable14driftsort_mainNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYBZ_NtNtB8_3cmp10PartialOrd2ltINtNtCs87CvPiUlf0m_5alloc3vec3VecBZ_EEB13_(ptr noalias nofree noundef nonnull %0, i64 noundef range(i64 21, -9223372036854775808) %1) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4096 x i8], align 1              ; 3 uses
  %i.b = lshr i64 %1, 1
  %i.c = sub nuw nsw i64 %1, %i.b
  %i.d = tail call i64 @llvm.umin.i64(i64 %1, i64 8000000)
  %i.e = tail call i64 @llvm.umax.i64(i64 %i.c, i64 %i.d) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = icmp samesign ugt i64 %i.e, 4096         ; 3 uses
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !37133
  %i.g = tail call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 4097, 0) %i.e, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !37133 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.noexc, label %bb.d

.noexc:                                           ; preds = %bb.b
  tail call void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 4097, 0) %i.e) #61
  unreachable

bb.c:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  br i1 %i.f, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEB1c_.exit12, label %bb.g

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.6.1 = phi ptr [ undef, %bb.a ], [ %i.g, %bb.b ] ; 4 uses
  %.sroa.4.0 = phi i64 [ 4096, %bb.a ], [ %i.e, %bb.b ]
  %.pn21 = phi ptr [ %i.a, %bb.a ], [ %i.g, %bb.b ]
  %i.j = icmp samesign ult i64 %1, 65
  invoke fastcc void @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift4sortNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYBW_NtNtBa_3cmp10PartialOrd2ltEB10_(ptr noalias nofree noundef nonnull %0, i64 noundef %1, ptr noalias nofree noundef nonnull %.pn21, i64 noundef %.sroa.4.0, i1 noundef zeroext %i.j)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d
  br i1 %i.f, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEB1c_.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEB1c_.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEB1c_.exit: ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.1) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.1, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 1) #59
  br label %bb.f

bb.g:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEB1c_.exit12, %bb.c
  resume { ptr, i32 } %i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEB1c_.exit12: ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.1) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.1, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 1) #59
  br label %bb.g
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable14driftsort_mainTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB10_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSBZ_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB12_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4J_5types3any5PyAnyEB4E_NtB14_10UndirectedENCINvB2N_9is_planarB43_Es_0NtB2N_9NonPlanarEs1_0E0INtNtB20_3vec3VecBZ_EECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 21, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4096 x i8], align 4              ; 3 uses
  %i.b = lshr i64 %1, 1
  %i.c = sub nuw nsw i64 %1, %i.b
  %i.d = tail call i64 @llvm.umin.i64(i64 %1, i64 1000000)
  %i.e = tail call i64 @llvm.umax.i64(i64 %i.c, i64 %i.d) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = icmp samesign ugt i64 %i.e, 512          ; 3 uses
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = shl nuw nsw i64 %i.e, 3                  ; 2 uses
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !37138
  %i.h = tail call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !37138 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.noexc, label %bb.d

.noexc:                                           ; preds = %bb.b
  tail call void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.g) #61
  unreachable

bb.c:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  br i1 %i.f, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB19_EEECskcxRuJ53GpR_9rustworkx.exit12, label %bb.g

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.6.1 = phi ptr [ undef, %bb.a ], [ %i.h, %bb.b ] ; 4 uses
  %.sroa.4.0 = phi i64 [ 512, %bb.a ], [ %i.e, %bb.b ]
  %.pn21 = phi ptr [ %i.a, %bb.a ], [ %i.h, %bb.b ]
  %i.k = icmp samesign ult i64 %1, 65
  invoke fastcc void @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift4sortTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBX_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSBW_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4E_5types3any5PyAnyEB4z_NtB11_10UndirectedENCINvB2J_9is_planarB3Z_Es_0NtB2J_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 4 %.pn21, i64 noundef %.sroa.4.0, i1 noundef zeroext %i.k, ptr noalias nofree noundef align 8 dereferenceable(8) %2)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d
  br i1 %i.f, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB19_EEECskcxRuJ53GpR_9rustworkx.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB19_EEECskcxRuJ53GpR_9rustworkx.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB19_EEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.e
  %i.l = shl nuw nsw i64 %i.e, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.1) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.1, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 4) #59
  br label %bb.f

bb.g:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB19_EEECskcxRuJ53GpR_9rustworkx.exit12, %bb.c
  resume { ptr, i32 } %i.j

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB19_EEECskcxRuJ53GpR_9rustworkx.exit12: ; preds = %bb.c
  %i.m = shl nuw nsw i64 %i.e, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.1) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.1, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 4) #59
  br label %bb.g
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable14driftsort_mainTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB10_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSBZ_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB12_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4J_5types3any5PyAnyEB4E_NtB14_10UndirectedENCINvB2N_9is_planarB43_Es_0NtB2N_9NonPlanarEs_0E0INtNtB20_3vec3VecBZ_EECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 21, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4096 x i8], align 4              ; 3 uses
  %i.b = lshr i64 %1, 1
  %i.c = sub nuw nsw i64 %1, %i.b
  %i.d = tail call i64 @llvm.umin.i64(i64 %1, i64 1000000)
  %i.e = tail call i64 @llvm.umax.i64(i64 %i.c, i64 %i.d) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = icmp samesign ugt i64 %i.e, 512          ; 3 uses
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = shl nuw nsw i64 %i.e, 3                  ; 2 uses
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !37143
  %i.h = tail call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !37143 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.noexc, label %bb.d

.noexc:                                           ; preds = %bb.b
  tail call void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.g) #61
  unreachable

bb.c:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  br i1 %i.f, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB19_EEECskcxRuJ53GpR_9rustworkx.exit12, label %bb.g

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.6.1 = phi ptr [ undef, %bb.a ], [ %i.h, %bb.b ] ; 4 uses
  %.sroa.4.0 = phi i64 [ 512, %bb.a ], [ %i.e, %bb.b ]
  %.pn21 = phi ptr [ %i.a, %bb.a ], [ %i.h, %bb.b ]
  %i.k = icmp samesign ult i64 %1, 65
  invoke fastcc void @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift4sortTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBX_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSBW_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4E_5types3any5PyAnyEB4z_NtB11_10UndirectedENCINvB2J_9is_planarB3Z_Es_0NtB2J_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 4 %.pn21, i64 noundef %.sroa.4.0, i1 noundef zeroext %i.k, ptr noalias nofree noundef align 8 dereferenceable(8) %2)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d
  br i1 %i.f, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB19_EEECskcxRuJ53GpR_9rustworkx.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB19_EEECskcxRuJ53GpR_9rustworkx.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB19_EEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.e
  %i.l = shl nuw nsw i64 %i.e, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.1) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.1, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 4) #59
  br label %bb.f

bb.g:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB19_EEECskcxRuJ53GpR_9rustworkx.exit12, %bb.c
  resume { ptr, i32 } %i.j

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB19_EEECskcxRuJ53GpR_9rustworkx.exit12: ; preds = %bb.c
  %i.m = shl nuw nsw i64 %i.e, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.1) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.1, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 4) #59
  br label %bb.g
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort8unstable7ipnsortTjjdENCINvMB6_SBT_20sort_unstable_by_keyTjjENCINvMs0_NtNtCshfaCWemluAW_4sprs6sparse12triplet_iterINtB1M_10TriMatIterINtNtB6_4iter4IterjEB2L_IB2M_dEE7into_csjE0E0ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 21, 384307168202282326) %1) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val10 = load i64, ptr %i.a, align 8, !noundef !67 ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 32
  %.val11 = load i64, ptr %i.b, align 8, !noundef !67 ; 3 uses
  %.val12 = load i64, ptr %0, align 8, !noundef !67 ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val13 = load i64, ptr %i.c, align 8, !noundef !67
  %i.d = icmp eq i64 %.val10, %.val12
  %i.e = icmp ult i64 %.val10, %.val12
  %i.f = icmp ult i64 %.val11, %.val13
  %.sroa.0.0.i.i = select i1 %i.d, i1 %i.f, i1 %i.e ; 2 uses
  br i1 %.sroa.0.0.i.i, label %.preheader, label %.preheader16

.preheader16:                                     ; preds = %bb.a, %bb.b
  %.val9 = phi i64 [ %.val7, %bb.b ], [ %.val11, %bb.a ]
  %.val8 = phi i64 [ %.val6, %bb.b ], [ %.val10, %bb.a ] ; 2 uses
  %.sroa.01.0.i18 = phi i64 [ %i.l, %bb.b ], [ 2, %bb.a ] ; 4 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i18 ; 2 uses
  %2 = add nsw i64 %.sroa.01.0.i18, -1
  %3 = icmp samesign ult i64 %2, %1
  tail call void @llvm.assume(i1 %3)
  %.val6 = load i64, ptr %i.g, align 8, !noundef !67 ; 3 uses
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %.val7 = load i64, ptr %i.h, align 8, !noundef !67 ; 2 uses
  %i.i = icmp eq i64 %.val6, %.val8
  %i.j = icmp ult i64 %.val6, %.val8
  %i.k = icmp ult i64 %.val7, %.val9
  %.sroa.0.0.i.i14 = select i1 %i.i, i1 %i.k, i1 %i.j
  br i1 %.sroa.0.0.i.i14, label %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTjjdENCINvMB6_SB12_20sort_unstable_by_keyTjjENCINvMs0_NtNtCshfaCWemluAW_4sprs6sparse12triplet_iterINtB1W_10TriMatIterINtNtB6_4iter4IterjEB2V_IB2W_dEE7into_csjE0E0ECskcxRuJ53GpR_9rustworkx.exit, label %bb.b

bb.b:                                             ; preds = %.preheader16
  %i.l = add nuw nsw i64 %.sroa.01.0.i18, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.l, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTjjdENCINvMB6_SB12_20sort_unstable_by_keyTjjENCINvMs0_NtNtCshfaCWemluAW_4sprs6sparse12triplet_iterINtB1W_10TriMatIterINtNtB6_4iter4IterjEB2V_IB2W_dEE7into_csjE0E0ECskcxRuJ53GpR_9rustworkx.exit.thread, label %.preheader16

.preheader:                                       ; preds = %bb.a, %bb.c
  %.val5 = phi i64 [ %.val3, %bb.c ], [ %.val11, %bb.a ]
  %.val4 = phi i64 [ %.val, %bb.c ], [ %.val10, %bb.a ] ; 2 uses
  %.sroa.01.1.i19 = phi i64 [ %i.r, %bb.c ], [ 2, %bb.a ] ; 4 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.1.i19 ; 2 uses
  %4 = add nsw i64 %.sroa.01.1.i19, -1
  %5 = icmp samesign ult i64 %4, %1
  tail call void @llvm.assume(i1 %5)
  %.val = load i64, ptr %i.m, align 8, !noundef !67 ; 3 uses
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %.val3 = load i64, ptr %i.n, align 8, !noundef !67 ; 2 uses
  %i.o = icmp eq i64 %.val, %.val4
  %i.p = icmp ult i64 %.val, %.val4
  %i.q = icmp ult i64 %.val3, %.val5
  %.sroa.0.0.i.i15 = select i1 %i.o, i1 %i.q, i1 %i.p
  br i1 %.sroa.0.0.i.i15, label %bb.c, label %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTjjdENCINvMB6_SB12_20sort_unstable_by_keyTjjENCINvMs0_NtNtCshfaCWemluAW_4sprs6sparse12triplet_iterINtB1W_10TriMatIterINtNtB6_4iter4IterjEB2V_IB2W_dEE7into_csjE0E0ECskcxRuJ53GpR_9rustworkx.exit

bb.c:                                             ; preds = %.preheader
  %i.r = add nuw nsw i64 %.sroa.01.1.i19, 1       ; 2 uses
  %exitcond22.not = icmp eq i64 %i.r, %1
  br i1 %exitcond22.not, label %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTjjdENCINvMB6_SB12_20sort_unstable_by_keyTjjENCINvMs0_NtNtCshfaCWemluAW_4sprs6sparse12triplet_iterINtB1W_10TriMatIterINtNtB6_4iter4IterjEB2V_IB2W_dEE7into_csjE0E0ECskcxRuJ53GpR_9rustworkx.exit.thread, label %.preheader

_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTjjdENCINvMB6_SB12_20sort_unstable_by_keyTjjENCINvMs0_NtNtCshfaCWemluAW_4sprs6sparse12triplet_iterINtB1W_10TriMatIterINtNtB6_4iter4IterjEB2V_IB2W_dEE7into_csjE0E0ECskcxRuJ53GpR_9rustworkx.exit: ; preds = %.preheader16, %.preheader
  %.sroa.01.2.i = phi i64 [ %.sroa.01.1.i19, %.preheader ], [ %.sroa.01.0.i18, %.preheader16 ] ; 2 uses
  %i.s = icmp samesign ule i64 %.sroa.01.2.i, %1
  tail call void @llvm.assume(i1 %i.s)
  %i.t = icmp eq i64 %.sroa.01.2.i, %1
  br i1 %i.t, label %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTjjdENCINvMB6_SB12_20sort_unstable_by_keyTjjENCINvMs0_NtNtCshfaCWemluAW_4sprs6sparse12triplet_iterINtB1W_10TriMatIterINtNtB6_4iter4IterjEB2V_IB2W_dEE7into_csjE0E0ECskcxRuJ53GpR_9rustworkx.exit.thread, label %bb.d

_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTjjdENCINvMB6_SB12_20sort_unstable_by_keyTjjENCINvMs0_NtNtCshfaCWemluAW_4sprs6sparse12triplet_iterINtB1W_10TriMatIterINtNtB6_4iter4IterjEB2V_IB2W_dEE7into_csjE0E0ECskcxRuJ53GpR_9rustworkx.exit.thread: ; preds = %bb.b, %bb.c, %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTjjdENCINvMB6_SB12_20sort_unstable_by_keyTjjENCINvMs0_NtNtCshfaCWemluAW_4sprs6sparse12triplet_iterINtB1W_10TriMatIterINtNtB6_4iter4IterjEB2V_IB2W_dEE7into_csjE0E0ECskcxRuJ53GpR_9rustworkx.exit
  br i1 %.sroa.0.0.i.i, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTjjdE12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTjjdEECskcxRuJ53GpR_9rustworkx.exit

bb.d:                                             ; preds = %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTjjdENCINvMB6_SB12_20sort_unstable_by_keyTjjENCINvMs0_NtNtCshfaCWemluAW_4sprs6sparse12triplet_iterINtB1W_10TriMatIterINtNtB6_4iter4IterjEB2V_IB2W_dEE7into_csjE0E0ECskcxRuJ53GpR_9rustworkx.exit
  %i.u = or i64 %1, 1
  %i.v = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.u, i1 true)
  %i.w = trunc nuw nsw i64 %i.v to i32
  %i.x = shl nuw nsw i32 %i.w, 1
  %i.y = xor i32 %i.x, 126
  tail call fastcc void @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort8unstable9quicksort9quicksortTjjdENCINvMB8_SB17_20sort_unstable_by_keyTjjENCINvMs0_NtNtCshfaCWemluAW_4sprs6sparse12triplet_iterINtB21_10TriMatIterINtNtB8_4iter4IterjEB30_IB31_dEE7into_csjE0E0ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, i32 noundef %i.y)
  br label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTjjdEECskcxRuJ53GpR_9rustworkx.exit

_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTjjdEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSTjjdE12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i, %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTjjdENCINvMB6_SB12_20sort_unstable_by_keyTjjENCINvMs0_NtNtCshfaCWemluAW_4sprs6sparse12triplet_iterINtB1W_10TriMatIterINtNtB6_4iter4IterjEB2V_IB2W_dEE7into_csjE0E0ECskcxRuJ53GpR_9rustworkx.exit.thread, %bb.d
  ret void

_RNvMNtCslwFuT2d6ECx_4core5sliceSTjjdE12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i: ; preds = %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTjjdENCINvMB6_SB12_20sort_unstable_by_keyTjjENCINvMs0_NtNtCshfaCWemluAW_4sprs6sparse12triplet_iterINtB1W_10TriMatIterINtNtB6_4iter4IterjEB2V_IB2W_dEE7into_csjE0E0ECskcxRuJ53GpR_9rustworkx.exit.thread
  %i.z = lshr i64 %1, 1
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37155)
  br label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTjjdE12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSTjjdE12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSTjjdE12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTjjdE12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i
  %.sroa.0.016.i = phi i64 [ %i.ai, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTjjdE12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i ], [ 0, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTjjdE12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i ] ; 3 uses
  %i.ab = xor i64 %.sroa.0.016.i, -1
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.0.016.i ; 3 uses
  %i.ad = getelementptr [24 x i8], ptr %i.aa, i64 %i.ab ; 3 uses
  %i.ae = load <2 x i64>, ptr %i.ac, align 8, !alias.scope !37156, !noalias !37155
  %i.af = load <2 x i64>, ptr %i.ad, align 8, !alias.scope !37157, !noalias !37154
  store <2 x i64> %i.af, ptr %i.ac, align 8, !alias.scope !37156, !noalias !37155
  store <2 x i64> %i.ae, ptr %i.ad, align 8, !alias.scope !37157, !noalias !37154
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37159)
  %.sroa.0.0.copyload.i.i.i.2.i.i.i = load i64, ptr %i.ag, align 8, !alias.scope !37160, !noalias !37161
  %.sroa.02.0.copyload.i.i.i.2.i.i.i = load i64, ptr %i.ah, align 8, !alias.scope !37161, !noalias !37160
  store i64 %.sroa.02.0.copyload.i.i.i.2.i.i.i, ptr %i.ag, align 8, !alias.scope !37160, !noalias !37161
  store i64 %.sroa.0.0.copyload.i.i.i.2.i.i.i, ptr %i.ah, align 8, !alias.scope !37161, !noalias !37160
  %i.ai = add nuw nsw i64 %.sroa.0.016.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ai, %i.z
  br i1 %exitcond.not.i, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTjjdEECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTjjdE12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtNtNtCscQOBX8uaZYv_3std3sys12thread_local6native4lazy7destroyNtNtCsj855HSQkgLM_15crossbeam_epoch9collector11LocalHandleECskcxRuJ53GpR_9rustworkx(ptr nofree noundef captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !range !78, !noundef !67
  store i8 2, ptr %i.a, align 1
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtNtCscQOBX8uaZYv_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyNtNtCsj855HSQkgLM_15crossbeam_epoch9collector11LocalHandleE0ECskcxRuJ53GpR_9rustworkx.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load ptr, ptr %0, align 8, !noundef !67 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 2072
  %i.e = load i64, ptr %i.d, align 8, !noundef !67
  %i.f = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 2080 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !67 ; 2 uses
  %i.h = add i64 %i.g, -1
  store i64 %i.h, ptr %i.f, align 8
  %i.i = icmp eq i64 %i.e, 0
  %i.j = icmp eq i64 %i.g, 1
  %or.cond.i.i.i.i.i = and i1 %i.i, %i.j
  br i1 %or.cond.i.i.i.i.i, label %bb.c, label %_RINvNtNtCscQOBX8uaZYv_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyNtNtCsj855HSQkgLM_15crossbeam_epoch9collector11LocalHandleE0ECskcxRuJ53GpR_9rustworkx.exit, !prof !79

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs6_NtCsj855HSQkgLM_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %.val.i.i)
          to label %_RINvNtNtCscQOBX8uaZYv_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyNtNtCsj855HSQkgLM_15crossbeam_epoch9collector11LocalHandleE0ECskcxRuJ53GpR_9rustworkx.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @_RNvXNvNtNtCscQOBX8uaZYv_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop() #64
          to label %.noexc1.i unwind label %bb.e

.noexc1.i:                                        ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58
  unreachable

_RINvNtNtCscQOBX8uaZYv_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyNtNtCsj855HSQkgLM_15crossbeam_epoch9collector11LocalHandleE0ECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared5pivot11median3_recNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB14_NtNtBa_3cmp10PartialOrd2ltEB18_(ptr nofree noundef nonnull readonly %0, ptr nofree noundef nonnull readonly %1, ptr nofree noundef nonnull readonly %2, i64 noundef range(i64 0, 1152921504606846976) %3) unnamed_addr #15 {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared5pivot7median3NtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYBZ_NtNtBa_3cmp10PartialOrd2ltEB13_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared5pivot11median3_recNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB14_NtNtBa_3cmp10PartialOrd2ltEB18_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared5pivot11median3_recNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB14_NtNtBa_3cmp10PartialOrd2ltEB18_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared5pivot11median3_recNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB14_NtNtBa_3cmp10PartialOrd2ltEB18_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b)
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared5pivot7median3NtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYBZ_NtNtBa_3cmp10PartialOrd2ltEB13_.exit

_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared5pivot7median3NtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYBZ_NtNtBa_3cmp10PartialOrd2ltEB13_.exit: ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %.sroa.0.0.val13 = load i8, ptr %.sroa.0.0, align 1, !range !149, !noundef !67 ; 2 uses
  %.sroa.04.0.val14 = load i8, ptr %.sroa.04.0, align 1, !range !149, !noundef !67 ; 2 uses
  %i.n = icmp samesign ult i8 %.sroa.0.0.val13, %.sroa.04.0.val14 ; 2 uses
  %.sroa.08.0.val12 = load i8, ptr %.sroa.08.0, align 1, !range !149, !noundef !67 ; 2 uses
  %i.o = icmp samesign ult i8 %.sroa.0.0.val13, %.sroa.08.0.val12
  %i.p = xor i1 %i.n, %i.o
  %i.q = icmp samesign ult i8 %.sroa.04.0.val14, %.sroa.08.0.val12
  %i.r = xor i1 %i.n, %i.q
  %..i = select i1 %i.r, ptr %.sroa.08.0, ptr %.sroa.04.0
  %.sroa.0.0.i = select i1 %i.p, ptr %.sroa.0.0, ptr %..i
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared5pivot11median3_recTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB15_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB14_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB17_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4P_5types3any5PyAnyEB4K_NtB19_10UndirectedENCINvB2T_9is_planarB49_Es_0NtB2T_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 144115188075855872) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #1 {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared5pivot11median3_recTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB15_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB14_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB17_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4P_5types3any5PyAnyEB4K_NtB19_10UndirectedENCINvB2T_9is_planarB49_Es_0NtB2T_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b, ptr noalias nofree noundef align 8 dereferenceable(8) %4)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared5pivot11median3_recTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB15_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB14_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB17_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4P_5types3any5PyAnyEB4K_NtB19_10UndirectedENCINvB2T_9is_planarB49_Es_0NtB2T_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b, ptr noalias nofree noundef align 8 dereferenceable(8) %4)
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared5pivot11median3_recTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB15_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB14_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB17_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4P_5types3any5PyAnyEB4K_NtB19_10UndirectedENCINvB2T_9is_planarB49_Es_0NtB2T_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b, ptr noalias nofree noundef align 8 dereferenceable(8) %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 4 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 4 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 4 uses
  %.val18 = load ptr, ptr %4, align 8, !nonnull !67, !align !98, !noundef !67
  %.sroa.0.0.val19 = load i32, ptr %.sroa.0.0, align 4
  %i.n = getelementptr i8, ptr %.sroa.0.0, i64 4  ; 2 uses
  %.sroa.0.0.val20 = load i32, ptr %i.n, align 4
  %.sroa.04.0.val21 = load i32, ptr %.sroa.04.0, align 4
  %i.o = getelementptr i8, ptr %.sroa.04.0, i64 4 ; 2 uses
  %.sroa.04.0.val22 = load i32, ptr %i.o, align 4
  %i.p = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs87CvPiUlf0m_5alloc5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBz_E11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtBB_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3E_5types3any5PyAnyEB3z_NtBD_10UndirectedENCINvB1J_9is_planarB2Z_Es_0NtB1J_9NonPlanarEs1_0E0CskcxRuJ53GpR_9rustworkx(ptr nonnull %.val18, i32 %.sroa.0.0.val19, i32 %.sroa.0.0.val20, i32 %.sroa.04.0.val21, i32 %.sroa.04.0.val22) #64 ; 2 uses
  %.val14 = load ptr, ptr %4, align 8, !nonnull !67, !align !98, !noundef !67
  %.sroa.0.0.val = load i32, ptr %.sroa.0.0, align 4
  %.sroa.0.0.val15 = load i32, ptr %i.n, align 4
  %.sroa.08.0.val16 = load i32, ptr %.sroa.08.0, align 4
  %i.q = getelementptr i8, ptr %.sroa.08.0, i64 4 ; 2 uses
  %.sroa.08.0.val17 = load i32, ptr %i.q, align 4
  %i.r = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs87CvPiUlf0m_5alloc5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBz_E11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtBB_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3E_5types3any5PyAnyEB3z_NtBD_10UndirectedENCINvB1J_9is_planarB2Z_Es_0NtB1J_9NonPlanarEs1_0E0CskcxRuJ53GpR_9rustworkx(ptr nonnull %.val14, i32 %.sroa.0.0.val, i32 %.sroa.0.0.val15, i32 %.sroa.08.0.val16, i32 %.sroa.08.0.val17) #64
  %i.s = xor i1 %i.p, %i.r
  br i1 %i.s, label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared5pivot7median3TNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB10_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSBZ_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB12_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4J_5types3any5PyAnyEB4E_NtB14_10UndirectedENCINvB2N_9is_planarB43_Es_0NtB2N_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val = load ptr, ptr %4, align 8, !nonnull !67, !align !98, !noundef !67
  %.sroa.04.0.val = load i32, ptr %.sroa.04.0, align 4
  %.sroa.04.0.val12 = load i32, ptr %i.o, align 4
  %.sroa.08.0.val = load i32, ptr %.sroa.08.0, align 4
  %.sroa.08.0.val13 = load i32, ptr %i.q, align 4
  %i.t = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs87CvPiUlf0m_5alloc5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBz_E11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtBB_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3E_5types3any5PyAnyEB3z_NtBD_10UndirectedENCINvB1J_9is_planarB2Z_Es_0NtB1J_9NonPlanarEs1_0E0CskcxRuJ53GpR_9rustworkx(ptr nonnull %.val, i32 %.sroa.04.0.val, i32 %.sroa.04.0.val12, i32 %.sroa.08.0.val, i32 %.sroa.08.0.val13) #64
  %i.u = xor i1 %i.p, %i.t
  %..i = select i1 %i.u, ptr %.sroa.08.0, ptr %.sroa.04.0
end_hunk_11
begin_hunk_12_@_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort12sort8_stableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1a_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB19_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB1c_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4U_5types3any5PyAnyEB4P_NtB1e_10UndirectedENCINvB2Y_9is_planarB4e_Es_0NtB2Y_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx:._crit_edge.i
  %i.ai = getelementptr i8, ptr %i.v, i64 4
  %.sroa.013.0.val26.i.1 = load i32, ptr %i.ai, align 4, !alias.scope !37194
  %i.aj = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs87CvPiUlf0m_5alloc5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBz_E11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtBB_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3E_5types3any5PyAnyEB3z_NtBD_10UndirectedENCINvB1J_9is_planarB2Z_Es_0NtB1J_9NonPlanarEs_0E0CskcxRuJ53GpR_9rustworkx(ptr nonnull readonly %.0.val, i32 %.sroa.015.0.val.i.1, i32 %.sroa.015.0.val25.i.1, i32 %.sroa.013.0.val.i.1, i32 %.sroa.013.0.val26.i.1) #64, !noalias !37194 ; 3 uses
  %..i.i.1 = select i1 %i.aj, ptr %i.v, ptr %i.u
  %i.ak = xor i1 %i.aj, true
  %i.al = load i64, ptr %..i.i.1, align 4, !alias.scope !37194, !noalias !37197
  store i64 %i.al, ptr %i.w, align 4, !noalias !37198
  %.neg.i.i.1 = sext i1 %i.ak to i64
  %i.am = getelementptr [8 x i8], ptr %i.u, i64 %.neg.i.i.1 ; 4 uses
  %.neg13.i.i.1 = sext i1 %i.aj to i64
  %i.an = getelementptr [8 x i8], ptr %i.v, i64 %.neg13.i.i.1 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.09.0.val.i.2 = load i32, ptr %i.ad, align 4, !alias.scope !37194
  %i.ap = getelementptr i8, ptr %i.ad, i64 4
  %.sroa.09.0.val22.i.2 = load i32, ptr %i.ap, align 4, !alias.scope !37194
  %.sroa.04.0.val.i.2 = load i32, ptr %i.af, align 4, !alias.scope !37194
  %i.aq = getelementptr i8, ptr %i.af, i64 4
  %.sroa.04.0.val23.i.2 = load i32, ptr %i.aq, align 4, !alias.scope !37194
  %i.ar = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs87CvPiUlf0m_5alloc5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBz_E11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtBB_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3E_5types3any5PyAnyEB3z_NtBD_10UndirectedENCINvB1J_9is_planarB2Z_Es_0NtB1J_9NonPlanarEs_0E0CskcxRuJ53GpR_9rustworkx(ptr nonnull readonly %.0.val, i32 %.sroa.09.0.val.i.2, i32 %.sroa.09.0.val22.i.2, i32 %.sroa.04.0.val.i.2, i32 %.sroa.04.0.val23.i.2) #64, !noalias !37194 ; 3 uses
  %..i21.i.2 = select i1 %i.ar, ptr %i.ad, ptr %i.af
  %i.as = xor i1 %i.ar, true
  %i.at = load i64, ptr %..i21.i.2, align 4, !alias.scope !37194, !noalias !37195
  store i64 %i.at, ptr %i.ag, align 4, !noalias !37196
  %i.au = zext i1 %i.ar to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.au ; 4 uses
  %i.aw = zext i1 %i.as to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.aw ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.015.0.val.i.2 = load i32, ptr %i.am, align 4, !alias.scope !37194
  %i.az = getelementptr i8, ptr %i.am, i64 4
  %.sroa.015.0.val25.i.2 = load i32, ptr %i.az, align 4, !alias.scope !37194
  %.sroa.013.0.val.i.2 = load i32, ptr %i.an, align 4, !alias.scope !37194
  %i.ba = getelementptr i8, ptr %i.an, i64 4
  %.sroa.013.0.val26.i.2 = load i32, ptr %i.ba, align 4, !alias.scope !37194
  %i.bb = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs87CvPiUlf0m_5alloc5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBz_E11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtBB_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3E_5types3any5PyAnyEB3z_NtBD_10UndirectedENCINvB1J_9is_planarB2Z_Es_0NtB1J_9NonPlanarEs_0E0CskcxRuJ53GpR_9rustworkx(ptr nonnull readonly %.0.val, i32 %.sroa.015.0.val.i.2, i32 %.sroa.015.0.val25.i.2, i32 %.sroa.013.0.val.i.2, i32 %.sroa.013.0.val26.i.2) #64, !noalias !37194 ; 3 uses
  %..i.i.2 = select i1 %i.bb, ptr %i.an, ptr %i.am
  %i.bc = xor i1 %i.bb, true
  %i.bd = load i64, ptr %..i.i.2, align 4, !alias.scope !37194, !noalias !37197
  store i64 %i.bd, ptr %i.ao, align 4, !noalias !37198
  %.neg.i.i.2 = sext i1 %i.bc to i64
  %i.be = getelementptr [8 x i8], ptr %i.am, i64 %.neg.i.i.2 ; 4 uses
  %.neg13.i.i.2 = sext i1 %i.bb to i64
  %i.bf = getelementptr [8 x i8], ptr %i.an, i64 %.neg13.i.i.2 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.09.0.val.i.3 = load i32, ptr %i.av, align 4, !alias.scope !37194
  %i.bh = getelementptr i8, ptr %i.av, i64 4
  %.sroa.09.0.val22.i.3 = load i32, ptr %i.bh, align 4, !alias.scope !37194
  %.sroa.04.0.val.i.3 = load i32, ptr %i.ax, align 4, !alias.scope !37194
  %i.bi = getelementptr i8, ptr %i.ax, i64 4
  %.sroa.04.0.val23.i.3 = load i32, ptr %i.bi, align 4, !alias.scope !37194
  %i.bj = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs87CvPiUlf0m_5alloc5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBz_E11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtBB_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3E_5types3any5PyAnyEB3z_NtBD_10UndirectedENCINvB1J_9is_planarB2Z_Es_0NtB1J_9NonPlanarEs_0E0CskcxRuJ53GpR_9rustworkx(ptr nonnull readonly %.0.val, i32 %.sroa.09.0.val.i.3, i32 %.sroa.09.0.val22.i.3, i32 %.sroa.04.0.val.i.3, i32 %.sroa.04.0.val23.i.3) #64, !noalias !37194 ; 3 uses
  %..i21.i.3 = select i1 %i.bj, ptr %i.av, ptr %i.ax
  %i.bk = xor i1 %i.bj, true
  %i.bl = load i64, ptr %..i21.i.3, align 4, !alias.scope !37194, !noalias !37195
  store i64 %i.bl, ptr %i.ay, align 4, !noalias !37196
  %i.bm = zext i1 %i.bj to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.bm
  %i.bo = zext i1 %i.bk to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.bo
  %.sroa.015.0.val.i.3 = load i32, ptr %i.be, align 4, !alias.scope !37194
  %i.bq = getelementptr i8, ptr %i.be, i64 4
  %.sroa.015.0.val25.i.3 = load i32, ptr %i.bq, align 4, !alias.scope !37194
  %.sroa.013.0.val.i.3 = load i32, ptr %i.bf, align 4, !alias.scope !37194
  %i.br = getelementptr i8, ptr %i.bf, i64 4
  %.sroa.013.0.val26.i.3 = load i32, ptr %i.br, align 4, !alias.scope !37194
  %i.bs = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs87CvPiUlf0m_5alloc5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBz_E11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtBB_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3E_5types3any5PyAnyEB3z_NtBD_10UndirectedENCINvB1J_9is_planarB2Z_Es_0NtB1J_9NonPlanarEs_0E0CskcxRuJ53GpR_9rustworkx(ptr nonnull readonly %.0.val, i32 %.sroa.015.0.val.i.3, i32 %.sroa.015.0.val25.i.3, i32 %.sroa.013.0.val.i.3, i32 %.sroa.013.0.val26.i.3) #64, !noalias !37194 ; 3 uses
  %..i.i.3 = select i1 %i.bs, ptr %i.bf, ptr %i.be
  %i.bt = xor i1 %i.bs, true
  %i.bu = load i64, ptr %..i.i.3, align 4, !alias.scope !37194, !noalias !37197
  store i64 %i.bu, ptr %i.bg, align 4, !noalias !37198
  %.neg.i.i.3 = sext i1 %i.bt to i64
  %i.bv = getelementptr [8 x i8], ptr %i.be, i64 %.neg.i.i.3
  %.neg13.i.i.3 = sext i1 %i.bs to i64
  %i.bw = getelementptr [8 x i8], ptr %i.bf, i64 %.neg13.i.i.3
  %i.bx = getelementptr i8, ptr %i.bw, i64 8
  %i.by = getelementptr i8, ptr %i.bv, i64 8
  %i.bz = icmp ne ptr %i.bp, %i.bx
  %i.ca = icmp ne ptr %i.bn, %i.by
  %or.cond.i = select i1 %i.bz, i1 true, i1 %i.ca, !prof !90
  br i1 %or.cond.i, label %bb.a, label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort19bidirectional_mergeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1h_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB1g_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB1j_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB51_5types3any5PyAnyEB4W_NtB1l_10UndirectedENCINvB35_9is_planarB4l_Es_0NtB35_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit, !prof !90

bb.a:                                             ; preds = %._crit_edge.i
  tail call void @_RNvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #60, !noalias !37194
  unreachable

_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort19bidirectional_mergeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1h_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB1g_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB1j_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB51_5types3any5PyAnyEB4W_NtB1l_10UndirectedENCINvB35_9is_planarB4l_Es_0NtB35_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit: ; preds = %._crit_edge.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal fastcc void @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTjjdENCINvMB8_SB1m_20sort_unstable_by_keyTjjENCINvMs0_NtNtCshfaCWemluAW_4sprs6sparse12triplet_iterINtB2g_10TriMatIterINtNtB8_4iter4IterjEB3f_IB3g_dEE7into_csjE0E0ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 2, 21) %1) unnamed_addr #16 personality ptr @rust_eh_personality {
.lr.ph.preheader:
  %.idx = mul nuw nsw i64 %1, 24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.sroa.0.01 = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort11insert_tailTjjdENCINvMB8_SB18_20sort_unstable_by_keyTjjENCINvMs0_NtNtCshfaCWemluAW_4sprs6sparse12triplet_iterINtB22_10TriMatIterINtNtB8_4iter4IterjEB31_IB32_dEE7into_csjE0E0ECskcxRuJ53GpR_9rustworkx.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort11insert_tailTjjdENCINvMB8_SB18_20sort_unstable_by_keyTjjENCINvMs0_NtNtCshfaCWemluAW_4sprs6sparse12triplet_iterINtB22_10TriMatIterINtNtB8_4iter4IterjEB31_IB32_dEE7into_csjE0E0ECskcxRuJ53GpR_9rustworkx.exit
  %.sroa.0.04 = phi ptr [ %.sroa.0.0, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort11insert_tailTjjdENCINvMB8_SB18_20sort_unstable_by_keyTjjENCINvMs0_NtNtCshfaCWemluAW_4sprs6sparse12triplet_iterINtB22_10TriMatIterINtNtB8_4iter4IterjEB31_IB32_dEE7into_csjE0E0ECskcxRuJ53GpR_9rustworkx.exit ], [ %.sroa.0.01, %.lr.ph.preheader ] ; 4 uses
  %.pn3 = phi ptr [ %.sroa.0.04, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort11insert_tailTjjdENCINvMB8_SB18_20sort_unstable_by_keyTjjENCINvMs0_NtNtCshfaCWemluAW_4sprs6sparse12triplet_iterINtB22_10TriMatIterINtNtB8_4iter4IterjEB31_IB32_dEE7into_csjE0E0ECskcxRuJ53GpR_9rustworkx.exit ], [ %0, %.lr.ph.preheader ] ; 7 uses
  %.val11.i = load i64, ptr %.sroa.0.04, align 8, !noundef !67 ; 5 uses
  %i.b = getelementptr i8, ptr %.pn3, i64 32
  %.val12.i = load i64, ptr %i.b, align 8, !noundef !67 ; 3 uses
  %.val13.i = load i64, ptr %.pn3, align 8, !noundef !67 ; 2 uses
  %i.c = getelementptr i8, ptr %.pn3, i64 8
  %.val14.i = load i64, ptr %i.c, align 8, !noundef !67
  %i.d = icmp eq i64 %.val11.i, %.val13.i
  %i.e = icmp ult i64 %.val11.i, %.val13.i
  %i.f = icmp ult i64 %.val12.i, %.val14.i
  %.sroa.0.0.i.i.i = select i1 %i.d, i1 %i.f, i1 %i.e
  br i1 %.sroa.0.0.i.i.i, label %bb.a, label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort11insert_tailTjjdENCINvMB8_SB18_20sort_unstable_by_keyTjjENCINvMs0_NtNtCshfaCWemluAW_4sprs6sparse12triplet_iterINtB22_10TriMatIterINtNtB8_4iter4IterjEB31_IB32_dEE7into_csjE0E0ECskcxRuJ53GpR_9rustworkx.exit

bb.a:                                             ; preds = %.lr.ph
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn3, i64 40
  %.sroa.59.0.copyload.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.04, ptr noundef nonnull align 8 dereferenceable(24) %.pn3, i64 24, i1 false)
  %i.g = icmp eq ptr %.pn3, %0
  br i1 %i.g, label %._crit_edge4, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i1, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.h = icmp eq ptr %i.i, %0
  br i1 %i.h, label %._crit_edge4, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi ptr [ %i.i, %bb.b ], [ %.pn3, %bb.a ] ; 4 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.0.0.i1, i64 -24 ; 4 uses
  %.val9.i = load i64, ptr %i.i, align 8, !noundef !67 ; 2 uses
  %i.j = getelementptr i8, ptr %.sroa.0.0.i1, i64 -16
  %.val10.i = load i64, ptr %i.j, align 8, !noundef !67
  %i.k = icmp eq i64 %.val11.i, %.val9.i
  %i.l = icmp ult i64 %.val11.i, %.val9.i
  %i.m = icmp ult i64 %.val12.i, %.val10.i
  %.sroa.0.0.i.i15.i = select i1 %i.k, i1 %i.m, i1 %i.l
  br i1 %.sroa.0.0.i.i15.i, label %bb.b, label %._crit_edge4

._crit_edge4:                                     ; preds = %bb.b, %.lr.ph3, %bb.a
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %.sroa.0.0.i1, %.lr.ph3 ] ; 3 uses
  store i64 %.val11.i, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !37203
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 8
  store i64 %.val12.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !37203
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 16
  store i64 %.sroa.59.0.copyload.i, ptr %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !37203
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort11insert_tailTjjdENCINvMB8_SB18_20sort_unstable_by_keyTjjENCINvMs0_NtNtCshfaCWemluAW_4sprs6sparse12triplet_iterINtB22_10TriMatIterINtNtB8_4iter4IterjEB31_IB32_dEE7into_csjE0E0ECskcxRuJ53GpR_9rustworkx.exit

_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort11insert_tailTjjdENCINvMB8_SB18_20sort_unstable_by_keyTjjENCINvMs0_NtNtCshfaCWemluAW_4sprs6sparse12triplet_iterINtB22_10TriMatIterINtNtB8_4iter4IterjEB31_IB32_dEE7into_csjE0E0ECskcxRuJ53GpR_9rustworkx.exit: ; preds = %.lr.ph, %._crit_edge4
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 24 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift4sortNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYBW_NtNtBa_3cmp10PartialOrd2ltEB10_(ptr noalias nofree noundef nonnull %0, i64 noundef range(i64 21, -9223372036854775808) %1, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3, i1 noundef zeroext %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = add nuw i64 %1, 4611686018427387903
  %.sroa.0.0 = udiv i64 %i.c, %1                  ; 2 uses
  %i.d = icmp samesign ult i64 %1, 4097
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i64 @_RNvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = lshr i64 %1, 1
  %i.g = sub nuw nsw i64 %1, %i.f
  %i.h = tail call i64 @llvm.umin.i64(i64 %i.g, i64 64)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0 = phi i64 [ %i.h, %bb.c ], [ %i.e, %bb.b ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not4.i87 = icmp ugt i64 %.sroa.01.0, 2
  %.not4.i92 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.e

bb.e:                                             ; preds = %bb.z, %bb.d
  %.sroa.023.0 = phi i64 [ 1, %bb.d ], [ %.sroa.018.0, %bb.z ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.d ], [ %i.dy, %bb.z ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.d ], [ %i.dw, %bb.z ] ; 3 uses
  %i.i = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB13_NtNtBa_3cmp10PartialOrd2ltEB17_.exit
  %.sroa.021.0 = phi i8 [ %i.bg, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB13_NtNtBa_3cmp10PartialOrd2ltEB17_.exit ], [ 0, %bb.e ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB13_NtNtBa_3cmp10PartialOrd2ltEB17_.exit ], [ 1, %bb.e ] ; 2 uses
  %i.j = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.j, label %.lr.ph60, label %._crit_edge

.lr.ph60:                                         ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.l = sub nuw nsw i64 %1, %.sroa.09.0          ; 13 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i31 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i31, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i.thread90, %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i.thread, %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i, %bb.g
  br i1 %4, label %bb.o, label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.n = icmp samesign ult i64 %i.l, 2
  br i1 %i.n, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEBS_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %.val8.i = load i8, ptr %i.o, align 1, !range !149, !alias.scope !37225, !noalias !37226, !noundef !67 ; 3 uses
  %.val9.i = load i8, ptr %i.m, align 1, !range !149, !alias.scope !37225, !noalias !37226, !noundef !67
  %i.p = icmp samesign ult i8 %.val8.i, %.val9.i  ; 2 uses
  %.not66 = icmp eq i64 %i.l, 2                   ; 2 uses
  br i1 %i.p, label %.preheader, label %.preheader45

.preheader45:                                     ; preds = %bb.j
  br i1 %.not66, label %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.j
  br i1 %.not66, label %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i.thread90, label %.lr.ph54

.lr.ph:                                           ; preds = %.preheader45, %bb.k
  %.val7.i = phi i8 [ %.val6.i, %bb.k ], [ %.val8.i, %.preheader45 ]
  %.sroa.01.0.i.i50 = phi i64 [ %i.s, %bb.k ], [ 2, %.preheader45 ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.01.0.i.i50
  %5 = add nsw i64 %.sroa.01.0.i.i50, -1
  %6 = icmp ult i64 %5, %i.l
  tail call void @llvm.assume(i1 %6)
  %.val6.i = load i8, ptr %i.q, align 1, !range !149, !alias.scope !37225, !noalias !37226, !noundef !67 ; 2 uses
  %i.r = icmp samesign ult i8 %.val6.i, %.val7.i
  br i1 %i.r, label %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.s = add nuw i64 %.sroa.01.0.i.i50, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %i.l
  br i1 %exitcond.not, label %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i, label %.lr.ph

.lr.ph54:                                         ; preds = %.preheader, %bb.l
  %.val5.i = phi i8 [ %.val.i, %bb.l ], [ %.val8.i, %.preheader ]
  %.sroa.01.1.i.i53 = phi i64 [ %i.v, %bb.l ], [ 2, %.preheader ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.01.1.i.i53
  %7 = add nsw i64 %.sroa.01.1.i.i53, -1
  %8 = icmp ult i64 %7, %i.l
  tail call void @llvm.assume(i1 %8)
  %.val.i = load i8, ptr %i.t, align 1, !range !149, !alias.scope !37225, !noalias !37226, !noundef !67 ; 2 uses
  %i.u = icmp samesign ult i8 %.val.i, %.val5.i
  br i1 %i.u, label %bb.l, label %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i

bb.l:                                             ; preds = %.lr.ph54
  %i.v = add nuw i64 %.sroa.01.1.i.i53, 1         ; 2 uses
  %exitcond73.not = icmp eq i64 %i.v, %i.l
  br i1 %exitcond73.not, label %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i, label %.lr.ph54

_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i: ; preds = %bb.k, %.lr.ph, %bb.l, %.lr.ph54
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i53, %.lr.ph54 ], [ %i.l, %bb.l ], [ %.sroa.01.0.i.i50, %.lr.ph ], [ %i.l, %bb.k ] ; 6 uses
  %i.w = icmp samesign ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.w)
  %.not4.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not4.i, label %bb.h, label %bb.m

_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i.thread90: ; preds = %.preheader
  br i1 %.not4.i92, label %bb.h, label %iter.check

_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i.thread: ; preds = %.preheader45
  br i1 %.not4.i87, label %bb.h, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEBS_.exit

bb.m:                                             ; preds = %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i
  br i1 %i.p, label %bb.p, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEBS_.exit

bb.n:                                             ; preds = %bb.h
  %i.x = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0, i64 range(i64 0, -9223372036854775808) %i.l)
  %i.y = shl nuw i64 %i.x, 1
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB13_NtNtBa_3cmp10PartialOrd2ltEB17_.exit

bb.o:                                             ; preds = %bb.h
  %i.z = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %i.l, i64 32) ; 2 uses
  tail call fastcc void @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable9quicksort9quicksortNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB15_NtNtBa_3cmp10PartialOrd2ltEB19_(ptr noalias nofree noundef nonnull %i.m, i64 noundef %i.z, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3, i32 noundef 0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable_or_null(1) null) #62
  %i.aa = shl nuw nsw i64 %i.z, 1
  %i.ab = or disjoint i64 %i.aa, 1
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB13_NtNtBa_3cmp10PartialOrd2ltEB17_.exit

_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEBS_.exit: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4Rule12split_at_mutBy_.exit11.i, %middle.block, %vec.epilog.middle.block, %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i.thread, %bb.i, %bb.p, %bb.m
  %.sroa.0.0.i.i4043 = phi i64 [ %i.l, %bb.i ], [ %.sroa.0.0.i.i, %bb.m ], [ %.sroa.0.0.i.i, %bb.p ], [ 2, %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i.thread ], [ %.sroa.0.0.i.i889599, %middle.block ], [ %.sroa.0.0.i.i889599, %vec.epilog.middle.block ], [ %.sroa.0.0.i.i889599, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4Rule12split_at_mutBy_.exit11.i ]
  %i.ac = shl nuw i64 %.sroa.0.0.i.i4043, 1
  %i.ad = or disjoint i64 %i.ac, 1
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB13_NtNtBa_3cmp10PartialOrd2ltEB17_.exit

bb.p:                                             ; preds = %bb.m
  %i.ae = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37228)
  %.not.i35 = icmp eq i64 %i.ae, 0
  br i1 %.not.i35, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEBS_.exit, label %iter.check

iter.check:                                       ; preds = %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i.thread90, %bb.p
  %i.af = phi i64 [ %i.ae, %bb.p ], [ 1, %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i.thread90 ] ; 8 uses
  %.sroa.0.0.i.i889599 = phi i64 [ %.sroa.0.0.i.i, %bb.p ], [ 2, %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i.thread90 ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.0.0.i.i889599 ; 3 uses
  %min.iters.check = icmp samesign ult i64 %i.af, 4
  br i1 %min.iters.check, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4Rule12split_at_mutBy_.exit11.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check7 = icmp samesign ult i64 %i.af, 16
  br i1 %min.iters.check7, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ah = and i64 %i.af, 12
  %n.vec = and i64 %i.af, 9223372036854775792     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ai = xor i64 %index, -1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 %index ; 2 uses
  %i.ak = getelementptr i8, ptr %i.ag, i64 %i.ai
  %wide.load = load <16 x i8>, ptr %i.aj, align 1, !alias.scope !37227, !noalias !37229
  %i.al = getelementptr i8, ptr %i.ak, i64 -15    ; 2 uses
  %wide.load8 = load <16 x i8>, ptr %i.al, align 1, !alias.scope !37228, !noalias !37230
  %reverse = shufflevector <16 x i8> %wide.load8, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse, ptr %i.aj, align 1, !alias.scope !37227, !noalias !37229
  %reverse9 = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse9, ptr %i.al, align 1, !alias.scope !37228, !noalias !37230
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !37211

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEBS_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ah, 0
  br i1 %min.epilog.iters.check, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4Rule12split_at_mutBy_.exit11.i.preheader, label %vec.epilog.ph, !prof !37231

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec10 = and i64 %i.af, 9223372036854775804   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next16, %vec.epilog.vector.body ] ; 3 uses
  %i.an = xor i64 %index11, -1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.m, i64 %index11 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ag, i64 %i.an
  %wide.load12 = load <4 x i8>, ptr %i.ao, align 1, !alias.scope !37227, !noalias !37229
  %i.aq = getelementptr i8, ptr %i.ap, i64 -3     ; 2 uses
  %wide.load13 = load <4 x i8>, ptr %i.aq, align 1, !alias.scope !37228, !noalias !37230
  %reverse14 = shufflevector <4 x i8> %wide.load13, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %reverse14, ptr %i.ao, align 1, !alias.scope !37227, !noalias !37229
  %reverse15 = shufflevector <4 x i8> %wide.load12, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %reverse15, ptr %i.aq, align 1, !alias.scope !37228, !noalias !37230
  %index.next16 = add nuw i64 %index11, 4         ; 2 uses
  %i.ar = icmp eq i64 %index.next16, %n.vec10
  br i1 %i.ar, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !37212

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n17 = icmp eq i64 %i.af, %n.vec10
  br i1 %cmp.n17, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEBS_.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4Rule12split_at_mutBy_.exit11.i.preheader

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4Rule12split_at_mutBy_.exit11.i.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.016.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec10, %vec.epilog.middle.block ]
  br label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4Rule12split_at_mutBy_.exit11.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4Rule12split_at_mutBy_.exit11.i: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4Rule12split_at_mutBy_.exit11.i.preheader, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4Rule12split_at_mutBy_.exit11.i
  %.sroa.0.016.i = phi i64 [ %i.ax, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4Rule12split_at_mutBy_.exit11.i ], [ %.sroa.0.016.i.ph, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4Rule12split_at_mutBy_.exit11.i.preheader ] ; 3 uses
  %i.as = xor i64 %.sroa.0.016.i, -1
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.0.016.i ; 2 uses
  %i.au = getelementptr i8, ptr %i.ag, i64 %i.as  ; 2 uses
  %i.av = load i8, ptr %i.at, align 1, !range !149, !alias.scope !37227, !noalias !37229, !noundef !67
  %i.aw = load i8, ptr %i.au, align 1, !alias.scope !37228, !noalias !37230
  store i8 %i.aw, ptr %i.at, align 1, !alias.scope !37227, !noalias !37229
  store i8 %i.av, ptr %i.au, align 1, !alias.scope !37228, !noalias !37230
  %i.ax = add nuw nsw i64 %.sroa.0.016.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ax, %i.af
  br i1 %exitcond.not.i, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEBS_.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4Rule12split_at_mutBy_.exit11.i, !llvm.loop !37213

_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB13_NtNtBa_3cmp10PartialOrd2ltEB17_.exit: ; preds = %bb.n, %bb.o, %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEBS_.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ad, %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEBS_.exit ], [ %i.ab, %bb.o ], [ %i.y, %bb.n ] ; 2 uses
  %i.ay = lshr i64 %.sroa.023.0, 1
  %i.az = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw i64 %.sroa.09.0, 1            ; 2 uses
  %i.ba = sub i64 %factor, %i.ay
  %i.bb = add i64 %i.az, %factor
  %i.bc = mul i64 %i.ba, %.sroa.0.0
  %i.bd = mul i64 %i.bb, %.sroa.0.0
  %i.be = xor i64 %i.bd, %i.bc
  %i.bf = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.be, i1 false)
  %i.bg = trunc nuw nsw i64 %i.bf to i8
  br label %bb.f

bb.q:                                             ; preds = %.lr.ph60, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit
  %.sroa.02.159 = phi i64 [ %.sroa.02.0, %.lr.ph60 ], [ %i.bh, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit ] ; 2 uses
  %.sroa.023.158 = phi i64 [ %.sroa.023.0, %.lr.ph60 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit ] ; 4 uses
  %i.bh = add i64 %.sroa.02.159, -1               ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !noundef !67
  %.not28 = icmp ult i8 %i.bj, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit, %bb.q, %bb.f
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.f ], [ %.sroa.023.158, %bb.q ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.f ], [ %.sroa.02.159, %bb.q ], [ 1, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bl, align 1
  br i1 %i.i, label %bb.z, label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bh
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !67 ; 3 uses
  %i.bo = lshr i64 %i.bn, 1                       ; 8 uses
  %i.bp = lshr i64 %.sroa.023.158, 1              ; 6 uses
  %i.bq = add nuw i64 %i.bo, %i.bp                ; 4 uses
  %i.br = sub i64 %.sroa.09.0, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 %i.br ; 6 uses
  %i.bt = icmp samesign ugt i64 %i.bq, %3
  %i.bu = trunc i64 %.sroa.023.158 to i1
  %i.bv = or i64 %i.bn, %.sroa.023.158
  %i.bw = trunc i64 %i.bv to i1
  %or.cond3.i = or i1 %i.bt, %i.bw
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bx = trunc i64 %i.bn to i1
  br i1 %i.bx, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.by = shl nuw i64 %i.bq, 1
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bu, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.bz = or i64 %i.bo, 1
  %i.ca = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.bz, i1 true)
  %i.cb = trunc nuw nsw i64 %i.ca to i32
  %i.cc = shl nuw nsw i32 %i.cb, 1
  %i.cd = xor i32 %i.cc, 126
  tail call fastcc void @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable9quicksort9quicksortNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB15_NtNtBa_3cmp10PartialOrd2ltEB19_(ptr noalias nofree noundef nonnull %i.bs, i64 noundef range(i64 0, -9223372036854775808) %i.bo, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3, i32 noundef %i.cd, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable_or_null(1) null) #62
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bo
  %i.cf = or i64 %i.bp, 1
  %i.cg = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.cf, i1 true)
  %i.ch = trunc nuw nsw i64 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 1
  %i.cj = xor i32 %i.ci, 126
  tail call fastcc void @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable9quicksort9quicksortNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB15_NtNtBa_3cmp10PartialOrd2ltEB19_(ptr noalias nofree noundef nonnull %i.ce, i64 noundef range(i64 0, -9223372036854775808) %i.bp, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3, i32 noundef %i.cj, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable_or_null(1) null) #62
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37233)
  %i.ck = icmp eq i64 %i.bo, 0
  %i.cl = icmp eq i64 %i.bp, 0
  %or.cond.i = or i1 %i.cl, %i.ck
  br i1 %or.cond.i, label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5merge5mergeNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYBX_NtNtBa_3cmp10PartialOrd2ltEB11_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cm = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %i.bo, i64 %i.bp) ; 3 uses
  %i.cn = icmp samesign ult i64 %3, %i.cm
  br i1 %i.cn, label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5merge5mergeNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYBX_NtNtBa_3cmp10PartialOrd2ltEB11_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.y
  %i.co = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bo ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.bo, %i.bp  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.co, ptr %i.bs
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %2, ptr nonnull align 1 %spec.select.i, i64 %i.cm, i1 false), !alias.scope !37234
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 %i.cm ; 3 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.cq = phi ptr [ %i.db, %.preheader.i ], [ %i.cp, %.critedge.i ]
  %i.cr = phi ptr [ %i.cz, %.preheader.i ], [ %i.co, %.critedge.i ]
  %.sroa.0.0.i.i34 = phi ptr [ %i.cu, %.preheader.i ], [ %i.k, %.critedge.i ]
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -1 ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %i.cq, i64 -1 ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %.sroa.0.0.i.i34, i64 -1 ; 2 uses
  %.val.i.i = load i8, ptr %i.ct, align 1, !range !149, !alias.scope !37233, !noalias !37235, !noundef !67 ; 2 uses
  %.val12.i.i = load i8, ptr %i.cs, align 1, !range !149, !alias.scope !37232, !noalias !37236, !noundef !67 ; 2 uses
  %i.cv = icmp samesign ult i8 %.val.i.i, %.val12.i.i ; 2 uses
  %i.cw = tail call i8 @llvm.umax.i8(i8 %.val.i.i, i8 %.val12.i.i)
  store i8 %i.cw, ptr %i.cu, align 1, !alias.scope !37232, !noalias !37236
  %i.cx = xor i1 %i.cv, true
  %i.cy = zext i1 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cy ; 3 uses
  %i.da = zext i1 %i.cv to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.da ; 3 uses
  %i.dc = icmp eq ptr %i.cz, %i.bs
  %i.dd = icmp eq ptr %i.db, %2
  %or.cond.i.i = select i1 %i.dc, i1 true, i1 %i.dd
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1e_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.de = phi ptr [ %i.dn, %.lr.ph.i.i ], [ %i.bs, %.critedge.i ] ; 2 uses
  %.sroa.0.04.i.i = phi ptr [ %i.dm, %.lr.ph.i.i ], [ %i.co, %.critedge.i ] ; 2 uses
  %i.df = phi ptr [ %i.dk, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 2 uses
  %.sroa.0.0.val.i.i = load i8, ptr %.sroa.0.04.i.i, align 1, !range !149, !alias.scope !37232, !noalias !37237, !noundef !67 ; 2 uses
  %.val.i18.i = load i8, ptr %i.df, align 1, !range !149, !alias.scope !37233, !noalias !37238, !noundef !67 ; 2 uses
  %i.dg = icmp samesign ult i8 %.sroa.0.0.val.i.i, %.val.i18.i ; 2 uses
  %i.dh = xor i1 %i.dg, true
  %i.di = tail call i8 @llvm.umin.i8(i8 %.sroa.0.0.val.i.i, i8 %.val.i18.i)
  store i8 %i.di, ptr %i.de, align 1, !alias.scope !37232, !noalias !37237
  %i.dj = zext i1 %i.dh to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dj ; 3 uses
  %i.dl = zext i1 %i.dg to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i, i64 %i.dl ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.de, i64 1 ; 2 uses
  %i.do = icmp ne ptr %i.dk, %i.cp
  %i.dp = icmp ne ptr %i.dm, %i.k
  %or.cond.i19.i = select i1 %i.do, i1 %i.dp, i1 false
  br i1 %or.cond.i19.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1e_.exit.i

_RINvMNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1e_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.cz, %.preheader.i ], [ %i.dn, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.db, %.preheader.i ], [ %i.cp, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.dk, %.lr.ph.i.i ] ; 2 uses
  %i.dq = ptrtoint ptr %.sroa.7.0.i to i64
  %i.dr = ptrtoint ptr %.sroa.0.1.i to i64
  %i.ds = sub nuw i64 %i.dq, %i.dr
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.13.1.i, ptr align 1 %.sroa.0.1.i, i64 %i.ds, i1 false), !alias.scope !37234, !noalias !37239
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5merge5mergeNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYBX_NtNtBa_3cmp10PartialOrd2ltEB11_.exit

_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5merge5mergeNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYBX_NtNtBa_3cmp10PartialOrd2ltEB11_.exit: ; preds = %bb.x, %bb.y, %_RINvMNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1e_.exit.i
  %i.dt = shl nuw i64 %i.bq, 1
  %i.du = or disjoint i64 %i.dt, 1
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit

_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit: ; preds = %bb.t, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5merge5mergeNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYBX_NtNtBa_3cmp10PartialOrd2ltEB11_.exit
  %.sroa.0.0.i = phi i64 [ %i.du, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5merge5mergeNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYBX_NtNtBa_3cmp10PartialOrd2ltEB11_.exit ], [ %i.by, %bb.t ] ; 2 uses
  %i.dv = icmp ugt i64 %i.bh, 1
  br i1 %i.dv, label %bb.q, label %._crit_edge

bb.z:                                             ; preds = %._crit_edge
  %i.dw = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dx = lshr i64 %.sroa.018.0, 1
  %i.dy = add nuw i64 %i.dx, %.sroa.09.0
  br label %bb.e

bb.aa:                                            ; preds = %._crit_edge
  %i.dz = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.dz, 0
  br i1 %.not30, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ea = or i64 %1, 1
  %i.eb = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.ea, i1 true)
  %i.ec = trunc nuw nsw i64 %i.eb to i32
  %i.ed = shl nuw nsw i32 %i.ec, 1
  %i.ee = xor i32 %i.ed, 126
  tail call fastcc void @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable9quicksort9quicksortNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB15_NtNtBa_3cmp10PartialOrd2ltEB19_(ptr noalias nofree noundef nonnull %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3, i32 noundef %i.ee, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable_or_null(1) null) #62
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift4sortTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBX_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSBW_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4E_5types3any5PyAnyEB4z_NtB11_10UndirectedENCINvB2J_9is_planarB3Z_Es_0NtB2J_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 21, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = add nuw nsw i64 %1, 4611686018427387903
  %.sroa.0.0 = udiv i64 %i.c, %1                  ; 2 uses
  %i.d = icmp samesign ult i64 %1, 4097
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i64 @_RNvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = lshr i64 %1, 1
  %i.g = sub nuw nsw i64 %1, %i.f
  %i.h = tail call i64 @llvm.umin.i64(i64 %i.g, i64 64)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0 = phi i64 [ %i.h, %bb.c ], [ %i.e, %bb.b ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not4.i259 = icmp ugt i64 %.sroa.01.0, 2
  %.not4.i264 = icmp ugt i64 %.sroa.01.0, 2
  %scevgep = getelementptr i8, ptr %0, i64 -8
  br label %bb.e

bb.e:                                             ; preds = %bb.ap, %bb.d
  %.sroa.023.0 = phi i64 [ 1, %bb.d ], [ %.sroa.018.0, %bb.ap ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.d ], [ %i.kn, %bb.ap ] ; 8 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.d ], [ %i.kl, %bb.ap ] ; 3 uses
  %i.i = icmp samesign ult i64 %.sroa.09.0, %1    ; 2 uses
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB14_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB13_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB16_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4O_5types3any5PyAnyEB4J_NtB18_10UndirectedENCINvB2S_9is_planarB48_Es_0NtB2S_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit
  %.sroa.021.0 = phi i8 [ %i.by, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB14_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB13_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB16_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4O_5types3any5PyAnyEB4J_NtB18_10UndirectedENCINvB2S_9is_planarB48_Es_0NtB2S_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit ], [ 0, %bb.e ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB14_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB13_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB16_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4O_5types3any5PyAnyEB4J_NtB18_10UndirectedENCINvB2S_9is_planarB48_Es_0NtB2S_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit ], [ 1, %bb.e ] ; 2 uses
  %i.j = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.j, label %.lr.ph181, label %._crit_edge

.lr.ph181:                                        ; preds = %bb.f
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.l = sub nuw nsw i64 %1, %.sroa.09.0          ; 13 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37317)
  %.not.i31 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i31, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread262, %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread, %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i, %bb.g
  br i1 %4, label %bb.o, label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.n = icmp samesign ult i64 %i.l, 2
  br i1 %i.n, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val14.i = load ptr, ptr %5, align 8, !alias.scope !37317, !noalias !37318, !nonnull !67, !align !98, !noundef !67 ; 3 uses
  %.val15.i = load i32, ptr %i.o, align 4, !alias.scope !37316, !noalias !37319 ; 3 uses
  %i.p = getelementptr i8, ptr %i.m, i64 12
  %.val16.i = load i32, ptr %i.p, align 4, !alias.scope !37316, !noalias !37319 ; 3 uses
  %.val17.i = load i32, ptr %i.m, align 4, !alias.scope !37316, !noalias !37319
  %i.q = getelementptr i8, ptr %i.m, i64 4
  %.val18.i = load i32, ptr %i.q, align 4, !alias.scope !37316, !noalias !37319
  %i.r = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs87CvPiUlf0m_5alloc5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBz_E11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtBB_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3E_5types3any5PyAnyEB3z_NtBD_10UndirectedENCINvB1J_9is_planarB2Z_Es_0NtB1J_9NonPlanarEs1_0E0CskcxRuJ53GpR_9rustworkx(ptr nonnull %.val14.i, i32 %.val15.i, i32 %.val16.i, i32 %.val17.i, i32 %.val18.i) #64, !noalias !37320, !inline_history !37244 ; 2 uses
  %.not187 = icmp eq i64 %i.l, 2                  ; 2 uses
  br i1 %i.r, label %.preheader80, label %.preheader81

.preheader81:                                     ; preds = %bb.j
  br i1 %.not187, label %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread, label %.lr.ph

.preheader80:                                     ; preds = %bb.j
  br i1 %.not187, label %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread262, label %.lr.ph136

.lr.ph:                                           ; preds = %.preheader81, %bb.k
  %.val13.i = phi i32 [ %.val11.i, %bb.k ], [ %.val16.i, %.preheader81 ]
  %.val12.i = phi i32 [ %.val10.i, %bb.k ], [ %.val15.i, %.preheader81 ]
  %.sroa.01.0.i.i132 = phi i64 [ %i.v, %bb.k ], [ 2, %.preheader81 ] ; 4 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.01.0.i.i132 ; 2 uses
  %6 = add nsw i64 %.sroa.01.0.i.i132, -1
  %7 = icmp ult i64 %6, %i.l
  tail call void @llvm.assume(i1 %7)
  %.val10.i = load i32, ptr %i.s, align 4, !alias.scope !37316, !noalias !37319 ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 4
  %.val11.i = load i32, ptr %i.t, align 4, !alias.scope !37316, !noalias !37319 ; 2 uses
  %i.u = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs87CvPiUlf0m_5alloc5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBz_E11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtBB_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3E_5types3any5PyAnyEB3z_NtBD_10UndirectedENCINvB1J_9is_planarB2Z_Es_0NtB1J_9NonPlanarEs1_0E0CskcxRuJ53GpR_9rustworkx(ptr nonnull %.val14.i, i32 %.val10.i, i32 %.val11.i, i32 %.val12.i, i32 %.val13.i) #64, !noalias !37320, !inline_history !37244
  br i1 %i.u, label %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.v = add nuw i64 %.sroa.01.0.i.i132, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %i.l
  br i1 %exitcond.not, label %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i, label %.lr.ph

.lr.ph136:                                        ; preds = %.preheader80, %bb.l
  %.val8.i = phi i32 [ %.val6.i, %bb.l ], [ %.val16.i, %.preheader80 ]
  %.val7.i = phi i32 [ %.val5.i, %bb.l ], [ %.val15.i, %.preheader80 ]
  %.sroa.01.1.i.i135 = phi i64 [ %i.z, %bb.l ], [ 2, %.preheader80 ] ; 4 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.01.1.i.i135 ; 2 uses
  %8 = add nsw i64 %.sroa.01.1.i.i135, -1
  %9 = icmp ult i64 %8, %i.l
  tail call void @llvm.assume(i1 %9)
  %.val5.i = load i32, ptr %i.w, align 4, !alias.scope !37316, !noalias !37319 ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 4
  %.val6.i = load i32, ptr %i.x, align 4, !alias.scope !37316, !noalias !37319 ; 2 uses
  %i.y = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs87CvPiUlf0m_5alloc5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBz_E11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtBB_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3E_5types3any5PyAnyEB3z_NtBD_10UndirectedENCINvB1J_9is_planarB2Z_Es_0NtB1J_9NonPlanarEs1_0E0CskcxRuJ53GpR_9rustworkx(ptr nonnull %.val14.i, i32 %.val5.i, i32 %.val6.i, i32 %.val7.i, i32 %.val8.i) #64, !noalias !37320, !inline_history !37244
  br i1 %i.y, label %bb.l, label %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i

bb.l:                                             ; preds = %.lr.ph136
  %i.z = add nuw i64 %.sroa.01.1.i.i135, 1        ; 2 uses
  %exitcond228.not = icmp eq i64 %i.z, %i.l
  br i1 %exitcond228.not, label %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i, label %.lr.ph136

_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.k, %.lr.ph, %bb.l, %.lr.ph136
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i135, %.lr.ph136 ], [ %i.l, %bb.l ], [ %.sroa.01.0.i.i132, %.lr.ph ], [ %i.l, %bb.k ] ; 6 uses
  %i.aa = icmp samesign ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.aa)
  %.not4.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not4.i, label %bb.h, label %bb.m

_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread262: ; preds = %.preheader80
  br i1 %.not4.i264, label %bb.h, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i

_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread: ; preds = %.preheader81
  br i1 %.not4.i259, label %bb.h, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit

bb.m:                                             ; preds = %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i
  br i1 %i.r, label %bb.p, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit

bb.n:                                             ; preds = %bb.h
  %i.ab = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0, i64 range(i64 0, 1152921504606846976) %i.l)
  %i.ac = shl nuw nsw i64 %i.ab, 1
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB14_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB13_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB16_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4O_5types3any5PyAnyEB4J_NtB18_10UndirectedENCINvB2S_9is_planarB48_Es_0NtB2S_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit

bb.o:                                             ; preds = %bb.h
  %i.ad = tail call i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.l, i64 32) ; 2 uses
  tail call fastcc void @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable9quicksort9quicksortTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB16_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB15_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB18_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4Q_5types3any5PyAnyEB4L_NtB1a_10UndirectedENCINvB2U_9is_planarB4a_Es_0NtB2U_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 4 %i.m, i64 noundef %i.ad, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #62, !inline_history !37244
  %i.ae = shl nuw nsw i64 %i.ad, 1
  %i.af = or disjoint i64 %i.ae, 1
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB14_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB13_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB16_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4O_5types3any5PyAnyEB4J_NtB18_10UndirectedENCINvB2S_9is_planarB48_Es_0NtB2S_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit

_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.prol.loopexit, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i, %middle.block, %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread, %bb.i, %bb.p, %bb.m
  %.sroa.0.0.i.i7376 = phi i64 [ %i.l, %bb.i ], [ %.sroa.0.0.i.i, %bb.m ], [ %.sroa.0.0.i.i, %bb.p ], [ 2, %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread ], [ %.sroa.0.0.i.i260267271, %middle.block ], [ %.sroa.0.0.i.i260267271, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i ], [ %.sroa.0.0.i.i260267271, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.prol.loopexit ]
  %i.ag = shl nuw nsw i64 %.sroa.0.0.i.i7376, 1
  %i.ah = or disjoint i64 %i.ag, 1
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB14_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB13_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB16_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4O_5types3any5PyAnyEB4J_NtB18_10UndirectedENCINvB2S_9is_planarB48_Es_0NtB2S_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit

bb.p:                                             ; preds = %bb.m
  %i.ai = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37321)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37322)
  %.not.i36 = icmp eq i64 %i.ai, 0
  br i1 %.not.i36, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i: ; preds = %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread262, %bb.p
  %i.aj = phi i64 [ %i.ai, %bb.p ], [ 1, %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread262 ] ; 7 uses
  %.sroa.0.0.i.i260267271 = phi i64 [ %.sroa.0.0.i.i, %bb.p ], [ 2, %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread262 ] ; 5 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.0.0.i.i260267271 ; 4 uses
  %min.iters.check = icmp samesign ult i64 %i.aj, 18
  br i1 %min.iters.check, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i
  %i.al = add nsw i64 %i.aj, -1                   ; 2 uses
  %i.am = add i64 %.sroa.0.0.i.i260267271, %.sroa.09.0
  %i.an = shl i64 %i.am, 3
  %scevgep352 = getelementptr i8, ptr %scevgep, i64 %i.an ; 2 uses
  %mul.result.neg = mul i64 %i.al, -8
  %mul.overflow = icmp ugt i64 %i.al, 2305843009213693951
  %i.ao = getelementptr i8, ptr %scevgep352, i64 %mul.result.neg
  %i.ap = icmp ugt ptr %i.ao, %scevgep352
  %i.aq = or i1 %i.ap, %mul.overflow
  br i1 %i.aq, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.aj, 4611686018427387902     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ar = xor i64 %index, -1
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.at = getelementptr [8 x i8], ptr %i.ak, i64 %i.ar ; 2 uses
  %wide.vec = load <4 x i32>, ptr %i.as, align 4, !alias.scope !37321, !noalias !37323
  %i.au = getelementptr i8, ptr %i.at, i64 -8
  %wide.load = load <2 x i64>, ptr %i.au, align 4, !alias.scope !37322, !noalias !37324
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse, ptr %i.as, align 4, !alias.scope !37321, !noalias !37323
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 -8
  %interleaved.vec = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec, ptr %i.av, align 4, !alias.scope !37322, !noalias !37324
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !37248

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader

_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader: ; preds = %vector.scevcheck, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i, %middle.block
  %.sroa.0.016.i.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.0.016.i.ph, 1
  %xtraiter = and i64 %i.aj, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.prol.loopexit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.prol

_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.prol: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader
  %i.ax = xor i64 %.sroa.0.016.i.ph, -1
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.0.016.i.ph ; 2 uses
  %i.az = getelementptr [8 x i8], ptr %i.ak, i64 %i.ax ; 2 uses
  %i.ba = load i64, ptr %i.az, align 4, !alias.scope !37322, !noalias !37324
  %i.bb = load <2 x i32>, ptr %i.ay, align 4, !alias.scope !37321, !noalias !37323
  store i64 %i.ba, ptr %i.ay, align 4, !alias.scope !37321, !noalias !37323
  store <2 x i32> %i.bb, ptr %i.az, align 4, !alias.scope !37322, !noalias !37324
  %i.bc = or disjoint i64 %.sroa.0.016.i.ph, 1
  br label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.prol.loopexit

_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.prol.loopexit: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.prol, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader
  %.sroa.0.016.i.unr = phi i64 [ %.sroa.0.016.i.ph, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader ], [ %i.bc, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.prol ]
  %i.bd = icmp eq i64 %i.aj, %.neg
  br i1 %i.bd, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.prol.loopexit, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i
  %.sroa.0.016.i = phi i64 [ %i.bp, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i ], [ %.sroa.0.016.i.unr, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.prol.loopexit ] ; 5 uses
  %i.be = xor i64 %.sroa.0.016.i, -1
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.0.016.i ; 2 uses
  %i.bg = getelementptr [8 x i8], ptr %i.ak, i64 %i.be ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 4, !alias.scope !37322, !noalias !37324
  %i.bi = load <2 x i32>, ptr %i.bf, align 4, !alias.scope !37321, !noalias !37323
  store i64 %i.bh, ptr %i.bf, align 4, !alias.scope !37321, !noalias !37323
  store <2 x i32> %i.bi, ptr %i.bg, align 4, !alias.scope !37322, !noalias !37324
  %i.bj = sub i64 -2, %.sroa.0.016.i
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.0.016.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.bm = getelementptr [8 x i8], ptr %i.ak, i64 %i.bj ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 4, !alias.scope !37322, !noalias !37324
  %i.bo = load <2 x i32>, ptr %i.bl, align 4, !alias.scope !37321, !noalias !37323
  store i64 %i.bn, ptr %i.bl, align 4, !alias.scope !37321, !noalias !37323
  store <2 x i32> %i.bo, ptr %i.bm, align 4, !alias.scope !37322, !noalias !37324
  %i.bp = add nuw nsw i64 %.sroa.0.016.i, 2       ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.bp, %i.aj
  br i1 %exitcond.not.i.1, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i, !llvm.loop !37249

_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB14_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB13_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB16_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4O_5types3any5PyAnyEB4J_NtB18_10UndirectedENCINvB2S_9is_planarB48_Es_0NtB2S_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.n, %bb.o, %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ah, %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit ], [ %i.af, %bb.o ], [ %i.ac, %bb.n ] ; 2 uses
  %i.bq = lshr i64 %.sroa.023.0, 1
  %i.br = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bs = sub nsw i64 %factor, %i.bq
  %i.bt = add nuw nsw i64 %i.br, %factor
  %i.bu = mul i64 %i.bs, %.sroa.0.0
  %i.bv = mul i64 %i.bt, %.sroa.0.0
  %i.bw = xor i64 %i.bv, %i.bu
  %i.bx = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bw, i1 false)
  %i.by = trunc nuw nsw i64 %i.bx to i8
  br label %bb.f

bb.q:                                             ; preds = %.lr.ph181, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB17_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB16_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB19_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4R_5types3any5PyAnyEB4M_NtB1b_10UndirectedENCINvB2V_9is_planarB4b_Es_0NtB2V_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit
  %.sroa.02.1180 = phi i64 [ %.sroa.02.0, %.lr.ph181 ], [ %i.bz, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB17_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB16_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB19_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4R_5types3any5PyAnyEB4M_NtB1b_10UndirectedENCINvB2V_9is_planarB4b_Es_0NtB2V_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit ] ; 2 uses
  %.sroa.023.1179 = phi i64 [ %.sroa.023.0, %.lr.ph181 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB17_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB16_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB19_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4R_5types3any5PyAnyEB4M_NtB1b_10UndirectedENCINvB2V_9is_planarB4b_Es_0NtB2V_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit ] ; 4 uses
  %i.bz = add i64 %.sroa.02.1180, -1              ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !noundef !67
  %.not28 = icmp ult i8 %i.cb, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB17_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB16_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB19_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4R_5types3any5PyAnyEB4M_NtB1b_10UndirectedENCINvB2V_9is_planarB4b_Es_0NtB2V_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit, %bb.q, %bb.f
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.f ], [ %.sroa.023.1179, %bb.q ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB17_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB16_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB19_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4R_5types3any5PyAnyEB4M_NtB1b_10UndirectedENCINvB2V_9is_planarB4b_Es_0NtB2V_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.f ], [ %.sroa.02.1180, %bb.q ], [ 1, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB17_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB16_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB19_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4R_5types3any5PyAnyEB4M_NtB1b_10UndirectedENCINvB2V_9is_planarB4b_Es_0NtB2V_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit ] ; 3 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.cd, align 1
  br i1 %i.i, label %bb.ap, label %bb.aq

bb.r:                                             ; preds = %bb.q
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bz
  %i.cf = load i64, ptr %i.ce, align 8, !noundef !67 ; 3 uses
  %i.cg = lshr i64 %i.cf, 1                       ; 8 uses
  %i.ch = lshr i64 %.sroa.023.1179, 1             ; 6 uses
  %i.ci = add nuw i64 %i.cg, %i.ch                ; 4 uses
  %i.cj = sub i64 %.sroa.09.0, %i.ci
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cj ; 7 uses
  %i.cl = icmp samesign ugt i64 %i.ci, %3
  %i.cm = trunc i64 %.sroa.023.1179 to i1
  %i.cn = or i64 %i.cf, %.sroa.023.1179
  %i.co = trunc i64 %i.cn to i1
  %or.cond3.i = or i1 %i.cl, %i.co
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cp = trunc i64 %i.cf to i1
  br i1 %i.cp, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cq = shl nuw nsw i64 %i.ci, 1
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB17_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB16_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB19_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4R_5types3any5PyAnyEB4M_NtB1b_10UndirectedENCINvB2V_9is_planarB4b_Es_0NtB2V_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cm, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.cr = or i64 %i.cg, 1
end_hunk_12
begin_hunk_13_@_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift4sortTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBX_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSBW_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4E_5types3any5PyAnyEB4z_NtB11_10UndirectedENCINvB2J_9is_planarB3Z_Es_0NtB2J_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx:bb.a
  %i.im = xor i64 %.val.i.i.i, %.val7.i.i
  %i.in = zext i64 %i.im to i128
  %i.io = mul nuw i128 %i.dn, %i.in               ; 2 uses
  %i.ip = lshr i128 %i.io, 64
  %i.iq = xor i128 %i.ip, %i.io
  %i.ir = trunc i128 %i.iq to i64                 ; 2 uses
  %i.is = lshr i64 %i.ir, 57
  %i.it = trunc nuw nsw i64 %i.is to i8
  %i.iu = insertelement <16 x i8> poison, i8 %i.it, i64 0
  %i.iv = shufflevector <16 x i8> %i.iu, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.al

bb.al:                                            ; preds = %bb.an, %bb.ak
  %.sroa.011.0.i.i.i.i7.i = phi i64 [ 0, %bb.ak ], [ %i.jo, %bb.an ]
  %.pn.i.i.i8.i = phi i64 [ %i.ir, %bb.ak ], [ %i.jp, %bb.an ]
  %.sroa.01.0.i.i.i.i9.i = and i64 %.pn.i.i.i8.i, %i.dq ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.sroa.01.0.i.i.i.i9.i
  %.sroa.0.0.copyload.i24.i.i.i10.i = load <16 x i8>, ptr %i.iw, align 1, !noalias !37353 ; 2 uses
  %i.ix = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i10.i, %i.iv
  %i.iy = bitcast <16 x i1> %i.ix to i16          ; 2 uses
  %.not.i.not30.i.i.i11.i = icmp eq i16 %i.iy, 0
  br i1 %.not.i.not30.i.i.i11.i, label %._crit_edge.i.i.i18.i, label %.lr.ph.i.i.i12.i

.lr.ph.i.i.i12.i:                                 ; preds = %bb.al, %bb.am
  %.sroa.05.0.i31.i.i.i13.i = phi i16 [ %i.jn, %bb.am ], [ %i.iy, %bb.al ] ; 3 uses
  %i.iz = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i13.i, i1 true)
  %i.ja = zext nneg i16 %i.iz to i64
  %i.jb = add i64 %.sroa.01.0.i.i.i.i9.i, %i.ja
  %i.jc = and i64 %i.jb, %i.dq
  %i.jd = sub nsw i64 0, %i.jc
  %i.je = getelementptr inbounds [16 x i8], ptr %i.dr, i64 %i.jd ; 3 uses
  %i.jf = getelementptr inbounds i8, ptr %i.je, i64 -16
  %.val2.i.i.i.i14.i = load i32, ptr %i.jf, align 4, !noalias !37354, !noundef !67
  %i.jg = getelementptr i8, ptr %i.je, i64 -12
  %.val3.i.i.i.i15.i = load i32, ptr %i.jg, align 4, !noalias !37354
  %i.jh = icmp eq i32 %.val2.i.i.i.i14.i, %i.hd
  %i.ji = icmp eq i32 %.val3.i.i.i.i15.i, %i.hf
  %spec.select.i.i.i.i.i.i.i16.i = select i1 %i.jh, i1 %i.ji, i1 false
  br i1 %spec.select.i.i.i.i.i.i.i16.i, label %.noexc20.i, label %bb.am, !prof !77

._crit_edge.i.i.i18.i:                            ; preds = %bb.am, %bb.al
  %i.jj = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i10.i, splat (i8 -1)
  %i.jk = bitcast <16 x i1> %i.jj to i16
  %i.jl = icmp eq i16 %i.jk, 0
  br i1 %i.jl, label %bb.an, label %select.unfold.i19.i, !prof !71

bb.am:                                            ; preds = %.lr.ph.i.i.i12.i
  %i.jm = add i16 %.sroa.05.0.i31.i.i.i13.i, -1
  %i.jn = and i16 %i.jm, %.sroa.05.0.i31.i.i.i13.i ; 2 uses
  %.not.i.not.i.i.i17.i = icmp eq i16 %i.jn, 0
  br i1 %.not.i.not.i.i.i17.i, label %._crit_edge.i.i.i18.i, label %.lr.ph.i.i.i12.i

bb.an:                                            ; preds = %._crit_edge.i.i.i18.i
  %i.jo = add i64 %.sroa.011.0.i.i.i.i7.i, 16     ; 2 uses
  %i.jp = add i64 %.sroa.01.0.i.i.i.i9.i, %i.jo
  br label %bb.al

select.unfold.i19.i:                              ; preds = %._crit_edge.i.i.i18.i
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1259) #60
          to label %.noexc37 unwind label %.loopexit.split-lp.i

.noexc37:                                         ; preds = %select.unfold.i19.i
  unreachable

.noexc20.i:                                       ; preds = %.lr.ph.i.i.i12.i
  %i.jq = getelementptr inbounds i8, ptr %i.je, i64 -8
  %i.jr = load i64, ptr %i.jq, align 8, !noalias !37327, !noundef !67
  %i.js = icmp ult i64 %i.il, %i.jr               ; 3 uses
  %i.jt = xor i1 %i.js, true
  %.sroa.05.0.i.i = select i1 %i.js, ptr %.sroa.0.02.i.i, ptr %.sroa.0.0.i34
  %i.ju = load i64, ptr %.sroa.05.0.i.i, align 4, !alias.scope !37327, !noalias !37355
  store i64 %i.ju, ptr %.sroa.13.1.i, align 4, !alias.scope !37325, !noalias !37347
  %i.jv = zext i1 %i.jt to i64
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i34, i64 %i.jv ; 3 uses
  %i.jx = zext i1 %i.js to i64
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.02.i.i, i64 %i.jx ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 8 ; 2 uses
  %i.ka = icmp ne ptr %i.jw, %i.di
  %i.kb = icmp ne ptr %i.jy, %i.k
  %or.cond.i19.i = select i1 %i.ka, i1 %i.kb, i1 false
  br i1 %or.cond.i19.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1b_EE10merge_downNCINvMNtCs87CvPiUlf0m_5alloc5sliceSB1a_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB1d_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB58_5types3any5PyAnyEB53_NtB1f_10UndirectedENCINvB3c_9is_planarB4s_Es_0NtB3c_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i

_RINvMNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1b_EE10merge_downNCINvMNtCs87CvPiUlf0m_5alloc5sliceSB1a_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB1d_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB58_5types3any5PyAnyEB53_NtB1f_10UndirectedENCINvB3c_9is_planarB4s_Es_0NtB3c_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %.noexc20.i, %.noexc.i
  %.sroa.13.4.i = phi ptr [ %i.gv, %.noexc.i ], [ %i.jz, %.noexc20.i ]
  %.sroa.7.2.i = phi ptr [ %i.gx, %.noexc.i ], [ %i.di, %.noexc20.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc.i ], [ %i.jw, %.noexc20.i ] ; 2 uses
  %i.kc = ptrtoint ptr %.sroa.7.2.i to i64
  %i.kd = ptrtoint ptr %.sroa.0.3.i to i64
  %i.ke = sub nuw i64 %i.kc, %i.kd
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.13.4.i, ptr align 4 %.sroa.0.3.i, i64 %i.ke, i1 false), !alias.scope !37327, !noalias !37356
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5merge5mergeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBY_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSBX_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB10_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4G_5types3any5PyAnyEB4B_NtB12_10UndirectedENCINvB2K_9is_planarB40_Es_0NtB2K_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit

.loopexit.i:                                      ; preds = %select.unfold.i19.i65, %select.unfold.i.i52
  %.sroa.13.0.i110 = phi ptr [ %.sroa.13.0.i, %select.unfold.i19.i65 ], [ %.sroa.13.0.i111, %select.unfold.i.i52 ]
  %.sroa.7.0.i105 = phi ptr [ %.sroa.7.0.i, %select.unfold.i19.i65 ], [ %.sroa.7.0.i106, %select.unfold.i.i52 ]
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp.i:                             ; preds = %select.unfold.i19.i, %select.unfold.i.i
  %.sroa.13.1.i94 = phi ptr [ %.sroa.13.1.i, %select.unfold.i19.i ], [ %.sroa.13.1.i95, %select.unfold.i.i ]
  %.sroa.0.0.i3489 = phi ptr [ %.sroa.0.0.i34, %select.unfold.i19.i ], [ %.sroa.0.0.i3490, %select.unfold.i.i ]
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i110, %.loopexit.i ], [ %.sroa.13.1.i94, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i105, %.loopexit.i ], [ %i.di, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i3489, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.kf = ptrtoint ptr %.sroa.7.1.i to i64
  %i.kg = ptrtoint ptr %.sroa.0.2.i to i64
  %i.kh = sub nuw i64 %i.kf, %i.kg
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.sroa.13.3.i, ptr nonnull align 4 %.sroa.0.2.i, i64 %i.kh, i1 false), !alias.scope !37327, !noalias !37357
  resume { ptr, i32 } %lpad.phi.i

_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5merge5mergeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBY_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSBX_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB10_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4G_5types3any5PyAnyEB4B_NtB12_10UndirectedENCINvB2K_9is_planarB40_Es_0NtB2K_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.x, %bb.y, %_RINvMNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1b_EE10merge_downNCINvMNtCs87CvPiUlf0m_5alloc5sliceSB1a_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB1d_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB58_5types3any5PyAnyEB53_NtB1f_10UndirectedENCINvB3c_9is_planarB4s_Es_0NtB3c_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i
  %i.ki = shl nuw nsw i64 %i.ci, 1
  %i.kj = or disjoint i64 %i.ki, 1
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB17_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB16_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB19_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4R_5types3any5PyAnyEB4M_NtB1b_10UndirectedENCINvB2V_9is_planarB4b_Es_0NtB2V_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit

_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB17_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB16_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB19_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4R_5types3any5PyAnyEB4M_NtB1b_10UndirectedENCINvB2V_9is_planarB4b_Es_0NtB2V_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.t, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5merge5mergeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBY_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSBX_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB10_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4G_5types3any5PyAnyEB4B_NtB12_10UndirectedENCINvB2K_9is_planarB40_Es_0NtB2K_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit
  %.sroa.0.0.i = phi i64 [ %i.kj, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5merge5mergeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBY_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSBX_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB10_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4G_5types3any5PyAnyEB4B_NtB12_10UndirectedENCINvB2K_9is_planarB40_Es_0NtB2K_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit ], [ %i.cq, %bb.t ] ; 2 uses
  %i.kk = icmp ugt i64 %i.bz, 1
  br i1 %i.kk, label %bb.q, label %._crit_edge

bb.ap:                                            ; preds = %._crit_edge
  %i.kl = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.km = lshr i64 %.sroa.018.0, 1
  %i.kn = add nuw nsw i64 %i.km, %.sroa.09.0
  br label %bb.e

bb.aq:                                            ; preds = %._crit_edge
  %i.ko = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.ko, 0
  br i1 %.not30, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.kp = or i64 %1, 1
  %i.kq = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.kp, i1 true)
  %i.kr = trunc nuw nsw i64 %i.kq to i32
  %i.ks = shl nuw nsw i32 %i.kr, 1
  %i.kt = xor i32 %i.ks, 126
  tail call fastcc void @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable9quicksort9quicksortTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB16_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB15_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB18_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4Q_5types3any5PyAnyEB4L_NtB1a_10UndirectedENCINvB2U_9is_planarB4a_Es_0NtB2U_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.kt, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #62, !inline_history !37250
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift4sortTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBX_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSBW_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4E_5types3any5PyAnyEB4z_NtB11_10UndirectedENCINvB2J_9is_planarB3Z_Es_0NtB2J_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 21, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = add nuw nsw i64 %1, 4611686018427387903
  %.sroa.0.0 = udiv i64 %i.c, %1                  ; 2 uses
  %i.d = icmp samesign ult i64 %1, 4097
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i64 @_RNvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = lshr i64 %1, 1
  %i.g = sub nuw nsw i64 %1, %i.f
  %i.h = tail call i64 @llvm.umin.i64(i64 %i.g, i64 64)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0 = phi i64 [ %i.h, %bb.c ], [ %i.e, %bb.b ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not4.i259 = icmp ugt i64 %.sroa.01.0, 2
  %.not4.i264 = icmp ugt i64 %.sroa.01.0, 2
  %scevgep = getelementptr i8, ptr %0, i64 -8
  br label %bb.e

bb.e:                                             ; preds = %bb.ap, %bb.d
  %.sroa.023.0 = phi i64 [ 1, %bb.d ], [ %.sroa.018.0, %bb.ap ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.d ], [ %i.kn, %bb.ap ] ; 8 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.d ], [ %i.kl, %bb.ap ] ; 3 uses
  %i.i = icmp samesign ult i64 %.sroa.09.0, %1    ; 2 uses
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB14_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB13_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB16_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4O_5types3any5PyAnyEB4J_NtB18_10UndirectedENCINvB2S_9is_planarB48_Es_0NtB2S_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit
  %.sroa.021.0 = phi i8 [ %i.by, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB14_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB13_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB16_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4O_5types3any5PyAnyEB4J_NtB18_10UndirectedENCINvB2S_9is_planarB48_Es_0NtB2S_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit ], [ 0, %bb.e ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB14_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB13_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB16_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4O_5types3any5PyAnyEB4J_NtB18_10UndirectedENCINvB2S_9is_planarB48_Es_0NtB2S_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit ], [ 1, %bb.e ] ; 2 uses
  %i.j = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.j, label %.lr.ph181, label %._crit_edge

.lr.ph181:                                        ; preds = %bb.f
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.l = sub nuw nsw i64 %1, %.sroa.09.0          ; 13 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37434)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37435)
  %.not.i31 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i31, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread262, %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread, %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i, %bb.g
  br i1 %4, label %bb.o, label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.n = icmp samesign ult i64 %i.l, 2
  br i1 %i.n, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val14.i = load ptr, ptr %5, align 8, !alias.scope !37435, !noalias !37436, !nonnull !67, !align !98, !noundef !67 ; 3 uses
  %.val15.i = load i32, ptr %i.o, align 4, !alias.scope !37434, !noalias !37437 ; 3 uses
  %i.p = getelementptr i8, ptr %i.m, i64 12
  %.val16.i = load i32, ptr %i.p, align 4, !alias.scope !37434, !noalias !37437 ; 3 uses
  %.val17.i = load i32, ptr %i.m, align 4, !alias.scope !37434, !noalias !37437
  %i.q = getelementptr i8, ptr %i.m, i64 4
  %.val18.i = load i32, ptr %i.q, align 4, !alias.scope !37434, !noalias !37437
  %i.r = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs87CvPiUlf0m_5alloc5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBz_E11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtBB_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3E_5types3any5PyAnyEB3z_NtBD_10UndirectedENCINvB1J_9is_planarB2Z_Es_0NtB1J_9NonPlanarEs_0E0CskcxRuJ53GpR_9rustworkx(ptr nonnull %.val14.i, i32 %.val15.i, i32 %.val16.i, i32 %.val17.i, i32 %.val18.i) #64, !noalias !37438, !inline_history !37362 ; 2 uses
  %.not187 = icmp eq i64 %i.l, 2                  ; 2 uses
  br i1 %i.r, label %.preheader80, label %.preheader81

.preheader81:                                     ; preds = %bb.j
  br i1 %.not187, label %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread, label %.lr.ph

.preheader80:                                     ; preds = %bb.j
  br i1 %.not187, label %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread262, label %.lr.ph136

.lr.ph:                                           ; preds = %.preheader81, %bb.k
  %.val13.i = phi i32 [ %.val11.i, %bb.k ], [ %.val16.i, %.preheader81 ]
  %.val12.i = phi i32 [ %.val10.i, %bb.k ], [ %.val15.i, %.preheader81 ]
  %.sroa.01.0.i.i132 = phi i64 [ %i.v, %bb.k ], [ 2, %.preheader81 ] ; 4 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.01.0.i.i132 ; 2 uses
  %6 = add nsw i64 %.sroa.01.0.i.i132, -1
  %7 = icmp ult i64 %6, %i.l
  tail call void @llvm.assume(i1 %7)
  %.val10.i = load i32, ptr %i.s, align 4, !alias.scope !37434, !noalias !37437 ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 4
  %.val11.i = load i32, ptr %i.t, align 4, !alias.scope !37434, !noalias !37437 ; 2 uses
  %i.u = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs87CvPiUlf0m_5alloc5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBz_E11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtBB_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3E_5types3any5PyAnyEB3z_NtBD_10UndirectedENCINvB1J_9is_planarB2Z_Es_0NtB1J_9NonPlanarEs_0E0CskcxRuJ53GpR_9rustworkx(ptr nonnull %.val14.i, i32 %.val10.i, i32 %.val11.i, i32 %.val12.i, i32 %.val13.i) #64, !noalias !37438, !inline_history !37362
  br i1 %i.u, label %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.v = add nuw i64 %.sroa.01.0.i.i132, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %i.l
  br i1 %exitcond.not, label %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i, label %.lr.ph

.lr.ph136:                                        ; preds = %.preheader80, %bb.l
  %.val8.i = phi i32 [ %.val6.i, %bb.l ], [ %.val16.i, %.preheader80 ]
  %.val7.i = phi i32 [ %.val5.i, %bb.l ], [ %.val15.i, %.preheader80 ]
  %.sroa.01.1.i.i135 = phi i64 [ %i.z, %bb.l ], [ 2, %.preheader80 ] ; 4 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.01.1.i.i135 ; 2 uses
  %8 = add nsw i64 %.sroa.01.1.i.i135, -1
  %9 = icmp ult i64 %8, %i.l
  tail call void @llvm.assume(i1 %9)
  %.val5.i = load i32, ptr %i.w, align 4, !alias.scope !37434, !noalias !37437 ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 4
  %.val6.i = load i32, ptr %i.x, align 4, !alias.scope !37434, !noalias !37437 ; 2 uses
  %i.y = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs87CvPiUlf0m_5alloc5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBz_E11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtBB_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3E_5types3any5PyAnyEB3z_NtBD_10UndirectedENCINvB1J_9is_planarB2Z_Es_0NtB1J_9NonPlanarEs_0E0CskcxRuJ53GpR_9rustworkx(ptr nonnull %.val14.i, i32 %.val5.i, i32 %.val6.i, i32 %.val7.i, i32 %.val8.i) #64, !noalias !37438, !inline_history !37362
  br i1 %i.y, label %bb.l, label %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i

bb.l:                                             ; preds = %.lr.ph136
  %i.z = add nuw i64 %.sroa.01.1.i.i135, 1        ; 2 uses
  %exitcond228.not = icmp eq i64 %i.z, %i.l
  br i1 %exitcond228.not, label %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i, label %.lr.ph136

_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.k, %.lr.ph, %bb.l, %.lr.ph136
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i135, %.lr.ph136 ], [ %i.l, %bb.l ], [ %.sroa.01.0.i.i132, %.lr.ph ], [ %i.l, %bb.k ] ; 6 uses
  %i.aa = icmp samesign ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.aa)
  %.not4.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not4.i, label %bb.h, label %bb.m

_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread262: ; preds = %.preheader80
  br i1 %.not4.i264, label %bb.h, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i

_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread: ; preds = %.preheader81
  br i1 %.not4.i259, label %bb.h, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit

bb.m:                                             ; preds = %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i
  br i1 %i.r, label %bb.p, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit

bb.n:                                             ; preds = %bb.h
  %i.ab = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0, i64 range(i64 0, 1152921504606846976) %i.l)
  %i.ac = shl nuw nsw i64 %i.ab, 1
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB14_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB13_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB16_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4O_5types3any5PyAnyEB4J_NtB18_10UndirectedENCINvB2S_9is_planarB48_Es_0NtB2S_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit

bb.o:                                             ; preds = %bb.h
  %i.ad = tail call i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.l, i64 32) ; 2 uses
  tail call fastcc void @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable9quicksort9quicksortTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB16_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB15_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB18_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4Q_5types3any5PyAnyEB4L_NtB1a_10UndirectedENCINvB2U_9is_planarB4a_Es_0NtB2U_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 4 %i.m, i64 noundef %i.ad, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #62, !inline_history !37362
  %i.ae = shl nuw nsw i64 %i.ad, 1
  %i.af = or disjoint i64 %i.ae, 1
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB14_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB13_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB16_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4O_5types3any5PyAnyEB4J_NtB18_10UndirectedENCINvB2S_9is_planarB48_Es_0NtB2S_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit

_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.prol.loopexit, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i, %middle.block, %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread, %bb.i, %bb.p, %bb.m
  %.sroa.0.0.i.i7376 = phi i64 [ %i.l, %bb.i ], [ %.sroa.0.0.i.i, %bb.m ], [ %.sroa.0.0.i.i, %bb.p ], [ 2, %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread ], [ %.sroa.0.0.i.i260267271, %middle.block ], [ %.sroa.0.0.i.i260267271, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i ], [ %.sroa.0.0.i.i260267271, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.prol.loopexit ]
  %i.ag = shl nuw nsw i64 %.sroa.0.0.i.i7376, 1
  %i.ah = or disjoint i64 %i.ag, 1
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB14_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB13_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB16_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4O_5types3any5PyAnyEB4J_NtB18_10UndirectedENCINvB2S_9is_planarB48_Es_0NtB2S_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit

bb.p:                                             ; preds = %bb.m
  %i.ai = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37439)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37440)
  %.not.i36 = icmp eq i64 %i.ai, 0
  br i1 %.not.i36, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i: ; preds = %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread262, %bb.p
  %i.aj = phi i64 [ %i.ai, %bb.p ], [ 1, %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread262 ] ; 7 uses
  %.sroa.0.0.i.i260267271 = phi i64 [ %.sroa.0.0.i.i, %bb.p ], [ 2, %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread262 ] ; 5 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.0.0.i.i260267271 ; 4 uses
  %min.iters.check = icmp samesign ult i64 %i.aj, 18
  br i1 %min.iters.check, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i
  %i.al = add nsw i64 %i.aj, -1                   ; 2 uses
  %i.am = add i64 %.sroa.0.0.i.i260267271, %.sroa.09.0
  %i.an = shl i64 %i.am, 3
  %scevgep352 = getelementptr i8, ptr %scevgep, i64 %i.an ; 2 uses
  %mul.result.neg = mul i64 %i.al, -8
  %mul.overflow = icmp ugt i64 %i.al, 2305843009213693951
  %i.ao = getelementptr i8, ptr %scevgep352, i64 %mul.result.neg
  %i.ap = icmp ugt ptr %i.ao, %scevgep352
  %i.aq = or i1 %i.ap, %mul.overflow
  br i1 %i.aq, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.aj, 4611686018427387902     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ar = xor i64 %index, -1
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.at = getelementptr [8 x i8], ptr %i.ak, i64 %i.ar ; 2 uses
  %wide.vec = load <4 x i32>, ptr %i.as, align 4, !alias.scope !37439, !noalias !37441
  %i.au = getelementptr i8, ptr %i.at, i64 -8
  %wide.load = load <2 x i64>, ptr %i.au, align 4, !alias.scope !37440, !noalias !37442
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse, ptr %i.as, align 4, !alias.scope !37439, !noalias !37441
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 -8
  %interleaved.vec = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec, ptr %i.av, align 4, !alias.scope !37440, !noalias !37442
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !37366

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader

_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader: ; preds = %vector.scevcheck, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i, %middle.block
  %.sroa.0.016.i.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.0.016.i.ph, 1
  %xtraiter = and i64 %i.aj, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.prol.loopexit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.prol

_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.prol: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader
  %i.ax = xor i64 %.sroa.0.016.i.ph, -1
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.0.016.i.ph ; 2 uses
  %i.az = getelementptr [8 x i8], ptr %i.ak, i64 %i.ax ; 2 uses
  %i.ba = load i64, ptr %i.az, align 4, !alias.scope !37440, !noalias !37442
  %i.bb = load <2 x i32>, ptr %i.ay, align 4, !alias.scope !37439, !noalias !37441
  store i64 %i.ba, ptr %i.ay, align 4, !alias.scope !37439, !noalias !37441
  store <2 x i32> %i.bb, ptr %i.az, align 4, !alias.scope !37440, !noalias !37442
  %i.bc = or disjoint i64 %.sroa.0.016.i.ph, 1
  br label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.prol.loopexit

_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.prol.loopexit: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.prol, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader
  %.sroa.0.016.i.unr = phi i64 [ %.sroa.0.016.i.ph, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader ], [ %i.bc, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.prol ]
  %i.bd = icmp eq i64 %i.aj, %.neg
  br i1 %i.bd, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.prol.loopexit, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i
  %.sroa.0.016.i = phi i64 [ %i.bp, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i ], [ %.sroa.0.016.i.unr, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.prol.loopexit ] ; 5 uses
  %i.be = xor i64 %.sroa.0.016.i, -1
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.0.016.i ; 2 uses
  %i.bg = getelementptr [8 x i8], ptr %i.ak, i64 %i.be ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 4, !alias.scope !37440, !noalias !37442
  %i.bi = load <2 x i32>, ptr %i.bf, align 4, !alias.scope !37439, !noalias !37441
  store i64 %i.bh, ptr %i.bf, align 4, !alias.scope !37439, !noalias !37441
  store <2 x i32> %i.bi, ptr %i.bg, align 4, !alias.scope !37440, !noalias !37442
  %i.bj = sub i64 -2, %.sroa.0.016.i
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.0.016.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.bm = getelementptr [8 x i8], ptr %i.ak, i64 %i.bj ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 4, !alias.scope !37440, !noalias !37442
  %i.bo = load <2 x i32>, ptr %i.bl, align 4, !alias.scope !37439, !noalias !37441
  store i64 %i.bn, ptr %i.bl, align 4, !alias.scope !37439, !noalias !37441
  store <2 x i32> %i.bo, ptr %i.bm, align 4, !alias.scope !37440, !noalias !37442
  %i.bp = add nuw nsw i64 %.sroa.0.016.i, 2       ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.bp, %i.aj
  br i1 %exitcond.not.i.1, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i, !llvm.loop !37367

_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB14_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB13_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB16_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4O_5types3any5PyAnyEB4J_NtB18_10UndirectedENCINvB2S_9is_planarB48_Es_0NtB2S_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.n, %bb.o, %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ah, %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit ], [ %i.af, %bb.o ], [ %i.ac, %bb.n ] ; 2 uses
  %i.bq = lshr i64 %.sroa.023.0, 1
  %i.br = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bs = sub nsw i64 %factor, %i.bq
  %i.bt = add nuw nsw i64 %i.br, %factor
  %i.bu = mul i64 %i.bs, %.sroa.0.0
  %i.bv = mul i64 %i.bt, %.sroa.0.0
  %i.bw = xor i64 %i.bv, %i.bu
  %i.bx = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bw, i1 false)
  %i.by = trunc nuw nsw i64 %i.bx to i8
  br label %bb.f

bb.q:                                             ; preds = %.lr.ph181, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB17_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB16_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB19_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4R_5types3any5PyAnyEB4M_NtB1b_10UndirectedENCINvB2V_9is_planarB4b_Es_0NtB2V_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit
  %.sroa.02.1180 = phi i64 [ %.sroa.02.0, %.lr.ph181 ], [ %i.bz, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB17_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB16_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB19_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4R_5types3any5PyAnyEB4M_NtB1b_10UndirectedENCINvB2V_9is_planarB4b_Es_0NtB2V_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit ] ; 2 uses
  %.sroa.023.1179 = phi i64 [ %.sroa.023.0, %.lr.ph181 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB17_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB16_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB19_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4R_5types3any5PyAnyEB4M_NtB1b_10UndirectedENCINvB2V_9is_planarB4b_Es_0NtB2V_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit ] ; 4 uses
  %i.bz = add i64 %.sroa.02.1180, -1              ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !noundef !67
  %.not28 = icmp ult i8 %i.cb, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB17_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB16_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB19_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4R_5types3any5PyAnyEB4M_NtB1b_10UndirectedENCINvB2V_9is_planarB4b_Es_0NtB2V_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit, %bb.q, %bb.f
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.f ], [ %.sroa.023.1179, %bb.q ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB17_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB16_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB19_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4R_5types3any5PyAnyEB4M_NtB1b_10UndirectedENCINvB2V_9is_planarB4b_Es_0NtB2V_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.f ], [ %.sroa.02.1180, %bb.q ], [ 1, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB17_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB16_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB19_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4R_5types3any5PyAnyEB4M_NtB1b_10UndirectedENCINvB2V_9is_planarB4b_Es_0NtB2V_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit ] ; 3 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.cd, align 1
  br i1 %i.i, label %bb.ap, label %bb.aq

bb.r:                                             ; preds = %bb.q
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bz
  %i.cf = load i64, ptr %i.ce, align 8, !noundef !67 ; 3 uses
  %i.cg = lshr i64 %i.cf, 1                       ; 8 uses
  %i.ch = lshr i64 %.sroa.023.1179, 1             ; 6 uses
  %i.ci = add nuw i64 %i.cg, %i.ch                ; 4 uses
  %i.cj = sub i64 %.sroa.09.0, %i.ci
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cj ; 7 uses
  %i.cl = icmp samesign ugt i64 %i.ci, %3
  %i.cm = trunc i64 %.sroa.023.1179 to i1
  %i.cn = or i64 %i.cf, %.sroa.023.1179
  %i.co = trunc i64 %i.cn to i1
  %or.cond3.i = or i1 %i.cl, %i.co
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cp = trunc i64 %i.cf to i1
  br i1 %i.cp, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cq = shl nuw nsw i64 %i.ci, 1
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB17_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB16_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB19_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4R_5types3any5PyAnyEB4M_NtB1b_10UndirectedENCINvB2V_9is_planarB4b_Es_0NtB2V_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cm, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.cr = or i64 %i.cg, 1
end_hunk_13
