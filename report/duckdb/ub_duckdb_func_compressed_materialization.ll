Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_func_compressed_materialization?download=true
inline.NumInlined: 5151
inline.NumDeleted: 1155
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 116
loop-unroll.NumUnrolled: 127
begin_hunk_0_@_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_8string_tEjNS_18UnaryLambdaWrapperEPFjRKS2_EEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESH_Pvb:bb.a
  %i.a = load ptr, ptr %4, align 8, !tbaa !136
  %.not.i = icmp eq ptr %i.a, null
  %.not41 = icmp eq i64 %2, 0                     ; 2 uses
  br i1 %.not.i, label %.preheader, label %.preheader35

.preheader35:                                     ; preds = %bb.a
  br i1 %.not41, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader35
  %i.b = load ptr, ptr %3, align 8, !tbaa !149    ; 2 uses
  %.not.i31 = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  br i1 %.not.i31, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %.lr.ph, %bb.e
  %.037.us = phi i64 [ %i.w, %bb.e ], [ 0, %.lr.ph ] ; 5 uses
  %i.e = lshr i64 %.037.us, 6                     ; 2 uses
  %i.f = and i64 %.037.us, 63
  %i.g = load ptr, ptr %4, align 8, !tbaa !136
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.e
  %i.i = load i64, ptr %i.h, align 8, !tbaa !75
  %i.j = shl nuw i64 1, %i.f                      ; 2 uses
  %i.k = and i64 %i.i, %i.j
  %.not.us = icmp eq i64 %i.k, 0
  br i1 %.not.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.037.us ; 2 uses
  %.sroa.06.0.copyload.us = load i64, ptr %i.l, align 8
  %.sroa.27.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.27.0.copyload.us = load ptr, ptr %.sroa.27.0..sroa_idx.us, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i64 %.sroa.06.0.copyload.us, ptr %9, align 8
  store ptr %.sroa.27.0.copyload.us, ptr %i.c, align 8
  %i.m = load ptr, ptr %6, align 8, !tbaa !82
  %i.n = call noundef i32 %i.m(ptr noundef nonnull align 8 dereferenceable(16) %9), !inline_history !19
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.037.us
  store i32 %i.n, ptr %i.o, align 4, !tbaa !29
  br label %bb.e

bb.c:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.p = load ptr, ptr %5, align 8, !tbaa !136    ; 2 uses
  %.not.i32.us = icmp eq ptr %i.p, null
  br i1 %.not.i32.us, label %bb.d, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.d, align 8, !tbaa !150
  call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.q)
  %.pre.i.us = load ptr, ptr %5, align 8, !tbaa !136
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us: ; preds = %bb.d, %bb.c
  %i.r = phi ptr [ %.pre.i.us, %bb.d ], [ %i.p, %bb.c ]
  %i.s = xor i64 %i.j, -1
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.e ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !75
  %i.v = and i64 %i.u, %i.s
  store i64 %i.v, ptr %i.t, align 8, !tbaa !75
  br label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us, %bb.b
  %i.w = add nuw i64 %.037.us, 1                  ; 2 uses
  %exitcond45.not = icmp eq i64 %i.w, %2
  br i1 %exitcond45.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !2067

.preheader:                                       ; preds = %bb.a
  br i1 %.not41, label %.loopexit, label %.lr.ph39

.lr.ph39:                                         ; preds = %.preheader
  %i.x = load ptr, ptr %3, align 8, !tbaa !149    ; 2 uses
  %.not.i33 = icmp eq ptr %i.x, null
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  br i1 %.not.i33, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit34

