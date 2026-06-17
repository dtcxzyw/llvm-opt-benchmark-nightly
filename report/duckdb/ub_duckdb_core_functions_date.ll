inline.NumInlined: 23534
inline.NumDeleted: 3924
begin_hunk_0_@_ZN6duckdb12_GLOBAL__N_118TimeBucketFunctionINS_11timestamp_tEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_124TimeBucketOffsetFunctionINS_6date_tEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::interval_t", align 8 ; 8 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0) ; 8 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1) ; 4 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 2) ; 4 uses
  %i.d = load i8, ptr %i.a, align 8, !tbaa !82
  %i.e = icmp eq i8 %i.d, 2
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !97   ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit: ; preds = %bb.b
  %i.h = load i64, ptr %i.g, align 8, !tbaa !44
  %i.i = trunc i64 %i.h to i1
  br i1 %i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
  br label %bb.j

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread: ; preds = %bb.b, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10interval_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !96   ; 2 uses
  %.sroa.03.0.copyload = load i64, ptr %i.k, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !44 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %.sroa.03.0.copyload, ptr %3, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %.sroa.5.0.copyload, ptr %i.l, align 8
  %i.m = trunc i64 %.sroa.03.0.copyload to i32    ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  %i.o = lshr i64 %.sroa.03.0.copyload, 32
  %i.p = trunc nuw i64 %i.o to i32
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread
  %i.q = call noundef i64 @_ZN6duckdb8Interval8GetMicroERKNS_10interval_tE(ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.r = icmp sgt i64 %i.q, 0
  br i1 %i.r, label %bb.f, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre.i = load i32, ptr %3, align 8, !tbaa !311
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.pre6.i = load i32, ptr %.phi.trans.insert.i, align 4
  %.pre7.i = load i64, ptr %i.l, align 8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread
  %i.s = phi i64 [ %.pre7.i, %._crit_edge.i ], [ %.sroa.5.0.copyload, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread ]
  %i.t = phi i32 [ %.pre6.i, %._crit_edge.i ], [ %i.p, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread ]
  %i.u = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.m, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread ]
  %i.v = icmp sgt i32 %i.u, 0
  %i.w = icmp eq i32 %i.t, 0
  %or.cond.i = select i1 %i.v, i1 %i.w, i1 false
  %i.x = icmp eq i64 %i.s, 0
  %or.cond5.i = select i1 %or.cond.i, i1 %i.x, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load i64, ptr %i.y, align 8, !tbaa !68   ; 2 uses
  br i1 %or.cond5.i, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !68
  call void @_ZN6duckdb15TernaryExecutor14ExecuteGenericINS_10interval_tENS_6date_tES2_S3_NS_20TernaryLambdaWrapperEPFS3_S2_S3_S2_EEEvRNS_6VectorES8_S8_S8_mT4_(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.ab, ptr noundef nonnull @_ZN6duckdb12_GLOBAL__N_110TimeBucket45OffsetWidthConvertibleToMicrosTernaryOperator9OperationINS_10interval_tENS_6date_tES4_S5_EET2_T_T0_T1_)
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  call void @_ZN6duckdb15TernaryExecutor14ExecuteGenericINS_10interval_tENS_6date_tES2_S3_NS_20TernaryLambdaWrapperEPFS3_S2_S3_S2_EEEvRNS_6VectorES8_S8_S8_mT4_(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.z, ptr noundef nonnull @_ZN6duckdb12_GLOBAL__N_110TimeBucket45OffsetWidthConvertibleToMonthsTernaryOperator9OperationINS_10interval_tENS_6date_tES4_S5_EET2_T_T0_T1_)
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  call void @_ZN6duckdb15TernaryExecutor14ExecuteGenericINS_10interval_tENS_6date_tES2_S3_NS_20TernaryLambdaWrapperEPFS3_S2_S3_S2_EEEvRNS_6VectorES8_S8_S8_mT4_(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.z, ptr noundef nonnull @_ZN6duckdb12_GLOBAL__N_110TimeBucket21OffsetTernaryOperator9OperationINS_10interval_tENS_6date_tES4_S5_EET2_T_T0_T1_)
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !68
  tail call void @_ZN6duckdb15TernaryExecutor14ExecuteGenericINS_10interval_tENS_6date_tES2_S3_NS_20TernaryLambdaWrapperEPFS3_S2_S3_S2_EEEvRNS_6VectorES8_S8_S8_mT4_(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.ad, ptr noundef nonnull @_ZN6duckdb12_GLOBAL__N_110TimeBucket21OffsetTernaryOperator9OperationINS_10interval_tENS_6date_tES4_S5_EET2_T_T0_T1_)
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.g, %bb.h, %bb.c, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_124TimeBucketOffsetFunctionINS_11timestamp_tEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::interval_t", align 8 ; 8 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0) ; 8 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1) ; 4 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 2) ; 4 uses
  %i.d = load i8, ptr %i.a, align 8, !tbaa !82
  %i.e = icmp eq i8 %i.d, 2
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !97   ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit: ; preds = %bb.b
  %i.h = load i64, ptr %i.g, align 8, !tbaa !44
  %i.i = trunc i64 %i.h to i1
  br i1 %i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
  br label %bb.j

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread: ; preds = %bb.b, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10interval_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !96   ; 2 uses
  %.sroa.03.0.copyload = load i64, ptr %i.k, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !44 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %.sroa.03.0.copyload, ptr %3, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %.sroa.5.0.copyload, ptr %i.l, align 8
  %i.m = trunc i64 %.sroa.03.0.copyload to i32    ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  %i.o = lshr i64 %.sroa.03.0.copyload, 32
  %i.p = trunc nuw i64 %i.o to i32
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread
  %i.q = call noundef i64 @_ZN6duckdb8Interval8GetMicroERKNS_10interval_tE(ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.r = icmp sgt i64 %i.q, 0
  br i1 %i.r, label %bb.f, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre.i = load i32, ptr %3, align 8, !tbaa !311
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.pre6.i = load i32, ptr %.phi.trans.insert.i, align 4
  %.pre7.i = load i64, ptr %i.l, align 8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread
  %i.s = phi i64 [ %.pre7.i, %._crit_edge.i ], [ %.sroa.5.0.copyload, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread ]
  %i.t = phi i32 [ %.pre6.i, %._crit_edge.i ], [ %i.p, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread ]
  %i.u = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.m, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread ]
  %i.v = icmp sgt i32 %i.u, 0
  %i.w = icmp eq i32 %i.t, 0
  %or.cond.i = select i1 %i.v, i1 %i.w, i1 false
  %i.x = icmp eq i64 %i.s, 0
  %or.cond5.i = select i1 %or.cond.i, i1 %i.x, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load i64, ptr %i.y, align 8, !tbaa !68   ; 2 uses
  br i1 %or.cond5.i, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !68
  call void @_ZN6duckdb15TernaryExecutor14ExecuteGenericINS_10interval_tENS_11timestamp_tES2_S3_NS_20TernaryLambdaWrapperEPFS3_S2_S3_S2_EEEvRNS_6VectorES8_S8_S8_mT4_(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.ab, ptr noundef nonnull @_ZN6duckdb12_GLOBAL__N_110TimeBucket45OffsetWidthConvertibleToMicrosTernaryOperator9OperationINS_10interval_tENS_11timestamp_tES4_S5_EET2_T_T0_T1_)
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  call void @_ZN6duckdb15TernaryExecutor14ExecuteGenericINS_10interval_tENS_11timestamp_tES2_S3_NS_20TernaryLambdaWrapperEPFS3_S2_S3_S2_EEEvRNS_6VectorES8_S8_S8_mT4_(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.z, ptr noundef nonnull @_ZN6duckdb12_GLOBAL__N_110TimeBucket45OffsetWidthConvertibleToMonthsTernaryOperator9OperationINS_10interval_tENS_11timestamp_tES4_S5_EET2_T_T0_T1_)
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  call void @_ZN6duckdb15TernaryExecutor14ExecuteGenericINS_10interval_tENS_11timestamp_tES2_S3_NS_20TernaryLambdaWrapperEPFS3_S2_S3_S2_EEEvRNS_6VectorES8_S8_S8_mT4_(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.z, ptr noundef nonnull @_ZN6duckdb12_GLOBAL__N_110TimeBucket21OffsetTernaryOperator9OperationINS_10interval_tENS_11timestamp_tES4_S5_EET2_T_T0_T1_)
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !68
  tail call void @_ZN6duckdb15TernaryExecutor14ExecuteGenericINS_10interval_tENS_11timestamp_tES2_S3_NS_20TernaryLambdaWrapperEPFS3_S2_S3_S2_EEEvRNS_6VectorES8_S8_S8_mT4_(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.ad, ptr noundef nonnull @_ZN6duckdb12_GLOBAL__N_110TimeBucket21OffsetTernaryOperator9OperationINS_10interval_tENS_11timestamp_tES4_S5_EET2_T_T0_T1_)
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.g, %bb.h, %bb.c, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_124TimeBucketOriginFunctionINS_6date_tEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::interval_t", align 8 ; 8 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0) ; 8 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1) ; 4 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 2) ; 8 uses
  %i.d = load i8, ptr %i.a, align 8, !tbaa !82
  %i.e = icmp eq i8 %i.d, 2
  br i1 %i.e, label %4, label %bb.j

