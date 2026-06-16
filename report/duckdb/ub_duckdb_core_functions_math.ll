inline.NumInlined: 9993
inline.NumDeleted: 1660
begin_hunk_0_@_ZN6duckdb14ScalarFunction13UnaryFunctionIiNS_9hugeint_tENS_12_GLOBAL__N_117FactorialOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !40   ; 11 uses
  %i.d = load i8, ptr %i.a, align 8, !tbaa !55
  switch i8 %i.d, label %bb.ag [
    i8 2, label %bb.b
    i8 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_9hugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !77   ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIiEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !77
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !78   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !tbaa !79
  %i.l = trunc i64 %i.k to i1
  br i1 %i.l, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
  br label %_ZN6duckdb13UnaryExecutor7ExecuteIiNS_9hugeint_tENS_12_GLOBAL__N_117FactorialOperatorEEEvRNS_6VectorES6_m.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i, %bb.b
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext false)
  %i.m = load i32, ptr %i.h, align 4, !tbaa !3
  %i.n = tail call fastcc { i64, i64 } @_ZN6duckdb20UnaryOperatorWrapper9OperationINS_12_GLOBAL__N_117FactorialOperatorEiNS_9hugeint_tEEET1_T0_RNS_12ValidityMaskEmPv(i32 noundef %i.m) ; 2 uses
  %i.o = extractvalue { i64, i64 } %i.n, 0
  %i.p = extractvalue { i64, i64 } %i.n, 1
  store i64 %i.o, ptr %i.f, align 8, !tbaa !79
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.p, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !79
  br label %_ZN6duckdb13UnaryExecutor7ExecuteIiNS_9hugeint_tENS_12_GLOBAL__N_117FactorialOperatorEEEvRNS_6VectorES6_m.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_9hugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !77   ; 3 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIiEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !77   ; 3 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3242)
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !78, !noalias !3244 ; 2 uses
  %.not.i.i59.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i59.i.i, label %.preheader.i.i.i, label %bb.e

.preheader.i.i.i:                                 ; preds = %bb.d
  %.not21.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not21.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIiNS_9hugeint_tENS_12_GLOBAL__N_117FactorialOperatorEEEvRNS_6VectorES6_m.exit, label %.lr.ph19.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.v, ptr %i.w, align 8, !tbaa !78, !noalias !3244
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.y = icmp eq ptr %2, %i.a
  br i1 %i.y, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !26, !noalias !3244 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %i.z, align 8, !tbaa !13, !noalias !3244
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25, !noalias !3244
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !3, !noalias !3244
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ad, align 4, !tbaa !3, !noalias !3244
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ah = atomicrmw volatile add ptr %i.ad, i32 1 acq_rel, align 4, !noalias !3244 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h, %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !26, !noalias !3244 ; 8 uses
  store <2 x ptr> %i.ac, ptr %i.x, align 8, !tbaa !13, !noalias !3244
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.al = load atomic i64, ptr %i.ak acquire, align 8, !noalias !3244 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4294967297
  %i.an = trunc i64 %i.al to i32                  ; 2 uses
  br i1 %i.am, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ak, align 8, !tbaa !32, !noalias !3244
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 0, ptr %i.ao, align 4, !tbaa !34, !noalias !3244
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !22, !noalias !3244
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !3244
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #23, !noalias !3244, !inline_history !3245
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !22, !noalias !3244
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !noalias !3244
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #23, !noalias !3244, !inline_history !3245
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25, !noalias !3244
  %.not.i.i.i.i5.i.i.i.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i.i5.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = add nsw i32 %i.an, -1
  store i32 %i.aw, ptr %i.ak, align 8, !tbaa !3, !noalias !3244
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ax = atomicrmw volatile add ptr %i.ak, i32 -1 acq_rel, align 4, !noalias !3244
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.an, %bb.m ], [ %i.ax, %bb.n ]
  %i.ay = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ay, label %bb.o, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, !prof !36

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #23, !noalias !3244
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.k, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !83, !noalias !3244
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !83, !noalias !3244
  %i.bc = add i64 %i.c, 63
  %i.bd = lshr i64 %i.bc, 6                       ; 2 uses
  %.not20.i.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not20.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIiNS_9hugeint_tENS_12_GLOBAL__N_117FactorialOperatorEEEvRNS_6VectorES6_m.exit, label %.lr.ph17.i.i.i

.lr.ph17.i.i.i:                                   ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.2.0..sroa_idx.i.i63.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.p

