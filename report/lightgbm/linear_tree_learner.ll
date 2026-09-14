Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/linear_tree_learner?download=true
inline.NumInlined: 6309
inline.NumDeleted: 2630
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 71
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_ZN5Eigen9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2IS2_EERKNS_9EigenBaseIT_EE:bb.a

bb.v:                                             ; preds = %bb.t
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body38

.body38:                                          ; preds = %bb.s, %bb.v
  %.pn = phi { ptr, i32 } [ %i.bc, %bb.v ], [ %i.ax, %bb.s ]
  %i.bd = load ptr, ptr %i.ap, align 8, !tbaa !312
  tail call void @free(ptr noundef %i.bd) #6
  br label %.body30

.body30:                                          ; preds = %bb.o, %.body38
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body38 ], [ %i.an, %bb.o ]
  %i.be = load ptr, ptr %i.af, align 8, !tbaa !314
  tail call void @free(ptr noundef %i.be) #6
  br label %.body27

.body27:                                          ; preds = %bb.k, %.body30
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body30 ], [ %i.ad, %bb.k ]
  %i.bf = load ptr, ptr %i.v, align 8, !tbaa !314
  tail call void @free(ptr noundef %i.bf) #6
  br label %.body19

.body19:                                          ; preds = %bb.g, %.body27
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body27 ], [ %i.t, %bb.g ]
  %i.bg = load ptr, ptr %i.l, align 8, !tbaa !314
  tail call void @free(ptr noundef %i.bg) #6
  br label %.body

.body:                                            ; preds = %bb.d, %.body19
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %.body19 ], [ %i.k, %bb.d ]
  %i.bh = load ptr, ptr %0, align 8, !tbaa !307
  tail call void @free(ptr noundef %i.bh) #6
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(123) ptr @_ZN5Eigen9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7computeIS2_EERS3_RKNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(123) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !307    ; 8 uses
  %i.b = ptrtoaddr ptr %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !305  ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !306  ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !305
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.h, %i.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8
  %.not8.i.i.i.i.i.i.i.i = icmp eq i64 %i.j, %i.f
  %or.cond.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i1 %.not8.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i64 %i.d, 0
  %i.l = icmp eq i64 %i.f, 0
  %or.cond.i.i.i.i.i.i.i.i.i.i = or i1 %i.k, %i.l
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = sdiv i64 9223372036854775807, %i.f
  %i.n = icmp sgt i64 %i.d, %i.m
  br i1 %i.n, label %.noexc.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.c
  %i.o = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.o, align 8, !tbaa !249
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.p = mul nsw i64 %i.f, %i.d
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.p, i64 noundef %i.d, i64 noundef %i.f)
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.g, align 8, !tbaa !305
  %.pre20.i.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !tbaa !306
  br label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i, %bb.a
  %i.q = phi i64 [ %.pre20.i.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i ], [ %i.f, %bb.a ]
  %i.r = phi i64 [ %.pre.i.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i ], [ %i.d, %bb.a ]
  %i.s = load ptr, ptr %0, align 8, !tbaa !307    ; 8 uses
  %i.t = ptrtoaddr ptr %i.s to i64
  %i.u = mul nsw i64 %i.r, %i.q                   ; 7 uses
  %i.v = sdiv i64 %i.u, 2
  %i.w = shl nsw i64 %i.v, 1                      ; 6 uses
  %i.x = icmp sgt i64 %i.u, 1
  br i1 %i.x, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.d
  %i.y = icmp slt i64 %i.w, %i.u
  br i1 %i.y, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.z = sub i64 %i.u, %i.w                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.z, 8
  %i.aa = sub i64 %i.b, %i.t
  %diff.check = icmp ugt i64 %i.aa, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader8, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.z, -4                       ; 3 uses
  %i.ab = add i64 %i.w, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = add i64 %i.w, %index                    ; 2 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ac ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %wide.load = load <2 x double>, ptr %i.ae, align 8, !tbaa !189
  %wide.load7 = load <2 x double>, ptr %i.af, align 8, !tbaa !189
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store <2 x double> %wide.load, ptr %i.ad, align 8, !tbaa !189
  store <2 x double> %wide.load7, ptr %i.ag, align 8, !tbaa !189
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !574

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader8

.lr.ph.i.i.i.i.i.i.i.i.i.preheader8:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ab, %middle.block ] ; 4 uses
  %i.ai = sub i64 %i.u, %.05.i.i.i.i.i.i.i.i.i.ph
  %xtraiter = and i64 %i.ai, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader8, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.am, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader8 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader8 ]
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.s, i64 %.05.i.i.i.i.i.i.i.i.i.prol
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.a, i64 %.05.i.i.i.i.i.i.i.i.i.prol
  %i.al = load double, ptr %i.ak, align 8, !tbaa !189
  store double %i.al, ptr %i.aj, align 8, !tbaa !189
  %i.am = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !575

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader8
  %.05.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader8 ], [ %i.am, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.an = sub i64 %.05.i.i.i.i.i.i.i.i.i.ph, %i.u
  %i.ao = icmp ugt i64 %i.an, -4
  br i1 %i.ao, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi i64 [ %i.be, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.s, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.a, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !189
  store double %i.ar, ptr %i.ap, align 8, !tbaa !189
  %i.as = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.as
  %i.au = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.as
  %i.av = load double, ptr %i.au, align 8, !tbaa !189
  store double %i.av, ptr %i.at, align 8, !tbaa !189
  %i.aw = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 2   ; 2 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.aw
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.aw
  %i.az = load double, ptr %i.ay, align 8, !tbaa !189
  store double %i.az, ptr %i.ax, align 8, !tbaa !189
  %i.ba = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 3   ; 2 uses
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ba
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ba
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !189
  store double %i.bd, ptr %i.bb, align 8, !tbaa !189
  %i.be = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 4   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.be, %i.u
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !576

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i.i = phi i64 [ %i.bi, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %bb.d ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.011.i.i.i.i.i.i.i.i
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.011.i.i.i.i.i.i.i.i
  %i.bh = load <2 x double>, ptr %i.bg, align 16, !tbaa !182
  store <2 x double> %i.bh, ptr %i.bf, align 16, !tbaa !182
  %i.bi = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.bj = icmp slt i64 %i.bi, %i.w
  br i1 %i.bj, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, !llvm.loop !577

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i
  tail call void @_ZN5Eigen9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14computeInPlaceEv(ptr noundef nonnull align 8 dereferenceable(123) %0)
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14computeInPlaceEv(ptr noundef nonnull align 8 dereferenceable(123) %0) local_unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !305, !noalias !640 ; 36 uses
  %i.c = icmp eq i64 %i.b, 0                      ; 2 uses
  br i1 %i.c, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !307    ; 11 uses
  %i.e = sdiv i64 %i.b, 4
  %i.f = shl nsw i64 %i.e, 2                      ; 3 uses
  %i.g = sdiv i64 %i.b, 2
  %i.h = shl nsw i64 %i.g, 1                      ; 6 uses
  %.off.i.i.i.i.i.i.i.i.i.i.i = add i64 %i.b, 1
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %.off.i.i.i.i.i.i.i.i.i.i.i, 3
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load <2 x double>, ptr %i.d, align 1, !tbaa !182
  %i.j = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.i) ; 3 uses
  %i.k = icmp sgt i64 %i.b, 3
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.d, i64 16
  %i.m = load <2 x double>, ptr %i.l, align 1, !tbaa !182
  %i.n = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.m) ; 2 uses
  %i.o = icmp samesign ugt i64 %i.b, 7
  br i1 %i.o, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.d
  %.075.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.n, %bb.d ], [ %i.y, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %.072.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.j, %bb.d ], [ %i.u, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %i.p = fadd <2 x double> %.075.lcssa.i.i.i.i.i.i.i.i.i.i.i, %.072.lcssa.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.q = icmp sgt i64 %i.h, %i.f
  br i1 %i.q, label %bb.e, label %bb.f

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.05480.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.054.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ 4, %bb.d ] ; 3 uses
  %.054.in79.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.05480.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.d ]
  %.07278.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.u, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.j, %bb.d ]
  %.07577.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.y, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.n, %bb.d ]
  %i.r = getelementptr [8 x i8], ptr %i.d, i64 %.05480.i.i.i.i.i.i.i.i.i.i.i
  %i.s = load <2 x double>, ptr %i.r, align 1, !tbaa !182
  %i.t = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.s)
  %i.u = fadd <2 x double> %.07278.i.i.i.i.i.i.i.i.i.i.i, %i.t ; 2 uses
  %1 = getelementptr [8 x i8], ptr %i.d, i64 %.054.in79.i.i.i.i.i.i.i.i.i.i.i
  %i.v = getelementptr i8, ptr %1, i64 48
  %i.w = load <2 x double>, ptr %i.v, align 1, !tbaa !182
  %i.x = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.w)
  %i.y = fadd <2 x double> %.07577.i.i.i.i.i.i.i.i.i.i.i, %i.x ; 2 uses
  %.054.i.i.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %.05480.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.z = icmp slt i64 %.054.i.i.i.i.i.i.i.i.i.i.i, %i.f
  br i1 %i.z, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !580

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.aa = getelementptr [8 x i8], ptr %i.d, i64 %i.f
  %i.ab = load <2 x double>, ptr %i.aa, align 1, !tbaa !182
  %i.ac = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ab)
  %i.ad = fadd <2 x double> %i.p, %i.ac
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, %bb.c
  %.274.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.j, %bb.c ], [ %i.ad, %bb.e ], [ %i.p, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ae = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %.274.i.i.i.i.i.i.i.i.i.i.i) ; 3 uses
  %i.af = icmp slt i64 %i.h, %i.b
  br i1 %i.af, label %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit.i.i.i.i

