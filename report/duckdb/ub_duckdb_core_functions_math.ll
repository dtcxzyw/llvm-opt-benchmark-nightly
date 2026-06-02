inline.NumInlined: 9993
inline.NumDeleted: 1660
begin_hunk_0_@_ZN6duckdb14ScalarFunction14BinaryFunctionINS_9hugeint_tEiS2_NS_12_GLOBAL__N_120TruncIntegerOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #23
  %i.z = sub nsw i32 0, %i.w
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr @_ZN6duckdb7Hugeint13POWERS_OF_TENE, i64 %i.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %39, ptr noundef nonnull align 16 dereferenceable(16) %i.ab, i64 16, i1 false), !tbaa.struct !1077
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #23
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %40, align 8, !tbaa !79
  %.sroa.3.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %40, i64 8
  store i64 %.sroa.2.0.copyload.i.i.i, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !79
  %i.ac = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb9hugeint_tdVERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %40, ptr noundef nonnull align 8 dereferenceable(16) %39) ; 0 uses
  %i.ad = call noundef zeroext i1 @_ZNK6duckdb9hugeint_tcvbEv(ptr noundef nonnull align 8 dereferenceable(16) %40)
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = call { i64, i64 } @_ZNK6duckdb9hugeint_tmlERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %40, ptr noundef nonnull align 8 dereferenceable(16) %39) ; 2 uses
  %i.af = extractvalue { i64, i64 } %i.ae, 0
  store i64 %i.af, ptr %38, align 16
  %i.ag = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.ah = extractvalue { i64, i64 } %i.ae, 1
  store i64 %i.ah, ptr %i.ag, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %38, i64 noundef 0)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #23
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i

bb.j:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit14.thread.i.i.i
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %38, align 16, !tbaa !79
  %.sroa.3.0..sroa_idx5.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i64 %.sroa.2.0.copyload.i.i.i, ptr %.sroa.3.0..sroa_idx5.i.i.i.i.i, align 8, !tbaa !79
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i: ; preds = %bb.j, %bb.i, %bb.e
  %i.ai = load <2 x i64>, ptr %38, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %38)
  store <2 x i64> %i.ai, ptr %i.n, align 8, !tbaa !79
  br label %_ZN6duckdb14BinaryExecutor15ExecuteStandardINS_9hugeint_tEiS2_NS_12_GLOBAL__N_120TruncIntegerOperatorEEEvRNS_6VectorES6_S6_m.exit

bb.k:                                             ; preds = %bb.a
  %i.aj = icmp eq i8 %i.e, 0
  %or.cond3.i.i = and i1 %i.aj, %i.h
  br i1 %or.cond3.i.i, label %bb.l, label %bb.an

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_9hugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !77 ; 9 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIiEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.b)
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !77 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !78 ; 2 uses
  %.not.i.i.i40.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i40.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i42.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i41.i.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i41.i.i: ; preds = %bb.l
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !79
  %i.ar = trunc i64 %i.aq to i1
  br i1 %i.ar, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i42.i.i, label %bb.m

bb.m:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i41.i.i
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
  br label %_ZN6duckdb14BinaryExecutor15ExecuteStandardINS_9hugeint_tEiS2_NS_12_GLOBAL__N_120TruncIntegerOperatorEEEvRNS_6VectorES6_S6_m.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i42.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i41.i.i, %bb.l
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_9hugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !77 ; 11 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !78
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !78
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ay = icmp eq ptr %2, %i.a
  br i1 %i.ay, label %bb.x, label %bb.n

bb.n:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i42.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !26 ; 2 uses
  %i.bc = load <2 x ptr>, ptr %i.az, align 8, !tbaa !13
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 3 uses
  %i.be = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.be, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bf = load i32, ptr %i.bd, align 4, !tbaa !3
  %i.bg = add nsw i32 %i.bf, 1
  store i32 %i.bg, ptr %i.bd, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bh = atomicrmw volatile add ptr %i.bd, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i: ; preds = %bb.q, %bb.p, %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !26 ; 8 uses
  store <2 x ptr> %i.bc, ptr %i.ax, align 8, !tbaa !13
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.x, label %bb.r

bb.r:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 4 uses
  %i.bl = load atomic i64, ptr %i.bk acquire, align 8 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 4294967297
  %i.bn = trunc i64 %i.bl to i32                  ; 2 uses
  br i1 %i.bm, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.bk, align 8, !tbaa !32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i32 0, ptr %i.bo, align 4, !tbaa !34
  %i.bp = load ptr, ptr %i.bj, align 8, !tbaa !22
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  tail call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #23, !inline_history !1078
  %i.bs = load ptr, ptr %i.bj, align 8, !tbaa !22
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8
  tail call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #23, !inline_history !1078
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.bv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i5.i.i.i.i.i.i = icmp eq i8 %i.bv, 0
  br i1 %.not.i.i.i.i5.i.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bw = add nsw i32 %i.bn, -1
  store i32 %i.bw, ptr %i.bk, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.bx = atomicrmw volatile add ptr %i.bk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bn, %bb.u ], [ %i.bx, %bb.v ]
  %i.by = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.by, label %bb.w, label %bb.x, !prof !36

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #23
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.s, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i42.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !83
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !83
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1079)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1082)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  %i.cc = load ptr, ptr %i.au, align 8, !tbaa !78, !noalias !1086
  %.not.i.i18.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i18.i.i.i, label %.preheader.i.i.i.i, label %bb.aa

.preheader.i.i.i.i:                               ; preds = %bb.x
  %.not107.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not107.i.i.i.i, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardINS_9hugeint_tEiS2_NS_12_GLOBAL__N_120TruncIntegerOperatorEEEvRNS_6VectorES6_S6_m.exit, label %.lr.ph105.i.i.i.i

.lr.ph105.i.i.i.i:                                ; preds = %.preheader.i.i.i.i
  %i.cd = load i32, ptr %i.an, align 4, !tbaa !3, !alias.scope !1082, !noalias !1087 ; 3 uses
  %i.ce = icmp slt i32 %i.cd, 0
  %.sroa.3.0..sroa_idx5.i.i80.i.i.i.i = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.cf = sub nsw i32 0, %i.cd
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr @_ZN6duckdb7Hugeint13POWERS_OF_TENE, i64 %i.cg
  br i1 %i.ce, label %.lr.ph105.split.us.i.i.i.i, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i.preheader

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i.preheader: ; preds = %.lr.ph105.i.i.i.i
  %min.iters.check123 = icmp ult i64 %i.d, 4
  br i1 %min.iters.check123, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i.preheader136, label %vector.ph124

vector.ph124:                                     ; preds = %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i.preheader
  %n.vec126 = and i64 %i.d, -2                    ; 3 uses
  br label %vector.body127

vector.body127:                                   ; preds = %vector.body127, %vector.ph124
  %index128 = phi i64 [ 0, %vector.ph124 ], [ %index.next131, %vector.body127 ] ; 4 uses
  %i.ci = or disjoint i64 %index128, 1            ; 2 uses
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %index128
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.ci
  %wide.load129 = load <2 x i64>, ptr %i.cj, align 8, !tbaa !79, !alias.scope !1079, !noalias !1088
  %wide.load130 = load <2 x i64>, ptr %i.ck, align 8, !tbaa !79, !alias.scope !1079, !noalias !1088
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %index128
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.ci
  store <2 x i64> %wide.load129, ptr %i.cl, align 8, !tbaa !79, !alias.scope !1084, !noalias !1089
  store <2 x i64> %wide.load130, ptr %i.cm, align 8, !tbaa !79, !alias.scope !1084, !noalias !1089
  %index.next131 = add nuw i64 %index128, 2       ; 2 uses
  %i.cn = icmp eq i64 %index.next131, %n.vec126
  br i1 %i.cn, label %middle.block132, label %vector.body127, !llvm.loop !1090

middle.block132:                                  ; preds = %vector.body127
  %cmp.n133 = icmp eq i64 %i.d, %n.vec126
  br i1 %cmp.n133, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardINS_9hugeint_tEiS2_NS_12_GLOBAL__N_120TruncIntegerOperatorEEEvRNS_6VectorES6_S6_m.exit, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i.preheader136

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i.preheader136: ; preds = %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i.preheader, %middle.block132
  %.070104.i.i.i.i.ph = phi i64 [ 0, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i.preheader ], [ %n.vec126, %middle.block132 ]
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i

.lr.ph105.split.us.i.i.i.i:                       ; preds = %.lr.ph105.i.i.i.i
  %i.co = icmp samesign ult i32 %i.cd, -38
  br i1 %i.co, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.us.us.i.i.i.i, label %.lr.ph105.split.us.split.i.i.i.i

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.us.us.i.i.i.i: ; preds = %.lr.ph105.split.us.i.i.i.i, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.us.us.i.i.i.i
  %.070104.us.us.i.i.i.i = phi i64 [ %i.cr, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.us.us.i.i.i.i ], [ 0, %.lr.ph105.split.us.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29), !noalias !1086
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %29, i64 noundef 0), !noalias !1086
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %.070104.us.us.i.i.i.i
  %i.cq = load <2 x i64>, ptr %29, align 16, !noalias !1086
  call void @llvm.lifetime.end.p0(ptr nonnull %29), !noalias !1086
  store <2 x i64> %i.cq, ptr %i.cp, align 8, !tbaa !79, !alias.scope !1084, !noalias !1089
  %i.cr = add nuw i64 %.070104.us.us.i.i.i.i, 1   ; 2 uses
  %exitcond123.not.i.i.i.i = icmp eq i64 %i.cr, %i.d
  br i1 %exitcond123.not.i.i.i.i, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardINS_9hugeint_tEiS2_NS_12_GLOBAL__N_120TruncIntegerOperatorEEEvRNS_6VectorES6_S6_m.exit, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.us.us.i.i.i.i, !llvm.loop !1091

.lr.ph105.split.us.split.i.i.i.i:                 ; preds = %.lr.ph105.split.us.i.i.i.i, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.us.i.i.i.i
  %.070104.us.i.i.i.i = phi i64 [ %i.da, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.us.i.i.i.i ], [ 0, %.lr.ph105.split.us.i.i.i.i ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %.070104.us.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %29), !noalias !1086
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23, !noalias !1086
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull align 16 dereferenceable(16) %i.ch, i64 16, i1 false), !tbaa.struct !1077, !noalias !1086
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23, !noalias !1086
  %i.ct = load <2 x i64>, ptr %i.cs, align 8, !tbaa !79, !alias.scope !1079, !noalias !1088
  store <2 x i64> %i.ct, ptr %31, align 16, !tbaa !79, !noalias !1086
  %i.cu = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb9hugeint_tdVERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %31, ptr noundef nonnull align 8 dereferenceable(16) %30), !noalias !1086 ; 0 uses
  %i.cv = call noundef zeroext i1 @_ZNK6duckdb9hugeint_tcvbEv(ptr noundef nonnull align 8 dereferenceable(16) %31), !noalias !1086
  br i1 %i.cv, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph105.split.us.split.i.i.i.i
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %29, i64 noundef 0), !noalias !1086
  %.fca.0.load.i.i81.us.pre.i.i.i.i = load i64, ptr %29, align 16, !noalias !1086
  %.fca.1.load.i.i84.us.pre.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx5.i.i80.i.i.i.i, align 8, !noalias !1086
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.us.i.i.i.i

bb.z:                                             ; preds = %.lr.ph105.split.us.split.i.i.i.i
  %i.cw = call { i64, i64 } @_ZNK6duckdb9hugeint_tmlERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %31, ptr noundef nonnull align 8 dereferenceable(16) %30), !noalias !1086 ; 2 uses
  %i.cx = extractvalue { i64, i64 } %i.cw, 0
  %i.cy = extractvalue { i64, i64 } %i.cw, 1
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.us.i.i.i.i

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.us.i.i.i.i: ; preds = %bb.z, %bb.y
  %.fca.1.load.i.i84.us.i.i.i.i = phi i64 [ %i.cy, %bb.z ], [ %.fca.1.load.i.i84.us.pre.i.i.i.i, %bb.y ]
  %.fca.0.load.i.i81.us.i.i.i.i = phi i64 [ %i.cx, %bb.z ], [ %.fca.0.load.i.i81.us.pre.i.i.i.i, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23, !noalias !1086
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23, !noalias !1086
  call void @llvm.lifetime.end.p0(ptr nonnull %29), !noalias !1086
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %.070104.us.i.i.i.i ; 2 uses
  store i64 %.fca.0.load.i.i81.us.i.i.i.i, ptr %i.cz, align 8, !tbaa !79, !alias.scope !1084, !noalias !1089
  %.sroa.4.0..sroa_idx.us.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store i64 %.fca.1.load.i.i84.us.i.i.i.i, ptr %.sroa.4.0..sroa_idx.us.i.i.i.i, align 8, !tbaa !79, !alias.scope !1084, !noalias !1089
  %i.da = add nuw i64 %.070104.us.i.i.i.i, 1      ; 2 uses
  %exitcond122.not.i.i.i.i = icmp eq i64 %i.da, %i.d
  br i1 %exitcond122.not.i.i.i.i, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardINS_9hugeint_tEiS2_NS_12_GLOBAL__N_120TruncIntegerOperatorEEEvRNS_6VectorES6_S6_m.exit, label %.lr.ph105.split.us.split.i.i.i.i, !llvm.loop !1091

bb.aa:                                            ; preds = %bb.x
  %i.db = add i64 %i.d, 63
  %i.dc = lshr i64 %i.db, 6                       ; 2 uses
  %.not106.i.i.i.i = icmp eq i64 %i.dc, 0
  br i1 %.not106.i.i.i.i, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardINS_9hugeint_tEiS2_NS_12_GLOBAL__N_120TruncIntegerOperatorEEEvRNS_6VectorES6_S6_m.exit, label %.lr.ph103.i.i.i.i

.lr.ph103.i.i.i.i:                                ; preds = %bb.aa
  %.sroa.3.0..sroa_idx5.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %35, i64 8
  %.sroa.3.0..sroa_idx5.i.i72.i.i.i.i = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i78.i.i.i.i = getelementptr inbounds nuw i8, ptr %34, i64 8
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit92.i.i.i.i, %.lr.ph103.i.i.i.i
  %.0102.i.i.i.i = phi i64 [ 0, %.lr.ph103.i.i.i.i ], [ %.4.i.i.i.i, %.loopexit92.i.i.i.i ] ; 14 uses
  %.069101.i.i.i.i = phi i64 [ 0, %.lr.ph103.i.i.i.i ], [ %i.fk, %.loopexit92.i.i.i.i ] ; 2 uses
  %i.dd = load ptr, ptr %i.au, align 8, !tbaa !78, !noalias !1086 ; 2 uses
  %.not.i71.i.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i71.i.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i.i: ; preds = %bb.ab
  %i.de = add i64 %.0102.i.i.i.i, 64
  %i.df = call noundef i64 @llvm.umin.i64(i64 %i.de, i64 %i.d)
  br label %.preheader93.i.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i: ; preds = %bb.ab
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %.069101.i.i.i.i
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !79, !noalias !1086 ; 2 uses
  %i.di = add i64 %.0102.i.i.i.i, 64
  %i.dj = call noundef i64 @llvm.umin.i64(i64 %i.di, i64 %i.d) ; 5 uses
  switch i64 %i.dh, label %.preheader91.i.i.i.i [
    i64 -1, label %.preheader93.i.i.i.i
    i64 0, label %.loopexit92.i.i.i.i
  ]

.preheader93.i.i.i.i:                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i.i
  %i.dk = phi i64 [ %i.df, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i.i ], [ %i.dj, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i ] ; 9 uses
  %i.dl = icmp ult i64 %.0102.i.i.i.i, %i.dk
  br i1 %i.dl, label %.lr.ph.i.i.i.i, label %.loopexit92.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader93.i.i.i.i
  %i.dm = load i32, ptr %i.an, align 4, !tbaa !3, !alias.scope !1082, !noalias !1087 ; 3 uses
  %i.dn = icmp slt i32 %i.dm, 0
  %i.do = sub nsw i32 0, %i.dm
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr @_ZN6duckdb7Hugeint13POWERS_OF_TENE, i64 %i.dp
  br i1 %i.dn, label %.lr.ph.split.us.i.i.i.i, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader: ; preds = %.lr.ph.i.i.i.i
  %i.dr = sub i64 %i.dk, %.0102.i.i.i.i           ; 3 uses
  %min.iters.check = icmp ult i64 %i.dr, 4
  br i1 %min.iters.check, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader139, label %vector.ph

vector.ph:                                        ; preds = %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader
  %n.vec = and i64 %i.dr, -2                      ; 3 uses
  %i.ds = add i64 %.0102.i.i.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dt = add i64 %.0102.i.i.i.i, %index          ; 3 uses
  %i.du = add i64 %i.dt, 1                        ; 2 uses
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.dt
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.du
  %wide.load = load <2 x i64>, ptr %i.dv, align 8, !tbaa !79, !alias.scope !1079, !noalias !1088
  %wide.load121 = load <2 x i64>, ptr %i.dw, align 8, !tbaa !79, !alias.scope !1079, !noalias !1088
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.dt
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.du
  store <2 x i64> %wide.load, ptr %i.dx, align 8, !tbaa !79, !alias.scope !1084, !noalias !1089
  store <2 x i64> %wide.load121, ptr %i.dy, align 8, !tbaa !79, !alias.scope !1084, !noalias !1089
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dz = icmp eq i64 %index.next, %n.vec
  br i1 %i.dz, label %middle.block, label %vector.body, !llvm.loop !1092

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dr, %n.vec
  br i1 %cmp.n, label %.loopexit92.i.i.i.i, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader139

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader139: ; preds = %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader, %middle.block
  %.196.i.i.i.i.ph = phi i64 [ %.0102.i.i.i.i, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader ], [ %i.ds, %middle.block ]
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i

.lr.ph.split.us.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i
  %i.ea = icmp samesign ult i32 %i.dm, -38
  br i1 %i.ea, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.us.i.i.i.i, label %.lr.ph.split.us.split.i.i.i.i

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.us.i.i.i.i: ; preds = %.lr.ph.split.us.i.i.i.i, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.us.i.i.i.i
  %.196.us.us.i.i.i.i = phi i64 [ %i.ed, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.us.i.i.i.i ], [ %.0102.i.i.i.i, %.lr.ph.split.us.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35), !noalias !1086
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %35, i64 noundef 0), !noalias !1086
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %.196.us.us.i.i.i.i
  %i.ec = load <2 x i64>, ptr %35, align 16, !noalias !1086
  call void @llvm.lifetime.end.p0(ptr nonnull %35), !noalias !1086
  store <2 x i64> %i.ec, ptr %i.eb, align 8, !tbaa !79, !alias.scope !1084, !noalias !1089
  %i.ed = add i64 %.196.us.us.i.i.i.i, 1          ; 2 uses
  %exitcond118.not.i.i.i.i = icmp eq i64 %i.ed, %i.dk
  br i1 %exitcond118.not.i.i.i.i, label %.loopexit92.i.i.i.i, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.us.i.i.i.i, !llvm.loop !1093