bb.p:                                             ; preds = %.loopexit5.i.i.i, %.lr.ph17.i.i.i
  %.016.i.i.i = phi i64 [ 0, %.lr.ph17.i.i.i ], [ %.4.i.i.i, %.loopexit5.i.i.i ] ; 9 uses
  %.05815.i.i.i = phi i64 [ 0, %.lr.ph17.i.i.i ], [ %i.cv, %.loopexit5.i.i.i ] ; 2 uses
  %i.bg = load ptr, ptr %i.u, align 8, !tbaa !78, !noalias !3244 ; 2 uses
  %.not.i60.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i60.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i: ; preds = %bb.p
  %i.bh = add i64 %.016.i.i.i, 64
  %i.bi = call noundef i64 @llvm.umin.i64(i64 %i.bh, i64 %i.c)
  br label %.preheader6.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i: ; preds = %bb.p
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.05815.i.i.i
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !79, !noalias !3244 ; 2 uses
  %i.bl = add i64 %.016.i.i.i, 64
  %i.bm = call noundef i64 @llvm.umin.i64(i64 %i.bl, i64 %i.c) ; 5 uses
  switch i64 %i.bk, label %.preheader4.i.i.i [
    i64 -1, label %.preheader6.i.i.i
    i64 0, label %.loopexit5.i.i.i
  ]

.preheader6.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i
  %i.bn = phi i64 [ %i.bi, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i ], [ %i.bm, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i ] ; 3 uses
  %i.bo = icmp ult i64 %.016.i.i.i, %i.bn
  br i1 %i.bo, label %.lr.ph.i.i.i, label %.loopexit5.i.i.i

.preheader4.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.bp = icmp ult i64 %.016.i.i.i, %i.bm
  br i1 %i.bp, label %.lr.ph13.i.i.i, label %.loopexit5.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader6.i.i.i, %_ZN6duckdb20UnaryOperatorWrapper9OperationINS_12_GLOBAL__N_117FactorialOperatorEiNS_9hugeint_tEEET1_T0_RNS_12ValidityMaskEmPv.exit.i.i.i
  %.111.i.i.i = phi i64 [ %i.cd, %_ZN6duckdb20UnaryOperatorWrapper9OperationINS_12_GLOBAL__N_117FactorialOperatorEiNS_9hugeint_tEEET1_T0_RNS_12ValidityMaskEmPv.exit.i.i.i ], [ %.016.i.i.i, %.preheader6.i.i.i ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.111.i.i.i
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !3, !alias.scope !3239, !noalias !3242 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !3244
  call void @llvm.lifetime.start.p0(ptr nonnull %8), !noalias !3244
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef 1), !noalias !3244
  %.not14.i.i.i.i.i = icmp slt i32 %i.br, 2
  br i1 %.not14.i.i.i.i.i, label %_ZN6duckdb20UnaryOperatorWrapper9OperationINS_12_GLOBAL__N_117FactorialOperatorEiNS_9hugeint_tEEET1_T0_RNS_12ValidityMaskEmPv.exit.i.i.i, label %bb.r

bb.q:                                             ; preds = %bb.r
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %12 = trunc nuw i64 %indvars.iv.next.i.i.i.i.i to i32
  %.not.i.i.i.i.i = icmp slt i32 %i.br, %12
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb20UnaryOperatorWrapper9OperationINS_12_GLOBAL__N_117FactorialOperatorEiNS_9hugeint_tEEET1_T0_RNS_12ValidityMaskEmPv.exit.i.i.i, label %bb.r, !llvm.loop !3246

bb.r:                                             ; preds = %.lr.ph.i.i.i, %bb.q
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %bb.q ], [ 2, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %7, align 16, !tbaa !79, !noalias !3244
  %.sroa.2.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !79, !noalias !3244
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 noundef %indvars.iv.i.i.i.i.i), !noalias !3244
  %i.bs = load i64, ptr %8, align 8, !noalias !3244
  %i.bt = load i64, ptr %i.be, align 8, !noalias !3244
  %i.bu = call noundef zeroext i1 @_ZN6duckdb19TryMultiplyOperator9OperationINS_9hugeint_tES2_S2_EEbT_T0_RT1_(i64 %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.2.0.copyload.i.i.i.i.i, i64 %i.bs, i64 %i.bt, ptr noundef nonnull align 8 dereferenceable(16) %7), !noalias !3244
  br i1 %i.bu, label %bb.q, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bv = call ptr @__cxa_allocate_exception(i64 16) #23, !noalias !3244 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23, !noalias !3244
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23, !noalias !3244
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.36, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.t unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i, !noalias !3244

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.u unwind label %bb.v, !noalias !3244

