Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/EmbreeRenderer?download=true
inline.NumInlined: 3409
inline.NumDeleted: 2097
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN3igl6embree14EmbreeRenderer8set_dataIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EENS_12ColorMapTypeE:bb.a
  %i.bq = icmp slt i64 %.054.i.i.i.i24, %i.e
  br i1 %i.bq, label %.lr.ph.i.i.i.i19, label %._crit_edge.i.i.i.i16, !llvm.loop !163

bb.g:                                             ; preds = %._crit_edge.i.i.i.i16
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.e
  %i.bs = load <2 x double>, ptr %i.br, align 16, !tbaa !103
  %i.bt = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bh, <2 x double> %i.bs) #29, !srcloc !162
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i16, %.loopexit
  %.271.i.i.i.i8 = phi <2 x double> [ %i.h, %.loopexit ], [ %i.bt, %bb.g ], [ %i.bh, %._crit_edge.i.i.i.i16 ] ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i.i9 = extractelement <2 x double> %.271.i.i.i.i8, i64 0 ; 2 uses
  %.sroa.0.8.vec.extract.i.i.i.i.i.i10 = extractelement <2 x double> %.271.i.i.i.i8, i64 1 ; 2 uses
  %i.bu = fcmp olt double %.sroa.0.0.vec.extract.i.i.i.i.i.i9, %.sroa.0.8.vec.extract.i.i.i.i.i.i10
  %i.bv = select i1 %i.bu, double %.sroa.0.8.vec.extract.i.i.i.i.i.i10, double %.sroa.0.0.vec.extract.i.i.i.i.i.i9 ; 3 uses
  br i1 %i.ab, label %.lr.ph82.i.i.i.i12.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit

.lr.ph82.i.i.i.i12.preheader:                     ; preds = %bb.h
  %i.bw = sub i64 %i.c, %i.g
  %xtraiter57 = and i64 %i.bw, 3                  ; 2 uses
  %lcmp.mod58.not = icmp eq i64 %xtraiter57, 0
  br i1 %lcmp.mod58.not, label %.lr.ph82.i.i.i.i12.prol.loopexit, label %.lr.ph82.i.i.i.i12.prol

.lr.ph82.i.i.i.i12.prol:                          ; preds = %.lr.ph82.i.i.i.i12.preheader, %.lr.ph82.i.i.i.i12.prol
  %.05280.i.i.i.i13.prol = phi i64 [ %i.cb, %.lr.ph82.i.i.i.i12.prol ], [ %i.g, %.lr.ph82.i.i.i.i12.preheader ] ; 2 uses
  %.179.i.i.i.i14.prol = phi double [ %i.ca, %.lr.ph82.i.i.i.i12.prol ], [ %i.bv, %.lr.ph82.i.i.i.i12.preheader ] ; 2 uses
  %prol.iter59 = phi i64 [ %prol.iter59.next, %.lr.ph82.i.i.i.i12.prol ], [ 0, %.lr.ph82.i.i.i.i12.preheader ]
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.a, i64 %.05280.i.i.i.i13.prol
  %i.by = load double, ptr %i.bx, align 8, !tbaa !151 ; 2 uses
  %i.bz = fcmp olt double %.179.i.i.i.i14.prol, %i.by
  %i.ca = select i1 %i.bz, double %i.by, double %.179.i.i.i.i14.prol ; 3 uses
  %i.cb = add nsw i64 %.05280.i.i.i.i13.prol, 1   ; 2 uses
  %prol.iter59.next = add i64 %prol.iter59, 1     ; 2 uses
  %prol.iter59.cmp.not = icmp eq i64 %prol.iter59.next, %xtraiter57
  br i1 %prol.iter59.cmp.not, label %.lr.ph82.i.i.i.i12.prol.loopexit, label %.lr.ph82.i.i.i.i12.prol, !llvm.loop !164

