Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/min_quad_with_fixed.11?download=true
inline.NumInlined: 14995
inline.NumDeleted: 7635
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 76
loop-unroll.NumUnrolled: 93
begin_hunk_0
$_ZN5Eigen8internal17product_evaluatorINS_7ProductINS_12SparseMatrixIdLi0EiEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEELi8ENS_11SparseShapeENS_10DenseShapeEddEC2ERKS7_ = comdat any

$_ZN5Eigen8internal15call_assignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_7ProductINS_12SparseMatrixIdLi0EiEES3_Li0EEEKNS7_INS7_IS9_S9_Li2EEES3_Li0EEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISK_EE5valueEPvE4typeE = comdat any

$_ZN5Eigen8internal30assignment_from_xpr_op_productINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_12SparseMatrixIdLi0EiEES3_Li0EEENS4_INS4_IS6_S6_Li2EEES3_Li0EEENS0_9assign_opIddEENS0_13sub_assign_opIddEEE3runINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKS7_KS9_EESB_EEvRS3_RKT_RKT0_ = comdat any

$_ZN5Eigen8internal20generic_product_implINS_7ProductINS_12SparseMatrixIdLi0EiEES4_Li2EEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_11SparseShapeENS_10DenseShapeELi8EE13scaleAndAddToIS7_EEvRT_RKS5_RKS7_RKd = comdat any

$_ZN5Eigen12SparseMatrixIdLi0EiED2Ev = comdat any

$_ZN5Eigen8internal17CompressedStorageIdiED2Ev = comdat any

$_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIdLi0EiEENS_7ProductIS3_S3_Li2EEEEEvRT_RKT0_ = comdat any

$_ZN5Eigen12SparseMatrixIdLi0EiE6resizeEll = comdat any

$_ZN5Eigen12SparseMatrixIdLi0EiEaSERKS1_ = comdat any

$_ZN5Eigen8internal17product_evaluatorINS_7ProductINS_12SparseMatrixIdLi0EiEES4_Li2EEELi8ENS_11SparseShapeES6_ddED2Ev = comdat any

$_ZN5Eigen8internal43conservative_sparse_sparse_product_selectorINS_12SparseMatrixIdLi0EiEES3_S3_Li0ELi0ELi0EE3runERKS3_S6_RS3_ = comdat any

$_ZN5Eigen12SparseMatrixIdLi0EiEaSINS0_IdLi1EiEEEERS1_RKNS_16SparseMatrixBaseIT_EE = comdat any

$_ZN5Eigen12SparseMatrixIdLi1EiED2Ev = comdat any

$_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld = comdat any

$_ZSt16__introsort_loopIPllN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_ = comdat any

$_ZSt11__make_heapIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_ = comdat any

$_ZN5Eigen12SparseMatrixIdLi1EiEaSINS0_IdLi0EiEEEERS1_RKNS_16SparseMatrixBaseIT_EE = comdat any

$_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl = comdat any

$_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIdLi0EiEES3_EEvRT_RKT0_ = comdat any

$_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_ = comdat any

$_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes = comdat any

$_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes = comdat any

$_ZZN5Eigen6numext4log2EiE5table = comdat any

