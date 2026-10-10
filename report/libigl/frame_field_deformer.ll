Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/frame_field_deformer?download=true
inline.NumInlined: 7666
inline.NumDeleted: 3720
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 56
loop-unroll.NumUnrolled: 66
begin_hunk_0_@_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEESaIS2_EE6resizeEm:bb.a
  br i1 %i.af, label %bb.h, label %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEESaIS2_EE17_M_default_appendEm.exit

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw [72 x i8], ptr %i.c, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.b, %i.ag
  br i1 %.not.i4, label %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEESaIS2_EE17_M_default_appendEm.exit, label %_ZSt8_DestroyIPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %bb.h
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !383
  br label %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEESaIS2_EE17_M_default_appendEm.exit

_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEESaIS2_EE17_M_default_appendEm.exit: ; preds = %_ZSt8_DestroyIPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEES2_EvT_S4_RSaIT0_E.exit.i, %bb.h, %_ZNSt12_Vector_baseIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEESaIS2_EE13_M_deallocateEPS2_m.exit32.i, %bb.c, %bb.g
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Eigen12SparseMatrixIdLi0EiEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS3_INS4_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS4_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEKS1_EESJ_EEEERS1_RKNS_16SparseMatrixBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !108, !range !114, !noundef !115
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZN5Eigen12SparseMatrixIdLi0EiE14initAssignmentINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS3_INS4_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS4_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEKS1_EESJ_EEEEvRKT_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !157, !nonnull !115, !align !158 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !145
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !28
  tail call void @_ZN5Eigen12SparseMatrixIdLi0EiE6resizeEll(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %i.f, i64 noundef %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !77   ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZN5Eigen12SparseMatrixIdLi0EiE14initAssignmentINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS3_INS4_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS4_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEKS1_EESJ_EEEEvRKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.j) #27
  store ptr null, ptr %i.i, align 8, !tbaa !77
  br label %_ZN5Eigen12SparseMatrixIdLi0EiE14initAssignmentINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS3_INS4_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS4_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEKS1_EESJ_EEEEvRKT_.exit

_ZN5Eigen12SparseMatrixIdLi0EiE14initAssignmentINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS3_INS4_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS4_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEKS1_EESJ_EEEEvRKT_.exit: ; preds = %bb.c, %bb.b, %bb.a
  tail call void @_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIdLi0EiEENS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS4_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEKS3_EESJ_EEEEvRT_RKT0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(105) %1)
  ret ptr %0
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Eigen12SparseMatrixIdLi0EiEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !29, !range !114, !noundef !115
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !159
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !159
  store ptr %i.f, ptr %i.c, align 8, !tbaa !159
  store ptr %i.e, ptr %i.d, align 8, !tbaa !159
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.g, align 8, !tbaa !109
  %i.j = load i64, ptr %i.h, align 8, !tbaa !109
  store i64 %i.j, ptr %i.g, align 8, !tbaa !109
  store i64 %i.i, ptr %i.h, align 8, !tbaa !109
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.k, align 8, !tbaa !109
  %i.n = load i64, ptr %i.l, align 8, !tbaa !109
  store i64 %i.n, ptr %i.k, align 8, !tbaa !109
  store i64 %i.m, ptr %i.l, align 8, !tbaa !109
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.q = load <2 x ptr>, ptr %i.p, align 8, !tbaa !160
  %i.r = load <2 x ptr>, ptr %i.o, align 8, !tbaa !160
  store <2 x ptr> %i.q, ptr %i.o, align 8, !tbaa !160
  store <2 x ptr> %i.r, ptr %i.p, align 8, !tbaa !160
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !159
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !159
  store ptr %i.v, ptr %i.s, align 8, !tbaa !159
  store ptr %i.u, ptr %i.t, align 8, !tbaa !159
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.y = load i64, ptr %i.w, align 8, !tbaa !109
  %i.z = load i64, ptr %i.x, align 8, !tbaa !109
  store i64 %i.z, ptr %i.w, align 8, !tbaa !109
  store i64 %i.y, ptr %i.x, align 8, !tbaa !109
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !109
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !109
  store i64 %i.ad, ptr %i.aa, align 8, !tbaa !109
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !109
  br label %_ZN5Eigen8internal17CompressedStorageIdiEaSERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %_ZN5Eigen8internal17CompressedStorageIdiEaSERKS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !145
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !28
  tail call void @_ZN5Eigen12SparseMatrixIdLi0EiE6resizeEll(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %i.af, i64 noundef %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !77 ; 2 uses
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %_ZN5Eigen12SparseMatrixIdLi0EiE14initAssignmentIS1_EEvRKT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.aj) #27
  store ptr null, ptr %i.ai, align 8, !tbaa !77
  br label %_ZN5Eigen12SparseMatrixIdLi0EiE14initAssignmentIS1_EEvRKT_.exit

