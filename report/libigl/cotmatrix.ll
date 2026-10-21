Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/cotmatrix?download=true
inline.NumInlined: 11620
inline.NumDeleted: 5654
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 83
loop-unroll.NumUnrolled: 93
begin_hunk_0_@_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIdLi0EiEES3_EEvRT_RKT0_:bb.a
  store double 0.000000e+00, ptr %i.ho, align 8, !tbaa !25
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %i.gu
  store i32 %i.gn, ptr %i.hp, align 4, !tbaa !24
  %i.hq = getelementptr inbounds [8 x i8], ptr %i.hm, i64 %i.gs
  store double %i.gl, ptr %i.hq, align 8, !tbaa !25
  %i.hr = add nsw i64 %.sroa.8.0140, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.hr, %.sink.i64
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1084

_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit63: ; preds = %.lr.ph13.i59, %middle.block, %.critedge.i56, %bb.u, %._crit_edge143
  store i8 1, ptr %2, align 8, !tbaa !72
  %i.hs = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Eigen12SparseMatrixIdLi0EiEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ag:                                            ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit63
  %i.ht = load ptr, ptr %i.di, align 8, !tbaa !77
  call void @free(ptr noundef %i.ht) #26
  %i.hu = load ptr, ptr %i.do, align 8, !tbaa !79
  call void @free(ptr noundef %i.hu) #26
  %i.hv = load ptr, ptr %i.dr, align 8, !tbaa !81 ; 2 uses
  %i.hw = icmp eq ptr %i.hv, null
  br i1 %i.hw, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZdaPv(ptr noundef nonnull %i.hv) #25
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.hx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !80 ; 2 uses
  %i.hz = icmp eq ptr %i.hy, null
  br i1 %i.hz, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_ZdaPv(ptr noundef nonnull %i.hy) #25
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit:         ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ac, %bb.ab, %bb.r, %_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit63
  %lpad.loopexit.split-lp194 = landingpad { ptr, i32 }
          cleanup
  br label %.body85

.body85:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i88, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i72
  %.pn.pn = phi { ptr, i32 } [ %i.eh, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i72 ], [ %i.hh, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i88 ], [ %lpad.loopexit.split-lp194, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #26
  br label %.body

.body:                                            ; preds = %bb.p, %.body85
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body85 ], [ %i.dm, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %.body68

_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit:  ; preds = %.lr.ph13.i, %middle.block189, %.critedge.i, %bb.d, %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit._crit_edge, %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit
  ret void

.body68:                                          ; preds = %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i, %.body
  %.pn47.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body ], [ %i.ct, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i ]
  resume { ptr, i32 } %.pn47.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_7ProductINS_12SparseMatrixIdLi0EiEES2_Li0EEEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.b = load ptr, ptr %1, align 8, !tbaa !1086, !nonnull !93, !align !94
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !78   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1087, !nonnull !93, !align !94
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !33   ; 4 uses
  %i.i = icmp eq i64 %i.d, 0
  %i.j = icmp eq i64 %i.h, 0
  %or.cond.i.i = or i1 %i.i, %i.j
  br i1 %or.cond.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = sdiv i64 9223372036854775807, %i.h
  %i.l = icmp sgt i64 %i.d, %i.k
  br i1 %i.l, label %.invoke, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i: ; preds = %bb.b, %bb.a
  %i.m = mul nsw i64 %i.h, %i.d
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.m, i64 noundef %i.d, i64 noundef %i.h)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_7ProductINS_12SparseMatrixIdLi0EiEES2_Li0EEEEEvRKNS_9EigenBaseIT_EE.exit unwind label %bb.g

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_7ProductINS_12SparseMatrixIdLi0EiEES2_Li0EEEEEvRKNS_9EigenBaseIT_EE.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i
  %i.n = load ptr, ptr %1, align 8, !tbaa !1086, !nonnull !93, !align !94 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !78   ; 6 uses
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !1087, !nonnull !93, !align !94 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !33   ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !19
  %.not.i.i.i = icmp eq i64 %i.u, %i.p
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8
  %.not11.i.i.i = icmp eq i64 %i.w, %i.s
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 %.not11.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_7ProductINS_12SparseMatrixIdLi0EiEES2_Li0EEEEEvRKNS_9EigenBaseIT_EE.exit
  %i.x = icmp eq i64 %i.p, 0
  %i.y = icmp eq i64 %i.s, 0
  %or.cond.i.i.i.i.i = or i1 %i.x, %i.y
  br i1 %or.cond.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = sdiv i64 9223372036854775807, %i.s
  %i.aa = icmp sgt i64 %i.p, %i.z
  br i1 %i.aa, label %.invoke, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i