4:                                                ; preds = %bb.a
  %5 = load i8, ptr %i.c, align 8, !tbaa !82
  %6 = icmp eq i8 %5, 2
  br i1 %6, label %bb.b, label %bb.j

bb.b:                                             ; preds = %4
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !97   ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit: ; preds = %bb.b
  %i.h = load i64, ptr %i.g, align 8, !tbaa !44
  %i.i = trunc i64 %i.h to i1
  br i1 %i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %bb.c

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread: ; preds = %bb.b, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !97   ; 2 uses
  %.not.i.i38 = icmp eq ptr %i.k, null
  br i1 %.not.i.i38, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit40.thread, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit40

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit40: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread
  %i.l = load i64, ptr %i.k, align 8, !tbaa !44
  %i.m = trunc i64 %i.l to i1
  br i1 %i.m, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit40.thread, label %bb.c

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit40.thread: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit40
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_6date_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.c)
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !96
  %.sroa.04.0.copyload = load i32, ptr %i.o, align 4, !tbaa !3
  %i.p = tail call noundef zeroext i1 @_ZN6duckdb5Value8IsFiniteINS_6date_tEEEbT_(i32 %.sroa.04.0.copyload)
  br i1 %i.p, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit40.thread, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit40, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
  br label %bb.k

bb.d:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit40.thread
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10interval_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !96   ; 2 uses
  %.sroa.03.0.copyload = load i64, ptr %i.r, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !44 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %.sroa.03.0.copyload, ptr %3, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %.sroa.5.0.copyload, ptr %i.s, align 8
  %i.t = trunc i64 %.sroa.03.0.copyload to i32    ; 2 uses
  %i.u = icmp eq i32 %i.t, 0
  %i.v = lshr i64 %.sroa.03.0.copyload, 32
  %i.w = trunc nuw i64 %i.v to i32
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = call noundef i64 @_ZN6duckdb8Interval8GetMicroERKNS_10interval_tE(ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.y = icmp sgt i64 %i.x, 0
  br i1 %i.y, label %bb.g, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.e
  %.pre.i = load i32, ptr %3, align 8, !tbaa !311
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.pre6.i = load i32, ptr %.phi.trans.insert.i, align 4
  %.pre7.i = load i64, ptr %i.s, align 8
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i, %bb.d
  %i.z = phi i64 [ %.pre7.i, %._crit_edge.i ], [ %.sroa.5.0.copyload, %bb.d ]
  %i.aa = phi i32 [ %.pre6.i, %._crit_edge.i ], [ %i.w, %bb.d ]
  %i.ab = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.t, %bb.d ]
  %i.ac = icmp sgt i32 %i.ab, 0
  %i.ad = icmp eq i32 %i.aa, 0
  %or.cond.i = select i1 %i.ac, i1 %i.ad, i1 false
  %i.ae = icmp eq i64 %i.z, 0
  %or.cond5.i = select i1 %or.cond.i, i1 %i.ae, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !68 ; 2 uses
  br i1 %or.cond5.i, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !68
  call void @_ZN6duckdb15TernaryExecutor14ExecuteGenericINS_10interval_tENS_6date_tES3_S3_NS_20TernaryLambdaWrapperEPFS3_S2_S3_S3_EEEvRNS_6VectorES8_S8_S8_mT4_(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.ai, ptr noundef nonnull @_ZN6duckdb12_GLOBAL__N_110TimeBucket45OriginWidthConvertibleToMicrosTernaryOperator9OperationINS_10interval_tENS_6date_tES5_S5_EET2_T_T0_T1_)
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  call void @_ZN6duckdb15TernaryExecutor14ExecuteGenericINS_10interval_tENS_6date_tES3_S3_NS_20TernaryLambdaWrapperEPFS3_S2_S3_S3_EEEvRNS_6VectorES8_S8_S8_mT4_(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.ag, ptr noundef nonnull @_ZN6duckdb12_GLOBAL__N_110TimeBucket45OriginWidthConvertibleToMonthsTernaryOperator9OperationINS_10interval_tENS_6date_tES5_S5_EET2_T_T0_T1_)
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  call void @_ZN6duckdb15TernaryExecutor14ExecuteGenericINS_10interval_tENS_6date_tES3_S3_NS_29TernaryLambdaWrapperWithNullsEPFS3_S2_S3_S3_RNS_12ValidityMaskEmEEEvRNS_6VectorESA_SA_SA_mT4_(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.ag, ptr noundef nonnull @_ZN6duckdb12_GLOBAL__N_110TimeBucket21OriginTernaryOperator9OperationINS_10interval_tENS_6date_tES5_S5_EET2_T_T0_T1_RNS_12ValidityMaskEm)
  br label %bb.k