.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %bb.f
  %i.ag = sub i64 %i.b, %i.h
  %xtraiter = and i64 %i.ag, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol:              ; preds = %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05283.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.al, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %i.h, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.182.i.i.i.i.i.i.i.i.i.i.i.prol = phi double [ %i.ak, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %i.ae, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.ah = getelementptr [8 x i8], ptr %i.d, i64 %.05283.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !189
  %i.aj = tail call noundef double @llvm.fabs.f64(double %i.ai)
  %i.ak = fadd double %.182.i.i.i.i.i.i.i.i.i.i.i.prol, %i.aj ; 3 uses
  %i.al = add nsw i64 %.05283.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !581

.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:     ; preds = %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.lcssa473.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ak, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.05283.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.h, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.al, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.182.i.i.i.i.i.i.i.i.i.i.i.unr = phi double [ %i.ae, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ak, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.am = sub i64 %i.h, %i.b
  %i.an = icmp ugt i64 %i.am, -4
  br i1 %i.an, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit.i.i.i.i, label %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i
  %.05283.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bh, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i ], [ %.05283.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.182.i.i.i.i.i.i.i.i.i.i.i = phi double [ %i.bg, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i ], [ %.182.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.ao = getelementptr [8 x i8], ptr %i.d, i64 %.05283.i.i.i.i.i.i.i.i.i.i.i
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !189
  %i.aq = tail call noundef double @llvm.fabs.f64(double %i.ap)
  %i.ar = fadd double %.182.i.i.i.i.i.i.i.i.i.i.i, %i.aq
  %i.as = getelementptr [8 x i8], ptr %i.d, i64 %.05283.i.i.i.i.i.i.i.i.i.i.i
  %i.at = getelementptr i8, ptr %i.as, i64 8
  %i.au = load double, ptr %i.at, align 8, !tbaa !189
  %i.av = tail call noundef double @llvm.fabs.f64(double %i.au)
  %i.aw = fadd double %i.ar, %i.av
  %i.ax = getelementptr [8 x i8], ptr %i.d, i64 %.05283.i.i.i.i.i.i.i.i.i.i.i
  %i.ay = getelementptr i8, ptr %i.ax, i64 16
  %i.az = load double, ptr %i.ay, align 8, !tbaa !189
  %i.ba = tail call noundef double @llvm.fabs.f64(double %i.az)
  %i.bb = fadd double %i.aw, %i.ba
  %i.bc = getelementptr [8 x i8], ptr %i.d, i64 %.05283.i.i.i.i.i.i.i.i.i.i.i
  %i.bd = getelementptr i8, ptr %i.bc, i64 24
  %i.be = load double, ptr %i.bd, align 8, !tbaa !189
  %i.bf = tail call noundef double @llvm.fabs.f64(double %i.be)
  %i.bg = fadd double %i.bb, %i.bf                ; 2 uses
  %i.bh = add nsw i64 %.05283.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.bh, %i.b
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit.i.i.i.i, label %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !582

bb.g:                                             ; preds = %bb.b
  %i.bi = load double, ptr %i.d, align 8, !tbaa !189
  %i.bj = tail call noundef double @llvm.fabs.f64(double %i.bi)
  br label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit.i.i.i.i

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit.i.i.i.i: ; preds = %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i, %bb.g, %bb.f, %bb.a
  %.0.i.i.i.i.i.i.i.i.i = phi double [ 0.000000e+00, %bb.a ], [ %i.ae, %bb.f ], [ %i.bj, %bb.g ], [ %.lcssa473.unr, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.bg, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !306 ; 11 uses
  %i.bm = icmp sgt i64 %i.bl, 1
  br i1 %i.bm, label %.lr.ph.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit

.lr.ph.i.i.i.i:                                   ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit.i.i.i.i
  %i.bn = sdiv i64 %i.b, 4
  %i.bo = shl nsw i64 %i.bn, 2                    ; 3 uses
  %i.bp = sdiv i64 %i.b, 2
  %i.bq = shl nsw i64 %i.bp, 1                    ; 6 uses
  %i.br = icmp sgt i64 %i.b, 3
  %i.bs = icmp samesign ugt i64 %i.b, 7
  %i.bt = icmp sgt i64 %i.bq, %i.bo
  %i.bu = icmp slt i64 %i.bq, %i.b
  br i1 %i.c, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.preheader, label %.lr.ph.split.i.i.i.i

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.preheader: ; preds = %.lr.ph.i.i.i.i
  %i.bv = add nsw i64 %i.bl, -1                   ; 2 uses
  %i.bw = add nsw i64 %i.bl, -2
  %xtraiter483 = and i64 %i.bv, 3                 ; 3 uses
  %i.bx = icmp ult i64 %i.bw, 3
  br i1 %i.bx, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil.preheader, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.preheader.new

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.preheader.new: ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.preheader
  %unroll_iter487 = and i64 %i.bv, -4
  br label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i: ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.preheader.new
  %.05864.us.i.i.i.i = phi double [ %.0.i.i.i.i.i.i.i.i.i, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.preheader.new ], [ %i.bz, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i ] ; 2 uses
  %niter488 = phi i64 [ 0, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.preheader.new ], [ %niter488.next.3, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i ]
  %i.by = fcmp olt double %.05864.us.i.i.i.i, 0.000000e+00
  %i.bz = select i1 %i.by, double 0.000000e+00, double %.05864.us.i.i.i.i ; 3 uses
  %niter488.next.3 = add i64 %niter488, 4         ; 2 uses
  %niter488.ncmp.3 = icmp eq i64 %niter488.next.3, %unroll_iter487
  br i1 %niter488.ncmp.3, label %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit.unr-lcssa, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i, !llvm.loop !583

.lr.ph.split.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i
  %.off.i.i.i.i.i.i.i18.i.i.i.i = add i64 %i.b, 1
  %.not.i.i.i.i.i.i.i19.i.i.i.i = icmp ult i64 %.off.i.i.i.i.i.i.i18.i.i.i.i, 3
  %i.ca = load ptr, ptr %0, align 8, !tbaa !307   ; 4 uses
  br i1 %.not.i.i.i.i.i.i.i19.i.i.i.i, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.preheader, label %.lr.ph.split.split.i.i.i.i.preheader

.lr.ph.split.split.i.i.i.i.preheader:             ; preds = %.lr.ph.split.i.i.i.i
  %i.cb = sub i64 %i.b, %i.bq
  %xtraiter476 = and i64 %i.cb, 3                 ; 2 uses
  %lcmp.mod477.not = icmp eq i64 %xtraiter476, 0
  %i.cc = sub i64 %i.bq, %i.b
  %i.cd = icmp ugt i64 %i.cc, -4
  br label %.lr.ph.split.split.i.i.i.i

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.preheader: ; preds = %.lr.ph.split.i.i.i.i
  %i.ce = add nsw i64 %i.bl, -1                   ; 3 uses
  %xtraiter479 = and i64 %i.ce, 1
  %i.cf = icmp eq i64 %i.bl, 2
  br i1 %i.cf, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.epil.preheader, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.preheader.new

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.preheader.new: ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.preheader
  %unroll_iter = and i64 %i.ce, -2
  br label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i: ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.preheader.new
  %.01765.us66.i.i.i.i = phi i64 [ 1, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.preheader.new ], [ %i.ct, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i ] ; 3 uses
  %.05864.us67.i.i.i.i = phi double [ %.0.i.i.i.i.i.i.i.i.i, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.preheader.new ], [ %i.cs, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.preheader.new ], [ %niter.next.1, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i ]
  %i.cg = mul nsw i64 %.01765.us66.i.i.i.i, %i.b
  %i.ch = getelementptr [8 x i8], ptr %i.ca, i64 %i.cg
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !189
  %i.cj = tail call noundef double @llvm.fabs.f64(double %i.ci) ; 2 uses
  %i.ck = fcmp olt double %.05864.us67.i.i.i.i, %i.cj
  %i.cl = select i1 %i.ck, double %i.cj, double %.05864.us67.i.i.i.i ; 2 uses
  %i.cm = add nuw nsw i64 %.01765.us66.i.i.i.i, 1
  %i.cn = mul nsw i64 %i.cm, %i.b
  %i.co = getelementptr [8 x i8], ptr %i.ca, i64 %i.cn
  %i.cp = load double, ptr %i.co, align 8, !tbaa !189
  %i.cq = tail call noundef double @llvm.fabs.f64(double %i.cp) ; 2 uses
  %i.cr = fcmp olt double %i.cl, %i.cq
  %i.cs = select i1 %i.cr, double %i.cq, double %i.cl ; 3 uses
  %i.ct = add nuw nsw i64 %.01765.us66.i.i.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit466.unr-lcssa, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i, !llvm.loop !583

.lr.ph.split.split.i.i.i.i:                       ; preds = %.lr.ph.split.split.i.i.i.i.preheader, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.i.i.i.i
  %.01765.i.i.i.i = phi i64 [ %i.er, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.i.i.i.i ], [ 1, %.lr.ph.split.split.i.i.i.i.preheader ] ; 2 uses
  %.05864.i.i.i.i = phi double [ %i.eq, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.i.i.i.i.preheader ] ; 2 uses
  %i.cu = mul nsw i64 %.01765.i.i.i.i, %i.b
  %i.cv = getelementptr [8 x i8], ptr %i.ca, i64 %i.cu ; 10 uses
  %i.cw = load <2 x double>, ptr %i.cv, align 1, !tbaa !182
  %i.cx = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.cw) ; 3 uses
  br i1 %i.br, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.lr.ph.split.split.i.i.i.i
  %i.cy = getelementptr i8, ptr %i.cv, i64 16
  %i.cz = load <2 x double>, ptr %i.cy, align 1, !tbaa !182
  %i.da = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.cz) ; 2 uses
  br i1 %i.bs, label %.lr.ph.i.i.i.i.i.i.i29.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i26.i.i.i.i

._crit_edge.i.i.i.i.i.i.i26.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i29.i.i.i.i, %bb.h
  %.075.lcssa.i.i.i.i.i.i.i27.i.i.i.i = phi <2 x double> [ %i.da, %bb.h ], [ %i.dj, %.lr.ph.i.i.i.i.i.i.i29.i.i.i.i ]
  %.072.lcssa.i.i.i.i.i.i.i28.i.i.i.i = phi <2 x double> [ %i.cx, %bb.h ], [ %i.df, %.lr.ph.i.i.i.i.i.i.i29.i.i.i.i ]
  %i.db = fadd <2 x double> %.075.lcssa.i.i.i.i.i.i.i27.i.i.i.i, %.072.lcssa.i.i.i.i.i.i.i28.i.i.i.i ; 2 uses
  br i1 %i.bt, label %bb.i, label %bb.j

.lr.ph.i.i.i.i.i.i.i29.i.i.i.i:                   ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i.i29.i.i.i.i
  %.05480.i.i.i.i.i.i.i30.i.i.i.i = phi i64 [ %.054.i.i.i.i.i.i.i34.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i29.i.i.i.i ], [ 4, %bb.h ] ; 3 uses
  %.054.in79.i.i.i.i.i.i.i31.i.i.i.i = phi i64 [ %.05480.i.i.i.i.i.i.i30.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i29.i.i.i.i ], [ 0, %bb.h ]
  %.07278.i.i.i.i.i.i.i32.i.i.i.i = phi <2 x double> [ %i.df, %.lr.ph.i.i.i.i.i.i.i29.i.i.i.i ], [ %i.cx, %bb.h ]
  %.07577.i.i.i.i.i.i.i33.i.i.i.i = phi <2 x double> [ %i.dj, %.lr.ph.i.i.i.i.i.i.i29.i.i.i.i ], [ %i.da, %bb.h ]
  %i.dc = getelementptr [8 x i8], ptr %i.cv, i64 %.05480.i.i.i.i.i.i.i30.i.i.i.i
  %i.dd = load <2 x double>, ptr %i.dc, align 1, !tbaa !182
  %i.de = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.dd)
  %i.df = fadd <2 x double> %.07278.i.i.i.i.i.i.i32.i.i.i.i, %i.de ; 2 uses
  %2 = getelementptr [8 x i8], ptr %i.cv, i64 %.054.in79.i.i.i.i.i.i.i31.i.i.i.i
  %i.dg = getelementptr i8, ptr %2, i64 48
  %i.dh = load <2 x double>, ptr %i.dg, align 1, !tbaa !182
  %i.di = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.dh)
  %i.dj = fadd <2 x double> %.07577.i.i.i.i.i.i.i33.i.i.i.i, %i.di ; 2 uses
  %.054.i.i.i.i.i.i.i34.i.i.i.i = add nuw nsw i64 %.05480.i.i.i.i.i.i.i30.i.i.i.i, 4 ; 2 uses
  %i.dk = icmp slt i64 %.054.i.i.i.i.i.i.i34.i.i.i.i, %i.bo
  br i1 %i.dk, label %.lr.ph.i.i.i.i.i.i.i29.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i26.i.i.i.i, !llvm.loop !580

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i26.i.i.i.i
  %i.dl = getelementptr [8 x i8], ptr %i.cv, i64 %i.bo
  %i.dm = load <2 x double>, ptr %i.dl, align 1, !tbaa !182
  %i.dn = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.dm)
  %i.do = fadd <2 x double> %i.db, %i.dn
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i.i.i.i.i26.i.i.i.i, %.lr.ph.split.split.i.i.i.i
  %.274.i.i.i.i.i.i.i20.i.i.i.i = phi <2 x double> [ %i.cx, %.lr.ph.split.split.i.i.i.i ], [ %i.do, %bb.i ], [ %i.db, %._crit_edge.i.i.i.i.i.i.i26.i.i.i.i ]
  %i.dp = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %.274.i.i.i.i.i.i.i20.i.i.i.i) ; 3 uses
  br i1 %i.bu, label %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.preheader, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.i.i.i.i

.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.preheader:       ; preds = %bb.j
  br i1 %lcmp.mod477.not, label %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol

.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol:            ; preds = %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.preheader, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol
  %.05283.i.i.i.i.i.i.i23.i.i.i.i.prol = phi i64 [ %i.du, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol ], [ %i.bq, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.preheader ] ; 2 uses
  %.182.i.i.i.i.i.i.i24.i.i.i.i.prol = phi double [ %i.dt, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol ], [ %i.dp, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.preheader ]
  %prol.iter478 = phi i64 [ %prol.iter478.next, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.preheader ]
  %i.dq = getelementptr [8 x i8], ptr %i.cv, i64 %.05283.i.i.i.i.i.i.i23.i.i.i.i.prol
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !189
  %i.ds = tail call noundef double @llvm.fabs.f64(double %i.dr)
  %i.dt = fadd double %.182.i.i.i.i.i.i.i24.i.i.i.i.prol, %i.ds ; 3 uses
  %i.du = add nsw i64 %.05283.i.i.i.i.i.i.i23.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter478.next = add i64 %prol.iter478, 1   ; 2 uses
  %prol.iter478.cmp.not = icmp eq i64 %prol.iter478.next, %xtraiter476
  br i1 %prol.iter478.cmp.not, label %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol, !llvm.loop !584

.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol.loopexit:   ; preds = %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.preheader
  %.lcssa471.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.preheader ], [ %i.dt, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol ]
  %.05283.i.i.i.i.i.i.i23.i.i.i.i.unr = phi i64 [ %i.bq, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.preheader ], [ %i.du, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol ]
  %.182.i.i.i.i.i.i.i24.i.i.i.i.unr = phi double [ %i.dp, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.preheader ], [ %i.dt, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol ]
  br i1 %i.cd, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.i.i.i.i, label %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i

