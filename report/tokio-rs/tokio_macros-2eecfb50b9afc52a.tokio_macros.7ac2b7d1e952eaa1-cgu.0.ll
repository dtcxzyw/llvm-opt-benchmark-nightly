Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio_macros-2eecfb50b9afc52a.tokio_macros.7ac2b7d1e952eaa1-cgu.0?download=true
inline.NumInlined: 218
inline.NumDeleted: 126
begin_hunk_0_@_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj3f_Kj1_ECsaxs130FOtor_12tokio_macros:bb.a
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj65_Kj1_ECsaxs130FOtor_12tokio_macros(ptr %0, ptr align 8 %1) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj6b_Kj1_ECsaxs130FOtor_12tokio_macros(ptr %0, ptr align 8 %1) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj6e_Kj1_ECsaxs130FOtor_12tokio_macros(ptr %0, ptr align 8 %1) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj70_Kj1_ECsaxs130FOtor_12tokio_macros(ptr %0, ptr align 8 %1) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj73_Kj1_ECsaxs130FOtor_12tokio_macros(ptr %0, ptr align 8 %1) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj85_Kj1_ECsaxs130FOtor_12tokio_macros(ptr %0, ptr align 8 %1) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6bufferNtB6_6Buffer17extend_from_arrayKj4_ECsaxs130FOtor_12tokio_macros(ptr nofree align 8 captures(none) %0, ptr nofree readonly captures(none) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 2 uses
  %i.c = alloca [40 x i8], align 8                ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = sub i64 %i.e, %i.g
  %i.i = icmp ult i64 %i.h, 4
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %i.j = phi i64 [ %i.g, %bb.a ], [ %.pre, %bb.c ]
  %i.k = load ptr, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  %i.m = load i32, ptr %1, align 1
  store i32 %i.m, ptr %i.l, align 1
  %i.n = load i64, ptr %i.f, align 8
  %i.o = add i64 %i.n, 4
  store i64 %i.o, ptr %i.f, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store ptr @_RNvNvXs4_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6bufferNtB7_6BufferINtNtCs3oUPovFnLWP_4core7convert4FromINtNtCs1xwejQucwHj_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr @_RNvNvXs4_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6bufferNtB7_6BufferINtNtCs3oUPovFnLWP_4core7convert4FromINtNtCs1xwejQucwHj_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr nonnull sret([40 x i8]) align 8 %i.b, ptr nonnull byval([40 x i8]) align 8 %i.c, i64 4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store ptr @_RNvNvXs4_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6bufferNtB7_6BufferINtNtCs3oUPovFnLWP_4core7convert4FromINtNtCs1xwejQucwHj_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx, align 8
  store ptr @_RNvNvXs4_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6bufferNtB7_6BufferINtNtCs3oUPovFnLWP_4core7convert4FromINtNtCs1xwejQucwHj_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr nonnull byval([40 x i8]) align 8 %i.a) #28, !inline_history !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  %.pre = load i64, ptr %i.f, align 8
  br label %bb.b
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6bufferNtB6_6Buffer17extend_from_arrayKj8_ECsaxs130FOtor_12tokio_macros(ptr nofree align 8 captures(none) %0, ptr nofree readonly captures(none) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 2 uses
  %i.c = alloca [40 x i8], align 8                ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = sub i64 %i.e, %i.g
  %i.i = icmp ult i64 %i.h, 8
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %i.j = phi i64 [ %i.g, %bb.a ], [ %.pre, %bb.c ]
  %i.k = load ptr, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  %i.m = load i64, ptr %1, align 1
  store i64 %i.m, ptr %i.l, align 1
  %i.n = load i64, ptr %i.f, align 8
  %i.o = add i64 %i.n, 8
  store i64 %i.o, ptr %i.f, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store ptr @_RNvNvXs4_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6bufferNtB7_6BufferINtNtCs3oUPovFnLWP_4core7convert4FromINtNtCs1xwejQucwHj_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr @_RNvNvXs4_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6bufferNtB7_6BufferINtNtCs3oUPovFnLWP_4core7convert4FromINtNtCs1xwejQucwHj_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr nonnull sret([40 x i8]) align 8 %i.b, ptr nonnull byval([40 x i8]) align 8 %i.c, i64 8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store ptr @_RNvNvXs4_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6bufferNtB7_6BufferINtNtCs3oUPovFnLWP_4core7convert4FromINtNtCs1xwejQucwHj_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx, align 8
  store ptr @_RNvNvXs4_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6bufferNtB7_6BufferINtNtCs3oUPovFnLWP_4core7convert4FromINtNtCs1xwejQucwHj_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr nonnull byval([40 x i8]) align 8 %i.a) #28, !inline_history !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  %.pre = load i64, ptr %i.f, align 8
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs3_NtCscBrinq2mG3I_3syn3litNtB6_6LitInt12base10_parsejECsaxs130FOtor_12tokio_macros(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = tail call { ptr, i64 } @_RNvMs3_NtCscBrinq2mG3I_3syn3litNtB5_6LitInt13base10_digits(ptr align 8 %1) ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 3 uses
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 2 uses
  switch i64 %i.d, label %thread-pre-split.i.i.i [
    i64 0, label %.loopexit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.c, align 1, !noalias !65 ; 2 uses
  switch i8 %i.e, label %bb.c [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i.i.i:                           ; preds = %bb.a
  %.pr.i.i.i = load i8, ptr %i.c, align 1, !noalias !65
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split.i.i.i, %bb.b
  %i.f = phi i8 [ %.pr.i.i.i, %thread-pre-split.i.i.i ], [ %i.e, %bb.b ]
  %cond.i.i.i = icmp eq i8 %i.f, 43               ; 2 uses
  %i.g = sext i1 %cond.i.i.i to i64
  %.sroa.15.0.i.i.i = add i64 %i.d, %i.g          ; 4 uses
  %.sroa.0.0.idx.i.i.i = zext i1 %cond.i.i.i to i64
  %.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.0.0.idx.i.i.i ; 2 uses
  %i.h = icmp ult i64 %.sroa.15.0.i.i.i, 17
  br i1 %i.h, label %.preheader.i.i.i, label %.preheader56.i.i.i.preheader

.preheader.i.i.i:                                 ; preds = %bb.c
  %.not5366.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i, 0
  br i1 %.not5366.i.i.i, label %.loopexit5, label %.lr.ph.i.i.i

.preheader56.i.i.i:                               ; preds = %bb.f
  %.not52.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not52.i.i.i, label %.loopexit5, label %.preheader56.i.i.i.preheader

.preheader56.i.i.i.preheader:                     ; preds = %bb.c, %.preheader56.i.i.i
  %.sroa.0.1.i.i.i35 = phi ptr [ %i.i, %.preheader56.i.i.i ], [ %.sroa.0.0.i.i.i, %bb.c ] ; 2 uses
  %.sroa.15.1.i.i.i34 = phi i64 [ %i.j, %.preheader56.i.i.i ], [ %.sroa.15.0.i.i.i, %bb.c ]
  %.sroa.042.0.i.i.i33 = phi i64 [ %i.r, %.preheader56.i.i.i ], [ 0, %bb.c ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i35, i64 1
  %i.j = add i64 %.sroa.15.1.i.i.i34, -1          ; 2 uses
  %2 = mul nuw i64 %.sroa.042.0.i.i.i33, 10       ; 2 uses
  %3 = icmp ugt i64 %.sroa.042.0.i.i.i33, 1844674407370955161
  %i.k = load i8, ptr %.sroa.0.1.i.i.i35, align 1, !noalias !65 ; 2 uses
  br i1 %3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader56.i.i.i.preheader
  %i.l = zext i8 %i.k to i32
  %i.m = add nsw i32 %i.l, -48                    ; 2 uses
  %i.n = icmp ult i32 %i.m, 10
  br i1 %i.n, label %bb.f, label %.loopexit

bb.e:                                             ; preds = %.preheader56.i.i.i.preheader
  %i.o = add i8 %i.k, -48
  %i.p = icmp ult i8 %i.o, 10
  %spec.select = select i1 %i.p, i8 2, i8 1
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.q = zext nneg i32 %i.m to i64
  %i.r = add i64 %2, %i.q                         ; 3 uses
  %i.s = icmp ult i64 %i.r, %2
  br i1 %i.s, label %.loopexit, label %.preheader56.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.g
  %.sroa.0.269.i.i.i = phi ptr [ %i.z, %bb.g ], [ %.sroa.0.0.i.i.i, %.preheader.i.i.i ] ; 2 uses
  %.sroa.15.268.i.i.i = phi i64 [ %i.y, %bb.g ], [ %.sroa.15.0.i.i.i, %.preheader.i.i.i ]
  %.sroa.042.267.i.i.i = phi i64 [ %i.ab, %bb.g ], [ 0, %.preheader.i.i.i ]
  %i.t = load i8, ptr %.sroa.0.269.i.i.i, align 1, !noalias !65
  %i.u = zext i8 %i.t to i32
  %i.v = add nsw i32 %i.u, -48                    ; 2 uses
  %i.w = icmp ult i32 %i.v, 10
  br i1 %i.w, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.x = mul i64 %.sroa.042.267.i.i.i, 10
  %i.y = add nsw i64 %.sroa.15.268.i.i.i, -1      ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i.i, i64 1
  %i.aa = zext nneg i32 %i.v to i64
  %i.ab = add i64 %i.x, %i.aa                     ; 2 uses
  %.not53.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not53.i.i.i, label %.loopexit5, label %.lr.ph.i.i.i

.loopexit:                                        ; preds = %bb.f, %bb.d, %.lr.ph.i.i.i, %bb.e, %bb.a, %bb.b, %bb.b
  %.sroa.2.0.ph = phi i8 [ 1, %bb.b ], [ %spec.select, %bb.e ], [ 1, %bb.b ], [ 0, %bb.a ], [ 1, %.lr.ph.i.i.i ], [ 1, %bb.d ], [ 2, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = tail call i32 @_RNvMs3_NtCscBrinq2mG3I_3syn3litNtB5_6LitInt4span(ptr align 8 %1), !noalias !72
  call void @_RINvMNtCscBrinq2mG3I_3syn5errorNtB3_5Error3newNtNtNtCs3oUPovFnLWP_4core3num5error13ParseIntErrorEB5_(ptr nonnull sret([24 x i8]) align 8 %i.a, i32 %i.ac, i8 %.sroa.2.0.ph), !noalias !77
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjNtNtNtB5_3num5error13ParseIntErrorE7map_errNtNtCscBrinq2mG3I_3syn5error5ErrorNCINvMs3_NtB1u_3litNtB27_6LitInt12base10_parsejE0ECsaxs130FOtor_12tokio_macros.exit

.loopexit5:                                       ; preds = %.preheader56.i.i.i, %bb.g, %.preheader.i.i.i
  %.sroa.9.0 = phi i64 [ %i.ab, %bb.g ], [ 0, %.preheader.i.i.i ], [ %i.r, %.preheader56.i.i.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.9.0, ptr %i.ad, align 8, !alias.scope !77
  store i64 -1, ptr %0, align 8, !alias.scope !77
  br label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjNtNtNtB5_3num5error13ParseIntErrorE7map_errNtNtCscBrinq2mG3I_3syn5error5ErrorNCINvMs3_NtB1u_3litNtB27_6LitInt12base10_parsejE0ECsaxs130FOtor_12tokio_macros.exit

_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjNtNtNtB5_3num5error13ParseIntErrorE7map_errNtNtCscBrinq2mG3I_3syn5error5ErrorNCINvMs3_NtB1u_3litNtB27_6LitInt12base10_parsejE0ECsaxs130FOtor_12tokio_macros.exit: ; preds = %.loopexit, %.loopexit5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell7RefCellNtNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6client6BridgeEECsaxs130FOtor_12tokio_macros(ptr nofree align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %i.b, align 8
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx.i.i.i.i, i8 0, i64 16, i1 false)
  store ptr @_RNvNvXs4_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6bufferNtB7_6BufferINtNtCs3oUPovFnLWP_4core7convert4FromINtNtCs1xwejQucwHj_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @_RNvNvXs4_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6bufferNtB7_6BufferINtNtCs3oUPovFnLWP_4core7convert4FromINtNtCs1xwejQucwHj_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr nonnull byval([40 x i8]) align 8 %i.a) #28, !inline_history !78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn4attr4MetaEEECsaxs130FOtor_12tokio_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn4attr4MetaEECsaxs130FOtor_12tokio_macros.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn4attr4MetaEBF_(ptr nonnull align 8 %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn4attr4MetaEECsaxs130FOtor_12tokio_macros.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load ptr, ptr %0, align 8
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr %i.d, i64 232, i64 8) #28
  resume { ptr, i32 } %i.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn4attr4MetaEECsaxs130FOtor_12tokio_macros.exit: ; preds = %bb.c
  %i.e = load ptr, ptr %0, align 8
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr %i.e, i64 232, i64 8) #28
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscBrinq2mG3I_3syn4path4PathEECsaxs130FOtor_12tokio_macros(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn4path4PathEBF_(ptr nonnull align 8 %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCsfr4kGEjnBfC_11proc_macro211TokenStreamEECsaxs130FOtor_12tokio_macros(ptr align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsfr4kGEjnBfC_11proc_macro211TokenStreamENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsaxs130FOtor_12tokio_macros(ptr align 8 %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtCsfr4kGEjnBfC_11proc_macro211TokenStreamENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsaxs130FOtor_12tokio_macros(ptr align 8 %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtCsfr4kGEjnBfC_11proc_macro211TokenStreamEECsaxs130FOtor_12tokio_macros.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtCsfr4kGEjnBfC_11proc_macro211TokenStreamENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsaxs130FOtor_12tokio_macros(ptr align 8 %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtCsfr4kGEjnBfC_11proc_macro211TokenStreamEECsaxs130FOtor_12tokio_macros.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCsfr4kGEjnBfC_11proc_macro25IdentEECsaxs130FOtor_12tokio_macros(ptr align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsfr4kGEjnBfC_11proc_macro25IdentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsaxs130FOtor_12tokio_macros(ptr align 8 %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtCsfr4kGEjnBfC_11proc_macro25IdentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsaxs130FOtor_12tokio_macros(ptr align 8 %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtCsfr4kGEjnBfC_11proc_macro25IdentEECsaxs130FOtor_12tokio_macros.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtCsfr4kGEjnBfC_11proc_macro25IdentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsaxs130FOtor_12tokio_macros(ptr align 8 %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtCsfr4kGEjnBfC_11proc_macro25IdentEECsaxs130FOtor_12tokio_macros.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCscBrinq2mG3I_3syn4attr4MetaEECsaxs130FOtor_12tokio_macros(ptr align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCscBrinq2mG3I_3syn4attr4MetaENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsaxs130FOtor_12tokio_macros(ptr align 8 %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCscBrinq2mG3I_3syn4attr4MetaENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsaxs130FOtor_12tokio_macros(ptr align 8 %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCscBrinq2mG3I_3syn4attr4MetaEECsaxs130FOtor_12tokio_macros.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCscBrinq2mG3I_3syn4attr4MetaENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsaxs130FOtor_12tokio_macros(ptr align 8 %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCscBrinq2mG3I_3syn4attr4MetaEECsaxs130FOtor_12tokio_macros.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtCscBrinq2mG3I_3syn4attr4MetaNtNtB1d_5token5CommaEEECsaxs130FOtor_12tokio_macros(ptr align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtCscBrinq2mG3I_3syn4attr4MetaNtNtBK_5token5CommaEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsaxs130FOtor_12tokio_macros(ptr align 8 %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtCscBrinq2mG3I_3syn4attr4MetaNtNtBR_5token5CommaEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsaxs130FOtor_12tokio_macros(ptr align 8 %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTNtNtCscBrinq2mG3I_3syn4attr4MetaNtNtB1k_5token5CommaEEECsaxs130FOtor_12tokio_macros.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtCscBrinq2mG3I_3syn4attr4MetaNtNtBR_5token5CommaEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsaxs130FOtor_12tokio_macros(ptr align 8 %0)
  ret void

end_hunk_0
begin_hunk_1_@_RNvXs2_NtCscBrinq2mG3I_3syn5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt
declare zeroext i1 @_RNvXs2_NtCscBrinq2mG3I_3syn5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNvXs4_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6bufferNtB7_6BufferINtNtCs3oUPovFnLWP_4core7convert4FromINtNtCs1xwejQucwHj_5alloc3vec3VechEE4from7reserve(ptr sret([40 x i8]) align 8, ptr byval([40 x i8]) align 8, i64) unnamed_addr #5

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNvXs4_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6bufferNtB7_6BufferINtNtCs3oUPovFnLWP_4core7convert4FromINtNtCs1xwejQucwHj_5alloc3vec3VechEE4from4drop(ptr byval([40 x i8]) align 8) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs3_NtCscBrinq2mG3I_3syn3litNtB5_6LitInt13base10_digits(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtCsfr4kGEjnBfC_11proc_macro29TokenTreeEBE_(ptr align 8, i64) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn3pat3PatEBF_(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5error5ErrorEBF_(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsfr4kGEjnBfC_11proc_macro211TokenStreamENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsaxs130FOtor_12tokio_macros(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsfr4kGEjnBfC_11proc_macro25IdentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsaxs130FOtor_12tokio_macros(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCscBrinq2mG3I_3syn4attr4MetaENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsaxs130FOtor_12tokio_macros(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtCscBrinq2mG3I_3syn4attr4MetaNtNtBK_5token5CommaEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsaxs130FOtor_12tokio_macros(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn4attr4MetaEBF_(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtCsfr4kGEjnBfC_11proc_macro211TokenStreamENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsaxs130FOtor_12tokio_macros(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtCsfr4kGEjnBfC_11proc_macro25IdentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsaxs130FOtor_12tokio_macros(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCscBrinq2mG3I_3syn4attr4MetaENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsaxs130FOtor_12tokio_macros(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtCscBrinq2mG3I_3syn4attr4MetaNtNtBR_5token5CommaEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsaxs130FOtor_12tokio_macros(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXs5_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterARej4_Kj2_ENtNtNtB9_3ops4drop4Drop4dropCsaxs130FOtor_12tokio_macros(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXs5_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_ENtNtNtB9_3ops4drop4Drop4dropCsaxs130FOtor_12tokio_macros(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXs5_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterReKj4_ENtNtNtB9_3ops4drop4Drop4dropCsaxs130FOtor_12tokio_macros(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCscBrinq2mG3I_3syn10punctuated4IterNtNtBG_4path11PathSegmentEEBG_(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1xwejQucwHj_5alloc3vec15set_len_on_drop12SetLenOnDropECscBrinq2mG3I_3syn(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro11TokenStreamECsfr4kGEjnBfC_11proc_macro2(ptr align 4) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECscBrinq2mG3I_3syn(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCscBrinq2mG3I_3syn4attr9AttributeEEB1c_(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn11restriction10VisibilityEBF_(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn4item9SignatureEBF_(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNvNtNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6client5state3setNtB2_13RestoreOnDropNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro25IdentEBD_(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i32 @_RNCNCINvNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6client10run_clientNtBa_11TokenStreamNvCsaxs130FOtor_12tokio_macros25select_priv_clean_patternE00B1k_(i32) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i32 @_RNCNCINvNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6client10run_clientNtBa_11TokenStreamNvCsaxs130FOtor_12tokio_macros31select_priv_declare_output_enumE00B1k_(i32) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i32 @_RNCNCINvNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6client10run_clientTNtBa_11TokenStreamB11_ENCNCINvMsg_B6_NtB6_6Client7expand2NvCsaxs130FOtor_12tokio_macros4mainE00E00B1Y_(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i32 @_RNCNCINvNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6client10run_clientTNtBa_11TokenStreamB11_ENCNCINvMsg_B6_NtB6_6Client7expand2NvCsaxs130FOtor_12tokio_macros4testE00E00B1Y_(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i32 @_RNCNCINvNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6client10run_clientTNtBa_11TokenStreamB11_ENCNCINvMsg_B6_NtB6_6Client7expand2NvCsaxs130FOtor_12tokio_macros7main_rtE00E00B1Y_(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i32 @_RNCNCINvNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6client10run_clientTNtBa_11TokenStreamB11_ENCNCINvMsg_B6_NtB6_6Client7expand2NvCsaxs130FOtor_12tokio_macros7test_rtE00E00B1Y_(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i32 @_RNCNCINvNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6client10run_clientTNtBa_11TokenStreamB11_ENCNCINvMsg_B6_NtB6_6Client7expand2NvCsaxs130FOtor_12tokio_macros9main_failE00E00B1Y_(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i32 @_RNCNCINvNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6client10run_clientTNtBa_11TokenStreamB11_ENCNCINvMsg_B6_NtB6_6Client7expand2NvCsaxs130FOtor_12tokio_macros9test_failE00E00B1Y_(ptr align 8) unnamed_addr #0

; Function Attrs: cold minsize nonlazybind optsize uwtable
declare { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr) unnamed_addr #15

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() unnamed_addr #14

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsaxs130FOtor_12tokio_macros(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsfr4kGEjnBfC_11proc_macro23imp19into_compiler_token(ptr sret([20 x i8]) align 4, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeE4pushCsaoeXog3N7id_5quote(ptr align 8, ptr align 4) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RNvXNtNtCs3oUPovFnLWP_4core3ops12control_flowINtB2_11ControlFlowuENtNtB4_9try_trait3Try11from_outputCsfr4kGEjnBfC_11proc_macro2() unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RNvXNtNtCs3oUPovFnLWP_4core3ops12control_flowINtB2_11ControlFlowuENtNtB4_9try_trait3Try6branchCsfr4kGEjnBfC_11proc_macro2(i1 zeroext) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core3ops12control_flowINtB4_11ControlFlowuEINtNtB6_9try_trait12FromResidualIBK_uzEE13from_residualCsfr4kGEjnBfC_11proc_macro2() unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCscBrinq2mG3I_3syn4attr9AttributeE7or_elseNCINvXs_NtNtNtB5_4iter8adapters5chainINtB1B_5ChainINtNtNtB5_5slice4iter4IterBJ_EB2h_ENtNtNtB1F_6traits8iterator8Iterator4findNCNvNtCsaxs130FOtor_12tokio_macros5entry4test0Es_0EB3A_(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare align 8 ptr @_RNvMNtCsfr4kGEjnBfC_11proc_macro25rcvecINtB2_5RcVecNtB4_9TokenTreeE8make_mutCsaoeXog3N7id_5quote(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvYINtNtNtCs3oUPovFnLWP_4core5array4iter8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator8for_eachNCINvXsa_NtBP_8fallbackNtB2s_11TokenStreamINtNtB1z_7collect6ExtendBN_E6extendABN_B1r_E0ECsaxs130FOtor_12tokio_macros(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvXsf_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtCsfr4kGEjnBfC_11proc_macro25IdentEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB1n_8adapters3map3MapINtNtNtB1p_3ops5range5RangejENCNvNtCsaxs130FOtor_12tokio_macros6select19declare_output_enum0EEB3v_(ptr sret([24 x i8]) align 8, i64, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare i32 @_RNvMs3_NtCscBrinq2mG3I_3syn3litNtB5_6LitInt4span(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RINvMNtCscBrinq2mG3I_3syn5errorNtB3_5Error3newNtNtNtCs3oUPovFnLWP_4core3num5error13ParseIntErrorEB5_(ptr sret([24 x i8]) align 8, i32, i8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @_RNCNCNvNtCsaxs130FOtor_12tokio_macros5entry17is_test_attribute00B7_(ptr, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @_RNCNvNtCsaxs130FOtor_12tokio_macros5entry17is_test_attribute0B5_(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @_RNCNvNtCsaxs130FOtor_12tokio_macros5entry19contains_impl_trait0B5_(ptr, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB8_3VecNtCsfr4kGEjnBfC_11proc_macro25IdentE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1H_3ops5range5RangejENCNvNtCsaxs130FOtor_12tokio_macros6select19declare_output_enum0EE0B2V_(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCscBrinq2mG3I_3syn4attr9AttributeENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvNtCsaxs130FOtor_12tokio_macros5entry4test0EB2j_(ptr align 8, ptr) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCscBrinq2mG3I_3syn4attr9AttributeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtCsaxs130FOtor_12tokio_macros5entry4test0EB2i_(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare align 8 ptr @_RNvMs0_NtCsfr4kGEjnBfC_11proc_macro25rcvecINtB5_8RcVecMutNtB7_9TokenTreeE6as_mutCsaoeXog3N7id_5quote(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsfr4kGEjnBfC_11proc_macro28fallback26push_token_from_proc_macro(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro29TokenTreeEBD_(ptr align 8) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #16

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayjECsfr4kGEjnBfC_11proc_macro2(ptr sret([16 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare i32 @_RNvMsi_Csfr4kGEjnBfC_11proc_macro2NtB5_4Span9call_site() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsx_Csfr4kGEjnBfC_11proc_macro2NtB5_5Ident3new(ptr sret([24 x i8]) align 8, ptr, i64, i32, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvMs4_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_4IterNtCsfr4kGEjnBfC_11proc_macro25IdentE3newCsaxs130FOtor_12tokio_macros(ptr align 8, i64) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr, ptr, ptr align 8) unnamed_addr #17

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #5

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64, i64 allocalign) unnamed_addr #18

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfr4kGEjnBfC_11proc_macro2(ptr sret([24 x i8]) align 8, ptr, i64, ptr align 8) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64, i64) unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXs6_NtCscBrinq2mG3I_3syn10punctuatedQINtB5_10PunctuatedNtNtB7_3pat3PatNtNtB7_5token2OrENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCsaxs130FOtor_12tokio_macros(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden align 8 ptr @_RNvXsy_NtCscBrinq2mG3I_3syn10punctuatedINtB5_7IterMutNtNtB7_3pat3PatENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsaxs130FOtor_12tokio_macros(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXs6_NtCscBrinq2mG3I_3syn10punctuatedQINtB5_10PunctuatedNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCsaxs130FOtor_12tokio_macros(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXs6_NtCscBrinq2mG3I_3syn10punctuatedQINtB5_10PunctuatedNtNtB7_3pat8FieldPatNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCsaxs130FOtor_12tokio_macros(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden align 8 ptr @_RNvXsy_NtCscBrinq2mG3I_3syn10punctuatedINtB5_7IterMutNtNtB7_3pat8FieldPatENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsaxs130FOtor_12tokio_macros(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i32 @_RNvXs11_Csa5ERaWwhjCQ_10proc_macroNtB6_11TokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsaxs130FOtor_12tokio_macros(ptr align 4) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtCscBrinq2mG3I_3syn3pat3PatNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens17into_token_streamCsaxs130FOtor_12tokio_macros(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtCsa5ERaWwhjCQ_10proc_macro12token_streamNtB6_11TokenStreamNtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iter(ptr sret([32 x i8]) align 8, i32) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtCsa5ERaWwhjCQ_10proc_macro12token_streamNtB2_8IntoIterNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr sret([20 x i8]) align 4, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare i32 @_RNvMsC_Csa5ERaWwhjCQ_10proc_macroNtB5_5Group6stream(ptr align 4) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare i64 @_RNvXNtCsa5ERaWwhjCQ_10proc_macro12token_streamNtB2_8IntoIterNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator5count(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro5GroupECsfr4kGEjnBfC_11proc_macro2(ptr align 4) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa5ERaWwhjCQ_10proc_macro12token_stream8IntoIterECsfr4kGEjnBfC_11proc_macro2(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMCsfr4kGEjnBfC_11proc_macro2NtB2_11TokenStream3new(ptr sret([32 x i8]) align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsaoeXog3N7id_5quote9___private10push_ident(ptr align 8, ptr, i64) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsaoeXog3N7id_5quote9___private10push_group(ptr align 8, i8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsaoeXog3N7id_5quote9___private7push_lt(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXs4_NtNtCsaoeXog3N7id_5quote9___private3extINtNtCs1xwejQucwHj_5alloc3vec3VecNtCsfr4kGEjnBfC_11proc_macro25IdentENtB5_16RepAsIteratorExt15quote_into_iterCsaxs130FOtor_12tokio_macros(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtCsaoeXog3N7id_5quote9___privateINtB5_11HasIteratorKb0_EINtNtNtCs3oUPovFnLWP_4core3ops3bit5BitOrIBD_Kb1_EE5bitor() unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterNtCsfr4kGEjnBfC_11proc_macro25IdentENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaxs130FOtor_12tokio_macros(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsaoeXog3N7id_5quote9___private7push_gt(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtCsfr4kGEjnBfC_11proc_macro25IdentENtNtNtCsaoeXog3N7id_5quote9___private3ext14RepIteratorExt15quote_into_iterCsaxs130FOtor_12tokio_macros(ptr, ptr) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtCsaoeXog3N7id_5quote9___privateINtB5_11HasIteratorKb1_ENtNtNtCs3oUPovFnLWP_4core3ops3bit5BitOr5bitor() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsaoeXog3N7id_5quote9___private10push_comma(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsaoeXog3N7id_5quote9___private7push_eq(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsq_NtCsaoeXog3N7id_5quote9to_tokensNtCsfr4kGEjnBfC_11proc_macro25IdentNtB5_8ToTokens9to_tokens(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsaoeXog3N7id_5quote9___private9push_semi(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare i32 @_RNvXs2_Csfr4kGEjnBfC_11proc_macro2NtCsa5ERaWwhjCQ_10proc_macro11TokenStreamINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_11TokenStreamE4from(ptr align 8) unnamed_addr #1

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_nounwind_fmt(ptr, ptr, i1 zeroext, ptr align 8) unnamed_addr #20

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtCsaoeXog3N7id_5quote9to_tokensINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn2ty4TypeENtB5_8ToTokens9to_tokensB1e_(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsu_NtCsaoeXog3N7id_5quote9to_tokensNtCsfr4kGEjnBfC_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsl_NtCscBrinq2mG3I_3syn3litNtB5_3LitNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens9to_tokens(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtNtCscBrinq2mG3I_3syn4attr8printingNtB7_13MetaNameValueNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens9to_tokens(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtNtCscBrinq2mG3I_3syn4path8printingNtB7_4PathNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens9to_tokens(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXs4_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6clientNtB9_11TokenStreamINtNtB7_3rpc6EncodeuE6encodeCsaxs130FOtor_12tokio_macros(i32, ptr align 8, ptr) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare i32 @_RNvNtCsaoeXog3N7id_5quote7spanned10join_spans(ptr align 8) unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr allocptr captures(address), i64, i64) unnamed_addr #21

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXNvNtCsa5ERaWwhjCQ_10proc_macro6bridges3_1__INtNtCs3oUPovFnLWP_4core6option6OptionReEINtNtB4_3rpc6EncodeuE6encodeCsaxs130FOtor_12tokio_macros(ptr, i64, ptr align 8, ptr) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i32 @_RNvXsf_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCsaxs130FOtor_12tokio_macros(ptr align 8, ptr) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr align 8) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsfr4kGEjnBfC_11proc_macro2(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXs2_NtCsfr4kGEjnBfC_11proc_macro26markerNtB5_19ProcMacroAutoTraitsNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsaxs130FOtor_12tokio_macros(ptr) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfr4kGEjnBfC_11proc_macro23imp11TokenStreamEBF_(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMNtCscBrinq2mG3I_3syn6bufferNtB2_11TokenBuffer4new2(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCscBrinq2mG3I_3syn5parse22tokens_to_parse_buffer(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCscBrinq2mG3I_3syn3pat3PatNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr sret([184 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs9_NtCscBrinq2mG3I_3syn5parseNtB5_11ParseBuffer16check_unexpected(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultuNtNtCscBrinq2mG3I_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBP_(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvMs9_NtCscBrinq2mG3I_3syn5parseNtB5_11ParseBuffer6cursor(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i32, i8 } @_RNvNtCscBrinq2mG3I_3syn5parse33span_of_unexpected_ignoring_nones(ptr, ptr) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCscBrinq2mG3I_3syn5parse20err_unexpected_token(ptr sret([24 x i8]) align 8, i32, i8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferEBF_(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn6buffer11TokenBufferEBF_(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCscBrinq2mG3I_3syn3pat3PatNtNtBO_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1e_EE13from_residualBO_(ptr sret([184 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i32 @_RNCINvNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6client10run_clientNtB8_11TokenStreamNvCsaxs130FOtor_12tokio_macros25select_priv_clean_patternE0B1i_(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i32 @_RNCINvNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6client10run_clientNtB8_11TokenStreamNvCsaxs130FOtor_12tokio_macros31select_priv_declare_output_enumE0B1i_(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i32 @_RNCINvNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6client10run_clientTNtB8_11TokenStreamBZ_ENCNCINvMsg_B4_NtB4_6Client7expand2NvCsaxs130FOtor_12tokio_macros4mainE00E0B1V_(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i32 @_RNCINvNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6client10run_clientTNtB8_11TokenStreamBZ_ENCNCINvMsg_B4_NtB4_6Client7expand2NvCsaxs130FOtor_12tokio_macros4testE00E0B1V_(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i32 @_RNCINvNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6client10run_clientTNtB8_11TokenStreamBZ_ENCNCINvMsg_B4_NtB4_6Client7expand2NvCsaxs130FOtor_12tokio_macros7main_rtE00E0B1V_(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i32 @_RNCINvNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6client10run_clientTNtB8_11TokenStreamBZ_ENCNCINvMsg_B4_NtB4_6Client7expand2NvCsaxs130FOtor_12tokio_macros7test_rtE00E0B1V_(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i32 @_RNCINvNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6client10run_clientTNtB8_11TokenStreamBZ_ENCNCINvMsg_B4_NtB4_6Client7expand2NvCsaxs130FOtor_12tokio_macros9main_failE00E0B1V_(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i32 @_RNCINvNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6client10run_clientTNtB8_11TokenStreamBZ_ENCNCINvMsg_B4_NtB4_6Client7expand2NvCsaxs130FOtor_12tokio_macros9test_failE00E0B1V_(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs8_NtCscBrinq2mG3I_3syn5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtCsfr4kGEjnBfC_11proc_macro28LexErrorE4from(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare ptr @_RNvXs1_NtCsfr4kGEjnBfC_11proc_macro25rcvecINtB5_5RcVecNtB7_9TokenTreeENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneB7_(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn4attr13MetaNameValueEBF_(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCscBrinq2mG3I_3syn4attr8printingNtB6_4MetaNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens9to_tokens(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden i32 @_RNvCsaxs130FOtor_12tokio_macros25select_priv_clean_pattern(i32) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden i32 @_RNvCsaxs130FOtor_12tokio_macros31select_priv_declare_output_enum(i32) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden i32 @_RNvCsaxs130FOtor_12tokio_macros4main(i32, i32) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden i32 @_RNvCsaxs130FOtor_12tokio_macros4test(i32, i32) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden i32 @_RNvCsaxs130FOtor_12tokio_macros7main_rt(i32, i32) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden i32 @_RNvCsaxs130FOtor_12tokio_macros7test_rt(i32, i32) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden i32 @_RNvCsaxs130FOtor_12tokio_macros9main_fail(i32, i32) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden i32 @_RNvCsaxs130FOtor_12tokio_macros9test_fail(i32, i32) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCscBrinq2mG3I_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4attr4MetaNtNtB4_5token5CommaE16parse_terminatedCsaxs130FOtor_12tokio_macros(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCscBrinq2mG3I_3syn3pat7parsingNtB4_3Pat12parse_single(ptr sret([184 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_Csfr4kGEjnBfC_11proc_macro2NtB5_11TokenStreamINtNtCs3oUPovFnLWP_4core7convert4FromNtCsa5ERaWwhjCQ_10proc_macro11TokenStreamE4from(ptr sret([32 x i8]) align 8, i32) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden zeroext i1 @_RNvNtCsaxs130FOtor_12tokio_macros5entry19contains_impl_trait(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXs2_NtCsaxs130FOtor_12tokio_macros5entryNtB5_6ItemFnNtNtCscBrinq2mG3I_3syn5parse5Parse5parseB7_(ptr sret([408 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtCscBrinq2mG3I_3syn4path7parsingNtB4_4PathNtNtB6_5parse5Parse5parse(ptr sret([48 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtCsaoeXog3N7id_5quote9to_tokensRNtNtCscBrinq2mG3I_3syn4attr9AttributeNtB2_8ToTokens9to_tokensBD_(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtCsaoeXog3N7id_5quote9to_tokensRNtNtCscBrinq2mG3I_3syn4expr4ExprNtB2_8ToTokens9to_tokensBD_(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #22

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold inlinehint noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsjHpjAFo4bi0_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #25 = { inlinehint }
attributes #26 = { cold }
attributes #27 = { cold noreturn nounwind }
attributes #28 = { nounwind }
attributes #29 = { noreturn }
attributes #30 = { noinline noreturn nounwind }
attributes #31 = { noinline noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (787af2b8c 2026-08-25)"}
!4 = !{!5}
!5 = distinct !{!5, !6, !"_RINvMNtCscBrinq2mG3I_3syn3litNtB3_6LitStr10parse_withNvYNtNtB5_4path4PathNtNtB5_5parse5Parse5parseECsaxs130FOtor_12tokio_macros: argument 0"}
!6 = distinct !{!6, !"_RINvMNtCscBrinq2mG3I_3syn3litNtB3_6LitStr10parse_withNvYNtNtB5_4path4PathNtNtB5_5parse5Parse5parseECsaxs130FOtor_12tokio_macros"}
!7 = !{!8, !5}
!8 = distinct !{!8, !9, !"_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCscBrinq2mG3I_3syn4path4PathNtNtBO_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtCsfr4kGEjnBfC_11proc_macro28LexErrorEE13from_residualCsaxs130FOtor_12tokio_macros: argument 0"}
!9 = distinct !{!9, !"_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCscBrinq2mG3I_3syn4path4PathNtNtBO_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtCsfr4kGEjnBfC_11proc_macro28LexErrorEE13from_residualCsaxs130FOtor_12tokio_macros"}
!10 = !{!11}
!11 = distinct !{!11, !12, !"_RNvYNtNtCscBrinq2mG3I_3syn4attr13MetaNameValueNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens17into_token_streamCsaxs130FOtor_12tokio_macros: argument 0"}
!12 = distinct !{!12, !"_RNvYNtNtCscBrinq2mG3I_3syn4attr13MetaNameValueNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens17into_token_streamCsaxs130FOtor_12tokio_macros"}
!13 = !{!14, !11}
!14 = distinct !{!14, !15, !"_RNvYNtNtCscBrinq2mG3I_3syn4attr13MetaNameValueNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens15to_token_streamCsaxs130FOtor_12tokio_macros: argument 0"}
!15 = distinct !{!15, !"_RNvYNtNtCscBrinq2mG3I_3syn4attr13MetaNameValueNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens15to_token_streamCsaxs130FOtor_12tokio_macros"}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_RNvYNtNtCscBrinq2mG3I_3syn4attr13MetaNameValueNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens17into_token_streamCsaxs130FOtor_12tokio_macros: argument 0"}
!18 = distinct !{!18, !"_RNvYNtNtCscBrinq2mG3I_3syn4attr13MetaNameValueNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens17into_token_streamCsaxs130FOtor_12tokio_macros"}
!19 = !{!20, !17}
!20 = distinct !{!20, !21, !"_RNvYNtNtCscBrinq2mG3I_3syn4attr13MetaNameValueNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens15to_token_streamCsaxs130FOtor_12tokio_macros: argument 0"}
!21 = distinct !{!21, !"_RNvYNtNtCscBrinq2mG3I_3syn4attr13MetaNameValueNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens15to_token_streamCsaxs130FOtor_12tokio_macros"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_RNvYNtNtCscBrinq2mG3I_3syn4attr4MetaNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens17into_token_streamCsaxs130FOtor_12tokio_macros: argument 0"}
!24 = distinct !{!24, !"_RNvYNtNtCscBrinq2mG3I_3syn4attr4MetaNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens17into_token_streamCsaxs130FOtor_12tokio_macros"}
!25 = !{!26, !23}
!26 = distinct !{!26, !27, !"_RNvYNtNtCscBrinq2mG3I_3syn4attr4MetaNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens15to_token_streamCsaxs130FOtor_12tokio_macros: argument 0"}
!27 = distinct !{!27, !"_RNvYNtNtCscBrinq2mG3I_3syn4attr4MetaNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens15to_token_streamCsaxs130FOtor_12tokio_macros"}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_RNvYNtNtCscBrinq2mG3I_3syn4path4PathNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens17into_token_streamCsaxs130FOtor_12tokio_macros: argument 0"}
!30 = distinct !{!30, !"_RNvYNtNtCscBrinq2mG3I_3syn4path4PathNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens17into_token_streamCsaxs130FOtor_12tokio_macros"}
!31 = !{!32, !29}
!32 = distinct !{!32, !33, !"_RNvYNtNtCscBrinq2mG3I_3syn4path4PathNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens15to_token_streamCsaxs130FOtor_12tokio_macros: argument 0"}
!33 = distinct !{!33, !"_RNvYNtNtCscBrinq2mG3I_3syn4path4PathNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens15to_token_streamCsaxs130FOtor_12tokio_macros"}
!34 = !{!35}
!35 = distinct !{!35, !36, !"_RNvYRNtCsfr4kGEjnBfC_11proc_macro25IdentNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens17into_token_streamCsaxs130FOtor_12tokio_macros: argument 0"}
!36 = distinct !{!36, !"_RNvYRNtCsfr4kGEjnBfC_11proc_macro25IdentNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens17into_token_streamCsaxs130FOtor_12tokio_macros"}
!37 = !{!38, !35}
!38 = distinct !{!38, !39, !"_RNvYRNtCsfr4kGEjnBfC_11proc_macro25IdentNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens15to_token_streamCsaxs130FOtor_12tokio_macros: argument 0"}
!39 = distinct !{!39, !"_RNvYRNtCsfr4kGEjnBfC_11proc_macro25IdentNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens15to_token_streamCsaxs130FOtor_12tokio_macros"}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_RNvYRNtNtCscBrinq2mG3I_3syn4attr13MetaNameValueNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens17into_token_streamCsaxs130FOtor_12tokio_macros: argument 0"}
!42 = distinct !{!42, !"_RNvYRNtNtCscBrinq2mG3I_3syn4attr13MetaNameValueNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens17into_token_streamCsaxs130FOtor_12tokio_macros"}
!43 = !{!44, !41}
!44 = distinct !{!44, !45, !"_RNvYRNtNtCscBrinq2mG3I_3syn4attr13MetaNameValueNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens15to_token_streamCsaxs130FOtor_12tokio_macros: argument 0"}
!45 = distinct !{!45, !"_RNvYRNtNtCscBrinq2mG3I_3syn4attr13MetaNameValueNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens15to_token_streamCsaxs130FOtor_12tokio_macros"}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_RNvYRNtNtCscBrinq2mG3I_3syn4attr9AttributeNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens17into_token_streamCsaxs130FOtor_12tokio_macros: argument 0"}
!48 = distinct !{!48, !"_RNvYRNtNtCscBrinq2mG3I_3syn4attr9AttributeNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens17into_token_streamCsaxs130FOtor_12tokio_macros"}
!49 = !{!50, !47}
!50 = distinct !{!50, !51, !"_RNvYRNtNtCscBrinq2mG3I_3syn4attr9AttributeNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens15to_token_streamCsaxs130FOtor_12tokio_macros: argument 0"}
!51 = distinct !{!51, !"_RNvYRNtNtCscBrinq2mG3I_3syn4attr9AttributeNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens15to_token_streamCsaxs130FOtor_12tokio_macros"}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_RNvYRNtNtCscBrinq2mG3I_3syn4expr4ExprNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens17into_token_streamCsaxs130FOtor_12tokio_macros: argument 0"}
!54 = distinct !{!54, !"_RNvYRNtNtCscBrinq2mG3I_3syn4expr4ExprNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens17into_token_streamCsaxs130FOtor_12tokio_macros"}
!55 = !{!56, !53}
!56 = distinct !{!56, !57, !"_RNvYRNtNtCscBrinq2mG3I_3syn4expr4ExprNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens15to_token_streamCsaxs130FOtor_12tokio_macros: argument 0"}
!57 = distinct !{!57, !"_RNvYRNtNtCscBrinq2mG3I_3syn4expr4ExprNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens15to_token_streamCsaxs130FOtor_12tokio_macros"}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_RNvYRNtNtCscBrinq2mG3I_3syn4path4PathNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens17into_token_streamCsaxs130FOtor_12tokio_macros: argument 0"}
!60 = distinct !{!60, !"_RNvYRNtNtCscBrinq2mG3I_3syn4path4PathNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens17into_token_streamCsaxs130FOtor_12tokio_macros"}
!61 = !{!62, !59}
!62 = distinct !{!62, !63, !"_RNvYRNtNtCscBrinq2mG3I_3syn4path4PathNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens15to_token_streamCsaxs130FOtor_12tokio_macros: argument 0"}
!63 = distinct !{!63, !"_RNvYRNtNtCscBrinq2mG3I_3syn4path4PathNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens15to_token_streamCsaxs130FOtor_12tokio_macros"}
!64 = distinct !{ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6buffer6BufferECsaxs130FOtor_12tokio_macros, null}
!65 = !{!66, !68, !70}
!66 = distinct !{!66, !67, !"_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_implCsaxs130FOtor_12tokio_macros: argument 0"}
!67 = distinct !{!67, !"_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_implCsaxs130FOtor_12tokio_macros"}
!68 = distinct !{!68, !69, !"_RNvXsu_NtCs3oUPovFnLWP_4core3numjNtNtNtB7_3str6traits7FromStr8from_strCsaxs130FOtor_12tokio_macros: argument 0"}
!69 = distinct !{!69, !"_RNvXsu_NtCs3oUPovFnLWP_4core3numjNtNtNtB7_3str6traits7FromStr8from_strCsaxs130FOtor_12tokio_macros"}
!70 = distinct !{!70, !71, !"_RINvMNtCs3oUPovFnLWP_4core3stre5parsejECsaxs130FOtor_12tokio_macros: argument 0"}
!71 = distinct !{!71, !"_RINvMNtCs3oUPovFnLWP_4core3stre5parsejECsaxs130FOtor_12tokio_macros"}
!72 = !{!73, !75}
!73 = distinct !{!73, !74, !"_RNCINvMs3_NtCscBrinq2mG3I_3syn3litNtB8_6LitInt12base10_parsejE0Csaxs130FOtor_12tokio_macros: argument 0"}
!74 = distinct !{!74, !"_RNCINvMs3_NtCscBrinq2mG3I_3syn3litNtB8_6LitInt12base10_parsejE0Csaxs130FOtor_12tokio_macros"}
!75 = distinct !{!75, !76, !"_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjNtNtNtB5_3num5error13ParseIntErrorE7map_errNtNtCscBrinq2mG3I_3syn5error5ErrorNCINvMs3_NtB1u_3litNtB27_6LitInt12base10_parsejE0ECsaxs130FOtor_12tokio_macros: argument 0"}
!76 = distinct !{!76, !"_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjNtNtNtB5_3num5error13ParseIntErrorE7map_errNtNtCscBrinq2mG3I_3syn5error5ErrorNCINvMs3_NtB1u_3litNtB27_6LitInt12base10_parsejE0ECsaxs130FOtor_12tokio_macros"}
!77 = !{!75}
!78 = distinct !{null, null, ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6buffer6BufferECsaxs130FOtor_12tokio_macros, null}
!79 = !{}
!80 = distinct !{null}
!81 = !{!82}
!82 = distinct !{!82, !83, !"_RNvXs0_NtNtCs3oUPovFnLWP_4core5array4iterANtCsfr4kGEjnBfC_11proc_macro29TokenTreej1_NtNtNtNtB9_4iter6traits7collect12IntoIterator9into_iterCsaxs130FOtor_12tokio_macros: argument 0"}
!83 = distinct !{!83, !"_RNvXs0_NtNtCs3oUPovFnLWP_4core5array4iterANtCsfr4kGEjnBfC_11proc_macro29TokenTreej1_NtNtNtNtB9_4iter6traits7collect12IntoIterator9into_iterCsaxs130FOtor_12tokio_macros"}
!84 = !{!85}
!85 = distinct !{!85, !86, !"_RNCNvNtCsaxs130FOtor_12tokio_macros6select19declare_output_enum0B5_: argument 0"}
!86 = distinct !{!86, !"_RNCNvNtCsaxs130FOtor_12tokio_macros6select19declare_output_enum0B5_"}
!87 = !{!88}
!88 = distinct !{!88, !89, !"_RNvYNvMNtNtCscBrinq2mG3I_3syn3pat7parsingNtB7_3Pat12parse_singleNtNtB9_5parse6Parser5parseCsaxs130FOtor_12tokio_macros: argument 0"}
!89 = distinct !{!89, !"_RNvYNvMNtNtCscBrinq2mG3I_3syn3pat7parsingNtB7_3Pat12parse_singleNtNtB9_5parse6Parser5parseCsaxs130FOtor_12tokio_macros"}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_RNvXsh_NtCscBrinq2mG3I_3syn5parseNvMNtNtB7_3pat7parsingNtBA_3Pat12parse_singleNtB5_6Parser6parse2Csaxs130FOtor_12tokio_macros: argument 0"}
!92 = distinct !{!92, !"_RNvXsh_NtCscBrinq2mG3I_3syn5parseNvMNtNtB7_3pat7parsingNtBA_3Pat12parse_singleNtB5_6Parser6parse2Csaxs130FOtor_12tokio_macros"}
!93 = !{!91, !88}
!94 = distinct !{!94, !95}
!95 = !{!"llvm.loop.peeled.count", i32 1}
!96 = !{!97}
!97 = distinct !{!97, !98, !"_RNvYRNtNtCscBrinq2mG3I_3syn3lit3LitNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens17into_token_streamCsaxs130FOtor_12tokio_macros: argument 0"}
!98 = distinct !{!98, !"_RNvYRNtNtCscBrinq2mG3I_3syn3lit3LitNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens17into_token_streamCsaxs130FOtor_12tokio_macros"}
!99 = !{!100, !97}
!100 = distinct !{!100, !101, !"_RNvYRNtNtCscBrinq2mG3I_3syn3lit3LitNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens15to_token_streamCsaxs130FOtor_12tokio_macros: argument 0"}
!101 = distinct !{!101, !"_RNvYRNtNtCscBrinq2mG3I_3syn3lit3LitNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens15to_token_streamCsaxs130FOtor_12tokio_macros"}
!102 = !{ptr @_RNvMs2_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6bufferNtB5_6Buffer4pushCsaxs130FOtor_12tokio_macros}
!103 = distinct !{ptr @_RNvMs2_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6bufferNtB5_6Buffer4pushCsaxs130FOtor_12tokio_macros, ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6buffer6BufferECsaxs130FOtor_12tokio_macros, null}
!104 = !{!105}
!105 = distinct !{!105, !106, !"_RNvXs4_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator9size_hintCsaxs130FOtor_12tokio_macros: argument 0"}
!106 = distinct !{!106, !"_RNvXs4_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator9size_hintCsaxs130FOtor_12tokio_macros"}
!107 = !{!108}
!108 = distinct !{!108, !109, !"_RNvXsz_NtCsfr4kGEjnBfC_11proc_macro23impNtB5_11TokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsaxs130FOtor_12tokio_macros: argument 0"}
!109 = distinct !{!109, !"_RNvXsz_NtCsfr4kGEjnBfC_11proc_macro23impNtB5_11TokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsaxs130FOtor_12tokio_macros"}
!110 = !{!111, !108}
!111 = distinct !{!111, !112, !"_RNvXsA_NtCsfr4kGEjnBfC_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsaxs130FOtor_12tokio_macros: argument 0"}
!112 = distinct !{!112, !"_RNvXsA_NtCsfr4kGEjnBfC_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsaxs130FOtor_12tokio_macros"}
!113 = !{!114}
!114 = distinct !{!114, !115, !"_RNvYNtCsfr4kGEjnBfC_11proc_macro25IdentNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens15to_token_streamCsaxs130FOtor_12tokio_macros: argument 0"}
!115 = distinct !{!115, !"_RNvYNtCsfr4kGEjnBfC_11proc_macro25IdentNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens15to_token_streamCsaxs130FOtor_12tokio_macros"}
!116 = !{!117}
!117 = distinct !{!117, !118, !"_RNvYNtNtCscBrinq2mG3I_3syn4path4PathNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens17into_token_streamCsaxs130FOtor_12tokio_macros: argument 0"}
!118 = distinct !{!118, !"_RNvYNtNtCscBrinq2mG3I_3syn4path4PathNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens17into_token_streamCsaxs130FOtor_12tokio_macros"}
!119 = !{!120, !117}
!120 = distinct !{!120, !121, !"_RNvYNtNtCscBrinq2mG3I_3syn4path4PathNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens15to_token_streamCsaxs130FOtor_12tokio_macros: argument 0"}
!121 = distinct !{!121, !"_RNvYNtNtCscBrinq2mG3I_3syn4path4PathNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens15to_token_streamCsaxs130FOtor_12tokio_macros"}
end_hunk_1