bb.j:                                             ; preds = %4, %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !68
  tail call void @_ZN6duckdb15TernaryExecutor14ExecuteGenericINS_10interval_tENS_6date_tES3_S3_NS_29TernaryLambdaWrapperWithNullsEPFS3_S2_S3_S3_RNS_12ValidityMaskEmEEEvRNS_6VectorESA_SA_SA_mT4_(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.ak, ptr noundef nonnull @_ZN6duckdb12_GLOBAL__N_110TimeBucket21OriginTernaryOperator9OperationINS_10interval_tENS_6date_tES5_S5_EET2_T_T0_T1_RNS_12ValidityMaskEm)
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.h, %bb.i, %bb.c, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_124TimeBucketOriginFunctionINS_11timestamp_tEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::interval_t", align 8 ; 8 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0) ; 8 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1) ; 4 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 2) ; 8 uses
  %i.d = load i8, ptr %i.a, align 8, !tbaa !82
  %i.e = icmp eq i8 %i.d, 2
  br i1 %i.e, label %4, label %bb.j

4:                                                ; preds = %bb.a
  %5 = load i8, ptr %i.c, align 8, !tbaa !82
  %6 = icmp eq i8 %5, 2
  br i1 %6, label %bb.b, label %bb.j

bb.b:                                             ; preds = %4
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !97   ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit: ; preds = %bb.b
  %i.h = load i64, ptr %i.g, align 8, !tbaa !44
  %i.i = trunc i64 %i.h to i1
  br i1 %i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %bb.c

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread: ; preds = %bb.b, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !97   ; 2 uses
  %.not.i.i38 = icmp eq ptr %i.k, null
  br i1 %.not.i.i38, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit40.thread, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit40

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit40: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread
  %i.l = load i64, ptr %i.k, align 8, !tbaa !44
  %i.m = trunc i64 %i.l to i1
  br i1 %i.m, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit40.thread, label %bb.c

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit40.thread: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit40
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_11timestamp_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.c)
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !96
  %.sroa.04.0.copyload = load i64, ptr %i.o, align 8, !tbaa !44
  %i.p = tail call noundef zeroext i1 @_ZN6duckdb5Value8IsFiniteINS_11timestamp_tEEEbT_(i64 %.sroa.04.0.copyload)
  br i1 %i.p, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit40.thread, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit40, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
  br label %bb.k

