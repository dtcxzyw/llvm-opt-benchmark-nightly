inline.NumInlined: 5151
inline.NumDeleted: 1155
begin_hunk_0_@_ZN6duckdb13UnaryExecutor11ExecuteFlatINS_8string_tEmNS_18UnaryLambdaWrapperEPFmRKS2_EEEvPKT_PT0_mRNS_12ValidityMaskESE_Pvb:bb.a

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_8string_tEmNS_18UnaryLambdaWrapperEPFmRKS2_EEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESH_Pvb(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noalias noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %6, i1 noundef zeroext %7) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %8 = alloca %"struct.duckdb::string_t", align 8 ; 9 uses
  %9 = alloca %"struct.duckdb::string_t", align 8 ; 9 uses
  %i.a = load ptr, ptr %4, align 8, !tbaa !238
  %.not.i = icmp eq ptr %i.a, null
  %.not41 = icmp eq i64 %2, 0                     ; 2 uses
  br i1 %.not.i, label %.preheader, label %.preheader35

.preheader35:                                     ; preds = %bb.a
  br i1 %.not41, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader35
  %i.b = load ptr, ptr %3, align 8, !tbaa !259    ; 2 uses
  %.not.i31 = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  br i1 %.not.i31, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %.lr.ph, %bb.e
  %.037.us = phi i64 [ %i.w, %bb.e ], [ 0, %.lr.ph ] ; 5 uses
  %i.e = lshr i64 %.037.us, 6                     ; 2 uses
  %i.f = and i64 %.037.us, 63
  %i.g = load ptr, ptr %4, align 8, !tbaa !238
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.e
  %i.i = load i64, ptr %i.h, align 8, !tbaa !53
  %i.j = shl nuw i64 1, %i.f                      ; 2 uses
  %i.k = and i64 %i.i, %i.j
  %.not.us = icmp eq i64 %i.k, 0
  br i1 %.not.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.037.us ; 2 uses
  %.sroa.06.0.copyload.us = load i64, ptr %i.l, align 8
  %.sroa.27.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.27.0.copyload.us = load ptr, ptr %.sroa.27.0..sroa_idx.us, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i64 %.sroa.06.0.copyload.us, ptr %9, align 8
  store ptr %.sroa.27.0.copyload.us, ptr %i.c, align 8
  %i.m = load ptr, ptr %6, align 8, !tbaa !90
  %i.n = call noundef i64 %i.m(ptr noundef nonnull align 8 dereferenceable(16) %9), !inline_history !2046
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.037.us
  store i64 %i.n, ptr %i.o, align 8, !tbaa !53
  br label %bb.e

bb.c:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.p = load ptr, ptr %5, align 8, !tbaa !238    ; 2 uses
  %.not.i32.us = icmp eq ptr %i.p, null
  br i1 %.not.i32.us, label %bb.d, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.d, align 8, !tbaa !263
  call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.q)
  %.pre.i.us = load ptr, ptr %5, align 8, !tbaa !238
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us: ; preds = %bb.d, %bb.c
  %i.r = phi ptr [ %.pre.i.us, %bb.d ], [ %i.p, %bb.c ]
  %i.s = xor i64 %i.j, -1
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.e ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !53
  %i.v = and i64 %i.u, %i.s
  store i64 %i.v, ptr %i.t, align 8, !tbaa !53
  br label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us, %bb.b
  %i.w = add nuw i64 %.037.us, 1                  ; 2 uses
  %exitcond45.not = icmp eq i64 %i.w, %2
  br i1 %exitcond45.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !2051

.preheader:                                       ; preds = %bb.a
  br i1 %.not41, label %.loopexit, label %.lr.ph39

.lr.ph39:                                         ; preds = %.preheader
  %i.x = load ptr, ptr %3, align 8, !tbaa !259    ; 2 uses
  %.not.i33 = icmp eq ptr %i.x, null
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  br i1 %.not.i33, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit34

