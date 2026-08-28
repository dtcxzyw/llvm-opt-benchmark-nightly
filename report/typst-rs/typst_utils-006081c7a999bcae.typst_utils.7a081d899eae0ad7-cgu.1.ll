Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_utils-006081c7a999bcae.typst_utils.7a081d899eae0ad7-cgu.1?download=true
inline.NumInlined: 190
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvMNtCsatzsiS36G5T_11typst_utils4picoNtB2_7PicoStr6intern:bb.a
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCsatzsiS36G5T_11typst_utils4picoNtB2_7PicoStr7resolve(ptr sret([24 x i8]) align 8 %0, i64 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = tail call i64 @_RNvMse_NtNtCs3oUPovFnLWP_4core3num7nonzeroINtB5_7NonZeroyE3getCsatzsiS36G5T_11typst_utils(i64 %1) #32 ; 4 uses
  %.not = icmp sgt i64 %i.d, -1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i64 %i.d, -1                     ; 2 uses
  %i.f = icmp ugt i64 %i.e, 64
  %i.g = add nsw i64 %i.d, -66
  br i1 %i.f, label %bb.d, label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.h = and i64 %i.d, 9223372036854775807
  tail call void @_RNvNtNtCsatzsiS36G5T_11typst_utils4pico7bitcode6decode(ptr sret([24 x i8]) align 8 %0, i64 %i.h)
  br label %bb.p

bb.d:                                             ; preds = %bb.b
  %i.i = tail call align 8 ptr @_RNvXs1_NtNtCsaL1QbXo9JQH_3std4sync9lazy_lockINtB5_8LazyLockINtNtNtB7_6poison6rwlock6RwLockNtNtCsatzsiS36G5T_11typst_utils4pico8InternerEENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefB1u_(ptr nonnull align 8 @_RNvNtCsatzsiS36G5T_11typst_utils4pico8INTERNER) #32 ; 5 uses
  %i.j = tail call i32 @_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic11atomic_loadmKb0_ECscb9PBP19vM_15crossbeam_utils(ptr align 8 %i.i, i8 0) #32 ; 3 uses
  %or.cond3.i.i = icmp ult i32 %i.j, 1073741822
  br i1 %or.cond3.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = add nuw nsw i32 %i.j, 1
  %i.l = tail call { i32, i32 } @_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic28atomic_compare_exchange_weakmECsatzsiS36G5T_11typst_utils(ptr align 8 %i.i, i32 %i.j, i32 %i.k, i8 2, i8 0) #32
  %i.m = extractvalue { i32, i32 } %i.l, 0
  %.not2.i.i = icmp eq i32 %i.m, 0
  br i1 %.not2.i.i, label %_RNvMs9_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_6RwLockNtNtCsatzsiS36G5T_11typst_utils4pico8InternerE4readB13_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock14read_contended(ptr align 8 %i.i)
  br label %_RNvMs9_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_6RwLockNtNtCsatzsiS36G5T_11typst_utils4pico8InternerE4readB13_.exit

_RNvMs9_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_6RwLockNtNtCsatzsiS36G5T_11typst_utils4pico8InternerE4readB13_.exit: ; preds = %bb.e, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.o = tail call i8 @_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic11atomic_loadhKb0_ECscb9PBP19vM_15crossbeam_utils(ptr nonnull %i.n, i8 0) #32
  %.not.i.i = icmp ne i8 %i.o, 0
  call void @_RINvNtNtCsaL1QbXo9JQH_3std4sync6poison10map_resultuINtNtB2_6rwlock15RwLockReadGuardNtNtCsatzsiS36G5T_11typst_utils4pico8InternerENCNvMsd_BQ_BN_3new0EB1n_(ptr nonnull sret([24 x i8]) align 8 %i.b, i1 zeroext %.not.i.i, ptr align 8 %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.p = load i64, ptr %i.b, align 8
  %i.q = trunc nuw i64 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = load ptr, ptr %i.r, align 8              ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
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
  %.not11 = trunc i32 %1 to i1
  %.sroa.08.112 = select i1 %.not11, double %0, double 1.000000e+00 ; 2 uses
  %.sroa.0.0.off13 = add i32 %1, 1
  %i.a = icmp ult i32 %.sroa.0.0.off13, 3
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.08.116 = phi double [ %.sroa.08.1, %.lr.ph ], [ %.sroa.08.112, %bb.a ] ; 2 uses
  %.sroa.0.015 = phi i32 [ %i.b, %.lr.ph ], [ %1, %bb.a ]
  %.sroa.05.014 = phi double [ %i.c, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.b = sdiv i32 %.sroa.0.015, 2                 ; 3 uses
  %i.c = fmul double %.sroa.05.014, %.sroa.05.014 ; 2 uses
  %.not = trunc i32 %i.b to i1
  %i.d = fmul double %.sroa.08.116, %i.c
  %.sroa.08.1 = select i1 %.not, double %i.d, double %.sroa.08.116 ; 2 uses
  %.sroa.0.0.off = add nsw i32 %i.b, 1
  %i.e = icmp ult i32 %.sroa.0.0.off, 3
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.08.1.lcssa = phi double [ %.sroa.08.112, %bb.a ], [ %.sroa.08.1, %.lr.ph ] ; 2 uses
  %i.f = icmp slt i32 %1, 0
  %i.g = fdiv double 1.000000e+00, %.sroa.08.1.lcssa
  %.sroa.08.2 = select i1 %i.f, double %i.g, double %.sroa.08.1.lcssa ; 2 uses
  %i.h = tail call zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core3f64d6is_nanCsatzsiS36G5T_11typst_utils(double %.sroa.08.2) #32
  %..i = select i1 %i.h, double 0.000000e+00, double %.sroa.08.2
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
  store <2 x i64> zeroinitializer, ptr %i.d, align 16, !noalias !5
  call void @_RNvMs1K_NtNtCs3oUPovFnLWP_4core9core_arch3x86NtB6_7___m128i8as_i8x16CsatzsiS36G5T_11typst_utils(ptr nonnull sret([16 x i8]) align 16 %i.e, ptr nonnull align 16 %i.d) #32, !noalias !5
  %i.g = load <16 x i8>, ptr %i.e, align 16, !noalias !5
  store <2 x i64> %i.f, ptr %i.b, align 16, !noalias !5
  call void @_RNvMs1K_NtNtCs3oUPovFnLWP_4core9core_arch3x86NtB6_7___m128i8as_i8x16CsatzsiS36G5T_11typst_utils(ptr nonnull sret([16 x i8]) align 16 %i.c, ptr nonnull align 16 %i.b) #32, !noalias !5
  %i.h = load <16 x i8>, ptr %i.c, align 16, !noalias !5
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
  %.sroa.14.0 = phi i64 [ 1, %bb.a ], [ undef, %bb.d ], [ undef, %bb.b ], [ %i.f, %bb.c ]
  %.sroa.026.0 = phi i64 [ 1, %bb.a ], [ 0, %bb.d ], [ 0, %bb.b ], [ 1, %bb.c ]
  %i.b = insertvalue { i64, i64 } poison, i64 %.sroa.026.0, 0
  %i.c = insertvalue { i64, i64 } %i.b, i64 %.sroa.14.0, 1
  ret { i64, i64 } %i.c

.preheader52:                                     ; preds = %bb.a, %bb.e
  %.sroa.034.0 = phi i64 [ %.sroa.034.1, %bb.e ], [ 1, %bb.a ] ; 2 uses
  %.sroa.016.0 = phi i32 [ %i.k, %bb.e ], [ %1, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi i64 [ %i.j, %bb.e ], [ %0, %bb.a ] ; 3 uses
  %2 = trunc i32 %.sroa.016.0 to i1
  br i1 %2, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.preheader52
  %i.d = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.034.0, i64 %.sroa.0.0) ; 2 uses
  %i.e = extractvalue { i64, i1 } %i.d, 1
  br i1 %i.e, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = extractvalue { i64, i1 } %i.d, 0         ; 2 uses
  %i.g = icmp eq i32 %.sroa.016.0, 1
  br i1 %i.g, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c, %.preheader52
  %.sroa.034.1 = phi i64 [ %i.f, %bb.c ], [ %.sroa.034.0, %.preheader52 ]
  %i.h = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.0.0, i64 %.sroa.0.0) ; 2 uses
  %i.i = extractvalue { i64, i1 } %i.h, 1
  br i1 %i.i, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = extractvalue { i64, i1 } %i.h, 0
  %i.k = lshr i32 %.sroa.016.0, 1
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
  br i1 %i.ah, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.b
  %storemerge = phi ptr [ %i.d, %bb.b ], [ %i.ai, %bb.e ]
  store ptr %storemerge, ptr %0, align 8
  ret void

bb.e:                                             ; preds = %bb.c
  call void @_RNvMs0_CslnPB5LbcFkI_8thin_vecNtB5_6Header16set_cap_and_auto(ptr align 8 %i.ag, i64 %1, i1 zeroext false)
  %i.ai = call ptr @_RNvMs1_NtNtCs3oUPovFnLWP_4core3ptr8non_nullINtB5_7NonNullNtCslnPB5LbcFkI_8thin_vec6HeaderE13new_uncheckedBV_(ptr %i.ag, ptr nonnull align 8 @92) #32
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  %i.aj = call { i64, i64 } @_RINvCslnPB5LbcFkI_8thin_vec6layoutjECsatzsiS36G5T_11typst_utils(i64 %1) ; 2 uses
  %i.ak = extractvalue { i64, i64 } %i.aj, 0
  %i.al = extractvalue { i64, i64 } %i.aj, 1
  call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 %i.ak, i64 %i.al) #34
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE12as_mut_sliceCsatzsiS36G5T_11typst_utils(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
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
  %i.j = tail call { ptr, i64 } @_RINvNtNtCs3oUPovFnLWP_4core5slice3raw18from_raw_parts_mutjECsatzsiS36G5T_11typst_utils(ptr nonnull %.sroa.0.0.i, i64 %.val.i, ptr nonnull align 8 @93) #32
  ret { ptr, i64 } %i.j
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE12is_singletonCsatzsiS36G5T_11typst_utils(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp eq ptr %i.a, @_RNvCslnPB5LbcFkI_8thin_vec12EMPTY_HEADER
  ret i1 %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef zeroext i1 @_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE13is_auto_arrayCsatzsiS36G5T_11typst_utils(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define i64 @_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE13with_capacityCsatzsiS36G5T_11typst_utils(i64 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @_RINvNtCs3oUPovFnLWP_4core3cmp3maxjECslnPB5LbcFkI_8thin_vec(i64 8, i64 8) #32 ; 0 uses
  %i.b = icmp eq i64 %0, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @_RINvCslnPB5LbcFkI_8thin_vec20header_with_capacityjECsatzsiS36G5T_11typst_utils(i64 %0, i1 zeroext poison)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @_RNvMs1_NtNtCs3oUPovFnLWP_4core3ptr8non_nullINtB5_7NonNullNtCslnPB5LbcFkI_8thin_vec6HeaderE13new_uncheckedBV_(ptr nonnull @_RNvCslnPB5LbcFkI_8thin_vec12EMPTY_HEADER, ptr nonnull align 8 @94) #32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi ptr [ %i.d, %bb.c ], [ %i.c, %bb.b ]
  %.sroa.0.0 = ptrtoint ptr %.sroa.0.0.in to i64
  ret i64 %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE14has_allocationCsatzsiS36G5T_11typst_utils(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp ne ptr %i.a, @_RNvCslnPB5LbcFkI_8thin_vec12EMPTY_HEADER
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE14push_uncheckedCsatzsiS36G5T_11typst_utils(ptr nofree readonly align 8 captures(none) %0, i64 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %.val.i = load i64, ptr %i.a, align 8           ; 2 uses
  %i.b = tail call i64 @_RINvNtCs3oUPovFnLWP_4core3cmp3maxjECslnPB5LbcFkI_8thin_vec(i64 8, i64 8) #32 ; 2 uses
end_hunk_0
