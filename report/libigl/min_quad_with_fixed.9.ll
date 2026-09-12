Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/min_quad_with_fixed.9?download=true
inline.NumInlined: 35072
inline.NumDeleted: 18954
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 110
loop-unroll.NumUnrolled: 161
begin_hunk_0_@_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEEE11_solve_implINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIfEEKNS1_IfLi3ELi1ELi0ELi3ELi1EEEEES9_EEvRKT_RT0_:bb.a
  %3 = alloca %"class.Eigen::Matrix.4184", align 1 ; 6 uses
  %4 = alloca %"class.Eigen::Block.3426", align 8 ; 10 uses
  %5 = alloca %"class.Eigen::Block.3448", align 8 ; 9 uses
  %6 = alloca %"class.Eigen::Matrix.1129", align 4 ; 3 uses
  %7 = alloca %"class.Eigen::Matrix", align 4     ; 10 uses
  %8 = alloca %"class.Eigen::TriangularView.3382", align 8 ; 9 uses
  %9 = alloca %"class.Eigen::Block.3395", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.b = load float, ptr %i.a, align 4, !tbaa !242
  %i.c = tail call noundef float @llvm.fabs.f32(float %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 125
  %i.e = load i8, ptr %i.d, align 1, !tbaa !68, !range !14, !noundef !15
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = load float, ptr %i.g, align 8
  %i.i = select i1 %i.f, float %i.h, float f0x34C00000
  %i.j = fmul float %i.c, %i.i                    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.l = load i64, ptr %i.k, align 8, !tbaa !243  ; 5 uses
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %.lr.ph.i.i.preheader, label %_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEEE4rankEv.exit.thread

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.l, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader69, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.l, 9223372036854775804      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x float> poison, float %i.j, i64 0
  %broadcast.splat = shufflevector <2 x float> %broadcast.splatinsert, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aq, %vector.body ]
  %vec.phi68 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
  %i.n = or disjoint i64 %index, 1                ; 2 uses
  %i.o = or disjoint i64 %index, 2                ; 2 uses
  %i.p = or disjoint i64 %index, 3                ; 2 uses
  %i.q = getelementptr [4 x i8], ptr %0, i64 %index
  %i.r = getelementptr [4 x i8], ptr %0, i64 %i.n
  %i.s = getelementptr [4 x i8], ptr %0, i64 %i.o
  %i.t = getelementptr [4 x i8], ptr %0, i64 %i.p
  %i.u = mul i64 %index, 12
  %i.v = mul i64 %i.n, 12
  %i.w = mul i64 %i.o, 12
  %i.x = mul i64 %i.p, 12
  %i.y = getelementptr i8, ptr %i.q, i64 %i.u
  %i.z = getelementptr i8, ptr %i.r, i64 %i.v
  %i.aa = getelementptr i8, ptr %i.s, i64 %i.w
  %i.ab = getelementptr i8, ptr %i.t, i64 %i.x
  %i.ac = load float, ptr %i.y, align 8, !tbaa !10
  %i.ad = load float, ptr %i.z, align 8, !tbaa !10
  %i.ae = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.af = insertelement <2 x float> %i.ae, float %i.ad, i64 1
  %i.ag = load float, ptr %i.aa, align 8, !tbaa !10
  %i.ah = load float, ptr %i.ab, align 8, !tbaa !10
  %i.ai = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.aj = insertelement <2 x float> %i.ai, float %i.ah, i64 1
  %i.ak = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.af)
  %i.al = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.aj)
  %i.am = fcmp ogt <2 x float> %i.ak, %broadcast.splat
  %i.an = fcmp ogt <2 x float> %i.al, %broadcast.splat
  %i.ao = zext <2 x i1> %i.am to <2 x i64>
  %i.ap = zext <2 x i1> %i.an to <2 x i64>
  %i.aq = add <2 x i64> %vec.phi, %i.ao           ; 2 uses
  %i.ar = add <2 x i64> %vec.phi68, %i.ap         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !1158

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ar, %i.aq
  %i.at = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEEE4rankEv.exit, label %.lr.ph.i.i.preheader69

.lr.ph.i.i.preheader69:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.09.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  %.078.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader69, %.lr.ph.i.i
  %.09.i.i = phi i64 [ %i.bb, %.lr.ph.i.i ], [ %.09.i.i.ph, %.lr.ph.i.i.preheader69 ] ; 3 uses
  %.078.i.i = phi i64 [ %i.ba, %.lr.ph.i.i ], [ %.078.i.i.ph, %.lr.ph.i.i.preheader69 ]
  %i.au = getelementptr [4 x i8], ptr %0, i64 %.09.i.i
  %.idx.i.i.i = mul i64 %.09.i.i, 12
  %i.av = getelementptr i8, ptr %i.au, i64 %.idx.i.i.i
  %i.aw = load float, ptr %i.av, align 4, !tbaa !10
  %i.ax = tail call noundef float @llvm.fabs.f32(float %i.aw)
  %i.ay = fcmp ogt float %i.ax, %i.j
  %i.az = zext i1 %i.ay to i64
  %i.ba = add i64 %.078.i.i, %i.az                ; 2 uses
  %i.bb = add nuw nsw i64 %.09.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bb, %i.l
  br i1 %exitcond.not.i.i, label %_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEEE4rankEv.exit, label %.lr.ph.i.i, !llvm.loop !1159

_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEEE4rankEv.exit: ; preds = %.lr.ph.i.i, %middle.block
  %.lcssa = phi i64 [ %i.at, %middle.block ], [ %i.ba, %.lr.ph.i.i ] ; 11 uses
  %i.bc = icmp eq i64 %.lcssa, 0
  br i1 %i.bc, label %_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEEE4rankEv.exit.thread, label %.lr.ph.i.i18