.invoke:                                          ; preds = %bb.d, %bb.b
  %i.ab = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ab, align 8, !tbaa !65
  invoke void @__cxa_throw(ptr nonnull %i.ab, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
          to label %.cont unwind label %bb.g

.cont:                                            ; preds = %.invoke
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i: ; preds = %bb.d, %bb.c
  %i.ac = mul nsw i64 %i.s, %i.p
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ac, i64 noundef %i.p, i64 noundef %i.s)
          to label %.noexc6 unwind label %bb.g

.noexc6:                                          ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i
  %.pre.i.i.i = load ptr, ptr %1, align 8, !tbaa !1086
  %.pre13.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !1087
  %.pre14.i.i.i = load i64, ptr %i.t, align 8, !tbaa !19
  %.pre15.i.i.i = load i64, ptr %i.v, align 8, !tbaa !33
  br label %bb.e

bb.e:                                             ; preds = %.noexc6, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_7ProductINS_12SparseMatrixIdLi0EiEES2_Li0EEEEEvRKNS_9EigenBaseIT_EE.exit
  %i.ad = phi i64 [ %i.s, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_7ProductINS_12SparseMatrixIdLi0EiEES2_Li0EEEEEvRKNS_9EigenBaseIT_EE.exit ], [ %.pre15.i.i.i, %.noexc6 ]
  %i.ae = phi i64 [ %i.p, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_7ProductINS_12SparseMatrixIdLi0EiEES2_Li0EEEEEvRKNS_9EigenBaseIT_EE.exit ], [ %.pre14.i.i.i, %.noexc6 ]
  %i.af = phi ptr [ %i.q, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_7ProductINS_12SparseMatrixIdLi0EiEES2_Li0EEEEEvRKNS_9EigenBaseIT_EE.exit ], [ %.pre13.i.i.i, %.noexc6 ]
  %i.ag = phi ptr [ %i.n, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_7ProductINS_12SparseMatrixIdLi0EiEES2_Li0EEEEEvRKNS_9EigenBaseIT_EE.exit ], [ %.pre.i.i.i, %.noexc6 ]
  %i.ah = mul nsw i64 %i.ae, %i.ad                ; 2 uses
  %i.ai = icmp slt i64 %i.ah, 1
  br i1 %i.ai, label %_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_12SparseMatrixIdLi0EiEES3_Li0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit.i, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.i.i.i.i

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.i.i.i.i: ; preds = %bb.e
  %i.aj = load ptr, ptr %0, align 8, !tbaa !32
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ah, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aj, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !25
  br label %_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_12SparseMatrixIdLi0EiEES3_Li0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit.i

