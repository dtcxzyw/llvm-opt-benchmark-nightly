inline.NumInlined: 12514
inline.NumDeleted: 4719
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 222
begin_hunk_0_@_ZN5Eigen8SparseLUINS_12SparseMatrixIdLi0EiEENS_14COLAMDOrderingIiEEE9factorizeERKS2_:bb.a
  call void @free(ptr noundef %i.aeu) #33
  br label %.body213

.body213:                                         ; preds = %bb.al, %.body225
  %.pn140.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn140.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body225 ], [ %i.mb, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.aev = load ptr, ptr %6, align 8, !tbaa !78
  call void @free(ptr noundef %i.aev) #33
  br label %.body204

.body204:                                         ; preds = %bb.ah, %.body213
  %.pn140.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn140.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body213 ], [ %i.lq, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.aew = load ptr, ptr %5, align 8, !tbaa !78
  call void @free(ptr noundef %i.aew) #33
  br label %.body195

.body195:                                         ; preds = %bb.ae, %.body204
  %.pn140.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn140.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body204 ], [ %i.lg, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  %i.aex = load ptr, ptr %4, align 8, !tbaa !78
  call void @free(ptr noundef %i.aex) #33
  br label %.body183

.body183:                                         ; preds = %bb.ab, %.body195
  %.pn140.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn140.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body195 ], [ %i.kx, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.aey = load ptr, ptr %3, align 8, !tbaa !78
  call void @free(ptr noundef %i.aey) #33
  br label %.body

.body:                                            ; preds = %bb.aa, %.body183
  %.pn140.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn140.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body183 ], [ %i.kp, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.aez = load ptr, ptr %2, align 8, !tbaa !78
  call void @free(ptr noundef %i.aez) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal13treePostorderINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvNT_6ScalarERS4_S6_(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add nsw i32 %0, 1
  %i.b = sext i32 %i.a to i64                     ; 5 uses
  %or.cond = icmp slt i32 %0, 0                   ; 2 uses
  br i1 %or.cond, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEl.exit, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i: ; preds = %bb.a
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 2 uses
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #35 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i

bb.b:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i
  %i.f = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.f, align 8, !tbaa !113
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
          to label %.noexc23.a unwind label %bb.i

.noexc23.a:                                       ; preds = %bb.b
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i
  %calloc = tail call ptr @calloc(i64 1, i64 %i.c) ; 2 uses
  %i.g = icmp eq ptr %calloc, null
  br i1 %i.g, label %bb.c, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEl.exit

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !113
  invoke void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
          to label %.noexc25 unwind label %bb.i

.noexc25:                                         ; preds = %bb.c
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEl.exit: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i, %bb.a
  %.sroa.0.158 = phi ptr [ null, %bb.a ], [ %calloc, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i ] ; 7 uses
  %.sroa.041.15157 = phi ptr [ null, %bb.a ], [ %i.d, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i ] ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !103
  %.not.i.i.i26 = icmp eq i64 %i.j, %i.b
  br i1 %.not.i.i.i26, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit.i29, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEl.exit
  %i.k = load ptr, ptr %2, align 8, !tbaa !78
  tail call void @free(ptr noundef %i.k) #33
  %i.l = icmp sgt i32 %0, -1
  br i1 %i.l, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i32, label %.sink.split.i.i.i27

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i32: ; preds = %bb.d
  %i.m = shl nuw nsw i64 %i.b, 2
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #35 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.e, label %.sink.split.i.i.i27

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i32
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !113
  invoke void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
          to label %.noexc34 unwind label %bb.i

.noexc34:                                         ; preds = %bb.e
  unreachable

.sink.split.i.i.i27:                              ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i32, %bb.d
  %.sink.i.i.i28 = phi ptr [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i32 ], [ null, %bb.d ]
  store ptr %.sink.i.i.i28, ptr %2, align 8, !tbaa !78
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit.i29

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit.i29: ; preds = %.sink.split.i.i.i27, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEl.exit
  store i64 %i.b, ptr %i.i, align 8, !tbaa !103
  br i1 %or.cond, label %.lr.ph39.i, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit

_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit.i29
  %i.q = load ptr, ptr %2, align 8, !tbaa !78
  %.idx.i.i.i.i.i.i.i.i.i.i.i31 = shl nuw nsw i64 %i.b, 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.q, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i31, i1 false), !tbaa !104
  tail call void @llvm.memset.p0.i64(ptr align 4 %.sroa.041.15157, i8 -1, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i31, i1 false), !tbaa !104
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %_ZN5Eigen8internal8nr_etdfsINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvNT_6ScalarERS4_S6_S6_S6_S5_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit
  %i.r = load ptr, ptr %1, align 8, !tbaa !78     ; 3 uses
  %i.s = zext nneg i32 %0 to i64                  ; 3 uses
  %xtraiter = and i64 %i.s, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %indvars.iv.next.prol = add nsw i64 %i.s, -1    ; 4 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next.prol
  %i.u = load i32, ptr %i.t, align 4, !tbaa !104
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %.sroa.041.15157, i64 %i.v ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !104
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.158, i64 %indvars.iv.next.prol
  store i32 %i.x, ptr %i.y, align 4, !tbaa !104
  %i.z = trunc nuw nsw i64 %indvars.iv.next.prol to i32
  store i32 %i.z, ptr %i.w, align 4, !tbaa !104
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.s, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.aa = icmp eq i32 %0, 1
  br i1 %i.aa, label %.lr.ph39.i, label %.lr.ph.new

.lr.ph39.i:                                       ; preds = %.prol.loopexit, %.lr.ph.new, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit.i29
  %i.ab = load ptr, ptr %2, align 8               ; 2 uses
  %i.ac = load ptr, ptr %1, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %.lr.ph39.i
  %.02237.i = phi i32 [ 0, %.lr.ph39.i ], [ %.2.i, %bb.h ] ; 4 uses
  %.02336.i = phi i32 [ %0, %.lr.ph39.i ], [ %.225.i, %bb.h ] ; 2 uses
  %i.ad = sext i32 %.02336.i to i64               ; 3 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %.sroa.041.15157, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !104 ; 2 uses
  %i.ag = icmp eq i32 %i.af, -1
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.ad
  store i32 %.02237.i, ptr %i.ah, align 4, !tbaa !104
  %.0.in28.i = getelementptr inbounds [4 x i8], ptr %.sroa.0.158, i64 %i.ad
  %.029.i = load i32, ptr %.0.in28.i, align 4, !tbaa !104 ; 2 uses
  %.130.i = add nsw i32 %.02237.i, 1              ; 2 uses
  %i.ai = icmp eq i32 %.029.i, -1
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %.132.i = phi i32 [ %.1.i, %.lr.ph.i ], [ %.130.i, %bb.g ] ; 3 uses
  %.12431.i = phi i32 [ %i.al, %.lr.ph.i ], [ %.02336.i, %bb.g ]
  %i.aj = sext i32 %.12431.i to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !104 ; 2 uses
  %i.am = sext i32 %i.al to i64                   ; 2 uses
  %i.an = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.am
  store i32 %.132.i, ptr %i.an, align 4, !tbaa !104
  %.0.in.i = getelementptr inbounds [4 x i8], ptr %.sroa.0.158, i64 %i.am
  %.0.i = load i32, ptr %.0.in.i, align 4, !tbaa !104 ; 2 uses
  %.1.i = add nsw i32 %.132.i, 1                  ; 2 uses
  %i.ao = icmp eq i32 %.0.i, -1
  br i1 %i.ao, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !733

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.g
  %.1.in.lcssa.i = phi i32 [ %.02237.i, %bb.g ], [ %.132.i, %.lr.ph.i ]
  %.0.lcssa.i = phi i32 [ %.029.i, %bb.g ], [ %.0.i, %.lr.ph.i ]
  %.1.lcssa.i = phi i32 [ %.130.i, %bb.g ], [ %.1.i, %.lr.ph.i ]
  %i.ap = icmp eq i32 %.1.in.lcssa.i, %0
  br i1 %i.ap, label %_ZN5Eigen8internal8nr_etdfsINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvNT_6ScalarERS4_S6_S6_S6_S5_.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i, %bb.f
  %.225.i = phi i32 [ %.0.lcssa.i, %._crit_edge.i ], [ %i.af, %bb.f ]
  %.2.i = phi i32 [ %.1.lcssa.i, %._crit_edge.i ], [ %.02237.i, %bb.f ] ; 2 uses
  %.not.i = icmp eq i32 %.2.i, %0
  br i1 %.not.i, label %_ZN5Eigen8internal8nr_etdfsINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvNT_6ScalarERS4_S6_S6_S6_S5_.exit, label %bb.f, !llvm.loop !734

bb.i:                                             ; preds = %bb.e, %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ null, %bb.c ], [ %.sroa.0.158, %bb.e ], [ null, %bb.b ]
  %.sroa.041.0 = phi ptr [ %i.d, %bb.c ], [ %.sroa.041.15157, %bb.e ], [ null, %bb.b ]
  %i.aq = landingpad { ptr, i32 }
          cleanup
  tail call void @free(ptr noundef %.sroa.0.0) #33
  tail call void @free(ptr noundef %.sroa.041.0) #33
  resume { ptr, i32 } %i.aq

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !104
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %.sroa.041.15157, i64 %i.at ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !104
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.158, i64 %indvars.iv.next
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !104
  %i.ax = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.ax, ptr %i.au, align 4, !tbaa !104
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 4 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next.1
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !104
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %.sroa.041.15157, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !104
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.158, i64 %indvars.iv.next.1
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !104
  %i.be = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  store i32 %i.be, ptr %i.bb, align 4, !tbaa !104
  %i.bf = icmp sgt i64 %indvars.iv, 2
  br i1 %i.bf, label %.lr.ph.new, label %.lr.ph39.i, !llvm.loop !735