_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEEE4rankEv.exit.thread: ; preds = %bb.a, %_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEEE4rankEv.exit
  store <2 x float> zeroinitializer, ptr %2, align 4, !tbaa !10
  %.07.i.i.i.i.ptr.2.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float 0.000000e+00, ptr %.07.i.i.i.i.ptr.2.i.i.i.i.i.i.i.i.i, align 4, !tbaa !10
  br label %bb.f

.lr.ph.i.i18:                                     ; preds = %_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEEE4rankEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.bd = load ptr, ptr %1, align 8, !tbaa !1172, !nonnull !15, !align !183 ; 3 uses
  %i.be = load float, ptr %i.bd, align 4, !tbaa !10
  %i.bf = fneg float %i.be
  store float %i.bf, ptr %7, align 4, !tbaa !10
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.bh = getelementptr i8, ptr %i.bd, i64 4
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !10
  %i.bj = fneg float %i.bi
  store float %i.bj, ptr %i.bg, align 4, !tbaa !10
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bl = getelementptr i8, ptr %i.bd, i64 8
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !10
  %i.bn = fneg float %i.bm
  store float %i.bn, ptr %i.bk, align 4, !tbaa !10
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 36
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 48
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.split.i.i, %.lr.ph.i.i18
  %.061.i.i = phi i64 [ %i.cc, %.lr.ph.split.i.i ], [ 0, %.lr.ph.i.i18 ] ; 8 uses
  %i.ca = sub nsw i64 3, %.061.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %.061.i.i
  store ptr %i.cb, ptr %4, align 8, !tbaa !311, !alias.scope !1173
  store i64 %i.ca, ptr %i.bp, align 8, !tbaa !107, !alias.scope !1173
  store i64 1, ptr %i.bq, align 8, !tbaa !107, !alias.scope !1173
  store ptr %7, ptr %i.br, align 8, !tbaa !70, !alias.scope !1173
  store i64 %.061.i.i, ptr %i.bs, align 8, !tbaa !107, !alias.scope !1173
  store i64 0, ptr %i.bt, align 8, !tbaa !107, !alias.scope !1173
  store i64 3, ptr %i.bu, align 8, !tbaa !1176, !alias.scope !1173
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.cc = add nuw i64 %.061.i.i, 1                ; 4 uses
  %i.cd = sub nsw i64 2, %.061.i.i
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cc
  %.idx.i.i.i.i.i.i.i = mul nuw nsw i64 %.061.i.i, 12
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.idx.i.i.i.i.i.i.i
  store ptr %i.cf, ptr %5, align 8, !tbaa !1178, !alias.scope !1179
  store i64 %i.cd, ptr %i.bv, align 8, !tbaa !107, !alias.scope !1179
  store ptr %0, ptr %i.bw, align 8, !tbaa !247, !alias.scope !1179
  store i64 %i.cc, ptr %i.bx, align 8, !tbaa !107, !alias.scope !1179
  store i64 %.061.i.i, ptr %i.by, align 8, !tbaa !107, !alias.scope !1179
  store i64 3, ptr %i.bz, align 8, !tbaa !1181, !alias.scope !1179
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.061.i.i
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKNS2_IfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEEvRKT_RKfPf(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.cg, ptr noundef nonnull align 4 dereferenceable(4) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %exitcond.not = icmp eq i64 %i.cc, %.lcssa
  br i1 %exitcond.not, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.i.i, !llvm.loop !1166

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %.sroa.728.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.728.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr %0, ptr %8, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %.lcssa, ptr %.sroa.426.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %.lcssa, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %0, ptr %.sroa.627.0..sroa_idx, align 8
  %.sroa.829.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i64 3, ptr %.sroa.829.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  store ptr %2, ptr %9, align 8, !tbaa !313, !alias.scope !1182
  %i.ch = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %.lcssa, ptr %i.ch, align 8, !tbaa !107, !alias.scope !1182
  %i.ci = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %2, ptr %i.ci, align 8, !tbaa !70, !alias.scope !1182
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 0, ptr %i.cj, align 8, !tbaa !107, !alias.scope !1182
  %i.ck = getelementptr inbounds nuw i8, ptr %9, i64 48
  store i64 3, ptr %i.ck, align 8, !tbaa !1185, !alias.scope !1182
  %i.cl = ptrtoint ptr %2 to i64
  %i.cm = lshr exact i64 %i.cl, 2
  %i.cn = sub nsw i64 0, %i.cm
  %i.co = and i64 %i.cn, 3                        ; 2 uses
  %i.cp = call i64 @llvm.smin.i64(i64 %i.co, i64 %.lcssa) ; 8 uses
  %i.cq = sub i64 %.lcssa, %i.cp                  ; 4 uses
  %i.cr = and i64 %i.cq, 9223372036854775804      ; 2 uses
  %i.cs = or disjoint i64 %i.cr, %i.cp
  %.not53 = icmp eq i64 %i.co, 0
  br i1 %.not53, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEEESA_NS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ct = shl nuw i64 %i.cp, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr nonnull align 4 %7, i64 %i.ct, i1 false), !tbaa !10
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEEESA_NS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEEESA_NS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %10 = icmp samesign ugt i64 %i.cq, 3
  br i1 %10, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEEESA_NS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cu = shl nuw i64 %i.cp, 2                    ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.cu
  %scevgep56 = getelementptr i8, ptr %7, i64 %i.cu
  %i.cv = add nsw i64 %i.cp, %i.cr
  %i.cw = add nsw i64 %i.cp, 4
  %umax = call i64 @llvm.umax.i64(i64 %i.cv, i64 %i.cw)
  %i.cx = xor i64 %i.cp, -1
  %i.cy = add i64 %umax, %i.cx
  %i.cz = shl i64 %i.cy, 2
  %i.da = and i64 %i.cz, -16
  %i.db = add i64 %i.da, 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %scevgep, ptr align 4 %scevgep56, i64 %i.db, i1 false), !tbaa !11
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEEESA_NS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dc = icmp samesign ult i64 %i.cs, %.lcssa
  br i1 %i.dc, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen5BlockINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEaSINS_5SolveINS_14TriangularViewIKNS0_IKNS1_IfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELj2EEES3_EEEERS3_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dd = and i64 %i.cq, 4611686018427387900
  %i.de = add nsw i64 %i.cp, %i.dd
  %i.df = shl i64 %i.de, 2                        ; 2 uses
  %scevgep57 = getelementptr i8, ptr %2, i64 %i.df
  %scevgep58 = getelementptr i8, ptr %7, i64 %i.df
  %i.dg = shl i64 %i.cq, 2
  %i.dh = and i64 %i.dg, 12
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep57, ptr align 4 %scevgep58, i64 %i.dh, i1 false), !tbaa !10
  br label %_ZN5Eigen5BlockINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEaSINS_5SolveINS_14TriangularViewIKNS0_IKNS1_IfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELj2EEES3_EEEERS3_RKNS_9DenseBaseIT_EE.exit