_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us: ; preds = %.lr.ph39, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us
  %.03038.us = phi i64 [ %i.ad, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us ], [ 0, %.lr.ph39 ] ; 3 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.03038.us ; 2 uses
  %.sroa.0.0.copyload.us = load i64, ptr %i.z, align 8
  %.sroa.2.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.2.0.copyload.us = load ptr, ptr %.sroa.2.0..sroa_idx.us, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i64 %.sroa.0.0.copyload.us, ptr %8, align 8
  store ptr %.sroa.2.0.copyload.us, ptr %i.y, align 8
  %i.aa = load ptr, ptr %6, align 8, !tbaa !90
  %i.ab = call noundef i64 %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %8), !inline_history !2046
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.03038.us
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !53
  %i.ad = add nuw i64 %.03038.us, 1               ; 2 uses
  %exitcond47.not = icmp eq i64 %i.ad, %2
  br i1 %exitcond47.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us, !llvm.loop !2052

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %.lr.ph, %bb.i
  %.037 = phi i64 [ %i.bc, %bb.i ], [ 0, %.lr.ph ] ; 5 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.037
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ag = zext i32 %i.af to i64                   ; 3 uses
  %i.ah = lshr i64 %i.ag, 6
  %i.ai = and i64 %i.ag, 63
  %i.aj = load ptr, ptr %4, align 8, !tbaa !238
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ah
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !53
  %i.am = shl nuw i64 1, %i.ai
  %i.an = and i64 %i.al, %i.am
  %.not = icmp eq i64 %i.an, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ag ; 2 uses
  %.sroa.06.0.copyload = load i64, ptr %i.ao, align 8
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.27.0.copyload = load ptr, ptr %.sroa.27.0..sroa_idx, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i64 %.sroa.06.0.copyload, ptr %9, align 8
  store ptr %.sroa.27.0.copyload, ptr %i.c, align 8
  %i.ap = load ptr, ptr %6, align 8, !tbaa !90
  %i.aq = call noundef i64 %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %9), !inline_history !2046
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.037
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !53
  br label %bb.i

bb.g:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.as = load ptr, ptr %5, align 8, !tbaa !238   ; 2 uses
  %.not.i32 = icmp eq ptr %i.as, null
  br i1 %.not.i32, label %bb.h, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.h:                                             ; preds = %bb.g
  %i.at = load i64, ptr %i.d, align 8, !tbaa !263
  call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.at)
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !238
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.g, %bb.h
  %i.au = phi ptr [ %.pre.i, %bb.h ], [ %i.as, %bb.g ]
  %i.av = lshr i64 %.037, 6
  %i.aw = and i64 %.037, 63
  %i.ax = shl nuw i64 1, %i.aw
  %i.ay = xor i64 %i.ax, -1
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.av ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !53
  %i.bb = and i64 %i.ba, %i.ay
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !53
  br label %bb.i

bb.i:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit, %bb.f
  %i.bc = add nuw i64 %.037, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bc, %2
  br i1 %exitcond.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !2051

_ZNK6duckdb15SelectionVector9get_indexEm.exit34:  ; preds = %.lr.ph39, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34
  %.03038 = phi i64 [ %i.bk, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34 ], [ 0, %.lr.ph39 ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.03038
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !3
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bf ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.bg, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i64 %.sroa.0.0.copyload, ptr %8, align 8
  store ptr %.sroa.2.0.copyload, ptr %i.y, align 8
  %i.bh = load ptr, ptr %6, align 8, !tbaa !90
  %i.bi = call noundef i64 %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %8), !inline_history !2046
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.03038
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !53
  %i.bk = add nuw i64 %.03038, 1                  ; 2 uses
  %exitcond46.not = icmp eq i64 %i.bk, %2
  br i1 %exitcond46.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit34, !llvm.loop !2052