_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_12SparseMatrixIdLi0EiEES3_Li0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit.i: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.i.i.i.i, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !25
  invoke void @_ZN5Eigen8internal30sparse_time_dense_product_implINS_12SparseMatrixIdLi0EiEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES5_dLi0ELb1EE3runERKS3_RKS5_RS5_RKd(ptr noundef nonnull align 8 dereferenceable(72) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_12SparseMatrixIdLi0EiEES3_Li0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void

bb.g:                                             ; preds = %.invoke, %_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_12SparseMatrixIdLi0EiEES3_Li0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = load ptr, ptr %0, align 8, !tbaa !32
  call void @free(ptr noundef %i.al) #26
  resume { ptr, i32 } %i.ak
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal30sparse_time_dense_product_implINS_12SparseMatrixIdLi0EiEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES5_dLi0ELb1EE3runERKS3_RKS5_RS5_RKd(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !33   ; 3 uses
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge30.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !76   ; 3 uses
  %i.f = icmp sgt i64 %i.e, 0
  %i.g = load ptr, ptr %1, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8              ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8              ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br i1 %i.f, label %.preheader.lr.ph.split, label %._crit_edge30.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.s = icmp eq ptr %i.q, null
  %.pre40.pre = load double, ptr %3, align 8, !tbaa !25 ; 2 uses
  br i1 %i.s, label %.preheader.us, label %.preheader

.preheader.us:                                    ; preds = %.preheader.lr.ph.split, %._crit_edge25.split.us.us
  %.pre40 = phi double [ %.pre4044, %._crit_edge25.split.us.us ], [ %.pre40.pre, %.preheader.lr.ph.split ] ; 2 uses
  %.028.us = phi i64 [ %i.bi, %._crit_edge25.split.us.us ], [ 0, %.preheader.lr.ph.split ] ; 3 uses
  %i.t = mul nsw i64 %i.i, %.028.us
  %invariant.gep26.us = getelementptr [8 x i8], ptr %i.g, i64 %i.t
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.us

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.us: ; preds = %._crit_edge.us.us, %.preheader.us
  %.pre4045 = phi double [ %.pre40, %.preheader.us ], [ %.pre4044, %._crit_edge.us.us ]
  %4 = phi double [ %.pre40, %.preheader.us ], [ %5, %._crit_edge.us.us ] ; 2 uses
  %.01623.us.us = phi i64 [ 0, %.preheader.us ], [ %i.bh, %._crit_edge.us.us ] ; 3 uses
  %gep27.us.us = getelementptr [8 x i8], ptr %invariant.gep26.us, i64 %.01623.us.us
  %i.u = load double, ptr %gep27.us.us, align 8, !tbaa !25
  %i.v = fmul double %4, %i.u                     ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.01623.us.us ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !24   ; 2 uses
  %i.y = getelementptr i8, ptr %i.w, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !24   ; 2 uses
  %i.aa = sext i32 %i.z to i64                    ; 3 uses
  %i.ab = icmp slt i32 %i.x, %i.z
  br i1 %i.ab, label %.lr.ph.us.us, label %._crit_edge.us.us

.lr.ph.us.us:                                     ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.us
  %i.ac = sext i32 %i.x to i64                    ; 6 uses
  %i.ad = load ptr, ptr %2, align 8, !tbaa !32
  %i.ae = load i64, ptr %i.r, align 8, !tbaa !19
  %i.af = mul nsw i64 %i.ae, %.028.us
  %invariant.gep.us.us = getelementptr [8 x i8], ptr %i.ad, i64 %i.af ; 3 uses
  %i.ag = sub nsw i64 %i.aa, %i.ac
  %xtraiter = and i64 %i.ag, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.us.us
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.ac
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !25
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.ac
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !24
  %i.al = sext i32 %i.ak to i64
  %gep.us.us.prol = getelementptr [8 x i8], ptr %invariant.gep.us.us, i64 %i.al ; 2 uses
  %i.am = load double, ptr %gep.us.us.prol, align 8, !tbaa !25
  %i.an = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.v, double %i.am)
  store double %i.an, ptr %gep.us.us.prol, align 8, !tbaa !25
  %i.ao = add nsw i64 %i.ac, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.us.us
  %.sroa.8.022.us.us.unr = phi i64 [ %i.ac, %.lr.ph.us.us ], [ %i.ao, %.prol.loopexit.unr-lcssa ]
  %i.ap = add nsw i64 %i.aa, -1
  %i.aq = icmp eq i64 %i.ap, %i.ac
  br i1 %i.aq, label %._crit_edge.us.us.loopexit, label %.lr.ph.us.us.new

.lr.ph.us.us.new:                                 ; preds = %.prol.loopexit, %.lr.ph.us.us.new
  %.sroa.8.022.us.us = phi i64 [ %i.bg, %.lr.ph.us.us.new ], [ %.sroa.8.022.us.us.unr, %.prol.loopexit ] ; 4 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.sroa.8.022.us.us
  %i.as = load double, ptr %i.ar, align 8, !tbaa !25
  %i.at = getelementptr inbounds [4 x i8], ptr %i.m, i64 %.sroa.8.022.us.us
  %i.au = load i32, ptr %i.at, align 4, !tbaa !24
  %i.av = sext i32 %i.au to i64
  %gep.us.us = getelementptr [8 x i8], ptr %invariant.gep.us.us, i64 %i.av ; 2 uses
  %i.aw = load double, ptr %gep.us.us, align 8, !tbaa !25
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.as, double %i.v, double %i.aw)
  store double %i.ax, ptr %gep.us.us, align 8, !tbaa !25
  %i.ay = add nsw i64 %.sroa.8.022.us.us, 1       ; 2 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.ay
  %i.ba = load double, ptr %i.az, align 8, !tbaa !25
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.ay
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !24
  %i.bd = sext i32 %i.bc to i64
  %gep.us.us.1 = getelementptr [8 x i8], ptr %invariant.gep.us.us, i64 %i.bd ; 2 uses
  %i.be = load double, ptr %gep.us.us.1, align 8, !tbaa !25
  %i.bf = tail call double @llvm.fmuladd.f64(double %i.ba, double %i.v, double %i.be)
  store double %i.bf, ptr %gep.us.us.1, align 8, !tbaa !25
  %i.bg = add nsw i64 %.sroa.8.022.us.us, 2       ; 2 uses
  %exitcond35.not.1 = icmp eq i64 %i.bg, %i.aa
  br i1 %exitcond35.not.1, label %._crit_edge.us.us.loopexit, label %.lr.ph.us.us.new, !llvm.loop !1088