_ZN5Eigen5BlockINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEaSINS_5SolveINS_14TriangularViewIKNS0_IKNS1_IfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELj2EEES3_EEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZN5Eigen8internal26triangular_solver_selectorIKNS_5BlockIKNS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEENS2_INS3_IfLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1ELi2ELi0ELi1EE3runERS7_RS9_(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(56) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  %i.di = icmp samesign ult i64 %.lcssa, 3
  br i1 %i.di, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.b

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen5BlockINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEaSINS_5SolveINS_14TriangularViewIKNS0_IKNS1_IfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELj2EEES3_EEEERS3_RKNS_9DenseBaseIT_EE.exit
  %i.dj = sub nuw nsw i64 3, %.lcssa              ; 3 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.lcssa ; 3 uses
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = lshr exact i64 %i.dl, 2
  %i.dn = sub nsw i64 0, %i.dm
  %i.do = and i64 %i.dn, 3                        ; 3 uses
  %i.dp = call i64 @llvm.umin.i64(i64 %i.do, i64 %i.dj) ; 3 uses
  %i.dq = sub nsw i64 %i.dj, %i.dp
  %.not = icmp eq i64 %i.do, 0
  br i1 %.not, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i:       ; preds = %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dr = shl nuw nsw i64 %i.dp, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dk, i8 0, i64 %i.dr, i1 false), !tbaa !10
  %i.ds = shl nuw nsw i64 %i.dp, 2
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i46 = phi i64 [ %i.ds, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i ], [ 0, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.dt = icmp samesign ult i64 %i.do, %i.dj
  br i1 %i.dt, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE7setZeroEv.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i:     ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %scevgep1.i = getelementptr i8, ptr %i.dk, i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i46
  %i.du = shl nuw nsw i64 %i.dq, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep1.i, i8 0, i64 %i.du, i1 false), !tbaa !10
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE7setZeroEv.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i
  call void @_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEEE29applyZAdjointOnTheLeftInPlaceINS1_IfLi3ELi1ELi0ELi3ELi1EEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 4 dereferenceable(12) %2)
  br label %bb.b

bb.b:                                             ; preds = %_ZN5Eigen5BlockINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEaSINS_5SolveINS_14TriangularViewIKNS0_IKNS1_IfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELj2EEES3_EEEERS3_RKNS_9DenseBaseIT_EE.exit, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE7setZeroEv.exit
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %3, i8 0, i64 3, i1 false), !tbaa !13
  br label %.preheader.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %bb.e, %bb.d
  %i.dw = icmp slt i64 %.163.i.i.i.i.i.i.i.i, 2
  br i1 %i.dw, label %.preheader.i.i.i.i.i.i.i.i.backedge, label %_ZN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEaSINS_7ProductINS_17PermutationMatrixILi3ELi3EiEES1_Li2EEEEERS1_RKNS_9DenseBaseIT_EE.exit

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i.i.i.i.backedge, %bb.b
  %.163.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.b ], [ %.163.i.i.i.i.i.i.i.i.be, %.preheader.i.i.i.i.i.i.i.i.backedge ] ; 9 uses
  %i.dx = getelementptr inbounds i8, ptr %3, i64 %.163.i.i.i.i.i.i.i.i
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !13, !range !14, !noundef !15
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.preheader.i.i.i.i.i.i.i.i
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %.163.i.i.i.i.i.i.i.i, 2
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %_ZN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEaSINS_7ProductINS_17PermutationMatrixILi3ELi3EiEES1_Li2EEEEERS1_RKNS_9DenseBaseIT_EE.exit, label %.preheader.i.i.i.i.i.i.i.i.backedge

.preheader.i.i.i.i.i.i.i.i.backedge:              ; preds = %bb.c, %.loopexit.i.i.i.i.i.i.i.i
  %.163.i.i.i.i.i.i.i.i.be = add i64 %.163.i.i.i.i.i.i.i.i, 1
  br label %.preheader.i.i.i.i.i.i.i.i, !llvm.loop !1169