bb.u:                                             ; preds = %bb.t
  invoke void @__cxa_throw(ptr nonnull %i.bv, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.w unwind label %bb.v, !noalias !3244

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i: ; preds = %bb.s
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23, !noalias !3244
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23, !noalias !3244
  br label %common.resume.sink.split.i.i.i

bb.v:                                             ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i = phi i1 [ false, %bb.u ], [ true, %bb.t ] ; 2 uses
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.by = load ptr, ptr %9, align 8, !tbaa !238, !noalias !3244 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.v
  call void @_ZdlPv(ptr noundef %i.by) #27, !noalias !3244
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23, !noalias !3244
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23, !noalias !3244
  br i1 %.0.i.i.i.i.i, label %common.resume.sink.split.i.i.i, label %common.resume.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23, !noalias !3244
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23, !noalias !3244
  br i1 %.0.i.i.i.i.i, label %common.resume.sink.split.i.i.i, label %common.resume.i.i

common.resume.sink.split.i.i.i:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i73.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i72.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i68.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i
  %.sink.i.i.i = phi ptr [ %i.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i68.i.i.i ], [ %i.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i73.i.i.i ], [ %i.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i72.i.i.i ], [ %i.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ %i.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i ]
  %common.resume.op.ph.i.i.i = phi { ptr, i32 } [ %i.cn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i68.i.i.i ], [ %i.co, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i73.i.i.i ], [ %i.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i72.i.i.i ], [ %i.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i ], [ %i.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ %i.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %.sink.i.i.i) #23, !noalias !3244
  br label %common.resume.i.i

common.resume.i.i:                                ; preds = %.loopexit.split-lp.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i73.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i72.i.i.i, %common.resume.sink.split.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %common.resume.op.i.i = phi { ptr, i32 } [ %.pn.pn.i.i, %.loopexit.split-lp.i.i ], [ %i.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ %i.co, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i73.i.i.i ], [ %i.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i ], [ %i.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i72.i.i.i ], [ %common.resume.op.ph.i.i.i, %common.resume.sink.split.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.w:                                             ; preds = %bb.u
  unreachable

_ZN6duckdb20UnaryOperatorWrapper9OperationINS_12_GLOBAL__N_117FactorialOperatorEiNS_9hugeint_tEEET1_T0_RNS_12ValidityMaskEmPv.exit.i.i.i: ; preds = %bb.q, %.lr.ph.i.i.i
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.111.i.i.i
  %i.cc = load <2 x i64>, ptr %7, align 16, !noalias !3244
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !3244
  call void @llvm.lifetime.end.p0(ptr nonnull %8), !noalias !3244
  store <2 x i64> %i.cc, ptr %i.cb, align 8, !tbaa !79, !alias.scope !3242, !noalias !3239
  %i.cd = add nuw i64 %.111.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.cd, %i.bn
  br i1 %exitcond.not.i.i.i, label %.loopexit5.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !3247

.lr.ph13.i.i.i:                                   ; preds = %.preheader4.i.i.i, %bb.af
  %.212.i.i.i = phi i64 [ %i.cu, %bb.af ], [ %.016.i.i.i, %.preheader4.i.i.i ] ; 4 uses
  %i.ce = sub nuw i64 %.212.i.i.i, %.016.i.i.i
  %i.cf = shl nuw i64 1, %i.ce
  %i.cg = and i64 %i.cf, %i.bk
  %.not.i.i.i = icmp eq i64 %i.cg, 0
  br i1 %.not.i.i.i, label %bb.af, label %bb.x

bb.x:                                             ; preds = %.lr.ph13.i.i.i
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.212.i.i.i
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !3, !alias.scope !3239, !noalias !3242 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !3244
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !3244
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef 1), !noalias !3244
  %.not14.i.i61.i.i.i = icmp slt i32 %i.ci, 2
  br i1 %.not14.i.i61.i.i.i, label %_ZN6duckdb20UnaryOperatorWrapper9OperationINS_12_GLOBAL__N_117FactorialOperatorEiNS_9hugeint_tEEET1_T0_RNS_12ValidityMaskEmPv.exit81.i.i.i, label %bb.z

bb.y:                                             ; preds = %bb.z
  %indvars.iv.next.i.i74.i.i.i = add nuw nsw i64 %indvars.iv.i.i65.i.i.i, 1 ; 2 uses
  %13 = trunc nuw i64 %indvars.iv.next.i.i74.i.i.i to i32
  %.not.i.i74.i.i.i = icmp slt i32 %i.ci, %13
  br i1 %.not.i.i74.i.i.i, label %_ZN6duckdb20UnaryOperatorWrapper9OperationINS_12_GLOBAL__N_117FactorialOperatorEiNS_9hugeint_tEEET1_T0_RNS_12ValidityMaskEmPv.exit81.i.i.i, label %bb.z, !llvm.loop !3246

bb.z:                                             ; preds = %bb.x, %bb.y
  %indvars.iv.i.i65.i.i.i = phi i64 [ %indvars.iv.next.i.i74.i.i.i, %bb.y ], [ 2, %bb.x ] ; 2 uses
  %.sroa.0.0.copyload.i.i66.i.i.i = load i64, ptr %3, align 16, !tbaa !79, !noalias !3244
  %.sroa.2.0.copyload.i.i67.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i63.i.i.i, align 8, !tbaa !79, !noalias !3244
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %indvars.iv.i.i65.i.i.i), !noalias !3244
  %i.cj = load i64, ptr %4, align 8, !noalias !3244
  %i.ck = load i64, ptr %i.bf, align 8, !noalias !3244
  %i.cl = call noundef zeroext i1 @_ZN6duckdb19TryMultiplyOperator9OperationINS_9hugeint_tES2_S2_EEbT_T0_RT1_(i64 %.sroa.0.0.copyload.i.i66.i.i.i, i64 %.sroa.2.0.copyload.i.i67.i.i.i, i64 %i.cj, i64 %i.ck, ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !3244
  br i1 %i.cl, label %bb.y, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cm = call ptr @__cxa_allocate_exception(i64 16) #23, !noalias !3244 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !3244
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !3244
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.36, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.ab unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i68.i.i.i, !noalias !3244

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.ac unwind label %bb.ad, !noalias !3244

bb.ac:                                            ; preds = %bb.ab
  invoke void @__cxa_throw(ptr nonnull %i.cm, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.ae unwind label %bb.ad, !noalias !3244

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i68.i.i.i: ; preds = %bb.aa
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !3244
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !3244
  br label %common.resume.sink.split.i.i.i

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.0.i.i71.i.i.i = phi i1 [ false, %bb.ac ], [ true, %bb.ab ] ; 2 uses
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cp = load ptr, ptr %5, align 8, !tbaa !238, !noalias !3244 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i73.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i72.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i72.i.i.i: ; preds = %bb.ad
  call void @_ZdlPv(ptr noundef %i.cp) #27, !noalias !3244
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !3244
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !3244
  br i1 %.0.i.i71.i.i.i, label %common.resume.sink.split.i.i.i, label %common.resume.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i73.i.i.i: ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !3244
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !3244
  br i1 %.0.i.i71.i.i.i, label %common.resume.sink.split.i.i.i, label %common.resume.i.i

bb.ae:                                            ; preds = %bb.ac
  unreachable

_ZN6duckdb20UnaryOperatorWrapper9OperationINS_12_GLOBAL__N_117FactorialOperatorEiNS_9hugeint_tEEET1_T0_RNS_12ValidityMaskEmPv.exit81.i.i.i: ; preds = %bb.y, %bb.x
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.212.i.i.i
  %i.ct = load <2 x i64>, ptr %3, align 16, !noalias !3244
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !3244
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !3244
  store <2 x i64> %i.ct, ptr %i.cs, align 8, !tbaa !79, !alias.scope !3242, !noalias !3239
  br label %bb.af

bb.af:                                            ; preds = %_ZN6duckdb20UnaryOperatorWrapper9OperationINS_12_GLOBAL__N_117FactorialOperatorEiNS_9hugeint_tEEET1_T0_RNS_12ValidityMaskEmPv.exit81.i.i.i, %.lr.ph13.i.i.i
  %i.cu = add nuw i64 %.212.i.i.i, 1              ; 2 uses
  %exitcond25.not.i.i.i = icmp eq i64 %i.cu, %i.bm
  br i1 %exitcond25.not.i.i.i, label %.loopexit5.i.i.i, label %.lr.ph13.i.i.i, !llvm.loop !3248

.loopexit5.i.i.i:                                 ; preds = %bb.af, %_ZN6duckdb20UnaryOperatorWrapper9OperationINS_12_GLOBAL__N_117FactorialOperatorEiNS_9hugeint_tEEET1_T0_RNS_12ValidityMaskEmPv.exit.i.i.i, %.preheader4.i.i.i, %.preheader6.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %.4.i.i.i = phi i64 [ %i.bm, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i ], [ %i.bn, %_ZN6duckdb20UnaryOperatorWrapper9OperationINS_12_GLOBAL__N_117FactorialOperatorEiNS_9hugeint_tEEET1_T0_RNS_12ValidityMaskEmPv.exit.i.i.i ], [ %.016.i.i.i, %.preheader4.i.i.i ], [ %.016.i.i.i, %.preheader6.i.i.i ], [ %i.bm, %bb.af ]
  %i.cv = add nuw nsw i64 %.05815.i.i.i, 1        ; 2 uses
  %exitcond26.not.i.i.i = icmp eq i64 %i.cv, %i.bd
  br i1 %exitcond26.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIiNS_9hugeint_tENS_12_GLOBAL__N_117FactorialOperatorEEEvRNS_6VectorES6_m.exit, label %bb.p, !llvm.loop !3249

.lr.ph19.i.i.i:                                   ; preds = %.preheader.i.i.i, %.lr.ph19.i.i.i
  %.05918.i.i.i = phi i64 [ %i.dc, %.lr.ph19.i.i.i ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.05918.i.i.i
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !3, !alias.scope !3239, !noalias !3242
  %i.cy = tail call fastcc { i64, i64 } @_ZN6duckdb20UnaryOperatorWrapper9OperationINS_12_GLOBAL__N_117FactorialOperatorEiNS_9hugeint_tEEET1_T0_RNS_12ValidityMaskEmPv(i32 noundef %i.cx) ; 2 uses
  %i.cz = extractvalue { i64, i64 } %i.cy, 0
  %i.da = extractvalue { i64, i64 } %i.cy, 1
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.05918.i.i.i ; 2 uses
  store i64 %i.cz, ptr %i.db, align 8, !tbaa !79, !alias.scope !3242, !noalias !3239
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store i64 %i.da, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !79, !alias.scope !3242, !noalias !3239
  %i.dc = add nuw i64 %.05918.i.i.i, 1            ; 2 uses
  %exitcond27.not.i.i.i = icmp eq i64 %i.dc, %i.c
  br i1 %exitcond27.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIiNS_9hugeint_tENS_12_GLOBAL__N_117FactorialOperatorEEEvRNS_6VectorES6_m.exit, label %.lr.ph19.i.i.i, !llvm.loop !3250

bb.ag:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %11)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(73) %11)
          to label %bb.ah unwind label %bb.bg

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
          to label %bb.ai unwind label %bb.bg

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_9hugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.aj unwind label %bb.bh

bb.aj:                                            ; preds = %bb.ai
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !77 ; 4 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIiEEvv(ptr noundef nonnull align 8 dereferenceable(73) %11)
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.df = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !131 ; 4 uses
  %i.dh = load ptr, ptr %11, align 8, !tbaa !140  ; 2 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.al unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i

bb.al:                                            ; preds = %bb.ak
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3251)
  call void @llvm.experimental.noalias.scope.decl(metadata !3254)
  call void @llvm.experimental.noalias.scope.decl(metadata !3256)
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !78, !noalias !3258
  %.not.i.i60.i.i = icmp eq ptr %i.dk, null
  %.not7.i.i.i = icmp eq i64 %i.c, 0              ; 2 uses
  br i1 %.not.i.i60.i.i, label %.preheader.i64.i.i, label %.preheader1.i.i.i