.loopexit:                                        ; preds = %bb.i, %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us, %.preheader35, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_122StringCompressFunctionINS_10uhugeint_tEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !223
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @_ZN6duckdb12_GLOBAL__N_114StringCompressINS_10uhugeint_tEEET_RKNS_8string_tE, ptr %i.a, align 8, !tbaa !90
  call void @_ZN6duckdb13UnaryExecutor15ExecuteStandardINS_8string_tENS_10uhugeint_tENS_18UnaryLambdaWrapperEPFS3_RKS2_EEEvRNS_6VectorESA_mPvbNS_14FunctionErrorsE(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.d, ptr noundef nonnull %i.a, i1 noundef zeroext false, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal { i64, i64 } @_ZN6duckdb12_GLOBAL__N_114StringCompressINS_10uhugeint_tEEET_RKNS_8string_tE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #17 {
bb.a:
  %1 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.a = load i32, ptr %0, align 8, !tbaa !54     ; 4 uses
  %i.b = icmp ult i32 %i.a, 13
  br i1 %i.b, label %bb.b, label %iter.check

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = load <8 x i8>, ptr %2, align 8, !tbaa !54
  %4 = shufflevector <8 x i8> %3, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %4, ptr %i.c, align 4, !tbaa !54
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %6 = load <4 x i8>, ptr %i.d, align 4, !tbaa !54
  %7 = shufflevector <4 x i8> %6, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %7, ptr %5, align 4, !tbaa !54
  store i32 0, ptr %1, align 8
  br label %_ZN6duckdb12_GLOBAL__N_122StringCompressInternalINS_10uhugeint_tEEET_RKNS_8string_tE.exit

iter.check:                                       ; preds = %bb.a
  %i.e = tail call i32 @llvm.umin.i32(i32 %i.a, i32 16)
  %i.f = zext nneg i32 %i.e to i64                ; 8 uses
  %i.g = sub nuw nsw i64 16, %i.f                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %i.g ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !54
  %i.k = getelementptr i8, ptr %i.j, i64 %i.f     ; 3 uses
  %min.iters.check = icmp ult i32 %i.a, 16
  br i1 %min.iters.check, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %iter.check
  %n.vec = and i64 %i.f, 16                       ; 3 uses
  %i.l = getelementptr i8, ptr %i.k, i64 -16
  %wide.load = load <16 x i8>, ptr %i.l, align 1, !tbaa !54
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse, ptr %i.h, align 1, !tbaa !54
  %cmp.n = icmp eq i64 %n.vec, %i.f
  br i1 %cmp.n, label %_ZN6duckdb12_GLOBAL__N_113ReverseMemCpyERKPhRKPKhRKm.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %vector.ph
  %n.mod.vf = and i64 %i.f, 12
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !268

vec.epilog.ph:                                    ; preds = %iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  %n.vec2 = and i64 %i.f, 28                      ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next, %vec.epilog.vector.body ] ; 3 uses
  %i.m = xor i64 %index, -1
  %i.n = getelementptr i8, ptr %i.k, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -3
  %wide.load3 = load <4 x i8>, ptr %i.o, align 1, !tbaa !54
  %reverse4 = shufflevector <4 x i8> %wide.load3, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 %index
  store <4 x i8> %reverse4, ptr %i.p, align 1, !tbaa !54
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec2
  br i1 %i.q, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2053

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n5 = icmp eq i64 %n.vec2, %i.f
  br i1 %cmp.n5, label %_ZN6duckdb12_GLOBAL__N_113ReverseMemCpyERKPhRKPKhRKm.exit.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vec.epilog.iter.check, %vec.epilog.middle.block
  %.05.i.i.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ %n.vec2, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.05.i.i = phi i64 [ %i.v, %vec.epilog.scalar.ph ], [ %.05.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.r = xor i64 %.05.i.i, -1
  %i.s = getelementptr i8, ptr %i.k, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !54
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 %.05.i.i
  store i8 %i.t, ptr %i.u, align 1, !tbaa !54
  %i.v = add nuw nsw i64 %.05.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.v, %i.f
  br i1 %exitcond.not.i.i, label %_ZN6duckdb12_GLOBAL__N_113ReverseMemCpyERKPhRKPKhRKm.exit.i, label %vec.epilog.scalar.ph, !llvm.loop !2054

_ZN6duckdb12_GLOBAL__N_113ReverseMemCpyERKPhRKPKhRKm.exit.i: ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %vector.ph
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %1, i8 0, i64 %i.g, i1 false)
  br label %_ZN6duckdb12_GLOBAL__N_122StringCompressInternalINS_10uhugeint_tEEET_RKNS_8string_tE.exit