@_ZN3igl12placeholdersL3allE = internal constant %"struct.Eigen::internal::all_t" undef, align 1
@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes = linkonce_odr dso_local global %"struct.Eigen::internal::CacheSizes" zeroinitializer, comdat, align 8
@_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes = linkonce_odr dso_local global i64 0, comdat, align 8
@_ZZN5Eigen6numext4log2EiE5table = linkonce_odr dso_local local_unnamed_addr constant [32 x i32] [i32 0, i32 9, i32 1, i32 10, i32 13, i32 21, i32 2, i32 29, i32 11, i32 14, i32 16, i32 18, i32 22, i32 25, i32 3, i32 30, i32 8, i32 12, i32 20, i32 28, i32 15, i32 17, i32 24, i32 7, i32 19, i32 27, i32 23, i32 6, i32 26, i32 5, i32 4, i32 31], comdat, align 16
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl19min_quad_with_fixedIfLi3ELi0ELb1EEEN5Eigen6MatrixIT_XT0_ELi1EXorLNS1_14StorageOptionsE0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEERKNS2_IS3_XT0_EXT0_EXorLS4_0EquaaeqT0_Li1EneT0_Li1ELS4_1EquaaeqT0_Li1EneT0_Li1ELS4_0ELS4_0EEXT0_EXT0_EEERKS5_RKNS1_5ArrayIbXT0_ELi1EXorLS4_0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEESA_RKNS2_IS3_XT1_EXT0_EXorLS4_0EquaaeqT1_Li1EneT0_Li1ELS4_1EquaaeqT0_Li1EneT1_Li1ELS4_0ELS4_0EEXT1_EXT0_EEERKNS2_IS3_XT1_ELi1EXorLS4_0EquaaeqT1_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT1_Li1ELS4_0ELS4_0EEXT1_ELi1EEE(ptr dead_on_unwind noalias writable sret(%"class.Eigen::Matrix") align 4 %0, ptr noundef nonnull align 4 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 1 dereferenceable(3) %3, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #0 comdat {
bb.a:
  tail call void @_ZN3igl19min_quad_with_fixedIfLi3ELb1EEEN5Eigen6MatrixIT_XT0_ELi1EXorLNS1_14StorageOptionsE0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEERKNS2_IS3_XT0_EXT0_EXorLS4_0EquaaeqT0_Li1EneT0_Li1ELS4_1EquaaeqT0_Li1EneT0_Li1ELS4_0ELS4_0EEXT0_EXT0_EEERKS5_RKNS1_5ArrayIbXT0_ELi1EXorLS4_0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEESA_(ptr dead_on_unwind writable sret(%"class.Eigen::Matrix") align 4 %0, ptr noundef nonnull align 4 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 1 dereferenceable(3) %3, ptr noundef nonnull align 4 dereferenceable(12) %4)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl19min_quad_with_fixedIfLi3ELb1EEEN5Eigen6MatrixIT_XT0_ELi1EXorLNS1_14StorageOptionsE0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEERKNS2_IS3_XT0_EXT0_EXorLS4_0EquaaeqT0_Li1EneT0_Li1ELS4_1EquaaeqT0_Li1EneT0_Li1ELS4_0ELS4_0EEXT0_EXT0_EEERKS5_RKNS1_5ArrayIbXT0_ELi1EXorLS4_0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEESA_(ptr dead_on_unwind noalias writable sret(%"class.Eigen::Matrix") align 4 %0, ptr noundef nonnull align 4 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 1 dereferenceable(3) %3, ptr noundef nonnull align 4 dereferenceable(12) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Eigen::LLT", align 16       ; 12 uses
  %i.a = load i8, ptr %3, align 1, !tbaa !24, !range !25, !noundef !26 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !24, !range !25, !noundef !26 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.e = load i8, ptr %i.d, align 1, !tbaa !24, !range !25, !noundef !26 ; 2 uses
  %narrow.i.i.i.i.i.i = add nuw nsw i8 %i.c, %i.a
  %narrow.i.i.i.i.i = add nuw nsw i8 %narrow.i.i.i.i.i.i, %i.e
  switch i8 %narrow.i.i.i.i.i, label %bb.e [
    i8 3, label %bb.b
    i8 0, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEfv.exit.2.i.i
    i8 2, label %.preheader.preheader
  ]

.preheader.preheader:                             ; preds = %bb.a
  %i.f = trunc nuw i8 %i.a to i1
  br i1 %i.f, label %.preheader.1, label %.split.thread

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %4, i64 12, i1 false), !tbaa.struct !237
  br label %bb.f

_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEfv.exit.2.i.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.h = load <4 x float>, ptr %1, align 4, !tbaa !27 ; 3 uses
  store <4 x float> %i.h, ptr %5, align 16, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load <4 x float>, ptr %i.j, align 4, !tbaa !27 ; 2 uses
  store <4 x float> %i.k, ptr %i.i, align 16, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load float, ptr %i.m, align 4, !tbaa !29 ; 2 uses
  store float %i.n, ptr %i.l, align 16, !tbaa !29
  %i.o = extractelement <4 x float> %i.h, i64 2
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.q = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.h) ; 2 uses
  %i.r = extractelement <4 x float> %i.q, i64 0
  %i.s = extractelement <4 x float> %i.q, i64 1   ; 2 uses
  %i.t = fadd float %i.r, %i.s
  %i.u = tail call noundef float @llvm.fabs.f32(float %i.o) ; 2 uses
  %i.v = fadd float %i.u, %i.t                    ; 2 uses
  %i.w = fcmp ogt float %i.v, 0.000000e+00
  %i.x = select i1 %i.w, float %i.v, float 0.000000e+00 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.z = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.k) ; 2 uses
  %i.aa = extractelement <4 x float> %i.z, i64 0
  %i.ab = extractelement <4 x float> %i.z, i64 1  ; 2 uses
  %i.ac = fadd float %i.aa, %i.ab
  %i.ad = fadd float %i.s, %i.ac                  ; 3 uses
  %i.ae = fcmp ogt float %i.ad, %i.x              ; 2 uses
  %i.af = select i1 %i.ae, float %i.ad, float %i.x
  %i.ag = tail call noundef float @llvm.fabs.f32(float %i.n)
  %i.ah = fadd float %i.u, %i.ab
  %i.ai = fadd float %i.ag, %i.ah                 ; 2 uses
  %i.aj = fcmp ogt float %i.ai, %i.af
  %simplifycfg.merge = select i1 %i.ae, float %i.ad, float %i.x
  %storemerge = select i1 %i.aj, float %i.ai, float %simplifycfg.merge
  store float %storemerge, ptr %i.p, align 4, !tbaa !243
  store i8 1, ptr %i.g, align 8, !tbaa !244
  %i.ak = call noundef i64 @_ZN5Eigen8internal11llt_inplaceIfLi1EE9unblockedINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEEEElRT_(ptr noundef nonnull align 4 dereferenceable(48) %5) ; 0 uses
  %i.al = load float, ptr %2, align 4, !tbaa !29
  %i.am = fneg float %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = load <2 x float>, ptr %i.ao, align 4, !tbaa !29
  %i.ar = fneg <2 x float> %i.aq                  ; 2 uses
  %i.as = load float, ptr %5, align 16, !tbaa !29 ; 2 uses
  %i.at = fdiv float %i.am, %i.as                 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.av = load float, ptr %i.au, align 4, !tbaa !29 ; 2 uses
  %i.aw = fmul float %i.at, %i.av
  %i.ax = extractelement <2 x float> %i.ar, i64 0
  %i.ay = fsub float %i.ax, %i.aw
  %i.az = load float, ptr %i.i, align 16, !tbaa !29 ; 2 uses
  %i.ba = fdiv float %i.ay, %i.az                 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bc = load float, ptr %i.bb, align 8, !tbaa !29 ; 2 uses
  %i.bd = fmul float %i.at, %i.bc
  %i.be = load float, ptr %i.y, align 4, !tbaa !29 ; 2 uses
  %i.bf = fmul float %i.ba, %i.be
  %i.bg = fadd float %i.bd, %i.bf
  %i.bh = extractelement <2 x float> %i.ar, i64 1
  %i.bi = fsub float %i.bh, %i.bg
  %i.bj = load float, ptr %i.l, align 16, !tbaa !29 ; 2 uses
  %i.bk = fdiv float %i.bi, %i.bj
  %i.bl = fdiv float %i.bk, %i.bj                 ; 3 uses
  store float %i.bl, ptr %i.ap, align 4, !tbaa !29
  %i.bm = fmul float %i.be, %i.bl
  %i.bn = fsub float %i.ba, %i.bm
  %i.bo = fdiv float %i.bn, %i.az                 ; 2 uses
  store float %i.bo, ptr %i.an, align 4, !tbaa !29
  %i.bp = fmul float %i.av, %i.bo
  %i.bq = fmul float %i.bc, %i.bl
  %i.br = fadd float %i.bq, %i.bp
  %i.bs = fsub float %i.at, %i.br
  %i.bt = fdiv float %i.bs, %i.as
  store float %i.bt, ptr %0, align 4, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.f

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.bu = trunc nuw i8 %i.c to i1                 ; 2 uses
  %i.bv = trunc nuw i8 %i.e to i1                 ; 2 uses
  %spec.select295 = select i1 %i.bv, i64 -1, i64 2
  %.0105.ph = select i1 %i.bu, i64 %spec.select295, i64 1 ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %4, i64 12, i1 false), !tbaa.struct !237
  %i.bw = getelementptr inbounds [4 x i8], ptr %2, i64 %.0105.ph
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !29
  %i.by = fneg float %i.bx
  %i.bz = getelementptr inbounds [4 x i8], ptr %0, i64 %.0105.ph ; 5 uses
  %.idx.i.i.i247258 = mul nsw i64 %.0105.ph, 12   ; 4 uses
  %invariant.gep259 = getelementptr i8, ptr %1, i64 %.idx.i.i.i247258 ; 4 uses
  %i.ca = load float, ptr %4, align 4, !tbaa !29
  %i.cb = load float, ptr %invariant.gep259, align 4, !tbaa !29
  %i.cc = fneg float %i.ca
  %i.cd = tail call float @llvm.fmuladd.f32(float %i.cc, float %i.cb, float %i.by) ; 3 uses
  store float %i.cd, ptr %i.bz, align 4, !tbaa !29
  br i1 %i.bu, label %.split, label %bb.c

