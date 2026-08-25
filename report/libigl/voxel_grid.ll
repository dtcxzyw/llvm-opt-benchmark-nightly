Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/voxel_grid?download=true
inline.NumInlined: 6383
inline.NumDeleted: 3754
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 54
loop-unroll.NumUnrolled: 81
begin_hunk_0_@_ZN3igl10voxel_gridIfN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEENS2_IiLi1ELi3ELi1ELi1ELi3EEEEEvRKNS1_10AlignedBoxIT_Li3EEEiiRNS1_15PlainObjectBaseIT0_EERNSA_IT1_EE:bb.a
  %index171 = phi i64 [ 0, %vector.ph168 ], [ %index.next176, %vector.body170 ] ; 2 uses
  %i.be = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i38, i64 %index171 ; 3 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 16     ; 2 uses
  %wide.load172 = load <4 x float>, ptr %i.be, align 4, !tbaa !59, !alias.scope !102, !noalias !99
  %wide.load173 = load <4 x float>, ptr %i.bf, align 4, !tbaa !59, !alias.scope !102, !noalias !99
  %i.bg = fadd <4 x float> %broadcast.splat175, %wide.load172
  %i.bh = fadd <4 x float> %broadcast.splat175, %wide.load173
  store <4 x float> %i.bg, ptr %i.be, align 4, !tbaa !59, !alias.scope !102, !noalias !99
  store <4 x float> %i.bh, ptr %i.bf, align 4, !tbaa !59, !alias.scope !102, !noalias !99
  %index.next176 = add nuw i64 %index171, 8       ; 2 uses
  %i.bi = icmp eq i64 %index.next176, %n.vec169
  br i1 %i.bi, label %middle.block177, label %vector.body170, !llvm.loop !104

middle.block177:                                  ; preds = %vector.body170
  br i1 %cmp.n178, label %._crit_edge.i.i.i.i.i.i.i42, label %scalar.ph166.preheader