._crit_edge.us.us.loopexit:                       ; preds = %.lr.ph.us.us.new, %.prol.loopexit
  %.pre39 = load double, ptr %3, align 8, !tbaa !25 ; 2 uses
  br label %._crit_edge.us.us

._crit_edge.us.us:                                ; preds = %._crit_edge.us.us.loopexit, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.us
  %.pre4044 = phi double [ %.pre39, %._crit_edge.us.us.loopexit ], [ %.pre4045, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.us ] ; 2 uses
  %5 = phi double [ %.pre39, %._crit_edge.us.us.loopexit ], [ %4, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.us ]
  %i.bh = add nuw nsw i64 %.01623.us.us, 1        ; 2 uses
  %exitcond36.not = icmp eq i64 %i.bh, %i.e
  br i1 %exitcond36.not, label %._crit_edge25.split.us.us, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.us, !llvm.loop !1089

._crit_edge25.split.us.us:                        ; preds = %._crit_edge.us.us
  %i.bi = add nuw nsw i64 %.028.us, 1             ; 2 uses
  %exitcond37.not = icmp eq i64 %i.bi, %i.b
  br i1 %exitcond37.not, label %._crit_edge30.split, label %.preheader.us, !llvm.loop !1090

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge25.split
  %.pre38 = phi double [ %.pre3841, %._crit_edge25.split ], [ %.pre40.pre, %.preheader.lr.ph.split ] ; 2 uses
  %.028 = phi i64 [ %i.bk, %._crit_edge25.split ], [ 0, %.preheader.lr.ph.split ] ; 3 uses
  %i.bj = mul nsw i64 %i.i, %.028
  %invariant.gep26 = getelementptr [8 x i8], ptr %i.g, i64 %i.bj
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

