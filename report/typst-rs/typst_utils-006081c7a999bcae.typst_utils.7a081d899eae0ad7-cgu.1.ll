Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_utils-006081c7a999bcae.typst_utils.7a081d899eae0ad7-cgu.1?download=true
inline.NumInlined: 190
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvMNtCsatzsiS36G5T_11typst_utils4picoNtB2_7PicoStr7resolve:bb.a
  br i1 %i.q, label %bb.g, label %bb.l

bb.g:                                             ; preds = %_RNvMs9_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_6RwLockNtNtCsatzsiS36G5T_11typst_utils4pico8InternerE4readB13_.exit
  store ptr %i.s, ptr %i.a, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.u, ptr %i.v, align 8
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr nonnull @14, i64 43, ptr nonnull %i.a, ptr nonnull align 8 @15, ptr nonnull align 8 @88) #34
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_6rwlock15RwLockReadGuardNtNtCsatzsiS36G5T_11typst_utils4pico8InternerEEEB1Z_(ptr nonnull align 8 %i.a) #36
          to label %common.resume unwind label %bb.j

bb.i:                                             ; preds = %bb.g
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

common.resume:                                    ; preds = %bb.k, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.h ], [ %i.y, %bb.k ]
  resume { ptr, i32 } %common.resume.op

bb.k:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsatzsiS36G5T_11typst_utils4pico8InternerEEB1G_(ptr nonnull align 8 %i.c) #36
          to label %common.resume unwind label %bb.n

bb.l:                                             ; preds = %_RNvMs9_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_6RwLockNtNtCsatzsiS36G5T_11typst_utils4pico8InternerE4readB13_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.s, ptr %i.c, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.u, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = invoke align 8 ptr @_RNvXs0_NtNtCs3oUPovFnLWP_4core5slice5indexjINtB5_10SliceIndexSReE5indexCsatzsiS36G5T_11typst_utils(i64 %i.g, ptr align 8 %i.ab, i64 %i.ad, ptr nonnull align 8 @89) #32
          to label %_RNvXsd_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecReEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCsatzsiS36G5T_11typst_utils.exit unwind label %bb.k ; 2 uses

_RNvXsd_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecReEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCsatzsiS36G5T_11typst_utils.exit: ; preds = %bb.l
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ah = load i64, ptr %i.ag, align 8
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsatzsiS36G5T_11typst_utils4pico8InternerEEB1G_(ptr nonnull align 8 %i.c)
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %_RNvXsd_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecReEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCsatzsiS36G5T_11typst_utils.exit
  %.sroa.3.0 = phi i64 [ %i.ah, %_RNvXsd_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecReEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCsatzsiS36G5T_11typst_utils.exit ], [ %i.am, %bb.o ]
  %.sroa.0.0 = phi ptr [ %i.af, %_RNvXsd_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecReEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCsatzsiS36G5T_11typst_utils.exit ], [ %i.ak, %bb.o ]
  store i8 1, ptr %0, align 8
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0, ptr %.sroa.25.0..sroa_idx, align 8
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.3.0, ptr %.sroa.36.0..sroa_idx, align 8
  br label %bb.p

bb.n:                                             ; preds = %bb.k
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.o:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr @86, i64 %i.e ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = load i64, ptr %i.al, align 8
  br label %bb.m

bb.p:                                             ; preds = %bb.m, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define range(i64 1, 0) i64 @_RNvMNtCsatzsiS36G5T_11typst_utils4picoNtB2_7PicoStr8constant(ptr %0, i64 %1, ptr align 8 %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCsatzsiS36G5T_11typst_utils4pico7bitcode6encode(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr %0, i64 %1)
  %i.b = load i8, ptr %i.a, align 8
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.e = load i8, ptr %i.d, align 1
  %i.f = call { i64, i64 } @_RNvNtNtCsatzsiS36G5T_11typst_utils4pico10exceptions3get(ptr %0, i64 %1) ; 2 uses
  %i.g = extractvalue { i64, i64 } %i.f, 0
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %bb.f, label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %i.k = or i64 %i.j, -9223372036854775808
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.sroa.0.0.i = phi i64 [ %i.n, %bb.f ], [ %i.k, %bb.c ]
  %i.l = call i64 @_RNvMse_NtNtCs3oUPovFnLWP_4core3num7nonzeroINtB5_7NonZeroyE3newCsatzsiS36G5T_11typst_utils(i64 %.sroa.0.0.i) #32 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr nonnull align 8 @18) #35
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.m = extractvalue { i64, i64 } %i.f, 1
  %i.n = add i64 %i.m, 1
  br label %bb.d

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = trunc nuw i8 %i.e to i1
  call void @_RNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern(i1 zeroext %i.o, ptr %0, i64 %1, ptr align 8 %2) #34
  unreachable

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define double @_RNvMNtCsatzsiS36G5T_11typst_utils6scalarNtB2_6Scalar3get(double returned %0) unnamed_addr #6 {
bb.a:
  ret double %0
}

; Function Attrs: nonlazybind uwtable
define double @_RNvMNtCsatzsiS36G5T_11typst_utils6scalarNtB2_6Scalar3new(double %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core3f64d6is_nanCsatzsiS36G5T_11typst_utils(double %0) #32
  %. = select i1 %i.a, double 0.000000e+00, double %0
  ret double %.
}

; Function Attrs: nonlazybind uwtable
define double @_RNvMNtCsatzsiS36G5T_11typst_utils6scalarNtB2_6Scalar4powi(double %0, i32 %1) unnamed_addr #0 {
bb.a:
  %i.a = and i32 %1, 1
  %.not11 = icmp eq i32 %i.a, 0
  %.sroa.08.112 = select i1 %.not11, double 1.000000e+00, double %0 ; 2 uses
  %.sroa.0.0.off13 = add i32 %1, 1
  %i.b = icmp ult i32 %.sroa.0.0.off13, 3
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.08.116 = phi double [ %.sroa.08.1, %.lr.ph ], [ %.sroa.08.112, %bb.a ] ; 2 uses
  %.sroa.0.015 = phi i32 [ %i.c, %.lr.ph ], [ %1, %bb.a ]
  %.sroa.05.014 = phi double [ %i.d, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.c = sdiv i32 %.sroa.0.015, 2                 ; 3 uses
  %i.d = fmul double %.sroa.05.014, %.sroa.05.014 ; 2 uses
  %i.e = and i32 %i.c, 1
  %.not = icmp eq i32 %i.e, 0
  %i.f = fmul double %.sroa.08.116, %i.d
  %.sroa.08.1 = select i1 %.not, double %.sroa.08.116, double %i.f ; 2 uses
  %.sroa.0.0.off = add nsw i32 %i.c, 1
  %i.g = icmp ult i32 %.sroa.0.0.off, 3
  br i1 %i.g, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.08.1.lcssa = phi double [ %.sroa.08.112, %bb.a ], [ %.sroa.08.1, %.lr.ph ] ; 2 uses
  %i.h = icmp slt i32 %1, 0
  %i.i = fdiv double 1.000000e+00, %.sroa.08.1.lcssa
  %.sroa.08.2 = select i1 %i.h, double %i.i, double %.sroa.08.1.lcssa ; 2 uses
  %i.j = tail call zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core3f64d6is_nanCsatzsiS36G5T_11typst_utils(double %.sroa.08.2) #32
  %..i = select i1 %i.j, double 0.000000e+00, double %.sroa.08.2
  ret double %..i
}

; Function Attrs: nonlazybind uwtable
define double @_RNvMNtCsatzsiS36G5T_11typst_utils6scalarNtB2_6Scalar4sqrt(double %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call double @llvm.sqrt.f64(double %0) ; 2 uses
  %i.b = tail call zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core3f64d6is_nanCsatzsiS36G5T_11typst_utils(double %i.a) #32
  %..i = select i1 %i.b, double 0.000000e+00, double %i.a
  ret double %..i
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvMNtNtNtCskt5MLIAl8nl_9hashbrown7control5group4sse2NtB2_5Group44convert_special_to_empty_and_full_to_deletedCsatzsiS36G5T_11typst_utils(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 16 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 4 uses
  %i.e = alloca [16 x i8], align 16               ; 4 uses
  %i.f = load <2 x i64>, ptr %1, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store <2 x i64> zeroinitializer, ptr %i.d, align 16, !noalias !10
  call void @_RNvMs1K_NtNtCs3oUPovFnLWP_4core9core_arch3x86NtB6_7___m128i8as_i8x16CsatzsiS36G5T_11typst_utils(ptr nonnull sret([16 x i8]) align 16 %i.e, ptr nonnull align 16 %i.d) #32, !noalias !10
  %i.g = load <16 x i8>, ptr %i.e, align 16, !noalias !10
  store <2 x i64> %i.f, ptr %i.b, align 16, !noalias !10
  call void @_RNvMs1K_NtNtCs3oUPovFnLWP_4core9core_arch3x86NtB6_7___m128i8as_i8x16CsatzsiS36G5T_11typst_utils(ptr nonnull sret([16 x i8]) align 16 %i.c, ptr nonnull align 16 %i.b) #32, !noalias !10
  %i.h = load <16 x i8>, ptr %i.c, align 16, !noalias !10
  %i.i = icmp sgt <16 x i8> %i.g, %i.h
  %i.j = sext <16 x i1> %i.i to <16 x i8>
  %i.k = bitcast <16 x i8> %i.j to <2 x i64>
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsb_NtNtCs3oUPovFnLWP_4core9core_arch4simdINtB5_4SimdaKj10_E5splatCscb9PBP19vM_15crossbeam_utils(ptr nonnull sret([16 x i8]) align 16 %i.a, i8 -128) #32
  %i.l = load <2 x i64>, ptr %i.a, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = or <2 x i64> %i.l, %i.k
  store <2 x i64> %i.m, ptr %0, align 16
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMs0_NtCsatzsiS36G5T_11typst_utils4picoNtB5_15ResolvedPicoStr6as_str(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8
  %i.g = insertvalue { ptr, i64 } poison, ptr %i.d, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %i.f, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.k = load i8, ptr %i.j, align 1
  %i.l = zext i8 %i.k to i64
  %i.m = tail call { ptr, i64 } @_RNvXsd_NtCs3oUPovFnLWP_4core5arrayAhjc_INtNtNtB7_3ops5index5IndexINtNtBG_5range7RangeTojEE5indexCsatzsiS36G5T_11typst_utils(ptr nonnull %i.i, i64 %i.l, ptr nonnull align 8 @91) #32 ; 2 uses
  %i.n = extractvalue { ptr, i64 } %i.m, 0
  %i.o = extractvalue { ptr, i64 } %i.m, 1
  %i.p = tail call { ptr, i64 } @_RNvNtNtCs3oUPovFnLWP_4core3str8converts19from_utf8_uncheckedCsatzsiS36G5T_11typst_utils(ptr %i.n, i64 %i.o) #32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.merged = phi { ptr, i64 } [ %i.h, %bb.b ], [ %i.p, %bb.c ]
  ret { ptr, i64 } %.merged
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef nonnull ptr @_RNvMs0_NtNtCs3oUPovFnLWP_4core3ptr8non_nullINtB5_7NonNulljE8danglingCsatzsiS36G5T_11typst_utils() unnamed_addr #4 {
bb.a:
  ret ptr inttoptr (i64 8 to ptr)
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i64, i64 } @_RNvMs1_NtCs3oUPovFnLWP_4core3numx11checked_addCsatzsiS36G5T_11typst_utils(i64 %0, i64 %1) unnamed_addr #4 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %0, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = extractvalue { i64, i1 } %i.a, 0
  %not. = xor i1 %i.b, true
  %.sroa.0.0 = zext i1 %not. to i64
  %i.d = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.e = insertvalue { i64, i64 } %i.d, i64 %i.c, 1
  ret { i64, i64 } %i.e
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i64, i64 } @_RNvMs1_NtCs3oUPovFnLWP_4core3numx11checked_mulCsatzsiS36G5T_11typst_utils(i64 %0, i64 %1) unnamed_addr #4 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %0, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = extractvalue { i64, i1 } %i.a, 0
  %not. = xor i1 %i.b, true
  %.sroa.0.0 = zext i1 %not. to i64
  %i.d = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.e = insertvalue { i64, i64 } %i.d, i64 %i.c, 1
  ret { i64, i64 } %i.e
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(none) uwtable
define hidden { i64, i64 } @_RNvMs1_NtCs3oUPovFnLWP_4core3numx11checked_powCsatzsiS36G5T_11typst_utils(i64 %0, i32 %1) unnamed_addr #7 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %.loopexit, label %.preheader52

.loopexit:                                        ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.sroa.14.0 = phi i64 [ 1, %bb.a ], [ undef, %bb.d ], [ undef, %bb.b ], [ %i.g, %bb.c ]
  %.sroa.026.0 = phi i64 [ 1, %bb.a ], [ 0, %bb.d ], [ 0, %bb.b ], [ 1, %bb.c ]
  %i.b = insertvalue { i64, i64 } poison, i64 %.sroa.026.0, 0
  %i.c = insertvalue { i64, i64 } %i.b, i64 %.sroa.14.0, 1
  ret { i64, i64 } %i.c

.preheader52:                                     ; preds = %bb.a, %bb.e
  %.sroa.034.0 = phi i64 [ %.sroa.034.1, %bb.e ], [ 1, %bb.a ] ; 2 uses
  %.sroa.016.0 = phi i32 [ %i.l, %bb.e ], [ %1, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi i64 [ %i.k, %bb.e ], [ %0, %bb.a ] ; 3 uses
  %i.d = and i32 %.sroa.016.0, 1
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.preheader52
  %i.e = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.034.0, i64 %.sroa.0.0) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  br i1 %i.f, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = extractvalue { i64, i1 } %i.e, 0         ; 2 uses
  %i.h = icmp eq i32 %.sroa.016.0, 1
  br i1 %i.h, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c, %.preheader52
  %.sroa.034.1 = phi i64 [ %i.g, %bb.c ], [ %.sroa.034.0, %.preheader52 ]
  %i.i = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.0.0, i64 %.sroa.0.0) ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 1
  br i1 %i.j, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = extractvalue { i64, i1 } %i.i, 0
  %i.l = lshr i32 %.sroa.016.0, 1
  br label %.preheader52
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden range(i64 0, -9223372036854775807) i64 @_RNvMs1_NtCs3oUPovFnLWP_4core3numx3absCsatzsiS36G5T_11typst_utils(i64 %0) unnamed_addr #4 {
bb.a:
  %.sroa.0.0 = tail call i64 @llvm.abs.i64(i64 %0, i1 false)
  ret i64 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define i64 @_RNvMs2_NtNtNtCsaL1QbXo9JQH_3std11collections4hash3mapINtB5_7HashMapReNtNtCsatzsiS36G5T_11typst_utils4pico7PicoStrNtCs87aT6TjYOVO_10rustc_hash13FxBuildHasherE6insertB19_(ptr align 8 %0, ptr %1, i64 %2, i64 %3) unnamed_addr #1 {