scalar.ph166.preheader:                           ; preds = %.preheader.i.i.i.i.i.i.i36, %middle.block177
  %.09.i.i.i.i.i.i.i39.ph = phi i64 [ %n.vec169, %middle.block177 ], [ 0, %.preheader.i.i.i.i.i.i.i36 ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph166.prol.loopexit, label %scalar.ph166.prol

scalar.ph166.prol:                                ; preds = %scalar.ph166.preheader, %scalar.ph166.prol
  %.09.i.i.i.i.i.i.i39.prol = phi i64 [ %i.bm, %scalar.ph166.prol ], [ %.09.i.i.i.i.i.i.i39.ph, %scalar.ph166.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph166.prol ], [ 0, %scalar.ph166.preheader ]
  %gep.i.i.i.i.i.i.i40.prol = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i38, i64 %.09.i.i.i.i.i.i.i39.prol ; 2 uses
  %i.bj = load float, ptr %i.bc, align 4, !tbaa !59
  %i.bk = load float, ptr %gep.i.i.i.i.i.i.i40.prol, align 4, !tbaa !59
  %i.bl = fadd float %i.bj, %i.bk
  store float %i.bl, ptr %gep.i.i.i.i.i.i.i40.prol, align 4, !tbaa !59
  %i.bm = add nuw nsw i64 %.09.i.i.i.i.i.i.i39.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph166.prol.loopexit, label %scalar.ph166.prol, !llvm.loop !105

scalar.ph166.prol.loopexit:                       ; preds = %scalar.ph166.prol, %scalar.ph166.preheader
  %.09.i.i.i.i.i.i.i39.unr = phi i64 [ %.09.i.i.i.i.i.i.i39.ph, %scalar.ph166.preheader ], [ %i.bm, %scalar.ph166.prol ]
  %i.bn = sub nsw i64 %.09.i.i.i.i.i.i.i39.ph, %i.at
  %i.bo = icmp ugt i64 %i.bn, -4
  br i1 %i.bo, label %._crit_edge.i.i.i.i.i.i.i42, label %scalar.ph166

._crit_edge.i.i.i.i.i.i.i42:                      ; preds = %scalar.ph166.prol.loopexit, %scalar.ph166, %middle.block177
  %i.bp = add nuw nsw i64 %.0810.i.i.i.i.i.i.i37, 1 ; 2 uses
  %exitcond12.not.i.i.i.i.i.i.i43 = icmp eq i64 %i.bp, %i.au
  br i1 %exitcond12.not.i.i.i.i.i.i.i43, label %_ZN5Eigen12VectorwiseOpINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEELi1EEpLINS1_IfLi1ELi3ELi1ELi1ELi3EEEEERS2_RKNS_9DenseBaseIT_EE.exit, label %.preheader.i.i.i.i.i.i.i36, !llvm.loop !106

scalar.ph166:                                     ; preds = %scalar.ph166.prol.loopexit, %scalar.ph166
  %.09.i.i.i.i.i.i.i39 = phi i64 [ %i.cf, %scalar.ph166 ], [ %.09.i.i.i.i.i.i.i39.unr, %scalar.ph166.prol.loopexit ] ; 5 uses
  %gep.i.i.i.i.i.i.i40 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i38, i64 %.09.i.i.i.i.i.i.i39 ; 2 uses
  %i.bq = load float, ptr %i.bc, align 4, !tbaa !59
  %i.br = load float, ptr %gep.i.i.i.i.i.i.i40, align 4, !tbaa !59
  %i.bs = fadd float %i.bq, %i.br
  store float %i.bs, ptr %gep.i.i.i.i.i.i.i40, align 4, !tbaa !59
  %i.bt = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i38, i64 %.09.i.i.i.i.i.i.i39
  %gep.i.i.i.i.i.i.i40.1 = getelementptr i8, ptr %i.bt, i64 4 ; 2 uses
  %i.bu = load float, ptr %i.bc, align 4, !tbaa !59
  %i.bv = load float, ptr %gep.i.i.i.i.i.i.i40.1, align 4, !tbaa !59
  %i.bw = fadd float %i.bu, %i.bv
  store float %i.bw, ptr %gep.i.i.i.i.i.i.i40.1, align 4, !tbaa !59
  %i.bx = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i38, i64 %.09.i.i.i.i.i.i.i39
  %gep.i.i.i.i.i.i.i40.2 = getelementptr i8, ptr %i.bx, i64 8 ; 2 uses
  %i.by = load float, ptr %i.bc, align 4, !tbaa !59
  %i.bz = load float, ptr %gep.i.i.i.i.i.i.i40.2, align 4, !tbaa !59
  %i.ca = fadd float %i.by, %i.bz
  store float %i.ca, ptr %gep.i.i.i.i.i.i.i40.2, align 4, !tbaa !59
  %i.cb = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i38, i64 %.09.i.i.i.i.i.i.i39
  %gep.i.i.i.i.i.i.i40.3 = getelementptr i8, ptr %i.cb, i64 12 ; 2 uses
  %i.cc = load float, ptr %i.bc, align 4, !tbaa !59
  %i.cd = load float, ptr %gep.i.i.i.i.i.i.i40.3, align 4, !tbaa !59
  %i.ce = fadd float %i.cc, %i.cd
  store float %i.ce, ptr %gep.i.i.i.i.i.i.i40.3, align 4, !tbaa !59
  %i.cf = add nuw nsw i64 %.09.i.i.i.i.i.i.i39, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i41.3 = icmp eq i64 %i.cf, %i.at
  br i1 %exitcond.not.i.i.i.i.i.i.i41.3, label %._crit_edge.i.i.i.i.i.i.i42, label %scalar.ph166, !llvm.loop !107

_ZN5Eigen12VectorwiseOpINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEELi1EEpLINS1_IfLi1ELi3ELi1ELi1ELi3EEEEERS2_RKNS_9DenseBaseIT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i42, %_ZN5Eigen12VectorwiseOpINS_12ArrayWrapperINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEEELi1EEmLINS_5ArrayIfLi1ELi3ELi1ELi1ELi3EEEEERS4_RKNS_9DenseBaseIT_EE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  ret void

bb.b:                                             ; preds = %bb.a
  %i.cg = fmul float %i.e, %i.u
  %i.ch = fdiv float %i.cg, %i.r
  %i.ci = tail call noundef float @llvm.ceil.f32(float %i.ch)
  %i.cj = fptosi float %i.ci to i32
  store i32 %i.cj, ptr %4, align 4, !tbaa !29
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.not.1 = and i1 %i.m, %i.g
  br i1 %.not.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ck = fmul float %i.f, %i.u
  %i.cl = fdiv float %i.ck, %i.r
  %i.cm = tail call noundef float @llvm.ceil.f32(float %i.cl)
  %i.cn = fptosi float %i.cm to i32
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !29
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  br i1 %i.m, label %bb.f, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e
  %.phi.trans.insert = getelementptr i8, ptr %4, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !29
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cp = fmul float %i.l, %i.u
  %i.cq = fdiv float %i.cp, %i.r
  %i.cr = tail call noundef float @llvm.ceil.f32(float %i.cq)
  %i.cs = fptosi float %i.cr to i32
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %i.ct = phi i32 [ %.pre, %._crit_edge ], [ %i.cs, %bb.f ]
  %i.cu = load <2 x i32>, ptr %4, align 4, !tbaa !29
  %i.cv = insertelement <2 x i32> poison, i32 %i.s, i64 0
  %i.cw = shufflevector <2 x i32> %i.cv, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.cx = add nsw <2 x i32> %i.cu, %i.cw
  store <2 x i32> %i.cx, ptr %4, align 4, !tbaa !29
  %i.cy = getelementptr i8, ptr %4, i64 8         ; 2 uses
  %i.cz = add nsw i32 %i.ct, %i.s
  store i32 %i.cz, ptr %i.cy, align 4, !tbaa !29
  tail call void @_ZN3igl4gridIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEENS2_IfLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.da = sitofp i32 %2 to float                  ; 2 uses
  %i.db = load i32, ptr %i.cy, align 4, !tbaa !29
  %i.dc = sitofp i32 %i.db to float
  %i.dd = fadd float %i.dc, -1.000000e+00         ; 2 uses
  %i.de = fdiv float %i.da, %i.dd
  %i.df = load float, ptr %i.h, align 4, !tbaa !59
  %i.dg = load float, ptr %i.i, align 4, !tbaa !59
  %i.dh = fsub float %i.df, %i.dg
  %i.di = fmul float %i.de, 2.000000e+00
  %i.dj = fsub float 1.000000e+00, %i.di
  %i.dk = fdiv float %i.dh, %i.dj                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  %i.dl = load <2 x i32>, ptr %4, align 4, !tbaa !29
  %i.dm = sitofp <2 x i32> %i.dl to <2 x float>
  %i.dn = fadd <2 x float> %i.dm, splat (float -1.000000e+00) ; 2 uses
  %i.do = load <2 x float>, ptr %i.a, align 4, !tbaa !59
  %i.dp = load <2 x float>, ptr %0, align 4, !tbaa !59
  %i.dq = fsub <2 x float> %i.do, %i.dp
  %i.dr = insertelement <2 x float> poison, float %i.da, i64 0
  %i.ds = shufflevector <2 x float> %i.dr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dt = fdiv <2 x float> %i.ds, %i.dn
  %i.du = fmul <2 x float> %i.dt, splat (float 2.000000e+00)
  %i.dv = fsub <2 x float> splat (float 1.000000e+00), %i.du
  %i.dw = fdiv <2 x float> %i.dq, %i.dv           ; 2 uses
  %i.dx = extractelement <2 x float> %i.dw, i64 0 ; 2 uses
  %i.dy = extractelement <2 x float> %i.dw, i64 1 ; 2 uses
  %i.dz = fcmp ogt float %i.dy, %i.dx             ; 2 uses
  %.sroa.0.0.i.i31 = zext i1 %i.dz to i64
  %.sroa.8.0.i.i32 = select i1 %i.dz, float %i.dy, float %i.dx ; 2 uses
  %i.ea = fcmp ogt float %i.dk, %.sroa.8.0.i.i32  ; 2 uses
  %.sroa.0.1.i.i33 = select i1 %i.ea, i64 2, i64 %.sroa.0.0.i.i31
  %.sroa.8.1.i.i34 = select i1 %i.ea, float %i.dk, float %.sroa.8.0.i.i32 ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.sroa.0.1.i.i33
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !29
  %i.ed = sitofp i32 %i.ec to double
  %i.ee = fadd double %i.ed, -1.000000e+00
  %i.ef = fptrunc double %i.ee to float           ; 2 uses
  %i.eg = insertelement <2 x float> poison, float %.sroa.8.1.i.i34, i64 0
  %i.eh = shufflevector <2 x float> %i.eg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ei = fmul <2 x float> %i.dn, %i.eh
  %i.ej = insertelement <2 x float> poison, float %i.ef, i64 0
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> poison, <2 x i32> zeroinitializer
  %i.el = fdiv <2 x float> %i.ei, %i.ek
  store <2 x float> %i.el, ptr %9, align 8, !tbaa !59
  %i.em = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.en = fmul float %i.dd, %.sroa.8.1.i.i34
  %i.eo = fdiv float %i.en, %i.ef
  store float %i.eo, ptr %i.em, align 8, !tbaa !59
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.eq = load ptr, ptr %3, align 8, !tbaa !95
  %i.er = load i64, ptr %i.ep, align 8, !tbaa !97 ; 7 uses
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.et = load i64, ptr %i.es, align 8, !tbaa !98 ; 2 uses
  %i.eu = icmp sgt i64 %i.et, 0
  %i.ev = icmp sgt i64 %i.er, 0
  %or.cond.i.i.i.i.i.i = select i1 %i.eu, i1 %i.ev, i1 false
  br i1 %or.cond.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen12VectorwiseOpINS_12ArrayWrapperINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEEELi1EEmLINS_5ArrayIfLi1ELi3ELi1ELi1ELi3EEEEERS4_RKNS_9DenseBaseIT_EE.exit

.preheader.i.i.i.i.i.i.i.preheader:               ; preds = %bb.g
  %min.iters.check = icmp ult i64 %i.er, 8
  %n.vec = and i64 %i.er, 9223372036854775800     ; 3 uses
  %cmp.n = icmp eq i64 %i.er, %n.vec
  br label %.preheader.i.i.i.i.i.i.i
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl10voxel_gridIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEENS2_IdLin1ELin1ELi0ELin1ELin1EEENS2_IiLi1ELi3ELi1ELi1ELi3EEEEEvRKNS1_10MatrixBaseIT_EENS7_6ScalarEiiRNS1_15PlainObjectBaseIT0_EERNSC_IT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, double noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 1 %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
.lr.ph.i.i.i.i.i.i.i:
  %6 = alloca %"class.Eigen::AlignedBox", align 16 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  store <2 x double> splat (double f0x7FEFFFFFFFFFFFFF), ptr %6, align 16, !tbaa !9
  %.07.i.i.i.i.ptr.2.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store <2 x double> <double f0x7FEFFFFFFFFFFFFF, double f0xFFEFFFFFFFFFFFFF>, ptr %.07.i.i.i.i.ptr.2.i.i.i.i.i.i.i.i.i.i, align 16, !tbaa !9
  %.07.i.i.i.i.ptr.1.i.i.i.i.i.i.i.i1.i.i = getelementptr inbounds nuw i8, ptr %6, i64 32
  store <2 x double> splat (double f0xFFEFFFFFFFFFFFFF), ptr %.07.i.i.i.i.ptr.1.i.i.i.i.i.i.i.i1.i.i, align 16, !tbaa !9
  %.sroa.718.24.vec.insert.i.i.i.i.i.i = insertelement <2 x double> poison, double %1, i64 0
  %.pre = load ptr, ptr %0, align 8, !tbaa !47    ; 10 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre88 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !49 ; 11 uses
  %i.a = shufflevector <2 x double> %.sroa.718.24.vec.insert.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.b = icmp eq i64 %.pre88, 0                   ; 2 uses
  %i.c = add i64 %.pre88, -1                      ; 7 uses
  %i.d = and i64 %i.c, -4                         ; 2 uses
  %i.e = icmp sgt i64 %.pre88, 4                  ; 2 uses
  br i1 %i.b, label %.lr.ph.i.i.i.i.i.i.i.split.us, label %.lr.ph.i.i.i.i.i.i.i.split

.lr.ph.i.i.i.i.i.i.i.split.us:                    ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.g = load double, ptr %i.f, align 8, !tbaa !9
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS5_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS6_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit30.sink.split.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i:    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.preheader.new
  %.01725.i.i.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.preheader.new ], [ %i.r, %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i ] ; 3 uses
  %.02324.i.i.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i = phi double [ %i.as, %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.preheader.new ], [ %i.q, %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i ]
  %.idx.i.i.i.i.i.i.i.i.i.i.i.us.i26.i.i.i.i.i.i.i = mul i64 %.01725.i.i.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i, 24
  %i.h = getelementptr i8, ptr %i.ar, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.us.i26.i.i.i.i.i.i.i
  %i.i = load double, ptr %i.h, align 8, !tbaa !9 ; 2 uses
  %i.j = fcmp olt double %i.i, %.02324.i.i.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i
  %i.k = select i1 %i.j, double %i.i, double %.02324.i.i.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i ; 2 uses
  %i.l = mul i64 %.01725.i.i.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i, 24
  %i.m = getelementptr i8, ptr %i.ar, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 24
  %i.o = load double, ptr %i.n, align 8, !tbaa !9 ; 2 uses
  %i.p = fcmp olt double %i.o, %i.k
  %i.q = select i1 %i.p, double %i.o, double %i.k ; 3 uses
  %i.r = add nuw nsw i64 %.01725.i.i.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS5_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS6_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit30.sink.split.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i, !llvm.loop !108

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS5_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS6_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit30.sink.split.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS5_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS6_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit30.sink.split.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.epil.preheader: ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS5_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS6_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit30.sink.split.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.preheader
  %.01725.i.i.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.preheader ], [ %i.r, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS5_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS6_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit30.sink.split.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %.02324.i.i.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i.epil.init = phi double [ %i.as, %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.preheader ], [ %i.q, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS5_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS6_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit30.sink.split.i.i.i.i.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod129 = trunc i64 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod129)
  %.idx.i.i.i.i.i.i.i.i.i.i.i.us.i26.i.i.i.i.i.i.i.epil = mul i64 %.01725.i.i.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i.epil.init, 24
  %i.s = getelementptr i8, ptr %i.ar, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.us.i26.i.i.i.i.i.i.i.epil
  %i.t = load double, ptr %i.s, align 8, !tbaa !9 ; 2 uses
  %i.u = fcmp olt double %i.t, %.02324.i.i.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i.epil.init
  %i.v = select i1 %i.u, double %i.t, double %.02324.i.i.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i.epil.init
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS5_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS6_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit30.sink.split.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS5_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS6_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit30.sink.split.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.epil.preheader, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS5_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS6_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit30.sink.split.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.split.us, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i
  %.pn = phi <2 x double> [ zeroinitializer, %.lr.ph.i.i.i.i.i.i.i.split.us ], [ %.025.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i ], [ %.025.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS5_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS6_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit30.sink.split.i.i.i.i.i.i.i.loopexit.unr-lcssa ], [ %.025.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.epil.preheader ]
  %.sink57.i.i.i.i.i.i.i = phi double [ %i.g, %.lr.ph.i.i.i.i.i.i.i.split.us ], [ %i.as, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i ], [ %i.q, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS5_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS6_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit30.sink.split.i.i.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.v, %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.epil.preheader ]
  br i1 %i.b, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i.us, label %.lr.ph.i.i.i.i.i.i.i15.split

.lr.ph.i.i.i.i.i.i.i.split:                       ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.w = load <2 x double>, ptr %.pre, align 1, !tbaa !26 ; 2 uses
  br i1 %i.e, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.split
  %.041.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.w, %.lr.ph.i.i.i.i.i.i.i.split ], [ %i.aj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.split ], [ %i.ak, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.x = icmp slt i64 %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %.pre88
  br i1 %i.x, label %.lr.ph48.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.split, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.044.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ak, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i.i.split ] ; 2 uses
  %.04143.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.aj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.w, %.lr.ph.i.i.i.i.i.i.i.split ]
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = mul i64 %.044.i.i.i.i.i.i.i.i.i.i.i.i, 24
  %i.y = getelementptr i8, ptr %.pre, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.z = load <2 x double>, ptr %i.y, align 1, !tbaa !26
  %i.aa = getelementptr i8, ptr %i.y, i64 24
  %i.ab = load <2 x double>, ptr %i.aa, align 1, !tbaa !26
  %i.ac = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.z, <2 x double> %i.ab) #9, !srcloc !27
  %i.ad = getelementptr i8, ptr %i.y, i64 48
  %i.ae = load <2 x double>, ptr %i.ad, align 1, !tbaa !26
  %i.af = getelementptr i8, ptr %i.y, i64 72
  %i.ag = load <2 x double>, ptr %i.af, align 1, !tbaa !26
  %i.ah = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ae, <2 x double> %i.ag) #9, !srcloc !27
  %i.ai = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ac, <2 x double> %i.ah) #9, !srcloc !27
  %i.aj = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %.04143.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> %i.ai) #9, !srcloc !27 ; 2 uses
  %i.ak = add nuw nsw i64 %.044.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 3 uses
  %i.al = icmp slt i64 %i.ak, %i.d
  br i1 %i.al, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !109