.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i:                 ; preds = %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i
  %.05283.i.i.i.i.i.i.i23.i.i.i.i = phi i64 [ %i.eo, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i ], [ %.05283.i.i.i.i.i.i.i23.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol.loopexit ] ; 5 uses
  %.182.i.i.i.i.i.i.i24.i.i.i.i = phi double [ %i.en, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i ], [ %.182.i.i.i.i.i.i.i24.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol.loopexit ]
  %i.dv = getelementptr [8 x i8], ptr %i.cv, i64 %.05283.i.i.i.i.i.i.i23.i.i.i.i
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !189
  %i.dx = tail call noundef double @llvm.fabs.f64(double %i.dw)
  %i.dy = fadd double %.182.i.i.i.i.i.i.i24.i.i.i.i, %i.dx
  %i.dz = getelementptr [8 x i8], ptr %i.cv, i64 %.05283.i.i.i.i.i.i.i23.i.i.i.i
  %i.ea = getelementptr i8, ptr %i.dz, i64 8
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !189
  %i.ec = tail call noundef double @llvm.fabs.f64(double %i.eb)
  %i.ed = fadd double %i.dy, %i.ec
  %i.ee = getelementptr [8 x i8], ptr %i.cv, i64 %.05283.i.i.i.i.i.i.i23.i.i.i.i
  %i.ef = getelementptr i8, ptr %i.ee, i64 16
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !189
  %i.eh = tail call noundef double @llvm.fabs.f64(double %i.eg)
  %i.ei = fadd double %i.ed, %i.eh
  %i.ej = getelementptr [8 x i8], ptr %i.cv, i64 %.05283.i.i.i.i.i.i.i23.i.i.i.i
  %i.ek = getelementptr i8, ptr %i.ej, i64 24
  %i.el = load double, ptr %i.ek, align 8, !tbaa !189
  %i.em = tail call noundef double @llvm.fabs.f64(double %i.el)
  %i.en = fadd double %i.ei, %i.em                ; 2 uses
  %i.eo = add nsw i64 %.05283.i.i.i.i.i.i.i23.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i25.i.i.i.i.3 = icmp eq i64 %i.eo, %i.b
  br i1 %exitcond.not.i.i.i.i.i.i.i25.i.i.i.i.3, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.i.i.i.i, label %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i, !llvm.loop !582

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.i.i.i.i: ; preds = %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i, %bb.j
  %.0.i.i.i.i.i21.i.i.i.i = phi double [ %i.dp, %bb.j ], [ %.lcssa471.unr, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol.loopexit ], [ %i.en, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i ] ; 2 uses
  %i.ep = fcmp olt double %.05864.i.i.i.i, %.0.i.i.i.i.i21.i.i.i.i
  %i.eq = select i1 %i.ep, double %.0.i.i.i.i.i21.i.i.i.i, double %.05864.i.i.i.i ; 2 uses
  %i.er = add nuw nsw i64 %.01765.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.er, %i.bl
  br i1 %exitcond.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit, label %.lr.ph.split.split.i.i.i.i, !llvm.loop !583

_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit.unr-lcssa: ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i
  %lcmp.mod484.not = icmp eq i64 %xtraiter483, 0
  br i1 %lcmp.mod484.not, label %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil.preheader

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil.preheader: ; preds = %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit.unr-lcssa, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.preheader
  %.05864.us.i.i.i.i.epil.init = phi double [ %.0.i.i.i.i.i.i.i.i.i, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.preheader ], [ %i.bz, %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod486 = icmp ne i64 %xtraiter483, 0
  tail call void @llvm.assume(i1 %lcmp.mod486)
  br label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil: ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil.preheader
  %.05864.us.i.i.i.i.epil = phi double [ %i.et, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil ], [ %.05864.us.i.i.i.i.epil.init, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil ], [ 0, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil.preheader ]
  %i.es = fcmp olt double %.05864.us.i.i.i.i.epil, 0.000000e+00
  %i.et = select i1 %i.es, double 0.000000e+00, double %.05864.us.i.i.i.i.epil ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter483
  br i1 %epil.iter.cmp.not, label %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil, !llvm.loop !585

_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit466.unr-lcssa: ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i
  %lcmp.mod480.not = icmp eq i64 %xtraiter479, 0
  br i1 %lcmp.mod480.not, label %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.epil.preheader

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.epil.preheader: ; preds = %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit466.unr-lcssa, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.preheader
  %.01765.us66.i.i.i.i.epil.init = phi i64 [ 1, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.preheader ], [ %i.ct, %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit466.unr-lcssa ]
  %.05864.us67.i.i.i.i.epil.init = phi double [ %.0.i.i.i.i.i.i.i.i.i, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.preheader ], [ %i.cs, %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit466.unr-lcssa ] ; 2 uses
  %lcmp.mod482 = trunc i64 %i.ce to i1
  tail call void @llvm.assume(i1 %lcmp.mod482)
  %i.eu = mul nsw i64 %.01765.us66.i.i.i.i.epil.init, %i.b
  %i.ev = getelementptr [8 x i8], ptr %i.ca, i64 %i.eu
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !189
  %i.ex = tail call noundef double @llvm.fabs.f64(double %i.ew) ; 2 uses
  %i.ey = fcmp olt double %.05864.us67.i.i.i.i.epil.init, %i.ex
  %i.ez = select i1 %i.ey, double %i.ex, double %.05864.us67.i.i.i.i.epil.init
  br label %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit

_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit: ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.i.i.i.i, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.epil.preheader, %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit466.unr-lcssa, %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit.unr-lcssa, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit.i.i.i.i
  %.058.lcssa.i.i.i.i = phi double [ %.0.i.i.i.i.i.i.i.i.i, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit.i.i.i.i ], [ %i.et, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil ], [ %i.ez, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.epil.preheader ], [ %i.bz, %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit.unr-lcssa ], [ %i.cs, %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit466.unr-lcssa ], [ %i.eq, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.i.i.i.i ]
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 96
  store double %.058.lcssa.i.i.i.i, ptr %i.fa, align 8, !tbaa !641
  %.sroa.speculated.i = tail call noundef i64 @llvm.smin.i64(i64 %i.bl, i64 %i.b) ; 12 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !315
  %.not.i.i = icmp eq i64 %i.b, %i.fd
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit
  %i.fe = load ptr, ptr %i.fb, align 8, !tbaa !314
  tail call void @free(ptr noundef %i.fe) #6
  %i.ff = icmp sgt i64 %i.b, 0
  br i1 %i.ff, label %bb.l, label %.sink.split.i.i

bb.l:                                             ; preds = %bb.k
  %i.fg = icmp samesign ugt i64 %i.b, 4611686018427387903
  br i1 %i.fg, label %bb.m, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.fh = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.fh, align 8, !tbaa !249
  tail call void @__cxa_throw(ptr nonnull %i.fh, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i: ; preds = %bb.l
  %i.fi = shl nuw i64 %i.b, 2
  %i.fj = tail call noalias ptr @malloc(i64 noundef %i.fi) #38 ; 2 uses
  %i.fk = icmp eq ptr %i.fj, null
  br i1 %i.fk, label %bb.n, label %.sink.split.i.i

bb.n:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i
  %i.fl = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.fl, align 8, !tbaa !249
  tail call void @__cxa_throw(ptr nonnull %i.fl, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i, %bb.k
  %.sink.i.i = phi ptr [ %i.fj, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i ], [ null, %bb.k ]
  store ptr %.sink.i.i, ptr %i.fb, align 8, !tbaa !314
  %.pre = load i64, ptr %i.bk, align 8, !tbaa !306
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit, %.sink.split.i.i
  %i.fm = phi i64 [ %i.bl, %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit ], [ %.pre, %.sink.split.i.i ] ; 5 uses
  store i64 %i.b, ptr %i.fc, align 8, !tbaa !315
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !316
  %.not.i.i66 = icmp eq i64 %i.fm, %i.fp
  br i1 %.not.i.i66, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit, label %bb.o

bb.o:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  %i.fq = load ptr, ptr %i.fn, align 8, !tbaa !312
  tail call void @free(ptr noundef %i.fq) #6
  %i.fr = icmp sgt i64 %i.fm, 0
  br i1 %i.fr, label %bb.p, label %.sink.split.i.i67

bb.p:                                             ; preds = %bb.o
  %i.fs = icmp samesign ugt i64 %i.fm, 4611686018427387903
  br i1 %i.fs, label %bb.q, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i69

bb.q:                                             ; preds = %bb.p
  %i.ft = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ft, align 8, !tbaa !249
  tail call void @__cxa_throw(ptr nonnull %i.ft, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i69: ; preds = %bb.p
  %i.fu = shl nuw i64 %i.fm, 2
  %i.fv = tail call noalias ptr @malloc(i64 noundef %i.fu) #38 ; 2 uses
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %bb.r, label %.sink.split.i.i67

bb.r:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i69
  %i.fx = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.fx, align 8, !tbaa !249
  tail call void @__cxa_throw(ptr nonnull %i.fx, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

.sink.split.i.i67:                                ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i69, %bb.o
  %.sink.i.i68 = phi ptr [ %i.fv, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i69 ], [ null, %bb.o ]
  store ptr %.sink.i.i68, ptr %i.fn, align 8, !tbaa !312
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, %.sink.split.i.i67
  store i64 %i.fm, ptr %i.fo, align 8, !tbaa !316
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store i64 %.sroa.speculated.i, ptr %i.fy, align 8, !tbaa !327
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  store double 0.000000e+00, ptr %i.fz, align 8, !tbaa !328
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal19gemv_dense_selectorILi2ELi1ELb1EE3runINS_9TransposeIKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS4_IKNS5_IKNS5_IKS7_Lin1ELin1ELb0EEELi1ELin1ELb0EEEEENS4_INS5_IS7_Li1ELin1ELb0EEEEEEEvRKT_RKT0_RT1_RKNSP_6ScalarE:bb.a
  unreachable

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.i = add nuw nsw i64 %i.d, 15
  %i.j = alloca i8, i64 %i.i, align 16            ; 2 uses
  %.not = icmp eq i64 %.sroa.533.0.copyload, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.c, %bb.e
  %i.k = phi ptr [ %i.j, %bb.e ], [ %i.f, %bb.c ] ; 10 uses
  %i.l = ptrtoaddr ptr %i.k to i64
  %.in = getelementptr inbounds nuw i8, ptr %.sroa.1240.0.copyload, i64 8
  %i.m = load i64, ptr %.in, align 8, !tbaa !305  ; 6 uses
  %min.iters.check = icmp ult i64 %.sroa.533.0.copyload, 10
  %ident.check.not = icmp ne i64 %i.m, 1
  %or.cond.not50 = select i1 %min.iters.check, i1 true, i1 %ident.check.not
  %i.n = sub i64 %.sroa.031.0.copyload47, %i.l
  %diff.check = icmp ugt i64 %i.n, -32
  %or.cond49 = select i1 %or.cond.not50, i1 true, i1 %diff.check
  br i1 %or.cond49, label %.lr.ph.i.i.i.i.i.i.i.i.preheader51, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %.sroa.533.0.copyload, 2305843009213693948 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %.sroa.031.0.copyload, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load = load <2 x double>, ptr %i.p, align 8, !tbaa !189
  %wide.load48 = load <2 x double>, ptr %i.q, align 8, !tbaa !189
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store <2 x double> %wide.load, ptr %i.o, align 8, !tbaa !189
  store <2 x double> %wide.load48, ptr %i.r, align 8, !tbaa !189
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !980

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.sroa.533.0.copyload, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader51

.lr.ph.i.i.i.i.i.i.i.i.preheader51:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %.sroa.533.0.copyload, 3    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader51, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.x, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader51 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader51 ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.05.i.i.i.i.i.i.i.i.prol
  %i.u = mul nsw i64 %.05.i.i.i.i.i.i.i.i.prol, %i.m
  %i.v = getelementptr inbounds [8 x i8], ptr %.sroa.031.0.copyload, i64 %i.u
  %i.w = load double, ptr %i.v, align 8, !tbaa !189
  store double %i.w, ptr %i.t, align 8, !tbaa !189
  %i.x = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !981

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader51
  %.05.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader51 ], [ %i.x, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.y = sub nsw i64 %.05.i.i.i.i.i.i.i.i.ph, %.sroa.533.0.copyload
  %i.z = icmp ugt i64 %i.y, -4
  br i1 %i.z, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi i64 [ %i.at, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.05.i.i.i.i.i.i.i.i
  %i.ab = mul nsw i64 %.05.i.i.i.i.i.i.i.i, %i.m
  %i.ac = getelementptr inbounds [8 x i8], ptr %.sroa.031.0.copyload, i64 %i.ab
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !189
  store double %i.ad, ptr %i.aa, align 8, !tbaa !189
  %i.ae = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ae
  %i.ag = mul nsw i64 %i.ae, %i.m
  %i.ah = getelementptr inbounds [8 x i8], ptr %.sroa.031.0.copyload, i64 %i.ag
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !189
  store double %i.ai, ptr %i.af, align 8, !tbaa !189
  %i.aj = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.aj
  %i.al = mul nsw i64 %i.aj, %i.m
  %i.am = getelementptr inbounds [8 x i8], ptr %.sroa.031.0.copyload, i64 %i.al
  %i.an = load double, ptr %i.am, align 8, !tbaa !189
  store double %i.an, ptr %i.ak, align 8, !tbaa !189
  %i.ao = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ao
  %i.aq = mul nsw i64 %i.ao, %i.m
  %i.ar = getelementptr inbounds [8 x i8], ptr %.sroa.031.0.copyload, i64 %i.aq
  %i.as = load double, ptr %i.ar, align 8, !tbaa !189
  store double %i.as, ptr %i.ap, align 8, !tbaa !189
  %i.at = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.at, %.sroa.533.0.copyload
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !982

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %bb.e
  %i.au = phi i1 [ false, %bb.e ], [ %i.e, %middle.block ], [ %i.e, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.e, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.av = phi ptr [ %i.j, %bb.e ], [ %i.k, %middle.block ], [ %i.k, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.k, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.744.0.copyload, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !305
  store ptr %.sroa.041.0.copyload, ptr %4, align 8, !tbaa !397
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !398
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  store ptr %i.av, ptr %5, align 8, !tbaa !394
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 1, ptr %i.az, align 8, !tbaa !395
  %i.ba = load ptr, ptr %2, align 8, !tbaa !340
  %.sroa.6.24..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.6.24.copyload = load ptr, ptr %.sroa.6.24..sroa_idx, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.6.24.copyload, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !305
  invoke void @_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi1EEELi1ELb0EdNS2_IdlLi0EEELb0ELi0EE3runEllRKS3_RKS4_Pdld(i64 noundef %.sroa.643.0.copyload, i64 noundef %.sroa.542.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %i.ba, i64 noundef %i.bc, double noundef %i.a)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br i1 %i.au, label %bb.g, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef nonnull %i.av) #6
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %bb.f, %bb.g
  ret void

bb.h:                                             ; preds = %.loopexit
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br i1 %i.au, label %bb.i, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit18

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef nonnull %i.av) #6
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit18

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit18: ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %i.bd
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi1EEELi1ELb0EdNS2_IdlLi0EEELb0ELi0EE3runEllRKS3_RKS4_Pdld(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %4, i64 noundef %5, double noundef %6) local_unnamed_addr #29 comdat align 2 {
bb.a:
  %.sroa.0329.0.copyload = load ptr, ptr %2, align 8 ; 12 uses
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.33.0.copyload = load i64, ptr %.sroa.33.0..sroa_idx, align 8 ; 31 uses
  %i.a = shl i64 %.sroa.33.0.copyload, 3
  %i.b = icmp ult i64 %i.a, 32001
  %i.c = add nsw i64 %0, -7
  %i.d = add nsw i64 %0, -3                       ; 2 uses
  %i.e = add nsw i64 %0, -1                       ; 2 uses
  %i.f = icmp sgt i64 %0, 7
  %i.g = and i1 %i.b, %i.f
  br i1 %i.g, label %.preheader409.lr.ph, label %.preheader408

.preheader409.lr.ph:                              ; preds = %bb.a
  %.not238410 = icmp slt i64 %1, 2
  %i.h = load ptr, ptr %3, align 8                ; 2 uses
  %i.i = and i64 %1, -2
  br label %.preheader409

.preheader409:                                    ; preds = %.preheader409.lr.ph, %._crit_edge439
  %.0226448 = phi i64 [ 0, %.preheader409.lr.ph ], [ %i.fm, %._crit_edge439 ] ; 25 uses
  br i1 %.not238410, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader409
  %i.j = mul nsw i64 %.0226448, %.sroa.33.0.copyload
  %i.k = or disjoint i64 %.0226448, 1
  %i.l = mul nsw i64 %i.k, %.sroa.33.0.copyload
  %i.m = or disjoint i64 %.0226448, 2
  %i.n = mul nsw i64 %i.m, %.sroa.33.0.copyload
  %i.o = or disjoint i64 %.0226448, 3
  %i.p = mul nsw i64 %i.o, %.sroa.33.0.copyload
  %i.q = or disjoint i64 %.0226448, 4
  %i.r = mul nsw i64 %i.q, %.sroa.33.0.copyload
  %i.s = or disjoint i64 %.0226448, 5
  %i.t = mul nsw i64 %i.s, %.sroa.33.0.copyload
  %i.u = or disjoint i64 %.0226448, 6
  %i.v = mul nsw i64 %i.u, %.sroa.33.0.copyload
  %i.w = or disjoint i64 %.0226448, 7
  %i.x = mul nsw i64 %i.w, %.sroa.33.0.copyload
  br label %bb.b

.preheader408:                                    ; preds = %._crit_edge439, %bb.a
  %.0226.lcssa = phi i64 [ 0, %bb.a ], [ %i.fm, %._crit_edge439 ] ; 3 uses
  %i.y = icmp slt i64 %.0226.lcssa, %i.d
  br i1 %i.y, label %.preheader407.lr.ph, label %.preheader406

.preheader407.lr.ph:                              ; preds = %.preheader408
  %.not237450 = icmp slt i64 %1, 2
  %i.z = and i64 %1, -2
  br label %.preheader407

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.aa = phi i64 [ 2, %.lr.ph ], [ %i.bk, %bb.b ] ; 2 uses
  %.0224419 = phi i64 [ 0, %.lr.ph ], [ %i.aa, %bb.b ] ; 2 uses
  %.0389418.a = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.ah, %bb.b ]
  %.0390417 = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.al, %bb.b ]
  %.0391416 = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.ap, %bb.b ]
  %.0393415 = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.at, %bb.b ]
  %.0394414 = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.ax, %bb.b ]
  %.0395413 = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.bb, %bb.b ]
  %.0396412 = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.bf, %bb.b ]
  %.0397411 = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.bj, %bb.b ]
  %i.ab = getelementptr [8 x i8], ptr %i.h, i64 %.0224419
  %i.ac = load <2 x double>, ptr %i.ab, align 1, !tbaa !182 ; 8 uses
  %i.ad = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.0224419 ; 8 uses
  %i.ae = getelementptr [8 x i8], ptr %i.ad, i64 %i.j
  %i.af = load <2 x double>, ptr %i.ae, align 1, !tbaa !182
  %i.ag = fmul <2 x double> %i.ac, %i.af
  %i.ah = fadd <2 x double> %.0389418.a, %i.ag    ; 2 uses
  %i.ai = getelementptr [8 x i8], ptr %i.ad, i64 %i.l
  %i.aj = load <2 x double>, ptr %i.ai, align 1, !tbaa !182
  %i.ak = fmul <2 x double> %i.ac, %i.aj
  %i.al = fadd <2 x double> %.0390417, %i.ak      ; 2 uses
  %i.am = getelementptr [8 x i8], ptr %i.ad, i64 %i.n
  %i.an = load <2 x double>, ptr %i.am, align 1, !tbaa !182
  %i.ao = fmul <2 x double> %i.ac, %i.an
  %i.ap = fadd <2 x double> %.0391416, %i.ao      ; 2 uses
  %i.aq = getelementptr [8 x i8], ptr %i.ad, i64 %i.p
  %i.ar = load <2 x double>, ptr %i.aq, align 1, !tbaa !182
  %i.as = fmul <2 x double> %i.ac, %i.ar
  %i.at = fadd <2 x double> %.0393415, %i.as      ; 2 uses
  %i.au = getelementptr [8 x i8], ptr %i.ad, i64 %i.r
  %i.av = load <2 x double>, ptr %i.au, align 1, !tbaa !182
  %i.aw = fmul <2 x double> %i.ac, %i.av
  %i.ax = fadd <2 x double> %.0394414, %i.aw      ; 2 uses
  %i.ay = getelementptr [8 x i8], ptr %i.ad, i64 %i.t
  %i.az = load <2 x double>, ptr %i.ay, align 1, !tbaa !182
  %i.ba = fmul <2 x double> %i.ac, %i.az
  %i.bb = fadd <2 x double> %.0395413, %i.ba      ; 2 uses
  %i.bc = getelementptr [8 x i8], ptr %i.ad, i64 %i.v
  %i.bd = load <2 x double>, ptr %i.bc, align 1, !tbaa !182
  %i.be = fmul <2 x double> %i.ac, %i.bd
  %i.bf = fadd <2 x double> %.0396412, %i.be      ; 2 uses
  %i.bg = getelementptr [8 x i8], ptr %i.ad, i64 %i.x
  %i.bh = load <2 x double>, ptr %i.bg, align 1, !tbaa !182
  %i.bi = fmul <2 x double> %i.ac, %i.bh
  %i.bj = fadd <2 x double> %.0397411, %i.bi      ; 2 uses
  %i.bk = add nuw nsw i64 %i.aa, 2                ; 2 uses
  %.not238 = icmp sgt i64 %i.bk, %1
  br i1 %.not238, label %._crit_edge, label %bb.b, !llvm.loop !983

