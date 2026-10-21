Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/bone_heat?download=true
inline.NumInlined: 3046
inline.NumDeleted: 1580
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN5Eigen8internal26permutation_matrix_productINS_7ProductINS2_INS_12SparseMatrixIdLi0EiEENS_15DiagonalWrapperIKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEELi0EEENS6_IdLin1ELin1ELi0ELin1ELin1EEELi0EEELi1ELb0ENS_10DenseShapeEE3runISB_NS_17PermutationMatrixILin1ELin1EiEEEEvRT_RKT0_RKSC_:bb.a
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader140, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %index ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %index ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %wide.load = load <2 x double>, ptr %i.ca, align 8, !tbaa !54
  %wide.load119 = load <2 x double>, ptr %i.cb, align 8, !tbaa !54
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store <2 x double> %wide.load, ptr %i.bz, align 8, !tbaa !54
  store <2 x double> %wide.load119, ptr %i.cc, align 8, !tbaa !54
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !412

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader140

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader140:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %vector.memcheck, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ %n.vec, %middle.block ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader140, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.cj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader140 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader140 ]
  %i.ce = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.prol, %i.i
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.ce
  %i.cg = mul nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.prol, %i.b
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.cg
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !54
  store double %i.ci, ptr %i.cf, align 8, !tbaa !54
  %i.cj = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !413

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader140
  %.05.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader140 ], [ %i.cj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.ck = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.ph, %i.o
  %i.cl = icmp ugt i64 %i.ck, -4
  br i1 %i.cl, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dj, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.cm = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, %i.i
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.cm
  %i.co = mul nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, %i.b
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.co
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !54
  store double %i.cq, ptr %i.cn, align 8, !tbaa !54
  %i.cr = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.cs = mul nsw i64 %i.cr, %i.i
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.cs
  %i.cu = mul nuw nsw i64 %i.cr, %i.b
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.cu
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !54
  store double %i.cw, ptr %i.ct, align 8, !tbaa !54
  %i.cx = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.cy = mul nsw i64 %i.cx, %i.i
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.cy
  %i.da = mul nuw nsw i64 %i.cx, %i.b
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.da
  %i.dc = load double, ptr %i.db, align 8, !tbaa !54
  store double %i.dc, ptr %i.cz, align 8, !tbaa !54
  %i.dd = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.de = mul nsw i64 %i.dd, %i.i
  %i.df = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.de
  %i.dg = mul nuw nsw i64 %i.dd, %i.b
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.dg
  %i.di = load double, ptr %i.dh, align 8, !tbaa !54
  store double %i.di, ptr %i.df, align 8, !tbaa !54
  %i.dj = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.dj, %i.o
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !414

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block
  %i.dk = add nuw nsw i64 %.086, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.dk, %i.b
  br i1 %exitcond.not, label %.loopexit84, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, !llvm.loop !415

.loopexit84:                                      ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit, %.preheader83, %.lr.ph, %.critedge
  call void @free(ptr noundef %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS3_INS_12SparseMatrixIdLi0EiEENS_15DiagonalWrapperIKNS0_IdLin1ELi1ELi0ELin1ELi1EEEEELi0EEES1_Li0EEEEERKT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::Product", align 8    ; 4 uses
  %i.a = alloca double, align 8                   ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !101, !nonnull !61, !align !102
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !103  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !123, !nonnull !61, !align !102 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !50   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not.i.i.i.i = icmp eq i64 %i.e, 0             ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not11.i.i.i.i = icmp eq i64 %i.i, 0           ; 2 uses
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i, i1 %.not11.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_7ProductINS5_INS_12SparseMatrixIdLi0EiEENS_15DiagonalWrapperIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEELi0EEES2_Li0EEEEERS2_RKNS_9DenseBaseIT_EE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %or.cond.i.i.i.i.i.i = or i1 %.not.i.i.i.i, %.not11.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = sdiv i64 9223372036854775807, %i.i
  %i.m = icmp sgt i64 %i.e, %i.l
  br i1 %i.m, label %bb.d, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.n = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !23
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.d
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.o = mul nsw i64 %i.i, %i.e
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.o, i64 noundef %i.e, i64 noundef %i.i)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !123 ; 2 uses
  %.pre13.i.i.i.i = load i64, ptr %i.j, align 8, !tbaa !15
  %.pre14.i.i.i.i = load i64, ptr %i.k, align 8, !tbaa !50
  %i.p = mul nsw i64 %.pre13.i.i.i.i, %.pre14.i.i.i.i ; 2 uses
  %i.q = icmp slt i64 %i.p, 1
  br i1 %i.q, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_7ProductINS5_INS_12SparseMatrixIdLi0EiEENS_15DiagonalWrapperIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEELi0EEES2_Li0EEEEERS2_RKNS_9DenseBaseIT_EE.exit.i, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.i.i.i.i.i

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.i.i.i.i.i: ; preds = %bb.e
  %i.r = load ptr, ptr %0, align 8, !tbaa !49
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.p, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.r, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !54
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_7ProductINS5_INS_12SparseMatrixIdLi0EiEENS_15DiagonalWrapperIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEELi0EEES2_Li0EEEEERS2_RKNS_9DenseBaseIT_EE.exit.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_7ProductINS5_INS_12SparseMatrixIdLi0EiEENS_15DiagonalWrapperIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEELi0EEES2_Li0EEEEERS2_RKNS_9DenseBaseIT_EE.exit.i: ; preds = %bb.a, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.i.i.i.i.i, %bb.e
  %i.s = phi ptr [ %.pre.i.i.i.i, %bb.e ], [ %.pre.i.i.i.i, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.i.i.i.i.i ], [ %i.g, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 24, i1 false)
  invoke void @_ZN5Eigen8internal30sparse_time_dense_product_implINS_7ProductINS_12SparseMatrixIdLi0EiEENS_15DiagonalWrapperIKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEELi0EEENS6_IdLin1ELin1ELi0ELin1ELin1EEESB_dLi0ELb1EE3runERKSA_RKSB_RSB_RKd(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_7ProductINS5_INS_12SparseMatrixIdLi0EiEENS_15DiagonalWrapperIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEELi0EEES2_Li0EEEEERS2_RKNS_9DenseBaseIT_EE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void

bb.g:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_7ProductINS5_INS_12SparseMatrixIdLi0EiEENS_15DiagonalWrapperIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEELi0EEES2_Li0EEEEERS2_RKNS_9DenseBaseIT_EE.exit.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i, %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %0, align 8, !tbaa !49
  call void @free(ptr noundef %i.u) #23
  resume { ptr, i32 } %i.t
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal30sparse_time_dense_product_implINS_7ProductINS_12SparseMatrixIdLi0EiEENS_15DiagonalWrapperIKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEELi0EEENS6_IdLin1ELin1ELi0ELin1ELin1EEESB_dLi0ELb1EE3runERKSA_RKSB_RSB_RKd(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104, !nonnull !61, !align !102 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !65   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !50   ; 3 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %.preheader.lr.ph, label %._crit_edge33.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !68   ; 3 uses
  %i.i = icmp sgt i64 %i.h, 0
  %i.j = load ptr, ptr %1, align 8                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br i1 %i.i, label %.preheader.lr.ph.split, label %._crit_edge33.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !101, !nonnull !61, !align !102 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !94   ; 4 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !95   ; 4 uses
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !75   ; 2 uses
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !93   ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.preheader.us.preheader, label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph.split
  %.pre41.pre = load double, ptr %3, align 8, !tbaa !54
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge28.split.us.us
  %.pre41 = phi double [ %.pre4142, %._crit_edge28.split.us.us ], [ %.pre41.pre, %.preheader.us.preheader ] ; 2 uses
  %.01831.us = phi i64 [ %i.bs, %._crit_edge28.split.us.us ], [ 0, %.preheader.us.preheader ] ; 3 uses
  %i.y = mul nsw i64 %i.l, %.01831.us
  %invariant.gep29.us = getelementptr [8 x i8], ptr %i.j, i64 %i.y
  br label %_ZN5Eigen8internal33sparse_diagonal_product_evaluatorINS_12SparseMatrixIdLi0EiEENS_9TransposeIKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEELi0EE13InnerIteratorC2ERKS9_l.exit.us.us

_ZN5Eigen8internal33sparse_diagonal_product_evaluatorINS_12SparseMatrixIdLi0EiEENS_9TransposeIKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEELi0EE13InnerIteratorC2ERKS9_l.exit.us.us: ; preds = %._crit_edge.us.us, %.preheader.us
  %.pre4143 = phi double [ %.pre41, %.preheader.us ], [ %.pre4142, %._crit_edge.us.us ]
  %4 = phi double [ %.pre41, %.preheader.us ], [ %5, %._crit_edge.us.us ] ; 2 uses
  %.01726.us.us = phi i64 [ 0, %.preheader.us ], [ %i.br, %._crit_edge.us.us ] ; 4 uses
  %gep30.us.us = getelementptr [8 x i8], ptr %invariant.gep29.us, i64 %.01726.us.us
  %i.z = load double, ptr %gep30.us.us, align 8, !tbaa !54
  %i.aa = fmul double %4, %i.z                    ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.01726.us.us ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !52 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ab, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !52 ; 2 uses
  %i.af = sext i32 %i.ae to i64                   ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.01726.us.us
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !54 ; 3 uses
  %i.ai = icmp slt i32 %i.ac, %i.ae
  br i1 %i.ai, label %.lr.ph.us.us, label %._crit_edge.us.us

.lr.ph.us.us:                                     ; preds = %_ZN5Eigen8internal33sparse_diagonal_product_evaluatorINS_12SparseMatrixIdLi0EiEENS_9TransposeIKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEELi0EE13InnerIteratorC2ERKS9_l.exit.us.us
  %i.aj = sext i32 %i.ac to i64                   ; 6 uses
  %i.ak = load ptr, ptr %2, align 8, !tbaa !49
  %i.al = load i64, ptr %i.m, align 8, !tbaa !15
  %i.am = mul nsw i64 %i.al, %.01831.us
  %invariant.gep.us.us = getelementptr [8 x i8], ptr %i.ak, i64 %i.am ; 3 uses
  %i.an = sub nsw i64 %i.af, %i.aj
  %xtraiter = and i64 %i.an, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.us.us
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.aj
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !54
  %i.aq = fmul double %i.ah, %i.ap
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.aj
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !52
  %i.at = sext i32 %i.as to i64
  %gep.us.us.prol = getelementptr [8 x i8], ptr %invariant.gep.us.us, i64 %i.at ; 2 uses
  %i.au = load double, ptr %gep.us.us.prol, align 8, !tbaa !54
  %i.av = tail call double @llvm.fmuladd.f64(double %i.aq, double %i.aa, double %i.au)
  store double %i.av, ptr %gep.us.us.prol, align 8, !tbaa !54
  %i.aw = add nsw i64 %i.aj, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.us.us
  %.sroa.8.025.us.us.unr = phi i64 [ %i.aj, %.lr.ph.us.us ], [ %i.aw, %.prol.loopexit.unr-lcssa ]
  %i.ax = add nsw i64 %i.af, -1
  %i.ay = icmp eq i64 %i.ax, %i.aj
  br i1 %i.ay, label %._crit_edge.us.us.loopexit, label %.lr.ph.us.us.new

.lr.ph.us.us.new:                                 ; preds = %.prol.loopexit, %.lr.ph.us.us.new
  %.sroa.8.025.us.us = phi i64 [ %i.bq, %.lr.ph.us.us.new ], [ %.sroa.8.025.us.us.unr, %.prol.loopexit ] ; 4 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %i.t, i64 %.sroa.8.025.us.us
  %i.ba = load double, ptr %i.az, align 8, !tbaa !54
  %i.bb = fmul double %i.ah, %i.ba
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.u, i64 %.sroa.8.025.us.us
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !52
  %i.be = sext i32 %i.bd to i64
  %gep.us.us = getelementptr [8 x i8], ptr %invariant.gep.us.us, i64 %i.be ; 2 uses
  %i.bf = load double, ptr %gep.us.us, align 8, !tbaa !54
  %i.bg = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.aa, double %i.bf)
  store double %i.bg, ptr %gep.us.us, align 8, !tbaa !54
  %i.bh = add nsw i64 %.sroa.8.025.us.us, 1       ; 2 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.bh
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !54
  %i.bk = fmul double %i.ah, %i.bj
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.bh
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !52
  %i.bn = sext i32 %i.bm to i64
  %gep.us.us.1 = getelementptr [8 x i8], ptr %invariant.gep.us.us, i64 %i.bn ; 2 uses
  %i.bo = load double, ptr %gep.us.us.1, align 8, !tbaa !54
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.bk, double %i.aa, double %i.bo)
  store double %i.bp, ptr %gep.us.us.1, align 8, !tbaa !54
  %i.bq = add nsw i64 %.sroa.8.025.us.us, 2       ; 2 uses
  %exitcond38.not.1 = icmp eq i64 %i.bq, %i.af
  br i1 %exitcond38.not.1, label %._crit_edge.us.us.loopexit, label %.lr.ph.us.us.new, !llvm.loop !418

._crit_edge.us.us.loopexit:                       ; preds = %.lr.ph.us.us.new, %.prol.loopexit
  %.pre = load double, ptr %3, align 8, !tbaa !54 ; 2 uses
  br label %._crit_edge.us.us

._crit_edge.us.us:                                ; preds = %._crit_edge.us.us.loopexit, %_ZN5Eigen8internal33sparse_diagonal_product_evaluatorINS_12SparseMatrixIdLi0EiEENS_9TransposeIKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEELi0EE13InnerIteratorC2ERKS9_l.exit.us.us
  %.pre4142 = phi double [ %.pre, %._crit_edge.us.us.loopexit ], [ %.pre4143, %_ZN5Eigen8internal33sparse_diagonal_product_evaluatorINS_12SparseMatrixIdLi0EiEENS_9TransposeIKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEELi0EE13InnerIteratorC2ERKS9_l.exit.us.us ] ; 2 uses
  %5 = phi double [ %.pre, %._crit_edge.us.us.loopexit ], [ %4, %_ZN5Eigen8internal33sparse_diagonal_product_evaluatorINS_12SparseMatrixIdLi0EiEENS_9TransposeIKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEELi0EE13InnerIteratorC2ERKS9_l.exit.us.us ]
  %i.br = add nuw nsw i64 %.01726.us.us, 1        ; 2 uses
  %exitcond39.not = icmp eq i64 %i.br, %i.h
  br i1 %exitcond39.not, label %._crit_edge28.split.us.us, label %_ZN5Eigen8internal33sparse_diagonal_product_evaluatorINS_12SparseMatrixIdLi0EiEENS_9TransposeIKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEELi0EE13InnerIteratorC2ERKS9_l.exit.us.us, !llvm.loop !419

._crit_edge28.split.us.us:                        ; preds = %._crit_edge.us.us
  %i.bs = add nuw nsw i64 %.01831.us, 1           ; 2 uses
  %exitcond40.not = icmp eq i64 %i.bs, %i.e
  br i1 %exitcond40.not, label %._crit_edge33.split, label %.preheader.us, !llvm.loop !420

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge28.split
  %.01831 = phi i64 [ %i.bu, %._crit_edge28.split ], [ 0, %.preheader.lr.ph.split ] ; 3 uses
  %i.bt = mul nsw i64 %i.l, %.01831
  %invariant.gep29 = getelementptr [8 x i8], ptr %i.j, i64 %i.bt
  br label %_ZN5Eigen8internal33sparse_diagonal_product_evaluatorINS_12SparseMatrixIdLi0EiEENS_9TransposeIKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEELi0EE13InnerIteratorC2ERKS9_l.exit

._crit_edge33.split:                              ; preds = %._crit_edge28.split, %._crit_edge28.split.us.us, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge28.split:                              ; preds = %._crit_edge
  %i.bu = add nuw nsw i64 %.01831, 1              ; 2 uses
  %exitcond37.not = icmp eq i64 %i.bu, %i.e
  br i1 %exitcond37.not, label %._crit_edge33.split, label %.preheader, !llvm.loop !420

_ZN5Eigen8internal33sparse_diagonal_product_evaluatorINS_12SparseMatrixIdLi0EiEENS_9TransposeIKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEELi0EE13InnerIteratorC2ERKS9_l.exit: ; preds = %.preheader, %._crit_edge
  %.01726 = phi i64 [ 0, %.preheader ], [ %i.cl, %._crit_edge ] ; 5 uses
  %i.bv = load double, ptr %3, align 8, !tbaa !54
  %gep30 = getelementptr [8 x i8], ptr %invariant.gep29, i64 %.01726
  %i.bw = load double, ptr %gep30, align 8, !tbaa !54
  %i.bx = fmul double %i.bv, %i.bw
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.01726
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !52
  %i.ca = sext i32 %i.bz to i64                   ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.01726
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !52 ; 2 uses
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = add nsw i64 %i.cd, %i.ca
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.01726
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !54
  %i.ch = icmp sgt i32 %i.cc, 0
  br i1 %i.ch, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5Eigen8internal33sparse_diagonal_product_evaluatorINS_12SparseMatrixIdLi0EiEENS_9TransposeIKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEELi0EE13InnerIteratorC2ERKS9_l.exit
  %i.ci = load ptr, ptr %2, align 8, !tbaa !49
  %i.cj = load i64, ptr %i.m, align 8, !tbaa !15
  %i.ck = mul nsw i64 %i.cj, %.01831
  %invariant.gep = getelementptr [8 x i8], ptr %i.ci, i64 %i.ck
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %_ZN5Eigen8internal33sparse_diagonal_product_evaluatorINS_12SparseMatrixIdLi0EiEENS_9TransposeIKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEELi0EE13InnerIteratorC2ERKS9_l.exit
  %i.cl = add nuw nsw i64 %.01726, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.cl, %i.h
  br i1 %exitcond.not, label %._crit_edge28.split, label %_ZN5Eigen8internal33sparse_diagonal_product_evaluatorINS_12SparseMatrixIdLi0EiEENS_9TransposeIKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEELi0EE13InnerIteratorC2ERKS9_l.exit, !llvm.loop !419

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.8.025 = phi i64 [ %i.ca, %.lr.ph ], [ %i.cu, %bb.b ] ; 3 uses
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.t, i64 %.sroa.8.025
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !54
  %i.co = fmul double %i.cg, %i.cn
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.u, i64 %.sroa.8.025
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !52
  %i.cr = sext i32 %i.cq to i64
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.cr ; 2 uses
  %i.cs = load double, ptr %gep, align 8, !tbaa !54
  %i.ct = tail call double @llvm.fmuladd.f64(double %i.co, double %i.bx, double %i.cs)
  store double %i.ct, ptr %gep, align 8, !tbaa !54
  %i.cu = add nsw i64 %.sroa.8.025, 1             ; 2 uses
  %i.cv = icmp slt i64 %i.cu, %i.ce
  br i1 %i.cv, label %bb.b, label %._crit_edge, !llvm.loop !418
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal15call_assignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS4_INS_12SparseMatrixIdLi0EiEENS_15DiagonalWrapperIKNS2_IdLin1ELi1ELi0ELin1ELi1EEEEELi0EEES3_Li0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISH_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %3) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::Matrix", align 8     ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS3_INS_12SparseMatrixIdLi0EiEENS_15DiagonalWrapperIKNS0_IdLin1ELi1ELi0ELin1ELi1EEEEELi0EEES1_Li0EEEEERKT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.a = load ptr, ptr %4, align 8, !tbaa !49     ; 8 uses
  %i.b = ptrtoaddr ptr %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !15   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !50   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !15
  %.not.i.i.i.i = icmp eq i64 %i.h, %i.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8
  %.not8.i.i.i.i = icmp eq i64 %i.j, %i.f
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i, i1 %.not8.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i64 %i.d, 0
  %i.l = icmp eq i64 %i.f, 0
  %or.cond.i.i.i.i.i.i = or i1 %i.k, %i.l
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = sdiv i64 9223372036854775807, %i.f
  %i.n = icmp sgt i64 %i.d, %i.m
  br i1 %i.n, label %.noexc.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.c
  %i.o = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.o, align 8, !tbaa !23
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.p = mul nsw i64 %i.f, %i.d
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.p, i64 noundef %i.d, i64 noundef %i.f)
          to label %.noexc4 unwind label %bb.e