bb.d:                                             ; preds = %.preheader.i.i.i.i.i.i.i.i
  %i.ea = getelementptr inbounds i8, ptr %3, i64 %.163.i.i.i.i.i.i.i.i
  store i8 1, ptr %i.ea, align 1, !tbaa !13
  %.035.in.in64.i.i.i.i.i.i.i.i = getelementptr inbounds [4 x i8], ptr %i.dv, i64 %.163.i.i.i.i.i.i.i.i
  %.035.in65.i.i.i.i.i.i.i.i = load i32, ptr %.035.in.in64.i.i.i.i.i.i.i.i, align 4, !tbaa !113
  %.03566.i.i.i.i.i.i.i.i = sext i32 %.035.in65.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %.not3767.i.i.i.i.i.i.i.i = icmp eq i64 %.163.i.i.i.i.i.i.i.i, %.03566.i.i.i.i.i.i.i.i
  br i1 %.not3767.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.d
  %i.eb = getelementptr inbounds [4 x i8], ptr %2, i64 %.163.i.i.i.i.i.i.i.i ; 2 uses
  %.pre.i.i.i.i.i.i.i.i = load float, ptr %i.eb, align 4, !tbaa !10
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i.i
  %i.ec = phi float [ %.pre.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ee, %bb.e ]
  %.03568.i.i.i.i.i.i.i.i = phi i64 [ %.03566.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.035.i.i.i.i.i.i.i.i, %bb.e ] ; 3 uses
  %i.ed = getelementptr inbounds [4 x i8], ptr %2, i64 %.03568.i.i.i.i.i.i.i.i ; 2 uses
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !10 ; 2 uses
  store float %i.ec, ptr %i.ed, align 4, !tbaa !10
  store float %i.ee, ptr %i.eb, align 4, !tbaa !10
  %i.ef = getelementptr inbounds i8, ptr %3, i64 %.03568.i.i.i.i.i.i.i.i
  store i8 1, ptr %i.ef, align 1, !tbaa !13
  %.035.in.in.i.i.i.i.i.i.i.i = getelementptr inbounds [4 x i8], ptr %i.dv, i64 %.03568.i.i.i.i.i.i.i.i
  %.035.in.i.i.i.i.i.i.i.i = load i32, ptr %.035.in.in.i.i.i.i.i.i.i.i, align 4, !tbaa !113
  %.035.i.i.i.i.i.i.i.i = sext i32 %.035.in.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %.not37.i.i.i.i.i.i.i.i = icmp eq i64 %.163.i.i.i.i.i.i.i.i, %.035.i.i.i.i.i.i.i.i
  br i1 %.not37.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %bb.e, !llvm.loop !1170