_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us: ; preds = %.lr.ph39, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us
  %.03038.us = phi i64 [ %i.ad, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us ], [ 0, %.lr.ph39 ] ; 3 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.03038.us ; 2 uses
  %.sroa.0.0.copyload.us = load i64, ptr %i.z, align 8
  %.sroa.2.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.2.0.copyload.us = load ptr, ptr %.sroa.2.0..sroa_idx.us, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i64 %.sroa.0.0.copyload.us, ptr %8, align 8
  store ptr %.sroa.2.0.copyload.us, ptr %i.y, align 8
  %i.aa = load ptr, ptr %6, align 8, !tbaa !82
  %i.ab = call noundef i32 %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %8), !inline_history !19
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.03038.us
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !29
  %i.ad = add nuw i64 %.03038.us, 1               ; 2 uses
  %exitcond47.not = icmp eq i64 %i.ad, %2
  br i1 %exitcond47.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us, !llvm.loop !2068

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %.lr.ph, %bb.i
  %.037 = phi i64 [ %i.bc, %bb.i ], [ 0, %.lr.ph ] ; 5 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.037
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !29
  %i.ag = zext i32 %i.af to i64                   ; 3 uses
  %i.ah = lshr i64 %i.ag, 6
  %i.ai = and i64 %i.ag, 63
  %i.aj = load ptr, ptr %4, align 8, !tbaa !136
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ah
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !75
  %i.am = shl nuw i64 1, %i.ai
  %i.an = and i64 %i.al, %i.am
  %.not = icmp eq i64 %i.an, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ag ; 2 uses
  %.sroa.06.0.copyload = load i64, ptr %i.ao, align 8
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.27.0.copyload = load ptr, ptr %.sroa.27.0..sroa_idx, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i64 %.sroa.06.0.copyload, ptr %9, align 8
  store ptr %.sroa.27.0.copyload, ptr %i.c, align 8
  %i.ap = load ptr, ptr %6, align 8, !tbaa !82
  %i.aq = call noundef i32 %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %9), !inline_history !19
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.037
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !29
  br label %bb.i

bb.g:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.as = load ptr, ptr %5, align 8, !tbaa !136   ; 2 uses
  %.not.i32 = icmp eq ptr %i.as, null
  br i1 %.not.i32, label %bb.h, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.h:                                             ; preds = %bb.g
  %i.at = load i64, ptr %i.d, align 8, !tbaa !150
  call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.at)
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !136
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.g, %bb.h
  %i.au = phi ptr [ %.pre.i, %bb.h ], [ %i.as, %bb.g ]
  %i.av = lshr i64 %.037, 6
  %i.aw = and i64 %.037, 63
  %i.ax = shl nuw i64 1, %i.aw
  %i.ay = xor i64 %i.ax, -1
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.av ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !75
  %i.bb = and i64 %i.ba, %i.ay
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !75
  br label %bb.i

bb.i:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit, %bb.f
  %i.bc = add nuw i64 %.037, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bc, %2
  br i1 %exitcond.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !2067

_ZNK6duckdb15SelectionVector9get_indexEm.exit34:  ; preds = %.lr.ph39, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34
  %.03038 = phi i64 [ %i.bk, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34 ], [ 0, %.lr.ph39 ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.03038
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !29
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bf ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.bg, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i64 %.sroa.0.0.copyload, ptr %8, align 8
  store ptr %.sroa.2.0.copyload, ptr %i.y, align 8
  %i.bh = load ptr, ptr %6, align 8, !tbaa !82
  %i.bi = call noundef i32 %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %8), !inline_history !19
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.03038
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !29
  %i.bk = add nuw i64 %.03038, 1                  ; 2 uses
  %exitcond46.not = icmp eq i64 %i.bk, %2
  br i1 %exitcond46.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit34, !llvm.loop !2068