.lr.ph48.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph48.i.i.i.i.i.i.i.i.i.i.i.i
  %.147.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ap, %.lr.ph48.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.14246.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.ao, %.lr.ph48.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.041.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.idx.i.i30.i.i.i.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.147.i.i.i.i.i.i.i.i.i.i.i.i, 24
  %i.am = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx.i.i30.i.i.i.i.i.i.i.i.i.i.i.i
  %i.an = load <2 x double>, ptr %i.am, align 1, !tbaa !26
  %i.ao = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %.14246.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> %i.an) #9, !srcloc !27 ; 2 uses
  %i.ap = add nuw i64 %.147.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ap, %.pre88
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i, label %.lr.ph48.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !110

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph48.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %.025.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %.041.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ao, %.lr.ph48.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.aq = icmp sgt i64 %.pre88, 1
  %i.ar = getelementptr inbounds nuw i8, ptr %.pre, i64 16 ; 4 uses
  %i.as = load double, ptr %i.ar, align 8, !tbaa !9 ; 3 uses
  br i1 %i.aq, label %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS5_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS6_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit30.sink.split.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.preheader: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i
  %xtraiter = and i64 %i.c, 1
  %i.at = icmp eq i64 %.pre88, 2
  br i1 %i.at, label %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.preheader.new: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.c, -2
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i.us: ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS5_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS6_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit30.sink.split.i.i.i.i.i.i.i
  %i.au = fadd <2 x double> %i.a, zeroinitializer
  %i.av = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.aw = load double, ptr %i.av, align 8, !tbaa !9
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS6_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit30.sink.split.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i25:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i25, %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i25.preheader.new
  %.01725.i.i.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i26 = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i25.preheader.new ], [ %i.bh, %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i25 ] ; 3 uses
  %.02324.i.i.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i27 = phi double [ %i.da, %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i25.preheader.new ], [ %i.bg, %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i25 ] ; 2 uses
  %niter135 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i25.preheader.new ], [ %niter135.next.1, %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i25 ]
  %.idx.i.i.i.i.i.i.i.i.i.i.i.us.i26.i.i.i.i.i.i.i28 = mul i64 %.01725.i.i.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i26, 24
  %i.ax = getelementptr i8, ptr %i.cz, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.us.i26.i.i.i.i.i.i.i28
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !9 ; 2 uses
  %i.az = fcmp olt double %.02324.i.i.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i27, %i.ay
  %i.ba = select i1 %i.az, double %i.ay, double %.02324.i.i.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i27 ; 2 uses
  %i.bb = mul i64 %.01725.i.i.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i26, 24
  %i.bc = getelementptr i8, ptr %i.cz, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.bc, i64 24
  %i.be = load double, ptr %i.bd, align 8, !tbaa !9 ; 2 uses
  %i.bf = fcmp olt double %i.ba, %i.be
  %i.bg = select i1 %i.bf, double %i.be, double %i.ba ; 3 uses
  %i.bh = add nuw nsw i64 %.01725.i.i.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i26, 2 ; 2 uses
  %niter135.next.1 = add nuw i64 %niter135, 2     ; 2 uses
  %niter135.ncmp.1 = icmp eq i64 %niter135.next.1, %unroll_iter134
  br i1 %niter135.ncmp.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS6_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit30.sink.split.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i25, !llvm.loop !111

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS6_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit30.sink.split.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i25
  %lcmp.mod131.not = icmp eq i64 %xtraiter130, 0
  br i1 %lcmp.mod131.not, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS6_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit30.sink.split.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i25.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i25.epil.preheader: ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS6_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit30.sink.split.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i25.preheader
  %.01725.i.i.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i26.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i25.preheader ], [ %i.bh, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS6_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit30.sink.split.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %.02324.i.i.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i27.epil.init = phi double [ %i.da, %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i25.preheader ], [ %i.bg, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS6_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit30.sink.split.i.i.i.i.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod133 = trunc i64 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod133)
  %.idx.i.i.i.i.i.i.i.i.i.i.i.us.i26.i.i.i.i.i.i.i28.epil = mul i64 %.01725.i.i.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i26.epil.init, 24
  %i.bi = getelementptr i8, ptr %i.cz, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.us.i26.i.i.i.i.i.i.i28.epil
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !9 ; 2 uses
  %i.bk = fcmp olt double %.02324.i.i.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i27.epil.init, %i.bj
  %i.bl = select i1 %i.bk, double %i.bj, double %.02324.i.i.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i27.epil.init
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS6_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit30.sink.split.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS6_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit30.sink.split.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i25.epil.preheader, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS6_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit30.sink.split.i.i.i.i.i.i.i.loopexit.unr-lcssa, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i.us, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i
  %.sroa.0.0 = phi <2 x double> [ %i.au, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i.us ], [ %i.cx, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i ], [ %i.cx, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS6_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit30.sink.split.i.i.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.cx, %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i25.epil.preheader ] ; 2 uses
  %.sink57.i.i.i.i.i.i.i24 = phi double [ %i.aw, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i.us ], [ %i.da, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i ], [ %i.bg, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS6_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit30.sink.split.i.i.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.bl, %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i25.epil.preheader ]
  %i.bm = fsub double %.sink57.i.i.i.i.i.i.i, %1  ; 4 uses
  %.sroa.0136.0 = fsub <2 x double> %.pn, %i.a    ; 2 uses
  %.07.i.i.i.i.ptr.2.i.i.i.i.i.i.i.i2.i.i = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.bo = fadd double %1, %.sink57.i.i.i.i.i.i.i24 ; 4 uses
  %i.bp = load <2 x double>, ptr %6, align 16, !tbaa !26
  %i.bq = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bp, <2 x double> %.sroa.0136.0) #9, !srcloc !27
  %i.br = fcmp olt double %i.bm, f0x7FEFFFFFFFFFFFFF
  %i.bs = select i1 %i.br, double %i.bm, double f0x7FEFFFFFFFFFFFFF ; 2 uses
  %i.bt = load <2 x double>, ptr %i.bn, align 8, !tbaa !26
  %i.bu = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bt, <2 x double> %.sroa.0136.0) #9, !srcloc !28
  %i.bv = fcmp ogt double %i.bm, f0xFFEFFFFFFFFFFFFF
  %i.bw = select i1 %i.bv, double %i.bm, double f0xFFEFFFFFFFFFFFFF ; 2 uses
  %i.bx = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bq, <2 x double> %.sroa.0.0) #9, !srcloc !27
  store <2 x double> %i.bx, ptr %6, align 16, !tbaa !26
  %i.by = fcmp olt double %i.bo, %i.bs
  %i.bz = select i1 %i.by, double %i.bo, double %i.bs
  store double %i.bz, ptr %.07.i.i.i.i.ptr.2.i.i.i.i.i.i.i.i.i.i, align 16, !tbaa !9
  %i.ca = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bu, <2 x double> %.sroa.0.0) #9, !srcloc !28
  store <2 x double> %i.ca, ptr %i.bn, align 8, !tbaa !26
  %i.cb = fcmp olt double %i.bw, %i.bo
  %i.cc = select i1 %i.cb, double %i.bo, double %i.bw
  store double %i.cc, ptr %.07.i.i.i.i.ptr.2.i.i.i.i.i.i.i.i2.i.i, align 8, !tbaa !9
  call void @_ZN3igl10voxel_gridIdN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLi1ELi3ELi1ELi1ELi3EEEEEvRKNS1_10AlignedBoxIT_Li3EEEiiRNS1_15PlainObjectBaseIT0_EERNSA_IT1_EE(ptr noundef nonnull align 8 dereferenceable(48) %6, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 1 %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  ret void

.lr.ph.i.i.i.i.i.i.i15.split:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS5_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS6_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit30.sink.split.i.i.i.i.i.i.i
  %i.cd = load <2 x double>, ptr %.pre, align 1, !tbaa !26 ; 2 uses
  br i1 %i.e, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i35, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i18

.preheader.i.i.i.i.i.i.i.i.i.i.i.i18:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i35, %.lr.ph.i.i.i.i.i.i.i15.split
  %.041.lcssa.i.i.i.i.i.i.i.i.i.i.i.i19 = phi <2 x double> [ %i.cd, %.lr.ph.i.i.i.i.i.i.i15.split ], [ %i.cq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i35 ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i20 = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i15.split ], [ %i.cr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i35 ] ; 2 uses
  %i.ce = icmp slt i64 %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i20, %.pre88
  br i1 %i.ce, label %.lr.ph48.i.i.i.i.i.i.i.i.i.i.i.i30, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i35:                 ; preds = %.lr.ph.i.i.i.i.i.i.i15.split, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i35
  %.044.i.i.i.i.i.i.i.i.i.i.i.i36 = phi i64 [ %i.cr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i35 ], [ 1, %.lr.ph.i.i.i.i.i.i.i15.split ] ; 2 uses
  %.04143.i.i.i.i.i.i.i.i.i.i.i.i37 = phi <2 x double> [ %i.cq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i35 ], [ %i.cd, %.lr.ph.i.i.i.i.i.i.i15.split ]
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i38 = mul i64 %.044.i.i.i.i.i.i.i.i.i.i.i.i36, 24
  %i.cf = getelementptr i8, ptr %.pre, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i38 ; 4 uses
  %i.cg = load <2 x double>, ptr %i.cf, align 1, !tbaa !26
  %i.ch = getelementptr i8, ptr %i.cf, i64 24
  %i.ci = load <2 x double>, ptr %i.ch, align 1, !tbaa !26
  %i.cj = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cg, <2 x double> %i.ci) #9, !srcloc !28
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS3_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS7_INS0_18scalar_quotient_opIddEEKNS7_INS0_13scalar_sum_opIddEEKNS4_IdLi3ELi1ELi0ELi3ELi1EEESG_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESG_EEEEEEKNS7_ISC_KNS_16PartialReduxExprINS4_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSJ_ISL_KS5_EEEEEEEENS0_9assign_opIddEELi0EEELi3ELi0EE3runERS17_:_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit
  %i.dd = fadd double %i.cz, %i.da
  %i.de = fdiv double %i.dd, %i.db
  %i.df = load double, ptr %i.cw, align 8, !tbaa !21
  %i.dg = fdiv double 0.000000e+00, %i.df
  %i.dh = fsub double %i.de, %i.dg
  store double %i.dh, ptr %i.dc, align 8, !tbaa !9
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS5_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS9_INS0_18scalar_quotient_opIddEEKNS9_INS0_13scalar_sum_opIddEEKNS6_IdLi3ELi1ELi0ELi3ELi1EEESI_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESI_EEEEEEKNS9_ISE_KNS_16PartialReduxExprINS6_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSL_ISN_KS7_EEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit34