_ZN6duckdb12_GLOBAL__N_122StringCompressInternalINS_10uhugeint_tEEET_RKNS_8string_tE.exit: ; preds = %bb.b, %_ZN6duckdb12_GLOBAL__N_113ReverseMemCpyERKPhRKPKhRKm.exit.i
  %i.w = trunc i32 %i.a to i8
  store i8 %i.w, ptr %1, align 8, !tbaa !54
  %.val15.i = load i64, ptr %1, align 8, !tbaa !53
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val16.i = load i64, ptr %i.x, align 8, !tbaa !53
  %.fca.0.insert.i.i = insertvalue { i64, i64 } poison, i64 %.val15.i, 0
  %.fca.1.insert.i.i = insertvalue { i64, i64 } %.fca.0.insert.i.i, i64 %.val16.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret { i64, i64 } %.fca.1.insert.i.i
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13UnaryExecutor15ExecuteStandardINS_8string_tENS_10uhugeint_tENS_18UnaryLambdaWrapperEPFS3_RKS2_EEEvRNS_6VectorESA_mPvbNS_14FunctionErrorsE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef %3, i1 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %7 = alloca %"class.duckdb::optional_idx", align 8 ; 8 uses
  %8 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !237
  switch i8 %i.a, label %bb.j [
    i8 2, label %bb.b
    i8 0, label %bb.d
    i8 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %1, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10uhugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !207  ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !207  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !238  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit: ; preds = %bb.b
  %i.h = load i64, ptr %i.g, align 8, !tbaa !53
  %i.i = trunc i64 %i.h to i1
  br i1 %i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %1, i1 noundef zeroext true)
  br label %bb.ag

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread: ; preds = %bb.b, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %1, i1 noundef zeroext false)
  %.sroa.0.0.copyload = load i64, ptr %i.e, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 %.sroa.0.0.copyload, ptr %6, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.sroa.2.0.copyload, ptr %i.j, align 8
  %i.k = load ptr, ptr %3, align 8, !tbaa !90
  %i.l = call { i64, i64 } %i.k(ptr noundef nonnull align 8 dereferenceable(16) %6), !inline_history !2055 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.m = extractvalue { i64, i64 } %i.l, 0
  %i.n = extractvalue { i64, i64 } %i.l, 1
  store i64 %i.m, ptr %i.c, align 8, !tbaa !53
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.n, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !53
  br label %bb.ag

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %1, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10uhugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !207
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !207
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @_ZN6duckdb13UnaryExecutor11ExecuteFlatINS_8string_tENS_10uhugeint_tENS_18UnaryLambdaWrapperEPFS3_RKS2_EEEvPKT_PT0_mRNS_12ValidityMaskESF_Pvb(ptr noundef %i.r, ptr noundef %i.p, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef %3, i1 noundef zeroext %4)
  br label %bb.ag

bb.e:                                             ; preds = %bb.a
  %i.u = icmp eq i8 %5, 0
  br i1 %i.u, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  tail call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.w = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 152
  %i.y = load i64, ptr %i.x, align 8, !tbaa !239  ; 2 uses
  %.not.i = icmp eq i64 %i.y, -1
  br i1 %.not.i, label %_ZN6duckdb16DictionaryVector14DictionarySizeERKNS_6VectorE.exit, label %_ZN6duckdb16DictionaryVector14DictionarySizeERKNS_6VectorE.exit.thread

_ZN6duckdb16DictionaryVector14DictionarySizeERKNS_6VectorE.exit.thread: ; preds = %bb.f
  store i64 %i.y, ptr %7, align 8
  br label %bb.g

_ZN6duckdb16DictionaryVector14DictionarySizeERKNS_6VectorE.exit: ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aa = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.z)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ab, align 8, !tbaa !53 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %7, align 8
  %.not66 = icmp eq i64 %.sroa.0.0.copyload.i.i, -1
  br i1 %.not66, label %.thread64, label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb16DictionaryVector14DictionarySizeERKNS_6VectorE.exit.thread, %_ZN6duckdb16DictionaryVector14DictionarySizeERKNS_6VectorE.exit
  %i.ac = call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
  %i.ad = shl i64 %i.ac, 1
  %.not = icmp ugt i64 %i.ad, %2
  br i1 %.not, label %.thread64, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.ae = call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.v) ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48 ; 3 uses
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !237
  %.not58 = icmp eq i8 %i.ag, 0
  br i1 %.not58, label %bb.i, label %.thread64