._crit_edge:                                      ; preds = %bb.b, %.preheader409
  %.0397.lcssa = phi <2 x double> [ zeroinitializer, %.preheader409 ], [ %i.bj, %bb.b ] ; 2 uses
  %.0396.lcssa = phi <2 x double> [ zeroinitializer, %.preheader409 ], [ %i.bf, %bb.b ] ; 2 uses
  %.0395.lcssa = phi <2 x double> [ zeroinitializer, %.preheader409 ], [ %i.bb, %bb.b ] ; 2 uses
  %.0394.lcssa = phi <2 x double> [ zeroinitializer, %.preheader409 ], [ %i.ax, %bb.b ] ; 2 uses
  %.0393.lcssa = phi <2 x double> [ zeroinitializer, %.preheader409 ], [ %i.at, %bb.b ] ; 2 uses
  %.0391.lcssa = phi <2 x double> [ zeroinitializer, %.preheader409 ], [ %i.ap, %bb.b ] ; 2 uses
  %.0390.lcssa = phi <2 x double> [ zeroinitializer, %.preheader409 ], [ %i.al, %bb.b ] ; 2 uses
  %.0389.lcssa = phi <2 x double> [ zeroinitializer, %.preheader409 ], [ %i.ah, %bb.b ] ; 2 uses
  %.0224.lcssa = phi i64 [ 0, %.preheader409 ], [ %i.i, %bb.b ] ; 2 uses
  %i.bl = shufflevector <2 x double> %.0389.lcssa, <2 x double> %.0390.lcssa, <2 x i32> <i32 0, i32 2>
  %i.bm = shufflevector <2 x double> %.0391.lcssa, <2 x double> %.0393.lcssa, <2 x i32> <i32 0, i32 2>
  %i.bn = shufflevector <2 x double> %i.bl, <2 x double> %i.bm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bo = shufflevector <2 x double> %.0394.lcssa, <2 x double> %.0395.lcssa, <8 x i32> <i32 0, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bp = shufflevector <8 x double> %i.bn, <8 x double> %i.bo, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 poison, i32 poison>
  %i.bq = shufflevector <2 x double> %.0396.lcssa, <2 x double> %.0397.lcssa, <8 x i32> <i32 0, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.br = shufflevector <8 x double> %i.bp, <8 x double> %i.bq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.bs = shufflevector <2 x double> %.0389.lcssa, <2 x double> %.0390.lcssa, <2 x i32> <i32 1, i32 3>
  %i.bt = shufflevector <2 x double> %.0391.lcssa, <2 x double> %.0393.lcssa, <2 x i32> <i32 1, i32 3>
  %i.bu = shufflevector <2 x double> %i.bs, <2 x double> %i.bt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bv = shufflevector <2 x double> %.0394.lcssa, <2 x double> %.0395.lcssa, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bw = shufflevector <8 x double> %i.bu, <8 x double> %i.bv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 poison, i32 poison>
  %i.bx = shufflevector <2 x double> %.0396.lcssa, <2 x double> %.0397.lcssa, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.by = shufflevector <8 x double> %i.bw, <8 x double> %i.bx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.bz = fadd <8 x double> %i.br, %i.by          ; 2 uses
  %i.ca = icmp slt i64 %.0224.lcssa, %1
  br i1 %i.ca, label %.lr.ph438, label %._crit_edge.._crit_edge439_crit_edge

._crit_edge.._crit_edge439_crit_edge:             ; preds = %._crit_edge
  %.pre = or disjoint i64 %.0226448, 1
  %.pre553 = or disjoint i64 %.0226448, 2
  %.pre555 = or disjoint i64 %.0226448, 3
  %.pre557 = or disjoint i64 %.0226448, 4
  %.pre559 = or disjoint i64 %.0226448, 5
  %.pre561 = or disjoint i64 %.0226448, 6
  %.pre563 = or disjoint i64 %.0226448, 7
  br label %._crit_edge439