bb.d:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit40.thread
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10interval_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !96   ; 2 uses
  %.sroa.03.0.copyload = load i64, ptr %i.r, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !44 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %.sroa.03.0.copyload, ptr %3, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %.sroa.5.0.copyload, ptr %i.s, align 8
  %i.t = trunc i64 %.sroa.03.0.copyload to i32    ; 2 uses
  %i.u = icmp eq i32 %i.t, 0
  %i.v = lshr i64 %.sroa.03.0.copyload, 32
  %i.w = trunc nuw i64 %i.v to i32
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = call noundef i64 @_ZN6duckdb8Interval8GetMicroERKNS_10interval_tE(ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.y = icmp sgt i64 %i.x, 0
  br i1 %i.y, label %bb.g, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.e
  %.pre.i = load i32, ptr %3, align 8, !tbaa !311
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.pre6.i = load i32, ptr %.phi.trans.insert.i, align 4
  %.pre7.i = load i64, ptr %i.s, align 8
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i, %bb.d
  %i.z = phi i64 [ %.pre7.i, %._crit_edge.i ], [ %.sroa.5.0.copyload, %bb.d ]
  %i.aa = phi i32 [ %.pre6.i, %._crit_edge.i ], [ %i.w, %bb.d ]
  %i.ab = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.t, %bb.d ]
  %i.ac = icmp sgt i32 %i.ab, 0
  %i.ad = icmp eq i32 %i.aa, 0
  %or.cond.i = select i1 %i.ac, i1 %i.ad, i1 false
  %i.ae = icmp eq i64 %i.z, 0
  %or.cond5.i = select i1 %or.cond.i, i1 %i.ae, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !68 ; 2 uses
  br i1 %or.cond5.i, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !68
  call void @_ZN6duckdb15TernaryExecutor14ExecuteGenericINS_10interval_tENS_11timestamp_tES3_S3_NS_20TernaryLambdaWrapperEPFS3_S2_S3_S3_EEEvRNS_6VectorES8_S8_S8_mT4_(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.ai, ptr noundef nonnull @_ZN6duckdb12_GLOBAL__N_110TimeBucket45OriginWidthConvertibleToMicrosTernaryOperator9OperationINS_10interval_tENS_11timestamp_tES5_S5_EET2_T_T0_T1_)
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  call void @_ZN6duckdb15TernaryExecutor14ExecuteGenericINS_10interval_tENS_11timestamp_tES3_S3_NS_20TernaryLambdaWrapperEPFS3_S2_S3_S3_EEEvRNS_6VectorES8_S8_S8_mT4_(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.ag, ptr noundef nonnull @_ZN6duckdb12_GLOBAL__N_110TimeBucket45OriginWidthConvertibleToMonthsTernaryOperator9OperationINS_10interval_tENS_11timestamp_tES5_S5_EET2_T_T0_T1_)
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  call void @_ZN6duckdb15TernaryExecutor14ExecuteGenericINS_10interval_tENS_11timestamp_tES3_S3_NS_29TernaryLambdaWrapperWithNullsEPFS3_S2_S3_S3_RNS_12ValidityMaskEmEEEvRNS_6VectorESA_SA_SA_mT4_(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.ag, ptr noundef nonnull @_ZN6duckdb12_GLOBAL__N_110TimeBucket21OriginTernaryOperator9OperationINS_10interval_tENS_11timestamp_tES5_S5_EET2_T_T0_T1_RNS_12ValidityMaskEm)
  br label %bb.k