_ZN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEaSINS_7ProductINS_17PermutationMatrixILi3ELi3EiEES1_Li2EEEEERS1_RKNS_9DenseBaseIT_EE.exit: ; preds = %.loopexit.i.i.i.i.i.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEaSINS_7ProductINS_17PermutationMatrixILi3ELi3EiEES1_Li2EEEEERS1_RKNS_9DenseBaseIT_EE.exit, %_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEEE4rankEv.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEEE29applyZAdjointOnTheLeftInPlaceINS1_IfLi3ELi1ELi0ELi3ELi1EEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.b = load float, ptr %i.a, align 4, !tbaa !242
  %i.c = tail call noundef float @llvm.fabs.f32(float %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 125
  %i.e = load i8, ptr %i.d, align 1, !tbaa !68, !range !14, !noundef !15
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = load float, ptr %i.g, align 8
  %i.i = select i1 %i.f, float %i.h, float f0x34C00000
  %.fr122 = freeze float %i.i
  %i.j = fmul float %i.c, %.fr122                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.l = load i64, ptr %i.k, align 8, !tbaa !243  ; 5 uses
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %.lr.ph.i.i.preheader, label %_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.l, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader127, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.l, 9223372036854775804      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x float> poison, float %i.j, i64 0
  %broadcast.splat = shufflevector <2 x float> %broadcast.splatinsert, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aq, %vector.body ]
  %vec.phi126 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
  %i.n = or disjoint i64 %index, 1                ; 2 uses
  %i.o = or disjoint i64 %index, 2                ; 2 uses
  %i.p = or disjoint i64 %index, 3                ; 2 uses
  %i.q = getelementptr [4 x i8], ptr %0, i64 %index
  %i.r = getelementptr [4 x i8], ptr %0, i64 %i.n
  %i.s = getelementptr [4 x i8], ptr %0, i64 %i.o
  %i.t = getelementptr [4 x i8], ptr %0, i64 %i.p
  %i.u = mul i64 %index, 12
  %i.v = mul i64 %i.n, 12
  %i.w = mul i64 %i.o, 12
  %i.x = mul i64 %i.p, 12
  %i.y = getelementptr i8, ptr %i.q, i64 %i.u
  %i.z = getelementptr i8, ptr %i.r, i64 %i.v
  %i.aa = getelementptr i8, ptr %i.s, i64 %i.w
  %i.ab = getelementptr i8, ptr %i.t, i64 %i.x
  %i.ac = load float, ptr %i.y, align 8, !tbaa !10
  %i.ad = load float, ptr %i.z, align 8, !tbaa !10
  %i.ae = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.af = insertelement <2 x float> %i.ae, float %i.ad, i64 1
  %i.ag = load float, ptr %i.aa, align 8, !tbaa !10
  %i.ah = load float, ptr %i.ab, align 8, !tbaa !10
  %i.ai = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.aj = insertelement <2 x float> %i.ai, float %i.ah, i64 1
  %i.ak = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.af)
  %i.al = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.aj)
  %i.am = fcmp ogt <2 x float> %i.ak, %broadcast.splat
  %i.an = fcmp ogt <2 x float> %i.al, %broadcast.splat
  %i.ao = zext <2 x i1> %i.am to <2 x i64>
  %i.ap = zext <2 x i1> %i.an to <2 x i64>
  %i.aq = add <2 x i64> %vec.phi, %i.ao           ; 2 uses
  %i.ar = add <2 x i64> %vec.phi126, %i.ap        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !1186

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ar, %i.aq
  %i.at = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.l, %n.vec
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS3_INS_7ProductINS_9TransposeIKNS_5BlockINSD_INS5_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSD_INSD_ISE_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EEELi1ELi0EE3runERSP_:bb.a
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit79.unr-lcssa, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit, !llvm.loop !1354
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEEE11_solve_implINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIfEEKNS1_IfLi2ELi1ELi0ELi2ELi1EEEEES9_EEvRKT_RT0_(ptr noundef nonnull align 16 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(9) %1, ptr noundef nonnull align 4 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Matrix.5984", align 2 ; 6 uses
  %4 = alloca %"class.Eigen::Block.5235", align 8 ; 10 uses
  %5 = alloca %"class.Eigen::Block.5257", align 8 ; 9 uses
  %6 = alloca %"class.Eigen::Matrix.1129", align 4 ; 3 uses
  %7 = alloca %"class.Eigen::Matrix.4211", align 4 ; 9 uses
  %8 = alloca %"class.Eigen::TriangularView.5191", align 8 ; 9 uses
  %9 = alloca %"class.Eigen::Block.5204", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load float, ptr %i.a, align 16, !tbaa !97
  %i.c = tail call noundef float @llvm.fabs.f32(float %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.e = load i8, ptr %i.d, align 1, !tbaa !96, !range !14, !noundef !15
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.h = load float, ptr %i.g, align 4
  %i.i = select i1 %i.f, float %i.h, float f0x34800000
  %i.j = fmul float %i.c, %i.i                    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = load i64, ptr %i.k, align 8, !tbaa !98   ; 5 uses
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %.lr.ph.i.i.preheader, label %_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEEE4rankEv.exit.thread

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.l, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader72, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.l, 9223372036854775804      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x float> poison, float %i.j, i64 0
  %broadcast.splat = shufflevector <2 x float> %broadcast.splatinsert, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aq, %vector.body ]
  %vec.phi71 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
  %i.n = or disjoint i64 %index, 1                ; 2 uses
  %i.o = or disjoint i64 %index, 2                ; 2 uses
  %i.p = or disjoint i64 %index, 3                ; 2 uses
  %i.q = getelementptr [4 x i8], ptr %0, i64 %index
  %i.r = getelementptr [4 x i8], ptr %0, i64 %i.n
  %i.s = getelementptr [4 x i8], ptr %0, i64 %i.o
  %i.t = getelementptr [4 x i8], ptr %0, i64 %i.p
  %i.u = shl i64 %index, 3
  %i.v = shl i64 %i.n, 3
  %i.w = shl i64 %i.o, 3
  %i.x = shl i64 %i.p, 3
  %i.y = getelementptr i8, ptr %i.q, i64 %i.u
  %i.z = getelementptr i8, ptr %i.r, i64 %i.v
  %i.aa = getelementptr i8, ptr %i.s, i64 %i.w
  %i.ab = getelementptr i8, ptr %i.t, i64 %i.x
  %i.ac = load float, ptr %i.y, align 16, !tbaa !10
  %i.ad = load float, ptr %i.z, align 4, !tbaa !10
  %i.ae = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.af = insertelement <2 x float> %i.ae, float %i.ad, i64 1
  %i.ag = load float, ptr %i.aa, align 8, !tbaa !10
  %i.ah = load float, ptr %i.ab, align 4, !tbaa !10
  %i.ai = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.aj = insertelement <2 x float> %i.ai, float %i.ah, i64 1
  %i.ak = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.af)
  %i.al = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.aj)
  %i.am = fcmp ogt <2 x float> %i.ak, %broadcast.splat
  %i.an = fcmp ogt <2 x float> %i.al, %broadcast.splat
  %i.ao = zext <2 x i1> %i.am to <2 x i64>
  %i.ap = zext <2 x i1> %i.an to <2 x i64>
  %i.aq = add <2 x i64> %vec.phi, %i.ao           ; 2 uses
  %i.ar = add <2 x i64> %vec.phi71, %i.ap         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !1371

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ar, %i.aq
  %i.at = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEEE4rankEv.exit, label %.lr.ph.i.i.preheader72

.lr.ph.i.i.preheader72:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.09.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  %.078.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader72, %.lr.ph.i.i
  %.09.i.i = phi i64 [ %i.bb, %.lr.ph.i.i ], [ %.09.i.i.ph, %.lr.ph.i.i.preheader72 ] ; 3 uses
  %.078.i.i = phi i64 [ %i.ba, %.lr.ph.i.i ], [ %.078.i.i.ph, %.lr.ph.i.i.preheader72 ]
  %i.au = getelementptr [4 x i8], ptr %0, i64 %.09.i.i
  %.idx.i.i.i = shl i64 %.09.i.i, 3
  %i.av = getelementptr i8, ptr %i.au, i64 %.idx.i.i.i
  %i.aw = load float, ptr %i.av, align 4, !tbaa !10
  %i.ax = tail call noundef float @llvm.fabs.f32(float %i.aw)
  %i.ay = fcmp ogt float %i.ax, %i.j
  %i.az = zext i1 %i.ay to i64
  %i.ba = add i64 %.078.i.i, %i.az                ; 2 uses
  %i.bb = add nuw nsw i64 %.09.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bb, %i.l
  br i1 %exitcond.not.i.i, label %_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEEE4rankEv.exit, label %.lr.ph.i.i, !llvm.loop !1372

_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEEE4rankEv.exit: ; preds = %.lr.ph.i.i, %middle.block
  %.lcssa = phi i64 [ %i.at, %middle.block ], [ %i.ba, %.lr.ph.i.i ] ; 9 uses
  %i.bc = icmp eq i64 %.lcssa, 0
  br i1 %i.bc, label %_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEEE4rankEv.exit.thread, label %.lr.ph.i.i18