_ZN5Eigen12SparseMatrixIdLi0EiE14initAssignmentIS1_EEvRKT_.exit: ; preds = %bb.d, %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !77
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE14initAssignmentIS1_EEvRKT_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !28
  %.idx = shl nsw i64 %i.ao, 2
  %i.ap = add nsw i64 %.idx, 4                    ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !76
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !76
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.au, ptr align 4 %i.as, i64 %i.ap, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit: ; preds = %bb.f, %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !161
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, i64 noundef %i.ay, double noundef 0.000000e+00)
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !161
  %i.ba = icmp sgt i64 %i.az, 0
  br i1 %i.ba, label %bb.h, label %_ZN5Eigen8internal17CompressedStorageIdiEaSERKS2_.exit

bb.h:                                             ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !161 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %_ZN5Eigen8internal17CompressedStorageIdiEaSERKS2_.exit, label %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i

_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i: ; preds = %bb.h
  %.idx.i = shl nsw i64 %i.bc, 3
  %i.be = load ptr, ptr %i.av, align 8, !tbaa !78
  %i.bf = load ptr, ptr %i.aw, align 8, !tbaa !78
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bf, ptr align 8 %i.be, i64 %.idx.i, i1 false)
  %.pre.i = load i64, ptr %i.bb, align 8, !tbaa !161 ; 2 uses
  %i.bg = icmp eq i64 %.pre.i, 0
  br i1 %i.bg, label %_ZN5Eigen8internal17CompressedStorageIdiEaSERKS2_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i
  %.idx7.i = shl nsw i64 %.pre.i, 2
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !79
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !79
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bk, ptr align 4 %i.bi, i64 %.idx7.i, i1 false)
  br label %_ZN5Eigen8internal17CompressedStorageIdiEaSERKS2_.exit

bb.j:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE14initAssignmentIS1_EEvRKT_.exit
  tail call void @_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIdLi0EiEES3_EEvRT_RKT0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1), !inline_history !385
  br label %_ZN5Eigen8internal17CompressedStorageIdiEaSERKS2_.exit

_ZN5Eigen8internal17CompressedStorageIdiEaSERKS2_.exit: ; preds = %bb.i, %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i, %bb.h, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit, %bb.c, %bb.j, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl20Frame_field_deformer12extractBlockERN5Eigen12SparseMatrixIdLi0EiEEiiiiS4_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(72) %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"struct.Eigen::internal::scalar_sum_op", align 1 ; 3 uses
  %8 = alloca %"class.__gnu_cxx::__normal_iterator", align 8 ; 5 uses
  %9 = alloca %"class.__gnu_cxx::__normal_iterator", align 8 ; 5 uses
  %i.a = icmp sgt i32 %5, 0
  br i1 %i.a, label %.lr.ph73, label %._crit_edge74

.lr.ph73:                                         ; preds = %bb.a
  %i.b = add nsw i32 %5, %3
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = add nsw i32 %4, %2
  %i.h = sext i32 %3 to i64                       ; 2 uses
  %i.i = sext i32 %i.b to i64
  br label %bb.b

