Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rayon-rs/original/rayon-fd5a06854e05e2fd.rayon.15a9e7770a0c1f3e-cgu.0?download=true
inline.NumInlined: 121
inline.NumDeleted: 92
begin_hunk_0_@_RNvXs5_NtCs1Rjy1FfFCsk_5rayon3strNtB5_13CharsProducerNtNtNtB7_4iter8plumbing17UnindexedProducer5split:bb.a
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -1 ; 3 uses
  %.val.i.i.i.i = load i8, ptr %i.m, align 1, !alias.scope !41, !noalias !48, !noundef !4
  %i.n = icmp sgt i8 %.val.i.i.i.i, -65
  %i.o = add nsw i64 %.sroa.01.0.i.i.i.i19, -1    ; 2 uses
  br i1 %i.n, label %_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint.exit, label %bb.c

_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint.exit: ; preds = %.lr.ph, %bb.b
  %.sroa.0.1.i = phi i64 [ %i.k, %bb.b ], [ %i.o, %.lr.ph ] ; 8 uses
  %.not = icmp eq i64 %.sroa.0.1.i, 0
  br i1 %.not, label %_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint.exit.thread, label %bb.d

bb.d:                                             ; preds = %_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint.exit
  %.not.i = icmp ult i64 %.sroa.0.1.i, %2
  br i1 %.not.i, label %bb.e, label %.split3.i

.split3.i:                                        ; preds = %bb.d
  %i.p = icmp eq i64 %.sroa.0.1.i, %2
  br i1 %i.p, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1.i
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !55, !noalias !58, !noundef !4
  %i.s = icmp sgt i8 %i.r, -65
  br i1 %i.s, label %bb.g, label %bb.f

_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint.exit.thread: ; preds = %bb.c, %.loopexit.i, %_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint.exit
  store ptr %1, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.u, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.e, %.split3.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef 0, i64 noundef %.sroa.0.1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #19
  unreachable