.loopexit:                                        ; preds = %bb.i, %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us, %.preheader35, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_122StringCompressFunctionImEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @_ZN6duckdb12_GLOBAL__N_114StringCompressImEET_RKNS_8string_tE, ptr %i.a, align 8, !tbaa !82
  call void @_ZN6duckdb13UnaryExecutor15ExecuteStandardINS_8string_tEmNS_18UnaryLambdaWrapperEPFmRKS2_EEEvRNS_6VectorES9_mPvbNS_14FunctionErrorsE(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.d, ptr noundef nonnull %i.a, i1 noundef zeroext false, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_ZN6duckdb12_GLOBAL__N_114StringCompressImEET_RKNS_8string_tE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.c = load i8, ptr %i.b, align 2, !tbaa !76
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.e = load i8, ptr %i.d, align 1, !tbaa !76
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %1 = load i8, ptr %i.f, align 8, !tbaa !76
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 7
  %3 = load i8, ptr %2, align 1, !tbaa !76
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %5 = load i8, ptr %4, align 2, !tbaa !76
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %7 = load i8, ptr %6, align 1, !tbaa !76
  %i.g = load i8, ptr %i.a, align 4, !tbaa !76
  %i.h = load i32, ptr %0, align 8, !tbaa !76
  %.sroa.11.0.insert.ext.i = zext i8 %i.g to i64
  %.sroa.11.0.insert.shift.i = shl nuw i64 %.sroa.11.0.insert.ext.i, 56
  %.sroa.10.0.insert.ext.i = zext i8 %7 to i64
  %.sroa.10.0.insert.shift.i = shl nuw nsw i64 %.sroa.10.0.insert.ext.i, 48
  %.sroa.9.0.insert.ext.i = zext i8 %5 to i64
  %.sroa.9.0.insert.shift.i = shl nuw nsw i64 %.sroa.9.0.insert.ext.i, 40
  %.sroa.8.0.insert.ext.i = zext i8 %3 to i64
  %.sroa.8.0.insert.shift.i = shl nuw nsw i64 %.sroa.8.0.insert.ext.i, 32
  %.sroa.7.0.insert.ext.i = zext i8 %1 to i64
  %.sroa.7.0.insert.shift.i = shl nuw nsw i64 %.sroa.7.0.insert.ext.i, 24
  %.sroa.6.0.insert.ext.i = zext i8 %i.e to i64
  %.sroa.6.0.insert.shift.i = shl nuw nsw i64 %.sroa.6.0.insert.ext.i, 16
  %.sroa.5.0.insert.ext.i = zext i8 %i.c to i64
  %.sroa.5.0.insert.shift.i = shl nuw nsw i64 %.sroa.5.0.insert.ext.i, 8
  %8 = and i32 %i.h, 255
  %.sroa.0.0.insert.ext.i = zext nneg i32 %8 to i64
  %.sroa.10.0.insert.insert.i = or disjoint i64 %.sroa.6.0.insert.shift.i, %.sroa.5.0.insert.shift.i
  %.sroa.9.0.insert.insert.i = or disjoint i64 %.sroa.10.0.insert.insert.i, %.sroa.7.0.insert.shift.i
  %.sroa.8.0.insert.insert.i = or disjoint i64 %.sroa.9.0.insert.insert.i, %.sroa.8.0.insert.shift.i
  %.sroa.7.0.insert.insert.i = or disjoint i64 %.sroa.8.0.insert.insert.i, %.sroa.9.0.insert.shift.i
  %.sroa.5.0.insert.mask.i = or i64 %.sroa.7.0.insert.insert.i, %.sroa.10.0.insert.shift.i
  %.sroa.0.0.insert.mask.i = or i64 %.sroa.5.0.insert.mask.i, %.sroa.11.0.insert.shift.i
  %.sroa.0.0.insert.insert.i = or i64 %.sroa.0.0.insert.mask.i, %.sroa.0.0.insert.ext.i
  ret i64 %.sroa.0.0.insert.insert.i
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13UnaryExecutor15ExecuteStandardINS_8string_tEmNS_18UnaryLambdaWrapperEPFmRKS2_EEEvRNS_6VectorES9_mPvbNS_14FunctionErrorsE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef %3, i1 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %7 = alloca %"class.duckdb::optional_idx", align 8 ; 8 uses
  %8 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !135
  switch i8 %i.a, label %bb.j [
    i8 2, label %bb.b
    i8 0, label %bb.d
    i8 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %1, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !118
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !118  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !136  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit: ; preds = %bb.b
  %i.h = load i64, ptr %i.g, align 8, !tbaa !75
  %i.i = trunc i64 %i.h to i1
  br i1 %i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %1, i1 noundef zeroext true)
  br label %bb.ag

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread: ; preds = %bb.b, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %1, i1 noundef zeroext false)
  %.sroa.0.0.copyload = load i64, ptr %i.e, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 %.sroa.0.0.copyload, ptr %6, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.sroa.2.0.copyload, ptr %i.j, align 8
  %i.k = load ptr, ptr %3, align 8, !tbaa !82
  %i.l = call noundef i64 %i.k(ptr noundef nonnull align 8 dereferenceable(16) %6), !inline_history !20
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store i64 %i.l, ptr %i.c, align 8, !tbaa !75
  br label %bb.ag

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %1, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !118
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !118
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @_ZN6duckdb13UnaryExecutor11ExecuteFlatINS_8string_tEmNS_18UnaryLambdaWrapperEPFmRKS2_EEEvPKT_PT0_mRNS_12ValidityMaskESE_Pvb(ptr noundef %i.p, ptr noundef %i.n, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef %3, i1 noundef zeroext %4)
  br label %bb.ag