.lr.ph.split.us.split.i.i.i.i:                    ; preds = %.lr.ph.split.us.i.i.i.i, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i
  %.196.us.i.i.i.i = phi i64 [ %i.em, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i ], [ %.0102.i.i.i.i, %.lr.ph.split.us.i.i.i.i ] ; 3 uses
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %.196.us.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %35), !noalias !1086
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #23, !noalias !1086
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %36, ptr noundef nonnull align 16 dereferenceable(16) %i.dq, i64 16, i1 false), !tbaa.struct !1077, !noalias !1086
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #23, !noalias !1086
  %i.ef = load <2 x i64>, ptr %i.ee, align 8, !tbaa !79, !alias.scope !1079, !noalias !1088
  store <2 x i64> %i.ef, ptr %37, align 16, !tbaa !79, !noalias !1086
  %i.eg = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb9hugeint_tdVERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %37, ptr noundef nonnull align 8 dereferenceable(16) %36), !noalias !1086 ; 0 uses
  %i.eh = call noundef zeroext i1 @_ZNK6duckdb9hugeint_tcvbEv(ptr noundef nonnull align 8 dereferenceable(16) %37), !noalias !1086
  br i1 %i.eh, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.split.us.split.i.i.i.i
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %35, i64 noundef 0), !noalias !1086
  %.fca.0.load.i.i.us.pre.i.i.i.i = load i64, ptr %35, align 16, !noalias !1086
  %.fca.1.load.i.i.us.pre.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx5.i.i.i.i.i.i, align 8, !noalias !1086
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i

bb.ad:                                            ; preds = %.lr.ph.split.us.split.i.i.i.i
  %i.ei = call { i64, i64 } @_ZNK6duckdb9hugeint_tmlERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %37, ptr noundef nonnull align 8 dereferenceable(16) %36), !noalias !1086 ; 2 uses
  %i.ej = extractvalue { i64, i64 } %i.ei, 0
  %i.ek = extractvalue { i64, i64 } %i.ei, 1
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i: ; preds = %bb.ad, %bb.ac
  %.fca.1.load.i.i.us.i.i.i.i = phi i64 [ %i.ek, %bb.ad ], [ %.fca.1.load.i.i.us.pre.i.i.i.i, %bb.ac ]
  %.fca.0.load.i.i.us.i.i.i.i = phi i64 [ %i.ej, %bb.ad ], [ %.fca.0.load.i.i.us.pre.i.i.i.i, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #23, !noalias !1086
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #23, !noalias !1086
  call void @llvm.lifetime.end.p0(ptr nonnull %35), !noalias !1086
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %.196.us.i.i.i.i ; 2 uses
  store i64 %.fca.0.load.i.i.us.i.i.i.i, ptr %i.el, align 8, !tbaa !79, !alias.scope !1084, !noalias !1089
  %.sroa.420.0..sroa_idx.us.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store i64 %.fca.1.load.i.i.us.i.i.i.i, ptr %.sroa.420.0..sroa_idx.us.i.i.i.i, align 8, !tbaa !79, !alias.scope !1084, !noalias !1089
  %i.em = add i64 %.196.us.i.i.i.i, 1             ; 2 uses
  %exitcond117.not.i.i.i.i = icmp eq i64 %i.em, %i.dk
  br i1 %exitcond117.not.i.i.i.i, label %.loopexit92.i.i.i.i, label %.lr.ph.split.us.split.i.i.i.i, !llvm.loop !1093

.preheader91.i.i.i.i:                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i
  %i.en = icmp ult i64 %.0102.i.i.i.i, %i.dj
  br i1 %i.en, label %.lr.ph99.i.i.i.i, label %.loopexit92.i.i.i.i

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i: ; preds = %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader139, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i
  %.196.i.i.i.i = phi i64 [ %i.er, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i ], [ %.196.i.i.i.i.ph, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader139 ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %.196.i.i.i.i
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %.196.i.i.i.i
  %i.eq = load <2 x i64>, ptr %i.eo, align 8, !tbaa !79, !alias.scope !1079, !noalias !1088
  store <2 x i64> %i.eq, ptr %i.ep, align 8, !tbaa !79, !alias.scope !1084, !noalias !1089
  %i.er = add nuw i64 %.196.i.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.er, %i.dk
  br i1 %exitcond.not.i.i.i.i, label %.loopexit92.i.i.i.i, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i, !llvm.loop !1094

.lr.ph99.i.i.i.i:                                 ; preds = %.preheader91.i.i.i.i, %bb.am
  %.298.i.i.i.i = phi i64 [ %i.fj, %bb.am ], [ %.0102.i.i.i.i, %.preheader91.i.i.i.i ] ; 4 uses
  %i.es = sub nuw i64 %.298.i.i.i.i, %.0102.i.i.i.i
  %i.et = shl nuw i64 1, %i.es
  %i.eu = and i64 %i.et, %i.dh
  %.not.i.i.i.i = icmp eq i64 %i.eu, 0
  br i1 %.not.i.i.i.i, label %bb.am, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph99.i.i.i.i
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %.298.i.i.i.i ; 2 uses
  %.sroa.014.0.copyload.i.i.i.i = load i64, ptr %i.ev, align 8, !tbaa !79, !alias.scope !1079, !noalias !1088 ; 2 uses
  %.sroa.415.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %.sroa.415.0.copyload.i.i.i.i = load i64, ptr %.sroa.415.0..sroa_idx.i.i.i.i, align 8, !tbaa !79, !alias.scope !1079, !noalias !1088 ; 2 uses
  %i.ew = load i32, ptr %i.an, align 4, !tbaa !3, !alias.scope !1082, !noalias !1087 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32), !noalias !1086
  %i.ex = icmp slt i32 %i.ew, 0
  br i1 %i.ex, label %bb.af, label %bb.al

bb.af:                                            ; preds = %bb.ae
  %i.ey = icmp samesign ult i32 %i.ew, -38
  br i1 %i.ey, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %32, i64 noundef 0), !noalias !1086
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit79.i.i.i.i

bb.ah:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #23, !noalias !1086
  %i.ez = sub nsw i32 0, %i.ew
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr @_ZN6duckdb7Hugeint13POWERS_OF_TENE, i64 %i.fa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %33, ptr noundef nonnull align 16 dereferenceable(16) %i.fb, i64 16, i1 false), !tbaa.struct !1077, !noalias !1086
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #23, !noalias !1086
  store i64 %.sroa.014.0.copyload.i.i.i.i, ptr %34, align 8, !tbaa !79, !noalias !1086
  store i64 %.sroa.415.0.copyload.i.i.i.i, ptr %.sroa.3.0..sroa_idx.i.i78.i.i.i.i, align 8, !tbaa !79, !noalias !1086
  %i.fc = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb9hugeint_tdVERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %34, ptr noundef nonnull align 8 dereferenceable(16) %33), !noalias !1086 ; 0 uses
  %i.fd = call noundef zeroext i1 @_ZNK6duckdb9hugeint_tcvbEv(ptr noundef nonnull align 8 dereferenceable(16) %34), !noalias !1086
  br i1 %i.fd, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fe = call { i64, i64 } @_ZNK6duckdb9hugeint_tmlERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %34, ptr noundef nonnull align 8 dereferenceable(16) %33), !noalias !1086 ; 2 uses
  %i.ff = extractvalue { i64, i64 } %i.fe, 0
  store i64 %i.ff, ptr %32, align 16, !noalias !1086
  %i.fg = extractvalue { i64, i64 } %i.fe, 1
  store i64 %i.fg, ptr %.sroa.3.0..sroa_idx5.i.i72.i.i.i.i, align 8, !noalias !1086
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %32, i64 noundef 0), !noalias !1086
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #23, !noalias !1086
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23, !noalias !1086
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit79.i.i.i.i

bb.al:                                            ; preds = %bb.ae
  store i64 %.sroa.014.0.copyload.i.i.i.i, ptr %32, align 16, !tbaa !79, !noalias !1086
  store i64 %.sroa.415.0.copyload.i.i.i.i, ptr %.sroa.3.0..sroa_idx5.i.i72.i.i.i.i, align 8, !tbaa !79, !noalias !1086
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit79.i.i.i.i

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit79.i.i.i.i: ; preds = %bb.al, %bb.ak, %bb.ag
  %i.fh = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %.298.i.i.i.i
  %i.fi = load <2 x i64>, ptr %32, align 16, !noalias !1086
  call void @llvm.lifetime.end.p0(ptr nonnull %32), !noalias !1086
  store <2 x i64> %i.fi, ptr %i.fh, align 8, !tbaa !79, !alias.scope !1084, !noalias !1089
  br label %bb.am

bb.am:                                            ; preds = %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit79.i.i.i.i, %.lr.ph99.i.i.i.i
  %i.fj = add i64 %.298.i.i.i.i, 1                ; 2 uses
  %exitcond119.not.i.i.i.i = icmp eq i64 %i.fj, %i.dj
  br i1 %exitcond119.not.i.i.i.i, label %.loopexit92.i.i.i.i, label %.lr.ph99.i.i.i.i, !llvm.loop !1095

.loopexit92.i.i.i.i:                              ; preds = %bb.am, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.us.i.i.i.i, %middle.block, %.preheader91.i.i.i.i, %.preheader93.i.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i
  %.4.i.i.i.i = phi i64 [ %i.dj, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i ], [ %i.dk, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i ], [ %.0102.i.i.i.i, %.preheader91.i.i.i.i ], [ %.0102.i.i.i.i, %.preheader93.i.i.i.i ], [ %i.dk, %middle.block ], [ %i.dk, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i ], [ %i.dk, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.us.i.i.i.i ], [ %i.dj, %bb.am ]
  %i.fk = add nuw nsw i64 %.069101.i.i.i.i, 1     ; 2 uses
  %exitcond120.not.i.i.i.i = icmp eq i64 %i.fk, %i.dc
  br i1 %exitcond120.not.i.i.i.i, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardINS_9hugeint_tEiS2_NS_12_GLOBAL__N_120TruncIntegerOperatorEEEvRNS_6VectorES6_S6_m.exit, label %bb.ab, !llvm.loop !1096

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i: ; preds = %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i.preheader136, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i
  %.070104.i.i.i.i = phi i64 [ %i.fo, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i ], [ %.070104.i.i.i.i.ph, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i.preheader136 ] ; 3 uses
  %i.fl = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %.070104.i.i.i.i
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %.070104.i.i.i.i
  %i.fn = load <2 x i64>, ptr %i.fl, align 8, !tbaa !79, !alias.scope !1079, !noalias !1088
  store <2 x i64> %i.fn, ptr %i.fm, align 8, !tbaa !79, !alias.scope !1084, !noalias !1089
  %i.fo = add nuw i64 %.070104.i.i.i.i, 1         ; 2 uses
  %exitcond121.not.i.i.i.i = icmp eq i64 %i.fo, %i.d
  br i1 %exitcond121.not.i.i.i.i, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardINS_9hugeint_tEiS2_NS_12_GLOBAL__N_120TruncIntegerOperatorEEEvRNS_6VectorES6_S6_m.exit, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i, !llvm.loop !1097

bb.an:                                            ; preds = %bb.k
  %i.fp = icmp eq i8 %i.f, 0
  %or.cond5.i.i = and i1 %i.g, %i.fp
  br i1 %or.cond5.i.i, label %bb.ao, label %bb.cc

bb.ao:                                            ; preds = %bb.an
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_9hugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.fq = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !77 ; 5 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIiEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.b)
  %i.fs = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !77 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !78 ; 2 uses
  %.not.i.i.i43.i.i = icmp eq ptr %i.fv, null
  br i1 %.not.i.i.i43.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i45.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i44.i.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i44.i.i: ; preds = %bb.ao
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !79
  %i.fx = trunc i64 %i.fw to i1
  br i1 %i.fx, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i45.i.i, label %bb.ap

bb.ap:                                            ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i44.i.i
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
  br label %_ZN6duckdb14BinaryExecutor15ExecuteStandardINS_9hugeint_tEiS2_NS_12_GLOBAL__N_120TruncIntegerOperatorEEEvRNS_6VectorES6_S6_m.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i45.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i44.i.i, %bb.ao
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_9hugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !77 ; 3 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.ga = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.b)
  %i.gb = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !78
  store ptr %i.gc, ptr %i.ga, align 8, !tbaa !78
  %i.gd = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ge = icmp eq ptr %2, %i.b
  br i1 %i.ge, label %bb.ba, label %bb.aq

bb.aq:                                            ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i45.i.i
  %i.gf = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.gg = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !26 ; 2 uses
  %i.gi = load <2 x ptr>, ptr %i.gf, align 8, !tbaa !13
  %.not.i.i.i.i.i.i.i.i46.i.i = icmp eq ptr %i.gh, null
  br i1 %.not.i.i.i.i.i.i.i.i46.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i48.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 8 ; 3 uses
  %i.gk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i.i.i.i.i.i47.i.i = icmp eq i8 %i.gk, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i47.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gl = load i32, ptr %i.gj, align 4, !tbaa !3
  %i.gm = add nsw i32 %i.gl, 1
  store i32 %i.gm, ptr %i.gj, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i48.i.i