.lr.ph438:                                        ; preds = %._crit_edge
  %i.cb = mul nsw i64 %.0226448, %.sroa.33.0.copyload
  %i.cc = or disjoint i64 %.0226448, 1            ; 2 uses
  %i.cd = mul nsw i64 %i.cc, %.sroa.33.0.copyload
  %i.ce = or disjoint i64 %.0226448, 2            ; 2 uses
  %i.cf = mul nsw i64 %i.ce, %.sroa.33.0.copyload
  %i.cg = or disjoint i64 %.0226448, 3            ; 2 uses
  %i.ch = mul nsw i64 %i.cg, %.sroa.33.0.copyload
  %i.ci = or disjoint i64 %.0226448, 4            ; 2 uses
  %i.cj = mul nsw i64 %i.ci, %.sroa.33.0.copyload
  %i.ck = or disjoint i64 %.0226448, 5            ; 2 uses
  %i.cl = mul nsw i64 %i.ck, %.sroa.33.0.copyload
  %i.cm = or disjoint i64 %.0226448, 6            ; 2 uses
  %i.cn = mul nsw i64 %i.cm, %.sroa.33.0.copyload
  %i.co = or disjoint i64 %.0226448, 7            ; 2 uses
  %i.cp = mul nsw i64 %i.co, %.sroa.33.0.copyload
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph438, %bb.c
  %.1225428 = phi i64 [ %.0224.lcssa, %.lr.ph438 ], [ %i.dw, %bb.c ] ; 3 uses
  %i.cq = phi <8 x double> [ %i.bz, %.lr.ph438 ], [ %i.dv, %bb.c ]
  %i.cr = getelementptr [8 x i8], ptr %i.h, i64 %.1225428
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !189
  %i.ct = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.1225428 ; 8 uses
  %i.cu = getelementptr [8 x i8], ptr %i.ct, i64 %i.cb
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !189
  %i.cw = getelementptr [8 x i8], ptr %i.ct, i64 %i.cd
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !189
  %i.cy = getelementptr [8 x i8], ptr %i.ct, i64 %i.cf
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !189
  %i.da = getelementptr [8 x i8], ptr %i.ct, i64 %i.ch
  %i.db = load double, ptr %i.da, align 8, !tbaa !189
  %i.dc = getelementptr [8 x i8], ptr %i.ct, i64 %i.cj
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !189
  %i.de = getelementptr [8 x i8], ptr %i.ct, i64 %i.cl
  %i.df = load double, ptr %i.de, align 8, !tbaa !189
  %i.dg = getelementptr [8 x i8], ptr %i.ct, i64 %i.cn
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !189
  %i.di = getelementptr [8 x i8], ptr %i.ct, i64 %i.cp
  %i.dj = load double, ptr %i.di, align 8, !tbaa !189
  %i.dk = insertelement <8 x double> poison, double %i.cs, i64 0
  %i.dl = shufflevector <8 x double> %i.dk, <8 x double> poison, <8 x i32> zeroinitializer
  %i.dm = insertelement <8 x double> poison, double %i.cv, i64 0
  %i.dn = insertelement <8 x double> %i.dm, double %i.cx, i64 1
  %i.do = insertelement <8 x double> %i.dn, double %i.cz, i64 2
  %i.dp = insertelement <8 x double> %i.do, double %i.db, i64 3
  %i.dq = insertelement <8 x double> %i.dp, double %i.dd, i64 4
  %i.dr = insertelement <8 x double> %i.dq, double %i.df, i64 5
  %i.ds = insertelement <8 x double> %i.dr, double %i.dh, i64 6
  %i.dt = insertelement <8 x double> %i.ds, double %i.dj, i64 7
  %i.du = fmul <8 x double> %i.dl, %i.dt
  %i.dv = fadd <8 x double> %i.cq, %i.du          ; 2 uses
  %i.dw = add nuw nsw i64 %.1225428, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.dw, %1
  br i1 %exitcond.not, label %._crit_edge439, label %bb.c, !llvm.loop !984

._crit_edge439:                                   ; preds = %bb.c, %._crit_edge.._crit_edge439_crit_edge
  %.pre-phi564.a = phi i64 [ %.pre563, %._crit_edge.._crit_edge439_crit_edge ], [ %i.co, %bb.c ]
  %.pre-phi562.a = phi i64 [ %.pre561, %._crit_edge.._crit_edge439_crit_edge ], [ %i.cm, %bb.c ]
  %.pre-phi560.a = phi i64 [ %.pre559, %._crit_edge.._crit_edge439_crit_edge ], [ %i.ck, %bb.c ]
  %.pre-phi558.a = phi i64 [ %.pre557, %._crit_edge.._crit_edge439_crit_edge ], [ %i.ci, %bb.c ]
  %.pre-phi556 = phi i64 [ %.pre555, %._crit_edge.._crit_edge439_crit_edge ], [ %i.cg, %bb.c ]
  %.pre-phi554 = phi i64 [ %.pre553, %._crit_edge.._crit_edge439_crit_edge ], [ %i.ce, %bb.c ]
  %.pre-phi = phi i64 [ %.pre, %._crit_edge.._crit_edge439_crit_edge ], [ %i.cc, %bb.c ]
  %i.dx = phi <8 x double> [ %i.bz, %._crit_edge.._crit_edge439_crit_edge ], [ %i.dv, %bb.c ] ; 8 uses
  %i.dy = mul nsw i64 %.0226448, %5
  %i.dz = getelementptr inbounds [8 x i8], ptr %4, i64 %i.dy ; 2 uses
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !189
  %i.eb = extractelement <8 x double> %i.dx, i64 0
  %i.ec = tail call double @llvm.fmuladd.f64(double %6, double %i.eb, double %i.ea)
  store double %i.ec, ptr %i.dz, align 8, !tbaa !189
  %i.ed = mul nsw i64 %.pre-phi, %5
  %i.ee = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ed ; 2 uses
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !189
  %i.eg = extractelement <8 x double> %i.dx, i64 1
  %i.eh = tail call double @llvm.fmuladd.f64(double %6, double %i.eg, double %i.ef)
  store double %i.eh, ptr %i.ee, align 8, !tbaa !189
  %i.ei = mul nsw i64 %.pre-phi554, %5
  %i.ej = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ei ; 2 uses
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !189
  %i.el = extractelement <8 x double> %i.dx, i64 2
  %i.em = tail call double @llvm.fmuladd.f64(double %6, double %i.el, double %i.ek)
  store double %i.em, ptr %i.ej, align 8, !tbaa !189
  %i.en = mul nsw i64 %.pre-phi556, %5
  %i.eo = getelementptr inbounds [8 x i8], ptr %4, i64 %i.en ; 2 uses
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !189
  %i.eq = extractelement <8 x double> %i.dx, i64 3
  %i.er = tail call double @llvm.fmuladd.f64(double %6, double %i.eq, double %i.ep)
  store double %i.er, ptr %i.eo, align 8, !tbaa !189
  %i.es = mul nsw i64 %.pre-phi558.a, %5
  %i.et = getelementptr inbounds [8 x i8], ptr %4, i64 %i.es ; 2 uses
  %i.eu = load double, ptr %i.et, align 8, !tbaa !189
  %i.ev = extractelement <8 x double> %i.dx, i64 4
  %i.ew = tail call double @llvm.fmuladd.f64(double %6, double %i.ev, double %i.eu)
  store double %i.ew, ptr %i.et, align 8, !tbaa !189
  %i.ex = mul nsw i64 %.pre-phi560.a, %5
  %i.ey = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ex ; 2 uses
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !189
  %i.fa = extractelement <8 x double> %i.dx, i64 5
  %i.fb = tail call double @llvm.fmuladd.f64(double %6, double %i.fa, double %i.ez)
  store double %i.fb, ptr %i.ey, align 8, !tbaa !189
  %i.fc = mul nsw i64 %.pre-phi562.a, %5
  %i.fd = getelementptr inbounds [8 x i8], ptr %4, i64 %i.fc ; 2 uses
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !189
  %i.ff = extractelement <8 x double> %i.dx, i64 6
  %i.fg = tail call double @llvm.fmuladd.f64(double %6, double %i.ff, double %i.fe)
  store double %i.fg, ptr %i.fd, align 8, !tbaa !189
  %i.fh = mul nsw i64 %.pre-phi564.a, %5
  %i.fi = getelementptr inbounds [8 x i8], ptr %4, i64 %i.fh ; 2 uses
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !189
  %i.fk = extractelement <8 x double> %i.dx, i64 7
  %i.fl = tail call double @llvm.fmuladd.f64(double %6, double %i.fk, double %i.fj)
  store double %i.fl, ptr %i.fi, align 8, !tbaa !189
  %i.fm = add nuw nsw i64 %.0226448, 8            ; 3 uses
  %i.fn = icmp sgt i64 %i.c, %i.fm
  br i1 %i.fn, label %.preheader409, label %.preheader408, !llvm.loop !985

.preheader407:                                    ; preds = %.preheader407.lr.ph, %._crit_edge470
  %.1227475 = phi i64 [ %.0226.lcssa, %.preheader407.lr.ph ], [ %i.je, %._crit_edge470 ] ; 13 uses
  br i1 %.not237450, label %._crit_edge457, label %.lr.ph456

.lr.ph456:                                        ; preds = %.preheader407
  %i.fo = load ptr, ptr %3, align 8, !tbaa !394
  %i.fp = mul nsw i64 %.1227475, %.sroa.33.0.copyload
  %i.fq = add nuw nsw i64 %.1227475, 1
  %i.fr = mul nsw i64 %i.fq, %.sroa.33.0.copyload
  %i.fs = add nuw nsw i64 %.1227475, 2
  %i.ft = mul nsw i64 %i.fs, %.sroa.33.0.copyload
  %i.fu = add nuw nsw i64 %.1227475, 3
  %i.fv = mul nsw i64 %i.fu, %.sroa.33.0.copyload
  br label %bb.d

.preheader406:                                    ; preds = %._crit_edge470, %.preheader408
  %.1227.lcssa = phi i64 [ %.0226.lcssa, %.preheader408 ], [ %i.je, %._crit_edge470 ] ; 3 uses
  %i.fw = icmp slt i64 %.1227.lcssa, %i.e
  br i1 %i.fw, label %.preheader405.lr.ph, label %.preheader404

.preheader405.lr.ph:                              ; preds = %.preheader406
  %.not236477 = icmp slt i64 %1, 2
  %i.fx = and i64 %1, -2                          ; 2 uses
  %i.fy = add i64 %1, -2                          ; 2 uses
  %i.fz = lshr i64 %i.fy, 1                       ; 2 uses
  %i.ga = add nuw i64 %i.fz, 1                    ; 2 uses
  %i.gb = icmp eq i64 %i.fz, 0
  %unroll_iter = and i64 %i.ga, -2
  %i.gc = and i64 %i.fy, 2
  %lcmp.mod.not.not = icmp eq i64 %i.gc, 0
  %lcmp.mod670 = trunc i64 %i.ga to i1
  %xtraiter671 = and i64 %1, 1
  %lcmp.mod672.not = icmp eq i64 %xtraiter671, 0
  br label %.preheader405

bb.d:                                             ; preds = %.lr.ph456, %bb.d
  %i.gd = phi i64 [ 2, %.lr.ph456 ], [ %i.gx, %bb.d ] ; 2 uses
  %.0214455 = phi i64 [ 0, %.lr.ph456 ], [ %i.gd, %bb.d ] ; 2 uses
  %.0399454.a = phi <2 x double> [ zeroinitializer, %.lr.ph456 ], [ %i.gk, %bb.d ]
  %.0401453 = phi <2 x double> [ zeroinitializer, %.lr.ph456 ], [ %i.go, %bb.d ]
  %.0402452 = phi <2 x double> [ zeroinitializer, %.lr.ph456 ], [ %i.gs, %bb.d ]
  %.0403451 = phi <2 x double> [ zeroinitializer, %.lr.ph456 ], [ %i.gw, %bb.d ]
  %i.ge = getelementptr [8 x i8], ptr %i.fo, i64 %.0214455
  %i.gf = load <2 x double>, ptr %i.ge, align 1, !tbaa !182 ; 4 uses
  %i.gg = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.0214455 ; 4 uses
  %i.gh = getelementptr [8 x i8], ptr %i.gg, i64 %i.fp
  %i.gi = load <2 x double>, ptr %i.gh, align 1, !tbaa !182
  %i.gj = fmul <2 x double> %i.gf, %i.gi
  %i.gk = fadd <2 x double> %.0399454.a, %i.gj    ; 2 uses
  %i.gl = getelementptr [8 x i8], ptr %i.gg, i64 %i.fr
  %i.gm = load <2 x double>, ptr %i.gl, align 1, !tbaa !182
  %i.gn = fmul <2 x double> %i.gf, %i.gm
  %i.go = fadd <2 x double> %.0401453, %i.gn      ; 2 uses
  %i.gp = getelementptr [8 x i8], ptr %i.gg, i64 %i.ft
  %i.gq = load <2 x double>, ptr %i.gp, align 1, !tbaa !182
  %i.gr = fmul <2 x double> %i.gf, %i.gq
  %i.gs = fadd <2 x double> %.0402452, %i.gr      ; 2 uses
  %i.gt = getelementptr [8 x i8], ptr %i.gg, i64 %i.fv
  %i.gu = load <2 x double>, ptr %i.gt, align 1, !tbaa !182
  %i.gv = fmul <2 x double> %i.gf, %i.gu
  %i.gw = fadd <2 x double> %.0403451, %i.gv      ; 2 uses
  %i.gx = add nuw nsw i64 %i.gd, 2                ; 2 uses
  %.not237 = icmp sgt i64 %i.gx, %1
  br i1 %.not237, label %._crit_edge457, label %bb.d, !llvm.loop !986