.thread64:                                        ; preds = %bb.h, %bb.g, %_ZN6duckdb16DictionaryVector14DictionarySizeERKNS_6VectorE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10uhugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !207
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.af)
end_hunk_0
begin_hunk_1_@_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_8string_tENS_10uhugeint_tENS_18UnaryLambdaWrapperEPFS3_RKS2_EEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESI_Pvb:bb.a
  %.not.i34 = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  br i1 %.not.i34, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %.lr.ph, %bb.e
  %.040.us = phi i64 [ %i.y, %bb.e ], [ 0, %.lr.ph ] ; 5 uses
  %i.e = lshr i64 %.040.us, 6                     ; 2 uses
  %i.f = and i64 %.040.us, 63
  %i.g = load ptr, ptr %4, align 8, !tbaa !238
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.e
  %i.i = load i64, ptr %i.h, align 8, !tbaa !53
  %i.j = shl nuw i64 1, %i.f                      ; 2 uses
  %i.k = and i64 %i.i, %i.j
  %.not.us = icmp eq i64 %i.k, 0
  br i1 %.not.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.040.us ; 2 uses
  %.sroa.07.0.copyload.us = load i64, ptr %i.l, align 8
  %.sroa.28.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.28.0.copyload.us = load ptr, ptr %.sroa.28.0..sroa_idx.us, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i64 %.sroa.07.0.copyload.us, ptr %9, align 8
  store ptr %.sroa.28.0.copyload.us, ptr %i.c, align 8
  %i.m = load ptr, ptr %6, align 8, !tbaa !90
  %i.n = call { i64, i64 } %i.m(ptr noundef nonnull align 8 dereferenceable(16) %9), !inline_history !2055 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.o = extractvalue { i64, i64 } %i.n, 0
  %i.p = extractvalue { i64, i64 } %i.n, 1
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.040.us ; 2 uses
  store i64 %i.o, ptr %i.q, align 8, !tbaa !53
  %.sroa.410.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.p, ptr %.sroa.410.0..sroa_idx.us, align 8, !tbaa !53
  br label %bb.e

bb.c:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.r = load ptr, ptr %5, align 8, !tbaa !238    ; 2 uses
  %.not.i35.us = icmp eq ptr %i.r, null
  br i1 %.not.i35.us, label %bb.d, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us

bb.d:                                             ; preds = %bb.c
  %i.s = load i64, ptr %i.d, align 8, !tbaa !263
  call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.s)
  %.pre.i.us = load ptr, ptr %5, align 8, !tbaa !238
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us: ; preds = %bb.d, %bb.c
  %i.t = phi ptr [ %.pre.i.us, %bb.d ], [ %i.r, %bb.c ]
  %i.u = xor i64 %i.j, -1
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.e ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !53
  %i.x = and i64 %i.w, %i.u
  store i64 %i.x, ptr %i.v, align 8, !tbaa !53
  br label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us, %bb.b
  %i.y = add nuw i64 %.040.us, 1                  ; 2 uses
  %exitcond48.not = icmp eq i64 %i.y, %2
  br i1 %exitcond48.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !2060

.preheader:                                       ; preds = %bb.a
  br i1 %.not44, label %.loopexit, label %.lr.ph42