bb.a:
  %i.a = tail call i64 @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapReNtNtCsatzsiS36G5T_11typst_utils4pico7PicoStrNtCs87aT6TjYOVO_10rustc_hash13FxBuildHasherE6insertBT_(ptr align 8 %0, ptr %1, i64 %2, i64 %3)
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define align 8 ptr @_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE10header_mutCsatzsiS36G5T_11typst_utils(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE10reallocateCsatzsiS36G5T_11typst_utils(ptr nofree align 8 captures(none) %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.c, @_RNvCslnPB5LbcFkI_8thin_vec12EMPTY_HEADER
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @_RINvCslnPB5LbcFkI_8thin_vec20header_with_capacityjECsatzsiS36G5T_11typst_utils(i64 %1, i1 zeroext poison)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call i64 @_RNvMs0_CslnPB5LbcFkI_8thin_vecNtB5_6Header3cap(ptr align 8 %i.c)
  %i.f = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.g = tail call i64 @_RINvNtCs3oUPovFnLWP_4core3cmp3maxjECslnPB5LbcFkI_8thin_vec(i64 8, i64 8) #32
  call void @_RNvXs3_NtCs3oUPovFnLWP_4core7convertjINtB5_7TryIntoiE8try_intoCslnPB5LbcFkI_8thin_vec(ptr nonnull sret([16 x i8]) align 8 %i.b, i64 %i.e) #32
  %i.h = call i64 @_RNvXs_CslnPB5LbcFkI_8thin_vecINtNtCs3oUPovFnLWP_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowB4_(ptr nonnull align 8 %i.b) ; 2 uses
  %i.i = add i64 %i.h, 1152921504606846976
  %i.j = icmp ult i64 %i.i, 2305843009213693952
  %i.k = shl i64 %i.h, 3
  %.sroa.0.0.i1.i.i = zext i1 %i.j to i64
  %i.l = call i64 @_RNvXCslnPB5LbcFkI_8thin_vecINtNtCs3oUPovFnLWP_4core6option6OptioniEINtB2_17UnwrapCapOverflowiE19unwrap_cap_overflowB2_(i64 %.sroa.0.0.i1.i.i, i64 %i.k)
  %i.m = call i64 @llvm.umax.i64(i64 %i.g, i64 16)
  %i.n = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.l, i64 range(i64 16, 0) %i.m) ; 2 uses
  %i.o = extractvalue { i64, i1 } %i.n, 1
  %i.p = extractvalue { i64, i1 } %i.n, 0
  %not..i.i.i = xor i1 %i.o, true
  %.sroa.0.0.i2.i.i = zext i1 %not..i.i.i to i64
  %i.q = call i64 @_RNvXCslnPB5LbcFkI_8thin_vecINtNtCs3oUPovFnLWP_4core6option6OptioniEINtB2_17UnwrapCapOverflowiE19unwrap_cap_overflowB2_(i64 %.sroa.0.0.i2.i.i, i64 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.r = call i64 @_RINvNtCs3oUPovFnLWP_4core3cmp3maxjECslnPB5LbcFkI_8thin_vec(i64 8, i64 8) #32
  %i.s = call { i64, i64 } @_RNvMNtNtCs3oUPovFnLWP_4core5alloc6layoutNtB2_6Layout25from_size_align_uncheckedCsatzsiS36G5T_11typst_utils(i64 %i.q, i64 %i.r, ptr nonnull align 8 @2) #32 ; 2 uses
  %i.t = extractvalue { i64, i64 } %i.s, 0
  %i.u = extractvalue { i64, i64 } %i.s, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.v = call i64 @_RINvNtCs3oUPovFnLWP_4core3cmp3maxjECslnPB5LbcFkI_8thin_vec(i64 8, i64 8) #32
  call void @_RNvXs3_NtCs3oUPovFnLWP_4core7convertjINtB5_7TryIntoiE8try_intoCslnPB5LbcFkI_8thin_vec(ptr nonnull sret([16 x i8]) align 8 %i.a, i64 %1) #32
  %i.w = call i64 @_RNvXs_CslnPB5LbcFkI_8thin_vecINtNtCs3oUPovFnLWP_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowB4_(ptr nonnull align 8 %i.a) ; 2 uses
  %i.x = add i64 %i.w, 1152921504606846976
  %i.y = icmp ult i64 %i.x, 2305843009213693952
  %i.z = shl i64 %i.w, 3
  %.sroa.0.0.i1.i = zext i1 %i.y to i64
  %i.aa = call i64 @_RNvXCslnPB5LbcFkI_8thin_vecINtNtCs3oUPovFnLWP_4core6option6OptioniEINtB2_17UnwrapCapOverflowiE19unwrap_cap_overflowB2_(i64 %.sroa.0.0.i1.i, i64 %i.z)
  %i.ab = call i64 @llvm.umax.i64(i64 %i.v, i64 16)
  %i.ac = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.aa, i64 range(i64 16, 0) %i.ab) ; 2 uses
  %i.ad = extractvalue { i64, i1 } %i.ac, 1
  %i.ae = extractvalue { i64, i1 } %i.ac, 0
  %not..i.i = xor i1 %i.ad, true
  %.sroa.0.0.i2.i = zext i1 %not..i.i to i64
  %i.af = call i64 @_RNvXCslnPB5LbcFkI_8thin_vecINtNtCs3oUPovFnLWP_4core6option6OptioniEINtB2_17UnwrapCapOverflowiE19unwrap_cap_overflowB2_(i64 %.sroa.0.0.i2.i, i64 %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ag = call noalias ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr %i.f, i64 %i.u, i64 %i.t, i64 %i.af) #33 ; 3 uses
  %i.ah = call zeroext i1 @_RNvMNtNtCs3oUPovFnLWP_4core3ptr7mut_ptrONtCslnPB5LbcFkI_8thin_vec6Header7is_nullBE_(ptr %i.ag) #32
end_hunk_0
begin_hunk_1_@_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE3ptrCsatzsiS36G5T_11typst_utils:bb.a
; Function Attrs: nonlazybind uwtable
define void @_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE4pushCsatzsiS36G5T_11typst_utils(ptr nofree align 8 captures(none) %0, i64 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.val.i = load i64, ptr %i.a, align 8
  %i.b = tail call i64 @_RNvMs0_CslnPB5LbcFkI_8thin_vecNtB5_6Header3cap(ptr nonnull align 8 %i.a)
  %i.c = icmp eq i64 %.val.i, %i.b
  br i1 %i.c, label %bb.d, label %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE7reserveCsatzsiS36G5T_11typst_utils.exit

_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE7reserveCsatzsiS36G5T_11typst_utils.exit: ; preds = %bb.e, %bb.d, %bb.a
  %i.d = load ptr, ptr %0, align 8
  %.val.i.i = load i64, ptr %i.d, align 8         ; 2 uses
  %i.e = tail call i64 @_RINvNtCs3oUPovFnLWP_4core3cmp3maxjECslnPB5LbcFkI_8thin_vec(i64 8, i64 8) #32 ; 2 uses
  %i.f = icmp ult i64 %i.e, 17
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE7reserveCsatzsiS36G5T_11typst_utils.exit
  %i.g = load ptr, ptr %0, align 8
  %i.h = tail call i64 @_RNvMs0_CslnPB5LbcFkI_8thin_vecNtB5_6Header3cap(ptr align 8 %i.g)
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE14push_uncheckedCsatzsiS36G5T_11typst_utils.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE7reserveCsatzsiS36G5T_11typst_utils.exit
  %i.j = load ptr, ptr %0, align 8
  %i.k = tail call i64 @llvm.umax.i64(i64 %i.e, i64 16)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  br label %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE14push_uncheckedCsatzsiS36G5T_11typst_utils.exit

_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE14push_uncheckedCsatzsiS36G5T_11typst_utils.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i.i = phi ptr [ %i.l, %bb.c ], [ inttoptr (i64 8 to ptr), %bb.b ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i, i64 %.val.i.i
  store i64 %1, ptr %i.m, align 8
  %i.n = add i64 %.val.i.i, 1
  %i.o = load ptr, ptr %0, align 8
  store i64 %i.n, ptr %i.o, align 8
  ret void

bb.d:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %0, align 8                ; 2 uses
  %.val.i.i1 = load i64, ptr %i.p, align 8        ; 2 uses
  %i.q = tail call i64 @_RNvMs0_CslnPB5LbcFkI_8thin_vecNtB5_6Header3cap(ptr nonnull align 8 %i.p) ; 4 uses
  %i.r = add i64 %.val.i.i1, 1
  %i.s = icmp ne i64 %.val.i.i1, -1
  %..i.i = zext i1 %i.s to i64
  %i.t = tail call i64 @_RNvXCslnPB5LbcFkI_8thin_vecINtNtCs3oUPovFnLWP_4core6option6OptionjEINtB2_17UnwrapCapOverflowjE19unwrap_cap_overflowB2_(i64 %..i.i, i64 %i.r) ; 2 uses
  %.not.i = icmp ugt i64 %i.t, %i.q
  br i1 %.not.i, label %bb.e, label %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE7reserveCsatzsiS36G5T_11typst_utils.exit

bb.e:                                             ; preds = %bb.d
  %i.u = icmp eq i64 %i.q, 0
  %i.v = shl i64 %i.q, 1
  %.inv.i.i = icmp sgt i64 %i.q, -1
  %.sroa.0.0.i.i2 = select i1 %.inv.i.i, i64 %i.v, i64 -1
  %.sroa.0.0.i = select i1 %i.u, i64 4, i64 %.sroa.0.0.i.i2
  %i.w = tail call i64 @_RINvNtCs3oUPovFnLWP_4core3cmp3maxjECslnPB5LbcFkI_8thin_vec(i64 %i.t, i64 %.sroa.0.0.i) #32
  tail call void @_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE10reallocateCsatzsiS36G5T_11typst_utils(ptr nonnull align 8 %0, i64 %i.w)
  br label %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE7reserveCsatzsiS36G5T_11typst_utils.exit
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define align 8 ptr @_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE6headerCsatzsiS36G5T_11typst_utils(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE7reserveCsatzsiS36G5T_11typst_utils(ptr nofree align 8 captures(none) %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.val.i = load i64, ptr %i.a, align 8           ; 2 uses
  %i.b = tail call i64 @_RNvMs0_CslnPB5LbcFkI_8thin_vecNtB5_6Header3cap(ptr nonnull align 8 %i.a) ; 4 uses
  %i.c = add i64 %.val.i, %1                      ; 2 uses
  %i.d = icmp uge i64 %i.c, %.val.i
  %..i = zext i1 %i.d to i64
  %i.e = tail call i64 @_RNvXCslnPB5LbcFkI_8thin_vecINtNtCs3oUPovFnLWP_4core6option6OptionjEINtB2_17UnwrapCapOverflowjE19unwrap_cap_overflowB2_(i64 %..i, i64 %i.c) ; 2 uses
  %.not = icmp ugt i64 %i.e, %i.b
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.b, 0
  %i.g = shl i64 %i.b, 1
  %.inv.i = icmp sgt i64 %i.b, -1
  %.sroa.0.0.i = select i1 %.inv.i, i64 %i.g, i64 -1
  %.sroa.0.0 = select i1 %i.f, i64 4, i64 %.sroa.0.0.i
  %i.h = tail call i64 @_RINvNtCs3oUPovFnLWP_4core3cmp3maxjECslnPB5LbcFkI_8thin_vec(i64 %i.e, i64 %.sroa.0.0) #32
  tail call void @_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE10reallocateCsatzsiS36G5T_11typst_utils(ptr nonnull align 8 %0, i64 %i.h)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8as_sliceCsatzsiS36G5T_11typst_utils(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @_RINvNtCs3oUPovFnLWP_4core3cmp3maxjECslnPB5LbcFkI_8thin_vec(i64 8, i64 8) #32 ; 2 uses
  %i.b = icmp ult i64 %i.a, 17
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8
  %i.d = tail call i64 @_RNvMs0_CslnPB5LbcFkI_8thin_vecNtB5_6Header3cap(ptr align 8 %i.c)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %._RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit_crit_edge, label %bb.c

._RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit_crit_edge: ; preds = %bb.b
  %.pre = load ptr, ptr %0, align 8
  br label %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load ptr, ptr %0, align 8                ; 2 uses
  %i.g = tail call i64 @llvm.umax.i64(i64 %i.a, i64 16)
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g
  br label %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit

_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit: ; preds = %._RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit_crit_edge, %bb.c
  %i.i = phi ptr [ %i.f, %bb.c ], [ %.pre, %._RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit_crit_edge ]
  %.sroa.0.0.i = phi ptr [ %i.h, %bb.c ], [ inttoptr (i64 8 to ptr), %._RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit_crit_edge ]
  %.val.i = load i64, ptr %i.i, align 8
  %i.j = tail call { ptr, i64 } @_RINvNtNtCs3oUPovFnLWP_4core5slice3raw14from_raw_partsjECsatzsiS36G5T_11typst_utils(ptr nonnull %.sroa.0.0.i, i64 %.val.i, ptr nonnull align 8 @95) #32
  ret { ptr, i64 } %i.j
}

; Function Attrs: nonlazybind uwtable
define i64 @_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8capacityCsatzsiS36G5T_11typst_utils(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call i64 @_RNvMs0_CslnPB5LbcFkI_8thin_vecNtB5_6Header3cap(ptr align 8 %i.a)
  ret i64 %i.b
}

; Function Attrs: nonlazybind uwtable
define nonnull ptr @_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @_RINvNtCs3oUPovFnLWP_4core3cmp3maxjECslnPB5LbcFkI_8thin_vec(i64 8, i64 8) #32 ; 2 uses
  %i.b = icmp ult i64 %i.a, 17
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8
  %i.d = tail call i64 @_RNvMs0_CslnPB5LbcFkI_8thin_vecNtB5_6Header3cap(ptr align 8 %i.c)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load ptr, ptr %0, align 8
  %i.g = tail call i64 @llvm.umax.i64(i64 %i.a, i64 16)
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.0.0 = phi ptr [ %i.h, %bb.c ], [ inttoptr (i64 8 to ptr), %bb.b ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8truncateCsatzsiS36G5T_11typst_utils(ptr nofree readonly align 8 captures(none) %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.val.i2 = load i64, ptr %i.a, align 8          ; 2 uses
  %i.b = icmp ult i64 %1, %.val.i2
  br i1 %i.b, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit
  %.val.i3 = phi i64 [ %.val.i, %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit ], [ %.val.i2, %bb.a ]
  %i.c = phi ptr [ %i.i, %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit ], [ %i.a, %bb.a ]
  %i.d = add i64 %.val.i3, -1
  store i64 %i.d, ptr %i.c, align 8
  %i.e = tail call i64 @_RINvNtCs3oUPovFnLWP_4core3cmp3maxjECslnPB5LbcFkI_8thin_vec(i64 8, i64 8) #32
  %i.f = icmp ult i64 %i.e, 17
  br i1 %i.f, label %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = load ptr, ptr %0, align 8
  %i.h = tail call i64 @_RNvMs0_CslnPB5LbcFkI_8thin_vecNtB5_6Header3cap(ptr align 8 %i.g) ; 0 uses
  br label %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit

_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit: ; preds = %bb.b, %.lr.ph
  %i.i = load ptr, ptr %0, align 8                ; 2 uses
  %.val.i = load i64, ptr %i.i, align 8           ; 2 uses
  %i.j = icmp ult i64 %1, %.val.i
  br i1 %i.j, label %.lr.ph, label %._crit_edge
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvMs3_NtNtNtCsl9Fzn6kz1og_15portable_atomic3imp9atomic1286x86_64NtB5_10AtomicU1283newCsatzsiS36G5T_11typst_utils(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0, i128 %1) unnamed_addr #5 {
bb.a:
  store i128 %1, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i128 @_RNvMs3_NtNtNtCsl9Fzn6kz1og_15portable_atomic3imp9atomic1286x86_64NtB5_10AtomicU1284loadCsatzsiS36G5T_11typst_utils(ptr align 16 %0, i8 %1) unnamed_addr #1 {
bb.a:
  tail call void @_RNvNtCsl9Fzn6kz1og_15portable_atomic5utils20assert_load_orderingCsatzsiS36G5T_11typst_utils(i8 %1) #32
  %i.a = tail call ptr @_RNvMs3_NtNtCs3oUPovFnLWP_4core4sync6atomicINtB5_6AtomicOuE4loadCsatzsiS36G5T_11typst_utils(ptr nonnull align 8 @_RNvNvNtNtNtCsl9Fzn6kz1og_15portable_atomic3imp9atomic1286x86_6411atomic_load4FUNC, i8 0) #32
  %i.b = tail call i128 %i.a(ptr %0), !inline_history !11
  ret i128 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE6resizeCsatzsiS36G5T_11typst_utils(ptr nofree align 8 captures(none) %0, i64 %1, i64 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8                ; 3 uses
  %.val.i = load i64, ptr %i.b, align 8           ; 4 uses
  %i.c = icmp ugt i64 %1, %.val.i
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %1, %.val.i
  br i1 %i.d, label %.lr.ph.i, label %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8truncateCsatzsiS36G5T_11typst_utils.exit

bb.c:                                             ; preds = %bb.a
  %i.e = sub nuw i64 %1, %.val.i
  %i.f = tail call i64 @_RNvMs0_CslnPB5LbcFkI_8thin_vecNtB5_6Header3cap(ptr nonnull align 8 %i.b) ; 4 uses
  %i.g = tail call i64 @_RNvXCslnPB5LbcFkI_8thin_vecINtNtCs3oUPovFnLWP_4core6option6OptionjEINtB2_17UnwrapCapOverflowjE19unwrap_cap_overflowB2_(i64 1, i64 %1) ; 2 uses
  %.not.i = icmp ugt i64 %i.g, %i.f
  br i1 %.not.i, label %bb.d, label %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE7reserveCsatzsiS36G5T_11typst_utils.exit

bb.d:                                             ; preds = %bb.c
  %i.h = icmp eq i64 %i.f, 0
  %i.i = shl i64 %i.f, 1
  %.inv.i.i = icmp sgt i64 %i.f, -1
  %.sroa.0.0.i.i = select i1 %.inv.i.i, i64 %i.i, i64 -1
  %.sroa.0.0.i = select i1 %i.h, i64 4, i64 %.sroa.0.0.i.i
  %i.j = tail call i64 @_RINvNtCs3oUPovFnLWP_4core3cmp3maxjECslnPB5LbcFkI_8thin_vec(i64 %i.g, i64 %.sroa.0.0.i) #32
  tail call void @_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE10reallocateCsatzsiS36G5T_11typst_utils(ptr nonnull align 8 %0, i64 %i.j)
  br label %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE7reserveCsatzsiS36G5T_11typst_utils.exit

_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE7reserveCsatzsiS36G5T_11typst_utils.exit: ; preds = %bb.c, %bb.d
  %i.k = tail call { i64, i64 } @_RNvXNtNtNtCs3oUPovFnLWP_4core4iter6traits7collectINtNtNtB8_3ops5range5RangejENtB2_12IntoIterator9into_iterCs6fqsdctdrJG_6semver(i64 1, i64 %i.e) #32 ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0
  %i.m = extractvalue { i64, i64 } %i.k, 1
  store i64 %i.l, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = call { i64, i64 } @_RNvXs4_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCs6fqsdctdrJG_6semver(ptr nonnull align 8 %i.a) #32
  %i.p = extractvalue { i64, i64 } %i.o, 0
  %i.q = trunc nuw i64 %i.p to i1
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.b, %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit.i
  %.val.i3.i = phi i64 [ %.val.i.i3, %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit.i ], [ %.val.i, %bb.b ]
  %i.r = phi ptr [ %i.x, %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit.i ], [ %i.b, %bb.b ]
  %i.s = add i64 %.val.i3.i, -1
  store i64 %i.s, ptr %i.r, align 8
  %i.t = tail call i64 @_RINvNtCs3oUPovFnLWP_4core3cmp3maxjECslnPB5LbcFkI_8thin_vec(i64 8, i64 8) #32
  %i.u = icmp ult i64 %i.t, 17
  br i1 %i.u, label %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.v = load ptr, ptr %0, align 8
  %i.w = tail call i64 @_RNvMs0_CslnPB5LbcFkI_8thin_vecNtB5_6Header3cap(ptr align 8 %i.v) ; 0 uses
  br label %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit.i

_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit.i: ; preds = %bb.e, %.lr.ph.i
  %i.x = load ptr, ptr %0, align 8                ; 2 uses
  %.val.i.i3 = load i64, ptr %i.x, align 8        ; 2 uses
  %i.y = icmp ult i64 %1, %.val.i.i3
  br i1 %i.y, label %.lr.ph.i, label %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8truncateCsatzsiS36G5T_11typst_utils.exit

.lr.ph:                                           ; preds = %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE7reserveCsatzsiS36G5T_11typst_utils.exit, %.lr.ph
  call void @_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE4pushCsatzsiS36G5T_11typst_utils(ptr nonnull align 8 %0, i64 %2)
  %i.z = call { i64, i64 } @_RNvXs4_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCs6fqsdctdrJG_6semver(ptr nonnull align 8 %i.a) #32
  %i.aa = extractvalue { i64, i64 } %i.z, 0
  %i.ab = trunc nuw i64 %i.aa to i1
  br i1 %i.ab, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE7reserveCsatzsiS36G5T_11typst_utils.exit
  call void @_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE4pushCsatzsiS36G5T_11typst_utils(ptr nonnull align 8 %0, i64 %2)
  br label %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8truncateCsatzsiS36G5T_11typst_utils.exit

_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8truncateCsatzsiS36G5T_11typst_utils.exit: ; preds = %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit.i, %bb.b, %._crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i64 } @_RNvMs7_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxeE4leakCsatzsiS36G5T_11typst_utils(ptr %0, i64 %1) unnamed_addr #4 {
bb.a:
  %i.a = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.b = insertvalue { ptr, i64 } %i.a, i64 %1, 1
  ret { ptr, i64 } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMs8_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_6RwLockNtNtCsatzsiS36G5T_11typst_utils4pico8InternerE3newB13_(ptr nofree writeonly sret([72 x i8]) align 8 captures(none) initializes((0, 9), (16, 72)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  store i64 0, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMs9_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_6RwLockNtNtCsatzsiS36G5T_11typst_utils4pico8InternerE4readB13_(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic11atomic_loadmKb0_ECscb9PBP19vM_15crossbeam_utils(ptr align 4 %1, i8 0) #32 ; 3 uses
  %or.cond3.i = icmp ult i32 %i.a, 1073741822
  br i1 %or.cond3.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i32 %i.a, 1
  %i.c = tail call { i32, i32 } @_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic28atomic_compare_exchange_weakmECsatzsiS36G5T_11typst_utils(ptr align 4 %1, i32 %i.a, i32 %i.b, i8 2, i8 0) #32
  %i.d = extractvalue { i32, i32 } %i.c, 0
  %.not2.i = icmp eq i32 %i.d, 0
  br i1 %.not2.i, label %_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock4readCsatzsiS36G5T_11typst_utils.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock14read_contended(ptr align 4 %1)
  br label %_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock4readCsatzsiS36G5T_11typst_utils.exit

_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock4readCsatzsiS36G5T_11typst_utils.exit: ; preds = %bb.b, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = tail call i8 @_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic11atomic_loadhKb0_ECscb9PBP19vM_15crossbeam_utils(ptr nonnull %i.e, i8 0) #32
  %.not.i = icmp ne i8 %i.f, 0
  tail call void @_RINvNtNtCsaL1QbXo9JQH_3std4sync6poison10map_resultuINtNtB2_6rwlock15RwLockReadGuardNtNtCsatzsiS36G5T_11typst_utils4pico8InternerENCNvMsd_BQ_BN_3new0EB1n_(ptr sret([24 x i8]) align 8 %0, i1 zeroext %.not.i, ptr align 8 %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMs9_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_6RwLockNtNtCsatzsiS36G5T_11typst_utils4pico8InternerE5writeB13_(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { i32, i32 } @_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic28atomic_compare_exchange_weakmECsatzsiS36G5T_11typst_utils(ptr %1, i32 0, i32 1073741823, i8 2, i8 0) #32
  %i.b = extractvalue { i32, i32 } %i.a, 0
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock15write_contended(ptr align 4 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = tail call { i1, i8 } @_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag5guardCsatzsiS36G5T_11typst_utils(ptr nonnull %i.c) #32 ; 2 uses
  %i.e = extractvalue { i1, i8 } %i.d, 0
  %i.f = extractvalue { i1, i8 } %i.d, 1
  tail call void @_RINvNtNtCsaL1QbXo9JQH_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_6rwlock16RwLockWriteGuardNtNtCsatzsiS36G5T_11typst_utils4pico8InternerENCNvMse_B10_BX_3new0EB1y_(ptr sret([24 x i8]) align 8 %0, i1 zeroext %i.e, i8 %i.f, ptr align 8 %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecReE4pushCsatzsiS36G5T_11typst_utils(ptr align 8 %0, ptr nofree readonly captures(address, read_provenance) %1, i64 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecReE8push_mutCsatzsiS36G5T_11typst_utils.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecReE8grow_oneCsatzsiS36G5T_11typst_utils(ptr nonnull align 8 %0) #38
  br label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecReE8push_mutCsatzsiS36G5T_11typst_utils.exit

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecReE8push_mutCsatzsiS36G5T_11typst_utils.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.b ; 2 uses
  store ptr %1, ptr %i.g, align 8, !captures !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %2, ptr %i.h, align 8
  %i.i = add i64 %i.b, 1
  store i64 %i.i, ptr %i.a, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define align 8 ptr @_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecReE8push_mutCsatzsiS36G5T_11typst_utils(ptr align 8 %0, ptr nofree readonly captures(address, read_provenance) %1, i64 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecReE8grow_oneCsatzsiS36G5T_11typst_utils(ptr nonnull align 8 %0) #38
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.b ; 3 uses
  store ptr %1, ptr %i.g, align 8, !captures !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %2, ptr %i.h, align 8
  %i.i = add i64 %i.b, 1
  store i64 %i.i, ptr %i.a, align 8
  ret ptr %i.g
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define i64 @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecReE3lenCsatzsiS36G5T_11typst_utils(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 {
end_hunk_1
begin_hunk_2_@_RNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern:bb.a
  store i8 114, ptr %i.lo, align 1
  %i.lp = load i64, ptr %i.g, align 8
  %i.lq = add i64 %i.lp, 1                        ; 4 uses
  store i64 %i.lq, ptr %i.g, align 8
  %i.lr = icmp ult i64 %i.lq, 512
  br i1 %i.lr, label %.lr.ph.i33.10, label %_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit36

.lr.ph.i33.10:                                    ; preds = %.lr.ph.i33.9
  %i.ls = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.lq
  store i8 110, ptr %i.ls, align 1
  %i.lt = load i64, ptr %i.g, align 8
  %i.lu = add i64 %i.lt, 1                        ; 4 uses
  store i64 %i.lu, ptr %i.g, align 8
  %i.lv = icmp ult i64 %i.lu, 512
  br i1 %i.lv, label %.lr.ph.i33.11, label %_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit36

.lr.ph.i33.11:                                    ; preds = %.lr.ph.i33.10
  %i.lw = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.lu
  store i8 32, ptr %i.lw, align 1
  %i.lx = load i64, ptr %i.g, align 8
  %i.ly = add i64 %i.lx, 1                        ; 4 uses
  store i64 %i.ly, ptr %i.g, align 8
  %i.lz = icmp ult i64 %i.ly, 512
  br i1 %i.lz, label %.lr.ph.i33.12, label %_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit36

.lr.ph.i33.12:                                    ; preds = %.lr.ph.i33.11
  %i.ma = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ly
  store i8 108, ptr %i.ma, align 1
  %i.mb = load i64, ptr %i.g, align 8
  %i.mc = add i64 %i.mb, 1                        ; 4 uses
  store i64 %i.mc, ptr %i.g, align 8
  %i.md = icmp ult i64 %i.mc, 512
  br i1 %i.md, label %.lr.ph.i33.13, label %_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit36

.lr.ph.i33.13:                                    ; preds = %.lr.ph.i33.12
  %i.me = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.mc
  store i8 111, ptr %i.me, align 1
  %i.mf = load i64, ptr %i.g, align 8
  %i.mg = add i64 %i.mf, 1                        ; 4 uses
  store i64 %i.mg, ptr %i.g, align 8
  %i.mh = icmp ult i64 %i.mg, 512
  br i1 %i.mh, label %.lr.ph.i33.14, label %_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit36

.lr.ph.i33.14:                                    ; preds = %.lr.ph.i33.13
  %i.mi = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.mg
  store i8 110, ptr %i.mi, align 1
  %i.mj = load i64, ptr %i.g, align 8
  %i.mk = add i64 %i.mj, 1                        ; 4 uses
  store i64 %i.mk, ptr %i.g, align 8
  %i.ml = icmp ult i64 %i.mk, 512
  br i1 %i.ml, label %.lr.ph.i33.15, label %_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit36

.lr.ph.i33.15:                                    ; preds = %.lr.ph.i33.14
  %i.mm = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.mk
  store i8 103, ptr %i.mm, align 1
  %i.mn = load i64, ptr %i.g, align 8
  %i.mo = add i64 %i.mn, 1                        ; 4 uses
  store i64 %i.mo, ptr %i.g, align 8
  %i.mp = icmp ult i64 %i.mo, 512
  br i1 %i.mp, label %.lr.ph.i33.16, label %_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit36

.lr.ph.i33.16:                                    ; preds = %.lr.ph.i33.15
  %i.mq = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.mo
  store i8 101, ptr %i.mq, align 1
  %i.mr = load i64, ptr %i.g, align 8
  %i.ms = add i64 %i.mr, 1                        ; 4 uses
  store i64 %i.ms, ptr %i.g, align 8
  %i.mt = icmp ult i64 %i.ms, 512
  br i1 %i.mt, label %.lr.ph.i33.17, label %_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit36

.lr.ph.i33.17:                                    ; preds = %.lr.ph.i33.16
  %i.mu = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ms
  store i8 114, ptr %i.mu, align 1
  %i.mv = load i64, ptr %i.g, align 8
  %i.mw = add i64 %i.mv, 1                        ; 4 uses
  store i64 %i.mw, ptr %i.g, align 8
  %i.mx = icmp ult i64 %i.mw, 512
  br i1 %i.mx, label %.lr.ph.i33.18, label %_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit36

.lr.ph.i33.18:                                    ; preds = %.lr.ph.i33.17
  %i.my = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.mw
  store i8 32, ptr %i.my, align 1
  %i.mz = load i64, ptr %i.g, align 8
  %i.na = add i64 %i.mz, 1                        ; 4 uses
  store i64 %i.na, ptr %i.g, align 8
  %i.nb = icmp ult i64 %i.na, 512
  br i1 %i.nb, label %.lr.ph.i33.19, label %_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit36

.lr.ph.i33.19:                                    ; preds = %.lr.ph.i33.18
  %i.nc = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.na
  store i8 115, ptr %i.nc, align 1
  %i.nd = load i64, ptr %i.g, align 8
  %i.ne = add i64 %i.nd, 1                        ; 4 uses
  store i64 %i.ne, ptr %i.g, align 8
  %i.nf = icmp ult i64 %i.ne, 512
  br i1 %i.nf, label %.lr.ph.i33.20, label %_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit36

.lr.ph.i33.20:                                    ; preds = %.lr.ph.i33.19
  %i.ng = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ne
  store i8 116, ptr %i.ng, align 1
  %i.nh = load i64, ptr %i.g, align 8
  %i.ni = add i64 %i.nh, 1                        ; 4 uses
  store i64 %i.ni, ptr %i.g, align 8
  %i.nj = icmp ult i64 %i.ni, 512
  br i1 %i.nj, label %.lr.ph.i33.21, label %_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit36

.lr.ph.i33.21:                                    ; preds = %.lr.ph.i33.20
  %i.nk = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ni
  store i8 114, ptr %i.nk, align 1
  %i.nl = load i64, ptr %i.g, align 8
  %i.nm = add i64 %i.nl, 1                        ; 4 uses
  store i64 %i.nm, ptr %i.g, align 8
  %i.nn = icmp ult i64 %i.nm, 512
  br i1 %i.nn, label %.lr.ph.i33.22, label %_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit36

.lr.ph.i33.22:                                    ; preds = %.lr.ph.i33.21
  %i.no = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.nm
  store i8 105, ptr %i.no, align 1
  %i.np = load i64, ptr %i.g, align 8
  %i.nq = add i64 %i.np, 1                        ; 4 uses
  store i64 %i.nq, ptr %i.g, align 8
  %i.nr = icmp ult i64 %i.nq, 512
  br i1 %i.nr, label %.lr.ph.i33.23, label %_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit36

.lr.ph.i33.23:                                    ; preds = %.lr.ph.i33.22
  %i.ns = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.nq
  store i8 110, ptr %i.ns, align 1
  %i.nt = load i64, ptr %i.g, align 8
  %i.nu = add i64 %i.nt, 1                        ; 4 uses
  store i64 %i.nu, ptr %i.g, align 8
  %i.nv = icmp ult i64 %i.nu, 512
  br i1 %i.nv, label %.lr.ph.i33.24, label %_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit36

.lr.ph.i33.24:                                    ; preds = %.lr.ph.i33.23
  %i.nw = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.nu
  store i8 103, ptr %i.nw, align 1
  %i.nx = load i64, ptr %i.g, align 8
  %i.ny = add i64 %i.nx, 1                        ; 4 uses
  store i64 %i.ny, ptr %i.g, align 8
  %i.nz = icmp ult i64 %i.ny, 512
  br i1 %i.nz, label %.lr.ph.i33.25, label %_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit36

.lr.ph.i33.25:                                    ; preds = %.lr.ph.i33.24
  %i.oa = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ny
  store i8 115, ptr %i.oa, align 1
  %i.ob = load i64, ptr %i.g, align 8
  %i.oc = add i64 %i.ob, 1                        ; 4 uses
  store i64 %i.oc, ptr %i.g, align 8
  %i.od = icmp ult i64 %i.oc, 512
  br i1 %i.od, label %bb.f, label %_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit36

bb.f:                                             ; preds = %.lr.ph.i33.25
  %i.oe = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.oc
  store i8 46, ptr %i.oe, align 1
  %i.of = load i64, ptr %i.g, align 8
  %i.og = add i64 %i.of, 1                        ; 2 uses
  store i64 %i.og, ptr %i.g, align 8
  br label %_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit36

_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit36: ; preds = %.lr.ph.i15, %_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit18, %.lr.ph.i21.1, %.lr.ph.i21.2, %.lr.ph.i21.3, %.lr.ph.i21.4, %.lr.ph.i21.5, %.lr.ph.i21.6, %.lr.ph.i21.7, %.lr.ph.i21.8, %.lr.ph.i21.9, %.lr.ph.i21.10, %.lr.ph.i21.11, %.lr.ph.i21.12, %.lr.ph.i21.13, %.lr.ph.i21.14, %.lr.ph.i21.15, %.lr.ph.i21.16, %.lr.ph.i21.17, %.lr.ph.i21.18, %.lr.ph.i21.19, %.lr.ph.i21.20, %.lr.ph.i21.21, %.lr.ph.i21.22, %.lr.ph.i21.23, %.lr.ph.i21.24, %.lr.ph.i21.25, %.lr.ph.i21.26, %.lr.ph.i21.27, %.lr.ph.i21.28, %.lr.ph.i21.29, %_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit24, %.lr.ph.i27.1, %.lr.ph.i27.2, %.lr.ph.i27.3, %.lr.ph.i27.4, %.lr.ph.i27.5, %.lr.ph.i27.6, %.lr.ph.i27.7, %.lr.ph.i27.8, %.lr.ph.i27.9, %.lr.ph.i27.10, %.lr.ph.i27.11, %.lr.ph.i27.12, %.lr.ph.i27.13, %.lr.ph.i27.14, %.lr.ph.i27.15, %.lr.ph.i27.16, %.lr.ph.i27.17, %.lr.ph.i27.18, %.lr.ph.i27.19, %.lr.ph.i27.20, %.lr.ph.i27.21, %.lr.ph.i27.22, %.lr.ph.i27.23, %.lr.ph.i27.24, %.lr.ph.i27.25, %.lr.ph.i27.26, %.lr.ph.i27.27, %.lr.ph.i27.28, %.lr.ph.i27.29, %bb.f, %.lr.ph.i33.25, %.lr.ph.i33.24, %.lr.ph.i33.23, %.lr.ph.i33.22, %.lr.ph.i33.21, %.lr.ph.i33.20, %.lr.ph.i33.19, %.lr.ph.i33.18, %.lr.ph.i33.17, %.lr.ph.i33.16, %.lr.ph.i33.15, %.lr.ph.i33.14, %.lr.ph.i33.13, %.lr.ph.i33.12, %.lr.ph.i33.11, %.lr.ph.i33.10, %.lr.ph.i33.9, %.lr.ph.i33.8, %.lr.ph.i33.7, %.lr.ph.i33.6, %.lr.ph.i33.5, %.lr.ph.i33.4, %.lr.ph.i33.3, %.lr.ph.i33.2, %.lr.ph.i33.1, %_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit30
  %i.oh = phi i64 [ %i.og, %bb.f ], [ %i.oc, %.lr.ph.i33.25 ], [ %i.ny, %.lr.ph.i33.24 ], [ %i.nu, %.lr.ph.i33.23 ], [ %i.nq, %.lr.ph.i33.22 ], [ %i.nm, %.lr.ph.i33.21 ], [ %i.ni, %.lr.ph.i33.20 ], [ %i.ne, %.lr.ph.i33.19 ], [ %i.na, %.lr.ph.i33.18 ], [ %i.mw, %.lr.ph.i33.17 ], [ %i.ms, %.lr.ph.i33.16 ], [ %i.mo, %.lr.ph.i33.15 ], [ %i.mk, %.lr.ph.i33.14 ], [ %i.mg, %.lr.ph.i33.13 ], [ %i.mc, %.lr.ph.i33.12 ], [ %i.ly, %.lr.ph.i33.11 ], [ %i.lu, %.lr.ph.i33.10 ], [ %i.lq, %.lr.ph.i33.9 ], [ %i.lm, %.lr.ph.i33.8 ], [ %i.li, %.lr.ph.i33.7 ], [ %i.le, %.lr.ph.i33.6 ], [ %i.la, %.lr.ph.i33.5 ], [ %i.kw, %.lr.ph.i33.4 ], [ %i.ks, %.lr.ph.i33.3 ], [ %i.ko, %.lr.ph.i33.2 ], [ %i.kk, %.lr.ph.i33.1 ], [ %i.kg, %_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit30 ], [ %i.kc, %.lr.ph.i27.29 ], [ %i.fq, %_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit24 ], [ %i.fu, %.lr.ph.i27.1 ], [ %i.fy, %.lr.ph.i27.2 ], [ %i.gc, %.lr.ph.i27.3 ], [ %i.gg, %.lr.ph.i27.4 ], [ %i.gk, %.lr.ph.i27.5 ], [ %i.go, %.lr.ph.i27.6 ], [ %i.gs, %.lr.ph.i27.7 ], [ %i.gw, %.lr.ph.i27.8 ], [ %i.ha, %.lr.ph.i27.9 ], [ %i.he, %.lr.ph.i27.10 ], [ %i.hi, %.lr.ph.i27.11 ], [ %i.hm, %.lr.ph.i27.12 ], [ %i.hq, %.lr.ph.i27.13 ], [ %i.hu, %.lr.ph.i27.14 ], [ %i.hy, %.lr.ph.i27.15 ], [ %i.ic, %.lr.ph.i27.16 ], [ %i.ig, %.lr.ph.i27.17 ], [ %i.ik, %.lr.ph.i27.18 ], [ %i.io, %.lr.ph.i27.19 ], [ %i.is, %.lr.ph.i27.20 ], [ %i.iw, %.lr.ph.i27.21 ], [ %i.ja, %.lr.ph.i27.22 ], [ %i.je, %.lr.ph.i27.23 ], [ %i.ji, %.lr.ph.i27.24 ], [ %i.jm, %.lr.ph.i27.25 ], [ %i.jq, %.lr.ph.i27.26 ], [ %i.ju, %.lr.ph.i27.27 ], [ %i.jy, %.lr.ph.i27.28 ], [ %i.fm, %.lr.ph.i21.29 ], [ %.pre.i20, %_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit18 ], [ %i.be, %.lr.ph.i21.1 ], [ %i.bi, %.lr.ph.i21.2 ], [ %i.bm, %.lr.ph.i21.3 ], [ %i.bq, %.lr.ph.i21.4 ], [ %i.bu, %.lr.ph.i21.5 ], [ %i.by, %.lr.ph.i21.6 ], [ %i.cc, %.lr.ph.i21.7 ], [ %i.cg, %.lr.ph.i21.8 ], [ %i.ck, %.lr.ph.i21.9 ], [ %i.co, %.lr.ph.i21.10 ], [ %i.cs, %.lr.ph.i21.11 ], [ %i.cw, %.lr.ph.i21.12 ], [ %i.da, %.lr.ph.i21.13 ], [ %i.de, %.lr.ph.i21.14 ], [ %i.di, %.lr.ph.i21.15 ], [ %i.dm, %.lr.ph.i21.16 ], [ %i.dq, %.lr.ph.i21.17 ], [ %i.du, %.lr.ph.i21.18 ], [ %i.dy, %.lr.ph.i21.19 ], [ %i.ec, %.lr.ph.i21.20 ], [ %i.eg, %.lr.ph.i21.21 ], [ %i.ek, %.lr.ph.i21.22 ], [ %i.eo, %.lr.ph.i21.23 ], [ %i.es, %.lr.ph.i21.24 ], [ %i.ew, %.lr.ph.i21.25 ], [ %i.fa, %.lr.ph.i21.26 ], [ %i.fe, %.lr.ph.i21.27 ], [ %i.fi, %.lr.ph.i21.28 ], [ %i.at, %.lr.ph.i15 ]
  call void @_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCs7PJsaC8vYNM_5rayon(ptr nonnull sret([32 x i8]) align 8 %i.c, ptr nonnull %i.d, i64 512, i64 %i.oh, ptr align 8 %3) #32
  %i.oi = load ptr, ptr %i.c, align 8
  %i.oj = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ok = load i64, ptr %i.oj, align 8
  call void @_RNvNtNtCs3oUPovFnLWP_4core3str8converts9from_utf8(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr %i.oi, i64 %i.ok)
  %i.ol = load i64, ptr %i.a, align 8
  %i.om = trunc nuw i64 %i.ol to i1
  br i1 %i.om, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit36
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr nonnull @97, i64 14, ptr align 8 %3) #35
  unreachable

bb.h:                                             ; preds = %_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit36
  %i.on = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.oo = load ptr, ptr %i.on, align 8
  %i.op = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.oq = load i64, ptr %i.op, align 8
  store ptr %i.oo, ptr %i.b, align 8, !captures !4
  %i.or = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.oq, ptr %i.or, align 8
  call void @_RINvNtCs3oUPovFnLWP_4core9panicking13panic_displayReECsatzsiS36G5T_11typst_utils(ptr nonnull align 8 %i.b, ptr align 8 %3) #39
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i64, i32 } @_RNvNtCsatzsiS36G5T_11typst_utils8duration15format_duration(i64 %0, i32 %1) unnamed_addr #6 {
bb.a:
  %i.a = insertvalue { i64, i32 } poison, i64 %0, 0
  %i.b = insertvalue { i64, i32 } %i.a, i32 %1, 1
  ret { i64, i32 } %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse213__mm_set1_epi8CsatzsiS36G5T_11typst_utils(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0, i8 %1) unnamed_addr #13 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 2 uses
  call void @_RNvMsb_NtNtCs3oUPovFnLWP_4core9core_arch4simdINtB5_4SimdaKj10_E5splatCscb9PBP19vM_15crossbeam_utils(ptr nonnull sret([16 x i8]) align 16 %i.a, i8 %1) #32
  %i.b = load <16 x i8>, ptr %i.a, align 16
  store <16 x i8> %i.b, ptr %0, align 16, !alias.scope !17
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse214__mm_cmpeq_epi8CsatzsiS36G5T_11typst_utils(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 16 captures(none) %1, ptr nofree readonly align 16 captures(none) %2) unnamed_addr #13 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 2 uses
  %i.b = alloca [16 x i8], align 16               ; 2 uses
  %i.c = alloca [16 x i8], align 16               ; 2 uses
  %i.d = alloca [16 x i8], align 16               ; 2 uses
  %i.e = load <2 x i64>, ptr %1, align 16
  store <2 x i64> %i.e, ptr %i.c, align 16
  call void @_RNvMs1K_NtNtCs3oUPovFnLWP_4core9core_arch3x86NtB6_7___m128i8as_i8x16CsatzsiS36G5T_11typst_utils(ptr nonnull sret([16 x i8]) align 16 %i.d, ptr nonnull align 16 %i.c) #32
  %i.f = load <16 x i8>, ptr %i.d, align 16
  %i.g = load <2 x i64>, ptr %2, align 16
  store <2 x i64> %i.g, ptr %i.a, align 16
  call void @_RNvMs1K_NtNtCs3oUPovFnLWP_4core9core_arch3x86NtB6_7___m128i8as_i8x16CsatzsiS36G5T_11typst_utils(ptr nonnull sret([16 x i8]) align 16 %i.b, ptr nonnull align 16 %i.a) #32
  %i.h = load <16 x i8>, ptr %i.b, align 16
  %i.i = icmp eq <16 x i8> %i.f, %i.h
  %i.j = sext <16 x i1> %i.i to <16 x i8>
  store <16 x i8> %i.j, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse214__mm_load_si128CsatzsiS36G5T_11typst_utils(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0, ptr nofree readonly captures(none) %1) unnamed_addr #14 {
bb.a:
  %i.a = load <2 x i64>, ptr %1, align 16
  store <2 x i64> %i.a, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128CsatzsiS36G5T_11typst_utils(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0, ptr nofree readonly captures(none) %1) unnamed_addr #14 {
bb.a:
  %.sroa.0.0.copyload = load <2 x i64>, ptr %1, align 1
  store <2 x i64> %.sroa.0.0.copyload, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_store_si128CsatzsiS36G5T_11typst_utils(ptr nofree writeonly captures(none) initializes((0, 16)) %0, ptr nofree readonly align 16 captures(none) %1) unnamed_addr #14 {
bb.a:
  %i.a = load <2 x i64>, ptr %1, align 16
  store <2 x i64> %i.a, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden range(i32 0, 65536) i32 @_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse217__mm_movemask_epi8CsatzsiS36G5T_11typst_utils(ptr nofree readonly align 16 captures(none) %0) unnamed_addr #13 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 2 uses
  %i.b = alloca [16 x i8], align 16               ; 2 uses
  %i.c = load <2 x i64>, ptr %0, align 16
  store <2 x i64> %i.c, ptr %i.a, align 16
  call void @_RNvMs1K_NtNtCs3oUPovFnLWP_4core9core_arch3x86NtB6_7___m128i8as_i8x16CsatzsiS36G5T_11typst_utils(ptr nonnull sret([16 x i8]) align 16 %i.b, ptr nonnull align 16 %i.a) #32
  %i.d = load <16 x i8>, ptr %i.b, align 16
  %i.e = icmp slt <16 x i8> %i.d, zeroinitializer
  %i.f = bitcast <16 x i1> %i.e to i16
  %i.g = zext i16 %i.f to i32
  ret i32 %i.g
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push(ptr nofree align 8 captures(none) %0, ptr nofree readonly captures(none) %1, i64 %2) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.pre = load i64, ptr %i.a, align 8
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %i.b = phi i64 [ %i.i, %bb.b ], [ %.pre, %.lr.ph.preheader ] ; 2 uses
  %.sroa.0.04 = phi i64 [ %i.g, %bb.b ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.c = icmp ult i64 %i.b, 512
  br i1 %i.c, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.04
  %i.e = load i8, ptr %i.d, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  store i8 %i.e, ptr %i.f, align 1
  %i.g = add nuw i64 %.sroa.0.04, 1               ; 2 uses
  %i.h = load i64, ptr %i.a, align 8
  %i.i = add i64 %i.h, 1                          ; 2 uses
  store i64 %i.i, ptr %i.a, align 8
  %exitcond.not = icmp eq i64 %i.g, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define align 8 ptr @_RNvXNtCs3oUPovFnLWP_4core6borrowReINtB2_6BorrowBu_E6borrowCsatzsiS36G5T_11typst_utils(ptr nofree readnone returned align 8 captures(ret: address, provenance) %0) unnamed_addr #6 {
bb.a:
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXNtCsatzsiS36G5T_11typst_utils8durationNtB2_15DurationDisplayNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  %i.d = alloca [16 x i8], align 8                ; 2 uses
  %i.e = alloca [16 x i8], align 8                ; 2 uses
  %i.f = alloca [8 x i8], align 8                 ; 2 uses
  %i.g = alloca [16 x i8], align 8                ; 3 uses
  %i.h = alloca [16 x i8], align 8                ; 2 uses
  %i.i = alloca [16 x i8], align 8                ; 2 uses
  %i.j = alloca [8 x i8], align 8                 ; 2 uses
  %i.k = alloca [16 x i8], align 8                ; 3 uses
  %i.l = alloca [16 x i8], align 8                ; 2 uses
  %i.m = alloca [16 x i8], align 8                ; 2 uses
  %i.n = alloca [8 x i8], align 8                 ; 2 uses
  %i.o = alloca [16 x i8], align 8                ; 2 uses
  %i.p = alloca [16 x i8], align 8                ; 2 uses
  %i.q = alloca [16 x i8], align 8                ; 3 uses
  %i.r = alloca [16 x i8], align 8                ; 3 uses
  %i.s = alloca [16 x i8], align 8                ; 2 uses
  %i.t = alloca [16 x i8], align 8                ; 2 uses
  %i.u = alloca [16 x i8], align 8                ; 2 uses
  %i.v = alloca [16 x i8], align 8                ; 2 uses
  %i.w = alloca [16 x i8], align 8                ; 2 uses
  %i.x = alloca [16 x i8], align 8                ; 2 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [8 x i8], align 8                 ; 3 uses
  %i.aa = alloca [8 x i8], align 8                ; 3 uses
  %i.ab = alloca [8 x i8], align 8                ; 2 uses
  %i.ac = tail call i64 @_RNvMNtCs3oUPovFnLWP_4core4timeNtB2_8Duration7as_secsCsatzsiS36G5T_11typst_utils(ptr align 8 %0) #32 ; 5 uses
  %i.ad = udiv i64 %i.ac, 60
  %i.ae = urem i64 %i.ac, 60                      ; 2 uses
  store i64 %i.ae, ptr %i.ab, align 8
  %i.af = udiv i64 %i.ac, 3600
  %i.ag = urem i64 %i.ad, 60
  store i64 %i.ag, ptr %i.aa, align 8
  %i.ah = udiv i64 %i.ac, 86400
  %i.ai = urem i64 %i.af, 24                      ; 2 uses
  store i64 %i.ah, ptr %i.z, align 8
  store i64 %i.ai, ptr %i.y, align 8
  %.not = icmp ult i64 %i.ac, 86400
  br i1 %.not, label %bb.b, label %bb.c

thread-pre-split:                                 ; preds = %bb.c
  %.pr = load i64, ptr %i.y, align 8
  br label %bb.b

bb.b:                                             ; preds = %thread-pre-split, %bb.a
  %i.aj = phi i64 [ %.pr, %thread-pre-split ], [ %i.ai, %bb.a ]
  %.sroa.0.0 = phi i8 [ 1, %thread-pre-split ], [ 0, %bb.a ] ; 2 uses
  %.not2 = icmp eq i64 %i.aj, 0
  br i1 %.not2, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayyECs6fqsdctdrJG_6semver(ptr nonnull sret([16 x i8]) align 8 %i.w, ptr nonnull align 8 %i.z) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false)
  %i.ak = call { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj5_Kj1_ECsatzsiS36G5T_11typst_utils(ptr nonnull @98, ptr nonnull align 8 %i.x) #32 ; 2 uses
  %i.al = extractvalue { ptr, ptr } %i.ak, 0
  %i.am = extractvalue { ptr, ptr } %i.ak, 1
  %i.an = call zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_fmtCsatzsiS36G5T_11typst_utils(ptr align 8 %1, ptr %i.al, ptr %i.am) #32
  %i.ao = call zeroext i1 @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultuNtNtB7_3fmt5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs6fqsdctdrJG_6semver(i1 zeroext %i.an) #32
  br i1 %i.ao, label %.sink.split, label %thread-pre-split

bb.d:                                             ; preds = %bb.f, %bb.b
  %.sroa.0.1 = phi i8 [ %.sroa.0.0, %bb.b ], [ 1, %bb.f ] ; 2 uses
  %i.ap = load i64, ptr %i.aa, align 8
  %.not3 = icmp eq i64 %i.ap, 0
  br i1 %.not3, label %bb.h, label %bb.i

bb.e:                                             ; preds = %bb.b
  %i.aq = trunc nuw i8 %.sroa.0.0 to i1
  br i1 %i.aq, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  call void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayyECs6fqsdctdrJG_6semver(ptr nonnull sret([16 x i8]) align 8 %i.u, ptr nonnull align 8 %i.y) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false)
  %i.ar = call { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj5_Kj1_ECsatzsiS36G5T_11typst_utils(ptr nonnull @99, ptr nonnull align 8 %i.v) #32 ; 2 uses
  %i.as = extractvalue { ptr, ptr } %i.ar, 0
  %i.at = extractvalue { ptr, ptr } %i.ar, 1
  %i.au = call zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_fmtCsatzsiS36G5T_11typst_utils(ptr align 8 %1, ptr %i.as, ptr %i.at) #32
  %i.av = call zeroext i1 @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultuNtNtB7_3fmt5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs6fqsdctdrJG_6semver(i1 zeroext %i.au) #32
  br i1 %i.av, label %.sink.split, label %bb.d

bb.g:                                             ; preds = %bb.e
  %i.aw = call zeroext i1 @_RNvXsb_NtCs3oUPovFnLWP_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr align 8 %1, i32 32)
  %i.ax = call zeroext i1 @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultuNtNtB7_3fmt5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs6fqsdctdrJG_6semver(i1 zeroext %i.aw) #32
  br i1 %i.ax, label %.sink.split, label %bb.f

bb.h:                                             ; preds = %bb.j, %bb.d
  %.sroa.0.2 = phi i8 [ %.sroa.0.1, %bb.d ], [ 1, %bb.j ] ; 3 uses
  %i.ay = load i64, ptr %i.z, align 8
  %i.az = icmp ne i64 %i.ay, 0
  %i.ba = load i64, ptr %i.y, align 8
  %i.bb = icmp ne i64 %i.ba, 0
  %or.cond = select i1 %i.az, i1 true, i1 %i.bb
  br i1 %or.cond, label %bb.v, label %bb.l
end_hunk_2
begin_hunk_3_@_RNvXs7_NtCsatzsiS36G5T_11typst_utils4picoNtB5_15ResolvedPicoStrNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq:bb.a
bb.e:                                             ; preds = %_RNvMs0_NtCsatzsiS36G5T_11typst_utils4picoNtB5_15ResolvedPicoStr6as_str.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = zext i8 %i.ac to i64
  %i.ae = tail call { ptr, i64 } @_RNvXsd_NtCs3oUPovFnLWP_4core5arrayAhjc_INtNtNtB7_3ops5index5IndexINtNtBG_5range7RangeTojEE5indexCsatzsiS36G5T_11typst_utils(ptr nonnull %i.aa, i64 %i.ad, ptr nonnull align 8 @91) #32 ; 2 uses
  %i.af = extractvalue { ptr, i64 } %i.ae, 0
  %i.ag = extractvalue { ptr, i64 } %i.ae, 1
  %i.ah = tail call { ptr, i64 } @_RNvNtNtCs3oUPovFnLWP_4core3str8converts19from_utf8_uncheckedCsatzsiS36G5T_11typst_utils(ptr %i.af, i64 %i.ag) #32
  br label %_RNvMs0_NtCsatzsiS36G5T_11typst_utils4picoNtB5_15ResolvedPicoStr6as_str.exit2

_RNvMs0_NtCsatzsiS36G5T_11typst_utils4picoNtB5_15ResolvedPicoStr6as_str.exit2: ; preds = %bb.d, %bb.e
  %.merged.i1 = phi { ptr, i64 } [ %i.z, %bb.d ], [ %i.ah, %bb.e ] ; 2 uses
  %i.ai = extractvalue { ptr, i64 } %.merged.i1, 1
  %i.aj = icmp eq i64 %i.r, %i.ai
  br i1 %i.aj, label %bb.f, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsatzsiS36G5T_11typst_utils.exit

bb.f:                                             ; preds = %_RNvMs0_NtCsatzsiS36G5T_11typst_utils4picoNtB5_15ResolvedPicoStr6as_str.exit2
  %i.ak = extractvalue { ptr, i64 } %.merged.i1, 0
  %bcmp.i = tail call i32 @bcmp(ptr readonly %i.q, ptr readonly %i.ak, i64 %i.r)
  %i.al = icmp eq i32 %bcmp.i, 0
  br label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsatzsiS36G5T_11typst_utils.exit

_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsatzsiS36G5T_11typst_utils.exit: ; preds = %_RNvMs0_NtCsatzsiS36G5T_11typst_utils4picoNtB5_15ResolvedPicoStr6as_str.exit2, %bb.f
  %.sroa.0.0.i = phi i1 [ %i.al, %bb.f ], [ false, %_RNvMs0_NtCsatzsiS36G5T_11typst_utils4picoNtB5_15ResolvedPicoStr6as_str.exit2 ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RNvXs7_NtNtCs3oUPovFnLWP_4core3cmp5implsRNtNtCsatzsiS36G5T_11typst_utils6scalar6ScalarNtB7_9PartialEq2eqBH_(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = load ptr, ptr %1, align 8                ; 2 uses
  %i.c = load double, ptr %i.a, align 8
  %i.d = tail call zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core3f64d6is_nanCsatzsiS36G5T_11typst_utils(double %i.c) #32
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load double, ptr %i.b, align 8
  %i.f = tail call zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core3f64d6is_nanCsatzsiS36G5T_11typst_utils(double %i.e) #32
  br i1 %i.f, label %bb.c, label %_RNvXs3_NtCsatzsiS36G5T_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = tail call { ptr, ptr } @_RNvMs4_NtCs3oUPovFnLWP_4core3fmtNtB5_9Arguments8from_strCsatzsiS36G5T_11typst_utils(ptr nonnull @114, i64 12) #32 ; 2 uses
  %i.h = extractvalue { ptr, ptr } %i.g, 0
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr %i.h, ptr %i.i, ptr nonnull align 8 @115) #35
  unreachable

_RNvXs3_NtCsatzsiS36G5T_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit: ; preds = %bb.b
  %i.j = load double, ptr %i.a, align 8
  %i.k = load double, ptr %i.b, align 8
  %i.l = fcmp oeq double %i.j, %i.k
  ret i1 %i.l
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXs7_NtNtNtCsaL1QbXo9JQH_3std11collections4hash3mapINtB5_7HashMapReNtNtCsatzsiS36G5T_11typst_utils4pico7PicoStrNtCs87aT6TjYOVO_10rustc_hash13FxBuildHasherENtNtCs3oUPovFnLWP_4core7default7Default7defaultB19_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0) unnamed_addr #2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @122, i64 32, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvXs8_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjENtNtNtCs3oUPovFnLWP_4core3ops5deref8DerefMut9deref_mutCsatzsiS36G5T_11typst_utils(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @_RINvNtCs3oUPovFnLWP_4core3cmp3maxjECslnPB5LbcFkI_8thin_vec(i64 8, i64 8) #32 ; 2 uses
  %i.b = icmp ult i64 %i.a, 17
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8
  %i.d = tail call i64 @_RNvMs0_CslnPB5LbcFkI_8thin_vecNtB5_6Header3cap(ptr align 8 %i.c)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %._RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit_crit_edge.i, label %bb.c

._RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit_crit_edge.i: ; preds = %bb.b
  %.pre.i = load ptr, ptr %0, align 8
  br label %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE12as_mut_sliceCsatzsiS36G5T_11typst_utils.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load ptr, ptr %0, align 8                ; 2 uses
  %i.g = tail call i64 @llvm.umax.i64(i64 %i.a, i64 16)
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g
  br label %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE12as_mut_sliceCsatzsiS36G5T_11typst_utils.exit

_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE12as_mut_sliceCsatzsiS36G5T_11typst_utils.exit: ; preds = %._RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit_crit_edge.i, %bb.c
  %i.i = phi ptr [ %i.f, %bb.c ], [ %.pre.i, %._RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit_crit_edge.i ]
  %.sroa.0.0.i.i = phi ptr [ %i.h, %bb.c ], [ inttoptr (i64 8 to ptr), %._RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit_crit_edge.i ]
  %.val.i.i = load i64, ptr %i.i, align 8
  %i.j = tail call { ptr, i64 } @_RINvNtNtCs3oUPovFnLWP_4core5slice3raw18from_raw_parts_mutjECsatzsiS36G5T_11typst_utils(ptr nonnull %.sroa.0.0.i.i, i64 %.val.i.i, ptr nonnull align 8 @93) #32
  ret { ptr, i64 } %i.j
}

; Function Attrs: nonlazybind uwtable
define range(i8 -1, 2) i8 @_RNvXs8_NtCsatzsiS36G5T_11typst_utils4picoNtB5_15ResolvedPicoStrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8
  %i.g = insertvalue { ptr, i64 } poison, ptr %i.d, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %i.f, 1
  br label %_RNvMs0_NtCsatzsiS36G5T_11typst_utils4picoNtB5_15ResolvedPicoStr6as_str.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.k = load i8, ptr %i.j, align 1
  %i.l = zext i8 %i.k to i64
  %i.m = tail call { ptr, i64 } @_RNvXsd_NtCs3oUPovFnLWP_4core5arrayAhjc_INtNtNtB7_3ops5index5IndexINtNtBG_5range7RangeTojEE5indexCsatzsiS36G5T_11typst_utils(ptr nonnull %i.i, i64 %i.l, ptr nonnull align 8 @91) #32 ; 2 uses
  %i.n = extractvalue { ptr, i64 } %i.m, 0
  %i.o = extractvalue { ptr, i64 } %i.m, 1
  %i.p = tail call { ptr, i64 } @_RNvNtNtCs3oUPovFnLWP_4core3str8converts19from_utf8_uncheckedCsatzsiS36G5T_11typst_utils(ptr %i.n, i64 %i.o) #32
  br label %_RNvMs0_NtCsatzsiS36G5T_11typst_utils4picoNtB5_15ResolvedPicoStr6as_str.exit

_RNvMs0_NtCsatzsiS36G5T_11typst_utils4picoNtB5_15ResolvedPicoStr6as_str.exit: ; preds = %bb.b, %bb.c
  %.merged.i = phi { ptr, i64 } [ %i.h, %bb.b ], [ %i.p, %bb.c ] ; 2 uses
  %i.q = load i8, ptr %1, align 8
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvMs0_NtCsatzsiS36G5T_11typst_utils4picoNtB5_15ResolvedPicoStr6as_str.exit
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i64, ptr %i.u, align 8
  %i.w = insertvalue { ptr, i64 } poison, ptr %i.t, 0
  %i.x = insertvalue { ptr, i64 } %i.w, i64 %i.v, 1
  br label %_RNvMs0_NtCsatzsiS36G5T_11typst_utils4picoNtB5_15ResolvedPicoStr6as_str.exit2

bb.e:                                             ; preds = %_RNvMs0_NtCsatzsiS36G5T_11typst_utils4picoNtB5_15ResolvedPicoStr6as_str.exit
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i64
  %i.ac = tail call { ptr, i64 } @_RNvXsd_NtCs3oUPovFnLWP_4core5arrayAhjc_INtNtNtB7_3ops5index5IndexINtNtBG_5range7RangeTojEE5indexCsatzsiS36G5T_11typst_utils(ptr nonnull %i.y, i64 %i.ab, ptr nonnull align 8 @91) #32 ; 2 uses
  %i.ad = extractvalue { ptr, i64 } %i.ac, 0
  %i.ae = extractvalue { ptr, i64 } %i.ac, 1
  %i.af = tail call { ptr, i64 } @_RNvNtNtCs3oUPovFnLWP_4core3str8converts19from_utf8_uncheckedCsatzsiS36G5T_11typst_utils(ptr %i.ad, i64 %i.ae) #32
  br label %_RNvMs0_NtCsatzsiS36G5T_11typst_utils4picoNtB5_15ResolvedPicoStr6as_str.exit2

_RNvMs0_NtCsatzsiS36G5T_11typst_utils4picoNtB5_15ResolvedPicoStr6as_str.exit2: ; preds = %bb.d, %bb.e
  %.merged.i1 = phi { ptr, i64 } [ %i.x, %bb.d ], [ %i.af, %bb.e ] ; 2 uses
  %i.ag = extractvalue { ptr, i64 } %.merged.i, 1 ; 2 uses
  %i.ah = extractvalue { ptr, i64 } %.merged.i, 0
  %i.ai = extractvalue { ptr, i64 } %.merged.i1, 0
  %i.aj = extractvalue { ptr, i64 } %.merged.i1, 1 ; 2 uses
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.aj)
  %i.ak = tail call i32 @memcmp(ptr readonly %i.ah, ptr readonly %i.ai, i64 %spec.store.select.i) ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp eq i32 %i.ak, 0
  %i.an = sub i64 %i.ag, %i.aj
  %spec.select.i = select i1 %i.am, i64 %i.an, i64 %i.al
  %i.ao = tail call range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i, i64 0)
  ret i8 %i.ao
}

; Function Attrs: nonlazybind uwtable
define double @_RNvXs8_NtCsatzsiS36G5T_11typst_utils6scalarNtB5_6ScalarINtNtCs3oUPovFnLWP_4core7convert4FromdE4from(double %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core3f64d6is_nanCsatzsiS36G5T_11typst_utils(double %0) #32
  %..i = select i1 %i.a, double 0.000000e+00, double %0
  ret double %..i
}

; Function Attrs: nonlazybind uwtable
define range(i8 -1, 2) i8 @_RNvXs9_NtCsatzsiS36G5T_11typst_utils4picoNtB5_15ResolvedPicoStrNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd11partial_cmp(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call i8 @_RNvXs8_NtCsatzsiS36G5T_11typst_utils4picoNtB5_15ResolvedPicoStrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr align 8 %0, ptr align 8 %1)
  ret i8 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define double @_RNvXs9_NtCsatzsiS36G5T_11typst_utils6scalardINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_6ScalarE4from(double returned %0) unnamed_addr #6 {
bb.a:
  ret double %0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsA_NtCsatzsiS36G5T_11typst_utils6scalarNtB5_6ScalarNtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssign10mul_assign(ptr nofree align 8 captures(none) %0, double %1) unnamed_addr #0 {
bb.a:
  %i.a = load double, ptr %0, align 8
  %i.b = fmul double %1, %i.a                     ; 2 uses
  %i.c = tail call zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core3f64d6is_nanCsatzsiS36G5T_11typst_utils(double %i.b) #32
  %..i.i = select i1 %i.c, double 0.000000e+00, double %i.b
  store double %..i.i, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXsB_NtCs1xwejQucwHj_5alloc6stringeNtB5_8ToString9to_stringCsatzsiS36G5T_11typst_utils(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr %1, i64 %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs1iWEYfdUYYU_10rayon_core(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr %1, i64 %2) #32, !noalias !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsB_NtCsatzsiS36G5T_11typst_utils6scalarNtB5_6ScalarINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assign(ptr nofree align 8 captures(none) %0, double %1) unnamed_addr #0 {
bb.a:
  %i.a = load double, ptr %0, align 8
  %i.b = fmul double %1, %i.a                     ; 2 uses
  %i.c = tail call zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core3f64d6is_nanCsatzsiS36G5T_11typst_utils(double %i.b) #32
  %..i.i = select i1 %i.c, double 0.000000e+00, double %i.b
  store double %..i.i, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsC_NtCsatzsiS36G5T_11typst_utils6scalarNtB5_6ScalarNtNtNtCs3oUPovFnLWP_4core3ops5arith9DivAssign10div_assign(ptr nofree align 8 captures(none) %0, double %1) unnamed_addr #0 {
bb.a:
  %i.a = load double, ptr %0, align 8
  %i.b = fdiv double %i.a, %1                     ; 2 uses
  %i.c = tail call zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core3f64d6is_nanCsatzsiS36G5T_11typst_utils(double %i.b) #32
  %..i.i = select i1 %i.c, double 0.000000e+00, double %i.b
  store double %..i.i, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsD_NtCsatzsiS36G5T_11typst_utils6scalarNtB5_6ScalarINtNtNtCs3oUPovFnLWP_4core3ops5arith9DivAssigndE10div_assign(ptr nofree align 8 captures(none) %0, double %1) unnamed_addr #0 {
bb.a:
  %i.a = load double, ptr %0, align 8
  %i.b = fdiv double %i.a, %1                     ; 2 uses
  %i.c = tail call zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core3f64d6is_nanCsatzsiS36G5T_11typst_utils(double %i.b) #32
  %..i.i = select i1 %i.c, double 0.000000e+00, double %i.b
  store double %..i.i, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsE_NtCsatzsiS36G5T_11typst_utils6scalarNtB5_6ScalarNtNtNtCs3oUPovFnLWP_4core3ops5arith9RemAssign10rem_assign(ptr nofree align 8 captures(none) %0, double %1) unnamed_addr #0 {
bb.a:
  %i.a = load double, ptr %0, align 8
  %i.b = frem double %i.a, %1                     ; 2 uses
  %i.c = tail call zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core3f64d6is_nanCsatzsiS36G5T_11typst_utils(double %i.b) #32
  %..i.i = select i1 %i.c, double 0.000000e+00, double %i.b
  store double %..i.i, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsF_NtCsatzsiS36G5T_11typst_utils6scalarNtB5_6ScalarINtNtNtCs3oUPovFnLWP_4core3ops5arith9RemAssigndE10rem_assign(ptr nofree align 8 captures(none) %0, double %1) unnamed_addr #0 {
bb.a:
  %i.a = load double, ptr %0, align 8
  %i.b = frem double %i.a, %1                     ; 2 uses
  %i.c = tail call zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core3f64d6is_nanCsatzsiS36G5T_11typst_utils(double %i.b) #32
  %..i.i = select i1 %i.c, double 0.000000e+00, double %i.b
  store double %..i.i, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs_NtCsatzsiS36G5T_11typst_utils4picoNtB4_7PicoStrNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = load i64, ptr %0, align 8
  call void @_RNvMNtCsatzsiS36G5T_11typst_utils4picoNtB2_7PicoStr7resolve(ptr nonnull sret([24 x i8]) align 8 %i.a, i64 %i.b)
  %i.c = load i8, ptr %i.a, align 8
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load i64, ptr %i.g, align 8
  %i.i = insertvalue { ptr, i64 } poison, ptr %i.f, 0
  %i.j = insertvalue { ptr, i64 } %i.i, i64 %i.h, 1
  br label %_RNvMs0_NtCsatzsiS36G5T_11typst_utils4picoNtB5_15ResolvedPicoStr6as_str.exit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.m = load i8, ptr %i.l, align 1
  %i.n = zext i8 %i.m to i64
  %i.o = call { ptr, i64 } @_RNvXsd_NtCs3oUPovFnLWP_4core5arrayAhjc_INtNtNtB7_3ops5index5IndexINtNtBG_5range7RangeTojEE5indexCsatzsiS36G5T_11typst_utils(ptr nonnull %i.k, i64 %i.n, ptr nonnull align 8 @91) #32 ; 2 uses
  %i.p = extractvalue { ptr, i64 } %i.o, 0
  %i.q = extractvalue { ptr, i64 } %i.o, 1
  %i.r = call { ptr, i64 } @_RNvNtNtCs3oUPovFnLWP_4core3str8converts19from_utf8_uncheckedCsatzsiS36G5T_11typst_utils(ptr %i.p, i64 %i.q) #32
  br label %_RNvMs0_NtCsatzsiS36G5T_11typst_utils4picoNtB5_15ResolvedPicoStr6as_str.exit

_RNvMs0_NtCsatzsiS36G5T_11typst_utils4picoNtB5_15ResolvedPicoStr6as_str.exit: ; preds = %bb.b, %bb.c
  %.merged.i = phi { ptr, i64 } [ %i.j, %bb.b ], [ %i.r, %bb.c ] ; 2 uses
  %i.s = extractvalue { ptr, i64 } %.merged.i, 0
  %i.t = extractvalue { ptr, i64 } %.merged.i, 1
  %i.u = call zeroext i1 @_RNvXsh_NtCs3oUPovFnLWP_4core3fmteNtB5_5Debug3fmt(ptr %i.s, i64 %i.t, ptr align 8 %1)
  ret i1 %i.u
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef double @_RNvXs_NtCsatzsiS36G5T_11typst_utils6scalarNtB4_6ScalarNtB6_7Numeric4zero() unnamed_addr #6 {
bb.a:
  ret double 0.000000e+00
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs_NtCsatzsiS36G5T_11typst_utils6scalarNtB4_6ScalarNtB6_7Numeric9is_finite(double %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core3f64d9is_finiteCsatzsiS36G5T_11typst_utils(double %0) #32
  ret i1 %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsatzsiS36G5T_11typst_utils(ptr nofree readonly captures(none) %0, i64 %1, ptr nofree readonly captures(none) %2, i64 %3) unnamed_addr #9 {
bb.a:
  %i.a = icmp eq i64 %1, %3
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %bcmp = tail call i32 @bcmp(ptr %0, ptr %2, i64 %1)
  %i.b = icmp eq i32 %bcmp, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.b, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define double @_RNvXsa_NtCsatzsiS36G5T_11typst_utils6scalarNtB5_6ScalarNtNtNtCs3oUPovFnLWP_4core3ops5arith3Neg3neg(double %0) unnamed_addr #0 {
bb.a:
  %i.a = fneg double %0                           ; 2 uses
  %i.b = tail call zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core3f64d6is_nanCsatzsiS36G5T_11typst_utils(double %i.a) #32
  %..i = select i1 %i.b, double 0.000000e+00, double %i.a
  ret double %..i
}

; Function Attrs: nonlazybind uwtable
define double @_RNvXsb_NtCsatzsiS36G5T_11typst_utils6scalarNtB5_6ScalarNtNtNtCs3oUPovFnLWP_4core3ops5arith3Add3add(double %0, double %1) unnamed_addr #0 {
bb.a:
  %i.a = fadd double %0, %1                       ; 2 uses
  %i.b = tail call zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core3f64d6is_nanCsatzsiS36G5T_11typst_utils(double %i.a) #32
  %..i = select i1 %i.b, double 0.000000e+00, double %i.a
  ret double %..i
}

; Function Attrs: nonlazybind uwtable
define double @_RNvXsc_NtCsatzsiS36G5T_11typst_utils6scalarNtB5_6ScalarINtNtNtCs3oUPovFnLWP_4core3ops5arith3AdddE3add(double %0, double %1) unnamed_addr #0 {
bb.a:
  %i.a = fadd double %0, %1                       ; 2 uses
  %i.b = tail call zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core3f64d6is_nanCsatzsiS36G5T_11typst_utils(double %i.a) #32
  %..i = select i1 %i.b, double 0.000000e+00, double %i.a
  ret double %..i
}

; Function Attrs: inlinehint nonlazybind uwtable
define align 8 ptr @_RNvXsd_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecReEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCsatzsiS36G5T_11typst_utils(ptr nofree readonly align 8 captures(none) %0, i64 %1, ptr align 8 %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = tail call align 8 ptr @_RNvXs0_NtNtCs3oUPovFnLWP_4core5slice5indexjINtB5_10SliceIndexSReE5indexCsatzsiS36G5T_11typst_utils(i64 %1, ptr align 8 %i.b, i64 %i.d, ptr align 8 %2) #32
  ret ptr %i.e
}

; Function Attrs: nonlazybind uwtable
define double @_RNvXsd_NtCsatzsiS36G5T_11typst_utils6scalardINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddNtB5_6ScalarE3add(double %0, double %1) unnamed_addr #0 {
bb.a:
  %i.a = fadd double %0, %1                       ; 2 uses
  %i.b = tail call zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core3f64d6is_nanCsatzsiS36G5T_11typst_utils(double %i.a) #32
  %..i = select i1 %i.b, double 0.000000e+00, double %i.a
  ret double %..i
}

; Function Attrs: nonlazybind uwtable
define double @_RNvXse_NtCsatzsiS36G5T_11typst_utils6scalarNtB5_6ScalarNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub(double %0, double %1) unnamed_addr #0 {
bb.a:
  %i.a = fsub double %0, %1                       ; 2 uses
  %i.b = tail call zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core3f64d6is_nanCsatzsiS36G5T_11typst_utils(double %i.a) #32
  %..i = select i1 %i.b, double 0.000000e+00, double %i.a
  ret double %..i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsf_NtCsatzsiS36G5T_11typst_utils4hashNtB5_8HashLockNtNtCs3oUPovFnLWP_4core7default7Default7default(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs16_Csl9Fzn6kz1og_15portable_atomicNtB6_10AtomicU1283newCsatzsiS36G5T_11typst_utils(ptr nonnull sret([16 x i8]) align 16 %i.a, i128 0) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %0, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define double @_RNvXsf_NtCsatzsiS36G5T_11typst_utils6scalarNtB5_6ScalarINtNtNtCs3oUPovFnLWP_4core3ops5arith3SubdE3sub(double %0, double %1) unnamed_addr #0 {
bb.a:
  %i.a = fsub double %0, %1                       ; 2 uses
  %i.b = tail call zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core3f64d6is_nanCsatzsiS36G5T_11typst_utils(double %i.a) #32
  %..i = select i1 %i.b, double 0.000000e+00, double %i.a
end_hunk_3
begin_hunk_4_@_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCs7PJsaC8vYNM_5rayon

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs3oUPovFnLWP_4core3str8converts9from_utf8(ptr sret([24 x i8]) align 8, ptr, i64) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr, i64, ptr align 8) unnamed_addr #19

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvYNCNvNtCsatzsiS36G5T_11typst_utils4pico8INTERNER0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceB8_(ptr sret([72 x i8]) align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvMsb_NtNtCs3oUPovFnLWP_4core9core_arch4simdINtB5_4SimdaKj10_E5splatCscb9PBP19vM_15crossbeam_utils(ptr sret([16 x i8]) align 16, i8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvMs1K_NtNtCs3oUPovFnLWP_4core9core_arch3x86NtB6_7___m128i8as_i8x16CsatzsiS36G5T_11typst_utils(ptr sret([16 x i8]) align 16, ptr align 16) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare ptr @_RNvMs3_NtNtCs3oUPovFnLWP_4core4sync6atomicINtB5_6AtomicOuE4loadCsatzsiS36G5T_11typst_utils(ptr align 8, i8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i64 @_RNvMNtCs3oUPovFnLWP_4core4timeNtB2_8Duration7as_secsCsatzsiS36G5T_11typst_utils(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXsb_NtCs3oUPovFnLWP_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr align 8, i32) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultuNtNtB7_3fmt5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs6fqsdctdrJG_6semver(i1 zeroext) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayyECs6fqsdctdrJG_6semver(ptr sret([16 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj5_Kj1_ECsatzsiS36G5T_11typst_utils(ptr, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_fmtCsatzsiS36G5T_11typst_utils(ptr align 8, ptr, ptr) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj7_Kj1_ECsatzsiS36G5T_11typst_utils(ptr, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i32 @_RNvMNtCs3oUPovFnLWP_4core4timeNtB2_8Duration12subsec_nanosCsatzsiS36G5T_11typst_utils(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { i64, i32 } @_RNvMNtCs3oUPovFnLWP_4core4timeNtB2_8Duration9from_secsCsatzsiS36G5T_11typst_utils(i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RNvYNtNtCs3oUPovFnLWP_4core4time8DurationNtNtB6_3cmp10PartialOrd2gtCsatzsiS36G5T_11typst_utils(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { i64, i32 } @_RNvMNtCs3oUPovFnLWP_4core4timeNtB2_8Duration11from_millisCsatzsiS36G5T_11typst_utils(i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { i64, i32 } @_RNvMNtCs3oUPovFnLWP_4core4timeNtB2_8Duration11from_microsCsatzsiS36G5T_11typst_utils(i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displaydECsatzsiS36G5T_11typst_utils(ptr sret([16 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj6_Kj1_ECsatzsiS36G5T_11typst_utils(ptr, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultuNtNtB7_3fmt5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zBL_EE13from_residualCs6fqsdctdrJG_6semver(ptr align 8) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64, i64) #22

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXs9_NtCscU2Wwt0gbB4_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u64CsatzsiS36G5T_11typst_utils(ptr align 8, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXs9_NtCscU2Wwt0gbB4_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCsatzsiS36G5T_11typst_utils(ptr align 8, ptr, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i64 @_RNvXs9_NtCscU2Wwt0gbB4_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher6finishCsatzsiS36G5T_11typst_utils(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXs6_NtNtCs3oUPovFnLWP_4core3fmt5floatdNtB7_5Debug3fmt(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr allocptr captures(address), i64, i64) unnamed_addr #29

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXsh_NtCs3oUPovFnLWP_4core3fmteNtB5_5Debug3fmt(ptr, i64, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXs7_NtNtCs3oUPovFnLWP_4core3fmt5floatdNtB7_7Display3fmt(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs1iWEYfdUYYU_10rayon_core(ptr sret([24 x i8]) align 8, ptr, i64) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXsi_NtCs3oUPovFnLWP_4core3fmteNtB5_7Display3fmt(ptr, i64, ptr align 8) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64, i64, i64, ptr align 8) unnamed_addr #19

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvMs4_NtCs3oUPovFnLWP_4core3fmtNtB5_9Arguments8from_strCsatzsiS36G5T_11typst_utils(ptr, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare i8 @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionNtNtB4_3cmp8OrderingE6expectCsatzsiS36G5T_11typst_utils(i8, ptr, i64, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsaDvkSoazevh_14rustc_demangle(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr align 8, ptr, i64, ptr, ptr align 8) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const23panic_const_div_by_zero(ptr align 8) unnamed_addr #19

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr, i64, i64, i64, ptr align 8) unnamed_addr #19

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core3f64d9is_finiteCsatzsiS36G5T_11typst_utils(double) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare align 8 ptr @_RNvXs0_NtNtCs3oUPovFnLWP_4core5slice5indexjINtB5_10SliceIndexSReE5indexCsatzsiS36G5T_11typst_utils(i64, ptr align 8, i64, ptr align 8) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr align 4, i32) unnamed_addr #23

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4doneCsatzsiS36G5T_11typst_utils(ptr, ptr) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #31

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold inlinehint noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+sse,+sse2" }
attributes #14 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+sse,+sse2" }
attributes #15 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #19 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsjHpjAFo4bi0_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #28 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #29 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #30 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #31 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #32 = { inlinehint }
attributes #33 = { nounwind }
attributes #34 = { noreturn }
attributes #35 = { noinline noreturn }
attributes #36 = { cold }
attributes #37 = { cold noreturn nounwind }
attributes #38 = { noinline }
attributes #39 = { inlinehint noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (787af2b8c 2026-08-25)"}
!4 = !{!"address", !"read_provenance"}
!8 = distinct !{!8, i1 false, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse214__mm_cmpgt_epi8CsatzsiS36G5T_11typst_utils"}
!9 = distinct !{!9, !8, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse214__mm_cmpgt_epi8CsatzsiS36G5T_11typst_utils: argument 0"}
!10 = !{!9}
!11 = distinct !{null}
!15 = distinct !{!15, i1 false, !"_RNvMs1P_NtNtCs3oUPovFnLWP_4core9core_arch3x86INtNtB8_4simd4SimdaKj10_E8as_m128iCsatzsiS36G5T_11typst_utils"}
!16 = distinct !{!16, !15, !"_RNvMs1P_NtNtCs3oUPovFnLWP_4core9core_arch3x86INtNtB8_4simd4SimdaKj10_E8as_m128iCsatzsiS36G5T_11typst_utils: argument 0"}
!17 = !{!16}
!21 = distinct !{!21, i1 false, !"_RNvXs26_NtCs1xwejQucwHj_5alloc6stringeNtB6_12SpecToString14spec_to_stringCsatzsiS36G5T_11typst_utils"}
!22 = distinct !{!22, !21, !"_RNvXs26_NtCs1xwejQucwHj_5alloc6stringeNtB6_12SpecToString14spec_to_stringCsatzsiS36G5T_11typst_utils: argument 0"}
!23 = !{!22}
end_hunk_4