bb.at:                                            ; preds = %bb.ar
  %i.gn = atomicrmw volatile add ptr %i.gj, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i48.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i48.i.i: ; preds = %bb.at, %bb.as, %bb.aq
  %i.go = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !26 ; 8 uses
  store <2 x ptr> %i.gi, ptr %i.gd, align 8, !tbaa !13
  %.not.i.i.i.i.i.i.i49.i.i = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i.i.i.i.i49.i.i, label %bb.ba, label %bb.au

bb.au:                                            ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i48.i.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8 ; 4 uses
  %i.gr = load atomic i64, ptr %i.gq acquire, align 8 ; 2 uses
  %i.gs = icmp eq i64 %i.gr, 4294967297
  %i.gt = trunc i64 %i.gr to i32                  ; 2 uses
  br i1 %i.gs, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 0, ptr %i.gq, align 8, !tbaa !32
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gp, i64 12
  store i32 0, ptr %i.gu, align 4, !tbaa !34
  %i.gv = load ptr, ptr %i.gp, align 8, !tbaa !22
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8
  tail call void %i.gx(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #23, !inline_history !1098
  %i.gy = load ptr, ptr %i.gp, align 8, !tbaa !22
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  %i.ha = load ptr, ptr %i.gz, align 8
  tail call void %i.ha(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #23, !inline_history !1098
  br label %bb.ba

bb.aw:                                            ; preds = %bb.au
  %i.hb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i5.i.i.i.i50.i.i = icmp eq i8 %i.hb, 0
  br i1 %.not.i.i.i.i5.i.i.i.i50.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hc = add nsw i32 %i.gt, -1
  store i32 %i.hc, ptr %i.gq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i51.i.i

bb.ay:                                            ; preds = %bb.aw
  %i.hd = atomicrmw volatile add ptr %i.gq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i51.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i51.i.i: ; preds = %bb.ay, %bb.ax
  %.0.i.i.i.i.i.i.i.i.i52.i.i = phi i32 [ %i.gt, %bb.ax ], [ %i.hd, %bb.ay ]
  %i.he = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i52.i.i, 1
  br i1 %i.he, label %bb.az, label %bb.ba, !prof !36

bb.az:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i51.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #23
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i51.i.i, %bb.av, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i48.i.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i45.i.i
  %i.hf = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !83
  %i.hh = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.hg, ptr %i.hh, align 8, !tbaa !83
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1099)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1104)
  %i.hi = load ptr, ptr %i.ga, align 8, !tbaa !78, !noalias !1106
  %.not.i.i18.i53.i.i = icmp eq ptr %i.hi, null
  br i1 %.not.i.i18.i53.i.i, label %.preheader.i.i80.i.i, label %bb.bb

.preheader.i.i80.i.i:                             ; preds = %bb.ba
  %.not106.i.i81.i.i = icmp eq i64 %i.d, 0
  br i1 %.not106.i.i81.i.i, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardINS_9hugeint_tEiS2_NS_12_GLOBAL__N_120TruncIntegerOperatorEEEvRNS_6VectorES6_S6_m.exit, label %.lr.ph104.i.i.i.i

.lr.ph104.i.i.i.i:                                ; preds = %.preheader.i.i80.i.i
  %.sroa.02.0.copyload.i.i82.i.i = load i64, ptr %i.fr, align 8, !tbaa !79, !alias.scope !1099, !noalias !1107 ; 2 uses
  %.sroa.43.0..sroa_idx.i.i83.i.i = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %.sroa.43.0.copyload.i.i84.i.i = load i64, ptr %.sroa.43.0..sroa_idx.i.i83.i.i, align 8, !tbaa !79, !alias.scope !1099, !noalias !1107 ; 2 uses
  %.sroa.3.0..sroa_idx5.i.i80.i.i85.i.i = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i86.i.i86.i.i = getelementptr inbounds nuw i8, ptr %22, i64 8
  br label %bb.bu

bb.bb:                                            ; preds = %bb.ba
  %i.hj = add i64 %i.d, 63
  %i.hk = lshr i64 %i.hj, 6                       ; 2 uses
  %.not105.i.i.i.i = icmp eq i64 %i.hk, 0
  br i1 %.not105.i.i.i.i, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardINS_9hugeint_tEiS2_NS_12_GLOBAL__N_120TruncIntegerOperatorEEEvRNS_6VectorES6_S6_m.exit, label %.lr.ph102.i.i.i.i

.lr.ph102.i.i.i.i:                                ; preds = %bb.bb
  %.sroa.423.0..sroa_idx.i.i54.i.i = getelementptr inbounds nuw i8, ptr %i.fr, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx5.i.i.i.i55.i.i = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i.i.i56.i.i = getelementptr inbounds nuw i8, ptr %28, i64 8
  %.sroa.3.0..sroa_idx5.i.i72.i.i57.i.i = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i78.i.i58.i.i = getelementptr inbounds nuw i8, ptr %25, i64 8
  br label %bb.bc

bb.bc:                                            ; preds = %.loopexit92.i.i61.i.i, %.lr.ph102.i.i.i.i
  %.0101.i.i.i.i = phi i64 [ 0, %.lr.ph102.i.i.i.i ], [ %.4.i.i62.i.i, %.loopexit92.i.i61.i.i ] ; 9 uses
  %.069100.i.i.i.i = phi i64 [ 0, %.lr.ph102.i.i.i.i ], [ %i.jc, %.loopexit92.i.i61.i.i ] ; 2 uses
  %i.hl = load ptr, ptr %i.ga, align 8, !tbaa !78, !noalias !1106 ; 2 uses
  %.not.i71.i.i59.i.i = icmp eq ptr %i.hl, null
  br i1 %.not.i71.i.i59.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i79.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i60.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i79.i.i: ; preds = %bb.bc
  %i.hm = add i64 %.0101.i.i.i.i, 64
  %i.hn = call noundef i64 @llvm.umin.i64(i64 %i.hm, i64 %i.d)
  br label %.preheader93.i.i63.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i60.i.i: ; preds = %bb.bc
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %.069100.i.i.i.i
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !79, !noalias !1106 ; 2 uses
  %i.hq = add i64 %.0101.i.i.i.i, 64
  %i.hr = call noundef i64 @llvm.umin.i64(i64 %i.hq, i64 %i.d) ; 5 uses
  switch i64 %i.hp, label %.preheader91.i.i71.i.i [
    i64 -1, label %.preheader93.i.i63.i.i
    i64 0, label %.loopexit92.i.i61.i.i
  ]

.preheader93.i.i63.i.i:                           ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i60.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i79.i.i
  %i.hs = phi i64 [ %i.hn, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i79.i.i ], [ %i.hr, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i60.i.i ] ; 3 uses
  %i.ht = icmp ult i64 %.0101.i.i.i.i, %i.hs
  br i1 %i.ht, label %.lr.ph.i.i64.i.i, label %.loopexit92.i.i61.i.i

.lr.ph.i.i64.i.i:                                 ; preds = %.preheader93.i.i63.i.i
  %.sroa.022.0.copyload.i.i65.i.i = load i64, ptr %i.fr, align 8, !tbaa !79, !alias.scope !1099, !noalias !1107 ; 2 uses
  %.sroa.423.0.copyload.i.i66.i.i = load i64, ptr %.sroa.423.0..sroa_idx.i.i54.i.i, align 8, !tbaa !79, !alias.scope !1099, !noalias !1107 ; 2 uses
  br label %bb.bd

.preheader91.i.i71.i.i:                           ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i60.i.i
  %i.hu = icmp ult i64 %.0101.i.i.i.i, %i.hr
  br i1 %i.hu, label %.lr.ph98.i.i.i.i, label %.loopexit92.i.i61.i.i

bb.bd:                                            ; preds = %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i68.i.i, %.lr.ph.i.i64.i.i
  %.196.i.i67.i.i = phi i64 [ %.0101.i.i.i.i, %.lr.ph.i.i64.i.i ], [ %i.ij, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i68.i.i ] ; 3 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %.196.i.i67.i.i
end_hunk_0
begin_hunk_1_@_ZN6duckdb14ScalarFunction14BinaryFunctionINS_10uhugeint_tEiS2_NS_12_GLOBAL__N_120TruncIntegerOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #23
  %i.z = sub nsw i32 0, %i.w
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr @_ZN6duckdb8Uhugeint13POWERS_OF_TENE, i64 %i.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %39, ptr noundef nonnull align 16 dereferenceable(16) %i.ab, i64 16, i1 false), !tbaa.struct !1077
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #23
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %40, align 8, !tbaa !79
  %.sroa.3.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %40, i64 8
  store i64 %.sroa.2.0.copyload.i.i.i, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !79
  %i.ac = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb10uhugeint_tdVERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %40, ptr noundef nonnull align 8 dereferenceable(16) %39) ; 0 uses
  %i.ad = call noundef zeroext i1 @_ZNK6duckdb10uhugeint_tcvbEv(ptr noundef nonnull align 8 dereferenceable(16) %40)
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = call { i64, i64 } @_ZNK6duckdb10uhugeint_tmlERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %40, ptr noundef nonnull align 8 dereferenceable(16) %39) ; 2 uses
  %i.af = extractvalue { i64, i64 } %i.ae, 0
  store i64 %i.af, ptr %38, align 16
  %i.ag = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.ah = extractvalue { i64, i64 } %i.ae, 1
  store i64 %i.ah, ptr %i.ag, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %38, i64 noundef 0)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #23
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i

bb.j:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit14.thread.i.i.i
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %38, align 16, !tbaa !79
  %.sroa.3.0..sroa_idx5.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i64 %.sroa.2.0.copyload.i.i.i, ptr %.sroa.3.0..sroa_idx5.i.i.i.i.i, align 8, !tbaa !79
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i: ; preds = %bb.j, %bb.i, %bb.e
  %i.ai = load <2 x i64>, ptr %38, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %38)
  store <2 x i64> %i.ai, ptr %i.n, align 8, !tbaa !79
  br label %_ZN6duckdb14BinaryExecutor15ExecuteStandardINS_10uhugeint_tEiS2_NS_12_GLOBAL__N_120TruncIntegerOperatorEEEvRNS_6VectorES6_S6_m.exit

bb.k:                                             ; preds = %bb.a
  %i.aj = icmp eq i8 %i.e, 0
  %or.cond3.i.i = and i1 %i.aj, %i.h
  br i1 %or.cond3.i.i, label %bb.l, label %bb.an

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10uhugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !77 ; 9 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIiEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.b)
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !77 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !78 ; 2 uses
  %.not.i.i.i40.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i40.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i42.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i41.i.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i41.i.i: ; preds = %bb.l
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !79
  %i.ar = trunc i64 %i.aq to i1
  br i1 %i.ar, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i42.i.i, label %bb.m

bb.m:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i41.i.i
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
  br label %_ZN6duckdb14BinaryExecutor15ExecuteStandardINS_10uhugeint_tEiS2_NS_12_GLOBAL__N_120TruncIntegerOperatorEEEvRNS_6VectorES6_S6_m.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i42.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i41.i.i, %bb.l
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10uhugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !77 ; 11 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !78
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !78
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ay = icmp eq ptr %2, %i.a
  br i1 %i.ay, label %bb.x, label %bb.n

bb.n:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i42.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !26 ; 2 uses
  %i.bc = load <2 x ptr>, ptr %i.az, align 8, !tbaa !13
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 3 uses
  %i.be = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.be, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bf = load i32, ptr %i.bd, align 4, !tbaa !3
  %i.bg = add nsw i32 %i.bf, 1
  store i32 %i.bg, ptr %i.bd, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bh = atomicrmw volatile add ptr %i.bd, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i: ; preds = %bb.q, %bb.p, %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !26 ; 8 uses
  store <2 x ptr> %i.bc, ptr %i.ax, align 8, !tbaa !13
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.x, label %bb.r

bb.r:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 4 uses
  %i.bl = load atomic i64, ptr %i.bk acquire, align 8 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 4294967297
  %i.bn = trunc i64 %i.bl to i32                  ; 2 uses
  br i1 %i.bm, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.bk, align 8, !tbaa !32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i32 0, ptr %i.bo, align 4, !tbaa !34
  %i.bp = load ptr, ptr %i.bj, align 8, !tbaa !22
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  tail call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #23, !inline_history !1427
  %i.bs = load ptr, ptr %i.bj, align 8, !tbaa !22
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8
  tail call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #23, !inline_history !1427
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.bv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i5.i.i.i.i.i.i = icmp eq i8 %i.bv, 0
  br i1 %.not.i.i.i.i5.i.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bw = add nsw i32 %i.bn, -1
  store i32 %i.bw, ptr %i.bk, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.bx = atomicrmw volatile add ptr %i.bk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bn, %bb.u ], [ %i.bx, %bb.v ]
  %i.by = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.by, label %bb.w, label %bb.x, !prof !36

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #23
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.s, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i42.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !83
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !83
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1431)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1433)
  %i.cc = load ptr, ptr %i.au, align 8, !tbaa !78, !noalias !1435
  %.not.i.i18.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i18.i.i.i, label %.preheader.i.i.i.i, label %bb.aa

.preheader.i.i.i.i:                               ; preds = %bb.x
  %.not107.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not107.i.i.i.i, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardINS_10uhugeint_tEiS2_NS_12_GLOBAL__N_120TruncIntegerOperatorEEEvRNS_6VectorES6_S6_m.exit, label %.lr.ph105.i.i.i.i

.lr.ph105.i.i.i.i:                                ; preds = %.preheader.i.i.i.i
  %i.cd = load i32, ptr %i.an, align 4, !tbaa !3, !alias.scope !1431, !noalias !1436 ; 3 uses
  %i.ce = icmp slt i32 %i.cd, 0
  %.sroa.3.0..sroa_idx5.i.i80.i.i.i.i = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.cf = sub nsw i32 0, %i.cd
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr @_ZN6duckdb8Uhugeint13POWERS_OF_TENE, i64 %i.cg
  br i1 %i.ce, label %.lr.ph105.split.us.i.i.i.i, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i.preheader

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i.preheader: ; preds = %.lr.ph105.i.i.i.i
  %min.iters.check123 = icmp ult i64 %i.d, 4
  br i1 %min.iters.check123, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i.preheader136, label %vector.ph124

vector.ph124:                                     ; preds = %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i.preheader
  %n.vec126 = and i64 %i.d, -2                    ; 3 uses
  br label %vector.body127

vector.body127:                                   ; preds = %vector.body127, %vector.ph124
  %index128 = phi i64 [ 0, %vector.ph124 ], [ %index.next131, %vector.body127 ] ; 4 uses
  %i.ci = or disjoint i64 %index128, 1            ; 2 uses
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %index128
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.ci
  %wide.load129 = load <2 x i64>, ptr %i.cj, align 8, !tbaa !79, !alias.scope !1428, !noalias !1437
  %wide.load130 = load <2 x i64>, ptr %i.ck, align 8, !tbaa !79, !alias.scope !1428, !noalias !1437
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %index128
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.ci
  store <2 x i64> %wide.load129, ptr %i.cl, align 8, !tbaa !79, !alias.scope !1433, !noalias !1438
  store <2 x i64> %wide.load130, ptr %i.cm, align 8, !tbaa !79, !alias.scope !1433, !noalias !1438
  %index.next131 = add nuw i64 %index128, 2       ; 2 uses
  %i.cn = icmp eq i64 %index.next131, %n.vec126
  br i1 %i.cn, label %middle.block132, label %vector.body127, !llvm.loop !1439

middle.block132:                                  ; preds = %vector.body127
  %cmp.n133 = icmp eq i64 %i.d, %n.vec126
  br i1 %cmp.n133, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardINS_10uhugeint_tEiS2_NS_12_GLOBAL__N_120TruncIntegerOperatorEEEvRNS_6VectorES6_S6_m.exit, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i.preheader136

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i.preheader136: ; preds = %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i.preheader, %middle.block132
  %.070104.i.i.i.i.ph = phi i64 [ 0, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i.preheader ], [ %n.vec126, %middle.block132 ]
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i