._crit_edge74:                                    ; preds = %._crit_edge, %bb.a
  %.sroa.037.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.037.1.lcssa, %._crit_edge ] ; 5 uses
  %.sroa.941.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.941.1.lcssa, %._crit_edge ]
  %.sroa.14.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.14.1.lcssa, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  store ptr %.sroa.037.0.lcssa, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  store ptr %.sroa.941.0.lcssa, ptr %9, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  invoke void @_ZN5Eigen8internal17set_from_tripletsIN9__gnu_cxx17__normal_iteratorIPNS_7TripletIdiEESt6vectorIS5_SaIS5_EEEENS_12SparseMatrixIdLi0EiEENS0_13scalar_sum_opIddEEEEvRKT_SH_RT0_T1_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 1 dead_on_return %7)
          to label %bb.k unwind label %bb.m

bb.b:                                             ; preds = %.lr.ph73, %._crit_edge
  %indvars.iv = phi i64 [ %i.h, %.lr.ph73 ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %.sroa.14.070 = phi ptr [ null, %.lr.ph73 ], [ %.sroa.14.1.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.941.069 = phi ptr [ null, %.lr.ph73 ], [ %.sroa.941.1.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.037.068 = phi ptr [ null, %.lr.ph73 ], [ %.sroa.037.1.lcssa, %._crit_edge ] ; 2 uses
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !78
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !79
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !76
  %i.m = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !100
  %i.o = sext i32 %i.n to i64                     ; 3 uses
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !77   ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %i.m, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !100
  %i.t = sext i32 %i.s to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

bb.d:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv
  %i.v = load i32, ptr %i.u, align 4, !tbaa !100
  %i.w = sext i32 %i.v to i64
  %i.x = add nsw i64 %i.w, %i.o
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit: ; preds = %bb.c, %bb.d
  %.sink.i = phi i64 [ %i.t, %bb.c ], [ %i.x, %bb.d ] ; 2 uses
  %i.y = icmp sgt i64 %.sink.i, %i.o
  br i1 %i.y, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %10 = sub nsw i64 %indvars.iv, %i.h             ; 2 uses
  %i.z = trunc nuw nsw i64 %10 to i32
  %11 = trunc nuw nsw i64 %10 to i32
  br label %bb.e

._crit_edge:                                      ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %.sroa.037.1.lcssa = phi ptr [ %.sroa.037.068, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit ], [ %.sroa.037.2, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit ] ; 2 uses
  %.sroa.941.1.lcssa = phi ptr [ %.sroa.941.069, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit ], [ %.sroa.941.2, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit ] ; 2 uses
  %.sroa.14.1.lcssa = phi ptr [ %.sroa.14.070, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit ], [ %.sroa.14.2, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.aa = icmp slt i64 %indvars.iv.next, %i.i
  br i1 %i.aa, label %bb.b, label %._crit_edge74, !llvm.loop !386

bb.e:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit
  %.sroa.11.065 = phi i64 [ %i.o, %.lr.ph ], [ %i.ay, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit ] ; 3 uses
  %.sroa.14.164 = phi ptr [ %.sroa.14.070, %.lr.ph ], [ %.sroa.14.2, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit ] ; 8 uses
  %.sroa.941.163 = phi ptr [ %.sroa.941.069, %.lr.ph ], [ %.sroa.941.2, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit ] ; 6 uses
  %.sroa.037.162 = phi ptr [ %.sroa.037.068, %.lr.ph ], [ %.sroa.037.2, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit ] ; 9 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.k, i64 %.sroa.11.065
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !100 ; 3 uses
  %.not = icmp sge i32 %i.ac, %2
  %i.ad = icmp slt i32 %i.ac, %i.g
  %or.cond = select i1 %.not, i1 %i.ad, i1 false
  br i1 %or.cond, label %bb.f, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit

bb.f:                                             ; preds = %bb.e
  %i.ae = sub i32 %i.ac, %2                       ; 2 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %i.j, i64 %.sroa.11.065
  %i.ag = load double, ptr %i.af, align 8, !tbaa !93 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.941.163, %.sroa.14.164
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.ae, ptr %.sroa.941.163, align 8, !tbaa !100
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.941.163, i64 4
  store i32 %i.z, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !100
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.941.163, i64 8
  store double %i.ag, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !93
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.941.163, i64 16
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit

bb.h:                                             ; preds = %bb.f
  %i.ai = ptrtoint ptr %.sroa.14.164 to i64
  %i.aj = ptrtoint ptr %.sroa.037.162 to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 4 uses
  %i.al = icmp eq i64 %i.ak, 9223372036854775792
  br i1 %i.al, label %bb.i, label %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #29
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.am = ashr exact i64 %i.ak, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.am, i64 1)
  %i.an = add nsw i64 %.sroa.speculated.i.i.i.i, %i.am ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.am
  %i.ap = tail call i64 @llvm.umin.i64(i64 %i.an, i64 576460752303423487)
  %i.aq = select i1 %i.ao, i64 576460752303423487, i64 %i.ap ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ar = shl nuw nsw i64 %i.aq, 4
  %i.as = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #30
          to label %.noexc20 unwind label %.loopexit ; 5 uses

.noexc20:                                         ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ak ; 3 uses
  store i32 %i.ae, ptr %i.at, align 8, !tbaa !100
  %.sroa.6.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store i32 %11, ptr %.sroa.6.0..sroa_idx25, align 4, !tbaa !100
  %.sroa.7.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store double %i.ag, ptr %.sroa.7.0..sroa_idx27, align 8, !tbaa !93
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.037.162, %.sroa.14.164
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc20, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i ], [ %i.as, %.noexc20 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.037.162, %.noexc20 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !392, !alias.scope !393
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.au, %.sroa.14.164
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !390

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc20
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.as, %.noexc20 ], [ %i.av, %.lr.ph.i.i.i.i.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i = icmp eq ptr %.sroa.037.162, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.037.162, i64 noundef %i.ak) #28
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.aq
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.g, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.e
  %.sroa.037.2 = phi ptr [ %.sroa.037.162, %bb.e ], [ %.sroa.037.162, %bb.g ], [ %i.as, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ] ; 2 uses
  %.sroa.941.2 = phi ptr [ %.sroa.941.163, %bb.e ], [ %i.ah, %bb.g ], [ %i.aw, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ] ; 2 uses
  %.sroa.14.2 = phi ptr [ %.sroa.14.164, %bb.e ], [ %.sroa.14.164, %bb.g ], [ %i.ax, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ] ; 2 uses
  %i.ay = add nsw i64 %.sroa.11.065, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.ay, %.sink.i
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !391

bb.k:                                             ; preds = %._crit_edge74
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %.not.i.i.i = icmp eq ptr %.sroa.037.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = ptrtoint ptr %.sroa.14.0.lcssa to i64
  %i.ba = ptrtoint ptr %.sroa.037.0.lcssa to i64
  %i.bb = sub i64 %i.az, %i.ba
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.037.0.lcssa, i64 noundef %i.bb) #28
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit: ; preds = %bb.k, %bb.l
  ret void

bb.m:                                             ; preds = %._crit_edge74
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.n

bb.n:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.m
  %.sroa.037.3 = phi ptr [ %.sroa.037.0.lcssa, %bb.m ], [ %.sroa.037.162, %.loopexit ], [ %.sroa.037.162, %.loopexit.split-lp ] ; 3 uses
  %.sroa.14.3 = phi ptr [ %.sroa.14.0.lcssa, %bb.m ], [ %.sroa.14.164, %.loopexit ], [ %.sroa.14.164, %.loopexit.split-lp ]
  %.pn.pn = phi { ptr, i32 } [ %i.bc, %bb.m ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i21 = icmp eq ptr %.sroa.037.3, null
  br i1 %.not.i.i.i21, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit22, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bd = ptrtoint ptr %.sroa.14.3 to i64
  %i.be = ptrtoint ptr %.sroa.037.3 to i64
  %i.bf = sub i64 %i.bd, %i.be
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.037.3, i64 noundef %i.bf) #28
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit22

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit22: ; preds = %bb.n, %bb.o
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !73     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 48                  ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !74
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.d
  %i.n = sdiv exact i64 %i.m, 48                  ; 2 uses
  %i.o = icmp ult i64 %i.g, 192153584101141163
  tail call void @llvm.assume(i1 %i.o)
  %i.p = sub nuw nsw i64 192153584101141162, %i.g
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %.not28.i = icmp ult i64 %i.n, %i.i
  br i1 %.not28.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = mul nuw nsw i64 %i.i, 48
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8, !tbaa !101
  br label %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEESaIS2_EE17_M_default_appendEm.exit

bb.d:                                             ; preds = %bb.b
  %i.s = icmp ugt i64 %1, 192153584101141162
  br i1 %i.s, label %bb.e, label %_ZNKSt6vectorIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEESaIS2_EE12_M_check_lenEmPKc.exit.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #29
  unreachable

_ZNKSt6vectorIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.d
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 192153584101141162) ; 2 uses
  %i.v = mul nuw nsw i64 %i.u, 48
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #30 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f
  %.not10.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEESaIS2_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i ], [ %i.w, %_ZNKSt6vectorIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEESaIS2_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEESaIS2_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.012.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(48) %.0911.i.i.i.i, i64 48, i1 false), !tbaa.struct !104, !alias.scope !397
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 48 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 48
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt6vectorIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEESaIS2_EE12_M_check_lenEmPKc.exit.i
  %.not.i31.i = icmp eq ptr %i.c, null
  br i1 %.not.i31.i, label %_ZNSt12_Vector_baseIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEESaIS2_EE13_M_deallocateEPS2_m.exit32.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !74
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ac) #28
  br label %_ZNSt12_Vector_baseIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEESaIS2_EE13_M_deallocateEPS2_m.exit32.i