_ZN5Eigen8internal8nr_etdfsINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvNT_6ScalarERS4_S6_S6_S6_S5_.exit: ; preds = %bb.h, %._crit_edge.i, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit
  tail call void @free(ptr noundef %.sroa.0.158) #33
  tail call void @free(ptr noundef %.sroa.041.15157) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN5Eigen8internal12SparseLUImplIdiE7memInitEllllllRNS0_13LU_GlobalLU_tINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEENS4_IdLin1ELi1ELi0ELin1ELi1EEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(184) %7) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 176 ; 7 uses
  store i64 0, ptr %i.a, align 8, !tbaa !84
  %i.b = add nsw i64 %3, 1                        ; 2 uses
  %i.c = mul nsw i64 %5, %i.b
  %i.d = sdiv i64 %i.c, %2
  %.sroa.speculated81 = tail call i64 @llvm.smin.i64(i64 %1, i64 %i.d)
  %i.e = mul nsw i64 %.sroa.speculated81, %2      ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 104 ; 2 uses
  store i64 %i.e, ptr %i.f, align 8, !tbaa !736
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 160 ; 5 uses
  store i64 %i.e, ptr %i.g, align 8, !tbaa !737
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %5, i64 4)
  %i.h = mul nsw i64 %.sroa.speculated, %i.b
  %i.i = sdiv i64 %i.h, 4                         ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 4 uses
  store i64 %i.i, ptr %i.j, align 8, !tbaa !738
  %i.k = icmp eq i64 %4, -1
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = mul i64 %6, 3
  %i.m = add i64 %i.l, 8
  %i.n = mul i64 %i.m, %1
  %i.o = mul i64 %2, 40
  %i.p = add i64 %i.n, %i.i
  %Mul1 = shl i64 %i.p, 3
  %reass.mul = mul i64 %i.e, 24
  %i.q = add i64 %2, 40
  %i.r = add i64 %i.q, %i.o
  %i.s = add i64 %i.r, %reass.mul
  %i.t = add i64 %i.s, %Mul1
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.u = add nsw i64 %2, 1                        ; 15 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !103
  %.not.i.i = icmp eq i64 %i.u, %i.w
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %7, align 8, !tbaa !78
  tail call void @free(ptr noundef %i.x) #33
  %i.y = icmp sgt i64 %2, -1
  br i1 %i.y, label %bb.e, label %.sink.split.i.i