.noexc4:                                          ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i
  %.pre.i.i.i = load i64, ptr %i.g, align 8, !tbaa !15
  %.pre20.i.i.i = load i64, ptr %i.i, align 8, !tbaa !50
  br label %bb.d

bb.d:                                             ; preds = %.noexc4, %bb.a
  %i.q = phi i64 [ %.pre20.i.i.i, %.noexc4 ], [ %i.f, %bb.a ]
  %i.r = phi i64 [ %.pre.i.i.i, %.noexc4 ], [ %i.d, %bb.a ]
  %i.s = load ptr, ptr %0, align 8, !tbaa !49     ; 8 uses
  %i.t = ptrtoaddr ptr %i.s to i64
  %i.u = mul nsw i64 %i.r, %i.q                   ; 7 uses
  %i.v = sdiv i64 %i.u, 2
  %i.w = shl nsw i64 %i.v, 1                      ; 6 uses
  %i.x = icmp sgt i64 %i.u, 1
  br i1 %i.x, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.d
  %i.y = icmp slt i64 %i.w, %i.u
  br i1 %i.y, label %.lr.ph.i.i.i.i.i.preheader, label %_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_NS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %._crit_edge.i.i.i.i
  %i.z = sub i64 %i.u, %i.w                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.z, 8
  %i.aa = sub i64 %i.b, %i.t
  %diff.check = icmp ugt i64 %i.aa, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader11, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.z, -4                       ; 3 uses
  %i.ab = add i64 %i.w, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = add i64 %i.w, %index                    ; 2 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ac ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %wide.load = load <2 x double>, ptr %i.ae, align 8, !tbaa !54
  %wide.load10 = load <2 x double>, ptr %i.af, align 8, !tbaa !54
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store <2 x double> %wide.load, ptr %i.ad, align 8, !tbaa !54
  store <2 x double> %wide.load10, ptr %i.ag, align 8, !tbaa !54
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !421

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_NS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit, label %.lr.ph.i.i.i.i.i.preheader11