_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEEE4rankEv.exit.thread: ; preds = %bb.a, %_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEEE4rankEv.exit
  store <2 x float> zeroinitializer, ptr %2, align 4, !tbaa !10
  br label %bb.f

.lr.ph.i.i18:                                     ; preds = %_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEEE4rankEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.bd = load ptr, ptr %1, align 8, !tbaa !1385, !nonnull !15, !align !183 ; 2 uses
  %i.be = load float, ptr %i.bd, align 4, !tbaa !10
  %i.bf = fneg float %i.be
  store float %i.bf, ptr %7, align 4, !tbaa !10
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.bh = getelementptr i8, ptr %i.bd, i64 4
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !10
  %i.bj = fneg float %i.bi
  store float %i.bj, ptr %i.bg, align 4, !tbaa !10
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 48
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.split.i.i, %.lr.ph.i.i18
  %.061.i.i = phi i64 [ %i.by, %.lr.ph.split.i.i ], [ 0, %.lr.ph.i.i18 ] ; 8 uses
  %i.bw = sub nsw i64 2, %.061.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %.061.i.i
  store ptr %i.bx, ptr %4, align 8, !tbaa !341, !alias.scope !1386
  store i64 %i.bw, ptr %i.bl, align 8, !tbaa !107, !alias.scope !1386
  store i64 1, ptr %i.bm, align 8, !tbaa !107, !alias.scope !1386
  store ptr %7, ptr %i.bn, align 8, !tbaa !100, !alias.scope !1386
  store i64 %.061.i.i, ptr %i.bo, align 8, !tbaa !107, !alias.scope !1386
  store i64 0, ptr %i.bp, align 8, !tbaa !107, !alias.scope !1386
  store i64 2, ptr %i.bq, align 8, !tbaa !1389, !alias.scope !1386
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.by = add nuw i64 %.061.i.i, 1                ; 4 uses
  %i.bz = sub nsw i64 1, %.061.i.i
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.by
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %.061.i.i, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.idx.i.i.i.i.i.i.i
  store ptr %i.cb, ptr %5, align 8, !tbaa !1391, !alias.scope !1392
  store i64 %i.bz, ptr %i.br, align 8, !tbaa !107, !alias.scope !1392
  store ptr %0, ptr %i.bs, align 8, !tbaa !331, !alias.scope !1392
  store i64 %i.by, ptr %i.bt, align 8, !tbaa !107, !alias.scope !1392
  store i64 %.061.i.i, ptr %i.bu, align 8, !tbaa !107, !alias.scope !1392
  store i64 2, ptr %i.bv, align 8, !tbaa !1394, !alias.scope !1392
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.061.i.i
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKNS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEEvRKT_RKfPf(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.cc, ptr noundef nonnull align 4 dereferenceable(4) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %exitcond.not = icmp eq i64 %i.by, %.lcssa
  br i1 %exitcond.not, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.i.i, !llvm.loop !1379

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %.sroa.728.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.728.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr %0, ptr %8, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %.lcssa, ptr %.sroa.426.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %.lcssa, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %0, ptr %.sroa.627.0..sroa_idx, align 8
  %.sroa.829.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i64 2, ptr %.sroa.829.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  store ptr %2, ptr %9, align 8, !tbaa !343, !alias.scope !1395
  %i.cd = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %.lcssa, ptr %i.cd, align 8, !tbaa !107, !alias.scope !1395
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %2, ptr %i.ce, align 8, !tbaa !100, !alias.scope !1395
  %i.cf = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 0, ptr %i.cf, align 8, !tbaa !107, !alias.scope !1395
  %i.cg = getelementptr inbounds nuw i8, ptr %9, i64 48
  store i64 2, ptr %i.cg, align 8, !tbaa !1398, !alias.scope !1395
  %i.ch = ptrtoint ptr %2 to i64
  %i.ci = lshr exact i64 %i.ch, 2
  %i.cj = sub nsw i64 0, %i.ci
  %i.ck = and i64 %i.cj, 3                        ; 2 uses
  %i.cl = call i64 @llvm.smin.i64(i64 %i.ck, i64 %.lcssa) ; 8 uses
  %i.cm = sub i64 %.lcssa, %i.cl                  ; 4 uses
  %i.cn = and i64 %i.cm, 9223372036854775804      ; 2 uses
  %i.co = or disjoint i64 %i.cn, %i.cl
  %.not53 = icmp eq i64 %i.ck, 0
  br i1 %.not53, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEESA_NS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cp = shl nuw i64 %i.cl, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr nonnull align 4 %7, i64 %i.cp, i1 false), !tbaa !10
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEESA_NS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEESA_NS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %10 = icmp samesign ugt i64 %i.cm, 3
  br i1 %10, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEESA_NS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cq = shl nuw i64 %i.cl, 2                    ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.cq
  %scevgep56 = getelementptr i8, ptr %7, i64 %i.cq
  %i.cr = add nsw i64 %i.cl, %i.cn
  %i.cs = add nsw i64 %i.cl, 4
  %umax = call i64 @llvm.umax.i64(i64 %i.cr, i64 %i.cs)
  %i.ct = xor i64 %i.cl, -1
  %i.cu = add i64 %umax, %i.ct
  %i.cv = shl i64 %i.cu, 2
  %i.cw = and i64 %i.cv, -16
  %i.cx = add i64 %i.cw, 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %scevgep, ptr align 4 %scevgep56, i64 %i.cx, i1 false), !tbaa !11
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEESA_NS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cy = icmp samesign ult i64 %i.co, %.lcssa
  br i1 %i.cy, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEaSINS_5SolveINS_14TriangularViewIKNS0_IKNS1_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELj2EEES3_EEEERS3_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cz = and i64 %i.cm, 4611686018427387900
  %i.da = add nsw i64 %i.cl, %i.cz
  %i.db = shl i64 %i.da, 2                        ; 2 uses
  %scevgep57 = getelementptr i8, ptr %2, i64 %i.db
  %scevgep58 = getelementptr i8, ptr %7, i64 %i.db
  %i.dc = shl i64 %i.cm, 2
  %i.dd = and i64 %i.dc, 12
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep57, ptr align 4 %scevgep58, i64 %i.dd, i1 false), !tbaa !10
  br label %_ZN5Eigen5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEaSINS_5SolveINS_14TriangularViewIKNS0_IKNS1_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELj2EEES3_EEEERS3_RKNS_9DenseBaseIT_EE.exit