.split.thread:                                    ; preds = %.preheader.preheader
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %4, i64 12, i1 false), !tbaa.struct !237
  %i.ce = load float, ptr %2, align 4, !tbaa !29
  %i.cf = fneg float %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !29
  %gep.1294 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ci = load float, ptr %gep.1294, align 4, !tbaa !29
  %i.cj = fneg float %i.ch
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.cj, float %i.ci, float %i.cf) ; 2 uses
  store float %i.ck, ptr %0, align 4, !tbaa !29
  br label %bb.c

.split:                                           ; preds = %.preheader.1
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !29
  %gep.1 = getelementptr i8, ptr %invariant.gep259, i64 4
  %i.cn = load float, ptr %gep.1, align 4, !tbaa !29
  %i.co = fneg float %i.cm
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.co, float %i.cn, float %i.cd) ; 3 uses
  store float %i.cp, ptr %i.bz, align 4, !tbaa !29
  br i1 %i.bv, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.preheader.1, %.split.thread, %.split
  %i.cq = phi float [ %i.cp, %.split ], [ %i.ck, %.split.thread ], [ %i.cd, %.preheader.1 ]
  %invariant.gep269277289 = phi ptr [ %invariant.gep259, %.split ], [ %1, %.split.thread ], [ %invariant.gep259, %.preheader.1 ]
  %.idx.i.i.i247266279287 = phi i64 [ %.idx.i.i.i247258, %.split ], [ 0, %.split.thread ], [ %.idx.i.i.i247258, %.preheader.1 ]
  %i.cr = phi ptr [ %i.bz, %.split ], [ %0, %.split.thread ], [ %i.bz, %.preheader.1 ] ; 2 uses
  %.0105264281285 = phi i64 [ %.0105.ph, %.split ], [ 0, %.split.thread ], [ %.0105.ph, %.preheader.1 ]
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !29
  %gep.2 = getelementptr i8, ptr %invariant.gep269277289, i64 8
  %i.cu = load float, ptr %gep.2, align 4, !tbaa !29
  %i.cv = fneg float %i.ct
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.cv, float %i.cu, float %i.cq) ; 2 uses
  store float %i.cw, ptr %i.cr, align 4, !tbaa !29
  br label %bb.d