bb.e:                                             ; preds = %bb.a
  %i.s = icmp eq i8 %5, 0
  br i1 %i.s, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  tail call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.u = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t)
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 152
  %i.w = load i64, ptr %i.v, align 8, !tbaa !138  ; 2 uses
  %.not.i = icmp eq i64 %i.w, -1
  br i1 %.not.i, label %_ZN6duckdb16DictionaryVector14DictionarySizeERKNS_6VectorE.exit, label %_ZN6duckdb16DictionaryVector14DictionarySizeERKNS_6VectorE.exit.thread

_ZN6duckdb16DictionaryVector14DictionarySizeERKNS_6VectorE.exit.thread: ; preds = %bb.f
  store i64 %i.w, ptr %7, align 8
  br label %bb.g

_ZN6duckdb16DictionaryVector14DictionarySizeERKNS_6VectorE.exit: ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.y = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x)
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.z, align 8, !tbaa !75 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %7, align 8
  %.not65 = icmp eq i64 %.sroa.0.0.copyload.i.i, -1
  br i1 %.not65, label %.thread63, label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb16DictionaryVector14DictionarySizeERKNS_6VectorE.exit.thread, %_ZN6duckdb16DictionaryVector14DictionarySizeERKNS_6VectorE.exit
  %i.aa = call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
  %i.ab = shl i64 %i.aa, 1
  %.not = icmp ugt i64 %i.ab, %2
  br i1 %.not, label %.thread63, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.ac = call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 48 ; 3 uses
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !135
  %.not57 = icmp eq i8 %i.ae, 0
  br i1 %.not57, label %bb.i, label %.thread63

.thread63:                                        ; preds = %bb.h, %bb.g, %_ZN6duckdb16DictionaryVector14DictionarySizeERKNS_6VectorE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !118
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.ad)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !118
  %i.aj = call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
  call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.ad)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @_ZN6duckdb13UnaryExecutor11ExecuteFlatINS_8string_tEmNS_18UnaryLambdaWrapperEPFmRKS2_EEEvPKT_PT0_mRNS_12ValidityMaskESE_Pvb(ptr noundef %i.ai, ptr noundef %i.ag, i64 noundef %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef %3, i1 noundef zeroext %4)
  call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.an = call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.am)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.ap = call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
  call void @_ZN6duckdb6Vector10DictionaryERS0_mRKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.ag

bb.j:                                             ; preds = %.thread63, %bb.e, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %8)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(73) %8)
          to label %bb.k unwind label %bb.ac

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %1, i8 noundef zeroext 0)
          to label %bb.l unwind label %bb.ac

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.m unwind label %bb.ad

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !118
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_8string_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %8)
          to label %bb.n unwind label %bb.ae

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !147
  %i.au = load ptr, ptr %8, align 8, !tbaa !148
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.o unwind label %bb.ae

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 16
  invoke void @_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_8string_tEmNS_18UnaryLambdaWrapperEPFmRKS2_EEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESH_Pvb(ptr noundef %i.at, ptr noundef %i.ar, i64 noundef %2, ptr noundef %i.au, ptr noundef nonnull align 8 dereferenceable(32) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %i.av, ptr noundef %3, i1 noundef zeroext %4)
          to label %bb.p unwind label %bb.ae

bb.p:                                             ; preds = %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !91 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 4 uses
  %i.ba = load atomic i64, ptr %i.az acquire, align 8 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 4294967297
  %i.bc = trunc i64 %i.ba to i32                  ; 2 uses
  br i1 %i.bb, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.az, align 8, !tbaa !93
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  store i32 0, ptr %i.bd, align 4, !tbaa !94
  %i.be = load ptr, ptr %i.ay, align 8, !tbaa !85
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #21, !inline_history !16
  %i.bh = load ptr, ptr %i.ay, align 8, !tbaa !85
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #21, !inline_history !16
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.s:                                             ; preds = %bb.q
  %i.bk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !76
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bk, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.u, label %bb.t