.lr.ph42:                                         ; preds = %.preheader
  %i.z = load ptr, ptr %3, align 8, !tbaa !259    ; 2 uses
  %.not.i36 = icmp eq ptr %i.z, null
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  br i1 %.not.i36, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us: ; preds = %.lr.ph42, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us
  %.03341.us = phi i64 [ %i.ah, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us ], [ 0, %.lr.ph42 ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.03341.us ; 2 uses
  %.sroa.0.0.copyload.us = load i64, ptr %i.ab, align 8
  %.sroa.2.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.2.0.copyload.us = load ptr, ptr %.sroa.2.0..sroa_idx.us, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i64 %.sroa.0.0.copyload.us, ptr %8, align 8
  store ptr %.sroa.2.0.copyload.us, ptr %i.aa, align 8
  %i.ac = load ptr, ptr %6, align 8, !tbaa !90
  %i.ad = call { i64, i64 } %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %8), !inline_history !2055 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.ae = extractvalue { i64, i64 } %i.ad, 0
  %i.af = extractvalue { i64, i64 } %i.ad, 1
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.03341.us ; 2 uses
  store i64 %i.ae, ptr %i.ag, align 8, !tbaa !53
  %.sroa.4.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 %i.af, ptr %.sroa.4.0..sroa_idx.us, align 8, !tbaa !53
  %i.ah = add nuw i64 %.03341.us, 1               ; 2 uses
  %exitcond50.not = icmp eq i64 %i.ah, %2
  br i1 %exitcond50.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us, !llvm.loop !2061

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %.lr.ph, %bb.i
  %.040 = phi i64 [ %i.bi, %bb.i ], [ 0, %.lr.ph ] ; 5 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.040
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.ak = zext i32 %i.aj to i64                   ; 3 uses
  %i.al = lshr i64 %i.ak, 6
  %i.am = and i64 %i.ak, 63
  %i.an = load ptr, ptr %4, align 8, !tbaa !238
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.al
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !53
  %i.aq = shl nuw i64 1, %i.am
  %i.ar = and i64 %i.ap, %i.aq
  %.not = icmp eq i64 %i.ar, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ak ; 2 uses
  %.sroa.07.0.copyload = load i64, ptr %i.as, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.28.0.copyload = load ptr, ptr %.sroa.28.0..sroa_idx, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i64 %.sroa.07.0.copyload, ptr %9, align 8
  store ptr %.sroa.28.0.copyload, ptr %i.c, align 8
  %i.at = load ptr, ptr %6, align 8, !tbaa !90
  %i.au = call { i64, i64 } %i.at(ptr noundef nonnull align 8 dereferenceable(16) %9), !inline_history !2055 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.av = extractvalue { i64, i64 } %i.au, 0
  %i.aw = extractvalue { i64, i64 } %i.au, 1
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.040 ; 2 uses
  store i64 %i.av, ptr %i.ax, align 8, !tbaa !53
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 %i.aw, ptr %.sroa.410.0..sroa_idx, align 8, !tbaa !53
  br label %bb.i

bb.g:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.ay = load ptr, ptr %5, align 8, !tbaa !238   ; 2 uses
  %.not.i35 = icmp eq ptr %i.ay, null
  br i1 %.not.i35, label %bb.h, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.h:                                             ; preds = %bb.g
  %i.az = load i64, ptr %i.d, align 8, !tbaa !263
  call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.az)
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !238
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.g, %bb.h
  %i.ba = phi ptr [ %.pre.i, %bb.h ], [ %i.ay, %bb.g ]
  %i.bb = lshr i64 %.040, 6
  %i.bc = and i64 %.040, 63
  %i.bd = shl nuw i64 1, %i.bc
  %i.be = xor i64 %i.bd, -1
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bb ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !53
  %i.bh = and i64 %i.bg, %i.be
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !53
  br label %bb.i

bb.i:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit, %bb.f
  %i.bi = add nuw i64 %.040, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bi, %2
  br i1 %exitcond.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !2060

_ZNK6duckdb15SelectionVector9get_indexEm.exit37:  ; preds = %.lr.ph42, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37
  %.03341 = phi i64 [ %i.bs, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37 ], [ 0, %.lr.ph42 ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.03341
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !3
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bl ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.bm, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i64 %.sroa.0.0.copyload, ptr %8, align 8
  store ptr %.sroa.2.0.copyload, ptr %i.aa, align 8
  %i.bn = load ptr, ptr %6, align 8, !tbaa !90
  %i.bo = call { i64, i64 } %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %8), !inline_history !2055 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.bp = extractvalue { i64, i64 } %i.bo, 0
  %i.bq = extractvalue { i64, i64 } %i.bo, 1
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.03341 ; 2 uses
  store i64 %i.bp, ptr %i.br, align 8, !tbaa !53
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i64 %i.bq, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !53
  %i.bs = add nuw i64 %.03341, 1                  ; 2 uses
  %exitcond49.not = icmp eq i64 %i.bs, %2
  br i1 %exitcond49.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37, !llvm.loop !2061