.preheader1.i.i.i:                                ; preds = %bb.al
  br i1 %.not7.i.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopIiNS_9hugeint_tENS_20UnaryOperatorWrapperENS_12_GLOBAL__N_117FactorialOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESF_Pvb.exit.i.i, label %.lr.ph.i61.i.i

.lr.ph.i61.i.i:                                   ; preds = %.preheader1.i.i.i
  %i.dl = load ptr, ptr %i.dh, align 8, !tbaa !153, !alias.scope !3256, !noalias !3259 ; 2 uses
  %.not.i31.i.i.i = icmp eq ptr %i.dl, null
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  br i1 %.not.i31.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i: ; preds = %.lr.ph.i61.i.i, %bb.ap
  %.03.us.i.i.i = phi i64 [ %i.eh, %bb.ap ], [ 0, %.lr.ph.i61.i.i ] ; 5 uses
  %i.dn = lshr i64 %.03.us.i.i.i, 6               ; 2 uses
  %i.do = and i64 %.03.us.i.i.i, 63
  %i.dp = load ptr, ptr %i.dj, align 8, !tbaa !78, !noalias !3258
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.dn
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !79, !noalias !3258
  %i.ds = shl nuw i64 1, %i.do                    ; 2 uses
  %i.dt = and i64 %i.dr, %i.ds
  %.not.us.i.i.i = icmp eq i64 %i.dt, 0
  br i1 %.not.us.i.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %.03.us.i.i.i
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !3, !alias.scope !3251, !noalias !3260
  %i.dw = invoke fastcc { i64, i64 } @_ZN6duckdb20UnaryOperatorWrapper9OperationINS_12_GLOBAL__N_117FactorialOperatorEiNS_9hugeint_tEEET1_T0_RNS_12ValidityMaskEmPv(i32 noundef %i.dv)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ; 2 uses