.lr.ph.split.i18:                                 ; preds = %.lr.ph.i17
  %i.di = load ptr, ptr %i.cs, align 8, !tbaa !47, !noalias !271
  %i.dj = icmp sgt i64 %i.cu, 1
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.f
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.f
  %i.dm = load double, ptr %i.dk, align 8, !tbaa !9 ; 2 uses
  %i.dn = load double, ptr %i.dl, align 8, !tbaa !9 ; 2 uses
  %i.do = load double, ptr %i.cq, align 8, !tbaa !21 ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.f ; 6 uses
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !9 ; 3 uses
  br i1 %i.dj, label %.lr.ph.i.i.i.i.i.i.i.i.us.i24.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader

.lr.ph.i.i.i.i.i.i.i.i.us.i24.preheader:          ; preds = %.lr.ph.split.i18
  %i.dr = add nsw i64 %i.cu, -1                   ; 2 uses
  %i.ds = add nsw i64 %i.cu, -2
  %xtraiter79 = and i64 %i.dr, 3                  ; 3 uses
  %i.dt = icmp ult i64 %i.ds, 3
  br i1 %i.dt, label %.lr.ph.i.i.i.i.i.i.i.i.us.i24.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.us.i24.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.us.i24.preheader.new:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.us.i24.preheader
  %unroll_iter84 = and i64 %i.dr, -4
  br label %.lr.ph.i.i.i.i.i.i.i.i.us.i24

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader: ; preds = %.lr.ph.split.i18
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.f
  %i.dv = fadd double %i.dm, %i.dn
  %i.dw = fdiv double %i.dv, %i.do
  %i.dx = load double, ptr %i.cw, align 8, !tbaa !21
  %i.dy = fdiv double %i.dq, %i.dx
  %i.dz = fsub double %i.dw, %i.dy
  store double %i.dz, ptr %i.du, align 8, !tbaa !9
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS5_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS9_INS0_18scalar_quotient_opIddEEKNS9_INS0_13scalar_sum_opIddEEKNS6_IdLi3ELi1ELi0ELi3ELi1EEESI_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESI_EEEEEEKNS9_ISE_KNS_16PartialReduxExprINS6_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSL_ISN_KS7_EEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit34

.lr.ph.i.i.i.i.i.i.i.i.us.i24:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.us.i24, %.lr.ph.i.i.i.i.i.i.i.i.us.i24.preheader.new
  %.01725.i.i.i.i.i.i.i.i.us.i25 = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i.us.i24.preheader.new ], [ %i.es, %.lr.ph.i.i.i.i.i.i.i.i.us.i24 ] ; 5 uses
  %.02324.i.i.i.i.i.i.i.i.us.i26 = phi double [ %i.dq, %.lr.ph.i.i.i.i.i.i.i.i.us.i24.preheader.new ], [ %i.er, %.lr.ph.i.i.i.i.i.i.i.i.us.i24 ]
  %niter85 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.us.i24.preheader.new ], [ %niter85.next.3, %.lr.ph.i.i.i.i.i.i.i.i.us.i24 ]
  %.idx.i.i.i.i.i.i.i.i.i.i.us.i27 = mul i64 %.01725.i.i.i.i.i.i.i.i.us.i25, 24
  %i.ea = getelementptr i8, ptr %i.dp, i64 %.idx.i.i.i.i.i.i.i.i.i.i.us.i27
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !9
  %i.ec = fadd double %.02324.i.i.i.i.i.i.i.i.us.i26, %i.eb
  %i.ed = mul i64 %.01725.i.i.i.i.i.i.i.i.us.i25, 24
  %i.ee = getelementptr i8, ptr %i.dp, i64 %i.ed
  %i.ef = getelementptr i8, ptr %i.ee, i64 24
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !9
  %i.eh = fadd double %i.ec, %i.eg
  %i.ei = mul i64 %.01725.i.i.i.i.i.i.i.i.us.i25, 24
  %i.ej = getelementptr i8, ptr %i.dp, i64 %i.ei
  %i.ek = getelementptr i8, ptr %i.ej, i64 48
  %i.el = load double, ptr %i.ek, align 8, !tbaa !9
  %i.em = fadd double %i.eh, %i.el
  %i.en = mul i64 %.01725.i.i.i.i.i.i.i.i.us.i25, 24
  %i.eo = getelementptr i8, ptr %i.dp, i64 %i.en
  %i.ep = getelementptr i8, ptr %i.eo, i64 72
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !9
  %i.er = fadd double %i.em, %i.eq                ; 3 uses
  %i.es = add nuw nsw i64 %.01725.i.i.i.i.i.i.i.i.us.i25, 4 ; 2 uses
  %niter85.next.3 = add nuw i64 %niter85, 4       ; 2 uses
  %niter85.ncmp.3 = icmp eq i64 %niter85.next.3, %unroll_iter84
  br i1 %niter85.ncmp.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.us.i24, !llvm.loop !269

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.us.i24
  %lcmp.mod81.not = icmp eq i64 %xtraiter79, 0
  br i1 %lcmp.mod81.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29, label %.lr.ph.i.i.i.i.i.i.i.i.us.i24.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.us.i24.epil.preheader:     ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.us.i24.preheader
  %.01725.i.i.i.i.i.i.i.i.us.i25.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i.us.i24.preheader ], [ %i.es, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa ]
  %.02324.i.i.i.i.i.i.i.i.us.i26.epil.init = phi double [ %i.dq, %.lr.ph.i.i.i.i.i.i.i.i.us.i24.preheader ], [ %i.er, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa ]
  %lcmp.mod83 = icmp ne i64 %xtraiter79, 0
  tail call void @llvm.assume(i1 %lcmp.mod83)
  br label %.lr.ph.i.i.i.i.i.i.i.i.us.i24.epil