bb.g:                                             ; preds = %bb.e, %.split3.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1.i
  %i.w = sub i64 %2, %.sroa.0.1.i
  store ptr %1, ptr %0, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.1.i, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.v, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.w, ptr %i.z, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint.exit.thread
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define noundef range(i64 0, 257) i64 @_RNvXs6_NtCs1Rjy1FfFCsk_5rayon15range_inclusivehNtNtB5_7private19IndexedRangeInteger3len(ptr noalias nofree noundef readonly captures(none) dereferenceable(3) %0) unnamed_addr #6 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !37, !alias.scope !60, !noalias !63, !noundef !4
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  %i.e = load i8, ptr %i.c, align 1, !alias.scope !70, !noalias !71, !noundef !4 ; 2 uses
  %i.f = load i8, ptr %i.d, align 1, !alias.scope !72, !noalias !73, !noundef !4 ; 2 uses
  %.not.i = icmp ugt i8 %i.e, %i.f
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = sub nuw i8 %i.f, %i.e
  %i.h = zext i8 %i.g to i64
  %i.i = add nuw nsw i64 %i.h, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sink9.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i64 %.sink9.i
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvXs7_NtCs1Rjy1FfFCsk_5rayon15range_inclusivehNtNtB5_7private12RangeInteger7opt_len(ptr noalias nofree noundef readonly captures(none) dereferenceable(3) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i8], align 4                 ; 4 uses
  %i.b = alloca [2 x i8], align 1                 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i16, ptr %i.c, align 1, !alias.scope !74 ; 2 uses
  %i.e = trunc i16 %i.d to i8                     ; 3 uses
  %i.f = lshr i16 %i.d, 8                         ; 2 uses
  %i.g = trunc nuw i16 %i.f to i8                 ; 4 uses
  %.not.i = icmp ugt i8 %i.e, %i.g
  %i.h = load i8, ptr %0, align 1, !range !37, !alias.scope !74
  %i.i = trunc nuw i8 %i.h to i1
  %.not = select i1 %.not.i, i1 true, i1 %i.i
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i16 %i.f, 255
  br i1 %i.j, label %bb.d, label %bb.c, !prof !30

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i8 %i.g, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.e, ptr %i.b, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.k, ptr %i.l, align 1
  %i.m = call { i64, i64 } @_RNvXs6_NtCs1Rjy1FfFCsk_5rayon5rangehNtNtB5_7private12RangeInteger7opt_len(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = tail call i24 @_RINvYINtNtCs1Rjy1FfFCsk_5rayon5range4IterhENtNtB8_4iter16ParallelIterator5chainINtNtBH_4once4OncehEEB8_(i8 noundef %i.e, i8 noundef %i.g, i8 noundef %i.g)
  store i24 %i.n, ptr %i.a, align 4
  %i.o = call { i64, i64 } @_RNvXs_NtNtCs1Rjy1FfFCsk_5rayon4iter5chainINtB4_5ChainINtNtB8_5range4IterhEINtNtB6_4once4OncehEENtB6_16ParallelIterator7opt_lenB8_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(3) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { i64, i64 } [ %i.o, %bb.d ], [ %i.m, %bb.c ] ; 2 uses
  %.sroa.0.0 = extractvalue { i64, i64 } %.pn, 0
  %.sroa.4.0 = extractvalue { i64, i64 } %.pn, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.sroa.4.1 = phi i64 [ %.sroa.4.0, %bb.e ], [ 0, %bb.a ]
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %bb.e ], [ 1, %bb.a ]
  %i.p = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.q = insertvalue { i64, i64 } %i.p, i64 %.sroa.4.1, 1
  ret { i64, i64 } %i.q
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs7_NtCs1Rjy1FfFCsk_5rayon3strNtB5_19CharIndicesProducerNtNtNtB7_4iter8plumbing17UnindexedProducer5split(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 7 uses
  %i.d = lshr i64 %i.c, 1                         ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c
  %i.g = icmp eq i64 %i.c, 0
  br i1 %i.g, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2L_.exit.i.i
  %i.h = phi ptr [ %i.k, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2L_.exit.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.i = phi i64 [ %i.l, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2L_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %.val6.i.i = load i8, ptr %i.h, align 1, !alias.scope !77, !noalias !80, !noundef !4
  %i.j = icmp sgt i8 %.val6.i.i, -65
  br i1 %i.j, label %bb.b, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2L_.exit.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2L_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 2 uses
  %i.l = add i64 %i.i, 1
  %i.m = icmp eq ptr %i.k, %i.f
  br i1 %i.m, label %.loopexit.i, label %.lr.ph.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.n = add i64 %i.i, %i.d
  br label %_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint.exit

.loopexit.i:                                      ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2L_.exit.i.i, %bb.a
  %.not.not.not.not.i.not.i26 = icmp samesign eq i64 %i.d, 0
  br i1 %.not.not.not.not.i.not.i26, label %_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint.exit.thread, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %.not.not.not.not.i.not.i = icmp eq ptr %i.a, %i.p
  br i1 %.not.not.not.not.i.not.i, label %_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit.i, %bb.c
  %.sroa.01.0.i.i.i.i27 = phi i64 [ %i.r, %bb.c ], [ %i.d, %.loopexit.i ]
  %i.o = phi ptr [ %i.p, %bb.c ], [ %i.e, %.loopexit.i ]
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -1 ; 3 uses
  %.val.i.i.i.i = load i8, ptr %i.p, align 1, !alias.scope !77, !noalias !84, !noundef !4
  %i.q = icmp sgt i8 %.val.i.i.i.i, -65
  %i.r = add nsw i64 %.sroa.01.0.i.i.i.i27, -1    ; 2 uses
  br i1 %i.q, label %_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint.exit, label %bb.c

_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint.exit: ; preds = %.lr.ph, %bb.b
  %.sroa.0.1.i = phi i64 [ %i.n, %bb.b ], [ %i.r, %.lr.ph ] ; 9 uses
  %.not = icmp eq i64 %.sroa.0.1.i, 0
  br i1 %.not, label %_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint.exit.thread, label %bb.d

bb.d:                                             ; preds = %_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint.exit
  %.not.i = icmp ult i64 %.sroa.0.1.i, %i.c
  br i1 %.not.i, label %bb.e, label %.split3.i

.split3.i:                                        ; preds = %bb.d
  %i.s = icmp eq i64 %.sroa.0.1.i, %i.c
  br i1 %i.s, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.0.1.i
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !91, !noalias !94, !noundef !4
  %i.v = icmp sgt i8 %i.u, -65
  br i1 %i.v, label %bb.g, label %bb.f

_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint.exit.thread: ; preds = %bb.c, %.loopexit.i, %_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %2, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.e, %.split3.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, i64 noundef 0, i64 noundef %.sroa.0.1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #19
  unreachable

bb.g:                                             ; preds = %bb.e, %.split3.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.0.1.i
  %i.x = sub i64 %i.c, %.sroa.0.1.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = load i64, ptr %i.y, align 8, !noundef !4 ; 2 uses
  %i.aa = add i64 %i.z, %.sroa.0.1.i
  store ptr %i.a, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.1.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.z, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.w, ptr %i.ab, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.x, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.aa, ptr %.sroa.56.0..sroa_idx, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint.exit.thread
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define noundef range(i64 0, 65537) i64 @_RNvXs8_NtCs1Rjy1FfFCsk_5rayon15range_inclusivetNtNtB5_7private19IndexedRangeInteger3len(ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(6) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i8, ptr %i.a, align 2, !range !37, !alias.scope !96, !noalias !99, !noundef !4
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  %i.e = load i16, ptr %0, align 2, !alias.scope !106, !noalias !107, !noundef !4 ; 2 uses
  %i.f = load i16, ptr %i.d, align 2, !alias.scope !108, !noalias !109, !noundef !4 ; 2 uses
  %.not.i = icmp ugt i16 %i.e, %i.f
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = sub nuw i16 %i.f, %i.e
  %i.h = zext i16 %i.g to i64
  %i.i = add nuw nsw i64 %i.h, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sink9.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i64 %.sink9.i
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvXs9_NtCs1Rjy1FfFCsk_5rayon15range_inclusivetNtNtB5_7private12RangeInteger7opt_len(ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(6) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [6 x i8], align 8                 ; 4 uses
  %i.b = alloca [4 x i8], align 2                 ; 5 uses
  %i.c = load i32, ptr %0, align 2, !alias.scope !110 ; 2 uses
  %i.d = trunc i32 %i.c to i16                    ; 3 uses
  %i.e = lshr i32 %i.c, 16                        ; 2 uses
  %i.f = trunc nuw i32 %i.e to i16                ; 4 uses
  %.not.i = icmp ugt i16 %i.d, %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i8, ptr %i.g, align 2, !range !37, !alias.scope !110
  %i.i = trunc nuw i8 %i.h to i1
  %.not = select i1 %.not.i, i1 true, i1 %i.i
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i32 %i.e, 65535
  br i1 %i.j, label %bb.d, label %bb.c, !prof !30

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i16 %i.f, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 %i.d, ptr %i.b, align 2
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i16 %i.k, ptr %i.l, align 2
  %i.m = call { i64, i64 } @_RNvXs9_NtCs1Rjy1FfFCsk_5rayon5rangetNtNtB5_7private12RangeInteger7opt_len(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = tail call i48 @_RINvYINtNtCs1Rjy1FfFCsk_5rayon5range4ItertENtNtB8_4iter16ParallelIterator5chainINtNtBH_4once4OncetEEB8_(i16 noundef %i.d, i16 noundef %i.f, i16 noundef %i.f)
  store i48 %i.n, ptr %i.a, align 8
  %i.o = call { i64, i64 } @_RNvXs_NtNtCs1Rjy1FfFCsk_5rayon4iter5chainINtB4_5ChainINtNtB8_5range4ItertEINtNtB6_4once4OncetEENtB6_16ParallelIterator7opt_lenB8_(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(6) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { i64, i64 } [ %i.o, %bb.d ], [ %i.m, %bb.c ] ; 2 uses
  %.sroa.0.0 = extractvalue { i64, i64 } %.pn, 0
  %.sroa.4.0 = extractvalue { i64, i64 } %.pn, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.sroa.4.1 = phi i64 [ %.sroa.4.0, %bb.e ], [ 0, %bb.a ]
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %bb.e ], [ 1, %bb.a ]
  %i.p = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.q = insertvalue { i64, i64 } %i.p, i64 %.sroa.4.1, 1
  ret { i64, i64 } %i.q
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs9_NtCs1Rjy1FfFCsk_5rayon3strNtB5_13BytesProducerNtNtNtB7_4iter8plumbing17UnindexedProducer5split(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i64 %2, 1                           ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %i.a ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2L_.exit.i.i
  %i.e = phi ptr [ %i.h, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2L_.exit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = phi i64 [ %i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2L_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %.val6.i.i = load i8, ptr %i.e, align 1, !alias.scope !113, !noalias !116, !noundef !4
  %i.g = icmp sgt i8 %.val6.i.i, -65
  br i1 %i.g, label %bb.b, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2L_.exit.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2L_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  %i.i = add i64 %i.f, 1
  %i.j = icmp eq ptr %i.h, %i.c
  br i1 %i.j, label %.loopexit.i, label %.lr.ph.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.k = add i64 %i.f, %i.a
  br label %_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint.exit

.loopexit.i:                                      ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2L_.exit.i.i, %bb.a
  %.not.not.not.not.i.not.i18 = icmp samesign eq i64 %i.a, 0
  br i1 %.not.not.not.not.i.not.i18, label %_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint.exit.thread, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %.not.not.not.not.i.not.i = icmp eq ptr %1, %i.m
  br i1 %.not.not.not.not.i.not.i, label %_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit.i, %bb.c
  %.sroa.01.0.i.i.i.i19 = phi i64 [ %i.o, %bb.c ], [ %i.a, %.loopexit.i ]
  %i.l = phi ptr [ %i.m, %bb.c ], [ %i.b, %.loopexit.i ]
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -1 ; 3 uses
  %.val.i.i.i.i = load i8, ptr %i.m, align 1, !alias.scope !113, !noalias !120, !noundef !4
  %i.n = icmp sgt i8 %.val.i.i.i.i, -65
  %i.o = add nsw i64 %.sroa.01.0.i.i.i.i19, -1    ; 2 uses
  br i1 %i.n, label %_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint.exit, label %bb.c

_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint.exit: ; preds = %.lr.ph, %bb.b
  %.sroa.0.1.i = phi i64 [ %i.k, %bb.b ], [ %i.o, %.lr.ph ] ; 8 uses
  %.not = icmp eq i64 %.sroa.0.1.i, 0
  br i1 %.not, label %_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint.exit.thread, label %bb.d

bb.d:                                             ; preds = %_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint.exit
  %.not.i = icmp ult i64 %.sroa.0.1.i, %2
  br i1 %.not.i, label %bb.e, label %.split3.i

.split3.i:                                        ; preds = %bb.d
  %i.p = icmp eq i64 %.sroa.0.1.i, %2
  br i1 %i.p, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1.i
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !127, !noalias !130, !noundef !4
  %i.s = icmp sgt i8 %i.r, -65
  br i1 %i.s, label %bb.g, label %bb.f

_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint.exit.thread: ; preds = %bb.c, %.loopexit.i, %_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint.exit
  store ptr %1, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.u, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.e, %.split3.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef 0, i64 noundef %.sroa.0.1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #19
  unreachable

bb.g:                                             ; preds = %bb.e, %.split3.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1.i
  %i.w = sub i64 %2, %.sroa.0.1.i
  store ptr %1, ptr %0, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.1.i, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.v, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.w, ptr %i.z, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint.exit.thread
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef range(i64 -254, 257) i64 @_RNvXsa_NtCs1Rjy1FfFCsk_5rayon15range_inclusiveaNtNtB5_7private19IndexedRangeInteger3len(ptr noalias nofree noundef readonly captures(none) dereferenceable(3) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = load i8, ptr %0, align 1, !range !37, !alias.scope !132, !noalias !135, !noundef !4
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNvXsd_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveaENtNtNtB7_6traits8iterator8Iterator9size_hintCs1Rjy1FfFCsk_5rayon.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  %i.g = load i8, ptr %i.e, align 1, !alias.scope !142, !noalias !143, !noundef !4 ; 2 uses
  %i.h = load i8, ptr %i.f, align 1, !alias.scope !144, !noalias !145, !noundef !4 ; 2 uses
  %.not.i = icmp sgt i8 %i.g, %i.h
  br i1 %.not.i, label %_RNvXsd_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveaENtNtNtB7_6traits8iterator8Iterator9size_hintCs1Rjy1FfFCsk_5rayon.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = sext i8 %i.h to i64
  %i.j = sext i8 %i.g to i64
  %i.k = sub nsw i64 %i.i, %i.j                   ; 3 uses
  %i.l = tail call i64 @llvm.uadd.sat.i64(i64 %i.k, i64 1)
  %i.m = icmp ne i64 %i.k, -1
  %i.n = add nsw i64 %i.k, 1
  %spec.select3.i = zext i1 %i.m to i64
end_hunk_0