.lr.ph105.split.us.i.i.i.i:                       ; preds = %.lr.ph105.i.i.i.i
  %i.co = icmp samesign ult i32 %i.cd, -38
  br i1 %i.co, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.us.us.i.i.i.i, label %.lr.ph105.split.us.split.i.i.i.i

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.us.us.i.i.i.i: ; preds = %.lr.ph105.split.us.i.i.i.i, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.us.us.i.i.i.i
  %.070104.us.us.i.i.i.i = phi i64 [ %i.cr, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.us.us.i.i.i.i ], [ 0, %.lr.ph105.split.us.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29), !noalias !1435
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %29, i64 noundef 0), !noalias !1435
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %.070104.us.us.i.i.i.i
  %i.cq = load <2 x i64>, ptr %29, align 16, !noalias !1435
  call void @llvm.lifetime.end.p0(ptr nonnull %29), !noalias !1435
  store <2 x i64> %i.cq, ptr %i.cp, align 8, !tbaa !79, !alias.scope !1433, !noalias !1438
  %i.cr = add nuw i64 %.070104.us.us.i.i.i.i, 1   ; 2 uses
  %exitcond123.not.i.i.i.i = icmp eq i64 %i.cr, %i.d
  br i1 %exitcond123.not.i.i.i.i, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardINS_10uhugeint_tEiS2_NS_12_GLOBAL__N_120TruncIntegerOperatorEEEvRNS_6VectorES6_S6_m.exit, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.us.us.i.i.i.i, !llvm.loop !1440

.lr.ph105.split.us.split.i.i.i.i:                 ; preds = %.lr.ph105.split.us.i.i.i.i, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.us.i.i.i.i
  %.070104.us.i.i.i.i = phi i64 [ %i.da, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.us.i.i.i.i ], [ 0, %.lr.ph105.split.us.i.i.i.i ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %.070104.us.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %29), !noalias !1435
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23, !noalias !1435
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull align 16 dereferenceable(16) %i.ch, i64 16, i1 false), !tbaa.struct !1077, !noalias !1435
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23, !noalias !1435
  %i.ct = load <2 x i64>, ptr %i.cs, align 8, !tbaa !79, !alias.scope !1428, !noalias !1437
  store <2 x i64> %i.ct, ptr %31, align 16, !tbaa !79, !noalias !1435
  %i.cu = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb10uhugeint_tdVERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %31, ptr noundef nonnull align 8 dereferenceable(16) %30), !noalias !1435 ; 0 uses
  %i.cv = call noundef zeroext i1 @_ZNK6duckdb10uhugeint_tcvbEv(ptr noundef nonnull align 8 dereferenceable(16) %31), !noalias !1435
  br i1 %i.cv, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph105.split.us.split.i.i.i.i
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %29, i64 noundef 0), !noalias !1435
  %.fca.0.load.i.i81.us.pre.i.i.i.i = load i64, ptr %29, align 16, !noalias !1435
  %.fca.1.load.i.i84.us.pre.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx5.i.i80.i.i.i.i, align 8, !noalias !1435
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.us.i.i.i.i

bb.z:                                             ; preds = %.lr.ph105.split.us.split.i.i.i.i
  %i.cw = call { i64, i64 } @_ZNK6duckdb10uhugeint_tmlERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %31, ptr noundef nonnull align 8 dereferenceable(16) %30), !noalias !1435 ; 2 uses
  %i.cx = extractvalue { i64, i64 } %i.cw, 0
  %i.cy = extractvalue { i64, i64 } %i.cw, 1
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.us.i.i.i.i

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.us.i.i.i.i: ; preds = %bb.z, %bb.y
  %.fca.1.load.i.i84.us.i.i.i.i = phi i64 [ %i.cy, %bb.z ], [ %.fca.1.load.i.i84.us.pre.i.i.i.i, %bb.y ]
  %.fca.0.load.i.i81.us.i.i.i.i = phi i64 [ %i.cx, %bb.z ], [ %.fca.0.load.i.i81.us.pre.i.i.i.i, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23, !noalias !1435
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23, !noalias !1435
  call void @llvm.lifetime.end.p0(ptr nonnull %29), !noalias !1435
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %.070104.us.i.i.i.i ; 2 uses
  store i64 %.fca.0.load.i.i81.us.i.i.i.i, ptr %i.cz, align 8, !tbaa !79, !alias.scope !1433, !noalias !1438
  %.sroa.4.0..sroa_idx.us.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store i64 %.fca.1.load.i.i84.us.i.i.i.i, ptr %.sroa.4.0..sroa_idx.us.i.i.i.i, align 8, !tbaa !79, !alias.scope !1433, !noalias !1438
  %i.da = add nuw i64 %.070104.us.i.i.i.i, 1      ; 2 uses
  %exitcond122.not.i.i.i.i = icmp eq i64 %i.da, %i.d
  br i1 %exitcond122.not.i.i.i.i, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardINS_10uhugeint_tEiS2_NS_12_GLOBAL__N_120TruncIntegerOperatorEEEvRNS_6VectorES6_S6_m.exit, label %.lr.ph105.split.us.split.i.i.i.i, !llvm.loop !1440

bb.aa:                                            ; preds = %bb.x
  %i.db = add i64 %i.d, 63
  %i.dc = lshr i64 %i.db, 6                       ; 2 uses
  %.not106.i.i.i.i = icmp eq i64 %i.dc, 0
  br i1 %.not106.i.i.i.i, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardINS_10uhugeint_tEiS2_NS_12_GLOBAL__N_120TruncIntegerOperatorEEEvRNS_6VectorES6_S6_m.exit, label %.lr.ph103.i.i.i.i

.lr.ph103.i.i.i.i:                                ; preds = %bb.aa
  %.sroa.3.0..sroa_idx5.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %35, i64 8
  %.sroa.3.0..sroa_idx5.i.i72.i.i.i.i = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i78.i.i.i.i = getelementptr inbounds nuw i8, ptr %34, i64 8
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit92.i.i.i.i, %.lr.ph103.i.i.i.i
  %.0102.i.i.i.i = phi i64 [ 0, %.lr.ph103.i.i.i.i ], [ %.4.i.i.i.i, %.loopexit92.i.i.i.i ] ; 14 uses
  %.069101.i.i.i.i = phi i64 [ 0, %.lr.ph103.i.i.i.i ], [ %i.fk, %.loopexit92.i.i.i.i ] ; 2 uses
  %i.dd = load ptr, ptr %i.au, align 8, !tbaa !78, !noalias !1435 ; 2 uses
  %.not.i71.i.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i71.i.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i.i: ; preds = %bb.ab
  %i.de = add i64 %.0102.i.i.i.i, 64
  %i.df = call noundef i64 @llvm.umin.i64(i64 %i.de, i64 %i.d)
  br label %.preheader93.i.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i: ; preds = %bb.ab
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %.069101.i.i.i.i
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !79, !noalias !1435 ; 2 uses
  %i.di = add i64 %.0102.i.i.i.i, 64
  %i.dj = call noundef i64 @llvm.umin.i64(i64 %i.di, i64 %i.d) ; 5 uses
  switch i64 %i.dh, label %.preheader91.i.i.i.i [
    i64 -1, label %.preheader93.i.i.i.i
    i64 0, label %.loopexit92.i.i.i.i
  ]

.preheader93.i.i.i.i:                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i.i
  %i.dk = phi i64 [ %i.df, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i.i ], [ %i.dj, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i ] ; 9 uses
  %i.dl = icmp ult i64 %.0102.i.i.i.i, %i.dk
  br i1 %i.dl, label %.lr.ph.i.i.i.i, label %.loopexit92.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader93.i.i.i.i
  %i.dm = load i32, ptr %i.an, align 4, !tbaa !3, !alias.scope !1431, !noalias !1436 ; 3 uses
  %i.dn = icmp slt i32 %i.dm, 0
  %i.do = sub nsw i32 0, %i.dm
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr @_ZN6duckdb8Uhugeint13POWERS_OF_TENE, i64 %i.dp
  br i1 %i.dn, label %.lr.ph.split.us.i.i.i.i, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader: ; preds = %.lr.ph.i.i.i.i
  %i.dr = sub i64 %i.dk, %.0102.i.i.i.i           ; 3 uses
  %min.iters.check = icmp ult i64 %i.dr, 4
  br i1 %min.iters.check, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader139, label %vector.ph

vector.ph:                                        ; preds = %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader
  %n.vec = and i64 %i.dr, -2                      ; 3 uses
  %i.ds = add i64 %.0102.i.i.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dt = add i64 %.0102.i.i.i.i, %index          ; 3 uses
  %i.du = add i64 %i.dt, 1                        ; 2 uses
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.dt
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.du
  %wide.load = load <2 x i64>, ptr %i.dv, align 8, !tbaa !79, !alias.scope !1428, !noalias !1437
  %wide.load121 = load <2 x i64>, ptr %i.dw, align 8, !tbaa !79, !alias.scope !1428, !noalias !1437
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.dt
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.du
  store <2 x i64> %wide.load, ptr %i.dx, align 8, !tbaa !79, !alias.scope !1433, !noalias !1438
  store <2 x i64> %wide.load121, ptr %i.dy, align 8, !tbaa !79, !alias.scope !1433, !noalias !1438
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dz = icmp eq i64 %index.next, %n.vec
  br i1 %i.dz, label %middle.block, label %vector.body, !llvm.loop !1441

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dr, %n.vec
  br i1 %cmp.n, label %.loopexit92.i.i.i.i, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader139

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader139: ; preds = %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader, %middle.block
  %.196.i.i.i.i.ph = phi i64 [ %.0102.i.i.i.i, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader ], [ %i.ds, %middle.block ]
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i

.lr.ph.split.us.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i
  %i.ea = icmp samesign ult i32 %i.dm, -38
  br i1 %i.ea, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.us.i.i.i.i, label %.lr.ph.split.us.split.i.i.i.i

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.us.i.i.i.i: ; preds = %.lr.ph.split.us.i.i.i.i, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.us.i.i.i.i
  %.196.us.us.i.i.i.i = phi i64 [ %i.ed, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.us.i.i.i.i ], [ %.0102.i.i.i.i, %.lr.ph.split.us.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35), !noalias !1435
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %35, i64 noundef 0), !noalias !1435
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %.196.us.us.i.i.i.i
  %i.ec = load <2 x i64>, ptr %35, align 16, !noalias !1435
  call void @llvm.lifetime.end.p0(ptr nonnull %35), !noalias !1435
  store <2 x i64> %i.ec, ptr %i.eb, align 8, !tbaa !79, !alias.scope !1433, !noalias !1438
  %i.ed = add i64 %.196.us.us.i.i.i.i, 1          ; 2 uses
  %exitcond118.not.i.i.i.i = icmp eq i64 %i.ed, %i.dk
  br i1 %exitcond118.not.i.i.i.i, label %.loopexit92.i.i.i.i, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.us.i.i.i.i, !llvm.loop !1442

.lr.ph.split.us.split.i.i.i.i:                    ; preds = %.lr.ph.split.us.i.i.i.i, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i
  %.196.us.i.i.i.i = phi i64 [ %i.em, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i ], [ %.0102.i.i.i.i, %.lr.ph.split.us.i.i.i.i ] ; 3 uses
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %.196.us.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %35), !noalias !1435
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #23, !noalias !1435
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %36, ptr noundef nonnull align 16 dereferenceable(16) %i.dq, i64 16, i1 false), !tbaa.struct !1077, !noalias !1435
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #23, !noalias !1435
  %i.ef = load <2 x i64>, ptr %i.ee, align 8, !tbaa !79, !alias.scope !1428, !noalias !1437
  store <2 x i64> %i.ef, ptr %37, align 16, !tbaa !79, !noalias !1435
  %i.eg = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb10uhugeint_tdVERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %37, ptr noundef nonnull align 8 dereferenceable(16) %36), !noalias !1435 ; 0 uses
  %i.eh = call noundef zeroext i1 @_ZNK6duckdb10uhugeint_tcvbEv(ptr noundef nonnull align 8 dereferenceable(16) %37), !noalias !1435
  br i1 %i.eh, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.split.us.split.i.i.i.i
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %35, i64 noundef 0), !noalias !1435
  %.fca.0.load.i.i.us.pre.i.i.i.i = load i64, ptr %35, align 16, !noalias !1435
  %.fca.1.load.i.i.us.pre.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx5.i.i.i.i.i.i, align 8, !noalias !1435
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i

bb.ad:                                            ; preds = %.lr.ph.split.us.split.i.i.i.i
  %i.ei = call { i64, i64 } @_ZNK6duckdb10uhugeint_tmlERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %37, ptr noundef nonnull align 8 dereferenceable(16) %36), !noalias !1435 ; 2 uses
  %i.ej = extractvalue { i64, i64 } %i.ei, 0
  %i.ek = extractvalue { i64, i64 } %i.ei, 1
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i: ; preds = %bb.ad, %bb.ac
  %.fca.1.load.i.i.us.i.i.i.i = phi i64 [ %i.ek, %bb.ad ], [ %.fca.1.load.i.i.us.pre.i.i.i.i, %bb.ac ]
  %.fca.0.load.i.i.us.i.i.i.i = phi i64 [ %i.ej, %bb.ad ], [ %.fca.0.load.i.i.us.pre.i.i.i.i, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #23, !noalias !1435
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #23, !noalias !1435
  call void @llvm.lifetime.end.p0(ptr nonnull %35), !noalias !1435
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %.196.us.i.i.i.i ; 2 uses
  store i64 %.fca.0.load.i.i.us.i.i.i.i, ptr %i.el, align 8, !tbaa !79, !alias.scope !1433, !noalias !1438
  %.sroa.420.0..sroa_idx.us.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store i64 %.fca.1.load.i.i.us.i.i.i.i, ptr %.sroa.420.0..sroa_idx.us.i.i.i.i, align 8, !tbaa !79, !alias.scope !1433, !noalias !1438
  %i.em = add i64 %.196.us.i.i.i.i, 1             ; 2 uses
  %exitcond117.not.i.i.i.i = icmp eq i64 %i.em, %i.dk
  br i1 %exitcond117.not.i.i.i.i, label %.loopexit92.i.i.i.i, label %.lr.ph.split.us.split.i.i.i.i, !llvm.loop !1442

.preheader91.i.i.i.i:                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i
  %i.en = icmp ult i64 %.0102.i.i.i.i, %i.dj
  br i1 %i.en, label %.lr.ph99.i.i.i.i, label %.loopexit92.i.i.i.i

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i: ; preds = %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader139, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i
  %.196.i.i.i.i = phi i64 [ %i.er, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i ], [ %.196.i.i.i.i.ph, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader139 ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %.196.i.i.i.i
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %.196.i.i.i.i
  %i.eq = load <2 x i64>, ptr %i.eo, align 8, !tbaa !79, !alias.scope !1428, !noalias !1437
  store <2 x i64> %i.eq, ptr %i.ep, align 8, !tbaa !79, !alias.scope !1433, !noalias !1438
  %i.er = add nuw i64 %.196.i.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.er, %i.dk
  br i1 %exitcond.not.i.i.i.i, label %.loopexit92.i.i.i.i, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i, !llvm.loop !1443

.lr.ph99.i.i.i.i:                                 ; preds = %.preheader91.i.i.i.i, %bb.am
  %.298.i.i.i.i = phi i64 [ %i.fj, %bb.am ], [ %.0102.i.i.i.i, %.preheader91.i.i.i.i ] ; 4 uses
  %i.es = sub nuw i64 %.298.i.i.i.i, %.0102.i.i.i.i
  %i.et = shl nuw i64 1, %i.es
  %i.eu = and i64 %i.et, %i.dh
  %.not.i.i.i.i = icmp eq i64 %i.eu, 0
  br i1 %.not.i.i.i.i, label %bb.am, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph99.i.i.i.i
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %.298.i.i.i.i ; 2 uses
  %.sroa.014.0.copyload.i.i.i.i = load i64, ptr %i.ev, align 8, !tbaa !79, !alias.scope !1428, !noalias !1437 ; 2 uses
  %.sroa.415.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %.sroa.415.0.copyload.i.i.i.i = load i64, ptr %.sroa.415.0..sroa_idx.i.i.i.i, align 8, !tbaa !79, !alias.scope !1428, !noalias !1437 ; 2 uses
  %i.ew = load i32, ptr %i.an, align 4, !tbaa !3, !alias.scope !1431, !noalias !1436 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32), !noalias !1435
  %i.ex = icmp slt i32 %i.ew, 0
  br i1 %i.ex, label %bb.af, label %bb.al

bb.af:                                            ; preds = %bb.ae
  %i.ey = icmp samesign ult i32 %i.ew, -38
  br i1 %i.ey, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %32, i64 noundef 0), !noalias !1435
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit79.i.i.i.i