bb.d:                                             ; preds = %.split, %bb.c
  %.idx.i.i.i247266279288 = phi i64 [ %.idx.i.i.i247266279287, %bb.c ], [ %.idx.i.i.i247258, %.split ]
  %i.cx = phi ptr [ %i.cr, %bb.c ], [ %i.bz, %.split ]
  %.0105264281286 = phi i64 [ %.0105264281285, %bb.c ], [ %.0105.ph, %.split ]
  %i.cy = phi float [ %i.cw, %bb.c ], [ %i.cp, %.split ]
  %i.cz = getelementptr [4 x i8], ptr %1, i64 %.0105264281286
  %i.da = getelementptr i8, ptr %i.cz, i64 %.idx.i.i.i247266279288
  %i.db = load float, ptr %i.da, align 4, !tbaa !29
  %i.dc = fdiv float %i.cy, %i.db
  store float %i.dc, ptr %i.cx, align 4, !tbaa !29
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @_ZN3igl19min_quad_with_fixedIfLi3ELi1ELb1EEEN5Eigen6MatrixIT_XT0_ELi1EXorLNS1_14StorageOptionsE0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEERKNS2_IS3_XT0_EXT0_EXorLS4_0EquaaeqT0_Li1EneT0_Li1ELS4_1EquaaeqT0_Li1EneT0_Li1ELS4_0ELS4_0EEXT0_EXT0_EEERKS5_RKNS1_5ArrayIbXT0_ELi1EXorLS4_0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEESA_(ptr dead_on_unwind writable sret(%"class.Eigen::Matrix") align 4 %0, ptr noundef nonnull align 4 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 1 dereferenceable(3) %3, ptr noundef nonnull align 4 dereferenceable(12) %4)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEfv.exit.2.i.i, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN3igl25min_quad_with_fixed_solveIdN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEES4_S3_S3_EEbRKNS_24min_quad_with_fixed_dataIT_EERKNS1_10MatrixBaseIT0_EERKNSA_IT1_EERKNSA_IT2_EERNS1_15PlainObjectBaseIT3_EERNSN_IT4_EE(ptr noundef nonnull align 8 dereferenceable(2384) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit:
  %6 = alloca %"struct.Eigen::internal::evaluator.3056", align 8 ; 5 uses
  %7 = alloca %"struct.Eigen::internal::evaluator.3072", align 8 ; 5 uses
  %8 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.3702", align 8 ; 7 uses
  %9 = alloca %"struct.Eigen::internal::assign_op.3066", align 1 ; 3 uses
  %10 = alloca %"struct.Eigen::internal::evaluator.3056", align 8 ; 5 uses
  %11 = alloca %"struct.Eigen::internal::evaluator.3072", align 8 ; 5 uses
  %12 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.3702", align 8 ; 7 uses
  %13 = alloca %"struct.Eigen::internal::assign_op.3066", align 1 ; 3 uses
  %14 = alloca %"struct.Eigen::internal::assign_op.3066", align 1 ; 3 uses
  %15 = alloca %"struct.Eigen::internal::evaluator.3056", align 8 ; 5 uses
  %16 = alloca %"struct.Eigen::internal::evaluator.3072", align 8 ; 5 uses
  %17 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.3702", align 8 ; 7 uses
  %18 = alloca %"struct.Eigen::internal::assign_op.3066", align 1 ; 3 uses
  %19 = alloca %"struct.Eigen::internal::assign_op.3066", align 1 ; 3 uses
  %20 = alloca %"struct.Eigen::internal::assign_op.3066", align 1 ; 3 uses
  %21 = alloca %"struct.Eigen::internal::assign_op.3066", align 1 ; 3 uses
  %22 = alloca %"struct.Eigen::internal::assign_op.3066", align 1 ; 3 uses
  %23 = alloca %"struct.Eigen::internal::assign_op.3066", align 1 ; 3 uses
  %24 = alloca %"struct.Eigen::internal::assign_op.3066", align 1 ; 3 uses
  %25 = alloca %"struct.Eigen::internal::assign_op.3066", align 1 ; 3 uses
  %26 = alloca %"struct.Eigen::internal::assign_op.3066", align 1 ; 3 uses
  %27 = alloca %"class.Eigen::Matrix.62", align 8 ; 14 uses
  %28 = alloca %"class.Eigen::Matrix.62", align 8 ; 12 uses
  %29 = alloca %"class.Eigen::IndexedView", align 8 ; 7 uses
  %30 = alloca %"class.Eigen::Matrix.62", align 8 ; 15 uses
  %31 = alloca %"class.Eigen::CwiseBinaryOp.100", align 8 ; 7 uses
  %32 = alloca %"class.Eigen::Solve", align 8     ; 6 uses
  %33 = alloca %"class.Eigen::Solve.115", align 8 ; 6 uses
  %34 = alloca %"class.Eigen::Solve.121", align 8 ; 6 uses
  %35 = alloca %"class.Eigen::Matrix.62", align 8 ; 16 uses
  %36 = alloca %"class.Eigen::Product.127", align 8 ; 11 uses
  %37 = alloca %"class.Eigen::Matrix.62", align 8 ; 7 uses
  %38 = alloca %"class.Eigen::IndexedView.150", align 8 ; 7 uses
  %39 = alloca %"class.Eigen::Matrix.62", align 8 ; 9 uses
  %40 = alloca %"class.Eigen::CwiseBinaryOp.156", align 8 ; 12 uses
  %41 = alloca %"class.Eigen::Matrix.62", align 8 ; 10 uses
  %42 = alloca %"class.Eigen::Block", align 8     ; 10 uses
  %43 = alloca %"class.Eigen::Matrix.62", align 8 ; 9 uses
  %44 = alloca %"class.Eigen::Product.172", align 8 ; 6 uses
  %45 = alloca %"class.Eigen::Matrix.62", align 8 ; 9 uses
  %46 = alloca %"class.Eigen::CwiseBinaryOp.179", align 8 ; 10 uses
  %47 = alloca %"class.Eigen::Matrix.62", align 8 ; 11 uses
  %48 = alloca %"class.Eigen::Matrix.62", align 8 ; 11 uses
  %49 = alloca %"class.Eigen::CwiseBinaryOp.193", align 8 ; 7 uses
  %50 = alloca %"class.Eigen::Matrix.62", align 8 ; 9 uses
  %51 = alloca %"class.Eigen::Matrix.62", align 8 ; 12 uses
  %52 = alloca %"class.Eigen::Matrix.62", align 8 ; 12 uses
  %53 = alloca %"class.Eigen::CwiseBinaryOp.200", align 8 ; 10 uses
  %54 = alloca %"class.Eigen::Block", align 8     ; 10 uses
  %55 = alloca %"class.Eigen::Product.172", align 8 ; 6 uses
  %56 = alloca %"class.Eigen::Block", align 8     ; 9 uses
  %57 = alloca %"class.Eigen::Block", align 8     ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !35   ; 4 uses
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  %i.d = load i32, ptr %0, align 8, !tbaa !314
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.e, i64 noundef %i.e, i64 noundef 1)
  %i.f = icmp sgt i32 %i.c, 0
  br i1 %i.f, label %.preheader417.lr.ph, label %._crit_edge