.noexc.i.i:                                       ; preds = %bb.am
  %i.dx = extractvalue { i64, i64 } %i.dw, 0
  %i.dy = extractvalue { i64, i64 } %i.dw, 1
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %.03.us.i.i.i ; 2 uses
  store i64 %i.dx, ptr %i.dz, align 8, !tbaa !79, !alias.scope !3254, !noalias !3261
  %.sroa.47.0..sroa_idx.us.i.i.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store i64 %i.dy, ptr %.sroa.47.0..sroa_idx.us.i.i.i, align 8, !tbaa !79, !alias.scope !3254, !noalias !3261
  br label %bb.ap

bb.an:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i
  %i.ea = load ptr, ptr %i.di, align 8, !tbaa !78, !noalias !3258 ; 2 uses
  %.not.i32.us.i.i.i = icmp eq ptr %i.ea, null
  br i1 %.not.i32.us.i.i.i, label %bb.ao, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i

bb.ao:                                            ; preds = %bb.an
  %i.eb = load i64, ptr %i.dm, align 8, !tbaa !83, !noalias !3258
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.di, i64 noundef %i.eb)
          to label %.noexc66.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i

.noexc66.i.i:                                     ; preds = %bb.ao
  %.pre.i.us.i.i.i = load ptr, ptr %i.di, align 8, !tbaa !78, !noalias !3258
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i: ; preds = %.noexc66.i.i, %bb.an
  %i.ec = phi ptr [ %.pre.i.us.i.i.i, %.noexc66.i.i ], [ %i.ea, %bb.an ]
  %i.ed = xor i64 %i.ds, -1
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.dn ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !79, !noalias !3258
  %i.eg = and i64 %i.ef, %i.ed
  store i64 %i.eg, ptr %i.ee, align 8, !tbaa !79, !noalias !3258
  br label %bb.ap