._crit_edge30.split:                              ; preds = %._crit_edge25.split, %._crit_edge25.split.us.us, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge25.split:                              ; preds = %._crit_edge
  %i.bk = add nuw nsw i64 %.028, 1                ; 2 uses
  %exitcond34.not = icmp eq i64 %i.bk, %i.b
  br i1 %exitcond34.not, label %._crit_edge30.split, label %.preheader, !llvm.loop !1090

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit: ; preds = %.preheader, %._crit_edge
  %.pre3842 = phi double [ %.pre38, %.preheader ], [ %.pre3841, %._crit_edge ]
  %6 = phi double [ %.pre38, %.preheader ], [ %7, %._crit_edge ] ; 2 uses
  %.01623 = phi i64 [ 0, %.preheader ], [ %i.by, %._crit_edge ] ; 4 uses
  %gep27 = getelementptr [8 x i8], ptr %invariant.gep26, i64 %.01623
  %i.bl = load double, ptr %gep27, align 8, !tbaa !25
  %i.bm = fmul double %6, %i.bl
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.01623
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !24
  %i.bp = sext i32 %i.bo to i64                   ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.01623
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !24 ; 2 uses
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = add nsw i64 %i.bs, %i.bp
  %i.bu = icmp sgt i32 %i.br, 0
  br i1 %i.bu, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.bv = load ptr, ptr %2, align 8, !tbaa !32
  %i.bw = load i64, ptr %i.r, align 8, !tbaa !19
  %i.bx = mul nsw i64 %i.bw, %.028
  %invariant.gep = getelementptr [8 x i8], ptr %i.bv, i64 %i.bx
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.b
  %.pre = load double, ptr %3, align 8, !tbaa !25 ; 2 uses
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %.pre3841 = phi double [ %.pre, %._crit_edge.loopexit ], [ %.pre3842, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit ] ; 2 uses
  %7 = phi double [ %.pre, %._crit_edge.loopexit ], [ %6, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit ]
  %i.by = add nuw nsw i64 %.01623, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.by, %i.e
  br i1 %exitcond.not, label %._crit_edge25.split, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit, !llvm.loop !1089

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.8.022 = phi i64 [ %i.bp, %.lr.ph ], [ %i.cg, %bb.b ] ; 3 uses
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.sroa.8.022
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !25
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.m, i64 %.sroa.8.022
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !24
  %i.cd = sext i32 %i.cc to i64
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.cd ; 2 uses
  %i.ce = load double, ptr %gep, align 8, !tbaa !25
  %i.cf = tail call double @llvm.fmuladd.f64(double %i.ca, double %i.bm, double %i.ce)
  store double %i.cf, ptr %gep, align 8, !tbaa !25
  %i.cg = add nsw i64 %.sroa.8.022, 1             ; 2 uses
  %i.ch = icmp slt i64 %i.cg, %i.bt
  br i1 %i.ch, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !1088
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #2

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #2

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold noreturn }
attributes #13 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress noinline uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #23 = { noreturn }
attributes #24 = { builtin allocsize(0) }
attributes #25 = { builtin nounwind }
attributes #26 = { nounwind }
attributes #27 = { nounwind allocsize(0) }
attributes #28 = { nounwind memory(none) }