_ZN5Eigen5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEaSINS_5SolveINS_14TriangularViewIKNS0_IKNS1_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELj2EEES3_EEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZN5Eigen8internal26triangular_solver_selectorIKNS_5BlockIKNS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEENS2_INS3_IfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEELi1ELi2ELi0ELi1EE3runERS7_RS9_(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(56) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  %i.de = icmp eq i64 %.lcssa, 1
  br i1 %i.de, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.b

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEaSINS_5SolveINS_14TriangularViewIKNS0_IKNS1_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELj2EEES3_EEEERS3_RKNS_9DenseBaseIT_EE.exit
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.df, align 4
  call void @_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEEE29applyZAdjointOnTheLeftInPlaceINS1_IfLi2ELi1ELi0ELi2ELi1EEEEEvRT_(ptr noundef nonnull align 16 dereferenceable(128) %0, ptr noundef nonnull align 4 dereferenceable(8) %2)
  br label %bb.b

bb.b:                                             ; preds = %_ZN5Eigen5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEaSINS_5SolveINS_14TriangularViewIKNS0_IKNS1_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELj2EEES3_EEEERS3_RKNS_9DenseBaseIT_EE.exit, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store i16 0, ptr %3, align 2
  br label %.preheader.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %bb.e, %bb.d
  %i.dh = icmp slt i64 %.163.i.i.i.i.i.i.i.i, 1
  br i1 %i.dh, label %.preheader.i.i.i.i.i.i.i.i.backedge, label %_ZN5Eigen6MatrixIfLi2ELi1ELi0ELi2ELi1EEaSINS_7ProductINS_17PermutationMatrixILi2ELi2EiEES1_Li2EEEEERS1_RKNS_9DenseBaseIT_EE.exit

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i.i.i.i.backedge, %bb.b
  %.163.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.b ], [ %.163.i.i.i.i.i.i.i.i.be, %.preheader.i.i.i.i.i.i.i.i.backedge ] ; 9 uses
  %i.di = getelementptr inbounds i8, ptr %3, i64 %.163.i.i.i.i.i.i.i.i
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !13, !range !14, !noundef !15
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.preheader.i.i.i.i.i.i.i.i
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %.163.i.i.i.i.i.i.i.i, 1
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %_ZN5Eigen6MatrixIfLi2ELi1ELi0ELi2ELi1EEaSINS_7ProductINS_17PermutationMatrixILi2ELi2EiEES1_Li2EEEEERS1_RKNS_9DenseBaseIT_EE.exit, label %.preheader.i.i.i.i.i.i.i.i.backedge

.preheader.i.i.i.i.i.i.i.i.backedge:              ; preds = %bb.c, %.loopexit.i.i.i.i.i.i.i.i
  %.163.i.i.i.i.i.i.i.i.be = add i64 %.163.i.i.i.i.i.i.i.i, 1
  br label %.preheader.i.i.i.i.i.i.i.i, !llvm.loop !1382

bb.d:                                             ; preds = %.preheader.i.i.i.i.i.i.i.i
  %i.dl = getelementptr inbounds i8, ptr %3, i64 %.163.i.i.i.i.i.i.i.i
  store i8 1, ptr %i.dl, align 1, !tbaa !13
  %.035.in.in64.i.i.i.i.i.i.i.i = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %.163.i.i.i.i.i.i.i.i
  %.035.in65.i.i.i.i.i.i.i.i = load i32, ptr %.035.in.in64.i.i.i.i.i.i.i.i, align 4, !tbaa !113
  %.03566.i.i.i.i.i.i.i.i = sext i32 %.035.in65.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %.not3767.i.i.i.i.i.i.i.i = icmp eq i64 %.163.i.i.i.i.i.i.i.i, %.03566.i.i.i.i.i.i.i.i
  br i1 %.not3767.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.d
  %i.dm = getelementptr inbounds [4 x i8], ptr %2, i64 %.163.i.i.i.i.i.i.i.i ; 2 uses
  %.pre.i.i.i.i.i.i.i.i = load float, ptr %i.dm, align 4, !tbaa !10
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i.i
  %i.dn = phi float [ %.pre.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.dp, %bb.e ]
  %.03568.i.i.i.i.i.i.i.i = phi i64 [ %.03566.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.035.i.i.i.i.i.i.i.i, %bb.e ] ; 3 uses
  %i.do = getelementptr inbounds [4 x i8], ptr %2, i64 %.03568.i.i.i.i.i.i.i.i ; 2 uses
  %i.dp = load float, ptr %i.do, align 4, !tbaa !10 ; 2 uses
  store float %i.dn, ptr %i.do, align 4, !tbaa !10
  store float %i.dp, ptr %i.dm, align 4, !tbaa !10
  %i.dq = getelementptr inbounds i8, ptr %3, i64 %.03568.i.i.i.i.i.i.i.i
  store i8 1, ptr %i.dq, align 1, !tbaa !13
  %.035.in.in.i.i.i.i.i.i.i.i = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %.03568.i.i.i.i.i.i.i.i
  %.035.in.i.i.i.i.i.i.i.i = load i32, ptr %.035.in.in.i.i.i.i.i.i.i.i, align 4, !tbaa !113
  %.035.i.i.i.i.i.i.i.i = sext i32 %.035.in.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %.not37.i.i.i.i.i.i.i.i = icmp eq i64 %.163.i.i.i.i.i.i.i.i, %.035.i.i.i.i.i.i.i.i
  br i1 %.not37.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %bb.e, !llvm.loop !1383