.lr.ph.i.i.i.i.i.preheader11:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.ph = phi i64 [ %i.w, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ab, %middle.block ] ; 4 uses
  %i.ai = sub i64 %i.u, %.05.i.i.i.i.i.ph
  %xtraiter = and i64 %i.ai, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader11, %.lr.ph.i.i.i.i.i.prol
  %.05.i.i.i.i.i.prol = phi i64 [ %i.am, %.lr.ph.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader11 ]
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.s, i64 %.05.i.i.i.i.i.prol
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.a, i64 %.05.i.i.i.i.i.prol
  %i.al = load double, ptr %i.ak, align 8, !tbaa !54
  store double %i.al, ptr %i.aj, align 8, !tbaa !54
  %i.am = add nsw i64 %.05.i.i.i.i.i.prol, 1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !422

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader11
  %.05.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ], [ %i.am, %.lr.ph.i.i.i.i.i.prol ]
  %i.an = sub i64 %.05.i.i.i.i.i.ph, %i.u
  %i.ao = icmp ugt i64 %i.an, -4
  br i1 %i.ao, label %_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_NS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi i64 [ %i.be, %.lr.ph.i.i.i.i.i ], [ %.05.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.s, i64 %.05.i.i.i.i.i
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.a, i64 %.05.i.i.i.i.i
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !54
  store double %i.ar, ptr %i.ap, align 8, !tbaa !54
  %i.as = add nsw i64 %.05.i.i.i.i.i, 1           ; 2 uses
end_hunk_0