end_hunk_0
begin_hunk_1_@_ZN6duckdb12_GLOBAL__N_126StringDecompressLocalStateD2Ev:bb.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_126StringDecompressLocalStateD0Ev(ptr noundef nonnull align 8 dereferenceable(80) initializes((0, 8)) %0) unnamed_addr #4 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb12_GLOBAL__N_126StringDecompressLocalStateE, i64 16), ptr %0, align 8, !tbaa !85
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6duckdb14ArenaAllocatorD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.a) #21, !inline_history !2226
  tail call void @_ZN6duckdb18FunctionLocalStateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(80) %0) #21, !inline_history !2226
  tail call void @_ZdlPv(ptr noundef nonnull %0) #25
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6duckdb14ArenaAllocatorD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35
  %i.e = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !75
  store i64 %i.i, ptr %i.b, align 8, !tbaa !75
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EE3getILb1EEERS1_m.exit, label %bb.b, !prof !155

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !53     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #21
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EE3getILb1EEERS1_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb12Deserializer3GetIRKNS_11LogicalTypeEEET_v(ptr noundef nonnull align 8 dereferenceable(632) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !2233 ; 3 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !2233
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.b, label %_ZN6duckdb17SerializationData14AssertNotEmptyISt17reference_wrapperIKNS_11LogicalTypeEEEEvRKSt5stackIT_St5dequeIS7_SaIS7_EEE.exit.i

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !53     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.i) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn9.i.i = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #21
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn9.i.i, %bb.f ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn8.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb17SerializationData14AssertNotEmptyISt17reference_wrapperIKNS_11LogicalTypeEEEEvRKSt5stackIT_St5dequeIS7_SaIS7_EEE.exit.i: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !2234, !noalias !2235
  %i.n = icmp eq ptr %i.c, %i.m
  br i1 %i.n, label %bb.i, label %_ZN6duckdb17SerializationData3GetIRKNS_11LogicalTypeEEET_v.exit

bb.i:                                             ; preds = %_ZN6duckdb17SerializationData14AssertNotEmptyISt17reference_wrapperIKNS_11LogicalTypeEEEEvRKSt5stackIT_St5dequeIS7_SaIS7_EEE.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !2236, !noalias !2235
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !2237
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 512
  br label %_ZN6duckdb17SerializationData3GetIRKNS_11LogicalTypeEEET_v.exit

_ZN6duckdb17SerializationData3GetIRKNS_11LogicalTypeEEET_v.exit: ; preds = %_ZN6duckdb17SerializationData14AssertNotEmptyISt17reference_wrapperIKNS_11LogicalTypeEEEEvRKSt5stackIT_St5dequeIS7_SaIS7_EEE.exit.i, %bb.i
  %i.t = phi ptr [ %i.s, %bb.i ], [ %i.c, %_ZN6duckdb17SerializationData14AssertNotEmptyISt17reference_wrapperIKNS_11LogicalTypeEEEEvRKSt5stackIT_St5dequeIS7_SaIS7_EEE.exit.i ]
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !2239
  ret ptr %i.v
}

declare void @_ZN6duckdb7CMUtils11StringTypesEv(ptr dead_on_unwind writable sret(%"class.duckdb::vector") align 8) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.usub.sat.i8(i8, i8) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i8> @llvm.usub.sat.v2i8(<2 x i8>, <2 x i8>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.bswap.v2i32(<2 x i32>) #19

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nounwind }
attributes #22 = { builtin allocsize(0) }
attributes #23 = { noreturn }
attributes #24 = { noreturn nounwind }
attributes #25 = { builtin nounwind }

!llvm.module.flags = !{!23, !24}
!llvm.ident = !{!25}
!llvm.errno.tbaa = !{!29}