bb.ah:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #23, !noalias !1435
  %i.ez = sub nsw i32 0, %i.ew
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr @_ZN6duckdb8Uhugeint13POWERS_OF_TENE, i64 %i.fa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %33, ptr noundef nonnull align 16 dereferenceable(16) %i.fb, i64 16, i1 false), !tbaa.struct !1077, !noalias !1435
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #23, !noalias !1435
  store i64 %.sroa.014.0.copyload.i.i.i.i, ptr %34, align 8, !tbaa !79, !noalias !1435
  store i64 %.sroa.415.0.copyload.i.i.i.i, ptr %.sroa.3.0..sroa_idx.i.i78.i.i.i.i, align 8, !tbaa !79, !noalias !1435
  %i.fc = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb10uhugeint_tdVERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %34, ptr noundef nonnull align 8 dereferenceable(16) %33), !noalias !1435 ; 0 uses
  %i.fd = call noundef zeroext i1 @_ZNK6duckdb10uhugeint_tcvbEv(ptr noundef nonnull align 8 dereferenceable(16) %34), !noalias !1435
  br i1 %i.fd, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fe = call { i64, i64 } @_ZNK6duckdb10uhugeint_tmlERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %34, ptr noundef nonnull align 8 dereferenceable(16) %33), !noalias !1435 ; 2 uses
  %i.ff = extractvalue { i64, i64 } %i.fe, 0
  store i64 %i.ff, ptr %32, align 16, !noalias !1435
  %i.fg = extractvalue { i64, i64 } %i.fe, 1
  store i64 %i.fg, ptr %.sroa.3.0..sroa_idx5.i.i72.i.i.i.i, align 8, !noalias !1435
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %32, i64 noundef 0), !noalias !1435
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #23, !noalias !1435
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23, !noalias !1435
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit79.i.i.i.i

bb.al:                                            ; preds = %bb.ae
  store i64 %.sroa.014.0.copyload.i.i.i.i, ptr %32, align 16, !tbaa !79, !noalias !1435
  store i64 %.sroa.415.0.copyload.i.i.i.i, ptr %.sroa.3.0..sroa_idx5.i.i72.i.i.i.i, align 8, !tbaa !79, !noalias !1435
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit79.i.i.i.i

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit79.i.i.i.i: ; preds = %bb.al, %bb.ak, %bb.ag
  %i.fh = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %.298.i.i.i.i
  %i.fi = load <2 x i64>, ptr %32, align 16, !noalias !1435
  call void @llvm.lifetime.end.p0(ptr nonnull %32), !noalias !1435
  store <2 x i64> %i.fi, ptr %i.fh, align 8, !tbaa !79, !alias.scope !1433, !noalias !1438
  br label %bb.am

bb.am:                                            ; preds = %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit79.i.i.i.i, %.lr.ph99.i.i.i.i
  %i.fj = add i64 %.298.i.i.i.i, 1                ; 2 uses
  %exitcond119.not.i.i.i.i = icmp eq i64 %i.fj, %i.dj
  br i1 %exitcond119.not.i.i.i.i, label %.loopexit92.i.i.i.i, label %.lr.ph99.i.i.i.i, !llvm.loop !1444

.loopexit92.i.i.i.i:                              ; preds = %bb.am, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.us.i.i.i.i, %middle.block, %.preheader91.i.i.i.i, %.preheader93.i.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i
  %.4.i.i.i.i = phi i64 [ %i.dj, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i ], [ %i.dk, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i ], [ %.0102.i.i.i.i, %.preheader91.i.i.i.i ], [ %.0102.i.i.i.i, %.preheader93.i.i.i.i ], [ %i.dk, %middle.block ], [ %i.dk, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i ], [ %i.dk, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.us.i.i.i.i ], [ %i.dj, %bb.am ]
  %i.fk = add nuw nsw i64 %.069101.i.i.i.i, 1     ; 2 uses
  %exitcond120.not.i.i.i.i = icmp eq i64 %i.fk, %i.dc
  br i1 %exitcond120.not.i.i.i.i, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardINS_10uhugeint_tEiS2_NS_12_GLOBAL__N_120TruncIntegerOperatorEEEvRNS_6VectorES6_S6_m.exit, label %bb.ab, !llvm.loop !1445

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i: ; preds = %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i.preheader136, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i
  %.070104.i.i.i.i = phi i64 [ %i.fo, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i ], [ %.070104.i.i.i.i.ph, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i.preheader136 ] ; 3 uses
  %i.fl = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %.070104.i.i.i.i
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %.070104.i.i.i.i
  %i.fn = load <2 x i64>, ptr %i.fl, align 8, !tbaa !79, !alias.scope !1428, !noalias !1437
  store <2 x i64> %i.fn, ptr %i.fm, align 8, !tbaa !79, !alias.scope !1433, !noalias !1438
  %i.fo = add nuw i64 %.070104.i.i.i.i, 1         ; 2 uses
  %exitcond121.not.i.i.i.i = icmp eq i64 %i.fo, %i.d
  br i1 %exitcond121.not.i.i.i.i, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardINS_10uhugeint_tEiS2_NS_12_GLOBAL__N_120TruncIntegerOperatorEEEvRNS_6VectorES6_S6_m.exit, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i, !llvm.loop !1446

bb.an:                                            ; preds = %bb.k
  %i.fp = icmp eq i8 %i.f, 0
  %or.cond5.i.i = and i1 %i.g, %i.fp
  br i1 %or.cond5.i.i, label %bb.ao, label %bb.cc

bb.ao:                                            ; preds = %bb.an
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10uhugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.fq = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !77 ; 5 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIiEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.b)
  %i.fs = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !77 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !78 ; 2 uses
  %.not.i.i.i43.i.i = icmp eq ptr %i.fv, null
  br i1 %.not.i.i.i43.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i45.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i44.i.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i44.i.i: ; preds = %bb.ao
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !79
  %i.fx = trunc i64 %i.fw to i1
  br i1 %i.fx, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i45.i.i, label %bb.ap

bb.ap:                                            ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i44.i.i
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
  br label %_ZN6duckdb14BinaryExecutor15ExecuteStandardINS_10uhugeint_tEiS2_NS_12_GLOBAL__N_120TruncIntegerOperatorEEEvRNS_6VectorES6_S6_m.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i45.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i44.i.i, %bb.ao
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10uhugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !77 ; 3 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.ga = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.b)
  %i.gb = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !78
  store ptr %i.gc, ptr %i.ga, align 8, !tbaa !78
  %i.gd = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ge = icmp eq ptr %2, %i.b
  br i1 %i.ge, label %bb.ba, label %bb.aq

bb.aq:                                            ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i45.i.i
  %i.gf = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.gg = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !26 ; 2 uses
  %i.gi = load <2 x ptr>, ptr %i.gf, align 8, !tbaa !13
  %.not.i.i.i.i.i.i.i.i46.i.i = icmp eq ptr %i.gh, null
  br i1 %.not.i.i.i.i.i.i.i.i46.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i48.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 8 ; 3 uses
  %i.gk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i.i.i.i.i.i47.i.i = icmp eq i8 %i.gk, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i47.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gl = load i32, ptr %i.gj, align 4, !tbaa !3
  %i.gm = add nsw i32 %i.gl, 1
  store i32 %i.gm, ptr %i.gj, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i48.i.i

bb.at:                                            ; preds = %bb.ar
  %i.gn = atomicrmw volatile add ptr %i.gj, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i48.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i48.i.i: ; preds = %bb.at, %bb.as, %bb.aq
  %i.go = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !26 ; 8 uses
  store <2 x ptr> %i.gi, ptr %i.gd, align 8, !tbaa !13
  %.not.i.i.i.i.i.i.i49.i.i = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i.i.i.i.i49.i.i, label %bb.ba, label %bb.au

bb.au:                                            ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i48.i.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8 ; 4 uses
  %i.gr = load atomic i64, ptr %i.gq acquire, align 8 ; 2 uses
  %i.gs = icmp eq i64 %i.gr, 4294967297
  %i.gt = trunc i64 %i.gr to i32                  ; 2 uses
  br i1 %i.gs, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 0, ptr %i.gq, align 8, !tbaa !32
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gp, i64 12
  store i32 0, ptr %i.gu, align 4, !tbaa !34
  %i.gv = load ptr, ptr %i.gp, align 8, !tbaa !22
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8
  tail call void %i.gx(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #23, !inline_history !1447
  %i.gy = load ptr, ptr %i.gp, align 8, !tbaa !22
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  %i.ha = load ptr, ptr %i.gz, align 8
  tail call void %i.ha(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #23, !inline_history !1447
  br label %bb.ba

bb.aw:                                            ; preds = %bb.au
  %i.hb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i5.i.i.i.i50.i.i = icmp eq i8 %i.hb, 0
  br i1 %.not.i.i.i.i5.i.i.i.i50.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hc = add nsw i32 %i.gt, -1
  store i32 %i.hc, ptr %i.gq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i51.i.i

bb.ay:                                            ; preds = %bb.aw
  %i.hd = atomicrmw volatile add ptr %i.gq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i51.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i51.i.i: ; preds = %bb.ay, %bb.ax
  %.0.i.i.i.i.i.i.i.i.i52.i.i = phi i32 [ %i.gt, %bb.ax ], [ %i.hd, %bb.ay ]
  %i.he = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i52.i.i, 1
  br i1 %i.he, label %bb.az, label %bb.ba, !prof !36

bb.az:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i51.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #23
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i51.i.i, %bb.av, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i48.i.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i45.i.i
  %i.hf = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !83
  %i.hh = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.hg, ptr %i.hh, align 8, !tbaa !83
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1448)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1451)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1453)
  %i.hi = load ptr, ptr %i.ga, align 8, !tbaa !78, !noalias !1455
  %.not.i.i18.i53.i.i = icmp eq ptr %i.hi, null
  br i1 %.not.i.i18.i53.i.i, label %.preheader.i.i80.i.i, label %bb.bb

.preheader.i.i80.i.i:                             ; preds = %bb.ba
  %.not106.i.i81.i.i = icmp eq i64 %i.d, 0
  br i1 %.not106.i.i81.i.i, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardINS_10uhugeint_tEiS2_NS_12_GLOBAL__N_120TruncIntegerOperatorEEEvRNS_6VectorES6_S6_m.exit, label %.lr.ph104.i.i.i.i

.lr.ph104.i.i.i.i:                                ; preds = %.preheader.i.i80.i.i
  %.sroa.02.0.copyload.i.i82.i.i = load i64, ptr %i.fr, align 8, !tbaa !79, !alias.scope !1448, !noalias !1456 ; 2 uses
  %.sroa.43.0..sroa_idx.i.i83.i.i = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %.sroa.43.0.copyload.i.i84.i.i = load i64, ptr %.sroa.43.0..sroa_idx.i.i83.i.i, align 8, !tbaa !79, !alias.scope !1448, !noalias !1456 ; 2 uses
  %.sroa.3.0..sroa_idx5.i.i80.i.i85.i.i = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i86.i.i86.i.i = getelementptr inbounds nuw i8, ptr %22, i64 8
  br label %bb.bu

bb.bb:                                            ; preds = %bb.ba
  %i.hj = add i64 %i.d, 63
  %i.hk = lshr i64 %i.hj, 6                       ; 2 uses
  %.not105.i.i.i.i = icmp eq i64 %i.hk, 0
  br i1 %.not105.i.i.i.i, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardINS_10uhugeint_tEiS2_NS_12_GLOBAL__N_120TruncIntegerOperatorEEEvRNS_6VectorES6_S6_m.exit, label %.lr.ph102.i.i.i.i

.lr.ph102.i.i.i.i:                                ; preds = %bb.bb
  %.sroa.423.0..sroa_idx.i.i54.i.i = getelementptr inbounds nuw i8, ptr %i.fr, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx5.i.i.i.i55.i.i = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i.i.i56.i.i = getelementptr inbounds nuw i8, ptr %28, i64 8
  %.sroa.3.0..sroa_idx5.i.i72.i.i57.i.i = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i78.i.i58.i.i = getelementptr inbounds nuw i8, ptr %25, i64 8
  br label %bb.bc

bb.bc:                                            ; preds = %.loopexit92.i.i61.i.i, %.lr.ph102.i.i.i.i
  %.0101.i.i.i.i = phi i64 [ 0, %.lr.ph102.i.i.i.i ], [ %.4.i.i62.i.i, %.loopexit92.i.i61.i.i ] ; 9 uses
  %.069100.i.i.i.i = phi i64 [ 0, %.lr.ph102.i.i.i.i ], [ %i.jc, %.loopexit92.i.i61.i.i ] ; 2 uses
  %i.hl = load ptr, ptr %i.ga, align 8, !tbaa !78, !noalias !1455 ; 2 uses
  %.not.i71.i.i59.i.i = icmp eq ptr %i.hl, null
  br i1 %.not.i71.i.i59.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i79.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i60.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i79.i.i: ; preds = %bb.bc
  %i.hm = add i64 %.0101.i.i.i.i, 64
  %i.hn = call noundef i64 @llvm.umin.i64(i64 %i.hm, i64 %i.d)
  br label %.preheader93.i.i63.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i60.i.i: ; preds = %bb.bc
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %.069100.i.i.i.i
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !79, !noalias !1455 ; 2 uses
  %i.hq = add i64 %.0101.i.i.i.i, 64
  %i.hr = call noundef i64 @llvm.umin.i64(i64 %i.hq, i64 %i.d) ; 5 uses
  switch i64 %i.hp, label %.preheader91.i.i71.i.i [
    i64 -1, label %.preheader93.i.i63.i.i
    i64 0, label %.loopexit92.i.i61.i.i
  ]

.preheader93.i.i63.i.i:                           ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i60.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i79.i.i
  %i.hs = phi i64 [ %i.hn, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i79.i.i ], [ %i.hr, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i60.i.i ] ; 3 uses
  %i.ht = icmp ult i64 %.0101.i.i.i.i, %i.hs
  br i1 %i.ht, label %.lr.ph.i.i64.i.i, label %.loopexit92.i.i61.i.i

.lr.ph.i.i64.i.i:                                 ; preds = %.preheader93.i.i63.i.i
  %.sroa.022.0.copyload.i.i65.i.i = load i64, ptr %i.fr, align 8, !tbaa !79, !alias.scope !1448, !noalias !1456 ; 2 uses
  %.sroa.423.0.copyload.i.i66.i.i = load i64, ptr %.sroa.423.0..sroa_idx.i.i54.i.i, align 8, !tbaa !79, !alias.scope !1448, !noalias !1456 ; 2 uses
  br label %bb.bd

.preheader91.i.i71.i.i:                           ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i60.i.i
  %i.hu = icmp ult i64 %.0101.i.i.i.i, %i.hr
  br i1 %i.hu, label %.lr.ph98.i.i.i.i, label %.loopexit92.i.i61.i.i

bb.bd:                                            ; preds = %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i68.i.i, %.lr.ph.i.i64.i.i
  %.196.i.i67.i.i = phi i64 [ %.0101.i.i.i.i, %.lr.ph.i.i64.i.i ], [ %i.ij, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i68.i.i ] ; 3 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %.196.i.i67.i.i