._crit_edge457:                                   ; preds = %bb.d, %.preheader407
  %.0403.lcssa = phi <2 x double> [ zeroinitializer, %.preheader407 ], [ %i.gw, %bb.d ] ; 2 uses
  %.0402.lcssa = phi <2 x double> [ zeroinitializer, %.preheader407 ], [ %i.gs, %bb.d ] ; 2 uses
  %.0401.lcssa = phi <2 x double> [ zeroinitializer, %.preheader407 ], [ %i.go, %bb.d ] ; 2 uses
  %.0399.lcssa = phi <2 x double> [ zeroinitializer, %.preheader407 ], [ %i.gk, %bb.d ] ; 2 uses
  %.0214.lcssa = phi i64 [ 0, %.preheader407 ], [ %i.z, %bb.d ] ; 2 uses
  %i.gy = shufflevector <2 x double> %.0399.lcssa, <2 x double> %.0401.lcssa, <2 x i32> <i32 0, i32 2>
  %i.gz = shufflevector <2 x double> %.0402.lcssa, <2 x double> %.0403.lcssa, <2 x i32> <i32 0, i32 2>
  %i.ha = shufflevector <2 x double> %i.gy, <2 x double> %i.gz, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.hb = shufflevector <2 x double> %.0399.lcssa, <2 x double> %.0401.lcssa, <2 x i32> <i32 1, i32 3>
  %i.hc = shufflevector <2 x double> %.0402.lcssa, <2 x double> %.0403.lcssa, <2 x i32> <i32 1, i32 3>
  %i.hd = shufflevector <2 x double> %i.hb, <2 x double> %i.hc, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.he = fadd <4 x double> %i.ha, %i.hd          ; 2 uses
  %i.hf = icmp slt i64 %.0214.lcssa, %1
  br i1 %i.hf, label %.lr.ph469, label %._crit_edge457.._crit_edge470_crit_edge

._crit_edge457.._crit_edge470_crit_edge:          ; preds = %._crit_edge457
  %.pre565 = add nuw nsw i64 %.1227475, 1
  %.pre567 = add nuw nsw i64 %.1227475, 2
  %.pre569 = add nuw nsw i64 %.1227475, 3
  br label %._crit_edge470

.lr.ph469:                                        ; preds = %._crit_edge457
  %i.hg = load ptr, ptr %3, align 8, !tbaa !394
  %i.hh = mul nsw i64 %.1227475, %.sroa.33.0.copyload
  %i.hi = add nuw nsw i64 %.1227475, 1            ; 2 uses
  %i.hj = mul nsw i64 %i.hi, %.sroa.33.0.copyload
  %i.hk = add nuw nsw i64 %.1227475, 2            ; 2 uses
  %i.hl = mul nsw i64 %i.hk, %.sroa.33.0.copyload
  %i.hm = add nuw nsw i64 %.1227475, 3            ; 2 uses
  %i.hn = mul nsw i64 %i.hm, %.sroa.33.0.copyload
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph469, %bb.e
  %.1215463 = phi i64 [ %.0214.lcssa, %.lr.ph469 ], [ %i.ii, %bb.e ] ; 3 uses
  %i.ho = phi <4 x double> [ %i.he, %.lr.ph469 ], [ %i.ih, %bb.e ]
  %i.hp = getelementptr [8 x i8], ptr %i.hg, i64 %.1215463
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !189
  %i.hr = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.1215463 ; 4 uses
  %i.hs = getelementptr [8 x i8], ptr %i.hr, i64 %i.hh
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !189
  %i.hu = getelementptr [8 x i8], ptr %i.hr, i64 %i.hj
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !189
  %i.hw = getelementptr [8 x i8], ptr %i.hr, i64 %i.hl
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !189
  %i.hy = getelementptr [8 x i8], ptr %i.hr, i64 %i.hn
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !189
  %i.ia = insertelement <4 x double> poison, double %i.hq, i64 0
  %i.ib = shufflevector <4 x double> %i.ia, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ic = insertelement <4 x double> poison, double %i.ht, i64 0
  %i.id = insertelement <4 x double> %i.ic, double %i.hv, i64 1
  %i.ie = insertelement <4 x double> %i.id, double %i.hx, i64 2
  %i.if = insertelement <4 x double> %i.ie, double %i.hz, i64 3
  %i.ig = fmul <4 x double> %i.ib, %i.if
  %i.ih = fadd <4 x double> %i.ho, %i.ig          ; 2 uses
  %i.ii = add nuw nsw i64 %.1215463, 1            ; 2 uses
  %exitcond549.not = icmp eq i64 %i.ii, %1
  br i1 %exitcond549.not, label %._crit_edge470, label %bb.e, !llvm.loop !987

._crit_edge470:                                   ; preds = %bb.e, %._crit_edge457.._crit_edge470_crit_edge
  %.pre-phi570.a = phi i64 [ %.pre569, %._crit_edge457.._crit_edge470_crit_edge ], [ %i.hm, %bb.e ]
  %.pre-phi568 = phi i64 [ %.pre567, %._crit_edge457.._crit_edge470_crit_edge ], [ %i.hk, %bb.e ]
  %.pre-phi566 = phi i64 [ %.pre565, %._crit_edge457.._crit_edge470_crit_edge ], [ %i.hi, %bb.e ]
  %i.ij = phi <4 x double> [ %i.he, %._crit_edge457.._crit_edge470_crit_edge ], [ %i.ih, %bb.e ] ; 4 uses
  %i.ik = mul nsw i64 %.1227475, %5
  %i.il = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ik ; 2 uses
  %i.im = load double, ptr %i.il, align 8, !tbaa !189
  %i.in = extractelement <4 x double> %i.ij, i64 0
  %i.io = tail call double @llvm.fmuladd.f64(double %6, double %i.in, double %i.im)
  store double %i.io, ptr %i.il, align 8, !tbaa !189
  %i.ip = mul nsw i64 %.pre-phi566, %5
  %i.iq = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ip ; 2 uses
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !189
  %i.is = extractelement <4 x double> %i.ij, i64 1
  %i.it = tail call double @llvm.fmuladd.f64(double %6, double %i.is, double %i.ir)
  store double %i.it, ptr %i.iq, align 8, !tbaa !189
  %i.iu = mul nsw i64 %.pre-phi568, %5
  %i.iv = getelementptr inbounds [8 x i8], ptr %4, i64 %i.iu ; 2 uses
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !189
  %i.ix = extractelement <4 x double> %i.ij, i64 2
  %i.iy = tail call double @llvm.fmuladd.f64(double %6, double %i.ix, double %i.iw)
  store double %i.iy, ptr %i.iv, align 8, !tbaa !189
  %i.iz = mul nsw i64 %.pre-phi570.a, %5
  %i.ja = getelementptr inbounds [8 x i8], ptr %4, i64 %i.iz ; 2 uses
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !189
  %i.jc = extractelement <4 x double> %i.ij, i64 3
  %i.jd = tail call double @llvm.fmuladd.f64(double %6, double %i.jc, double %i.jb)
  store double %i.jd, ptr %i.ja, align 8, !tbaa !189
  %i.je = add nuw nsw i64 %.1227475, 4            ; 3 uses
  %i.jf = icmp slt i64 %i.je, %i.d
  br i1 %i.jf, label %.preheader407, label %.preheader406, !llvm.loop !988

.preheader405:                                    ; preds = %.preheader405.lr.ph, %._crit_edge491
  %.2494 = phi i64 [ %.1227.lcssa, %.preheader405.lr.ph ], [ %i.nk, %._crit_edge491 ] ; 7 uses
  br i1 %.not236477, label %._crit_edge482, label %.lr.ph481

.lr.ph481:                                        ; preds = %.preheader405
  %i.jg = load ptr, ptr %3, align 8, !tbaa !394   ; 3 uses
  %i.jh = mul nsw i64 %.2494, %.sroa.33.0.copyload ; 3 uses
  %i.ji = add nuw nsw i64 %.2494, 1
  %i.jj = mul nsw i64 %i.ji, %.sroa.33.0.copyload ; 3 uses
  br i1 %i.gb, label %.epil.preheader, label %.lr.ph481.new

.preheader404:                                    ; preds = %._crit_edge491, %.preheader406
  %.2.lcssa = phi i64 [ %.1227.lcssa, %.preheader406 ], [ %i.nk, %._crit_edge491 ] ; 2 uses
  %i.jk = icmp slt i64 %.2.lcssa, %0
  br i1 %i.jk, label %.preheader.lr.ph, label %._crit_edge512

.preheader.lr.ph:                                 ; preds = %.preheader404
  %.not496 = icmp slt i64 %1, 2
  %i.jl = and i64 %1, -2                          ; 2 uses
  %i.jm = add i64 %1, -2                          ; 2 uses
  %i.jn = lshr i64 %i.jm, 1
  %i.jo = add nuw i64 %i.jn, 1                    ; 2 uses
  %xtraiter674 = and i64 %i.jo, 3                 ; 3 uses
  %i.jp = icmp ult i64 %i.jm, 6
  %unroll_iter679 = and i64 %i.jo, -4
  %lcmp.mod676.not = icmp eq i64 %xtraiter674, 0
  %lcmp.mod678 = icmp ne i64 %xtraiter674, 0
  br label %.preheader

.lr.ph481.new:                                    ; preds = %.lr.ph481, %.lr.ph481.new
  %i.jq = phi i64 [ %i.kn, %.lr.ph481.new ], [ 2, %.lr.ph481 ] ; 4 uses
  %.0208480 = phi i64 [ %7, %.lr.ph481.new ], [ 0, %.lr.ph481 ] ; 2 uses
  %.0398479.a = phi <2 x double> [ %i.km, %.lr.ph481.new ], [ zeroinitializer, %.lr.ph481 ]
  %.0400478 = phi <2 x double> [ %i.ki, %.lr.ph481.new ], [ zeroinitializer, %.lr.ph481 ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph481.new ], [ 0, %.lr.ph481 ]
  %i.jr = getelementptr [8 x i8], ptr %i.jg, i64 %.0208480
  %i.js = load <2 x double>, ptr %i.jr, align 1, !tbaa !182 ; 2 uses
  %i.jt = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.0208480 ; 2 uses
  %i.ju = getelementptr [8 x i8], ptr %i.jt, i64 %i.jh
  %i.jv = load <2 x double>, ptr %i.ju, align 1, !tbaa !182
  %i.jw = fmul <2 x double> %i.js, %i.jv
  %i.jx = fadd <2 x double> %.0400478, %i.jw
  %i.jy = getelementptr [8 x i8], ptr %i.jt, i64 %i.jj
  %i.jz = load <2 x double>, ptr %i.jy, align 1, !tbaa !182
  %i.ka = fmul <2 x double> %i.js, %i.jz
  %i.kb = fadd <2 x double> %.0398479.a, %i.ka
  %7 = add nuw nsw i64 %i.jq, 2                   ; 2 uses
  %i.kc = getelementptr [8 x i8], ptr %i.jg, i64 %i.jq
  %i.kd = load <2 x double>, ptr %i.kc, align 1, !tbaa !182 ; 2 uses
  %i.ke = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %i.jq ; 2 uses
  %i.kf = getelementptr [8 x i8], ptr %i.ke, i64 %i.jh
  %i.kg = load <2 x double>, ptr %i.kf, align 1, !tbaa !182
  %i.kh = fmul <2 x double> %i.kd, %i.kg
  %i.ki = fadd <2 x double> %i.jx, %i.kh          ; 3 uses
  %i.kj = getelementptr [8 x i8], ptr %i.ke, i64 %i.jj
  %i.kk = load <2 x double>, ptr %i.kj, align 1, !tbaa !182
  %i.kl = fmul <2 x double> %i.kd, %i.kk
  %i.km = fadd <2 x double> %i.kb, %i.kl          ; 3 uses
  %i.kn = add nuw nsw i64 %i.jq, 4
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge482.loopexit.unr-lcssa, label %.lr.ph481.new, !llvm.loop !989

._crit_edge482.loopexit.unr-lcssa:                ; preds = %.lr.ph481.new
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %._crit_edge482