.preheader417.lr.ph:                              ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %2, align 8, !tbaa !61     ; 5 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !62   ; 5 uses
  %i.j = load ptr, ptr %4, align 8, !tbaa !63     ; 5 uses
  %wide.trip.count = and i64 %i.b, 2147483647
  %i.k = add nsw i64 %wide.trip.count, -1
  %xtraiter = and i64 %i.b, 3                     ; 3 uses
  %i.l = icmp ult i64 %i.k, 3
  br i1 %i.l, label %.preheader417.epil.preheader, label %.preheader417.lr.ph.new

.preheader417.lr.ph.new:                          ; preds = %.preheader417.lr.ph
  %unroll_iter = and i64 %i.b, 2147483644
  br label %.preheader417

.preheader417:                                    ; preds = %.preheader417, %.preheader417.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.preheader417.lr.ph.new ], [ %indvars.iv.next.3, %.preheader417 ] ; 6 uses
  %niter = phi i64 [ 0, %.preheader417.lr.ph.new ], [ %niter.next.3, %.preheader417 ]
  %i.m = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.o = load i32, ptr %i.n, align 4, !tbaa !64
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr [8 x i8], ptr %i.j, i64 %i.p
  %i.r = load double, ptr %i.m, align 8, !tbaa !65
  store double %i.r, ptr %i.q, align 8, !tbaa !65
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.s = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv.next
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next
  %i.u = load i32, ptr %i.t, align 4, !tbaa !64
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr [8 x i8], ptr %i.j, i64 %i.v
  %i.x = load double, ptr %i.s, align 8, !tbaa !65
  store double %i.x, ptr %i.w, align 8, !tbaa !65
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.y = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv.next.1
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next.1
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !64
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr [8 x i8], ptr %i.j, i64 %i.ab
  %i.ad = load double, ptr %i.y, align 8, !tbaa !65
  store double %i.ad, ptr %i.ac, align 8, !tbaa !65
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ae = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv.next.2
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next.2
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !64
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr [8 x i8], ptr %i.j, i64 %i.ah
  %i.aj = load double, ptr %i.ae, align 8, !tbaa !65
  store double %i.aj, ptr %i.ai, align 8, !tbaa !65
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.preheader417, !llvm.loop !245

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.preheader417
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.preheader417.epil.preheader