bb.ap:                                            ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i, %.noexc.i.i
  %i.eh = add nuw i64 %.03.us.i.i.i, 1            ; 2 uses
  %exitcond11.not.i.i.i = icmp eq i64 %i.eh, %i.c
  br i1 %exitcond11.not.i.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopIiNS_9hugeint_tENS_20UnaryOperatorWrapperENS_12_GLOBAL__N_117FactorialOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESF_Pvb.exit.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i, !llvm.loop !3262

.preheader.i64.i.i:                               ; preds = %bb.al
  br i1 %.not7.i.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopIiNS_9hugeint_tENS_20UnaryOperatorWrapperENS_12_GLOBAL__N_117FactorialOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESF_Pvb.exit.i.i, label %.lr.ph5.i.i.i

.lr.ph5.i.i.i:                                    ; preds = %.preheader.i64.i.i
  %i.ei = load ptr, ptr %i.dh, align 8, !tbaa !153, !alias.scope !3256, !noalias !3259 ; 2 uses
  %.not.i33.i.i.i = icmp eq ptr %i.ei, null
  br i1 %.not.i33.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us.i.i.i: ; preds = %.lr.ph5.i.i.i, %.noexc67.i.i
  %.0304.us.i.i.i = phi i64 [ %i.ep, %.noexc67.i.i ], [ 0, %.lr.ph5.i.i.i ] ; 3 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %.0304.us.i.i.i
end_hunk_0
begin_hunk_1_@_ZN6duckdb20UnaryOperatorWrapper9OperationINS_12_GLOBAL__N_123NoInfiniteDoubleWrapperINS2_4ACosEEEddEET1_T0_RNS_12ValidityMaskEmPv:bb.a
  br i1 %.0.i.i, label %common.resume.sink.split.i, label %common.resume.i

common.resume.sink.split.i:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.sink.i = phi ptr [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ]
  %common.resume.op.ph.i = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ]
  call void @__cxa_free_exception(ptr %.sink.i) #23
  br label %common.resume.i

common.resume.i:                                  ; preds = %common.resume.sink.split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %common.resume.op.ph.i, %common.resume.sink.split.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.l:                                             ; preds = %bb.j
  unreachable

_ZN6duckdb12_GLOBAL__N_14ACos9OperationIddEET0_T_.exit.i: ; preds = %bb.g
  %i.q = tail call noundef double @acos(double noundef %0) #23, !tbaa !3
  br label %_ZN6duckdb12_GLOBAL__N_123NoInfiniteDoubleWrapperINS0_4ACosEE9OperationIddEET0_T_.exit