.epil.preheader:                                  ; preds = %._crit_edge482.loopexit.unr-lcssa, %.lr.ph481
  %.0208480.epil.init = phi i64 [ 0, %.lr.ph481 ], [ %7, %._crit_edge482.loopexit.unr-lcssa ] ; 2 uses
  %.0398479.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph481 ], [ %i.km, %._crit_edge482.loopexit.unr-lcssa ]
  %.0400478.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph481 ], [ %i.ki, %._crit_edge482.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod670)
  %i.ko = getelementptr [8 x i8], ptr %i.jg, i64 %.0208480.epil.init
  %i.kp = load <2 x double>, ptr %i.ko, align 1, !tbaa !182 ; 2 uses
  %i.kq = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.0208480.epil.init ; 2 uses
  %i.kr = getelementptr [8 x i8], ptr %i.kq, i64 %i.jh
  %i.ks = load <2 x double>, ptr %i.kr, align 1, !tbaa !182
  %i.kt = fmul <2 x double> %i.kp, %i.ks
  %i.ku = fadd <2 x double> %.0400478.epil.init, %i.kt
  %i.kv = getelementptr [8 x i8], ptr %i.kq, i64 %i.jj
  %i.kw = load <2 x double>, ptr %i.kv, align 1, !tbaa !182
  %i.kx = fmul <2 x double> %i.kp, %i.kw
  %i.ky = fadd <2 x double> %.0398479.epil.init, %i.kx
  br label %._crit_edge482

._crit_edge482:                                   ; preds = %.epil.preheader, %._crit_edge482.loopexit.unr-lcssa, %.preheader405
  %.0400.lcssa = phi <2 x double> [ zeroinitializer, %.preheader405 ], [ %i.ki, %._crit_edge482.loopexit.unr-lcssa ], [ %i.ku, %.epil.preheader ] ; 2 uses
  %.0398.lcssa = phi <2 x double> [ zeroinitializer, %.preheader405 ], [ %i.km, %._crit_edge482.loopexit.unr-lcssa ], [ %i.ky, %.epil.preheader ] ; 2 uses
  %.0208.lcssa = phi i64 [ 0, %.preheader405 ], [ %i.fx, %._crit_edge482.loopexit.unr-lcssa ], [ %i.fx, %.epil.preheader ] ; 6 uses
  %i.kz = shufflevector <2 x double> %.0400.lcssa, <2 x double> %.0398.lcssa, <2 x i32> <i32 0, i32 2>
  %i.la = shufflevector <2 x double> %.0400.lcssa, <2 x double> %.0398.lcssa, <2 x i32> <i32 1, i32 3>
  %i.lb = fadd <2 x double> %i.kz, %i.la          ; 3 uses
  %i.lc = icmp slt i64 %.0208.lcssa, %1
  br i1 %i.lc, label %.lr.ph490, label %._crit_edge482.._crit_edge491_crit_edge

._crit_edge482.._crit_edge491_crit_edge:          ; preds = %._crit_edge482
  %.pre571 = add nuw nsw i64 %.2494, 1
  br label %._crit_edge491

.lr.ph490:                                        ; preds = %._crit_edge482
  %i.ld = load ptr, ptr %3, align 8, !tbaa !394   ; 3 uses
  %i.le = mul nsw i64 %.2494, %.sroa.33.0.copyload ; 3 uses
  %i.lf = add nuw nsw i64 %.2494, 1               ; 3 uses
  %i.lg = mul nsw i64 %i.lf, %.sroa.33.0.copyload ; 3 uses
  %.neg = or disjoint i64 %.0208.lcssa, 1
  br i1 %lcmp.mod672.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph490
  %i.lh = getelementptr [8 x i8], ptr %i.ld, i64 %.0208.lcssa
  %i.li = load double, ptr %i.lh, align 8, !tbaa !189
  %i.lj = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.0208.lcssa ; 2 uses
  %i.lk = getelementptr [8 x i8], ptr %i.lj, i64 %i.le
  %i.ll = load double, ptr %i.lk, align 8, !tbaa !189
  %i.lm = getelementptr [8 x i8], ptr %i.lj, i64 %i.lg
  %i.ln = load double, ptr %i.lm, align 8, !tbaa !189
  %i.lo = insertelement <2 x double> poison, double %i.li, i64 0
  %i.lp = shufflevector <2 x double> %i.lo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lq = insertelement <2 x double> poison, double %i.ll, i64 0
  %i.lr = insertelement <2 x double> %i.lq, double %i.ln, i64 1
  %i.ls = fmul <2 x double> %i.lp, %i.lr
  %i.lt = fadd <2 x double> %i.lb, %i.ls          ; 2 uses
  %i.lu = or disjoint i64 %.0208.lcssa, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph490
  %.lcssa650.unr = phi <2 x double> [ poison, %.lr.ph490 ], [ %i.lt, %.prol.loopexit.unr-lcssa ]
  %.1209486.unr = phi i64 [ %.0208.lcssa, %.lr.ph490 ], [ %i.lu, %.prol.loopexit.unr-lcssa ]
  %.unr = phi <2 x double> [ %i.lb, %.lr.ph490 ], [ %i.lt, %.prol.loopexit.unr-lcssa ]
  %i.lv = icmp eq i64 %1, %.neg
  br i1 %i.lv, label %._crit_edge491, label %.lr.ph490.new

.lr.ph490.new:                                    ; preds = %.prol.loopexit, %.lr.ph490.new
  %.1209486 = phi i64 [ %i.my, %.lr.ph490.new ], [ %.1209486.unr, %.prol.loopexit ] ; 4 uses
  %i.lw = phi <2 x double> [ %i.mx, %.lr.ph490.new ], [ %.unr, %.prol.loopexit ]
  %i.lx = getelementptr [8 x i8], ptr %i.ld, i64 %.1209486
  %i.ly = load double, ptr %i.lx, align 8, !tbaa !189
  %i.lz = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.1209486 ; 2 uses
  %i.ma = getelementptr [8 x i8], ptr %i.lz, i64 %i.le
  %i.mb = load double, ptr %i.ma, align 8, !tbaa !189
  %i.mc = getelementptr [8 x i8], ptr %i.lz, i64 %i.lg
  %i.md = load double, ptr %i.mc, align 8, !tbaa !189
  %i.me = insertelement <2 x double> poison, double %i.ly, i64 0
  %i.mf = shufflevector <2 x double> %i.me, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mg = insertelement <2 x double> poison, double %i.mb, i64 0
  %i.mh = insertelement <2 x double> %i.mg, double %i.md, i64 1
  %i.mi = fmul <2 x double> %i.mf, %i.mh
  %i.mj = fadd <2 x double> %i.lw, %i.mi
  %i.mk = add nuw nsw i64 %.1209486, 1            ; 2 uses
  %i.ml = getelementptr [8 x i8], ptr %i.ld, i64 %i.mk
  %i.mm = load double, ptr %i.ml, align 8, !tbaa !189
  %i.mn = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %i.mk ; 2 uses
  %i.mo = getelementptr [8 x i8], ptr %i.mn, i64 %i.le
  %i.mp = load double, ptr %i.mo, align 8, !tbaa !189
  %i.mq = getelementptr [8 x i8], ptr %i.mn, i64 %i.lg
  %i.mr = load double, ptr %i.mq, align 8, !tbaa !189
  %i.ms = insertelement <2 x double> poison, double %i.mm, i64 0
  %i.mt = shufflevector <2 x double> %i.ms, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mu = insertelement <2 x double> poison, double %i.mp, i64 0
  %i.mv = insertelement <2 x double> %i.mu, double %i.mr, i64 1
  %i.mw = fmul <2 x double> %i.mt, %i.mv
  %i.mx = fadd <2 x double> %i.mj, %i.mw          ; 2 uses
  %i.my = add nuw nsw i64 %.1209486, 2            ; 2 uses
  %exitcond550.not.1 = icmp eq i64 %i.my, %1
  br i1 %exitcond550.not.1, label %._crit_edge491, label %.lr.ph490.new, !llvm.loop !990

._crit_edge491:                                   ; preds = %.prol.loopexit, %.lr.ph490.new, %._crit_edge482.._crit_edge491_crit_edge
  %.pre-phi572 = phi i64 [ %.pre571, %._crit_edge482.._crit_edge491_crit_edge ], [ %i.lf, %.lr.ph490.new ], [ %i.lf, %.prol.loopexit ]
  %i.mz = phi <2 x double> [ %i.lb, %._crit_edge482.._crit_edge491_crit_edge ], [ %.lcssa650.unr, %.prol.loopexit ], [ %i.mx, %.lr.ph490.new ] ; 2 uses
  %i.na = mul nsw i64 %.2494, %5
  %i.nb = getelementptr inbounds [8 x i8], ptr %4, i64 %i.na ; 2 uses
  %i.nc = load double, ptr %i.nb, align 8, !tbaa !189
  %i.nd = extractelement <2 x double> %i.mz, i64 0
  %i.ne = tail call double @llvm.fmuladd.f64(double %6, double %i.nd, double %i.nc)
  store double %i.ne, ptr %i.nb, align 8, !tbaa !189
  %i.nf = mul nsw i64 %.pre-phi572, %5
  %i.ng = getelementptr inbounds [8 x i8], ptr %4, i64 %i.nf ; 2 uses
  %i.nh = load double, ptr %i.ng, align 8, !tbaa !189
  %i.ni = extractelement <2 x double> %i.mz, i64 1
  %i.nj = tail call double @llvm.fmuladd.f64(double %6, double %i.ni, double %i.nh)
  store double %i.nj, ptr %i.ng, align 8, !tbaa !189
  %i.nk = add nuw nsw i64 %.2494, 2               ; 3 uses
  %i.nl = icmp slt i64 %i.nk, %i.e
  br i1 %i.nl, label %.preheader405, label %.preheader404, !llvm.loop !991

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge507
  %.3511 = phi i64 [ %.2.lcssa, %.preheader.lr.ph ], [ %i.qi, %._crit_edge507 ] ; 4 uses
  br i1 %.not496, label %._crit_edge500, label %.lr.ph499

.lr.ph499:                                        ; preds = %.preheader
  %i.nm = load ptr, ptr %3, align 8, !tbaa !394   ; 5 uses
  %i.nn = mul nsw i64 %.3511, %.sroa.33.0.copyload
  %invariant.gep = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %i.nn ; 5 uses
  br i1 %i.jp, label %.epil.preheader673, label %.lr.ph499.new

.lr.ph499.new:                                    ; preds = %.lr.ph499, %.lr.ph499.new
  %i.no = phi i64 [ %i.ol, %.lr.ph499.new ], [ 2, %.lr.ph499 ] ; 6 uses
  %.0205498 = phi i64 [ %i.of, %.lr.ph499.new ], [ 0, %.lr.ph499 ] ; 2 uses
  %.0392497 = phi <2 x double> [ %i.ok, %.lr.ph499.new ], [ zeroinitializer, %.lr.ph499 ]
  %niter680 = phi i64 [ %niter680.next.3, %.lr.ph499.new ], [ 0, %.lr.ph499 ]
  %i.np = getelementptr [8 x i8], ptr %i.nm, i64 %.0205498
  %i.nq = load <2 x double>, ptr %i.np, align 1, !tbaa !182
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0205498
  %i.nr = load <2 x double>, ptr %gep, align 1, !tbaa !182
  %i.ns = fmul <2 x double> %i.nq, %i.nr
  %i.nt = fadd <2 x double> %.0392497, %i.ns
  %8 = add nuw nsw i64 %i.no, 2                   ; 2 uses
  %i.nu = getelementptr [8 x i8], ptr %i.nm, i64 %i.no
  %i.nv = load <2 x double>, ptr %i.nu, align 1, !tbaa !182
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.no
  %i.nw = load <2 x double>, ptr %gep.1, align 1, !tbaa !182
  %i.nx = fmul <2 x double> %i.nv, %i.nw
  %i.ny = fadd <2 x double> %i.nt, %i.nx
  %i.nz = add nuw nsw i64 %i.no, 4                ; 2 uses
  %i.oa = getelementptr [8 x i8], ptr %i.nm, i64 %8
  %i.ob = load <2 x double>, ptr %i.oa, align 1, !tbaa !182
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %8
  %i.oc = load <2 x double>, ptr %gep.2, align 1, !tbaa !182
  %i.od = fmul <2 x double> %i.ob, %i.oc
  %i.oe = fadd <2 x double> %i.ny, %i.od
  %i.of = add nuw nsw i64 %i.no, 6                ; 2 uses
  %i.og = getelementptr [8 x i8], ptr %i.nm, i64 %i.nz
  %i.oh = load <2 x double>, ptr %i.og, align 1, !tbaa !182
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.nz
  %i.oi = load <2 x double>, ptr %gep.3, align 1, !tbaa !182
  %i.oj = fmul <2 x double> %i.oh, %i.oi
  %i.ok = fadd <2 x double> %i.oe, %i.oj          ; 3 uses
  %i.ol = add nuw nsw i64 %i.no, 8                ; 2 uses
  %niter680.next.3 = add i64 %niter680, 4         ; 2 uses
  %niter680.ncmp.3 = icmp eq i64 %niter680.next.3, %unroll_iter679
  br i1 %niter680.ncmp.3, label %._crit_edge500.loopexit.unr-lcssa, label %.lr.ph499.new, !llvm.loop !992