.loopexit:                                        ; preds = %bb.i, %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us, %.preheader38, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_122StringCompressFunctionINS_9hugeint_tEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !223
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @_ZN6duckdb12_GLOBAL__N_114StringCompressINS_9hugeint_tEEET_RKNS_8string_tE, ptr %i.a, align 8, !tbaa !90
  call void @_ZN6duckdb13UnaryExecutor15ExecuteStandardINS_8string_tENS_9hugeint_tENS_18UnaryLambdaWrapperEPFS3_RKS2_EEEvRNS_6VectorESA_mPvbNS_14FunctionErrorsE(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.d, ptr noundef nonnull %i.a, i1 noundef zeroext false, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal { i64, i64 } @_ZN6duckdb12_GLOBAL__N_114StringCompressINS_9hugeint_tEEET_RKNS_8string_tE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #17 {
bb.a:
  %1 = alloca %"struct.duckdb::hugeint_t", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.a = load i32, ptr %0, align 8, !tbaa !54     ; 4 uses
  %i.b = icmp ult i32 %i.a, 13
  br i1 %i.b, label %bb.b, label %iter.check

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = load <8 x i8>, ptr %2, align 8, !tbaa !54
  %4 = shufflevector <8 x i8> %3, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %4, ptr %i.c, align 4, !tbaa !54
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %6 = load <4 x i8>, ptr %i.d, align 4, !tbaa !54
  %7 = shufflevector <4 x i8> %6, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %7, ptr %5, align 4, !tbaa !54
  store i32 0, ptr %1, align 8
  br label %_ZN6duckdb12_GLOBAL__N_122StringCompressInternalINS_9hugeint_tEEET_RKNS_8string_tE.exit

iter.check:                                       ; preds = %bb.a
  %i.e = tail call i32 @llvm.umin.i32(i32 %i.a, i32 16)
  %i.f = zext nneg i32 %i.e to i64                ; 8 uses
  %i.g = sub nuw nsw i64 16, %i.f                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %i.g ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !54
  %i.k = getelementptr i8, ptr %i.j, i64 %i.f     ; 3 uses
  %min.iters.check = icmp ult i32 %i.a, 16
  br i1 %min.iters.check, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %iter.check
  %n.vec = and i64 %i.f, 16                       ; 3 uses
  %i.l = getelementptr i8, ptr %i.k, i64 -16
  %wide.load = load <16 x i8>, ptr %i.l, align 1, !tbaa !54
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse, ptr %i.h, align 1, !tbaa !54
  %cmp.n = icmp eq i64 %n.vec, %i.f
  br i1 %cmp.n, label %_ZN6duckdb12_GLOBAL__N_113ReverseMemCpyERKPhRKPKhRKm.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %vector.ph
  %n.mod.vf = and i64 %i.f, 12
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !268

vec.epilog.ph:                                    ; preds = %iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  %n.vec2 = and i64 %i.f, 28                      ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next, %vec.epilog.vector.body ] ; 3 uses
  %i.m = xor i64 %index, -1
  %i.n = getelementptr i8, ptr %i.k, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -3
  %wide.load3 = load <4 x i8>, ptr %i.o, align 1, !tbaa !54
  %reverse4 = shufflevector <4 x i8> %wide.load3, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 %index
  store <4 x i8> %reverse4, ptr %i.p, align 1, !tbaa !54
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec2
  br i1 %i.q, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2062

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n5 = icmp eq i64 %n.vec2, %i.f
  br i1 %cmp.n5, label %_ZN6duckdb12_GLOBAL__N_113ReverseMemCpyERKPhRKPKhRKm.exit.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vec.epilog.iter.check, %vec.epilog.middle.block
  %.05.i.i.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ %n.vec2, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.05.i.i = phi i64 [ %i.v, %vec.epilog.scalar.ph ], [ %.05.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.r = xor i64 %.05.i.i, -1
  %i.s = getelementptr i8, ptr %i.k, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !54
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 %.05.i.i
  store i8 %i.t, ptr %i.u, align 1, !tbaa !54
  %i.v = add nuw nsw i64 %.05.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.v, %i.f
  br i1 %exitcond.not.i.i, label %_ZN6duckdb12_GLOBAL__N_113ReverseMemCpyERKPhRKPKhRKm.exit.i, label %vec.epilog.scalar.ph, !llvm.loop !2063

_ZN6duckdb12_GLOBAL__N_113ReverseMemCpyERKPhRKPKhRKm.exit.i: ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %vector.ph
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %1, i8 0, i64 %i.g, i1 false)
  br label %_ZN6duckdb12_GLOBAL__N_122StringCompressInternalINS_9hugeint_tEEET_RKNS_8string_tE.exit