_ZNSt12_Vector_baseIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEESaIS2_EE13_M_deallocateEPS2_m.exit32.i: ; preds = %bb.f, %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !73
  %i.ad = getelementptr inbounds nuw [48 x i8], ptr %i.x, i64 %i.i
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !101
  %i.ae = getelementptr inbounds nuw [48 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ae, ptr %i.j, align 8, !tbaa !74
  br label %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEESaIS2_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.a
  %i.af = icmp ult i64 %1, %i.g
  br i1 %i.af, label %bb.h, label %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEESaIS2_EE17_M_default_appendEm.exit

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw [48 x i8], ptr %i.c, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.b, %i.ag
  br i1 %.not.i4, label %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEESaIS2_EE17_M_default_appendEm.exit, label %_ZSt8_DestroyIPN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %bb.h
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !101
  br label %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEESaIS2_EE17_M_default_appendEm.exit

_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEESaIS2_EE17_M_default_appendEm.exit: ; preds = %_ZSt8_DestroyIPN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEES2_EvT_S4_RSaIT0_E.exit.i, %bb.h, %_ZNSt12_Vector_baseIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEESaIS2_EE13_M_deallocateEPS2_m.exit32.i, %bb.c, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl20frame_field_deformerERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS1_IiLin1ELin1ELi0ELin1ELin1EEES4_S4_RS2_S8_S8_idb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef %7, double noundef %8, i1 noundef zeroext %9) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.igl::Frame_field_deformer", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @_ZN3igl20Frame_field_deformerC2Ev(ptr noundef nonnull align 8 dereferenceable(632) %10)
  %i.a = select i1 %9, double 1.000000e-01, double 0.000000e+00
  invoke void @_ZN3igl20Frame_field_deformer4initERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS2_IiLin1ELin1ELi0ELin1ELin1EEES5_S5_ddi(ptr noundef nonnull align 8 dereferenceable(632) %10, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, double noundef %8, double noundef %i.a, i32 noundef 1)
          to label %bb.b unwind label %.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN3igl20Frame_field_deformer9reset_optEv(ptr noundef nonnull align 8 dereferenceable(632) %10)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
end_hunk_0