end_hunk_1
begin_hunk_2_@llvm.scmp.v4i8.v4i32
!888 = distinct !{!888, !889, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIsisNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb1ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 0"}
!889 = distinct !{!889, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIsisNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb1ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_"}
!890 = !{!891}
!891 = distinct !{!891, !889, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIsisNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb1ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 1"}
!892 = !{!893}
!893 = distinct !{!893, !889, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIsisNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb1ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 2"}
!894 = !{!891, !893}
!895 = !{!888, !891, !893}
!896 = !{!888, !893}
!897 = !{!888, !891}
!898 = distinct !{!898, !39}
!899 = distinct !{!899, !39}
!900 = distinct !{!900, !39}
!901 = distinct !{!901, !39}
!902 = distinct !{null, null, null, null, null, null, null, null, null, null}
!903 = !{!904}
!904 = distinct !{!904, !905, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIsisNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 0"}
!905 = distinct !{!905, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIsisNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_"}
!906 = !{!907}
!907 = distinct !{!907, !905, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIsisNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 1"}
!908 = !{!909}
!909 = distinct !{!909, !905, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIsisNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 2"}
!910 = !{!904, !907, !909}
!911 = !{!907, !909}
!912 = !{!904, !909}
!913 = !{!904, !907}
!914 = distinct !{!914, !39}
!915 = distinct !{!915, !39}
!916 = distinct !{!916, !39}
!917 = distinct !{!917, !39}
!918 = !{!919}
!919 = distinct !{!919, !920, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopIsisNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESF_mRNS_12ValidityMaskESH_SH_T4_: argument 0"}
!920 = distinct !{!920, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopIsisNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESF_mRNS_12ValidityMaskESH_SH_T4_"}
!921 = !{!922}
!922 = distinct !{!922, !920, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopIsisNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESF_mRNS_12ValidityMaskESH_SH_T4_: argument 1"}
!923 = !{!924}
!924 = distinct !{!924, !920, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopIsisNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESF_mRNS_12ValidityMaskESH_SH_T4_: argument 2"}
!925 = !{!926}
!926 = distinct !{!926, !920, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopIsisNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESF_mRNS_12ValidityMaskESH_SH_T4_: argument 3"}
!927 = !{!928}
!928 = distinct !{!928, !920, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopIsisNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESF_mRNS_12ValidityMaskESH_SH_T4_: argument 4"}
!929 = !{!919, !922, !924, !926, !928}
!930 = !{!919, !922, !924, !928}
!931 = !{!919, !922, !924, !926}
!932 = !{!922, !924, !926, !928}
!933 = !{!919, !924, !926, !928}
!934 = !{!919, !922, !926, !928}
!935 = distinct !{!935, !39}
!936 = distinct !{!936, !39}
!937 = distinct !{null, null, null, ptr @_ZN6duckdb19UnifiedVectorFormatD2Ev, null, null, null, null, null}
!938 = distinct !{null, null, null, ptr @_ZN6duckdb19UnifiedVectorFormatD2Ev, null, null, null, null, null}
!939 = distinct !{null, null, null, null, null, null, null, null, null, null}
!940 = !{!941}
!941 = distinct !{!941, !942, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIiiiNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb1EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 0"}
!942 = distinct !{!942, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIiiiNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb1EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_"}
!943 = !{!944}
!944 = distinct !{!944, !942, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIiiiNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb1EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 1"}
!945 = !{!946}
!946 = distinct !{!946, !942, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIiiiNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb1EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 2"}
!947 = !{!941, !946}
!948 = !{!941, !944}
!949 = !{!941, !944, !946}
!950 = !{!944, !946}
!951 = distinct !{!951, !39}
!952 = distinct !{!952, !39}
!953 = distinct !{!953, !39}
!954 = distinct !{!954, !39}
!955 = distinct !{null, null, null, null, null, null, null, null, null, null}
!956 = !{!957}
!957 = distinct !{!957, !958, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIiiiNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb1ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 0"}
!958 = distinct !{!958, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIiiiNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb1ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_"}
!959 = !{!960}
!960 = distinct !{!960, !958, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIiiiNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb1ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 1"}
!961 = !{!962}
!962 = distinct !{!962, !958, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIiiiNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb1ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 2"}
!963 = !{!960, !962}
!964 = !{!957, !960, !962}
!965 = !{!957, !962}
!966 = !{!957, !960}
!967 = distinct !{!967, !39}
!968 = distinct !{!968, !39}
!969 = distinct !{!969, !39}
!970 = distinct !{!970, !39}
!971 = distinct !{null, null, null, null, null, null, null, null, null, null}
!972 = !{!973}
!973 = distinct !{!973, !974, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIiiiNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 0"}
!974 = distinct !{!974, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIiiiNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_"}
!975 = !{!976}
!976 = distinct !{!976, !974, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIiiiNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 1"}
!977 = !{!978}
!978 = distinct !{!978, !974, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIiiiNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 2"}
!979 = !{!973, !976, !978}
!980 = !{!976, !978}
!981 = !{!973, !978}
!982 = !{!973, !976}
!983 = distinct !{!983, !39}
!984 = distinct !{!984, !39}
!985 = distinct !{!985, !39}
!986 = distinct !{!986, !39}
!987 = !{!988}
!988 = distinct !{!988, !989, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopIiiiNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESF_mRNS_12ValidityMaskESH_SH_T4_: argument 0"}
!989 = distinct !{!989, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopIiiiNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESF_mRNS_12ValidityMaskESH_SH_T4_"}
!990 = !{!991}
!991 = distinct !{!991, !989, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopIiiiNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESF_mRNS_12ValidityMaskESH_SH_T4_: argument 1"}
!992 = !{!993}
!993 = distinct !{!993, !989, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopIiiiNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESF_mRNS_12ValidityMaskESH_SH_T4_: argument 2"}
!994 = !{!995}
!995 = distinct !{!995, !989, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopIiiiNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESF_mRNS_12ValidityMaskESH_SH_T4_: argument 3"}
!996 = !{!997}
!997 = distinct !{!997, !989, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopIiiiNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESF_mRNS_12ValidityMaskESH_SH_T4_: argument 4"}
!998 = !{!988, !991, !993, !995, !997}
!999 = !{!988, !991, !993, !997}
!1000 = !{!988, !991, !993, !995}
!1001 = !{!991, !993, !995, !997}
!1002 = !{!988, !993, !995, !997}
!1003 = !{!988, !991, !995, !997}
!1004 = distinct !{!1004, !39}
!1005 = distinct !{!1005, !39}
!1006 = distinct !{null, null, null, ptr @_ZN6duckdb19UnifiedVectorFormatD2Ev, null, null, null, null, null}
!1007 = distinct !{null, null, null, ptr @_ZN6duckdb19UnifiedVectorFormatD2Ev, null, null, null, null, null}
!1008 = distinct !{null, null, null, null, null, null, null, null, null, null}
!1009 = !{!1010}
!1010 = distinct !{!1010, !1011, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIlilNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb1EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 0"}
!1011 = distinct !{!1011, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIlilNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb1EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_"}
!1012 = !{!1013}
!1013 = distinct !{!1013, !1011, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIlilNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb1EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 1"}
!1014 = !{!1015}
!1015 = distinct !{!1015, !1011, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIlilNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb1EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 2"}
!1016 = !{!1010, !1015}
!1017 = !{!1010, !1013}
!1018 = !{!1010, !1013, !1015}
!1019 = !{!1013, !1015}
!1020 = distinct !{!1020, !39}
!1021 = distinct !{!1021, !39}
!1022 = distinct !{!1022, !39}
!1023 = distinct !{!1023, !39}
!1024 = distinct !{null, null, null, null, null, null, null, null, null, null}
!1025 = !{!1026}
!1026 = distinct !{!1026, !1027, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIlilNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb1ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 0"}
!1027 = distinct !{!1027, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIlilNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb1ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_"}
!1028 = !{!1029}
!1029 = distinct !{!1029, !1027, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIlilNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb1ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 1"}
!1030 = !{!1031}
!1031 = distinct !{!1031, !1027, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIlilNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb1ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 2"}
!1032 = !{!1029, !1031}
!1033 = !{!1026, !1029, !1031}
!1034 = !{!1026, !1031}
!1035 = !{!1026, !1029}
!1036 = distinct !{!1036, !39}
!1037 = distinct !{!1037, !39}
!1038 = distinct !{!1038, !39}
!1039 = distinct !{!1039, !39}
!1040 = distinct !{null, null, null, null, null, null, null, null, null, null}
!1041 = !{!1042}
!1042 = distinct !{!1042, !1043, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIlilNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 0"}
!1043 = distinct !{!1043, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIlilNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_"}
!1044 = !{!1045}
!1045 = distinct !{!1045, !1043, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIlilNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 1"}
!1046 = !{!1047}
!1047 = distinct !{!1047, !1043, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIlilNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 2"}
!1048 = !{!1042, !1045, !1047}
!1049 = !{!1045, !1047}
!1050 = !{!1042, !1047}
!1051 = !{!1042, !1045}
!1052 = distinct !{!1052, !39}
!1053 = distinct !{!1053, !39}
!1054 = distinct !{!1054, !39}
!1055 = distinct !{!1055, !39}
!1056 = !{!1057}
!1057 = distinct !{!1057, !1058, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopIlilNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESF_mRNS_12ValidityMaskESH_SH_T4_: argument 0"}
!1058 = distinct !{!1058, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopIlilNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESF_mRNS_12ValidityMaskESH_SH_T4_"}
!1059 = !{!1060}
!1060 = distinct !{!1060, !1058, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopIlilNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESF_mRNS_12ValidityMaskESH_SH_T4_: argument 1"}
!1061 = !{!1062}
!1062 = distinct !{!1062, !1058, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopIlilNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESF_mRNS_12ValidityMaskESH_SH_T4_: argument 2"}
!1063 = !{!1064}
!1064 = distinct !{!1064, !1058, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopIlilNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESF_mRNS_12ValidityMaskESH_SH_T4_: argument 3"}
!1065 = !{!1066}
!1066 = distinct !{!1066, !1058, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopIlilNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESF_mRNS_12ValidityMaskESH_SH_T4_: argument 4"}
!1067 = !{!1057, !1060, !1062, !1064, !1066}
!1068 = !{!1057, !1060, !1062, !1066}
!1069 = !{!1057, !1060, !1062, !1064}
!1070 = !{!1060, !1062, !1064, !1066}
!1071 = !{!1057, !1062, !1064, !1066}
!1072 = !{!1057, !1060, !1064, !1066}
!1073 = distinct !{!1073, !39}
!1074 = distinct !{!1074, !39}
!1075 = distinct !{null, null, null, ptr @_ZN6duckdb19UnifiedVectorFormatD2Ev, null, null, null, null, null}
!1076 = distinct !{null, null, null, ptr @_ZN6duckdb19UnifiedVectorFormatD2Ev, null, null, null, null, null}
!1077 = !{i64 0, i64 8, !79, i64 8, i64 8, !79}
!1078 = distinct !{null, null, null, null, null, null, null, null, null, null}
!1079 = !{!1080}
!1080 = distinct !{!1080, !1081, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopINS_9hugeint_tEiS2_NS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb1EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 0"}
!1081 = distinct !{!1081, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopINS_9hugeint_tEiS2_NS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb1EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_"}
!1082 = !{!1083}
!1083 = distinct !{!1083, !1081, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopINS_9hugeint_tEiS2_NS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb1EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 1"}
!1084 = !{!1085}
!1085 = distinct !{!1085, !1081, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopINS_9hugeint_tEiS2_NS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb1EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 2"}
!1086 = !{!1080, !1083, !1085}
!1087 = !{!1080, !1085}
!1088 = !{!1083, !1085}
!1089 = !{!1080, !1083}
!1090 = distinct !{!1090, !39, !455, !456}
!1091 = distinct !{!1091, !39}
!1092 = distinct !{!1092, !39, !455, !456}
!1093 = distinct !{!1093, !39}
!1094 = distinct !{!1094, !39, !456, !455}
!1095 = distinct !{!1095, !39}
!1096 = distinct !{!1096, !39}
!1097 = distinct !{!1097, !39, !456, !455}
!1098 = distinct !{null, null, null, null, null, null, null, null, null, null}
!1099 = !{!1100}
!1100 = distinct !{!1100, !1101, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopINS_9hugeint_tEiS2_NS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb1ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 0"}
!1101 = distinct !{!1101, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopINS_9hugeint_tEiS2_NS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb1ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_"}
!1102 = !{!1103}
!1103 = distinct !{!1103, !1101, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopINS_9hugeint_tEiS2_NS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb1ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 1"}
!1104 = !{!1105}
!1105 = distinct !{!1105, !1101, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopINS_9hugeint_tEiS2_NS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb1ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 2"}
!1106 = !{!1100, !1103, !1105}
!1107 = !{!1103, !1105}
!1108 = !{!1100, !1105}
!1109 = !{!1100, !1103}
!1110 = distinct !{!1110, !39}
!1111 = distinct !{!1111, !39}
!1112 = distinct !{!1112, !39}
!1113 = distinct !{!1113, !39}
!1114 = distinct !{null, null, null, null, null, null, null, null, null, null}
!1115 = !{!1116}
!1116 = distinct !{!1116, !1117, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopINS_9hugeint_tEiS2_NS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 0"}
!1117 = distinct !{!1117, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopINS_9hugeint_tEiS2_NS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_"}
!1118 = !{!1119}
!1119 = distinct !{!1119, !1117, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopINS_9hugeint_tEiS2_NS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 1"}
!1120 = !{!1121}
!1121 = distinct !{!1121, !1117, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopINS_9hugeint_tEiS2_NS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 2"}
!1122 = !{!1116, !1119, !1121}
!1123 = !{!1119, !1121}
!1124 = !{!1116, !1121}
!1125 = !{!1116, !1119}
!1126 = distinct !{!1126, !39}
!1127 = distinct !{!1127, !39}
!1128 = distinct !{!1128, !39}
!1129 = distinct !{!1129, !39}
!1130 = !{!1131}
!1131 = distinct !{!1131, !1132, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopINS_9hugeint_tEiS2_NS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESG_mRNS_12ValidityMaskESI_SI_T4_: argument 0"}
!1132 = distinct !{!1132, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopINS_9hugeint_tEiS2_NS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESG_mRNS_12ValidityMaskESI_SI_T4_"}
!1133 = !{!1134}
!1134 = distinct !{!1134, !1132, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopINS_9hugeint_tEiS2_NS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESG_mRNS_12ValidityMaskESI_SI_T4_: argument 1"}
!1135 = !{!1136}
!1136 = distinct !{!1136, !1132, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopINS_9hugeint_tEiS2_NS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESG_mRNS_12ValidityMaskESI_SI_T4_: argument 2"}
!1137 = !{!1138}
!1138 = distinct !{!1138, !1132, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopINS_9hugeint_tEiS2_NS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESG_mRNS_12ValidityMaskESI_SI_T4_: argument 3"}
!1139 = !{!1140}
!1140 = distinct !{!1140, !1132, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopINS_9hugeint_tEiS2_NS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESG_mRNS_12ValidityMaskESI_SI_T4_: argument 4"}
!1141 = !{!1131, !1134, !1136, !1138, !1140}
!1142 = !{!1131, !1134, !1136, !1140}
!1143 = !{!1131, !1134, !1136, !1138}
!1144 = !{!1134, !1136, !1138, !1140}
!1145 = !{!1131, !1136, !1138, !1140}
!1146 = !{!1131, !1134, !1138, !1140}
!1147 = distinct !{!1147, !39}
!1148 = distinct !{!1148, !39}
!1149 = distinct !{null, null, null, ptr @_ZN6duckdb19UnifiedVectorFormatD2Ev, null, null, null, null, null}
!1150 = distinct !{null, null, null, ptr @_ZN6duckdb19UnifiedVectorFormatD2Ev, null, null, null, null, null}
!1151 = distinct !{null, null, null, null, null, null, null, null, null, null}
!1152 = !{!1153}
!1153 = distinct !{!1153, !1154, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIhihNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb1EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 0"}
!1154 = distinct !{!1154, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIhihNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb1EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_"}
!1155 = !{!1156}
!1156 = distinct !{!1156, !1154, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIhihNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb1EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 1"}
!1157 = !{!1158}
!1158 = distinct !{!1158, !1154, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIhihNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb1EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 2"}
!1159 = !{!1153, !1158}
!1160 = !{!1153, !1156}
!1161 = !{!1153, !1156, !1158}
!1162 = !{!1156, !1158}
!1163 = distinct !{!1163, !39}
!1164 = distinct !{!1164, !39}
!1165 = distinct !{!1165, !39}
!1166 = distinct !{!1166, !39}
!1167 = distinct !{null, null, null, null, null, null, null, null, null, null}
!1168 = !{!1169}
!1169 = distinct !{!1169, !1170, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIhihNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb1ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 0"}
!1170 = distinct !{!1170, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIhihNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb1ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_"}
!1171 = !{!1172}
!1172 = distinct !{!1172, !1170, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIhihNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb1ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 1"}
!1173 = !{!1174}
!1174 = distinct !{!1174, !1170, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIhihNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb1ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 2"}
!1175 = !{!1172, !1174}
!1176 = !{!1169, !1172, !1174}
!1177 = !{!1169, !1174}
!1178 = !{!1169, !1172}
!1179 = distinct !{!1179, !39}
!1180 = distinct !{!1180, !39}
!1181 = distinct !{!1181, !39}
!1182 = distinct !{!1182, !39}
!1183 = distinct !{null, null, null, null, null, null, null, null, null, null}
!1184 = !{!1185}
!1185 = distinct !{!1185, !1186, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIhihNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 0"}
!1186 = distinct !{!1186, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIhihNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_"}
!1187 = !{!1188}
!1188 = distinct !{!1188, !1186, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIhihNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 1"}
!1189 = !{!1190}
!1190 = distinct !{!1190, !1186, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIhihNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 2"}
!1191 = !{!1185, !1188, !1190}
!1192 = !{!1188, !1190}
!1193 = !{!1185, !1190}
!1194 = !{!1185, !1188}
!1195 = distinct !{!1195, !39}
!1196 = distinct !{!1196, !39}
!1197 = distinct !{!1197, !39}
!1198 = distinct !{!1198, !39}
!1199 = !{!1200}
!1200 = distinct !{!1200, !1201, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopIhihNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESF_mRNS_12ValidityMaskESH_SH_T4_: argument 0"}
!1201 = distinct !{!1201, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopIhihNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESF_mRNS_12ValidityMaskESH_SH_T4_"}
!1202 = !{!1203}
!1203 = distinct !{!1203, !1201, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopIhihNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESF_mRNS_12ValidityMaskESH_SH_T4_: argument 1"}
!1204 = !{!1205}
!1205 = distinct !{!1205, !1201, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopIhihNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESF_mRNS_12ValidityMaskESH_SH_T4_: argument 2"}
!1206 = !{!1207}
!1207 = distinct !{!1207, !1201, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopIhihNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESF_mRNS_12ValidityMaskESH_SH_T4_: argument 3"}
!1208 = !{!1209}
!1209 = distinct !{!1209, !1201, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopIhihNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESF_mRNS_12ValidityMaskESH_SH_T4_: argument 4"}
!1210 = !{!1200, !1203, !1205, !1207, !1209}
!1211 = !{!1200, !1203, !1205, !1209}
!1212 = !{!1200, !1203, !1205, !1207}
!1213 = !{!1203, !1205, !1207, !1209}
!1214 = !{!1200, !1205, !1207, !1209}
!1215 = !{!1200, !1203, !1207, !1209}
!1216 = distinct !{!1216, !39}
!1217 = distinct !{!1217, !39}
!1218 = distinct !{null, null, null, ptr @_ZN6duckdb19UnifiedVectorFormatD2Ev, null, null, null, null, null}
!1219 = distinct !{null, null, null, ptr @_ZN6duckdb19UnifiedVectorFormatD2Ev, null, null, null, null, null}
!1220 = distinct !{null, null, null, null, null, null, null, null, null, null}
!1221 = !{!1222}
!1222 = distinct !{!1222, !1223, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopItitNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb1EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 0"}
!1223 = distinct !{!1223, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopItitNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb1EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_"}
!1224 = !{!1225}
!1225 = distinct !{!1225, !1223, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopItitNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb1EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 1"}
!1226 = !{!1227}
!1227 = distinct !{!1227, !1223, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopItitNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb1EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 2"}
!1228 = !{!1222, !1227}
!1229 = !{!1222, !1225}
!1230 = !{!1222, !1225, !1227}
!1231 = !{!1225, !1227}
!1232 = distinct !{!1232, !39}
!1233 = distinct !{!1233, !39}
!1234 = distinct !{!1234, !39}
!1235 = distinct !{!1235, !39}
!1236 = distinct !{null, null, null, null, null, null, null, null, null, null}
!1237 = !{!1238}
!1238 = distinct !{!1238, !1239, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopItitNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb1ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 0"}
!1239 = distinct !{!1239, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopItitNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb1ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_"}
!1240 = !{!1241}
!1241 = distinct !{!1241, !1239, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopItitNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb1ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 1"}
!1242 = !{!1243}
!1243 = distinct !{!1243, !1239, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopItitNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb1ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 2"}
!1244 = !{!1241, !1243}
!1245 = !{!1238, !1241, !1243}
!1246 = !{!1238, !1243}
!1247 = !{!1238, !1241}
!1248 = distinct !{!1248, !39}
!1249 = distinct !{!1249, !39}
!1250 = distinct !{!1250, !39}
!1251 = distinct !{!1251, !39}
!1252 = distinct !{null, null, null, null, null, null, null, null, null, null}
!1253 = !{!1254}
!1254 = distinct !{!1254, !1255, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopItitNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 0"}
!1255 = distinct !{!1255, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopItitNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_"}
!1256 = !{!1257}
!1257 = distinct !{!1257, !1255, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopItitNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 1"}
!1258 = !{!1259}
!1259 = distinct !{!1259, !1255, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopItitNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 2"}
!1260 = !{!1254, !1257, !1259}
!1261 = !{!1257, !1259}
!1262 = !{!1254, !1259}
!1263 = !{!1254, !1257}
!1264 = distinct !{!1264, !39}
!1265 = distinct !{!1265, !39}
!1266 = distinct !{!1266, !39}
!1267 = distinct !{!1267, !39}
!1268 = !{!1269}
!1269 = distinct !{!1269, !1270, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopItitNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESF_mRNS_12ValidityMaskESH_SH_T4_: argument 0"}
!1270 = distinct !{!1270, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopItitNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESF_mRNS_12ValidityMaskESH_SH_T4_"}
!1271 = !{!1272}
!1272 = distinct !{!1272, !1270, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopItitNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESF_mRNS_12ValidityMaskESH_SH_T4_: argument 1"}
!1273 = !{!1274}
!1274 = distinct !{!1274, !1270, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopItitNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESF_mRNS_12ValidityMaskESH_SH_T4_: argument 2"}
!1275 = !{!1276}
!1276 = distinct !{!1276, !1270, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopItitNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESF_mRNS_12ValidityMaskESH_SH_T4_: argument 3"}
!1277 = !{!1278}
!1278 = distinct !{!1278, !1270, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopItitNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESF_mRNS_12ValidityMaskESH_SH_T4_: argument 4"}
!1279 = !{!1269, !1272, !1274, !1276, !1278}
!1280 = !{!1269, !1272, !1274, !1278}
!1281 = !{!1269, !1272, !1274, !1276}
!1282 = !{!1272, !1274, !1276, !1278}
!1283 = !{!1269, !1274, !1276, !1278}
!1284 = !{!1269, !1272, !1276, !1278}
!1285 = distinct !{!1285, !39}
!1286 = distinct !{!1286, !39}
!1287 = distinct !{null, null, null, ptr @_ZN6duckdb19UnifiedVectorFormatD2Ev, null, null, null, null, null}
!1288 = distinct !{null, null, null, ptr @_ZN6duckdb19UnifiedVectorFormatD2Ev, null, null, null, null, null}
!1289 = distinct !{null, null, null, null, null, null, null, null, null, null}
!1290 = !{!1291}
!1291 = distinct !{!1291, !1292, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIjijNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb1EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 0"}
!1292 = distinct !{!1292, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIjijNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb1EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_"}
!1293 = !{!1294}
!1294 = distinct !{!1294, !1292, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIjijNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb1EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 1"}
!1295 = !{!1296}
!1296 = distinct !{!1296, !1292, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIjijNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb1EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 2"}
!1297 = !{!1291, !1296}
!1298 = !{!1291, !1294}
!1299 = !{!1291, !1294, !1296}
!1300 = !{!1294, !1296}
!1301 = distinct !{!1301, !39}
!1302 = distinct !{!1302, !39}
!1303 = distinct !{!1303, !39}
!1304 = distinct !{!1304, !39}
!1305 = distinct !{null, null, null, null, null, null, null, null, null, null}
!1306 = !{!1307}
!1307 = distinct !{!1307, !1308, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIjijNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb1ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 0"}
!1308 = distinct !{!1308, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIjijNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb1ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_"}
!1309 = !{!1310}
!1310 = distinct !{!1310, !1308, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIjijNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb1ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 1"}
!1311 = !{!1312}
!1312 = distinct !{!1312, !1308, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIjijNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb1ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 2"}
!1313 = !{!1310, !1312}
!1314 = !{!1307, !1310, !1312}
!1315 = !{!1307, !1312}
!1316 = !{!1307, !1310}
!1317 = distinct !{!1317, !39}
!1318 = distinct !{!1318, !39}
!1319 = distinct !{!1319, !39}
!1320 = distinct !{!1320, !39}
!1321 = distinct !{null, null, null, null, null, null, null, null, null, null}
!1322 = !{!1323}
!1323 = distinct !{!1323, !1324, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIjijNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 0"}
!1324 = distinct !{!1324, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIjijNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_"}
!1325 = !{!1326}
!1326 = distinct !{!1326, !1324, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIjijNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 1"}
!1327 = !{!1328}
!1328 = distinct !{!1328, !1324, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIjijNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 2"}
!1329 = !{!1323, !1326, !1328}
!1330 = !{!1326, !1328}
!1331 = !{!1323, !1328}
!1332 = !{!1323, !1326}
!1333 = distinct !{!1333, !39}
!1334 = distinct !{!1334, !39}
!1335 = distinct !{!1335, !39}
!1336 = distinct !{!1336, !39}
!1337 = !{!1338}
!1338 = distinct !{!1338, !1339, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopIjijNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESF_mRNS_12ValidityMaskESH_SH_T4_: argument 0"}
!1339 = distinct !{!1339, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopIjijNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESF_mRNS_12ValidityMaskESH_SH_T4_"}
!1340 = !{!1341}
!1341 = distinct !{!1341, !1339, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopIjijNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESF_mRNS_12ValidityMaskESH_SH_T4_: argument 1"}
!1342 = !{!1343}
!1343 = distinct !{!1343, !1339, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopIjijNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESF_mRNS_12ValidityMaskESH_SH_T4_: argument 2"}
!1344 = !{!1345}
!1345 = distinct !{!1345, !1339, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopIjijNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESF_mRNS_12ValidityMaskESH_SH_T4_: argument 3"}
!1346 = !{!1347}
!1347 = distinct !{!1347, !1339, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopIjijNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESF_mRNS_12ValidityMaskESH_SH_T4_: argument 4"}
!1348 = !{!1338, !1341, !1343, !1345, !1347}
!1349 = !{!1338, !1341, !1343, !1347}
!1350 = !{!1338, !1341, !1343, !1345}
!1351 = !{!1341, !1343, !1345, !1347}
!1352 = !{!1338, !1343, !1345, !1347}
!1353 = !{!1338, !1341, !1345, !1347}
!1354 = distinct !{!1354, !39}
!1355 = distinct !{!1355, !39}
!1356 = distinct !{null, null, null, ptr @_ZN6duckdb19UnifiedVectorFormatD2Ev, null, null, null, null, null}
!1357 = distinct !{null, null, null, ptr @_ZN6duckdb19UnifiedVectorFormatD2Ev, null, null, null, null, null}
!1358 = distinct !{null, null, null, null, null, null, null, null, null, null}
!1359 = !{!1360}
!1360 = distinct !{!1360, !1361, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopImimNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb1EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 0"}
!1361 = distinct !{!1361, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopImimNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb1EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_"}
!1362 = !{!1363}
!1363 = distinct !{!1363, !1361, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopImimNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb1EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 1"}
!1364 = !{!1365}
!1365 = distinct !{!1365, !1361, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopImimNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb1EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 2"}
!1366 = !{!1360, !1365}
!1367 = !{!1360, !1363}
!1368 = !{!1360, !1363, !1365}
!1369 = !{!1363, !1365}
!1370 = distinct !{!1370, !39}
!1371 = distinct !{!1371, !39}
!1372 = distinct !{!1372, !39}
!1373 = distinct !{!1373, !39}
!1374 = distinct !{null, null, null, null, null, null, null, null, null, null}
!1375 = !{!1376}
!1376 = distinct !{!1376, !1377, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopImimNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb1ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 0"}
!1377 = distinct !{!1377, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopImimNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb1ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_"}
!1378 = !{!1379}
!1379 = distinct !{!1379, !1377, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopImimNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb1ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 1"}
!1380 = !{!1381}
!1381 = distinct !{!1381, !1377, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopImimNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb1ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 2"}
!1382 = !{!1379, !1381}
!1383 = !{!1376, !1379, !1381}
!1384 = !{!1376, !1381}
!1385 = !{!1376, !1379}
!1386 = distinct !{!1386, !39}
!1387 = distinct !{!1387, !39}
!1388 = distinct !{!1388, !39}
!1389 = distinct !{!1389, !39}
!1390 = distinct !{null, null, null, null, null, null, null, null, null, null}
!1391 = !{!1392}
!1392 = distinct !{!1392, !1393, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopImimNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 0"}
!1393 = distinct !{!1393, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopImimNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_"}
!1394 = !{!1395}
!1395 = distinct !{!1395, !1393, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopImimNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 1"}
!1396 = !{!1397}
!1397 = distinct !{!1397, !1393, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopImimNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 2"}
!1398 = !{!1392, !1395, !1397}
!1399 = !{!1395, !1397}
!1400 = !{!1392, !1397}
!1401 = !{!1392, !1395}
!1402 = distinct !{!1402, !39}
!1403 = distinct !{!1403, !39}
!1404 = distinct !{!1404, !39}
!1405 = distinct !{!1405, !39}
!1406 = !{!1407}
!1407 = distinct !{!1407, !1408, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopImimNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESF_mRNS_12ValidityMaskESH_SH_T4_: argument 0"}
!1408 = distinct !{!1408, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopImimNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESF_mRNS_12ValidityMaskESH_SH_T4_"}
!1409 = !{!1410}
!1410 = distinct !{!1410, !1408, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopImimNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESF_mRNS_12ValidityMaskESH_SH_T4_: argument 1"}
!1411 = !{!1412}
!1412 = distinct !{!1412, !1408, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopImimNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESF_mRNS_12ValidityMaskESH_SH_T4_: argument 2"}
!1413 = !{!1414}
!1414 = distinct !{!1414, !1408, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopImimNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESF_mRNS_12ValidityMaskESH_SH_T4_: argument 3"}
!1415 = !{!1416}
!1416 = distinct !{!1416, !1408, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopImimNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESF_mRNS_12ValidityMaskESH_SH_T4_: argument 4"}
!1417 = !{!1407, !1410, !1412, !1414, !1416}
!1418 = !{!1407, !1410, !1412, !1416}
!1419 = !{!1407, !1410, !1412, !1414}
!1420 = !{!1410, !1412, !1414, !1416}
!1421 = !{!1407, !1412, !1414, !1416}
!1422 = !{!1407, !1410, !1414, !1416}
!1423 = distinct !{!1423, !39}
!1424 = distinct !{!1424, !39}
!1425 = distinct !{null, null, null, ptr @_ZN6duckdb19UnifiedVectorFormatD2Ev, null, null, null, null, null}
!1426 = distinct !{null, null, null, ptr @_ZN6duckdb19UnifiedVectorFormatD2Ev, null, null, null, null, null}
!1427 = distinct !{null, null, null, null, null, null, null, null, null, null}
!1428 = !{!1429}
!1429 = distinct !{!1429, !1430, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopINS_10uhugeint_tEiS2_NS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb1EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 0"}
!1430 = distinct !{!1430, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopINS_10uhugeint_tEiS2_NS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb1EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_"}
!1431 = !{!1432}
!1432 = distinct !{!1432, !1430, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopINS_10uhugeint_tEiS2_NS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb1EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 1"}
!1433 = !{!1434}
!1434 = distinct !{!1434, !1430, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopINS_10uhugeint_tEiS2_NS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb1EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 2"}
!1435 = !{!1429, !1432, !1434}
!1436 = !{!1429, !1434}
!1437 = !{!1432, !1434}
!1438 = !{!1429, !1432}
!1439 = distinct !{!1439, !39, !455, !456}
!1440 = distinct !{!1440, !39}
!1441 = distinct !{!1441, !39, !455, !456}
!1442 = distinct !{!1442, !39}
!1443 = distinct !{!1443, !39, !456, !455}
!1444 = distinct !{!1444, !39}
!1445 = distinct !{!1445, !39}
!1446 = distinct !{!1446, !39, !456, !455}
!1447 = distinct !{null, null, null, null, null, null, null, null, null, null}
!1448 = !{!1449}
!1449 = distinct !{!1449, !1450, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopINS_10uhugeint_tEiS2_NS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb1ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 0"}
!1450 = distinct !{!1450, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopINS_10uhugeint_tEiS2_NS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb1ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_"}
!1451 = !{!1452}
!1452 = distinct !{!1452, !1450, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopINS_10uhugeint_tEiS2_NS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb1ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 1"}
!1453 = !{!1454}
!1454 = distinct !{!1454, !1450, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopINS_10uhugeint_tEiS2_NS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb1ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 2"}
!1455 = !{!1449, !1452, !1454}
!1456 = !{!1452, !1454}
!1457 = !{!1449, !1454}
!1458 = !{!1449, !1452}
!1459 = distinct !{!1459, !39}
!1460 = distinct !{!1460, !39}
!1461 = distinct !{!1461, !39}
!1462 = distinct !{!1462, !39}
!1463 = distinct !{null, null, null, null, null, null, null, null, null, null}
!1464 = !{!1465}
!1465 = distinct !{!1465, !1466, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopINS_10uhugeint_tEiS2_NS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 0"}
!1466 = distinct !{!1466, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopINS_10uhugeint_tEiS2_NS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_"}
!1467 = !{!1468}
!1468 = distinct !{!1468, !1466, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopINS_10uhugeint_tEiS2_NS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 1"}
!1469 = !{!1470}
!1470 = distinct !{!1470, !1466, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopINS_10uhugeint_tEiS2_NS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbLb0ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 2"}
!1471 = !{!1465, !1468, !1470}
!1472 = !{!1468, !1470}
!1473 = !{!1465, !1470}
!1474 = !{!1465, !1468}
!1475 = distinct !{!1475, !39}
!1476 = distinct !{!1476, !39}
!1477 = distinct !{!1477, !39}
!1478 = distinct !{!1478, !39}
!1479 = !{!1480}
!1480 = distinct !{!1480, !1481, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopINS_10uhugeint_tEiS2_NS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESG_mRNS_12ValidityMaskESI_SI_T4_: argument 0"}
!1481 = distinct !{!1481, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopINS_10uhugeint_tEiS2_NS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESG_mRNS_12ValidityMaskESI_SI_T4_"}
!1482 = !{!1483}
!1483 = distinct !{!1483, !1481, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopINS_10uhugeint_tEiS2_NS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESG_mRNS_12ValidityMaskESI_SI_T4_: argument 1"}
!1484 = !{!1485}
!1485 = distinct !{!1485, !1481, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopINS_10uhugeint_tEiS2_NS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESG_mRNS_12ValidityMaskESI_SI_T4_: argument 2"}
!1486 = !{!1487}
!1487 = distinct !{!1487, !1481, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopINS_10uhugeint_tEiS2_NS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESG_mRNS_12ValidityMaskESI_SI_T4_: argument 3"}
!1488 = !{!1489}
!1489 = distinct !{!1489, !1481, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopINS_10uhugeint_tEiS2_NS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_120TruncIntegerOperatorEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESG_mRNS_12ValidityMaskESI_SI_T4_: argument 4"}
!1490 = !{!1480, !1483, !1485, !1487, !1489}
!1491 = !{!1480, !1483, !1485, !1489}
!1492 = !{!1480, !1483, !1485, !1487}
!1493 = !{!1483, !1485, !1487, !1489}
!1494 = !{!1480, !1485, !1487, !1489}
!1495 = !{!1480, !1483, !1487, !1489}
!1496 = distinct !{!1496, !39}
!1497 = distinct !{!1497, !39}
!1498 = distinct !{null, null, null, ptr @_ZN6duckdb19UnifiedVectorFormatD2Ev, null, null, null, null, null}
!1499 = distinct !{null, null, null, ptr @_ZN6duckdb19UnifiedVectorFormatD2Ev, null, null, null, null, null}
!1500 = !{!1501}
!1501 = distinct !{!1501, !1502, !"_ZN6duckdb13UnaryExecutor11ExecuteFlatIffNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_113RoundOperatorEEEvPKT_PT0_mRNS_12ValidityMaskESB_Pvb: argument 0"}
!1502 = distinct !{!1502, !"_ZN6duckdb13UnaryExecutor11ExecuteFlatIffNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_113RoundOperatorEEEvPKT_PT0_mRNS_12ValidityMaskESB_Pvb"}
!1503 = !{!1504}
!1504 = distinct !{!1504, !1502, !"_ZN6duckdb13UnaryExecutor11ExecuteFlatIffNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_113RoundOperatorEEEvPKT_PT0_mRNS_12ValidityMaskESB_Pvb: argument 1"}
!1505 = !{!1501, !1504}
!1506 = distinct !{!1506, !39, !455, !456}
!1507 = distinct !{null, null, null, null, null, null, null, null, null}
!1508 = distinct !{!1508, !39, !455, !456}
!1509 = distinct !{!1509, !39, !456, !455}
!1510 = distinct !{!1510, !39}
!1511 = distinct !{!1511, !39}
!1512 = distinct !{!1512, !39, !456, !455}
!1513 = !{!1514}
!1514 = distinct !{!1514, !1515, !"_ZN6duckdb13UnaryExecutor11ExecuteLoopIffNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_113RoundOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESE_Pvb: argument 0"}
!1515 = distinct !{!1515, !"_ZN6duckdb13UnaryExecutor11ExecuteLoopIffNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_113RoundOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESE_Pvb"}
!1516 = !{!1517}
!1517 = distinct !{!1517, !1515, !"_ZN6duckdb13UnaryExecutor11ExecuteLoopIffNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_113RoundOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESE_Pvb: argument 1"}
!1518 = !{!1519}
!1519 = distinct !{!1519, !1515, !"_ZN6duckdb13UnaryExecutor11ExecuteLoopIffNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_113RoundOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESE_Pvb: argument 2"}
!1520 = !{!1514, !1517, !1519}
!1521 = !{!1514, !1517}
!1522 = !{!1517, !1519}
!1523 = !{!1514, !1519}
!1524 = distinct !{!1524, !39, !455, !456}
!1525 = distinct !{!1525, !39, !456, !455}
!1526 = distinct !{!1526, !39}
!1527 = distinct !{!1527, !39}
!1528 = distinct !{null, null, ptr @_ZN6duckdb19UnifiedVectorFormatD2Ev, null, null, null, null, null}
!1529 = distinct !{null, null, ptr @_ZN6duckdb19UnifiedVectorFormatD2Ev, null, null, null, null, null}
!1530 = distinct !{null, null, null, null, null, null, null, null, null, null}
!1531 = !{!1532}
!1532 = distinct !{!1532, !1533, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIfifNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_122RoundOperatorPrecisionEbLb0ELb1EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 0"}
!1533 = distinct !{!1533, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIfifNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_122RoundOperatorPrecisionEbLb0ELb1EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_"}
!1534 = !{!1535}
!1535 = distinct !{!1535, !1533, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIfifNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_122RoundOperatorPrecisionEbLb0ELb1EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 1"}
!1536 = !{!1537}
!1537 = distinct !{!1537, !1533, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIfifNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_122RoundOperatorPrecisionEbLb0ELb1EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 2"}
!1538 = !{!1532, !1537}
!1539 = !{!1532, !1535, !1537}
!1540 = !{!1535, !1537}
!1541 = !{!1532, !1535}
!1542 = distinct !{!1542, !39, !455, !456}
!1543 = distinct !{!1543, !39, !456, !455}
!1544 = distinct !{!1544, !39, !455, !456}
!1545 = distinct !{!1545, !39, !455, !456}
!1546 = distinct !{!1546, !39, !456, !455}
!1547 = distinct !{!1547, !39, !455, !456}
!1548 = distinct !{!1548, !39, !456, !455}
!1549 = distinct !{!1549, !39}
!1550 = distinct !{!1550, !39}
!1551 = distinct !{!1551, !39, !456, !455}
!1552 = distinct !{null, null, null, null, null, null, null, null, null, null}
!1553 = !{!1554}
!1554 = distinct !{!1554, !1555, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIfifNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_122RoundOperatorPrecisionEbLb1ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 0"}
!1555 = distinct !{!1555, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIfifNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_122RoundOperatorPrecisionEbLb1ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_"}
!1556 = !{!1557}
!1557 = distinct !{!1557, !1555, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIfifNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_122RoundOperatorPrecisionEbLb1ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 1"}
!1558 = !{!1559}
!1559 = distinct !{!1559, !1555, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIfifNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_122RoundOperatorPrecisionEbLb1ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 2"}
!1560 = !{!1557, !1559}
!1561 = !{!1554, !1557, !1559}
!1562 = !{!1554, !1559}
!1563 = !{!1554, !1557}
!1564 = distinct !{!1564, !39}
!1565 = distinct !{!1565, !39}
!1566 = distinct !{!1566, !39}
!1567 = distinct !{!1567, !39}
!1568 = distinct !{null, null, null, null, null, null, null, null, null, null}
!1569 = !{!1570}
!1570 = distinct !{!1570, !1571, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIfifNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_122RoundOperatorPrecisionEbLb0ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 0"}
!1571 = distinct !{!1571, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIfifNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_122RoundOperatorPrecisionEbLb0ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_"}
!1572 = !{!1573}
!1573 = distinct !{!1573, !1571, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIfifNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_122RoundOperatorPrecisionEbLb0ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 1"}
!1574 = !{!1575}
!1575 = distinct !{!1575, !1571, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIfifNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_122RoundOperatorPrecisionEbLb0ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 2"}
!1576 = !{!1570, !1573, !1575}
!1577 = !{!1573, !1575}
!1578 = !{!1570, !1575}
!1579 = !{!1570, !1573}
!1580 = distinct !{!1580, !39}
!1581 = distinct !{!1581, !39}
!1582 = distinct !{!1582, !39}
!1583 = distinct !{!1583, !39}
!1584 = !{!1585}
!1585 = distinct !{!1585, !1586, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopIfifNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_122RoundOperatorPrecisionEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESF_mRNS_12ValidityMaskESH_SH_T4_: argument 0"}
!1586 = distinct !{!1586, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopIfifNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_122RoundOperatorPrecisionEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESF_mRNS_12ValidityMaskESH_SH_T4_"}
!1587 = !{!1588}
!1588 = distinct !{!1588, !1586, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopIfifNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_122RoundOperatorPrecisionEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESF_mRNS_12ValidityMaskESH_SH_T4_: argument 1"}
!1589 = !{!1590}
!1590 = distinct !{!1590, !1586, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopIfifNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_122RoundOperatorPrecisionEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESF_mRNS_12ValidityMaskESH_SH_T4_: argument 2"}
!1591 = !{!1592}
!1592 = distinct !{!1592, !1586, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopIfifNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_122RoundOperatorPrecisionEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESF_mRNS_12ValidityMaskESH_SH_T4_: argument 3"}
!1593 = !{!1594}
!1594 = distinct !{!1594, !1586, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopIfifNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_122RoundOperatorPrecisionEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESF_mRNS_12ValidityMaskESH_SH_T4_: argument 4"}
!1595 = !{!1585, !1588, !1590, !1592, !1594}
!1596 = !{!1585, !1588, !1590, !1594}
!1597 = !{!1585, !1588, !1590, !1592}
!1598 = !{!1588, !1590, !1592, !1594}
!1599 = !{!1585, !1590, !1592, !1594}
!1600 = !{!1585, !1588, !1592, !1594}
!1601 = distinct !{!1601, !39}
!1602 = distinct !{!1602, !39}
!1603 = distinct !{null, null, null, ptr @_ZN6duckdb19UnifiedVectorFormatD2Ev, null, null, null, null, null}
!1604 = distinct !{null, null, null, ptr @_ZN6duckdb19UnifiedVectorFormatD2Ev, null, null, null, null, null}
!1605 = !{!1606}
!1606 = distinct !{!1606, !1607, !"_ZN6duckdb13UnaryExecutor11ExecuteFlatIddNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_113RoundOperatorEEEvPKT_PT0_mRNS_12ValidityMaskESB_Pvb: argument 0"}
!1607 = distinct !{!1607, !"_ZN6duckdb13UnaryExecutor11ExecuteFlatIddNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_113RoundOperatorEEEvPKT_PT0_mRNS_12ValidityMaskESB_Pvb"}
!1608 = !{!1609}
!1609 = distinct !{!1609, !1607, !"_ZN6duckdb13UnaryExecutor11ExecuteFlatIddNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_113RoundOperatorEEEvPKT_PT0_mRNS_12ValidityMaskESB_Pvb: argument 1"}
!1610 = !{!1606, !1609}
!1611 = distinct !{!1611, !39, !455, !456}
!1612 = distinct !{null, null, null, null, null, null, null, null, null}
!1613 = distinct !{!1613, !39, !455, !456}
!1614 = distinct !{!1614, !39, !456, !455}
!1615 = distinct !{!1615, !39}
!1616 = distinct !{!1616, !39}
!1617 = distinct !{!1617, !39, !456, !455}
!1618 = !{!1619}
!1619 = distinct !{!1619, !1620, !"_ZN6duckdb13UnaryExecutor11ExecuteLoopIddNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_113RoundOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESE_Pvb: argument 0"}
!1620 = distinct !{!1620, !"_ZN6duckdb13UnaryExecutor11ExecuteLoopIddNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_113RoundOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESE_Pvb"}
!1621 = !{!1622}
!1622 = distinct !{!1622, !1620, !"_ZN6duckdb13UnaryExecutor11ExecuteLoopIddNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_113RoundOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESE_Pvb: argument 1"}
!1623 = !{!1624}
!1624 = distinct !{!1624, !1620, !"_ZN6duckdb13UnaryExecutor11ExecuteLoopIddNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_113RoundOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESE_Pvb: argument 2"}
!1625 = !{!1619, !1622, !1624}
!1626 = !{!1619, !1622}
!1627 = !{!1622, !1624}
!1628 = !{!1619, !1624}
!1629 = distinct !{!1629, !39, !455, !456}
!1630 = distinct !{!1630, !39, !456, !455}
!1631 = distinct !{!1631, !39}
!1632 = distinct !{!1632, !39}
!1633 = distinct !{null, null, ptr @_ZN6duckdb19UnifiedVectorFormatD2Ev, null, null, null, null, null}
!1634 = distinct !{null, null, ptr @_ZN6duckdb19UnifiedVectorFormatD2Ev, null, null, null, null, null}
!1635 = distinct !{null, null, null, null, null, null, null, null, null, null}
!1636 = !{!1637}
!1637 = distinct !{!1637, !1638, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIdidNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_122RoundOperatorPrecisionEbLb0ELb1EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 0"}
!1638 = distinct !{!1638, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIdidNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_122RoundOperatorPrecisionEbLb0ELb1EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_"}
!1639 = !{!1640}
!1640 = distinct !{!1640, !1638, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIdidNS_29BinaryStandardOperatorWrapperENS_12_GLOBAL__N_122RoundOperatorPrecisionEbLb0ELb1EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 1"}
end_hunk_2