bb.j:                                             ; preds = %4, %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !68
  tail call void @_ZN6duckdb15TernaryExecutor14ExecuteGenericINS_10interval_tENS_11timestamp_tES3_S3_NS_29TernaryLambdaWrapperWithNullsEPFS3_S2_S3_S3_RNS_12ValidityMaskEmEEEvRNS_6VectorESA_SA_SA_mT4_(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.ak, ptr noundef nonnull @_ZN6duckdb12_GLOBAL__N_110TimeBucket21OriginTernaryOperator9OperationINS_10interval_tENS_11timestamp_tES5_S5_EET2_T_T0_T1_RNS_12ValidityMaskEm)
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.h, %bb.i, %bb.c, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb12DateTruncFun12GetFunctionsEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.duckdb::ScalarFunctionSet") align 8 %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %2 = alloca %"class.duckdb::ScalarFunction", align 8 ; 15 uses
  %3 = alloca %"class.duckdb::vector", align 8    ; 9 uses
  %4 = alloca [2 x %"struct.duckdb::LogicalType"], align 8 ; 11 uses
  %5 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %6 = alloca %"class.std::function", align 8     ; 9 uses
  %7 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %8 = alloca %"class.duckdb::ScalarFunction", align 8 ; 15 uses
  %9 = alloca %"class.duckdb::vector", align 8    ; 9 uses
  %10 = alloca [2 x %"struct.duckdb::LogicalType"], align 8 ; 11 uses
  %11 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %12 = alloca %"class.std::function", align 8    ; 9 uses
  %13 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %14 = alloca %"class.duckdb::ScalarFunction", align 8 ; 15 uses
  %15 = alloca %"class.duckdb::vector", align 8   ; 9 uses
  %16 = alloca [2 x %"struct.duckdb::LogicalType"], align 8 ; 11 uses
  %17 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %18 = alloca %"class.std::function", align 8    ; 9 uses
  %19 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.a, ptr noundef nonnull align 1 dereferenceable(10) @.str.3, i64 10, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 10, ptr %i.b, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 26
  store i8 0, ptr %i.c, align 2, !tbaa !52
  invoke void @_ZN6duckdb17ScalarFunctionSetC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %1)
          to label %bb.a unwind label %bb.bs

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.d = load ptr, ptr %1, align 8, !tbaa !56     ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  call void @_ZdlPv(ptr noundef %i.d) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef zeroext 25)
          to label %bb.b unwind label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit177

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 noundef zeroext 19)
          to label %bb.c unwind label %.loopexit177.loopexit188