.lr.ph.i.i.i.i.i.i.i.i.us.i24.epil:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.us.i24.epil, %.lr.ph.i.i.i.i.i.i.i.i.us.i24.epil.preheader
  %.01725.i.i.i.i.i.i.i.i.us.i25.epil = phi i64 [ %i.ew, %.lr.ph.i.i.i.i.i.i.i.i.us.i24.epil ], [ %.01725.i.i.i.i.i.i.i.i.us.i25.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.us.i24.epil.preheader ] ; 2 uses
  %.02324.i.i.i.i.i.i.i.i.us.i26.epil = phi double [ %i.ev, %.lr.ph.i.i.i.i.i.i.i.i.us.i24.epil ], [ %.02324.i.i.i.i.i.i.i.i.us.i26.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.us.i24.epil.preheader ]
  %epil.iter80 = phi i64 [ %epil.iter80.next, %.lr.ph.i.i.i.i.i.i.i.i.us.i24.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.us.i24.epil.preheader ]
  %.idx.i.i.i.i.i.i.i.i.i.i.us.i27.epil = mul i64 %.01725.i.i.i.i.i.i.i.i.us.i25.epil, 24
  %i.et = getelementptr i8, ptr %i.dp, i64 %.idx.i.i.i.i.i.i.i.i.i.i.us.i27.epil
  %i.eu = load double, ptr %i.et, align 8, !tbaa !9
  %i.ev = fadd double %.02324.i.i.i.i.i.i.i.i.us.i26.epil, %i.eu ; 2 uses
  %i.ew = add nuw nsw i64 %.01725.i.i.i.i.i.i.i.i.us.i25.epil, 1
  %epil.iter80.next = add i64 %epil.iter80, 1     ; 2 uses
  %epil.iter80.cmp.not = icmp eq i64 %epil.iter80.next, %xtraiter79
  br i1 %epil.iter80.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29, label %.lr.ph.i.i.i.i.i.i.i.i.us.i24.epil, !llvm.loop !274

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.us.i24.epil, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa
  %.lcssa = phi double [ %i.er, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa ], [ %i.ev, %.lr.ph.i.i.i.i.i.i.i.i.us.i24.epil ]
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.f
  %i.ey = fadd double %i.dm, %i.dn
  %i.ez = fdiv double %i.ey, %i.do
  %i.fa = load double, ptr %i.cw, align 8, !tbaa !21
  %i.fb = fdiv double %.lcssa, %i.fa
  %i.fc = fsub double %i.ez, %i.fb
  store double %i.fc, ptr %i.ex, align 8, !tbaa !9
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS5_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS9_INS0_18scalar_quotient_opIddEEKNS9_INS0_13scalar_sum_opIddEEKNS6_IdLi3ELi1ELi0ELi3ELi1EEESI_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESI_EEEEEEKNS9_ISE_KNS_16PartialReduxExprINS6_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSL_ISN_KS7_EEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit34

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS5_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS9_INS0_18scalar_quotient_opIddEEKNS9_INS0_13scalar_sum_opIddEEKNS6_IdLi3ELi1ELi0ELi3ELi1EEESI_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESI_EEEEEEKNS9_ISE_KNS_16PartialReduxExprINS6_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSL_ISN_KS7_EEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit34: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i31.preheader, %._crit_edge
  ret void