._crit_edge500.loopexit.unr-lcssa:                ; preds = %.lr.ph499.new
  br i1 %lcmp.mod676.not, label %._crit_edge500, label %.epil.preheader673

.epil.preheader673:                               ; preds = %._crit_edge500.loopexit.unr-lcssa, %.lr.ph499
  %.epil.init = phi i64 [ 2, %.lr.ph499 ], [ %i.ol, %._crit_edge500.loopexit.unr-lcssa ]
  %.0205498.epil.init = phi i64 [ 0, %.lr.ph499 ], [ %i.of, %._crit_edge500.loopexit.unr-lcssa ]
  %.0392497.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph499 ], [ %i.ok, %._crit_edge500.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod678)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader673
  %i.om = phi i64 [ %.epil.init, %.epil.preheader673 ], [ %i.os, %bb.f ] ; 2 uses
  %.0205498.epil = phi i64 [ %.0205498.epil.init, %.epil.preheader673 ], [ %i.om, %bb.f ] ; 2 uses
  %.0392497.epil = phi <2 x double> [ %.0392497.epil.init, %.epil.preheader673 ], [ %i.or, %bb.f ]
  %epil.iter = phi i64 [ 0, %.epil.preheader673 ], [ %epil.iter.next, %bb.f ]
  %i.on = getelementptr [8 x i8], ptr %i.nm, i64 %.0205498.epil
  %i.oo = load <2 x double>, ptr %i.on, align 1, !tbaa !182
  %gep.epil = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0205498.epil
  %i.op = load <2 x double>, ptr %gep.epil, align 1, !tbaa !182
  %i.oq = fmul <2 x double> %i.oo, %i.op
  %i.or = fadd <2 x double> %.0392497.epil, %i.oq ; 2 uses
  %i.os = add nuw nsw i64 %i.om, 2
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter674
  br i1 %epil.iter.cmp.not, label %._crit_edge500, label %bb.f, !llvm.loop !993

._crit_edge500:                                   ; preds = %._crit_edge500.loopexit.unr-lcssa, %bb.f, %.preheader
  %.0392.lcssa = phi <2 x double> [ zeroinitializer, %.preheader ], [ %i.ok, %._crit_edge500.loopexit.unr-lcssa ], [ %i.or, %bb.f ]
  %.0205.lcssa = phi i64 [ 0, %.preheader ], [ %i.jl, %bb.f ], [ %i.jl, %._crit_edge500.loopexit.unr-lcssa ] ; 5 uses
  %i.ot = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %.0392.lcssa) ; 3 uses
  %i.ou = icmp slt i64 %.0205.lcssa, %1
  br i1 %i.ou, label %.lr.ph506, label %._crit_edge507

.lr.ph506:                                        ; preds = %._crit_edge500
  %i.ov = mul nsw i64 %.3511, %.sroa.33.0.copyload
  %invariant.gep509 = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %i.ov ; 5 uses
  %i.ow = load ptr, ptr %3, align 8, !tbaa !394   ; 5 uses
  %i.ox = sub i64 %1, %.0205.lcssa
  %xtraiter683 = and i64 %i.ox, 3                 ; 2 uses
  %lcmp.mod684.not = icmp eq i64 %xtraiter683, 0
  br i1 %lcmp.mod684.not, label %.prol.loopexit682, label %.prol.preheader681

.prol.preheader681:                               ; preds = %.lr.ph506, %.prol.preheader681
  %.0504.prol = phi double [ %i.pc, %.prol.preheader681 ], [ %i.ot, %.lr.ph506 ]
  %.1503.prol = phi i64 [ %i.pd, %.prol.preheader681 ], [ %.0205.lcssa, %.lr.ph506 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader681 ], [ 0, %.lr.ph506 ]
  %gep510.prol = getelementptr [8 x i8], ptr %invariant.gep509, i64 %.1503.prol
  %i.oy = getelementptr [8 x i8], ptr %i.ow, i64 %.1503.prol
  %i.oz = load double, ptr %gep510.prol, align 8, !tbaa !189
  %i.pa = load double, ptr %i.oy, align 8, !tbaa !189
  %i.pb = fmul double %i.oz, %i.pa
  %i.pc = fadd double %.0504.prol, %i.pb          ; 3 uses
  %i.pd = add nuw nsw i64 %.1503.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter683
  br i1 %prol.iter.cmp.not, label %.prol.loopexit682, label %.prol.preheader681, !llvm.loop !994

.prol.loopexit682:                                ; preds = %.prol.preheader681, %.lr.ph506
  %.lcssa647.unr = phi double [ poison, %.lr.ph506 ], [ %i.pc, %.prol.preheader681 ]
  %.0504.unr = phi double [ %i.ot, %.lr.ph506 ], [ %i.pc, %.prol.preheader681 ]
  %.1503.unr = phi i64 [ %.0205.lcssa, %.lr.ph506 ], [ %i.pd, %.prol.preheader681 ]
  %i.pe = sub i64 %.0205.lcssa, %1
  %i.pf = icmp ugt i64 %i.pe, -4
  br i1 %i.pf, label %._crit_edge507, label %.lr.ph506.new

.lr.ph506.new:                                    ; preds = %.prol.loopexit682, %.lr.ph506.new
  %.0504 = phi double [ %i.qc, %.lr.ph506.new ], [ %.0504.unr, %.prol.loopexit682 ]
  %.1503 = phi i64 [ %i.qd, %.lr.ph506.new ], [ %.1503.unr, %.prol.loopexit682 ] ; 6 uses
  %gep510 = getelementptr [8 x i8], ptr %invariant.gep509, i64 %.1503
  %i.pg = getelementptr [8 x i8], ptr %i.ow, i64 %.1503
  %i.ph = load double, ptr %gep510, align 8, !tbaa !189
  %i.pi = load double, ptr %i.pg, align 8, !tbaa !189
  %i.pj = fmul double %i.ph, %i.pi
  %i.pk = fadd double %.0504, %i.pj
  %i.pl = add nuw nsw i64 %.1503, 1               ; 2 uses
  %gep510.1 = getelementptr [8 x i8], ptr %invariant.gep509, i64 %i.pl
  %i.pm = getelementptr [8 x i8], ptr %i.ow, i64 %i.pl
  %i.pn = load double, ptr %gep510.1, align 8, !tbaa !189
  %i.po = load double, ptr %i.pm, align 8, !tbaa !189
  %i.pp = fmul double %i.pn, %i.po
  %i.pq = fadd double %i.pk, %i.pp
  %i.pr = add nuw nsw i64 %.1503, 2               ; 2 uses
  %gep510.2 = getelementptr [8 x i8], ptr %invariant.gep509, i64 %i.pr
  %i.ps = getelementptr [8 x i8], ptr %i.ow, i64 %i.pr
  %i.pt = load double, ptr %gep510.2, align 8, !tbaa !189
  %i.pu = load double, ptr %i.ps, align 8, !tbaa !189
  %i.pv = fmul double %i.pt, %i.pu
  %i.pw = fadd double %i.pq, %i.pv
  %i.px = add nuw nsw i64 %.1503, 3               ; 2 uses
  %gep510.3 = getelementptr [8 x i8], ptr %invariant.gep509, i64 %i.px
  %i.py = getelementptr [8 x i8], ptr %i.ow, i64 %i.px
  %i.pz = load double, ptr %gep510.3, align 8, !tbaa !189
  %i.qa = load double, ptr %i.py, align 8, !tbaa !189
  %i.qb = fmul double %i.pz, %i.qa
  %i.qc = fadd double %i.pw, %i.qb                ; 2 uses
  %i.qd = add nuw nsw i64 %.1503, 4               ; 2 uses
  %exitcond551.not.3 = icmp eq i64 %i.qd, %1
  br i1 %exitcond551.not.3, label %._crit_edge507, label %.lr.ph506.new, !llvm.loop !995

._crit_edge507:                                   ; preds = %.prol.loopexit682, %.lr.ph506.new, %._crit_edge500
  %.0.lcssa = phi double [ %i.ot, %._crit_edge500 ], [ %.lcssa647.unr, %.prol.loopexit682 ], [ %i.qc, %.lr.ph506.new ]
  %i.qe = mul nsw i64 %.3511, %5
  %i.qf = getelementptr inbounds [8 x i8], ptr %4, i64 %i.qe ; 2 uses
  %i.qg = load double, ptr %i.qf, align 8, !tbaa !189
  %i.qh = tail call double @llvm.fmuladd.f64(double %6, double %.0.lcssa, double %i.qg)
  store double %i.qh, ptr %i.qf, align 8, !tbaa !189
  %i.qi = add nuw nsw i64 %.3511, 1               ; 2 uses
  %exitcond552.not = icmp eq i64 %i.qi, %0
  br i1 %exitcond552.not, label %._crit_edge512, label %.preheader, !llvm.loop !996

._crit_edge512:                                   ; preds = %._crit_edge507, %.preheader404
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal37evaluateProductBlockingSizesHeuristicIddLi1ElEEvRT2_S3_S3_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit, !prof !384

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #6
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5Eigen8internal10CacheSizesC2Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #6
  br label %_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #6
  resume { ptr, i32 } %i.d

_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit: ; preds = %bb.a, %bb.b, %bb.d
  %i.e = load i64, ptr @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes, align 8, !tbaa !387 ; 4 uses
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes, i64 8), align 8, !tbaa !386 ; 4 uses
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes, i64 16), align 8, !tbaa !388 ; 3 uses
  %i.h = icmp sgt i64 %3, 1
  br i1 %i.h, label %bb.f, label %bb.o

bb.f:                                             ; preds = %_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit
  %i.i = add nsw i64 %i.e, -128
  %i.j = sdiv i64 %i.i, 64
  %i.k = tail call i64 @llvm.smax.i64(i64 %i.j, i64 8)
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.k, i64 320) ; 2 uses
  %i.m = load i64, ptr %0, align 8, !tbaa !225    ; 2 uses
  %i.n = icmp slt i64 %i.l, %i.m
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = and i64 %i.l, 504                        ; 2 uses
  store i64 %i.o, ptr %0, align 8, !tbaa !225
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.p = phi i64 [ %i.o, %bb.g ], [ %i.m, %bb.f ]
  %i.q = sub nsw i64 %i.f, %i.e
  %i.r = shl i64 %i.p, 5
  %i.s = udiv i64 %i.q, %i.r                      ; 2 uses
  %i.t = load i64, ptr %2, align 8, !tbaa !225    ; 2 uses
  %i.u = add nsw i64 %3, -1                       ; 2 uses
  %i.v = add i64 %i.u, %i.t
  %i.w = sdiv i64 %i.v, %3                        ; 2 uses
  %.not114 = icmp sgt i64 %i.s, %i.w
  br i1 %.not114, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = and i64 %i.s, 576460752303423484
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.y = add nsw i64 %i.w, 3                      ; 2 uses
  %i.z = srem i64 %i.y, 4
  %i.aa = sub nsw i64 %i.y, %i.z
  %.sroa.speculated153 = tail call i64 @llvm.smin.i64(i64 %i.aa, i64 %i.t)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %storemerge184 = phi i64 [ %i.x, %bb.i ], [ %.sroa.speculated153, %bb.j ]
  store i64 %storemerge184, ptr %2, align 8, !tbaa !225
  %i.ab = icmp sgt i64 %i.g, %i.f
  br i1 %i.ab, label %bb.l, label %.critedge116

bb.l:                                             ; preds = %bb.k
  %i.ac = sub nsw i64 %i.g, %i.f
  %i.ad = load i64, ptr %0, align 8, !tbaa !225
  %i.ae = shl i64 %3, 3
  %i.af = mul i64 %i.ae, %i.ad
  %i.ag = udiv i64 %i.ac, %i.af                   ; 3 uses
  %i.ah = load i64, ptr %1, align 8, !tbaa !225   ; 2 uses
  %i.ai = add i64 %i.u, %i.ah
  %i.aj = sdiv i64 %i.ai, %3                      ; 2 uses
  %i.ak = icmp slt i64 %i.ag, %i.aj
  %i.al = icmp samesign ugt i64 %i.ag, 3
  %or.cond = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.am = and i64 %i.ag, 2305843009213693948
  store i64 %i.am, ptr %1, align 8, !tbaa !225
  br label %.critedge116

bb.n:                                             ; preds = %bb.l
  %i.an = add nsw i64 %i.aj, 3                    ; 2 uses
  %i.ao = srem i64 %i.an, 4
  %i.ap = sub nsw i64 %i.an, %i.ao
  %.sroa.speculated149 = tail call i64 @llvm.smin.i64(i64 %i.ap, i64 %i.ah)
  store i64 %.sroa.speculated149, ptr %1, align 8, !tbaa !225
  br label %.critedge116

bb.o:                                             ; preds = %_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit
end_hunk_1