.preheader417.epil.preheader:                     ; preds = %._crit_edge.loopexit.unr-lcssa, %.preheader417.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader417.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod623 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod623)
  br label %.preheader417.epil

.preheader417.epil:                               ; preds = %.preheader417.epil, %.preheader417.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.preheader417.epil.preheader ], [ %indvars.iv.next.epil, %.preheader417.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.preheader417.epil.preheader ], [ %epil.iter.next, %.preheader417.epil ]
  %i.ak = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv.epil
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.epil
  %i.am = load i32, ptr %i.al, align 4, !tbaa !64
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr [8 x i8], ptr %i.j, i64 %i.an
  %i.ap = load double, ptr %i.ak, align 8, !tbaa !65
  store double %i.ap, ptr %i.ao, align 8, !tbaa !65
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.preheader417.epil, !llvm.loop !246

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.preheader417.epil, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !315, !range !25, !noundef !26
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i, label %bb.ad

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i: ; preds = %._crit_edge
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.au = load i64, ptr %i.at, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #24
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !68 ; 11 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !69 ; 8 uses
  %i.az = add nsw i64 %i.ay, %i.aw                ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %27, i8 0, i64 24, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %27, i64 16
  %.not.i = icmp eq i64 %i.az, 0
  br i1 %.not.i, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit, label %bb.a

bb.a:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  %i.bc = icmp sgt i64 %i.az, 0
  br i1 %i.bc, label %bb.b, label %.sink.split.i

bb.b:                                             ; preds = %bb.a
  %i.bd = icmp samesign ugt i64 %i.az, 2305843009213693951
  br i1 %i.bd, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.b
  %i.be = shl nuw i64 %i.az, 3
  %i.bf = tail call noalias ptr @malloc(i64 noundef %i.be) #25 ; 2 uses
end_hunk_0