!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{!0, !27}
!1 = distinct !{!1, !27}
!2 = distinct !{!2, !27}
!3 = distinct !{!3, !27}
!4 = distinct !{!4, !27}
!5 = distinct !{!5, !27}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"any pointer", !11, i64 0}
!16 = !{!"p1 double", !15, i64 0}
!17 = !{!"long", !11, i64 0}
!18 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEE", !16, i64 0, !17, i64 8, !17, i64 16}
!19 = !{!18, !17, i64 8}
!20 = !{!"p1 int", !15, i64 0}
!21 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EEE", !20, i64 0, !17, i64 8}
!22 = !{!21, !17, i64 8}
!23 = !{!"double", !11, i64 0}
!24 = !{!12, !12, i64 0}
!25 = !{!23, !23, i64 0}
!26 = !{i64 0, i64 4, !24, i64 4, i64 4, !24, i64 8, i64 8, !25}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!21, !20, i64 0}
!29 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELi3ELi0EEE", !16, i64 0, !17, i64 8}
!30 = !{!29, !17, i64 8}
!31 = !{!29, !16, i64 0}
!32 = !{!18, !16, i64 0}
!33 = !{!18, !17, i64 16}
!34 = !{!"llvm.loop.isvectorized", i32 1}
!35 = !{!"llvm.loop.unroll.runtime.disable"}
!36 = !{!"llvm.loop.unroll.disable"}
!37 = !{!"_ZTSN5Eigen8internal19variable_if_dynamicIlLin1EEE", !17, i64 0}
!38 = !{!37, !17, i64 0}
!39 = !{!"_ZTSN5Eigen8internal18scalar_constant_opIdEE", !23, i64 0}
!40 = !{!39, !23, i64 0}
!41 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EEE", !16, i64 0, !17, i64 8}
!42 = !{!41, !17, i64 8}
!43 = !{!41, !16, i64 0}
!44 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELi1ELin1ELi1EEE", !16, i64 0, !17, i64 8}
!45 = !{!44, !16, i64 0}
!46 = !{!"p1 long", !15, i64 0}
!47 = !{!"_ZTSN5Eigen12DenseStorageIlLin1ELi1ELin1ELi1EEE", !46, i64 0, !17, i64 8}
!48 = !{!47, !46, i64 0}
!49 = !{!"_ZTSN5Eigen8internal30plainobjectbase_evaluator_dataIdLi0EEE", !16, i64 0}
!50 = !{!49, !16, i64 0}
!51 = !{!"_ZTSN5Eigen8internal19variable_if_dynamicIlLi1EEE"}
!52 = !{!"p1 _ZTSN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEE", !15, i64 0}
!53 = !{!"_ZTSN5Eigen8internal19variable_if_dynamicIlLi3EEE"}
!54 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEELin1ELi3ELb0EEELi0EEE", !16, i64 0, !37, i64 8, !53, i64 16}
!55 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEELin1ELi3ELb0EEELi1EEE", !54, i64 0}
!56 = !{!"p1 _ZTSN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEE", !15, i64 0}
!57 = !{!"_ZTSN5Eigen8internal15BlockImpl_denseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEELin1ELi3ELb0ELb1EEE", !55, i64 0, !56, i64 24, !37, i64 32, !37, i64 40, !17, i64 48}
!58 = !{!"_ZTSN5Eigen8internal9evaluatorINS_15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEE", !49, i64 0}
!59 = !{!"_ZTSN5Eigen8internal9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEE", !58, i64 0}
!60 = !{!"p1 _ZTSN5Eigen8internal9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEE", !15, i64 0}
!61 = !{!"p1 _ZTSN5Eigen8internal9evaluatorINS_7ProductINS_9TransposeIKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS_5BlockINS4_IdLin1ELi3ELi0ELin1ELi3EEELin1ELi3ELb0EEELi1EEEEE", !15, i64 0}
!62 = !{!"p1 _ZTSN5Eigen8internal9assign_opIddEE", !15, i64 0}
!63 = !{!"p1 _ZTSN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEE", !15, i64 0}
!64 = !{!"vtable pointer", !10, i64 0}
!65 = !{!64, !64, i64 0}
!66 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EEE", !20, i64 0, !17, i64 8, !17, i64 16}
!67 = !{!66, !20, i64 0}
!68 = !{!66, !17, i64 8}
!69 = !{!66, !17, i64 16}
!70 = !{!"bool", !11, i64 0}
!71 = !{!"_ZTSN5Eigen16SparseMatrixBaseINS_12SparseMatrixIdLi0EiEEEE", !70, i64 0}
!72 = !{!71, !70, i64 0}
!73 = !{!"_ZTSN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEE", !71, i64 0}
!74 = !{!"_ZTSN5Eigen8internal17CompressedStorageIdiEE", !16, i64 0, !20, i64 8, !17, i64 16, !17, i64 24}
!75 = !{!"_ZTSN5Eigen12SparseMatrixIdLi0EiEE", !73, i64 0, !17, i64 8, !17, i64 16, !20, i64 24, !20, i64 32, !74, i64 40}
!76 = !{!75, !17, i64 8}
!77 = !{!75, !20, i64 24}
!78 = !{!75, !17, i64 16}
!79 = !{!75, !20, i64 32}
!80 = !{!74, !20, i64 8}
!81 = !{!74, !16, i64 0}
!82 = !{!"_ZTSN5Eigen16SparseMatrixBaseINS_7ProductINS1_INS_9TransposeINS_12SparseMatrixIdLi0EiEEEES4_Li2EEES4_Li2EEEEE", !70, i64 0}
!83 = !{!82, !70, i64 0}
!84 = !{!"p1 _ZTSN5Eigen12SparseMatrixIdLi0EiEE", !15, i64 0}
!85 = !{!44, !17, i64 8}
!86 = !{!74, !17, i64 16}
!87 = !{!"_ZTSN5Eigen16SparseMatrixBaseINS_9TransposeINS_12SparseMatrixIdLi0EiEEEEEE", !70, i64 0}
!88 = !{!"_ZTSN5Eigen20SparseCompressedBaseINS_9TransposeINS_12SparseMatrixIdLi0EiEEEEEE", !87, i64 0}
!89 = !{!"_ZTSN5Eigen8internal19SparseTransposeImplINS_12SparseMatrixIdLi0EiEELi1024EEE", !88, i64 0}
!90 = !{!"_ZTSN5Eigen13TransposeImplINS_12SparseMatrixIdLi0EiEENS_6SparseEEE", !89, i64 0}
!91 = !{!"_ZTSN5Eigen9TransposeINS_12SparseMatrixIdLi0EiEEEE", !90, i64 0, !84, i64 8}
!92 = !{!91, !84, i64 8}
!93 = !{}
!94 = !{i64 8}
!95 = !{!"_ZTSN5Eigen11ProductImplINS_7ProductINS_9TransposeINS_12SparseMatrixIdLi0EiEEEES4_Li2EEES4_Li2ENS_6SparseEEE", !82, i64 0}
!96 = !{!"_ZTSN5Eigen16SparseMatrixBaseINS_7ProductINS_9TransposeINS_12SparseMatrixIdLi0EiEEEES4_Li2EEEEE", !70, i64 0}
!97 = !{!"_ZTSN5Eigen11ProductImplINS_9TransposeINS_12SparseMatrixIdLi0EiEEEES3_Li2ENS_6SparseEEE", !96, i64 0}
!98 = !{!"_ZTSN5Eigen7ProductINS_9TransposeINS_12SparseMatrixIdLi0EiEEEES3_Li2EEE", !97, i64 0, !91, i64 8, !84, i64 24}
!99 = !{!"_ZTSN5Eigen7ProductINS0_INS_9TransposeINS_12SparseMatrixIdLi0EiEEEES3_Li2EEES3_Li2EEE", !95, i64 0, !98, i64 8, !84, i64 40}
!100 = !{!99, !84, i64 40}
!101 = !{!17, !17, i64 0}
!102 = !{!20, !20, i64 0}
!103 = !{!15, !15, i64 0}
!104 = !{i8 0, i8 2}
!105 = !{!47, !17, i64 8}
!106 = !{!"_ZTSN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEE", !18, i64 0}
!107 = !{!"_ZTSN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEE", !106, i64 0}
!108 = !{!"_ZTSN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEE", !41, i64 0}
!109 = !{!"_ZTSN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEE", !108, i64 0}
!110 = !{!"_ZTSN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEE", !21, i64 0}
!111 = !{!"_ZTSN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEE", !110, i64 0}
!112 = !{!"_ZTSN5Eigen17PermutationMatrixILin1ELin1EiEE", !111, i64 0}
!113 = !{!"_ZTSN5Eigen15PlainObjectBaseINS_6MatrixIlLi1ELin1ELi1ELi1ELin1EEEEE", !47, i64 0}
!114 = !{!"_ZTSN5Eigen6MatrixIlLi1ELin1ELi1ELi1ELin1EEE", !113, i64 0}
!115 = !{!"_ZTSN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEE", !44, i64 0}
!116 = !{!"_ZTSN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEE", !115, i64 0}
!117 = !{!"_ZTSN5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEE", !107, i64 0, !109, i64 24, !112, i64 40, !114, i64 56, !116, i64 72, !116, i64 88, !116, i64 104, !70, i64 120, !70, i64 121, !23, i64 128, !23, i64 136, !17, i64 144, !17, i64 152}
!118 = !{!117, !70, i64 120}
end_hunk_0