!0 = distinct !{!0, !48}
!1 = distinct !{!1, !48}
!2 = distinct !{null}
!3 = distinct !{null, null}
!4 = distinct !{null, null, null}
!5 = distinct !{null}
!6 = distinct !{null, null}
!7 = distinct !{null}
!8 = distinct !{null}
!9 = distinct !{null, null}
!10 = distinct !{ptr @_ZN6duckdb14ScalarFunctionD2Ev, null, null, null, null}
!11 = distinct !{null, null, null, null, null, null}
!12 = distinct !{null, null, null, null, null}
!13 = distinct !{!13, !48}
!14 = distinct !{null, null, null}
!15 = distinct !{null}
!16 = distinct !{ptr @_ZN6duckdb19UnifiedVectorFormatD2Ev, null, null, null, null, null}
!17 = distinct !{ptr @_ZN6duckdb19UnifiedVectorFormatD2Ev, null, null, null, null, null}
!18 = distinct !{null}
!19 = distinct !{null}
!20 = distinct !{null}
!21 = distinct !{null}
!22 = distinct !{null}
!23 = !{i32 8, !"PIC Level", i32 2}
!24 = !{i32 7, !"uwtable", i32 2}
!25 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!26 = !{!"Simple C++ TBAA"}
!27 = !{!"omnipotent char", !26, i64 0}
!28 = !{!"int", !27, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!"any pointer", !27, i64 0}
!31 = !{!"p1 _ZTSN6duckdb11LogicalTypeE", !30, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!33 = !{!32, !31, i64 0}
!34 = !{!32, !31, i64 16}
!35 = !{!32, !31, i64 8}
!36 = !{!"_ZTSN6duckdb13LogicalTypeIdE", !27, i64 0}
!37 = !{!"_ZTSN6duckdb12PhysicalTypeE", !27, i64 0}
!38 = !{!"p1 _ZTSN6duckdb13ExtraTypeInfoE", !30, i64 0}
!39 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !30, i64 0}
!40 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !39, i64 0}
!41 = !{!"_ZTSSt12__shared_ptrIN6duckdb13ExtraTypeInfoELN9__gnu_cxx12_Lock_policyE2EE", !38, i64 0, !40, i64 8}
!42 = !{!"_ZTSSt10shared_ptrIN6duckdb13ExtraTypeInfoEE", !41, i64 0}
!43 = !{!"_ZTSN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEE", !42, i64 0}
!44 = !{!"_ZTSN6duckdb11LogicalTypeE", !36, i64 0, !37, i64 1, !43, i64 8}
!45 = !{!44, !36, i64 0}
!46 = !{!"_ZTSSt14_Function_base", !27, i64 0, !30, i64 16}
!47 = !{!46, !30, i64 16}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"p1 omnipotent char", !30, i64 0}
!50 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !49, i64 0}
!51 = !{!"long", !27, i64 0}
!52 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !50, i64 0, !51, i64 8, !27, i64 16}
!53 = !{!52, !49, i64 0}
!54 = !{!"_ZTSN6duckdb8FunctionE", !52, i64 8, !52, i64 40, !52, i64 72, !52, i64 104}
!55 = !{!"_ZTSNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE12_Vector_implE", !32, i64 0}
!56 = !{!"_ZTSSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE", !55, i64 0}
!57 = !{!"_ZTSSt6vectorIN6duckdb11LogicalTypeESaIS1_EE", !56, i64 0}
!58 = !{!"_ZTSN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEE", !57, i64 0}
!59 = !{!"_ZTSN6duckdb14SimpleFunctionE", !54, i64 0, !58, i64 136, !58, i64 160, !44, i64 184}
!60 = !{!"_ZTSN6duckdb17FunctionStabilityE", !27, i64 0}
!61 = !{!"_ZTSN6duckdb20FunctionNullHandlingE", !27, i64 0}
!62 = !{!"_ZTSN6duckdb14FunctionErrorsE", !27, i64 0}
!63 = !{!"_ZTSN6duckdb25FunctionCollationHandlingE", !27, i64 0}
!64 = !{!"_ZTSN6duckdb18BaseScalarFunctionE", !59, i64 0, !44, i64 208, !60, i64 232, !61, i64 233, !62, i64 234, !63, i64 235}
!65 = !{!"_ZTSSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEE", !46, i64 0, !30, i64 24}
!66 = !{!"p1 _ZTSN6duckdb18ScalarFunctionInfoE", !30, i64 0}
!67 = !{!"_ZTSSt12__shared_ptrIN6duckdb18ScalarFunctionInfoELN9__gnu_cxx12_Lock_policyE2EE", !66, i64 0, !40, i64 8}
!68 = !{!"_ZTSSt10shared_ptrIN6duckdb18ScalarFunctionInfoEE", !67, i64 0}
!69 = !{!"_ZTSN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EEE", !68, i64 0}
!70 = !{!"_ZTSN6duckdb14ScalarFunctionE", !64, i64 0, !65, i64 240, !30, i64 272, !30, i64 280, !30, i64 288, !30, i64 296, !30, i64 304, !30, i64 312, !30, i64 320, !30, i64 328, !30, i64 336, !69, i64 344}
!71 = !{!70, !30, i64 328}
!72 = !{!70, !30, i64 336}
!73 = !{!64, !62, i64 234}
!74 = !{!50, !49, i64 0}
!75 = !{!51, !51, i64 0}
!76 = !{!27, !27, i64 0}
!77 = !{!52, !51, i64 8}
!78 = !{!"p1 _ZTSN6duckdb20ExceptionFormatValueE", !30, i64 0}
!79 = !{!"_ZTSNSt12_Vector_baseIN6duckdb20ExceptionFormatValueESaIS1_EE17_Vector_impl_dataE", !78, i64 0, !78, i64 8, !78, i64 16}
!80 = !{!79, !78, i64 0}
!81 = !{!79, !78, i64 8}
!82 = !{!30, !30, i64 0}
!83 = !{!65, !30, i64 24}
!84 = !{!"vtable pointer", !26, i64 0}
!85 = !{!84, !84, i64 0}
!86 = !{!31, !31, i64 0}
!87 = !{i64 0, i64 16, !76}
!88 = !{!"p1 _ZTSN6duckdb12FunctionDataE", !30, i64 0}
!89 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb12FunctionDataELb0EE", !88, i64 0}
!90 = !{!89, !88, i64 0}
!91 = !{!40, !39, i64 0}
!92 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !28, i64 8, !28, i64 12}
!93 = !{!92, !28, i64 8}
!94 = !{!92, !28, i64 12}
!95 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!96 = !{!44, !37, i64 1}
!97 = !{!"p1 _ZTSN6duckdb14ScalarFunctionE", !30, i64 0}
!98 = !{!"_ZTSNSt12_Vector_baseIN6duckdb14ScalarFunctionESaIS1_EE17_Vector_impl_dataE", !97, i64 0, !97, i64 8, !97, i64 16}
!99 = !{!98, !97, i64 8}
!100 = !{!98, !97, i64 16}
!101 = !{!67, !66, i64 0}
!102 = !{ptr @_ZN6duckdb14ScalarFunctionD2Ev}
!103 = !{!"p1 _ZTSN6duckdb18FunctionLocalStateE", !30, i64 0}
!104 = !{!79, !78, i64 16}
!105 = !{!"_ZTSN6duckdb10VectorTypeE", !27, i64 0}
!106 = !{!"p1 long", !30, i64 0}
!107 = !{!"p1 _ZTSN6duckdb21TemplatedValidityDataImEE", !30, i64 0}
!108 = !{!"_ZTSSt12__shared_ptrIN6duckdb21TemplatedValidityDataImEELN9__gnu_cxx12_Lock_policyE2EE", !107, i64 0, !40, i64 8}
!109 = !{!"_ZTSSt10shared_ptrIN6duckdb21TemplatedValidityDataImEEE", !108, i64 0}
!110 = !{!"_ZTSN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEE", !109, i64 0}
!111 = !{!"_ZTSN6duckdb21TemplatedValidityMaskImEE", !106, i64 0, !110, i64 8, !51, i64 24}
!112 = !{!"_ZTSN6duckdb12ValidityMaskE", !111, i64 0}
!113 = !{!"p1 _ZTSN6duckdb12VectorBufferE", !30, i64 0}
!114 = !{!"_ZTSSt12__shared_ptrIN6duckdb12VectorBufferELN9__gnu_cxx12_Lock_policyE2EE", !113, i64 0, !40, i64 8}
!115 = !{!"_ZTSSt10shared_ptrIN6duckdb12VectorBufferEE", !114, i64 0}
!116 = !{!"_ZTSN6duckdb10shared_ptrINS_12VectorBufferELb1EEE", !115, i64 0}
!117 = !{!"_ZTSN6duckdb6VectorE", !105, i64 0, !44, i64 8, !49, i64 32, !112, i64 40, !116, i64 72, !116, i64 88}
!118 = !{!117, !49, i64 32}
!119 = !{!"short", !27, i64 0}
!120 = !{!119, !119, i64 0}
!121 = !{!"p1 _ZTSN6duckdb6VectorE", !30, i64 0}
!122 = !{!"_ZTSNSt12_Vector_baseIN6duckdb6VectorESaIS1_EE17_Vector_impl_dataE", !121, i64 0, !121, i64 8, !121, i64 16}
!123 = !{!"_ZTSNSt12_Vector_baseIN6duckdb6VectorESaIS1_EE12_Vector_implE", !122, i64 0}
!124 = !{!"_ZTSSt12_Vector_baseIN6duckdb6VectorESaIS1_EE", !123, i64 0}
!125 = !{!"_ZTSSt6vectorIN6duckdb6VectorESaIS1_EE", !124, i64 0}
!126 = !{!"_ZTSN6duckdb6vectorINS_6VectorELb1ESaIS1_EEE", !125, i64 0}
!127 = !{!"p1 _ZTSN6duckdb11VectorCacheE", !30, i64 0}
!128 = !{!"_ZTSNSt12_Vector_baseIN6duckdb11VectorCacheESaIS1_EE17_Vector_impl_dataE", !127, i64 0, !127, i64 8, !127, i64 16}
!129 = !{!"_ZTSNSt12_Vector_baseIN6duckdb11VectorCacheESaIS1_EE12_Vector_implE", !128, i64 0}
!130 = !{!"_ZTSSt12_Vector_baseIN6duckdb11VectorCacheESaIS1_EE", !129, i64 0}
!131 = !{!"_ZTSSt6vectorIN6duckdb11VectorCacheESaIS1_EE", !130, i64 0}
!132 = !{!"_ZTSN6duckdb6vectorINS_11VectorCacheELb1ESaIS1_EEE", !131, i64 0}
!133 = !{!"_ZTSN6duckdb9DataChunkE", !126, i64 0, !51, i64 24, !51, i64 32, !51, i64 40, !132, i64 48}
!134 = !{!133, !51, i64 24}
!135 = !{!117, !105, i64 0}
!136 = !{!111, !106, i64 0}
!137 = !{!"_ZTSN6duckdb12optional_idxE", !51, i64 0}
!138 = !{!137, !51, i64 0}
!139 = !{!"p1 _ZTSN6duckdb15SelectionVectorE", !30, i64 0}
!140 = !{!"p1 int", !30, i64 0}
!141 = !{!"p1 _ZTSN6duckdb13SelectionDataE", !30, i64 0}
!142 = !{!"_ZTSSt12__shared_ptrIN6duckdb13SelectionDataELN9__gnu_cxx12_Lock_policyE2EE", !141, i64 0, !40, i64 8}
!143 = !{!"_ZTSSt10shared_ptrIN6duckdb13SelectionDataEE", !142, i64 0}
!144 = !{!"_ZTSN6duckdb10shared_ptrINS_13SelectionDataELb1EEE", !143, i64 0}
!145 = !{!"_ZTSN6duckdb15SelectionVectorE", !140, i64 0, !144, i64 8}
!146 = !{!"_ZTSN6duckdb19UnifiedVectorFormatE", !139, i64 0, !49, i64 8, !112, i64 16, !145, i64 48, !37, i64 72}
!147 = !{!146, !49, i64 8}
!148 = !{!146, !139, i64 0}
!149 = !{!145, !140, i64 0}
!150 = !{!111, !51, i64 24}
!151 = !{!"llvm.loop.isvectorized", i32 1}
!152 = !{!"llvm.loop.unroll.runtime.disable"}
!153 = !{!"branch_weights", i32 4, i32 12}
!154 = !{!"llvm.loop.unroll.disable"}
!155 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!156 = !{!37, !37, i64 0}
!157 = !{!"p1 short", !30, i64 0}
!158 = !{!106, !106, i64 0}
!159 = !{!"_ZTSSt10_Head_baseILm0EPmLb0EE", !106, i64 0}
!160 = !{!159, !106, i64 0}
!161 = !{!108, !107, i64 0}
end_hunk_1
