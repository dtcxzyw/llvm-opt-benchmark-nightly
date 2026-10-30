Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/line3d?download=true
inline.NumInlined: 5081
inline.NumDeleted: 3049
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 19
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.Eigen::Matrix" = type { %"class.Eigen::PlainObjectBase" }
%"class.Eigen::PlainObjectBase" = type { %"class.Eigen::DenseStorage" }
%"class.Eigen::DenseStorage" = type { %"struct.Eigen::internal::plain_array" }
%"struct.Eigen::internal::plain_array" = type { [6 x double] }
%"class.Eigen::Matrix.29" = type { %"class.Eigen::PlainObjectBase.30" }
%"class.Eigen::PlainObjectBase.30" = type { %"class.Eigen::DenseStorage.37" }
%"class.Eigen::DenseStorage.37" = type { %"struct.Eigen::internal::plain_array.38" }
%"struct.Eigen::internal::plain_array.38" = type { [9 x double] }
%"class.Eigen::LDLT" = type <{ %"class.Eigen::Matrix.29", double, %"class.Eigen::Transpositions", [4 x i8], %"class.Eigen::Matrix.11", i32, i8, [3 x i8], i32, [4 x i8] }>
%"class.Eigen::Transpositions" = type { %"class.Eigen::Matrix.82" }
%"class.Eigen::Matrix.82" = type { %"class.Eigen::PlainObjectBase.83" }
%"class.Eigen::PlainObjectBase.83" = type { %"class.Eigen::DenseStorage.90" }
%"class.Eigen::DenseStorage.90" = type { %"struct.Eigen::internal::plain_array.91" }
%"struct.Eigen::internal::plain_array.91" = type { [3 x i32] }
%"class.Eigen::Matrix.11" = type { %"class.Eigen::PlainObjectBase.12" }
%"class.Eigen::PlainObjectBase.12" = type { %"class.Eigen::DenseStorage.19" }
%"class.Eigen::DenseStorage.19" = type { %"struct.Eigen::internal::plain_array.20" }
%"struct.Eigen::internal::plain_array.20" = type { [3 x double] }
%"class.Eigen::Product.92" = type { %"class.Eigen::Transpose", ptr }
%"class.Eigen::Transpose" = type { ptr }
%"class.Eigen::VectorBlock" = type { %"class.Eigen::Block" }
%"class.Eigen::Block" = type { %"class.Eigen::BlockImpl" }
%"class.Eigen::BlockImpl" = type { %"class.Eigen::internal::BlockImpl_dense" }
%"class.Eigen::internal::BlockImpl_dense" = type { %"class.Eigen::MapBase.base.28", ptr, %"class.Eigen::internal::variable_if_dynamic", [8 x i8], i64 }
%"class.Eigen::MapBase.base.28" = type { %"class.Eigen::MapBase.base" }
%"class.Eigen::MapBase.base" = type <{ ptr, [2 x i8] }>
%"class.Eigen::internal::variable_if_dynamic" = type { i64 }
%"class.g2o::Line3D" = type { %"class.Eigen::Matrix" }
%"struct.Eigen::internal::evaluator.692" = type { %"struct.Eigen::internal::product_evaluator.693" }
%"struct.Eigen::internal::product_evaluator.693" = type { %"class.Eigen::Block.522", %"class.Eigen::Block.549", %"struct.Eigen::internal::evaluator.696", %"struct.Eigen::internal::evaluator.645", i64 }
%"class.Eigen::Block.522" = type { %"class.Eigen::BlockImpl.523" }
%"class.Eigen::BlockImpl.523" = type { %"class.Eigen::internal::BlockImpl_dense.524" }
%"class.Eigen::internal::BlockImpl_dense.524" = type { %"class.Eigen::MapBase.525", ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", i64 }
%"class.Eigen::MapBase.525" = type { %"class.Eigen::MapBase.526" }
%"class.Eigen::MapBase.526" = type { ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic" }
%"class.Eigen::Block.549" = type { %"class.Eigen::BlockImpl.550" }
%"class.Eigen::BlockImpl.550" = type { %"class.Eigen::internal::BlockImpl_dense.551" }
%"class.Eigen::internal::BlockImpl_dense.551" = type { %"class.Eigen::MapBase.base.561", ptr, %"class.Eigen::internal::variable_if_dynamic", [8 x i8], i64 }
%"class.Eigen::MapBase.base.561" = type { %"class.Eigen::MapBase.base.560" }
%"class.Eigen::MapBase.base.560" = type <{ ptr, %"class.Eigen::internal::variable_if_dynamic", i8 }>
%"struct.Eigen::internal::evaluator.696" = type { %"struct.Eigen::internal::block_evaluator.base.702", [6 x i8] }
%"struct.Eigen::internal::block_evaluator.base.702" = type { %"struct.Eigen::internal::mapbase_evaluator.base.701" }
%"struct.Eigen::internal::mapbase_evaluator.base.701" = type <{ ptr, [2 x i8] }>
%"struct.Eigen::internal::evaluator.645" = type { %"struct.Eigen::internal::block_evaluator.base.651", [6 x i8] }
%"struct.Eigen::internal::block_evaluator.base.651" = type { %"struct.Eigen::internal::mapbase_evaluator.base.650" }
%"struct.Eigen::internal::mapbase_evaluator.base.650" = type <{ ptr, [2 x i8] }>
%"struct.Eigen::internal::evaluator.704" = type { %"struct.Eigen::internal::block_evaluator.base.710", [6 x i8] }
%"struct.Eigen::internal::block_evaluator.base.710" = type { %"struct.Eigen::internal::mapbase_evaluator.base.709" }
%"struct.Eigen::internal::mapbase_evaluator.base.709" = type <{ ptr, [2 x i8] }>
%"class.Eigen::internal::generic_dense_assignment_kernel.712" = type { ptr, ptr, ptr, ptr }
%"struct.Eigen::internal::sub_assign_op" = type { i8 }
%"class.Eigen::Block.498" = type { %"class.Eigen::BlockImpl.499" }
%"class.Eigen::BlockImpl.499" = type { %"class.Eigen::internal::BlockImpl_dense.500" }
%"class.Eigen::internal::BlockImpl_dense.500" = type { %"class.Eigen::MapBase.base.510", ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", i64 }
%"class.Eigen::MapBase.base.510" = type { %"class.Eigen::MapBase.base.509" }
%"class.Eigen::MapBase.base.509" = type <{ ptr, %"class.Eigen::internal::variable_if_dynamic", i8 }>

$_ZN5Eigen8internal12ldlt_inplaceILi1EE9unblockedINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEENS_14TranspositionsILi3ELi3EiEENS4_IdLi3ELi1ELi0ELi3ELi1EEEEEbRT_RT0_RT1_RNS0_10SignMatrixE = comdat any

$_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS3_INS_7ProductINS4_IS6_Lin1ELin1ELb0EEENS4_INS5_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi3ELi0EE3runERSH_ = comdat any

$_ZNK5Eigen4LDLTINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1EE22_solve_impl_transposedILb1ENS_7ProductINS_9TransposeIS2_EENS1_IdLi3ELi1ELi0ELi3ELi1EEELi0EEENS_5BlockINS1_IdLi6ELi1ELi0ELi6ELi1EEELi3ELi1ELb0EEEEEvRKT0_RT1_ = comdat any

@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define void @_ZNK3g2o6Line3D11toCartesianEv(ptr dead_on_unwind noalias writable sret(%"class.Eigen::Matrix") align 16 initializes((24, 48)) %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(48) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZN5Eigen5BlockINS_6MatrixIdLi6ELi1ELi0ELi6ELi1EEELi3ELi1ELb0EEaSINS_5SolveINS_4LDLTINS1_IdLi3ELi3ELi0ELi3ELi3EEELi1EEENS_7ProductINS_9TransposeIS7_EENS1_IdLi3ELi1ELi0ELi3ELi1EEELi0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit:
  %2 = alloca %"class.Eigen::Matrix.29", align 16 ; 9 uses
  %3 = alloca %"class.Eigen::LDLT", align 16      ; 15 uses
  %4 = alloca %"class.Eigen::Product.92", align 8 ; 5 uses
  %5 = alloca %"class.Eigen::Matrix.11", align 16 ; 5 uses
  %6 = alloca %"class.Eigen::VectorBlock", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load <2 x double>, ptr %i.a, align 8, !tbaa !8, !noalias !64 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load double, ptr %i.c, align 8, !tbaa !10, !noalias !64 ; 5 uses
  %i.e = fmul <2 x double> %i.b, %i.b             ; 2 uses
  %shift = shufflevector <2 x double> %i.e, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.e, %shift
  %i.f = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.g = fmul double %i.d, %i.d
  %i.h = fadd double %i.g, %i.f
  %.scalar.i = tail call noundef double @llvm.sqrt.f64(double %i.h) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.6.16.vec.insert.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %.scalar.i, i64 0
  %i.j = shufflevector <2 x double> %.sroa.6.16.vec.insert.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.k = fdiv <2 x double> %i.b, %i.j
  store <2 x double> %i.k, ptr %i.i, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = fdiv double %i.d, %.scalar.i
  store double %i.m, ptr %i.l, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %.sroa.042.8.vec.insert = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.d, i64 1 ; 4 uses
  %i.n = fneg <2 x double> %i.b
  %.sroa.11.56.vec.insert = shufflevector <2 x double> %i.b, <2 x double> %i.n, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.o = shufflevector <2 x double> %i.b, <2 x double> poison, <2 x i32> <i32 1, i32 poison> ; 2 uses
  %i.p = insertelement <2 x double> %i.o, double %i.d, i64 1
  %.sroa.8.40.vec.insert = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %i.b, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.q = fneg <2 x double> %.sroa.042.8.vec.insert ; 2 uses
  store <2 x double> %i.q, ptr %2, align 16, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <2 x double> %i.p, ptr %i.r, align 16, !tbaa !8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.t = fneg <2 x double> %.sroa.8.40.vec.insert ; 2 uses
  store <2 x double> %i.t, ptr %i.s, align 16, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.v = fneg <2 x double> %.sroa.11.56.vec.insert ; 2 uses
  store <2 x double> %i.v, ptr %i.u, align 16, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 64
  store double -0.000000e+00, ptr %i.w, align 16, !tbaa !10
  %i.x = fmul <2 x double> %.sroa.042.8.vec.insert, %.sroa.042.8.vec.insert ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.z = load <2 x double>, ptr %i.y, align 8, !tbaa !8 ; 4 uses
  %i.aa = fmul <2 x double> %i.z, %i.q            ; 2 uses
  %i.ab = fmul <2 x double> %.sroa.042.8.vec.insert, %.sroa.11.56.vec.insert ; 2 uses
  %i.ac = fmul <2 x double> %i.z, %i.z            ; 2 uses
  %shift50 = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop51 = fadd <2 x double> %i.ac, %shift50
  %foldExtExtBinop53 = fmul <2 x double> %.sroa.8.40.vec.insert, %.sroa.8.40.vec.insert
  %shift55 = shufflevector <2 x double> %foldExtExtBinop53, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop56 = fadd <2 x double> %shift55, %foldExtExtBinop51
  %i.ad = extractelement <2 x double> %foldExtExtBinop56, i64 0
  %i.ae = fmul <2 x double> %i.z, %i.v            ; 2 uses
  %i.af = fmul <2 x double> %.sroa.11.56.vec.insert, %.sroa.11.56.vec.insert ; 2 uses
  %shift58 = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop59 = fadd <2 x double> %i.af, %shift58
  %i.ag = extractelement <2 x double> %foldExtExtBinop59, i64 0
  %7 = fadd double %i.ag, 0.000000e+00
  %i.ah = shufflevector <2 x double> %i.x, <2 x double> %i.aa, <2 x i32> <i32 0, i32 2>
  %i.ai = shufflevector <2 x double> %i.x, <2 x double> %i.aa, <2 x i32> <i32 1, i32 3>
  %i.aj = fadd <2 x double> %i.ah, %i.ai
  %i.ak = shufflevector <2 x double> %i.b, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.al = shufflevector <2 x double> %i.o, <2 x double> %i.t, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.am = fmul <2 x double> %i.ak, %i.al
  %i.an = fadd <2 x double> %i.aj, %i.am
  %i.ao = fadd <2 x double> %i.an, <double 1.000000e-09, double 0.000000e+00> ; 4 uses
  %i.ap = fadd double %i.ad, 1.000000e-09
  %i.aq = fadd double %7, 1.000000e-09            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 124 ; 2 uses
  store <2 x double> %i.ao, ptr %3, align 16, !tbaa !8, !alias.scope !65
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 64
  store double %i.aq, ptr %i.aw, align 16, !tbaa !10, !alias.scope !65
  %i.ax = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ao) ; 2 uses
  %shift61 = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop62 = fadd <2 x double> %i.ax, %shift61
  %i.ay = extractelement <2 x double> %i.ao, i64 1
  %i.az = tail call noundef double @llvm.fabs.f64(double %i.ay)
  %i.ba = tail call noundef double @llvm.fabs.f64(double %i.aq)
  %i.bb = shufflevector <2 x double> %i.ab, <2 x double> %i.ae, <2 x i32> <i32 0, i32 2>
  %i.bc = shufflevector <2 x double> %i.ab, <2 x double> %i.ae, <2 x i32> <i32 1, i32 3>
  %i.bd = fadd <2 x double> %i.bb, %i.bc
  %i.be = fmul <2 x double> %i.al, zeroinitializer
  %i.bf = fsub <2 x double> %i.bd, %i.be
  %i.bg = fadd <2 x double> %i.bf, zeroinitializer ; 4 uses
  %i.bh = shufflevector <2 x double> %i.bg, <2 x double> %i.ao, <2 x i32> <i32 0, i32 3>
  %i.bi = insertelement <2 x double> %i.bg, double %i.ap, i64 0 ; 2 uses
  store <2 x double> %i.bh, ptr %i.at, align 16, !tbaa !8, !alias.scope !65
  store <2 x double> %i.bi, ptr %i.au, align 16, !tbaa !8, !alias.scope !65
  store <2 x double> %i.bg, ptr %i.av, align 16, !tbaa !8, !alias.scope !65
  %i.bj = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.bg) ; 3 uses
  %foldExtExtBinop64 = fadd <2 x double> %i.bj, %foldExtExtBinop62
  %i.bk = extractelement <2 x double> %foldExtExtBinop64, i64 0 ; 2 uses
  %i.bl = fcmp ogt double %i.bk, 0.000000e+00
  %i.bm = select i1 %i.bl, double %i.bk, double 0.000000e+00 ; 2 uses
  %i.bn = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.bi) ; 2 uses
  %shift66 = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop67 = fadd <2 x double> %i.bn, %shift66
  %i.bo = extractelement <2 x double> %foldExtExtBinop67, i64 0
  %i.bp = fadd double %i.az, %i.bo                ; 2 uses
  %i.bq = fcmp ogt double %i.bp, %i.bm
  %i.br = select i1 %i.bq, double %i.bp, double %i.bm ; 2 uses
  %shift69 = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop70 = fadd <2 x double> %i.bj, %shift69
  %i.bs = extractelement <2 x double> %foldExtExtBinop70, i64 0
  %i.bt = fadd double %i.ba, %i.bs                ; 2 uses
  %i.bu = fcmp ogt double %i.bt, %i.br
  %spec.select.i.i = select i1 %i.bu, double %i.bt, double %i.br
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 72
  store double %spec.select.i.i, ptr %i.bv, align 8, !tbaa !82, !alias.scope !65
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i8 0, ptr %i.as, align 4, !tbaa !83, !alias.scope !65
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i32 2, ptr %i.ar, align 8, !tbaa !84, !alias.scope !65
  %i.by = call noundef zeroext i1 @_ZN5Eigen8internal12ldlt_inplaceILi1EE9unblockedINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEENS_14TranspositionsILi3ELi3EiEENS4_IdLi3ELi1ELi0ELi3ELi1EEEEEbRT_RT0_RT1_RNS0_10SignMatrixE(ptr noundef nonnull align 8 dereferenceable(132) %3, ptr noundef nonnull align 4 dereferenceable(12) %i.bw, ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noundef nonnull align 4 dereferenceable(4) %i.ar)
  %not..i.i.i = xor i1 %i.by, true
  %i.bz = zext i1 %not..i.i.i to i32
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 128
  store i32 %i.bz, ptr %i.ca, align 16, !tbaa !85, !alias.scope !65
  store i8 1, ptr %i.as, align 4, !tbaa !83, !alias.scope !65
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  call void @llvm.experimental.noalias.scope.decl(metadata !86)
  %i.cb = load <2 x double>, ptr %1, align 16, !tbaa !8, !noalias !86
  store <2 x double> %i.cb, ptr %5, align 16, !tbaa !8, !alias.scope !86
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ce = load double, ptr %i.cd, align 16, !tbaa !10, !noalias !86
  store double %i.ce, ptr %i.cc, align 16, !tbaa !10, !alias.scope !86
  store ptr %2, ptr %4, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %5, ptr %i.cf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  store ptr %0, ptr %6, align 8, !tbaa !17, !alias.scope !87
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %0, ptr %i.cg, align 8, !tbaa !89, !alias.scope !87
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 0, ptr %i.ch, align 8, !tbaa !20, !alias.scope !87
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 6, ptr %i.ci, align 8, !tbaa !92, !alias.scope !87
  call void @_ZNK5Eigen4LDLTINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1EE22_solve_impl_transposedILb1ENS_7ProductINS_9TransposeIS2_EENS1_IdLi3ELi1ELi0ELi3ELi1EEELi0EEENS_5BlockINS1_IdLi6ELi1ELi0ELi6ELi1EEELi3ELi1ELb0EEEEEvRKT0_RT1_(ptr noundef nonnull align 8 dereferenceable(132) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(48) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN3g2omlERKN5Eigen9TransformIdLi3ELi1ELi0EEERKNS_6Line3DE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.g2o::Line3D") align 16 captures(none) initializes((0, 48)) %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(128) %1, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(48) %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.35 = alloca [4 x double], align 16       ; 7 uses
  %.sroa.48 = alloca [4 x double], align 16       ; 7 uses
  %.sroa.61 = alloca [4 x double], align 16       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.35)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.48)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.61)
  %i.a = load <2 x double>, ptr %1, align 16      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load double, ptr %i.b, align 16, !tbaa !10 ; 3 uses
  %.sroa.5.16.vec.insert61 = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.c, i64 0
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x double>, ptr %i.d, align 16    ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load double, ptr %i.f, align 16, !tbaa !10 ; 4 uses
  %.sroa.15.64.vec.insert67 = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.g, i64 0
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.i = load <2 x double>, ptr %i.h, align 16    ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.k = load double, ptr %i.j, align 16, !tbaa !10 ; 4 uses
  %.sroa.25.112.vec.insert71 = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.k, i64 0
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.m = load <2 x double>, ptr %i.l, align 16, !tbaa !8 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.o = load double, ptr %i.n, align 16, !tbaa !10 ; 2 uses
  %i.p = fneg double %i.o
  %.sroa.033.8.vec.extract = extractelement <2 x double> %i.m, i64 1
  %.sroa.12.48.vec.insert = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %.sroa.0.8.vec.insert = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.o, i64 1 ; 3 uses
  %.sroa.7.32.vec.insert = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.p, i64 0 ; 3 uses
  %i.q = fneg <2 x double> %i.m
  %.sroa.12.56.vec.insert = shufflevector <2 x double> %.sroa.12.48.vec.insert, <2 x double> %i.q, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.r = shufflevector <2 x double> %i.a, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = fmul <2 x double> %.sroa.0.8.vec.insert, %i.r
  %i.t = shufflevector <2 x double> %i.a, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.u = fmul <2 x double> %.sroa.7.32.vec.insert, %i.t
  %i.v = fadd <2 x double> %i.s, %i.u
  %i.w = insertelement <2 x double> poison, double %i.c, i64 0 ; 2 uses
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer
  %i.y = fmul <2 x double> %i.x, %.sroa.12.56.vec.insert
  %i.z = fadd <2 x double> %i.y, %i.v
  %i.aa = shufflevector <2 x double> %i.e, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ab = fmul <2 x double> %.sroa.0.8.vec.insert, %i.aa
  %i.ac = shufflevector <2 x double> %i.e, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ad = fmul <2 x double> %.sroa.7.32.vec.insert, %i.ac
  %i.ae = fadd <2 x double> %i.ab, %i.ad
  %i.af = insertelement <2 x double> poison, double %i.g, i64 0
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ah = fmul <2 x double> %i.ag, %.sroa.12.56.vec.insert
  %i.ai = fadd <2 x double> %i.ah, %i.ae
  %i.aj = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ak = shufflevector <2 x double> %i.a, <2 x double> %i.e, <2 x i32> <i32 1, i32 3>
  %i.al = fmul <2 x double> %i.aj, %i.ak
  %i.am = insertelement <2 x double> %i.w, double %i.g, i64 1
  %i.an = fmul <2 x double> %i.am, zeroinitializer
  %i.ao = fadd <2 x double> %i.an, %i.al
  %i.ap = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.aq = shufflevector <2 x double> %i.a, <2 x double> %i.e, <2 x i32> <i32 0, i32 2>
  %i.ar = fmul <2 x double> %i.ap, %i.aq
  %i.as = fsub <2 x double> %i.ao, %i.ar          ; 2 uses
  %i.at = extractelement <2 x double> %i.i, i64 0
  %i.au = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.av = fmul <2 x double> %.sroa.0.8.vec.insert, %i.au
  %i.aw = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ax = fmul <2 x double> %.sroa.7.32.vec.insert, %i.aw
  %i.ay = fadd <2 x double> %i.av, %i.ax
  %i.az = insertelement <2 x double> poison, double %i.k, i64 0
  %i.ba = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bb = fmul <2 x double> %i.ba, %.sroa.12.56.vec.insert
  %i.bc = fadd <2 x double> %i.bb, %i.ay
  %shift = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.m, %shift
  %i.bd = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.be = fmul double %i.k, 0.000000e+00
  %i.bf = fadd double %i.be, %i.bd
  %i.bg = fmul double %.sroa.033.8.vec.extract, %i.at
  %i.bh = fsub double %i.bf, %i.bg
  %i.bi = extractelement <2 x double> %i.as, i64 0
  store double %i.bi, ptr %.sroa.35, align 16, !tbaa !10
  %i.bj = extractelement <2 x double> %i.as, i64 1
  store double %i.bj, ptr %.sroa.48, align 16, !tbaa !10
  store double %i.bh, ptr %.sroa.61, align 16, !tbaa !10
  %i.bk = load <2 x double>, ptr %1, align 16, !tbaa !8
  %.sroa.35.8..07.i.i.i.i.ptr.21.i.i.i.i.i.i.sroa_idx95 = getelementptr inbounds nuw i8, ptr %.sroa.35, i64 8
  store <2 x double> %i.bk, ptr %.sroa.35.8..07.i.i.i.i.ptr.21.i.i.i.i.i.i.sroa_idx95, align 8, !tbaa !8
  %.sroa.35.24..07.i.i.i.i.ptr.23.i.i.i.i.i.i.sroa_idx96 = getelementptr inbounds nuw i8, ptr %.sroa.35, i64 24
  store double %i.c, ptr %.sroa.35.24..07.i.i.i.i.ptr.23.i.i.i.i.i.i.sroa_idx96, align 8, !tbaa !10
  %.sroa.48.8..07.i.i.i.i.ptr.27.i.i.i.i.i.i.sroa_idx93 = getelementptr inbounds nuw i8, ptr %.sroa.48, i64 8
  store <2 x double> %i.e, ptr %.sroa.48.8..07.i.i.i.i.ptr.27.i.i.i.i.i.i.sroa_idx93, align 8, !tbaa !8
  %.sroa.48.24..07.i.i.i.i.ptr.29.i.i.i.i.i.i.sroa_idx94 = getelementptr inbounds nuw i8, ptr %.sroa.48, i64 24
  store double %i.g, ptr %.sroa.48.24..07.i.i.i.i.ptr.29.i.i.i.i.i.i.sroa_idx94, align 8, !tbaa !10
  %.sroa.61.8..07.i.i.i.i.ptr.33.i.i.i.i.i.i.sroa_idx91 = getelementptr inbounds nuw i8, ptr %.sroa.61, i64 8
  store <2 x double> %i.i, ptr %.sroa.61.8..07.i.i.i.i.ptr.33.i.i.i.i.i.i.sroa_idx91, align 8, !tbaa !8
  %.sroa.61.24..07.i.i.i.i.ptr.35.i.i.i.i.i.i.sroa_idx92 = getelementptr inbounds nuw i8, ptr %.sroa.61, i64 24
  store double %i.k, ptr %.sroa.61.24..07.i.i.i.i.ptr.35.i.i.i.i.i.i.sroa_idx92, align 8, !tbaa !10
  %i.bl = load <2 x double>, ptr %2, align 16, !tbaa !8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bn = load <2 x double>, ptr %i.bm, align 16, !tbaa !8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bp = load <2 x double>, ptr %i.bo, align 16, !tbaa !8 ; 2 uses
  %i.bq = shufflevector <2 x double> %i.bl, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.br = fmul <2 x double> %i.a, %i.bq
  %.sroa.0.sroa.0.8.vec.extract = extractelement <2 x double> %i.bl, i64 1
  %i.bs = bitcast double %.sroa.0.sroa.0.8.vec.extract to <1 x double>
  %i.bt = shufflevector <1 x double> %i.bs, <1 x double> poison, <2 x i32> zeroinitializer ; 3 uses
end_hunk_0