bb.m:                                             ; preds = %bb.e
  unreachable

_ZN6duckdb12_GLOBAL__N_123NoInfiniteDoubleWrapperINS0_4ACosEE9OperationIddEET0_T_.exit: ; preds = %bb.b, %_ZN6duckdb12_GLOBAL__N_14ACos9OperationIddEET0_T_.exit.i
  %.05.i = phi double [ %i.q, %_ZN6duckdb12_GLOBAL__N_14ACos9OperationIddEET0_T_.exit.i ], [ %0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret double %.05.i
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @acos(double noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cosh(double noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @acosh(double noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sinh(double noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @asinh(double noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @tanh(double noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atanh(double noundef) local_unnamed_addr #15

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef double @_ZN6duckdb20UnaryOperatorWrapper9OperationINS_12_GLOBAL__N_129NoInfiniteNoZeroDoubleWrapperINS2_11CotOperatorEEEddEET1_T0_RNS_12ValidityMaskEmPv(double noundef %0) unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store double %0, ptr %i.a, align 8, !tbaa !80
  %i.b = tail call noundef zeroext i1 @_ZN6duckdb5Value8IsFiniteIdEEbT_(double noundef %0)
  br i1 %i.b, label %bb.g, label %bb.b, !prof !2759

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZN6duckdb5Value5IsNanIdEEbT_(double noundef %0)
  br i1 %i.c, label %_ZN6duckdb12_GLOBAL__N_129NoInfiniteNoZeroDoubleWrapperINS0_11CotOperatorEE9OperationIddEET0_T_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6duckdb19OutOfRangeExceptionC2IJRdEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.n unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %.sink.split.i

bb.f:                                             ; preds = %bb.e, %bb.d
  %.04.i = phi i1 [ false, %bb.e ], [ true, %bb.d ] ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !238    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.g) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.04.i, label %.sink.split.i, label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.04.i, label %.sink.split.i, label %bb.m

bb.g:                                             ; preds = %bb.a
  %i.j = fcmp oeq double %0, 0.000000e+00
  br i1 %i.j, label %bb.h, label %bb.l, !prof !36

bb.h:                                             ; preds = %bb.g
  %i.k = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.33, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.thread.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN6duckdb19OutOfRangeExceptionC2IJRdEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.n unwind label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.thread.i: ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %.sink.split.i

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0.i = phi i1 [ false, %bb.j ], [ true, %bb.i ] ; 2 uses
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.n = load ptr, ptr %3, align 8, !tbaa !238    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i: ; preds = %bb.k
  call void @_ZdlPv(ptr noundef %i.n) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br i1 %.0.i, label %.sink.split.i, label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br i1 %.0.i, label %.sink.split.i, label %bb.m

bb.l:                                             ; preds = %bb.g
  %i.q = tail call double @tan(double noundef %0) #23, !tbaa !3
  %i.r = fdiv double 1.000000e+00, %i.q
  br label %_ZN6duckdb12_GLOBAL__N_129NoInfiniteNoZeroDoubleWrapperINS0_11CotOperatorEE9OperationIddEET0_T_.exit

.sink.split.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.thread.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.sink.i = phi ptr [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.thread.i ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i ]
  %.pn14.pn.ph.i = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.thread.i ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i ]
  call void @__cxa_free_exception(ptr %.sink.i) #23
  br label %bb.m

bb.m:                                             ; preds = %.sink.split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn14.pn.i = phi { ptr, i32 } [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i ], [ %.pn14.pn.ph.i, %.sink.split.i ]
  resume { ptr, i32 } %.pn14.pn.i

bb.n:                                             ; preds = %bb.j, %bb.e
  unreachable

_ZN6duckdb12_GLOBAL__N_129NoInfiniteNoZeroDoubleWrapperINS0_11CotOperatorEE9OperationIddEET0_T_.exit: ; preds = %bb.b, %bb.l
  %.011.i = phi double [ %i.r, %bb.l ], [ %0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret double %.011.i
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @tgamma(double noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare double @lgamma(double noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc { i64, i64 } @_ZN6duckdb20UnaryOperatorWrapper9OperationINS_12_GLOBAL__N_117FactorialOperatorEiNS_9hugeint_tEEET1_T0_RNS_12ValidityMaskEmPv(i32 noundef %0) unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.duckdb::hugeint_t", align 8 ; 8 uses
  %2 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef 1)
  %.not14.i = icmp slt i32 %0, 2
  br i1 %.not14.i, label %_ZN6duckdb12_GLOBAL__N_117FactorialOperator9OperationIiNS_9hugeint_tEEET0_T_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %5 = trunc nuw i64 %indvars.iv.next.i to i32
  %.not.i = icmp slt i32 %0, %5
  br i1 %.not.i, label %_ZN6duckdb12_GLOBAL__N_117FactorialOperator9OperationIiNS_9hugeint_tEEET0_T_.exit, label %bb.c, !llvm.loop !3246

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 2, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !79
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !79
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %indvars.iv.i)
  %i.b = load i64, ptr %2, align 8
  %i.c = load i64, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_ZN6duckdb19TryMultiplyOperator9OperationINS_9hugeint_tES2_S2_EEbT_T0_RT1_(i64 %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i, i64 %i.b, i64 %i.c, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br i1 %i.d, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.36, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.j unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0.i = phi i1 [ false, %bb.f ], [ true, %bb.e ] ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.h = load ptr, ptr %3, align 8, !tbaa !238    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.h) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br i1 %.0.i, label %bb.h, label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br i1 %.0.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn13.i = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #23
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn12.i = phi { ptr, i32 } [ %.pn13.i, %bb.h ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn12.i

bb.j:                                             ; preds = %bb.f
  unreachable

_ZN6duckdb12_GLOBAL__N_117FactorialOperator9OperationIiNS_9hugeint_tEEET0_T_.exit: ; preds = %bb.b, %bb.a
  %.fca.0.load.i = load i64, ptr %1, align 8
  %.fca.0.insert.i = insertvalue { i64, i64 } poison, i64 %.fca.0.load.i, 0
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.fca.1.load.i = load i64, ptr %.fca.1.gep.i, align 8
  %.fca.1.insert.i = insertvalue { i64, i64 } %.fca.0.insert.i, i64 %.fca.1.load.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret { i64, i64 } %.fca.1.insert.i
}

declare noundef zeroext i1 @_ZN6duckdb19TryMultiplyOperator9OperationINS_9hugeint_tES2_S2_EEbT_T0_RT1_(i64, i64, i64, i64, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i64 0, -9223372036854775808) i64 @_ZN6duckdb12_GLOBAL__N_121GreatestCommonDivisorIlEET_S2_S2_(i64 noundef %0, i64 noundef %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = icmp eq i64 %0, -9223372036854775808
  %i.d = icmp eq i64 %1, -1
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %0, -1
  %i.f = icmp eq i64 %1, -9223372036854775808
  %or.cond26 = and i1 %i.e, %i.f
  br i1 %or.cond26, label %bb.o, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.g = icmp eq i64 %0, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.b, align 8, !tbaa !79
  %i.h = icmp eq i64 %1, -9223372036854775808
  br i1 %i.h, label %bb.c, label %_ZN6duckdb14TryAbsOperator9OperationIllEET0_T_.exit

bb.c:                                             ; preds = %._crit_edge
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6duckdb19OutOfRangeExceptionC2IJRlEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.g unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %common.resume.sink.split

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i = phi i1 [ false, %bb.e ], [ true, %bb.d ] ; 2 uses
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.l = load ptr, ptr %4, align 8, !tbaa !238    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.l) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br i1 %.0.i, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br i1 %.0.i, label %common.resume.sink.split, label %common.resume

common.resume.sink.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i24
  %.sink = phi ptr [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i19 ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i24 ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23 ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i19 ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i24 ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23 ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ]
  call void @__cxa_free_exception(ptr %.sink) #23
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23 ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i24 ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  unreachable

_ZN6duckdb14TryAbsOperator9OperationIllEET0_T_.exit: ; preds = %._crit_edge.thread, %._crit_edge
  %.0.lcssa38 = phi i64 [ %i.p, %._crit_edge.thread ], [ %1, %._crit_edge ]
  %i.o = tail call noundef i64 @llvm.abs.i64(i64 %.0.lcssa38, i1 true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.o

.lr.ph:                                           ; preds = %.preheader, %bb.n
  %.030 = phi i64 [ %i.p, %bb.n ], [ %1, %.preheader ]
  %.01629 = phi i64 [ %i.z, %bb.n ], [ %0, %.preheader ] ; 5 uses
  %i.p = srem i64 %.030, %.01629                  ; 4 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.h, label %bb.n

bb.h:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %.01629, ptr %i.a, align 8, !tbaa !79
  %i.r = icmp eq i64 %.01629, -9223372036854775808
  br i1 %i.r, label %bb.i, label %_ZN6duckdb14TryAbsOperator9OperationIllEET0_T_.exit25

bb.i:                                             ; preds = %bb.h
  %i.s = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i19

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN6duckdb19OutOfRangeExceptionC2IJRlEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.m unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i19: ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup
end_hunk_1