_ZN6duckdb12_GLOBAL__N_122StringCompressInternalINS_9hugeint_tEEET_RKNS_8string_tE.exit: ; preds = %bb.b, %_ZN6duckdb12_GLOBAL__N_113ReverseMemCpyERKPhRKPKhRKm.exit.i
  %i.w = trunc i32 %i.a to i8
  store i8 %i.w, ptr %1, align 8, !tbaa !54
  %.val15.i = load i64, ptr %1, align 8, !tbaa !53
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val16.i = load i64, ptr %i.x, align 8, !tbaa !53
  %.fca.0.insert.i.i = insertvalue { i64, i64 } poison, i64 %.val15.i, 0
  %.fca.1.insert.i.i = insertvalue { i64, i64 } %.fca.0.insert.i.i, i64 %.val16.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret { i64, i64 } %.fca.1.insert.i.i
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13UnaryExecutor15ExecuteStandardINS_8string_tENS_9hugeint_tENS_18UnaryLambdaWrapperEPFS3_RKS2_EEEvRNS_6VectorESA_mPvbNS_14FunctionErrorsE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef %3, i1 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %7 = alloca %"class.duckdb::optional_idx", align 8 ; 8 uses
  %8 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !237
  switch i8 %i.a, label %bb.j [
    i8 2, label %bb.b
    i8 0, label %bb.d
    i8 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %1, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_9hugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !207  ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !207  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !238  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit: ; preds = %bb.b
  %i.h = load i64, ptr %i.g, align 8, !tbaa !53
  %i.i = trunc i64 %i.h to i1
  br i1 %i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %1, i1 noundef zeroext true)
  br label %bb.ag

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread: ; preds = %bb.b, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %1, i1 noundef zeroext false)
  %.sroa.0.0.copyload = load i64, ptr %i.e, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 %.sroa.0.0.copyload, ptr %6, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.sroa.2.0.copyload, ptr %i.j, align 8
  %i.k = load ptr, ptr %3, align 8, !tbaa !90
  %i.l = call { i64, i64 } %i.k(ptr noundef nonnull align 8 dereferenceable(16) %6), !inline_history !2064 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.m = extractvalue { i64, i64 } %i.l, 0
  %i.n = extractvalue { i64, i64 } %i.l, 1
  store i64 %i.m, ptr %i.c, align 8, !tbaa !53
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.n, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !53
  br label %bb.ag

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %1, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_9hugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !207
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !207
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @_ZN6duckdb13UnaryExecutor11ExecuteFlatINS_8string_tENS_9hugeint_tENS_18UnaryLambdaWrapperEPFS3_RKS2_EEEvPKT_PT0_mRNS_12ValidityMaskESF_Pvb(ptr noundef %i.r, ptr noundef %i.p, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef %3, i1 noundef zeroext %4)
  br label %bb.ag

bb.e:                                             ; preds = %bb.a
  %i.u = icmp eq i8 %5, 0
  br i1 %i.u, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  tail call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.w = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 152
  %i.y = load i64, ptr %i.x, align 8, !tbaa !239  ; 2 uses
  %.not.i = icmp eq i64 %i.y, -1
  br i1 %.not.i, label %_ZN6duckdb16DictionaryVector14DictionarySizeERKNS_6VectorE.exit, label %_ZN6duckdb16DictionaryVector14DictionarySizeERKNS_6VectorE.exit.thread

_ZN6duckdb16DictionaryVector14DictionarySizeERKNS_6VectorE.exit.thread: ; preds = %bb.f
  store i64 %i.y, ptr %7, align 8
  br label %bb.g

_ZN6duckdb16DictionaryVector14DictionarySizeERKNS_6VectorE.exit: ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aa = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.z)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ab, align 8, !tbaa !53 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %7, align 8
  %.not66 = icmp eq i64 %.sroa.0.0.copyload.i.i, -1
  br i1 %.not66, label %.thread64, label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb16DictionaryVector14DictionarySizeERKNS_6VectorE.exit.thread, %_ZN6duckdb16DictionaryVector14DictionarySizeERKNS_6VectorE.exit
  %i.ac = call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
  %i.ad = shl i64 %i.ac, 1
  %.not = icmp ugt i64 %i.ad, %2
  br i1 %.not, label %.thread64, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.ae = call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.v) ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48 ; 3 uses
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !237
  %.not58 = icmp eq i8 %i.ag, 0
  br i1 %.not58, label %bb.i, label %.thread64

.thread64:                                        ; preds = %bb.h, %bb.g, %_ZN6duckdb16DictionaryVector14DictionarySizeERKNS_6VectorE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_9hugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !207
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.af)
end_hunk_1