bb.c:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.h = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #28
          to label %.noexc127 unwind label %.body128.thread ; 6 uses

.noexc127:                                        ; preds = %bb.c
  store ptr %i.h, ptr %3, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !57
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %.thread232

.thread232:                                       ; preds = %.noexc127
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  %i.m = call ptr @__cxa_begin_catch(ptr %i.l) #25 ; 0 uses
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i

_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc127
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1 unwind label %.lr.ph.i.i.i.i.i.i.i.preheader

_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1: ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !16
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 noundef zeroext 19)
          to label %bb.h unwind label %bb.bt

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %i.r) #25 ; 0 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.h) #25
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.thread232
  invoke void @__cxa_rethrow() #29
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @__cxa_end_catch()
          to label %.body128 unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #26
  unreachable

bb.f:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i
  unreachable

.body128.thread:                                  ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body128:                                         ; preds = %bb.d
  %.pr = load ptr, ptr %3, align 8, !tbaa !13     ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i, label %.body, label %bb.g

bb.g:                                             ; preds = %.body128
  call void @_ZdlPv(ptr noundef nonnull %.pr) #27
  br label %.body

bb.h:                                             ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.z, align 8
  store ptr @_ZN6duckdb12_GLOBAL__N_117DateTruncFunctionINS_11timestamp_tES2_EEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %6, align 8, !tbaa !7
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.y, align 8, !tbaa !9
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.x, align 8, !tbaa !12
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 noundef zeroext 0)
          to label %bb.i unwind label %bb.bu

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN6duckdb14ScalarFunctionC1ENS_6vectorINS_11LogicalTypeELb1ESaIS2_EEES2_St8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEEPFNS_10unique_ptrINS_12FunctionDataESt14default_deleteISF_ELb1EEERNS_13ClientContextERS0_RNS1_INSE_INS_10ExpressionESG_ISM_ELb1EEELb1ESaISO_EEEEPFSI_RNS_23ScalarFunctionBindInputESL_SR_EPFNSE_INS_14BaseStatisticsESG_ISY_ELb1EEESK_RNS_23FunctionStatisticsInputEEPFNSE_INS_18FunctionLocalStateESG_IS15_ELb1EEES9_RKNS_23BoundFunctionExpressionEPSF_ES2_NS_17FunctionStabilityENS_20FunctionNullHandlingEPFS2_SK_RKS4_mE(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @_ZN6duckdb12_GLOBAL__N_113DateTruncBindERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEE, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %7, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef null)
          to label %bb.j unwind label %bb.bv

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 10 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !58 ; 10 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !61
  %.not.i.i.i = icmp eq ptr %i.ab, %i.ad
  br i1 %.not.i.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN6duckdb18BaseScalarFunctionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(360) %i.ab, ptr noundef nonnull align 8 dereferenceable(360) %2)
          to label %.noexc54 unwind label %bb.bw

.noexc54:                                         ; preds = %bb.k
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb14ScalarFunctionE, i64 16), ptr %i.ab, align 8, !tbaa !45
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 240 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 264
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i8 0, i64 24, i1 false)
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !9
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !9
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !12
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZN6duckdb14ScalarFunctionC2EOS0_.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc54
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i64 16, i1 false), !tbaa.struct !62
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !12
  store ptr %i.am, ptr %i.al, align 8, !tbaa !12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  br label %_ZN6duckdb14ScalarFunctionC2EOS0_.exit.i.i.i

_ZN6duckdb14ScalarFunctionC2EOS0_.exit.i.i.i:     ; preds = %bb.l, %.noexc54
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 272
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.an, ptr noundef nonnull align 8 dereferenceable(72) %i.ao, i64 72, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 344
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 344 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 352
  store ptr null, ptr %i.ar, align 8, !tbaa !47
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 352
  %i.at = load <2 x ptr>, ptr %i.aq, align 8, !tbaa !7
  store ptr null, ptr %i.as, align 8, !tbaa !47
  store <2 x ptr> %i.at, ptr %i.ap, align 8, !tbaa !7
end_hunk_0