bb.e:                                             ; preds = %bb.d
  %i.z = icmp samesign ugt i64 %2, 4611686018427387902
  br i1 %i.z, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.aa = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.aa, align 8, !tbaa !113
  tail call void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i: ; preds = %bb.e
  %i.ab = shl nuw i64 %i.u, 2
  %i.ac = tail call noalias ptr @malloc(i64 noundef %i.ab) #35 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.g, label %.sink.split.i.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i
  %i.ae = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ae, align 8, !tbaa !113
  tail call void @__cxa_throw(ptr nonnull %i.ae, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i, %bb.d
  %.sink.i.i = phi ptr [ %i.ac, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i ], [ null, %bb.d ]
  store ptr %.sink.i.i, ptr %7, align 8, !tbaa !78
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit: ; preds = %bb.c, %.sink.split.i.i
  store i64 %i.u, ptr %i.v, align 8, !tbaa !103
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !103
  %.not.i.i59 = icmp eq i64 %i.u, %i.ah
  br i1 %.not.i.i59, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit63, label %bb.h

bb.h:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !78
  tail call void @free(ptr noundef %i.ai) #33
  %i.aj = icmp sgt i64 %2, -1
  br i1 %i.aj, label %bb.i, label %.sink.split.i.i60

bb.i:                                             ; preds = %bb.h
  %i.ak = icmp samesign ugt i64 %2, 4611686018427387902
  br i1 %i.ak, label %bb.j, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i62

bb.j:                                             ; preds = %bb.i
  %i.al = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.al, align 8, !tbaa !113
  tail call void @__cxa_throw(ptr nonnull %i.al, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i62: ; preds = %bb.i
  %i.am = shl nuw i64 %i.u, 2
  %i.an = tail call noalias ptr @malloc(i64 noundef %i.am) #35 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.k, label %.sink.split.i.i60

bb.k:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i62
  %i.ap = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ap, align 8, !tbaa !113
  tail call void @__cxa_throw(ptr nonnull %i.ap, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
  unreachable

.sink.split.i.i60:                                ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i62, %bb.h
  %.sink.i.i61 = phi ptr [ %i.an, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i62 ], [ null, %bb.h ]
  store ptr %.sink.i.i61, ptr %i.af, align 8, !tbaa !78
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit63

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit63: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, %.sink.split.i.i60
  store i64 %i.u, ptr %i.ag, align 8, !tbaa !103
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 88 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !103
  %.not.i.i64 = icmp eq i64 %i.u, %i.as
  br i1 %.not.i.i64, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit68, label %bb.l

bb.l:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit63
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !78
  tail call void @free(ptr noundef %i.at) #33
  %i.au = icmp sgt i64 %2, -1
  br i1 %i.au, label %bb.m, label %.sink.split.i.i65

bb.m:                                             ; preds = %bb.l
  %i.av = icmp samesign ugt i64 %2, 4611686018427387902
  br i1 %i.av, label %bb.n, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i67

bb.n:                                             ; preds = %bb.m
  %i.aw = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.aw, align 8, !tbaa !113
  tail call void @__cxa_throw(ptr nonnull %i.aw, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i67: ; preds = %bb.m
  %i.ax = shl nuw i64 %i.u, 2
  %i.ay = tail call noalias ptr @malloc(i64 noundef %i.ax) #35 ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.o, label %.sink.split.i.i65

bb.o:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i67
  %i.ba = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ba, align 8, !tbaa !113
  tail call void @__cxa_throw(ptr nonnull %i.ba, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
  unreachable

.sink.split.i.i65:                                ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i67, %bb.l
  %.sink.i.i66 = phi ptr [ %i.ay, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i67 ], [ null, %bb.l ]
  store ptr %.sink.i.i66, ptr %i.aq, align 8, !tbaa !78
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit68

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit68: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit63, %.sink.split.i.i65
  store i64 %i.u, ptr %i.ar, align 8, !tbaa !103
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !103
end_hunk_0