bb.a:                                             ; preds = %.lr.ph
  %i.fd = add nsw i64 %i.cg, -1
  %i.fe = and i64 %i.fd, -4
  %i.ff = load <2 x double>, ptr %i.cf, align 1, !tbaa !26 ; 2 uses
  %i.fg = icmp sgt i64 %i.cg, 4
  br i1 %i.fg, label %.lr.ph.i.i.i.i.i, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i, %bb.a
  %.041.lcssa.i.i.i.i.i = phi <2 x double> [ %i.ff, %bb.a ], [ %i.ga, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i.i.i = phi i64 [ 1, %bb.a ], [ %i.gb, %.lr.ph.i.i.i.i.i ] ; 5 uses
  %i.fh = icmp slt i64 %.0.lcssa.i.i.i.i.i, %i.cg
  br i1 %i.fh, label %.lr.ph48.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit

.lr.ph48.i.i.i.i.i.preheader:                     ; preds = %.preheader.i.i.i.i.i
  %i.fi = sub i64 %i.cg, %.0.lcssa.i.i.i.i.i
  %xtraiter76 = and i64 %i.fi, 3                  ; 2 uses
  %lcmp.mod77.not = icmp eq i64 %xtraiter76, 0
  br i1 %lcmp.mod77.not, label %.lr.ph48.i.i.i.i.i.prol.loopexit, label %.lr.ph48.i.i.i.i.i.prol

.lr.ph48.i.i.i.i.i.prol:                          ; preds = %.lr.ph48.i.i.i.i.i.preheader, %.lr.ph48.i.i.i.i.i.prol
  %.147.i.i.i.i.i.prol = phi i64 [ %i.fm, %.lr.ph48.i.i.i.i.i.prol ], [ %.0.lcssa.i.i.i.i.i, %.lr.ph48.i.i.i.i.i.preheader ] ; 2 uses
  %.14246.i.i.i.i.i.prol = phi <2 x double> [ %i.fl, %.lr.ph48.i.i.i.i.i.prol ], [ %.041.lcssa.i.i.i.i.i, %.lr.ph48.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph48.i.i.i.i.i.prol ], [ 0, %.lr.ph48.i.i.i.i.i.preheader ]
  %.idx.i.i30.i.i.i.i.i.prol = mul nuw nsw i64 %.147.i.i.i.i.i.prol, 24
  %i.fj = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx.i.i30.i.i.i.i.i.prol
  %i.fk = load <2 x double>, ptr %i.fj, align 1, !tbaa !26
  %i.fl = fadd <2 x double> %.14246.i.i.i.i.i.prol, %i.fk ; 3 uses
  %i.fm = add nuw nsw i64 %.147.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter76
  br i1 %prol.iter.cmp.not, label %.lr.ph48.i.i.i.i.i.prol.loopexit, label %.lr.ph48.i.i.i.i.i.prol, !llvm.loop !275

.lr.ph48.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph48.i.i.i.i.i.prol, %.lr.ph48.i.i.i.i.i.preheader
  %.lcssa72.unr = phi <2 x double> [ poison, %.lr.ph48.i.i.i.i.i.preheader ], [ %i.fl, %.lr.ph48.i.i.i.i.i.prol ]
  %.147.i.i.i.i.i.unr = phi i64 [ %.0.lcssa.i.i.i.i.i, %.lr.ph48.i.i.i.i.i.preheader ], [ %i.fm, %.lr.ph48.i.i.i.i.i.prol ]
  %.14246.i.i.i.i.i.unr = phi <2 x double> [ %.041.lcssa.i.i.i.i.i, %.lr.ph48.i.i.i.i.i.preheader ], [ %i.fl, %.lr.ph48.i.i.i.i.i.prol ]
  %i.fn = sub i64 %.0.lcssa.i.i.i.i.i, %i.cg
  %i.fo = icmp ugt i64 %i.fn, -4
  br i1 %i.fo, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit, label %.lr.ph48.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %.lr.ph.i.i.i.i.i
  %.044.i.i.i.i.i = phi i64 [ %i.gb, %.lr.ph.i.i.i.i.i ], [ 1, %bb.a ] ; 2 uses
  %.04143.i.i.i.i.i = phi <2 x double> [ %i.ga, %.lr.ph.i.i.i.i.i ], [ %i.ff, %bb.a ]
  %.idx.i.i.i.i.i.i.i = mul i64 %.044.i.i.i.i.i, 24
  %i.fp = getelementptr i8, ptr %i.cf, i64 %.idx.i.i.i.i.i.i.i ; 4 uses
  %i.fq = load <2 x double>, ptr %i.fp, align 1, !tbaa !26
  %i.fr = getelementptr i8, ptr %i.fp, i64 24
  %i.fs = load <2 x double>, ptr %i.fr, align 1, !tbaa !26
  %i.ft = fadd <2 x double> %i.fq, %i.fs
  %i.fu = getelementptr i8, ptr %i.fp, i64 48
  %i.fv = load <2 x double>, ptr %i.fu, align 1, !tbaa !26
  %i.fw = getelementptr i8, ptr %i.fp, i64 72
  %i.fx = load <2 x double>, ptr %i.fw, align 1, !tbaa !26
  %i.fy = fadd <2 x double> %i.fv, %i.fx
  %i.fz = fadd <2 x double> %i.ft, %i.fy
  %i.ga = fadd <2 x double> %.04143.i.i.i.i.i, %i.fz ; 2 uses
  %i.gb = add nuw nsw i64 %.044.i.i.i.i.i, 4      ; 3 uses
  %i.gc = icmp slt i64 %i.gb, %i.fe
  br i1 %i.gc, label %.lr.ph.i.i.i.i.i, label %.preheader.i.i.i.i.i, !llvm.loop !276

.lr.ph48.i.i.i.i.i:                               ; preds = %.lr.ph48.i.i.i.i.i.prol.loopexit, %.lr.ph48.i.i.i.i.i
  %.147.i.i.i.i.i = phi i64 [ %i.gv, %.lr.ph48.i.i.i.i.i ], [ %.147.i.i.i.i.i.unr, %.lr.ph48.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.14246.i.i.i.i.i = phi <2 x double> [ %i.gu, %.lr.ph48.i.i.i.i.i ], [ %.14246.i.i.i.i.i.unr, %.lr.ph48.i.i.i.i.i.prol.loopexit ]
  %.idx.i.i30.i.i.i.i.i = mul nuw nsw i64 %.147.i.i.i.i.i, 24
  %i.gd = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx.i.i30.i.i.i.i.i
  %i.ge = load <2 x double>, ptr %i.gd, align 1, !tbaa !26
  %i.gf = fadd <2 x double> %.14246.i.i.i.i.i, %i.ge
  %i.gg = mul nuw i64 %.147.i.i.i.i.i, 24
  %i.gh = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  %i.gj = load <2 x double>, ptr %i.gi, align 1, !tbaa !26
  %i.gk = fadd <2 x double> %i.gf, %i.gj
  %i.gl = mul nuw i64 %.147.i.i.i.i.i, 24
  %i.gm = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.gl
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 48
  %i.go = load <2 x double>, ptr %i.gn, align 1, !tbaa !26
  %i.gp = fadd <2 x double> %i.gk, %i.go
  %i.gq = mul nuw i64 %.147.i.i.i.i.i, 24
  %i.gr = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.gq
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 72
  %i.gt = load <2 x double>, ptr %i.gs, align 1, !tbaa !26
  %i.gu = fadd <2 x double> %i.gp, %i.gt          ; 2 uses
  %i.gv = add nuw nsw i64 %.147.i.i.i.i.i, 4      ; 2 uses
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %i.gv, %i.cg
  br i1 %exitcond.not.i.i.i.i.i.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit, label %.lr.ph48.i.i.i.i.i, !llvm.loop !277

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit: ; preds = %.lr.ph48.i.i.i.i.i.prol.loopexit, %.lr.ph48.i.i.i.i.i, %.lr.ph, %.preheader.i.i.i.i.i
  %.025.i.i.i.i.i = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %.041.lcssa.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %.lcssa72.unr, %.lr.ph48.i.i.i.i.i.prol.loopexit ], [ %i.gu, %.lr.ph48.i.i.i.i.i ]
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.0.i36
  %i.gx = fadd <2 x double> %i.bu, %i.by
  %i.gy = shufflevector <1 x double> %i.ca, <1 x double> poison, <2 x i32> zeroinitializer
  %i.gz = fdiv <2 x double> %i.gx, %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %i.bq, i64 80
  %1 = load <1 x double>, ptr %i.ha, align 8
  %i.hb = shufflevector <1 x double> %1, <1 x double> poison, <2 x i32> zeroinitializer
  %i.hc = fdiv <2 x double> %.025.i.i.i.i.i, %i.hb
  %i.hd = fsub <2 x double> %i.gz, %i.hc
  store <2 x double> %i.hd, ptr %i.gw, align 16, !tbaa !26
  %i.he = or disjoint i64 %.0.i36, 2              ; 4 uses
  %i.hf = icmp samesign ult i64 %.0.i36, %i.e
  br i1 %i.hf, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit
  %i.hg = load ptr, ptr %0, align 8, !tbaa !257, !nonnull !224, !align !225
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !258
  %i.hi = load ptr, ptr %i.bn, align 8, !tbaa !260, !nonnull !224, !align !225 ; 5 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 24
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !261
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %i.he
  %i.hm = load <2 x double>, ptr %i.hl, align 1, !tbaa !26
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hi, i64 32
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !261
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %i.he
  %i.hq = load <2 x double>, ptr %i.hp, align 1, !tbaa !26
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hi, i64 40
  %i.hs = load <1 x double>, ptr %i.hr, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hi, i64 64
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !263, !nonnull !224, !align !225 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.hw = load ptr, ptr %i.hu, align 8, !tbaa !47
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %i.he ; 7 uses
  %i.hy = load i64, ptr %i.hv, align 8, !tbaa !49 ; 7 uses
  %i.hz = icmp eq i64 %i.hy, 0
  br i1 %i.hz, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.1, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ia = add nsw i64 %i.hy, -1
  %i.ib = and i64 %i.ia, -4
  %i.ic = load <2 x double>, ptr %i.hx, align 1, !tbaa !26 ; 2 uses
  %i.id = icmp sgt i64 %i.hy, 4
  br i1 %i.id, label %.lr.ph.i.i.i.i.i.1, label %.preheader.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.1:                               ; preds = %bb.c, %.lr.ph.i.i.i.i.i.1
  %.044.i.i.i.i.i.1 = phi i64 [ %i.iq, %.lr.ph.i.i.i.i.i.1 ], [ 1, %bb.c ] ; 2 uses
  %.04143.i.i.i.i.i.1 = phi <2 x double> [ %i.ip, %.lr.ph.i.i.i.i.i.1 ], [ %i.ic, %bb.c ]
  %.idx.i.i.i.i.i.i.i.1 = mul i64 %.044.i.i.i.i.i.1, 24
  %i.ie = getelementptr i8, ptr %i.hx, i64 %.idx.i.i.i.i.i.i.i.1 ; 4 uses
  %i.if = load <2 x double>, ptr %i.ie, align 1, !tbaa !26
  %i.ig = getelementptr i8, ptr %i.ie, i64 24
  %i.ih = load <2 x double>, ptr %i.ig, align 1, !tbaa !26
  %i.ii = fadd <2 x double> %i.if, %i.ih
  %i.ij = getelementptr i8, ptr %i.ie, i64 48
  %i.ik = load <2 x double>, ptr %i.ij, align 1, !tbaa !26
  %i.il = getelementptr i8, ptr %i.ie, i64 72
  %i.im = load <2 x double>, ptr %i.il, align 1, !tbaa !26
  %i.in = fadd <2 x double> %i.ik, %i.im
  %i.io = fadd <2 x double> %i.ii, %i.in
  %i.ip = fadd <2 x double> %.04143.i.i.i.i.i.1, %i.io ; 2 uses
  %i.iq = add nuw nsw i64 %.044.i.i.i.i.i.1, 4    ; 3 uses
  %i.ir = icmp slt i64 %i.iq, %i.ib
  br i1 %i.ir, label %.lr.ph.i.i.i.i.i.1, label %.preheader.i.i.i.i.i.1, !llvm.loop !276

.preheader.i.i.i.i.i.1:                           ; preds = %.lr.ph.i.i.i.i.i.1, %bb.c
  %.041.lcssa.i.i.i.i.i.1 = phi <2 x double> [ %i.ic, %bb.c ], [ %i.ip, %.lr.ph.i.i.i.i.i.1 ] ; 3 uses
  %.0.lcssa.i.i.i.i.i.1 = phi i64 [ 1, %bb.c ], [ %i.iq, %.lr.ph.i.i.i.i.i.1 ] ; 5 uses
  %i.is = icmp slt i64 %.0.lcssa.i.i.i.i.i.1, %i.hy
  br i1 %i.is, label %.lr.ph48.i.i.i.i.i.preheader.1, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.1

.lr.ph48.i.i.i.i.i.preheader.1:                   ; preds = %.preheader.i.i.i.i.i.1
  %i.it = sub i64 %i.hy, %.0.lcssa.i.i.i.i.i.1
  %xtraiter76.1 = and i64 %i.it, 3                ; 2 uses
  %lcmp.mod77.1.not = icmp eq i64 %xtraiter76.1, 0
  br i1 %lcmp.mod77.1.not, label %.lr.ph48.i.i.i.i.i.prol.loopexit.1, label %.lr.ph48.i.i.i.i.i.prol.1

.lr.ph48.i.i.i.i.i.prol.1:                        ; preds = %.lr.ph48.i.i.i.i.i.preheader.1, %.lr.ph48.i.i.i.i.i.prol.1
  %.147.i.i.i.i.i.prol.1 = phi i64 [ %i.ix, %.lr.ph48.i.i.i.i.i.prol.1 ], [ %.0.lcssa.i.i.i.i.i.1, %.lr.ph48.i.i.i.i.i.preheader.1 ] ; 2 uses
  %.14246.i.i.i.i.i.prol.1 = phi <2 x double> [ %i.iw, %.lr.ph48.i.i.i.i.i.prol.1 ], [ %.041.lcssa.i.i.i.i.i.1, %.lr.ph48.i.i.i.i.i.preheader.1 ]
  %prol.iter.1 = phi i64 [ %prol.iter.next.1, %.lr.ph48.i.i.i.i.i.prol.1 ], [ 0, %.lr.ph48.i.i.i.i.i.preheader.1 ]
  %.idx.i.i30.i.i.i.i.i.prol.1 = mul nuw nsw i64 %.147.i.i.i.i.i.prol.1, 24
  %i.iu = getelementptr inbounds nuw i8, ptr %i.hx, i64 %.idx.i.i30.i.i.i.i.i.prol.1
  %i.iv = load <2 x double>, ptr %i.iu, align 1, !tbaa !26
  %i.iw = fadd <2 x double> %.14246.i.i.i.i.i.prol.1, %i.iv ; 3 uses
  %i.ix = add nuw nsw i64 %.147.i.i.i.i.i.prol.1, 1 ; 2 uses
  %prol.iter.next.1 = add i64 %prol.iter.1, 1     ; 2 uses
  %prol.iter.cmp.1.not = icmp eq i64 %prol.iter.next.1, %xtraiter76.1
  br i1 %prol.iter.cmp.1.not, label %.lr.ph48.i.i.i.i.i.prol.loopexit.1, label %.lr.ph48.i.i.i.i.i.prol.1, !llvm.loop !275

.lr.ph48.i.i.i.i.i.prol.loopexit.1:               ; preds = %.lr.ph48.i.i.i.i.i.prol.1, %.lr.ph48.i.i.i.i.i.preheader.1
  %.lcssa72.unr.1 = phi <2 x double> [ poison, %.lr.ph48.i.i.i.i.i.preheader.1 ], [ %i.iw, %.lr.ph48.i.i.i.i.i.prol.1 ]
  %.147.i.i.i.i.i.unr.1 = phi i64 [ %.0.lcssa.i.i.i.i.i.1, %.lr.ph48.i.i.i.i.i.preheader.1 ], [ %i.ix, %.lr.ph48.i.i.i.i.i.prol.1 ]
  %.14246.i.i.i.i.i.unr.1 = phi <2 x double> [ %.041.lcssa.i.i.i.i.i.1, %.lr.ph48.i.i.i.i.i.preheader.1 ], [ %i.iw, %.lr.ph48.i.i.i.i.i.prol.1 ]
  %i.iy = sub i64 %.0.lcssa.i.i.i.i.i.1, %i.hy
  %i.iz = icmp ugt i64 %i.iy, -4
  br i1 %i.iz, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.1, label %.lr.ph48.i.i.i.i.i.1

.lr.ph48.i.i.i.i.i.1:                             ; preds = %.lr.ph48.i.i.i.i.i.prol.loopexit.1, %.lr.ph48.i.i.i.i.i.1
  %.147.i.i.i.i.i.1 = phi i64 [ %i.js, %.lr.ph48.i.i.i.i.i.1 ], [ %.147.i.i.i.i.i.unr.1, %.lr.ph48.i.i.i.i.i.prol.loopexit.1 ] ; 5 uses
  %.14246.i.i.i.i.i.1 = phi <2 x double> [ %i.jr, %.lr.ph48.i.i.i.i.i.1 ], [ %.14246.i.i.i.i.i.unr.1, %.lr.ph48.i.i.i.i.i.prol.loopexit.1 ]
  %.idx.i.i30.i.i.i.i.i.178 = mul nuw nsw i64 %.147.i.i.i.i.i.1, 24
  %i.ja = getelementptr inbounds nuw i8, ptr %i.hx, i64 %.idx.i.i30.i.i.i.i.i.178
  %i.jb = load <2 x double>, ptr %i.ja, align 1, !tbaa !26
  %i.jc = fadd <2 x double> %.14246.i.i.i.i.i.1, %i.jb
  %i.jd = mul nuw i64 %.147.i.i.i.i.i.1, 24
  %i.je = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.jd
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 24
  %i.jg = load <2 x double>, ptr %i.jf, align 1, !tbaa !26
  %i.jh = fadd <2 x double> %i.jc, %i.jg
  %i.ji = mul nuw i64 %.147.i.i.i.i.i.1, 24
  %i.jj = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.ji
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 48
  %i.jl = load <2 x double>, ptr %i.jk, align 1, !tbaa !26
  %i.jm = fadd <2 x double> %i.jh, %i.jl
  %i.jn = mul nuw i64 %.147.i.i.i.i.i.1, 24
  %i.jo = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.jn
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 72
  %i.jq = load <2 x double>, ptr %i.jp, align 1, !tbaa !26
  %i.jr = fadd <2 x double> %i.jm, %i.jq          ; 2 uses
  %i.js = add nuw nsw i64 %.147.i.i.i.i.i.1, 4    ; 2 uses
  %exitcond.not.i.i.i.i.i.3.1 = icmp eq i64 %i.js, %i.hy
  br i1 %exitcond.not.i.i.i.i.i.3.1, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.1, label %.lr.ph48.i.i.i.i.i.1, !llvm.loop !277

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.1: ; preds = %.lr.ph48.i.i.i.i.i.prol.loopexit.1, %.lr.ph48.i.i.i.i.i.1, %.preheader.i.i.i.i.i.1, %bb.b
  %.025.i.i.i.i.i.1 = phi <2 x double> [ zeroinitializer, %bb.b ], [ %.041.lcssa.i.i.i.i.i.1, %.preheader.i.i.i.i.i.1 ], [ %.lcssa72.unr.1, %.lr.ph48.i.i.i.i.i.prol.loopexit.1 ], [ %i.jr, %.lr.ph48.i.i.i.i.i.1 ]
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.he
  %i.ju = fadd <2 x double> %i.hm, %i.hq
  %i.jv = shufflevector <1 x double> %i.hs, <1 x double> poison, <2 x i32> zeroinitializer
  %i.jw = fdiv <2 x double> %i.ju, %i.jv
  %i.jx = getelementptr inbounds nuw i8, ptr %i.hi, i64 80
  %2 = load <1 x double>, ptr %i.jx, align 8
  %i.jy = shufflevector <1 x double> %2, <1 x double> poison, <2 x i32> zeroinitializer
  %i.jz = fdiv <2 x double> %.025.i.i.i.i.i.1, %i.jy
  %i.ka = fsub <2 x double> %i.jw, %i.jz
  store <2 x double> %i.ka, ptr %i.jt, align 16, !tbaa !26
  br label %._crit_edge
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS3_INS_13CwiseBinaryOpINS0_20scalar_difference_opIffEEKNS_9TransposeIKNS7_INS0_18scalar_quotient_opIffEEKNS7_INS0_13scalar_sum_opIffEEKNS4_IfLi3ELi1ELi0ELi3ELi1EEESG_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEESG_EEEEEEKNS7_ISC_KNS_16PartialReduxExprINS4_IfLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIffEELi0EEEKNSJ_ISL_KNS4_IfLi1ELin1ELi1ELi1ELin1EEEEEEEEEEENS0_9assign_opIffEELi0EEELi1ELi0EE3runERS18_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !278, !nonnull !224, !align !225
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !280  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !282, !nonnull !224, !align !225 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !283  ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !283  ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !285, !nonnull !224, !align !225 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !95, !noalias !288 ; 28 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !97, !noalias !288 ; 25 uses
  %i.o = icmp eq i64 %i.n, 0
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 6 uses
  %i.q = icmp sgt i64 %i.n, 1                     ; 3 uses
  br i1 %i.o, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIffEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIffEEKNS6_INS0_13scalar_sum_opIffEEKNS3_IfLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IfLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIffEELi0EEEKNSI_ISK_KNS3_IfLi1ELin1ELi1ELi1ELin1EEEEEEEEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  %i.r = ptrtoaddr ptr %i.l to i64
  %i.s = and i64 %i.r, 3
  %i.t = load float, ptr %i.f, align 4, !tbaa !59
  %i.u = load float, ptr %i.h, align 4, !tbaa !59
  %i.v = load float, ptr %i.i, align 8, !tbaa !83
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.s, 0 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.b, label %_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIffEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIffEEKNS6_INS0_13scalar_sum_opIffEEKNS3_IfLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IfLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIffEELi0EEEKNSI_ISK_KNS3_IfLi1ELin1ELi1ELi1ELin1EEEEEEEEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.us.preheader: ; preds = %bb.a
  %i.w = load float, ptr %i.f, align 4, !tbaa !59
  %i.x = load float, ptr %i.h, align 4, !tbaa !59
  %i.y = load float, ptr %i.i, align 8, !tbaa !83
  %i.z = fadd float %i.w, %i.x
  %i.aa = fdiv float %i.z, %i.y
  %i.ab = load float, ptr %i.p, align 8, !tbaa !83
  %i.ac = fdiv float 0.000000e+00, %i.ab
  %i.ad = fsub float %i.aa, %i.ac
  store float %i.ad, ptr %i.b, align 4, !tbaa !59
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.ag = load float, ptr %i.ae, align 4, !tbaa !59
  %i.ah = load float, ptr %i.af, align 4, !tbaa !59
  %i.ai = load float, ptr %i.i, align 8, !tbaa !83
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ak = fadd float %i.ag, %i.ah
  %i.al = fdiv float %i.ak, %i.ai
  %i.am = load float, ptr %i.p, align 8, !tbaa !83
  %i.an = fdiv float 0.000000e+00, %i.am
  %i.ao = fsub float %i.al, %i.an
  store float %i.ao, ptr %i.aj, align 4, !tbaa !59
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ar = load float, ptr %i.ap, align 4, !tbaa !59
  %i.as = load float, ptr %i.aq, align 4, !tbaa !59
  %i.at = load float, ptr %i.i, align 8, !tbaa !83
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.av = fadd float %i.ar, %i.as
  %i.aw = fdiv float %i.av, %i.at
  %i.ax = load float, ptr %i.p, align 8, !tbaa !83
  %i.ay = fdiv float 0.000000e+00, %i.ax
  %i.az = fsub float %i.aw, %i.ay
  store float %i.az, ptr %i.au, align 4, !tbaa !59
  br label %.split12.us

.split12.us:                                      ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIffEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIffEEKNS6_INS0_13scalar_sum_opIffEEKNS3_IfLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IfLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIffEELi0EEEKNSI_ISK_KNS3_IfLi1ELin1ELi1ELi1ELin1EEEEEEEEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.2, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIffEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIffEEKNS6_INS0_13scalar_sum_opIffEEKNS3_IfLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IfLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIffEELi0EEEKNSI_ISK_KNS3_IfLi1ELin1ELi1ELi1ELin1EEEEEEEEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.us.preheader
  ret void

bb.b:                                             ; preds = %.split.preheader
  %i.ba = ptrtoint ptr %i.l to i64
  %i.bb = lshr exact i64 %i.ba, 2
  %i.bc = sub nsw i64 0, %i.bb
  %i.bd = and i64 %i.bc, 3
  %i.be = tail call i64 @llvm.smin.i64(i64 %i.bd, i64 %i.n)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b, %.split.preheader
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.be, %bb.b ], [ %i.n, %.split.preheader ] ; 10 uses
  %i.bf = sub nsw i64 %i.n, %.0.i.i.i.i.i.i.i.i.i.i.i.i ; 5 uses
  %i.bg = sdiv i64 %i.bf, 8
  %i.bh = shl nsw i64 %i.bg, 3                    ; 2 uses
  %i.bi = sdiv i64 %i.bf, 4
  %i.bj = shl nsw i64 %i.bi, 2                    ; 2 uses
  %i.bk = add nsw i64 %i.bh, %.0.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bl = add nsw i64 %i.bj, %.0.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.off.i.i.i.i.i.i.i.i = add i64 %i.bf, 3
  %.not.i.i.i.i.i.i.i.i = icmp ult i64 %.off.i.i.i.i.i.i.i.i, 7
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i
  %i.bm = getelementptr [4 x i8], ptr %i.l, i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bn = load <4 x float>, ptr %i.bm, align 1, !tbaa !26 ; 3 uses
  %i.bo = icmp sgt i64 %i.bf, 7
  br i1 %i.bo, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.bp = getelementptr i8, ptr %i.bm, i64 16
  %i.bq = load <4 x float>, ptr %i.bp, align 1, !tbaa !26 ; 2 uses
  %i.br = icmp samesign ugt i64 %i.bf, 15
  br i1 %i.br, label %.lr.ph.preheader.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i:                 ; preds = %bb.d
  %.05478.i.i.i.i.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 8
  br label %.lr.ph.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.d
  %.076.lcssa.i.i.i.i.i.i.i.i = phi <4 x float> [ %i.bq, %bb.d ], [ %i.ca, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.073.lcssa.i.i.i.i.i.i.i.i = phi <4 x float> [ %i.bn, %bb.d ], [ %i.bw, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.bs = fadd <4 x float> %.076.lcssa.i.i.i.i.i.i.i.i, %.073.lcssa.i.i.i.i.i.i.i.i ; 2 uses
  %i.bt = icmp sgt i64 %i.bj, %i.bh
  br i1 %i.bt, label %bb.e, label %bb.f

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i
  %.05482.i.i.i.i.i.i.i.i = phi i64 [ %.054.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.05478.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 3 uses
  %.054.in81.i.i.i.i.i.i.i.i = phi i64 [ %.05482.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i ]
  %.07380.i.i.i.i.i.i.i.i = phi <4 x float> [ %i.bw, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.bn, %.lr.ph.preheader.i.i.i.i.i.i.i.i ]
  %.07679.i.i.i.i.i.i.i.i = phi <4 x float> [ %i.ca, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.bq, %.lr.ph.preheader.i.i.i.i.i.i.i.i ]
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.05482.i.i.i.i.i.i.i.i
  %i.bv = load <4 x float>, ptr %i.bu, align 1, !tbaa !26
  %i.bw = fadd <4 x float> %.07380.i.i.i.i.i.i.i.i, %i.bv ; 2 uses
  %i.bx = getelementptr [4 x i8], ptr %i.l, i64 %.054.in81.i.i.i.i.i.i.i.i
  %i.by = getelementptr i8, ptr %i.bx, i64 48
  %i.bz = load <4 x float>, ptr %i.by, align 1, !tbaa !26
  %i.ca = fadd <4 x float> %.07679.i.i.i.i.i.i.i.i, %i.bz ; 2 uses
  %.054.i.i.i.i.i.i.i.i = add nsw i64 %.05482.i.i.i.i.i.i.i.i, 8 ; 2 uses
  %i.cb = icmp slt i64 %.054.i.i.i.i.i.i.i.i, %i.bk
  br i1 %i.cb, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, !llvm.loop !291

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.bk
  %i.cd = load <4 x float>, ptr %i.cc, align 1, !tbaa !26
  %i.ce = fadd <4 x float> %i.bs, %i.cd
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i.i.i.i.i, %bb.c
  %.275.i.i.i.i.i.i.i.i = phi <4 x float> [ %i.bn, %bb.c ], [ %i.ce, %bb.e ], [ %i.bs, %._crit_edge.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.cf = shufflevector <4 x float> %.275.i.i.i.i.i.i.i.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.cg = fadd <4 x float> %.275.i.i.i.i.i.i.i.i, %i.cf ; 2 uses
  %shift = shufflevector <4 x float> %i.cg, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.cg, %shift
  %i.ch = extractelement <4 x float> %foldExtExtBinop, i64 0 ; 3 uses
  %i.ci = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ci, label %.lr.ph87.i.i.i.i.i.i.i.i.preheader, label %.preheader.i.i.i.i.i.i.i.i

.lr.ph87.i.i.i.i.i.i.i.i.preheader:               ; preds = %bb.f
  %xtraiter = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 7 ; 3 uses
  %i.cj = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 8
  br i1 %i.cj, label %.lr.ph87.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph87.i.i.i.i.i.i.i.i.preheader.new

.lr.ph87.i.i.i.i.i.i.i.i.preheader.new:           ; preds = %.lr.ph87.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775800
  br label %.lr.ph87.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.loopexit.unr-lcssa:    ; preds = %.lr.ph87.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i.i.i.i.i.i.i, label %.lr.ph87.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph87.i.i.i.i.i.i.i.i.epil.preheader:          ; preds = %.preheader.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph87.i.i.i.i.i.i.i.i.preheader
  %.05385.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph87.i.i.i.i.i.i.i.i.preheader ], [ %i.du, %.preheader.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %.07284.i.i.i.i.i.i.i.i.epil.init = phi float [ %i.ch, %.lr.ph87.i.i.i.i.i.i.i.i.preheader ], [ %i.dt, %.preheader.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod84 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod84)
  br label %.lr.ph87.i.i.i.i.i.i.i.i.epil

.lr.ph87.i.i.i.i.i.i.i.i.epil:                    ; preds = %.lr.ph87.i.i.i.i.i.i.i.i.epil, %.lr.ph87.i.i.i.i.i.i.i.i.epil.preheader
  %.05385.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.cn, %.lr.ph87.i.i.i.i.i.i.i.i.epil ], [ %.05385.i.i.i.i.i.i.i.i.epil.init, %.lr.ph87.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %.07284.i.i.i.i.i.i.i.i.epil = phi float [ %i.cm, %.lr.ph87.i.i.i.i.i.i.i.i.epil ], [ %.07284.i.i.i.i.i.i.i.i.epil.init, %.lr.ph87.i.i.i.i.i.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph87.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph87.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.05385.i.i.i.i.i.i.i.i.epil
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !59
  %i.cm = fadd float %.07284.i.i.i.i.i.i.i.i.epil, %i.cl ; 2 uses
  %i.cn = add nuw nsw i64 %.05385.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.i.i.i.i.i.i.i.i, label %.lr.ph87.i.i.i.i.i.i.i.i.epil, !llvm.loop !292

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph87.i.i.i.i.i.i.i.i.epil, %bb.f
  %.072.lcssa.i.i.i.i.i.i.i.i = phi float [ %i.ch, %bb.f ], [ %i.dt, %.preheader.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.cm, %.lr.ph87.i.i.i.i.i.i.i.i.epil ] ; 2 uses
  %i.co = icmp slt i64 %i.bl, %i.n
  br i1 %i.co, label %.lr.ph91.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIffEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIffEEKNS6_INS0_13scalar_sum_opIffEEKNS3_IfLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IfLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIffEELi0EEEKNSI_ISK_KNS3_IfLi1ELin1ELi1ELi1ELin1EEEEEEEEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit

.lr.ph87.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph87.i.i.i.i.i.i.i.i, %.lr.ph87.i.i.i.i.i.i.i.i.preheader.new
  %.05385.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph87.i.i.i.i.i.i.i.i.preheader.new ], [ %i.du, %.lr.ph87.i.i.i.i.i.i.i.i ] ; 9 uses
  %.07284.i.i.i.i.i.i.i.i = phi float [ %i.ch, %.lr.ph87.i.i.i.i.i.i.i.i.preheader.new ], [ %i.dt, %.lr.ph87.i.i.i.i.i.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph87.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph87.i.i.i.i.i.i.i.i ]
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.05385.i.i.i.i.i.i.i.i
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !59
  %i.cr = fadd float %.07284.i.i.i.i.i.i.i.i, %i.cq
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.05385.i.i.i.i.i.i.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !59
  %i.cv = fadd float %i.cr, %i.cu
end_hunk_1