_ZN5Eigen6MatrixIfLi2ELi1ELi0ELi2ELi1EEaSINS_7ProductINS_17PermutationMatrixILi2ELi2EiEES1_Li2EEEEERS1_RKNS_9DenseBaseIT_EE.exit: ; preds = %.loopexit.i.i.i.i.i.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen6MatrixIfLi2ELi1ELi0ELi2ELi1EEaSINS_7ProductINS_17PermutationMatrixILi2ELi2EiEES1_Li2EEEEERS1_RKNS_9DenseBaseIT_EE.exit, %_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEEE4rankEv.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEEE29applyZAdjointOnTheLeftInPlaceINS1_IfLi2ELi1ELi0ELi2ELi1EEEEEvRT_(ptr noundef nonnull align 16 dereferenceable(128) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load float, ptr %i.a, align 16, !tbaa !97
  %i.c = tail call noundef float @llvm.fabs.f32(float %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.e = load i8, ptr %i.d, align 1, !tbaa !96, !range !14, !noundef !15
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.h = load float, ptr %i.g, align 4
  %i.i = select i1 %i.f, float %i.h, float f0x34800000
  %.fr120 = freeze float %i.i
  %i.j = fmul float %i.c, %.fr120                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = load i64, ptr %i.k, align 8, !tbaa !98   ; 5 uses
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %.lr.ph.i.i.preheader, label %_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.l, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader126, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.l, 9223372036854775804      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x float> poison, float %i.j, i64 0
  %broadcast.splat = shufflevector <2 x float> %broadcast.splatinsert, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aq, %vector.body ]
  %vec.phi125 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
  %i.n = or disjoint i64 %index, 1                ; 2 uses
  %i.o = or disjoint i64 %index, 2                ; 2 uses
  %i.p = or disjoint i64 %index, 3                ; 2 uses
  %i.q = getelementptr [4 x i8], ptr %0, i64 %index
  %i.r = getelementptr [4 x i8], ptr %0, i64 %i.n
  %i.s = getelementptr [4 x i8], ptr %0, i64 %i.o
  %i.t = getelementptr [4 x i8], ptr %0, i64 %i.p
  %i.u = shl i64 %index, 3
  %i.v = shl i64 %i.n, 3
  %i.w = shl i64 %i.o, 3
  %i.x = shl i64 %i.p, 3
  %i.y = getelementptr i8, ptr %i.q, i64 %i.u
  %i.z = getelementptr i8, ptr %i.r, i64 %i.v
  %i.aa = getelementptr i8, ptr %i.s, i64 %i.w
  %i.ab = getelementptr i8, ptr %i.t, i64 %i.x
  %i.ac = load float, ptr %i.y, align 16, !tbaa !10
  %i.ad = load float, ptr %i.z, align 4, !tbaa !10
  %i.ae = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.af = insertelement <2 x float> %i.ae, float %i.ad, i64 1
  %i.ag = load float, ptr %i.aa, align 8, !tbaa !10
  %i.ah = load float, ptr %i.ab, align 4, !tbaa !10
  %i.ai = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.aj = insertelement <2 x float> %i.ai, float %i.ah, i64 1
  %i.ak = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.af)
  %i.al = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.aj)
  %i.am = fcmp ogt <2 x float> %i.ak, %broadcast.splat
  %i.an = fcmp ogt <2 x float> %i.al, %broadcast.splat
  %i.ao = zext <2 x i1> %i.am to <2 x i64>
  %i.ap = zext <2 x i1> %i.an to <2 x i64>
  %i.aq = add <2 x i64> %vec.phi, %i.ao           ; 2 uses
  %i.ar = add <2 x i64> %vec.phi125, %i.ap        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !1399

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ar, %i.aq
  %i.at = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.preheader, label %.lr.ph.i.i.preheader126

.lr.ph.i.i.preheader126:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.09.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  %.078.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader126, %.lr.ph.i.i
  %.09.i.i = phi i64 [ %i.bb, %.lr.ph.i.i ], [ %.09.i.i.ph, %.lr.ph.i.i.preheader126 ] ; 3 uses
  %.078.i.i = phi i64 [ %i.ba, %.lr.ph.i.i ], [ %.078.i.i.ph, %.lr.ph.i.i.preheader126 ]
  %i.au = getelementptr [4 x i8], ptr %0, i64 %.09.i.i
  %.idx.i.i.i = shl i64 %.09.i.i, 3
  %i.av = getelementptr i8, ptr %i.au, i64 %.idx.i.i.i
  %i.aw = load float, ptr %i.av, align 4, !tbaa !10
  %i.ax = tail call noundef float @llvm.fabs.f32(float %i.aw)
  %i.ay = fcmp ogt float %i.ax, %i.j
  %i.az = zext i1 %i.ay to i64
  %i.ba = add i64 %.078.i.i, %i.az                ; 2 uses
  %i.bb = add nuw nsw i64 %.09.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bb, %i.l
  br i1 %exitcond.not.i.i, label %_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.preheader, label %.lr.ph.i.i, !llvm.loop !1400

_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.preheader: ; preds = %.lr.ph.i.i, %middle.block
  %.lcssa124 = phi i64 [ %i.at, %middle.block ], [ %i.ba, %.lr.ph.i.i ] ; 5 uses
  %i.bc = icmp sgt i64 %.lcssa124, 0
  br i1 %i.bc, label %.lr.ph, label %_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge

end_hunk_1