.lr.ph82.i.i.i.i12.prol.loopexit:                 ; preds = %.lr.ph82.i.i.i.i12.prol, %.lr.ph82.i.i.i.i12.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph82.i.i.i.i12.preheader ], [ %i.ca, %.lr.ph82.i.i.i.i12.prol ]
  %.05280.i.i.i.i13.unr = phi i64 [ %i.g, %.lr.ph82.i.i.i.i12.preheader ], [ %i.cb, %.lr.ph82.i.i.i.i12.prol ]
  %.179.i.i.i.i14.unr = phi double [ %i.bv, %.lr.ph82.i.i.i.i12.preheader ], [ %i.ca, %.lr.ph82.i.i.i.i12.prol ]
  %i.cc = sub i64 %i.g, %i.c
  %i.cd = icmp ugt i64 %i.cc, -4
  br i1 %i.cd, label %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit, label %.lr.ph82.i.i.i.i12

.lr.ph82.i.i.i.i12:                               ; preds = %.lr.ph82.i.i.i.i12.prol.loopexit, %.lr.ph82.i.i.i.i12
  %.05280.i.i.i.i13 = phi i64 [ %i.cx, %.lr.ph82.i.i.i.i12 ], [ %.05280.i.i.i.i13.unr, %.lr.ph82.i.i.i.i12.prol.loopexit ] ; 5 uses
  %.179.i.i.i.i14 = phi double [ %i.cw, %.lr.ph82.i.i.i.i12 ], [ %.179.i.i.i.i14.unr, %.lr.ph82.i.i.i.i12.prol.loopexit ] ; 2 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.a, i64 %.05280.i.i.i.i13
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !151 ; 2 uses
  %i.cg = fcmp olt double %.179.i.i.i.i14, %i.cf
  %i.ch = select i1 %i.cg, double %i.cf, double %.179.i.i.i.i14 ; 2 uses
  %i.ci = getelementptr [8 x i8], ptr %i.a, i64 %.05280.i.i.i.i13
  %i.cj = getelementptr i8, ptr %i.ci, i64 8
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !151 ; 2 uses
  %i.cl = fcmp olt double %i.ch, %i.ck
  %i.cm = select i1 %i.cl, double %i.ck, double %i.ch ; 2 uses
  %i.cn = getelementptr [8 x i8], ptr %i.a, i64 %.05280.i.i.i.i13
  %i.co = getelementptr i8, ptr %i.cn, i64 16
  %i.cp = load double, ptr %i.co, align 8, !tbaa !151 ; 2 uses
  %i.cq = fcmp olt double %i.cm, %i.cp
  %i.cr = select i1 %i.cq, double %i.cp, double %i.cm ; 2 uses
  %i.cs = getelementptr [8 x i8], ptr %i.a, i64 %.05280.i.i.i.i13
  %i.ct = getelementptr i8, ptr %i.cs, i64 24
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !151 ; 2 uses
  %i.cv = fcmp olt double %i.cr, %i.cu
  %i.cw = select i1 %i.cv, double %i.cu, double %i.cr ; 2 uses
  %i.cx = add nsw i64 %.05280.i.i.i.i13, 4        ; 2 uses
  %exitcond.not.i.i.i.i15.3 = icmp eq i64 %i.cx, %i.c
  br i1 %exitcond.not.i.i.i.i15.3, label %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit, label %.lr.ph82.i.i.i.i12, !llvm.loop !165

bb.i:                                             ; preds = %bb.a
  %i.cy = load double, ptr %i.a, align 8, !tbaa !151 ; 2 uses
  br label %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit

_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit: ; preds = %.lr.ph82.i.i.i.i12.prol.loopexit, %.lr.ph82.i.i.i.i12, %bb.h, %bb.i
  %.3.i.i.i.i26 = phi double [ %.3.i.i.i.i.ph, %bb.h ], [ %i.cy, %bb.i ], [ %.3.i.i.i.i.ph, %.lr.ph82.i.i.i.i12 ], [ %.3.i.i.i.i.ph, %.lr.ph82.i.i.i.i12.prol.loopexit ]
  %.3.i.i.i.i11 = phi double [ %i.bv, %bb.h ], [ %i.cy, %bb.i ], [ %.lcssa.unr, %.lr.ph82.i.i.i.i12.prol.loopexit ], [ %i.cw, %.lr.ph82.i.i.i.i12 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  invoke void @_ZN3igl8colormapIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS2_IdLin1ELin1ELi0ELin1ELin1EEEEEvNS_12ColorMapTypeERKNS1_10MatrixBaseIT_EEddRNS1_15PlainObjectBaseIT0_EE(i32 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %1, double noundef %.3.i.i.i.i26, double noundef %.3.i.i.i.i11, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit
  invoke void @_ZN3igl6embree14EmbreeRenderer10set_colorsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEvRKNS3_10MatrixBaseIT_EE(ptr noundef nonnull align 16 dereferenceable(416) %0, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %_ZN3igl6embree14EmbreeRenderer8set_dataIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEEdEEvRKNS3_10MatrixBaseIT_EET0_SB_NS_12ColorMapTypeE.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit
  %i.cz = landingpad { ptr, i32 }
          cleanup
  %i.da = load ptr, ptr %3, align 8, !tbaa !166
  call void @free(ptr noundef %i.da) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %i.cz

_ZN3igl6embree14EmbreeRenderer8set_dataIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEEdEEvRKNS3_10MatrixBaseIT_EET0_SB_NS_12ColorMapTypeE.exit: ; preds = %bb.j
  %i.db = load ptr, ptr %3, align 8, !tbaa !166
  call void @free(ptr noundef %i.db) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl6embree14EmbreeRenderer8set_meshIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS3_10MatrixBaseIT_EERKNS7_IT0_EEb(ptr noundef nonnull align 16 dereferenceable(416) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, i1 noundef zeroext %3) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::internal::redux_evaluator.776", align 8 ; 5 uses
  %5 = alloca %"struct.Eigen::internal::evaluator.706", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !166    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !168  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !169  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 16, !tbaa !77
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.h, %i.d
  %.not8.i.i.i.i.i.i.i.i = icmp eq i64 %i.f, 3
  %or.cond.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i1 %.not8.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.b, label %thread-pre-split.i.i.i.i.i.i.i

thread-pre-split.i.i.i.i.i.i.i:                   ; preds = %bb.a
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.d, i64 noundef %i.f)
  %.pr.i.i.i.i.i.i.i = load i64, ptr %i.g, align 16, !tbaa !77
  br label %bb.b

bb.b:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i, %bb.a
  %i.i = phi i64 [ %.pr.i.i.i.i.i.i.i, %thread-pre-split.i.i.i.i.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !53   ; 2 uses
  %i.k = icmp sgt i64 %i.i, 0
  br i1 %i.k, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IdLin1ELin1ELi0ELin1ELin1EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.b
  %i.l = mul i64 %i.i, 3                          ; 2 uses
  %smax.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.l, i64 1) ; 3 uses
  %min.iters.check = icmp slt i64 %i.l, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %n.vec = and i64 %smax.i.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <2 x double>, ptr %i.n, align 8, !tbaa !151
  %wide.load54 = load <2 x double>, ptr %i.o, align 8, !tbaa !151
  %i.p = fptrunc <2 x double> %wide.load to <2 x float>
  %i.q = fptrunc <2 x double> %wide.load54 to <2 x float>
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store <2 x float> %i.p, ptr %i.m, align 4, !tbaa !9
  store <2 x float> %i.q, ptr %i.r, align 4, !tbaa !9
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !170

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %smax.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IdLin1ELin1ELi0ELin1ELin1EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block
  %.05.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.05.i.i.i.i.i.i.i.i = phi i64 [ %i.x, %scalar.ph ], [ %.05.i.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.05.i.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.05.i.i.i.i.i.i.i.i
  %i.v = load double, ptr %i.u, align 8, !tbaa !151
  %i.w = fptrunc double %i.v to float
  store float %i.w, ptr %i.t, align 4, !tbaa !9
  %i.x = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 1  ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.x, %smax.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %_ZN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IdLin1ELin1ELi0ELin1ELin1EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit, label %scalar.ph, !llvm.loop !173

_ZN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IdLin1ELin1ELi0ELin1ELin1EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit: ; preds = %scalar.ph, %middle.block, %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.z = load ptr, ptr %2, align 8, !tbaa !174    ; 8 uses
  %i.aa = ptrtoaddr ptr %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !176 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !177 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 16, !tbaa !80
  %.not.i.i.i.i.i.i.i.i3 = icmp eq i64 %i.ag, %i.ac
  %.not8.i.i.i.i.i.i.i.i4 = icmp eq i64 %i.ae, 3
  %or.cond.i.i.i.i.i.i.i.i5 = select i1 %.not.i.i.i.i.i.i.i.i3, i1 %.not8.i.i.i.i.i.i.i.i4, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i5, label %bb.c, label %thread-pre-split.i.i.i.i.i.i.i6

thread-pre-split.i.i.i.i.i.i.i6:                  ; preds = %_ZN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IdLin1ELin1ELi0ELin1ELin1EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i64 noundef %i.ac, i64 noundef %i.ae)
  %.pr.i.i.i.i.i.i.i7 = load i64, ptr %i.af, align 16, !tbaa !80
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i6, %_ZN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IdLin1ELin1ELi0ELin1ELin1EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit
  %i.ah = phi i64 [ %.pr.i.i.i.i.i.i.i7, %thread-pre-split.i.i.i.i.i.i.i6 ], [ %i.ac, %_ZN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IdLin1ELin1ELi0ELin1ELin1EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit ] ; 2 uses
  %i.ai = load ptr, ptr %i.y, align 8, !tbaa !54  ; 8 uses
  %i.aj = ptrtoaddr ptr %i.ai to i64
  %i.ak = mul i64 %i.ah, 3                        ; 6 uses
  %i.al = sdiv i64 %i.ak, 4
  %i.am = shl nsw i64 %i.al, 2                    ; 6 uses
  %i.an = icmp sgt i64 %i.ah, 1
  br i1 %i.an, label %.lr.ph.i.i.i.i.i.i.i.i8, label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i8, %bb.c
  %i.ao = icmp slt i64 %i.am, %i.ak
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEaSINS0_IiLin1ELin1ELi0ELin1ELin1EEEEERS1_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.ap = sub i64 %i.ak, %i.am                    ; 3 uses
  %min.iters.check56 = icmp ult i64 %i.ap, 8
  %i.aq = sub i64 %i.aa, %i.aj
  %diff.check = icmp ugt i64 %i.aq, -32
  %or.cond = select i1 %min.iters.check56, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader67, label %vector.ph57

vector.ph57:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %n.vec58 = and i64 %i.ap, -8                    ; 3 uses
  %i.ar = add i64 %i.am, %n.vec58
  br label %vector.body59

vector.body59:                                    ; preds = %vector.body59, %vector.ph57
  %index60 = phi i64 [ 0, %vector.ph57 ], [ %index.next63, %vector.body59 ] ; 2 uses
  %i.as = add i64 %i.am, %index60                 ; 2 uses
  %i.at = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.as ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %wide.load61 = load <4 x i32>, ptr %i.au, align 4, !tbaa !70
  %wide.load62 = load <4 x i32>, ptr %i.av, align 4, !tbaa !70
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store <4 x i32> %wide.load61, ptr %i.at, align 4, !tbaa !70
  store <4 x i32> %wide.load62, ptr %i.aw, align 4, !tbaa !70
  %index.next63 = add nuw i64 %index60, 8         ; 2 uses
  %i.ax = icmp eq i64 %index.next63, %n.vec58
  br i1 %i.ax, label %middle.block64, label %vector.body59, !llvm.loop !178

middle.block64:                                   ; preds = %vector.body59
  %cmp.n65 = icmp eq i64 %i.ap, %n.vec58
  br i1 %cmp.n65, label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEaSINS0_IiLin1ELin1ELi0ELin1ELin1EEEEERS1_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader67

.lr.ph.i.i.i.i.i.i.i.i.i.preheader67:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %middle.block64
  %.05.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.am, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ar, %middle.block64 ] ; 4 uses
  %i.ay = sub i64 %i.ak, %.05.i.i.i.i.i.i.i.i.i.ph
  %xtraiter = and i64 %i.ay, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader67, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.bc, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader67 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader67 ]
  %i.az = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %.05.i.i.i.i.i.i.i.i.i.prol
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.z, i64 %.05.i.i.i.i.i.i.i.i.i.prol
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !70
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !70
  %i.bc = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !179

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader67
  %.05.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader67 ], [ %i.bc, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.bd = sub i64 %.05.i.i.i.i.i.i.i.i.i.ph, %i.ak
  %i.be = icmp ugt i64 %i.bd, -4
  br i1 %i.be, label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEaSINS0_IiLin1ELin1ELi0ELin1ELin1EEEEERS1_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bu, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.z, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !70
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !70
  %i.bi = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.bi
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.bi
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !70
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !70
  %i.bm = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 2   ; 2 uses
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.bm
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.bm
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !70
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !70
  %i.bq = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 3   ; 2 uses
  %i.br = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.bq
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.bq
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !70
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !70
  %i.bu = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 4   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.bu, %i.ak
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEaSINS0_IiLin1ELin1ELi0ELin1ELin1EEEEERS1_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !180

.lr.ph.i.i.i.i.i.i.i.i8:                          ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i.i8
  %.011.i.i.i.i.i.i.i.i = phi i64 [ %i.by, %.lr.ph.i.i.i.i.i.i.i.i8 ], [ 0, %bb.c ] ; 3 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.011.i.i.i.i.i.i.i.i
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.011.i.i.i.i.i.i.i.i
  %i.bx = load <2 x i64>, ptr %i.bw, align 16, !tbaa !103
  store <2 x i64> %i.bx, ptr %i.bv, align 16, !tbaa !103
  %i.by = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.bz = icmp slt i64 %i.by, %i.am
  br i1 %i.bz, label %.lr.ph.i.i.i.i.i.i.i.i8, label %._crit_edge.i.i.i.i.i.i.i.i, !llvm.loop !181

_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEaSINS0_IiLin1ELin1ELi0ELin1ELin1EEEEERS1_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block64, %._crit_edge.i.i.i.i.i.i.i.i
  tail call void @_ZN3igl6embree14EmbreeRenderer4initERKN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEERKNS3_IiLin1ELi3ELi0ELin1ELi3EEEb(ptr noundef nonnull align 16 dereferenceable(416) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.y, i1 noundef zeroext %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !182
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  store float 5.000000e-01, ptr %i.ca, align 4, !tbaa !185, !noalias !182
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.a, ptr %i.cb, align 8, !tbaa !55, !noalias !182
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %i.a, ptr %i.cc, align 8, !tbaa !55, !noalias !182
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.ce = call noundef float @_ZNK5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_13scalar_sum_opIffEEKNS_16PartialReduxExprINS_6MatrixIfLin1ELi3ELi0ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEKNS5_IS7_NS0_15member_maxCoeffIffEELi0EEEEENS0_10IndexBasedESH_ffE5coeffEl(ptr noundef nonnull align 8 dereferenceable(40) %i.cd, i64 noundef 0), !noalias !182
  %i.cf = load float, ptr %i.ca, align 4, !tbaa !185, !noalias !182
  %i.cg = call noundef float @_ZNK5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_13scalar_sum_opIffEEKNS_16PartialReduxExprINS_6MatrixIfLin1ELi3ELi0ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEKNS5_IS7_NS0_15member_maxCoeffIffEELi0EEEEENS0_10IndexBasedESH_ffE5coeffEl(ptr noundef nonnull align 8 dereferenceable(40) %i.cd, i64 noundef 1), !noalias !182
  %i.ch = load float, ptr %i.ca, align 4, !tbaa !185, !noalias !182
  %i.ci = call noundef float @_ZNK5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_13scalar_sum_opIffEEKNS_16PartialReduxExprINS_6MatrixIfLin1ELi3ELi0ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEKNS5_IS7_NS0_15member_maxCoeffIffEELi0EEEEENS0_10IndexBasedESH_ffE5coeffEl(ptr noundef nonnull align 8 dereferenceable(40) %i.cd, i64 noundef 2), !noalias !182
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !182
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ck = fmul float %i.ce, -5.000000e-01
  store float %i.ck, ptr %i.cj, align 16, !tbaa !9
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.cm = fneg float %i.cg
  %i.cn = fmul float %i.cf, %i.cm
  store float %i.cn, ptr %i.cl, align 4, !tbaa !9
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cp = fneg float %i.ci
  %i.cq = fmul float %i.ch, %i.cp
  store float %i.cq, ptr %i.co, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.a, ptr %i.cr, align 8, !tbaa !55
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.a, ptr %i.cs, align 8, !tbaa !55
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.cu = call noundef float @_ZNK5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIffEEKNS_16PartialReduxExprINS_6MatrixIfLin1ELi3ELi0ELin1ELi3EEENS0_15member_maxCoeffIffEELi0EEEKNS5_IS7_NS0_15member_minCoeffIffEELi0EEEEENS0_10IndexBasedESH_ffE5coeffEll(ptr noundef nonnull align 8 dereferenceable(40) %i.ct, i64 noundef 0, i64 noundef 0)
  %i.cv = call noundef float @llvm.fabs.f32(float %i.cu) ; 2 uses
  %i.cw = call noundef float @_ZNK5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIffEEKNS_16PartialReduxExprINS_6MatrixIfLin1ELi3ELi0ELin1ELi3EEENS0_15member_maxCoeffIffEELi0EEEKNS5_IS7_NS0_15member_minCoeffIffEELi0EEEEENS0_10IndexBasedESH_ffE5coeffEll(ptr noundef nonnull align 8 dereferenceable(40) %i.ct, i64 noundef 0, i64 noundef 1)
  %i.cx = call noundef float @llvm.fabs.f32(float %i.cw) ; 2 uses
  %i.cy = fcmp olt float %i.cv, %i.cx
  %i.cz = select i1 %i.cy, float %i.cx, float %i.cv ; 2 uses
  %i.da = call noundef float @_ZNK5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIffEEKNS_16PartialReduxExprINS_6MatrixIfLin1ELi3ELi0ELin1ELi3EEENS0_15member_maxCoeffIffEELi0EEEKNS5_IS7_NS0_15member_minCoeffIffEELi0EEEEENS0_10IndexBasedESH_ffE5coeffEll(ptr noundef nonnull align 8 dereferenceable(40) %i.ct, i64 noundef 0, i64 noundef 2)
  %i.db = call noundef float @llvm.fabs.f32(float %i.da) ; 2 uses
  %i.dc = fcmp olt float %i.cz, %i.db
  %i.dd = select i1 %i.dc, float %i.db, float %i.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.de = fdiv float 2.000000e+00, %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 72
  store float %i.de, ptr %i.df, align 8, !tbaa !187
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN3igl6embree14EmbreeRenderer8set_zoomIdEEvT_(ptr noundef nonnull align 16 dereferenceable(416) %0, double noundef %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = fptrunc double %1 to float
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 76
  store float %i.a, ptr %i.b, align 4, !tbaa !188
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3igl6embree12EmbreeDeviceD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !48     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @rtcReleaseDevice(ptr noundef nonnull %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #28
  unreachable
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #12

declare void @rtcReleaseDevice(ptr noundef) local_unnamed_addr #4

declare ptr @rtcNewDevice(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #15

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #4
end_hunk_0
