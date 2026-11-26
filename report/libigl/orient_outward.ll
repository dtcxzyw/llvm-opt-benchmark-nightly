Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/orient_outward?download=true
inline.NumInlined: 1057
inline.NumDeleted: 612
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN3igl14orient_outwardIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEES4_S5_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERNS1_15PlainObjectBaseIT2_EERNSJ_IT3_EE:bb.a
  %index326 = phi i64 [ 0, %vector.ph321 ], [ %index.next331, %vector.body325 ] ; 2 uses
  %vec.phi327 = phi <4 x i32> [ %broadcast.splat324, %vector.ph321 ], [ %i.az, %vector.body325 ]
  %vec.phi328 = phi <4 x i32> [ %broadcast.splat324, %vector.ph321 ], [ %i.ba, %vector.body325 ]
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index326 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 20
  %wide.load329 = load <4 x i32>, ptr %i.ax, align 4, !tbaa !21
  %wide.load330 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !21
  %i.az = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi327, <4 x i32> %wide.load329) ; 2 uses
  %i.ba = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi328, <4 x i32> %wide.load330) ; 2 uses
  %index.next331 = add nuw i64 %index326, 8       ; 2 uses
  %i.bb = icmp eq i64 %index.next331, %n.vec322
  br i1 %i.bb, label %middle.block332, label %vector.body325, !llvm.loop !46

middle.block332:                                  ; preds = %vector.body325
  %rdx.minmax333 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.az, <4 x i32> %i.ba)
  %i.bc = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax333) ; 2 uses
  %cmp.n334 = icmp eq i64 %i.au, %n.vec322
  br i1 %cmp.n334, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit, label %.lr.ph89.i.i.i.i.preheader404

.lr.ph89.i.i.i.i.preheader404:                    ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block332
  %.087.i.i.i.i.ph = phi i64 [ 1, %.lr.ph89.i.i.i.i.preheader ], [ %i.av, %middle.block332 ]
  %.286.i.i.i.i.ph = phi i32 [ %i.as, %.lr.ph89.i.i.i.i.preheader ], [ %i.bc, %middle.block332 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader404, %.lr.ph89.i.i.i.i
  %.087.i.i.i.i = phi i64 [ %i.bg, %.lr.ph89.i.i.i.i ], [ %.087.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader404 ] ; 2 uses
  %.286.i.i.i.i = phi i32 [ %i.bf, %.lr.ph89.i.i.i.i ], [ %.286.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader404 ]
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.087.i.i.i.i
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !21
  %i.bf = tail call noundef i32 @llvm.smax.i32(i32 %.286.i.i.i.i, i32 %i.be) ; 2 uses
  %i.bg = add nuw nsw i64 %.087.i.i.i.i, 1        ; 2 uses
  %exitcond96.not.i.i.i.i = icmp eq i64 %i.bg, %i.f
  br i1 %exitcond96.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit, label %.lr.ph89.i.i.i.i, !llvm.loop !47

_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit: ; preds = %.lr.ph84.i.i.i.i, %.lr.ph89.i.i.i.i, %middle.block, %middle.block332, %bb.e, %bb.f
  %.3.i.i.i.i = phi i32 [ %i.bf, %.lr.ph89.i.i.i.i ], [ %i.as, %bb.f ], [ %i.ad, %bb.e ], [ %i.bc, %middle.block332 ], [ %i.an, %middle.block ], [ %i.aq, %.lr.ph84.i.i.i.i ] ; 7 uses
  %i.bh = add nsw i32 %.3.i.i.i.i, 1              ; 6 uses
  %i.bi = sext i32 %i.bh to i64                   ; 23 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !18
  %.not.i.i = icmp eq i64 %i.bk, %i.bi
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit
  %i.bl = load ptr, ptr %4, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.bl) #15
  %i.bm = icmp sgt i32 %.3.i.i.i.i, -1
  br i1 %i.bm, label %bb.h, label %.sink.split.i.i

bb.h:                                             ; preds = %bb.g
  %i.bn = shl nuw nsw i64 %i.bi, 2
  %i.bo = tail call noalias ptr @malloc(i64 noundef %i.bn) #16 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.i, label %.sink.split.i.i

bb.i:                                             ; preds = %bb.h
  %i.bq = tail call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bq, align 8, !tbaa !25
  tail call void @__cxa_throw(ptr nonnull %i.bq, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
  unreachable

.sink.split.i.i:                                  ; preds = %bb.h, %bb.g
  %.sink.i.i = phi ptr [ %i.bo, %bb.h ], [ null, %bb.g ]
  store ptr %.sink.i.i, ptr %4, align 8, !tbaa !17
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit, %.sink.split.i.i
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !18
  %.not = icmp eq ptr %3, %1
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  %i.br = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEaSIS2_EERS2_RKNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(1) %1) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %.not.i.i.i.i102 = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i.i.i102, label %.thread, label %bb.l

.thread:                                          ; preds = %bb.k
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %i.bi, ptr %i.bs, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  br label %bb.t

bb.l:                                             ; preds = %bb.k
  %i.bt = icmp sgt i32 %.3.i.i.i.i, -1
  br i1 %i.bt, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bu = shl nuw nsw i64 %i.bi, 3                ; 2 uses
  %i.bv = tail call noalias ptr @malloc(i64 noundef %i.bu) #16 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bx = tail call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bx, align 8, !tbaa !25
  invoke void @__cxa_throw(ptr nonnull %i.bx, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.noexc.i unwind label %bb.o

.noexc.i:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.by = landingpad { ptr, i32 }
          cleanup
  %i.bz = load ptr, ptr %8, align 8, !tbaa !29
  tail call void @free(ptr noundef %i.bz) #15
  br label %.body

bb.p:                                             ; preds = %bb.l
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %i.bi, ptr %i.ca, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  br label %.sink.split.i.i.i.i104

bb.q:                                             ; preds = %bb.m
  store ptr %i.bv, ptr %8, align 8, !tbaa !29
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %i.bi, ptr %i.cb, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %i.cc = tail call noalias ptr @malloc(i64 noundef %i.bu) #16 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.r, label %.sink.split.i.i.i.i104

bb.r:                                             ; preds = %bb.q
  %i.ce = tail call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ce, align 8, !tbaa !25
  invoke void @__cxa_throw(ptr nonnull %i.ce, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.noexc.i106 unwind label %bb.s

.noexc.i106:                                      ; preds = %bb.r
  unreachable

.sink.split.i.i.i.i104:                           ; preds = %bb.p, %bb.q
  %i.cf = phi ptr [ %i.cb, %bb.q ], [ %i.ca, %bb.p ]
  %.sink.i.i.i.i105 = phi ptr [ %i.cc, %bb.q ], [ null, %bb.p ]
  %i.cg = ptrtoint ptr %.sink.i.i.i.i105 to i64
  br label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ch = landingpad { ptr, i32 }
          cleanup
  %i.ci = load ptr, ptr %9, align 8, !tbaa !29
  tail call void @free(ptr noundef %i.ci) #15
  br label %.body107

bb.t:                                             ; preds = %.sink.split.i.i.i.i104, %.thread
  %storemerge = phi i64 [ 0, %.thread ], [ %i.cg, %.sink.split.i.i.i.i104 ]
  %i.cj = phi ptr [ %i.bs, %.thread ], [ %i.cf, %.sink.split.i.i.i.i104 ]
  store i64 %storemerge, ptr %9, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 %i.bi, ptr %i.ck, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  store <2 x double> splat (double f0x3FE279A74590331D), ptr %10, align 16, !tbaa !19, !alias.scope !77
  %i.cl = getelementptr inbounds nuw i8, ptr %10, i64 16
  store double f0x3FE279A74590331D, ptr %i.cl, align 16, !tbaa !31, !alias.scope !77
  invoke void @_ZN3igl16per_face_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi3ELi1ELi0ELi3ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERNS1_15PlainObjectBaseIT2_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  invoke void @_ZN3igl10barycenterIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.v unwind label %bb.af

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i unwind label %bb.af

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i: ; preds = %bb.v
  %or.cond = icmp sgt i32 %.3.i.i.i.i, -1
  br i1 %or.cond, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantEllRKd.exit

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i
  %i.cm = mul nuw nsw i64 %i.bi, 24
  %calloc = call ptr @calloc(i64 1, i64 %i.cm)    ; 2 uses
  %i.cn = icmp eq ptr %calloc, null
  br i1 %i.cn, label %bb.w, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantEllRKd.exit

bb.w:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  %i.co = call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.co, align 8, !tbaa !25
  invoke void @__cxa_throw(ptr nonnull %i.co, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.noexc130 unwind label %bb.af

.noexc130:                                        ; preds = %bb.w
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantEllRKd.exit: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i
  %.sroa.0.3234 = phi ptr [ null, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i ], [ %calloc, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i ] ; 11 uses
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %9, i64 noundef %i.bi, i64 noundef 1)
          to label %.noexc114 unwind label %bb.y

.noexc114:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantEllRKd.exit
  %i.cp = load i64, ptr %i.ck, align 8, !tbaa !28 ; 2 uses
  %i.cq = icmp slt i64 %i.cp, 1
  br i1 %i.cq, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantEllRKd.exit, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantEllRKd.exit.loopexit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantEllRKd.exit.loopexit: ; preds = %.noexc114
  %i.cr = load ptr, ptr %9, align 8, !tbaa !29
  %.idx.i.i.i.i.i.i.i.i.i.i.i110 = shl nuw nsw i64 %i.cp, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cr, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i110, i1 false), !tbaa !31
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantEllRKd.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantEllRKd.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantEllRKd.exit.loopexit, %.noexc114
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 noundef %i.bi, i64 noundef 1)
          to label %.noexc119 unwind label %bb.y

.noexc119:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantEllRKd.exit
  %i.cs = load i64, ptr %i.cj, align 8, !tbaa !28 ; 2 uses
  %i.ct = icmp slt i64 %i.cs, 1
  br i1 %i.ct, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantEllRKd.exit120, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantEllRKd.exit120.loopexit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantEllRKd.exit120.loopexit: ; preds = %.noexc119
  %i.cu = load ptr, ptr %8, align 8, !tbaa !29
  %.idx.i.i.i.i.i.i.i.i.i.i.i115 = shl nuw nsw i64 %i.cs, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cu, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i115, i1 false), !tbaa !31
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantEllRKd.exit120

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantEllRKd.exit120: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantEllRKd.exit120.loopexit, %.noexc119
  %i.cv = icmp sgt i32 %i.c, 0                    ; 3 uses
  br i1 %i.cv, label %.lr.ph, label %.preheader245

.lr.ph:                                           ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantEllRKd.exit120
  %i.cw = load ptr, ptr %7, align 8, !tbaa !29
  %i.cx = load ptr, ptr %6, align 8, !tbaa !33, !noalias !78
  %i.cy = load ptr, ptr %2, align 8, !tbaa !17
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !34 ; 2 uses
  %i.db = load ptr, ptr %8, align 8, !tbaa !29
  %wide.trip.count = and i64 %i.b, 2147483647
  %.idx = shl nsw i64 %i.bi, 4
  %.idx305 = shl nsw i64 %i.da, 4
  br label %.lr.ph.i.i.i.i.i.i

.preheader245:                                    ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantEllRKd.exit120
  %.not239252 = icmp slt i32 %.3.i.i.i.i, 0       ; 2 uses
  br i1 %.not239252, label %.preheader244, label %.lr.ph254

.lr.ph254:                                        ; preds = %.preheader245
  %i.dc = load ptr, ptr %8, align 8, !tbaa !29    ; 2 uses
  %wide.trip.count271 = zext nneg i32 %i.bh to i64 ; 4 uses
  %.idx306 = shl nuw nsw i64 %i.bi, 4             ; 3 uses
  %min.iters.check349 = icmp ult i32 %i.bh, 2
  br i1 %min.iters.check349, label %.lr.ph.i.i.i.i.i.i121.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph254
  %i.dd = shl nuw nsw i64 %wide.trip.count271, 3  ; 2 uses
  %i.de = getelementptr i8, ptr %.sroa.0.3234, i64 %i.dd
  %i.df = getelementptr i8, ptr %.sroa.0.3234, i64 %.idx306
  %12 = zext nneg i32 %.3.i.i.i.i to i64
  %i.dg = shl nuw nsw i64 %12, 4
  %i.dh = getelementptr i8, ptr %.sroa.0.3234, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 %i.dd
  %i.dj = getelementptr i8, ptr %i.di, i64 16
  %bound0353 = icmp ult ptr %.sroa.0.3234, %i.dj
  %bound1354 = icmp ult ptr %i.df, %i.de
  %found.conflict355 = and i1 %bound0353, %bound1354
  br i1 %found.conflict355, label %.lr.ph.i.i.i.i.i.i121.preheader, label %vector.ph357

vector.ph357:                                     ; preds = %vector.memcheck
  %n.vec358 = and i64 %wide.trip.count271, 2147483646 ; 3 uses
  br label %vector.body359

vector.body359:                                   ; preds = %vector.body359, %vector.ph357
  %index360 = phi i64 [ 0, %vector.ph357 ], [ %index.next365, %vector.body359 ] ; 3 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %index360
  %wide.load361 = load <2 x double>, ptr %i.dk, align 8, !tbaa !31 ; 3 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.3234, i64 %index360 ; 4 uses
  %wide.load362 = load <2 x double>, ptr %i.dl, align 8, !tbaa !31, !alias.scope !79, !noalias !80
  %i.dm = fdiv <2 x double> %wide.load362, %wide.load361
  store <2 x double> %i.dm, ptr %i.dl, align 8, !tbaa !31, !alias.scope !79, !noalias !80
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.bi ; 2 uses
  %wide.load363 = load <2 x double>, ptr %i.dn, align 8, !tbaa !31, !alias.scope !81
  %i.do = fdiv <2 x double> %wide.load363, %wide.load361
  store <2 x double> %i.do, ptr %i.dn, align 8, !tbaa !31, !alias.scope !81
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.idx306 ; 2 uses
  %wide.load364 = load <2 x double>, ptr %i.dp, align 8, !tbaa !31, !alias.scope !80
  %i.dq = fdiv <2 x double> %wide.load364, %wide.load361
  store <2 x double> %i.dq, ptr %i.dp, align 8, !tbaa !31, !alias.scope !80
  %index.next365 = add nuw i64 %index360, 2       ; 2 uses
  %i.dr = icmp eq i64 %index.next365, %n.vec358
  br i1 %i.dr, label %middle.block366, label %vector.body359, !llvm.loop !56

middle.block366:                                  ; preds = %vector.body359
  %cmp.n367 = icmp eq i64 %n.vec358, %wide.trip.count271
  br i1 %cmp.n367, label %.preheader244, label %.lr.ph.i.i.i.i.i.i121.preheader

.lr.ph.i.i.i.i.i.i121.preheader:                  ; preds = %vector.memcheck, %.lr.ph254, %middle.block366
  %indvars.iv268.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph254 ], [ %n.vec358, %middle.block366 ]
  br label %.lr.ph.i.i.i.i.i.i121

bb.x:                                             ; preds = %bb.t
  %i.ds = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br label %bb.ah

bb.y:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantEllRKd.exit, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantEllRKd.exit
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph, %.lr.ph.i.i.i.i.i.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.lr.ph.i.i.i.i.i.i ] ; 4 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv ; 3 uses
  %i.dw = load double, ptr %i.du, align 8, !tbaa !31, !noalias !82 ; 4 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !21
  %i.dz = sext i32 %i.dy to i64                   ; 2 uses
  %i.ea = getelementptr inbounds [8 x i8], ptr %.sroa.0.3234, i64 %i.dz ; 4 uses
  %i.eb = load double, ptr %i.dv, align 8, !tbaa !31
  %i.ec = fmul double %i.dw, %i.eb
  %i.ed = load double, ptr %i.ea, align 8, !tbaa !31
  %i.ee = fadd double %i.ec, %i.ed
  store double %i.ee, ptr %i.ea, align 8, !tbaa !31
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %i.bi ; 2 uses
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %i.da
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !31
  %i.ei = fmul double %i.dw, %i.eh
  %i.ej = load double, ptr %i.ef, align 8, !tbaa !31
  %i.ek = fadd double %i.ei, %i.ej
  store double %i.ek, ptr %i.ef, align 8, !tbaa !31
  %i.el = getelementptr inbounds i8, ptr %i.ea, i64 %.idx ; 2 uses
  %i.em = getelementptr inbounds i8, ptr %i.dv, i64 %.idx305
  %i.en = load double, ptr %i.em, align 8, !tbaa !31
  %i.eo = fmul double %i.dw, %i.en
  %i.ep = load double, ptr %i.el, align 8, !tbaa !31
  %i.eq = fadd double %i.eo, %i.ep
  store double %i.eq, ptr %i.el, align 8, !tbaa !31
  %i.er = getelementptr inbounds [8 x i8], ptr %i.db, i64 %i.dz ; 2 uses
  %i.es = load double, ptr %i.er, align 8, !tbaa !31
  %i.et = fadd double %i.dw, %i.es
  store double %i.et, ptr %i.er, align 8, !tbaa !31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader245, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !59

.preheader244:                                    ; preds = %.lr.ph.i.i.i.i.i.i121, %middle.block366, %.preheader245
  br i1 %i.cv, label %.lr.ph256, label %.preheader242

.lr.ph256:                                        ; preds = %.preheader244
  %i.eu = load ptr, ptr %2, align 8, !tbaa !17
  %i.ev = load ptr, ptr %6, align 8, !tbaa !33, !noalias !83
  %i.ew = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !35, !noalias !83 ; 10 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !34 ; 7 uses
  %i.fa = icmp sgt i64 %i.ex, 0
  %i.fb = load ptr, ptr %7, align 8               ; 2 uses
  %i.fc = icmp eq i64 %i.ex, 0
  %i.fd = load ptr, ptr %5, align 8               ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ff = load i64, ptr %i.fe, align 8            ; 3 uses
  %i.fg = load ptr, ptr %9, align 8, !tbaa !29
  %wide.trip.count276 = and i64 %i.b, 2147483647
  %i.fh = add i64 %i.ex, -1                       ; 4 uses
  %min.iters.check370 = icmp ugt i64 %i.ex, 3
  %ident.check.not = icmp eq i64 %i.ez, 1
  %or.cond400 = select i1 %min.iters.check370, i1 %ident.check.not, i1 false
  %n.vec372 = and i64 %i.ex, 9223372036854775804  ; 3 uses
  %cmp.n379 = icmp eq i64 %i.ex, %n.vec372
  %xtraiter = and i64 %i.ex, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %xtraiter415 = and i64 %i.fh, 1
  %i.fi = icmp eq i64 %i.ex, 2                    ; 0 uses
  %unroll_iter = and i64 %i.fh, -2
  %lcmp.mod416.not = icmp eq i64 %xtraiter415, 0
  %lcmp.mod418 = trunc i64 %i.fh to i1
  br label %bb.z

.lr.ph.i.i.i.i.i.i121:                            ; preds = %.lr.ph.i.i.i.i.i.i121.preheader, %.lr.ph.i.i.i.i.i.i121
  %indvars.iv268 = phi i64 [ %indvars.iv.next269, %.lr.ph.i.i.i.i.i.i121 ], [ %indvars.iv268.ph, %.lr.ph.i.i.i.i.i.i121.preheader ] ; 3 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv268
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !31 ; 3 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.3234, i64 %indvars.iv268 ; 4 uses
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !31
  %i.fn = fdiv double %i.fm, %i.fk
  store double %i.fn, ptr %i.fl, align 8, !tbaa !31
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.bi ; 2 uses
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !31
  %i.fq = fdiv double %i.fp, %i.fk
  store double %i.fq, ptr %i.fo, align 8, !tbaa !31
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fl, i64 %.idx306 ; 2 uses
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !31
  %i.ft = fdiv double %i.fs, %i.fk
  store double %i.ft, ptr %i.fr, align 8, !tbaa !31
  %indvars.iv.next269 = add nuw nsw i64 %indvars.iv268, 1 ; 2 uses
  %exitcond272.not = icmp eq i64 %indvars.iv.next269, %wide.trip.count271
  br i1 %exitcond272.not, label %.preheader244, label %.lr.ph.i.i.i.i.i.i121, !llvm.loop !62

.preheader242:                                    ; preds = %.loopexit243, %.preheader244
  br i1 %.not239252, label %.preheader, label %.lr.ph259

.lr.ph259:                                        ; preds = %.preheader242
  %i.fu = load ptr, ptr %8, align 8, !tbaa !29    ; 3 uses
  %i.fv = load ptr, ptr %9, align 8, !tbaa !29    ; 3 uses
  %wide.trip.count281 = zext nneg i32 %i.bh to i64 ; 2 uses
  %xtraiter419 = and i64 %wide.trip.count281, 1
  %i.fw = icmp eq i32 %.3.i.i.i.i, 0
  br i1 %i.fw, label %.epil.preheader, label %.lr.ph259.new

.lr.ph259.new:                                    ; preds = %.lr.ph259
  %unroll_iter422 = and i64 %wide.trip.count281, 2147483646
  %i.fx = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  br label %bb.ab

bb.z:                                             ; preds = %.lr.ph256, %.loopexit243
  %indvars.iv273 = phi i64 [ 0, %.lr.ph256 ], [ %indvars.iv.next274, %.loopexit243 ] ; 7 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %indvars.iv273
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !21
  %i.ga = sext i32 %i.fz to i64                   ; 2 uses
  %i.gb = getelementptr inbounds [8 x i8], ptr %.sroa.0.3234, i64 %i.ga ; 7 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv273 ; 9 uses
  br i1 %i.fa, label %.lr.ph.i.i.i.i.i.i124.preheader, label %bb.aa

.lr.ph.i.i.i.i.i.i124.preheader:                  ; preds = %bb.z
  br i1 %or.cond400, label %vector.body373, label %.lr.ph.i.i.i.i.i.i124.preheader403

vector.body373:                                   ; preds = %.lr.ph.i.i.i.i.i.i124.preheader, %vector.body373
  %index374 = phi i64 [ %index.next377, %vector.body373 ], [ 0, %.lr.ph.i.i.i.i.i.i124.preheader ] ; 6 uses
  %i.gd = or disjoint i64 %index374, 1
  %i.ge = or disjoint i64 %index374, 2
  %i.gf = or disjoint i64 %index374, 3
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.gc, i64 %index374 ; 3 uses
  %i.gh = mul nsw i64 %index374, %i.bi
  %i.gi = mul nsw i64 %i.gd, %i.bi
  %i.gj = mul nsw i64 %i.ge, %i.bi
  %i.gk = mul nsw i64 %i.gf, %i.bi
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.gb, i64 %i.gh
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.gb, i64 %i.gi
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.gb, i64 %i.gj
  %i.go = getelementptr inbounds [8 x i8], ptr %i.gb, i64 %i.gk
  %i.gp = load double, ptr %i.gl, align 8, !tbaa !31
  %i.gq = load double, ptr %i.gm, align 8, !tbaa !31
  %i.gr = insertelement <2 x double> poison, double %i.gp, i64 0
  %i.gs = insertelement <2 x double> %i.gr, double %i.gq, i64 1
  %i.gt = load double, ptr %i.gn, align 8, !tbaa !31
  %i.gu = load double, ptr %i.go, align 8, !tbaa !31
  %i.gv = insertelement <2 x double> poison, double %i.gt, i64 0
  %i.gw = insertelement <2 x double> %i.gv, double %i.gu, i64 1
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gg, i64 16 ; 2 uses
  %wide.load375 = load <2 x double>, ptr %i.gg, align 8, !tbaa !31
  %wide.load376 = load <2 x double>, ptr %i.gx, align 8, !tbaa !31
  %i.gy = fsub <2 x double> %wide.load375, %i.gs
  %i.gz = fsub <2 x double> %wide.load376, %i.gw
  store <2 x double> %i.gy, ptr %i.gg, align 8, !tbaa !31
  store <2 x double> %i.gz, ptr %i.gx, align 8, !tbaa !31
  %index.next377 = add nuw i64 %index374, 4       ; 2 uses
  %i.ha = icmp eq i64 %index.next377, %n.vec372
  br i1 %i.ha, label %middle.block378, label %vector.body373, !llvm.loop !63

middle.block378:                                  ; preds = %vector.body373
  br i1 %cmp.n379, label %.loopexit399, label %.lr.ph.i.i.i.i.i.i124.preheader403

.lr.ph.i.i.i.i.i.i124.preheader403:               ; preds = %.lr.ph.i.i.i.i.i.i124.preheader, %middle.block378
  %.05.i.i.i.i.i.i125.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i124.preheader ], [ %n.vec372, %middle.block378 ] ; 5 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i124.prol.loopexit, label %.lr.ph.i.i.i.i.i.i124.prol

.lr.ph.i.i.i.i.i.i124.prol:                       ; preds = %.lr.ph.i.i.i.i.i.i124.preheader403
  %i.hb = mul nsw i64 %.05.i.i.i.i.i.i125.ph, %i.ez
  %i.hc = getelementptr inbounds [8 x i8], ptr %i.gc, i64 %i.hb ; 2 uses
  %i.hd = mul nsw i64 %.05.i.i.i.i.i.i125.ph, %i.bi
  %i.he = getelementptr inbounds [8 x i8], ptr %i.gb, i64 %i.hd
  %i.hf = load double, ptr %i.he, align 8, !tbaa !31
  %i.hg = load double, ptr %i.hc, align 8, !tbaa !31
  %i.hh = fsub double %i.hg, %i.hf
  store double %i.hh, ptr %i.hc, align 8, !tbaa !31
  %i.hi = or disjoint i64 %.05.i.i.i.i.i.i125.ph, 1
  br label %.lr.ph.i.i.i.i.i.i124.prol.loopexit

.lr.ph.i.i.i.i.i.i124.prol.loopexit:              ; preds = %.lr.ph.i.i.i.i.i.i124.prol, %.lr.ph.i.i.i.i.i.i124.preheader403
  %.05.i.i.i.i.i.i125.unr = phi i64 [ %.05.i.i.i.i.i.i125.ph, %.lr.ph.i.i.i.i.i.i124.preheader403 ], [ %i.hi, %.lr.ph.i.i.i.i.i.i124.prol ]
  %i.hj = icmp eq i64 %i.fh, %.05.i.i.i.i.i.i125.ph
  br i1 %i.hj, label %.loopexit399, label %.lr.ph.i.i.i.i.i.i124

.lr.ph.i.i.i.i.i.i124:                            ; preds = %.lr.ph.i.i.i.i.i.i124.prol.loopexit, %.lr.ph.i.i.i.i.i.i124
  %.05.i.i.i.i.i.i125 = phi i64 [ %i.hz, %.lr.ph.i.i.i.i.i.i124 ], [ %.05.i.i.i.i.i.i125.unr, %.lr.ph.i.i.i.i.i.i124.prol.loopexit ] ; 4 uses
  %i.hk = mul nsw i64 %.05.i.i.i.i.i.i125, %i.ez
  %i.hl = getelementptr inbounds [8 x i8], ptr %i.gc, i64 %i.hk ; 2 uses
  %i.hm = mul nsw i64 %.05.i.i.i.i.i.i125, %i.bi
  %i.hn = getelementptr inbounds [8 x i8], ptr %i.gb, i64 %i.hm
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !31
  %i.hp = load double, ptr %i.hl, align 8, !tbaa !31
  %i.hq = fsub double %i.hp, %i.ho
  store double %i.hq, ptr %i.hl, align 8, !tbaa !31
  %i.hr = add nuw nsw i64 %.05.i.i.i.i.i.i125, 1  ; 2 uses
  %i.hs = mul nsw i64 %i.hr, %i.ez
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.gc, i64 %i.hs ; 2 uses
  %i.hu = mul nsw i64 %i.hr, %i.bi
  %i.hv = getelementptr inbounds [8 x i8], ptr %i.gb, i64 %i.hu
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !31
  %i.hx = load double, ptr %i.ht, align 8, !tbaa !31
  %i.hy = fsub double %i.hx, %i.hw
  store double %i.hy, ptr %i.ht, align 8, !tbaa !31
  %i.hz = add nuw nsw i64 %.05.i.i.i.i.i.i125, 2  ; 2 uses
  %exitcond.not.i.i.i.i.i.i126.1 = icmp eq i64 %i.hz, %i.ex
  br i1 %exitcond.not.i.i.i.i.i.i126.1, label %.loopexit399, label %.lr.ph.i.i.i.i.i.i124, !llvm.loop !64

bb.aa:                                            ; preds = %bb.z
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv273
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !31 ; 2 uses
  br i1 %i.fc, label %.loopexit243, label %.thread238

.thread238:                                       ; preds = %bb.aa
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %indvars.iv273
  %i.id = load double, ptr %i.ic, align 8, !tbaa !31
  %i.ie = load double, ptr %i.gc, align 8, !tbaa !31
  %i.if = fmul double %i.id, %i.ie
  br label %.loopexit243

.loopexit399:                                     ; preds = %.lr.ph.i.i.i.i.i.i124.prol.loopexit, %.lr.ph.i.i.i.i.i.i124, %middle.block378
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv273
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !31 ; 3 uses
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %indvars.iv273 ; 4 uses
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !31
  %i.ik = load double, ptr %i.gc, align 8, !tbaa !31
  %i.il = fmul double %i.ij, %i.ik                ; 3 uses
  switch i64 %i.ex, label %.lr.ph.i.i.i.i.i [
    i64 1, label %.loopexit243
    i64 2, label %.lr.ph.i.i.i.i.i.epil.preheader
  ]

.lr.ph.i.i.i.i.i:                                 ; preds = %.loopexit399, %.lr.ph.i.i.i.i.i
  %.01724.i.i.i.i.i = phi i64 [ %i.jd, %.lr.ph.i.i.i.i.i ], [ 1, %.loopexit399 ] ; 4 uses
  %.02223.i.i.i.i.i = phi double [ %i.jc, %.lr.ph.i.i.i.i.i ], [ %i.il, %.loopexit399 ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i.i.i.i.i ], [ 0, %.loopexit399 ]
  %i.im = mul nsw i64 %.01724.i.i.i.i.i, %i.ff
  %i.in = getelementptr [8 x i8], ptr %i.ii, i64 %i.im
  %i.io = mul nsw i64 %.01724.i.i.i.i.i, %i.ez
  %i.ip = getelementptr [8 x i8], ptr %i.gc, i64 %i.io
  %i.iq = load double, ptr %i.in, align 8, !tbaa !31
  %i.ir = load double, ptr %i.ip, align 8, !tbaa !31
  %i.is = fmul double %i.iq, %i.ir
  %i.it = fadd double %.02223.i.i.i.i.i, %i.is
  %i.iu = add nuw nsw i64 %.01724.i.i.i.i.i, 1    ; 2 uses
  %i.iv = mul nsw i64 %i.iu, %i.ff
  %i.iw = getelementptr [8 x i8], ptr %i.ii, i64 %i.iv
  %i.ix = mul nsw i64 %i.iu, %i.ez
  %i.iy = getelementptr [8 x i8], ptr %i.gc, i64 %i.ix
  %i.iz = load double, ptr %i.iw, align 8, !tbaa !31
  %i.ja = load double, ptr %i.iy, align 8, !tbaa !31
  %i.jb = fmul double %i.iz, %i.ja
  %i.jc = fadd double %i.it, %i.jb                ; 3 uses
  %i.jd = add nuw nsw i64 %.01724.i.i.i.i.i, 2    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit243.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

.loopexit243.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i.i.i.i.i
  br i1 %lcmp.mod416.not, label %.loopexit243, label %.lr.ph.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.epil.preheader:                  ; preds = %.loopexit399, %.loopexit243.loopexit.unr-lcssa
  %.01724.i.i.i.i.i.epil.init = phi i64 [ 1, %.loopexit399 ], [ %i.jd, %.loopexit243.loopexit.unr-lcssa ] ; 2 uses
  %.02223.i.i.i.i.i.epil.init = phi double [ %i.il, %.loopexit399 ], [ %i.jc, %.loopexit243.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod418)
  %i.je = mul nsw i64 %.01724.i.i.i.i.i.epil.init, %i.ff
  %i.jf = getelementptr [8 x i8], ptr %i.ii, i64 %i.je
  %i.jg = mul nsw i64 %.01724.i.i.i.i.i.epil.init, %i.ez
  %i.jh = getelementptr [8 x i8], ptr %i.gc, i64 %i.jg
  %i.ji = load double, ptr %i.jf, align 8, !tbaa !31
  %i.jj = load double, ptr %i.jh, align 8, !tbaa !31
  %i.jk = fmul double %i.ji, %i.jj
  %i.jl = fadd double %.02223.i.i.i.i.i.epil.init, %i.jk
  br label %.loopexit243

.loopexit243:                                     ; preds = %.lr.ph.i.i.i.i.i.epil.preheader, %.loopexit243.loopexit.unr-lcssa, %.loopexit399, %bb.aa, %.thread238
  %i.jm = phi double [ %i.ib, %bb.aa ], [ %i.ih, %.loopexit399 ], [ %i.ib, %.thread238 ], [ %i.ih, %.loopexit243.loopexit.unr-lcssa ], [ %i.ih, %.lr.ph.i.i.i.i.i.epil.preheader ]
  %.0.i.i.i = phi double [ 0.000000e+00, %bb.aa ], [ %i.il, %.loopexit399 ], [ %i.if, %.thread238 ], [ %i.jc, %.loopexit243.loopexit.unr-lcssa ], [ %i.jl, %.lr.ph.i.i.i.i.i.epil.preheader ]
  %i.jn = getelementptr inbounds [8 x i8], ptr %i.fg, i64 %i.ga ; 2 uses
  %i.jo = load double, ptr %i.jn, align 8, !tbaa !31
  %i.jp = call double @llvm.fmuladd.f64(double %i.jm, double %.0.i.i.i, double %i.jo)
  store double %i.jp, ptr %i.jn, align 8, !tbaa !31
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, 1 ; 2 uses
  %exitcond277.not = icmp eq i64 %indvars.iv.next274, %wide.trip.count276
  br i1 %exitcond277.not, label %.preheader242, label %bb.z, !llvm.loop !65

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.ab
  %lcmp.mod420.not = icmp eq i64 %xtraiter419, 0
  br i1 %lcmp.mod420.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph259
  %indvars.iv278.epil.init = phi i64 [ 0, %.lr.ph259 ], [ %indvars.iv.next279.1, %.preheader.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod421 = trunc i32 %i.bh to i1
  call void @llvm.assume(i1 %lcmp.mod421)
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %indvars.iv278.epil.init
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !31
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %indvars.iv278.epil.init ; 2 uses
  %i.jt = load double, ptr %i.js, align 8, !tbaa !31
  %i.ju = fdiv double %i.jt, %i.jr                ; 2 uses
  store double %i.ju, ptr %i.js, align 8, !tbaa !31
  %i.jv = fcmp olt double %i.ju, 0.000000e+00
  %i.jw = load ptr, ptr %4, align 8, !tbaa !17
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %indvars.iv278.epil.init
  %..epil = zext i1 %i.jv to i32
  store i32 %..epil, ptr %i.jx, align 4, !tbaa !21
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %.preheader242
  br i1 %i.cv, label %.lr.ph261, label %._crit_edge

.lr.ph261:                                        ; preds = %.preheader
  %i.jy = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %11, i64 8
  %wide.trip.count286 = and i64 %i.b, 2147483647
  br label %bb.ac

bb.ab:                                            ; preds = %bb.ab, %.lr.ph259.new
  %indvars.iv278 = phi i64 [ 0, %.lr.ph259.new ], [ %indvars.iv.next279.1, %bb.ab ] ; 5 uses
  %niter423 = phi i64 [ 0, %.lr.ph259.new ], [ %niter423.next.1, %bb.ab ]
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %indvars.iv278
  %i.kc = load double, ptr %i.kb, align 8, !tbaa !31
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %indvars.iv278 ; 2 uses
  %i.ke = load double, ptr %i.kd, align 8, !tbaa !31
  %i.kf = fdiv double %i.ke, %i.kc                ; 2 uses
  store double %i.kf, ptr %i.kd, align 8, !tbaa !31
  %i.kg = fcmp olt double %i.kf, 0.000000e+00
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %indvars.iv278
  %. = zext i1 %i.kg to i32
  store i32 %., ptr %i.kh, align 4, !tbaa !21
  %indvars.iv.next279 = or disjoint i64 %indvars.iv278, 1 ; 3 uses
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %indvars.iv.next279
  %i.kj = load double, ptr %i.ki, align 8, !tbaa !31
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %indvars.iv.next279 ; 2 uses
  %i.kl = load double, ptr %i.kk, align 8, !tbaa !31
  %i.km = fdiv double %i.kl, %i.kj                ; 2 uses
  store double %i.km, ptr %i.kk, align 8, !tbaa !31
  %i.kn = fcmp olt double %i.km, 0.000000e+00
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %indvars.iv.next279
  %..1 = zext i1 %i.kn to i32
  store i32 %..1, ptr %i.ko, align 4, !tbaa !21
  %indvars.iv.next279.1 = add nuw nsw i64 %indvars.iv278, 2 ; 2 uses
  %niter423.next.1 = add i64 %niter423, 2         ; 2 uses
  %niter423.ncmp.1 = icmp eq i64 %niter423.next.1, %unroll_iter422
  br i1 %niter423.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.ab, !llvm.loop !66

._crit_edge:                                      ; preds = %bb.ag, %.preheader
  %i.kp = load ptr, ptr %9, align 8, !tbaa !29
  call void @free(ptr noundef %i.kp) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  %i.kq = load ptr, ptr %8, align 8, !tbaa !29
  call void @free(ptr noundef %i.kq) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  %i.kr = load ptr, ptr %7, align 8, !tbaa !29
  call void @free(ptr noundef %i.kr) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @free(ptr noundef %.sroa.0.3234) #15
  %i.ks = load ptr, ptr %6, align 8, !tbaa !33
  call void @free(ptr noundef %i.ks) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.kt = load ptr, ptr %5, align 8, !tbaa !33
  call void @free(ptr noundef %i.kt) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  ret void

bb.ac:                                            ; preds = %.lr.ph261, %bb.ag
  %indvars.iv283 = phi i64 [ 0, %.lr.ph261 ], [ %indvars.iv.next284, %bb.ag ] ; 5 uses
  %i.ku = load ptr, ptr %2, align 8, !tbaa !17
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv283
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !21
  %i.kx = sext i32 %i.kw to i64
  %i.ky = load ptr, ptr %4, align 8, !tbaa !17
  %i.kz = getelementptr inbounds [4 x i8], ptr %i.ky, i64 %i.kx
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !21
  %.not81 = icmp eq i32 %i.la, 0
  br i1 %.not81, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  %i.lb = load ptr, ptr %3, align 8, !tbaa !36, !noalias !84
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %indvars.iv283 ; 3 uses
  %i.ld = load i64, ptr %i.jy, align 8, !tbaa !37, !noalias !38 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !85)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false), !alias.scope !85
  %i.le = load i64, ptr %i.jz, align 8, !tbaa !15, !noalias !85 ; 3 uses
  %.not8.i.i.i.i.i.i.i.i = icmp eq i64 %i.ld, 0
  br i1 %.not8.i.i.i.i.i.i.i.i, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IiLi1ELin1ELi1ELi1ELin1EEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %thread-pre-split.i.i.i.i.i.i.i

thread-pre-split.i.i.i.i.i.i.i:                   ; preds = %bb.ad
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLi1ELin1ELi1ELi1ELin1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %11, i64 noundef 1, i64 noundef %i.ld)
          to label %bb.ae unwind label %.body127

bb.ae:                                            ; preds = %thread-pre-split.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i = load i64, ptr %i.ka, align 8, !tbaa !40, !alias.scope !85 ; 5 uses
  %.pre.i.i = load ptr, ptr %11, align 8, !tbaa !41, !alias.scope !85 ; 4 uses
  %i.lf = icmp sgt i64 %.pr.i.i.i.i.i.i.i, 0
  br i1 %i.lf, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %.loopexit

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.ae
  %xtraiter424 = and i64 %.pr.i.i.i.i.i.i.i, 1
  %i.lg = icmp eq i64 %.pr.i.i.i.i.i.i.i, 1
  br i1 %i.lg, label %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.preheader.new:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %unroll_iter427 = and i64 %.pr.i.i.i.i.i.i.i, 9223372036854775806
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader.new
  %.05.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader.new ], [ %i.lu, %.lr.ph.i.i.i.i.i.i.i.i ] ; 5 uses
  %niter428 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader.new ], [ %niter428.next.1, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %.05.i.i.i.i.i.i.i.i
  %i.li = xor i64 %.05.i.i.i.i.i.i.i.i, -1
  %i.lj = add i64 %i.ld, %i.li
  %i.lk = mul nsw i64 %i.lj, %i.le
  %i.ll = getelementptr inbounds [4 x i8], ptr %i.lc, i64 %i.lk
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !21
  store i32 %i.lm, ptr %i.lh, align 4, !tbaa !21
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %.05.i.i.i.i.i.i.i.i
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 4
  %i.lp = xor i64 %.05.i.i.i.i.i.i.i.i, -2
  %i.lq = add i64 %i.ld, %i.lp
  %i.lr = mul nsw i64 %i.lq, %i.le
  %i.ls = getelementptr inbounds [4 x i8], ptr %i.lc, i64 %i.lr
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !21
  store i32 %i.lt, ptr %i.lo, align 4, !tbaa !21
  %i.lu = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %niter428.next.1 = add nuw nsw i64 %niter428, 2 ; 2 uses
  %niter428.ncmp.1 = icmp eq i64 %niter428.next.1, %unroll_iter427
  br i1 %niter428.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1

.body127:                                         ; preds = %thread-pre-split.i.i.i.i.i.i.i
  %i.lv = landingpad { ptr, i32 }
          cleanup
  %i.lw = load ptr, ptr %11, align 8, !tbaa !41, !alias.scope !85
  call void @free(ptr noundef %i.lw) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  br label %bb.ah

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %lcmp.mod425.not = icmp eq i64 %xtraiter424, 0
  br i1 %lcmp.mod425.not, label %.loopexit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.epil.preheader:            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %.05.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.lu, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod426 = trunc i64 %.pr.i.i.i.i.i.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod426)
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %.05.i.i.i.i.i.i.i.i.epil.init
  %i.ly = xor i64 %.05.i.i.i.i.i.i.i.i.epil.init, -1
  %i.lz = add i64 %i.ld, %i.ly
  %i.ma = mul nsw i64 %i.lz, %i.le
  %i.mb = getelementptr inbounds [4 x i8], ptr %i.lc, i64 %i.ma
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !21
  store i32 %i.mc, ptr %i.lx, align 4, !tbaa !21
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader
  %.pre = load ptr, ptr %11, align 8, !tbaa !41
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.ae
  %.ph = phi ptr [ %.pre.i.i, %bb.ae ], [ %.pre, %.loopexit.loopexit ] ; 11 uses
  %.ph385 = ptrtoaddr ptr %.ph to i64
  %.pr = load i64, ptr %i.jy, align 8, !tbaa !37, !noalias !86 ; 7 uses
  %i.md = load ptr, ptr %3, align 8, !tbaa !36, !noalias !86 ; 2 uses
  %i.me = ptrtoaddr ptr %i.md to i64
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %indvars.iv283 ; 6 uses
  %i.mg = load i64, ptr %i.jz, align 8, !tbaa !15 ; 6 uses
  %i.mh = icmp sgt i64 %.pr, 0
  br i1 %i.mh, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IiLi1ELin1ELi1ELi1ELin1EEEEERS3_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %.loopexit
  %min.iters.check387 = icmp ugt i64 %.pr, 7
  %ident.check382.not = icmp eq i64 %i.mg, 1
  %or.cond401 = select i1 %min.iters.check387, i1 %ident.check382.not, i1 false
  br i1 %or.cond401, label %vector.memcheck388, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader402

vector.memcheck388:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %i.mi = shl i64 %indvars.iv283, 2
  %i.mj = add i64 %i.mi, %i.me
  %i.mk = sub i64 %.ph385, %i.mj
  %diff.check = icmp ugt i64 %i.mk, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader402, label %vector.ph389

vector.ph389:                                     ; preds = %vector.memcheck388
  %n.vec390 = and i64 %.pr, 9223372036854775800   ; 3 uses
  br label %vector.body391

vector.body391:                                   ; preds = %vector.body391, %vector.ph389
  %index392 = phi i64 [ 0, %vector.ph389 ], [ %index.next395, %vector.body391 ] ; 3 uses
  %i.ml = getelementptr inbounds [4 x i8], ptr %i.mf, i64 %index392 ; 2 uses
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %.ph, i64 %index392 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 16
  %wide.load393 = load <4 x i32>, ptr %i.mm, align 4, !tbaa !21
  %wide.load394 = load <4 x i32>, ptr %i.mn, align 4, !tbaa !21
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ml, i64 16
  store <4 x i32> %wide.load393, ptr %i.ml, align 4, !tbaa !21
  store <4 x i32> %wide.load394, ptr %i.mo, align 4, !tbaa !21
  %index.next395 = add nuw i64 %index392, 8       ; 2 uses
  %i.mp = icmp eq i64 %index.next395, %n.vec390
  br i1 %i.mp, label %middle.block396, label %vector.body391, !llvm.loop !73

middle.block396:                                  ; preds = %vector.body391
  %cmp.n397 = icmp eq i64 %.pr, %n.vec390
  br i1 %cmp.n397, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IiLi1ELin1ELi1ELi1ELin1EEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader402

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader402:          ; preds = %vector.memcheck388, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block396
  %.05.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck388 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec390, %middle.block396 ] ; 3 uses
  %xtraiter429 = and i64 %.pr, 3                  ; 2 uses
  %lcmp.mod430.not = icmp eq i64 %xtraiter429, 0
  br i1 %lcmp.mod430.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader402, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.mu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader402 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader402 ]
  %i.mq = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.prol, %i.mg
  %i.mr = getelementptr inbounds [4 x i8], ptr %i.mf, i64 %i.mq
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %.ph, i64 %.05.i.i.i.i.i.i.i.i.i.i.prol
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !21
  store i32 %i.mt, ptr %i.mr, align 4, !tbaa !21
  %i.mu = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter429
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !74

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader402
  %.05.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader402 ], [ %i.mu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.mv = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.ph, %.pr
  %i.mw = icmp ugt i64 %i.mv, -4
  br i1 %i.mw, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IiLi1ELin1ELi1ELi1ELin1EEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.nq, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.mx = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, %i.mg
  %i.my = getelementptr inbounds [4 x i8], ptr %i.mf, i64 %i.mx
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %.ph, i64 %.05.i.i.i.i.i.i.i.i.i.i
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !21
  store i32 %i.na, ptr %i.my, align 4, !tbaa !21
  %i.nb = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.nc = mul nsw i64 %i.nb, %i.mg
  %i.nd = getelementptr inbounds [4 x i8], ptr %i.mf, i64 %i.nc
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %.ph, i64 %i.nb
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !21
  store i32 %i.nf, ptr %i.nd, align 4, !tbaa !21
  %i.ng = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.nh = mul nsw i64 %i.ng, %i.mg
  %i.ni = getelementptr inbounds [4 x i8], ptr %i.mf, i64 %i.nh
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %.ph, i64 %i.ng
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !21
  store i32 %i.nk, ptr %i.ni, align 4, !tbaa !21
  %i.nl = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.nm = mul nsw i64 %i.nl, %i.mg
  %i.nn = getelementptr inbounds [4 x i8], ptr %i.mf, i64 %i.nm
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %.ph, i64 %i.nl
  %i.np = load i32, ptr %i.no, align 4, !tbaa !21
  store i32 %i.np, ptr %i.nn, align 4, !tbaa !21
  %i.nq = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.nq, %.pr
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IiLi1ELin1ELi1ELi1ELin1EEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !75

_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IiLi1ELin1ELi1ELi1ELin1EEEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block396, %bb.ad, %.loopexit
  %i.nr = phi ptr [ null, %bb.ad ], [ %.ph, %.loopexit ], [ %.ph, %middle.block396 ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  call void @free(ptr noundef %i.nr) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  br label %bb.ag

bb.af:                                            ; preds = %bb.w, %bb.u, %bb.v
  %i.ns = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ac, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IiLi1ELin1ELi1ELi1ELin1EEEEERS3_RKNS_9DenseBaseIT_EE.exit
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1 ; 2 uses
  %exitcond287.not = icmp eq i64 %indvars.iv.next284, %wide.trip.count286
  br i1 %exitcond287.not, label %._crit_edge, label %bb.ac, !llvm.loop !76

bb.ah:                                            ; preds = %bb.af, %.body127, %bb.y, %bb.x
  %.sroa.0.0 = phi ptr [ %.sroa.0.3234, %.body127 ], [ %.sroa.0.3234, %bb.y ], [ null, %bb.af ], [ null, %bb.x ]
  %.pn94.pn = phi { ptr, i32 } [ %i.lv, %.body127 ], [ %i.dt, %bb.y ], [ %i.ns, %bb.af ], [ %i.ds, %bb.x ]
  %i.nt = load ptr, ptr %9, align 8, !tbaa !29
  call void @free(ptr noundef %i.nt) #15
  br label %.body107

.body107:                                         ; preds = %bb.s, %bb.ah
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %bb.ah ], [ null, %bb.s ]
  %.pn94.pn.pn = phi { ptr, i32 } [ %.pn94.pn, %bb.ah ], [ %i.ch, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  %i.nu = load ptr, ptr %8, align 8, !tbaa !29
  call void @free(ptr noundef %i.nu) #15
  br label %.body

.body:                                            ; preds = %bb.o, %.body107
  %.sroa.0.2 = phi ptr [ %.sroa.0.1, %.body107 ], [ null, %bb.o ]
  %.pn94.pn.pn.pn = phi { ptr, i32 } [ %.pn94.pn.pn, %.body107 ], [ %i.by, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  %i.nv = load ptr, ptr %7, align 8, !tbaa !29
  call void @free(ptr noundef %i.nv) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @free(ptr noundef %.sroa.0.2) #15
  %i.nw = load ptr, ptr %6, align 8, !tbaa !33
  call void @free(ptr noundef %i.nw) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.nx = load ptr, ptr %5, align 8, !tbaa !33
  call void @free(ptr noundef %i.nx) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  resume { ptr, i32 } %.pn94.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEaSIS2_EERS2_RKNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !37   ; 4 uses
  %i.e = icmp eq i64 %i.b, 0
  %i.f = icmp eq i64 %i.d, 0
  %or.cond.i.i.i = or i1 %i.e, %i.f
  br i1 %or.cond.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchIS2_EEvRKNS_9EigenBaseIT_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv i64 9223372036854775807, %i.d
  %i.h = icmp sgt i64 %i.b, %i.g
  br i1 %i.h, label %bb.c, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchIS2_EEvRKNS_9EigenBaseIT_EE.exit

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !25
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchIS2_EEvRKNS_9EigenBaseIT_EE.exit: ; preds = %bb.a, %bb.b
  %i.j = mul nsw i64 %i.d, %i.b
  tail call void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.j, i64 noundef %i.b, i64 noundef %i.d)
  %i.k = load ptr, ptr %1, align 8, !tbaa !36     ; 8 uses
  %i.l = ptrtoaddr ptr %i.k to i64
  %i.m = load i64, ptr %i.a, align 8, !tbaa !15   ; 6 uses
  %i.n = load i64, ptr %i.c, align 8, !tbaa !37   ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !15
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.p, %i.m
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8
  %.not8.i.i.i.i.i.i.i = icmp eq i64 %i.r, %i.n
  %or.cond.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i1 %.not8.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchIS2_EEvRKNS_9EigenBaseIT_EE.exit
  %i.s = icmp eq i64 %i.m, 0
  %i.t = icmp eq i64 %i.n, 0
  %or.cond.i.i.i.i.i.i.i.i.i = or i1 %i.s, %i.t
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = sdiv i64 9223372036854775807, %i.n
  %i.v = icmp sgt i64 %i.m, %i.u
  br i1 %i.v, label %.noexc.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i:                               ; preds = %bb.e
  %i.w = tail call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.w, align 8, !tbaa !25
  tail call void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.x = mul nsw i64 %i.n, %i.m
  tail call void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.x, i64 noundef %i.m, i64 noundef %i.n)
  %.pre.i.i.i.i.i.i = load i64, ptr %i.o, align 8, !tbaa !15
  %.pre20.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !tbaa !37
  br label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchIS2_EEvRKNS_9EigenBaseIT_EE.exit
  %i.y = phi i64 [ %.pre20.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i ], [ %i.n, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchIS2_EEvRKNS_9EigenBaseIT_EE.exit ]
  %i.z = phi i64 [ %.pre.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i ], [ %i.m, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchIS2_EEvRKNS_9EigenBaseIT_EE.exit ]
  %i.aa = load ptr, ptr %0, align 8, !tbaa !36    ; 8 uses
  %i.ab = ptrtoaddr ptr %i.aa to i64
  %i.ac = mul nsw i64 %i.z, %i.y                  ; 7 uses
  %i.ad = sdiv i64 %i.ac, 4
  %i.ae = shl nsw i64 %i.ad, 2                    ; 6 uses
  %i.af = icmp sgt i64 %i.ac, 3
  br i1 %i.af, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.f
  %i.ag = icmp slt i64 %i.ae, %i.ac
  br i1 %i.ag, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen10MatrixBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEaSERKS3_.exit

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.ah = sub i64 %i.ac, %i.ae                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.ah, 8
  %i.ai = sub i64 %i.l, %i.ab
  %diff.check = icmp ugt i64 %i.ai, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.preheader11, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ah, -8                      ; 3 uses
  %i.aj = add i64 %i.ae, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = add i64 %i.ae, %index                   ; 2 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.ak ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load = load <4 x i32>, ptr %i.am, align 4, !tbaa !21
  %wide.load10 = load <4 x i32>, ptr %i.an, align 4, !tbaa !21
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <4 x i32> %wide.load, ptr %i.al, align 4, !tbaa !21
  store <4 x i32> %wide.load10, ptr %i.ao, align 4, !tbaa !21
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !87

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen10MatrixBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEaSERKS3_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader11

.lr.ph.i.i.i.i.i.i.i.i.preheader11:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.ae, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.aj, %middle.block ] ; 4 uses
  %i.aq = sub i64 %i.ac, %.05.i.i.i.i.i.i.i.i.ph
  %xtraiter = and i64 %i.aq, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader11, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.au, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader11 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader11 ]
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %.05.i.i.i.i.i.i.i.i.prol
  %i.as = getelementptr inbounds [4 x i8], ptr %i.k, i64 %.05.i.i.i.i.i.i.i.i.prol
  %i.at = load i32, ptr %i.as, align 4, !tbaa !21
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !21
  %i.au = add nsw i64 %.05.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !88

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader11
  %.05.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader11 ], [ %i.au, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.av = sub i64 %.05.i.i.i.i.i.i.i.i.ph, %i.ac
  %i.aw = icmp ugt i64 %i.av, -4
  br i1 %i.aw, label %_ZN5Eigen10MatrixBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEaSERKS3_.exit, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi i64 [ %i.bm, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %.05.i.i.i.i.i.i.i.i
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.k, i64 %.05.i.i.i.i.i.i.i.i
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !21
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !21
  %i.ba = add nsw i64 %.05.i.i.i.i.i.i.i.i, 1     ; 2 uses
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.ba
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.ba
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !21
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !21
  %i.be = add nsw i64 %.05.i.i.i.i.i.i.i.i, 2     ; 2 uses
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.be
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.be
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !21
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !21
  %i.bi = add nsw i64 %.05.i.i.i.i.i.i.i.i, 3     ; 2 uses
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.bi
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.bi
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !21
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !21
  %i.bm = add nsw i64 %.05.i.i.i.i.i.i.i.i, 4     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.bm, %i.ac
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen10MatrixBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEaSERKS3_.exit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !89

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i = phi i64 [ %i.bq, %.lr.ph.i.i.i.i.i.i.i ], [ 0, %bb.f ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.011.i.i.i.i.i.i.i
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.011.i.i.i.i.i.i.i
  %i.bp = load <2 x i64>, ptr %i.bo, align 16, !tbaa !19
  store <2 x i64> %i.bp, ptr %i.bn, align 16, !tbaa !19
  %i.bq = add nuw nsw i64 %.011.i.i.i.i.i.i.i, 4  ; 2 uses
  %i.br = icmp slt i64 %i.bq, %i.ae
  br i1 %i.br, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, !llvm.loop !90

_ZN5Eigen10MatrixBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEaSERKS3_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i
  ret ptr %0
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN3igl16per_face_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi3ELi1ELi0ELi3ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERNS1_15PlainObjectBaseIT2_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare void @_ZN3igl10barycenterIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare void @_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl14orient_outwardIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES4_S4_NS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERNS1_15PlainObjectBaseIT2_EERNSJ_IT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Eigen::Matrix.11", align 8  ; 9 uses
  %6 = alloca %"class.Eigen::Matrix.11", align 8  ; 12 uses
  %7 = alloca %"class.Eigen::Matrix.20", align 8  ; 9 uses
  %8 = alloca %"class.Eigen::Matrix.20", align 8  ; 16 uses
  %9 = alloca %"class.Eigen::Matrix.20", align 8  ; 15 uses
  %10 = alloca %"class.Eigen::Matrix.29", align 16 ; 6 uses
  %11 = alloca %"class.Eigen::Matrix.53", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15   ; 4 uses
  %i.c = trunc i64 %i.b to i32
  %i.d = load ptr, ptr %2, align 8, !tbaa !36     ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !37
  %i.i = mul nsw i64 %i.h, %i.f                   ; 12 uses
  %i.j = sdiv i64 %i.i, 8
  %i.k = shl nsw i64 %i.j, 3                      ; 3 uses
  %i.l = sdiv i64 %i.i, 4
  %i.m = shl nsw i64 %i.l, 2                      ; 6 uses
  %.off.i.i.i.i = add i64 %i.i, 3
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 7
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load <4 x i32>, ptr %i.d, align 16, !tbaa !19 ; 3 uses
  %i.o = icmp sgt i64 %i.i, 7
  br i1 %i.o, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.q = load <4 x i32>, ptr %i.p, align 16, !tbaa !19 ; 2 uses
  %i.r = icmp samesign ugt i64 %i.i, 15
  br i1 %i.r, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.q, %bb.c ], [ %i.ab, %.lr.ph.i.i.i.i ]
  %.sroa.064.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.n, %bb.c ], [ %i.x, %.lr.ph.i.i.i.i ]
  %i.s = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.sroa.064.0.lcssa.i.i.i.i, <4 x i32> %.lcssa.i.i.i.i) ; 2 uses
  %i.t = icmp sgt i64 %i.m, %i.k
  br i1 %i.t, label %bb.d, label %bb.e

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.05779.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ 8, %bb.c ] ; 3 uses
  %.057.in78.i.i.i.i = phi i64 [ %.05779.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.c ]
  %.sroa.064.077.i.i.i.i = phi <4 x i32> [ %i.x, %.lr.ph.i.i.i.i ], [ %i.n, %bb.c ]
  %i.u = phi <4 x i32> [ %i.ab, %.lr.ph.i.i.i.i ], [ %i.q, %bb.c ]
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.05779.i.i.i.i
  %i.w = load <4 x i32>, ptr %i.v, align 16, !tbaa !19
  %i.x = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.sroa.064.077.i.i.i.i, <4 x i32> %i.w) ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.057.in78.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.aa = load <4 x i32>, ptr %i.z, align 16, !tbaa !19
  %i.ab = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.u, <4 x i32> %i.aa) ; 2 uses
  %.057.i.i.i.i = add nuw nsw i64 %.05779.i.i.i.i, 8 ; 2 uses
  %i.ac = icmp slt i64 %.057.i.i.i.i, %i.k
  br i1 %i.ac, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !91

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.k
  %i.ae = load <4 x i32>, ptr %i.ad, align 16, !tbaa !19
  %i.af = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.s, <4 x i32> %i.ae)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i, %bb.b
  %.sroa.064.2.i.i.i.i = phi <4 x i32> [ %i.n, %bb.b ], [ %i.af, %bb.d ], [ %i.s, %._crit_edge.i.i.i.i ]
  %i.ag = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %.sroa.064.2.i.i.i.i) ; 3 uses
  %i.ah = icmp slt i64 %i.m, %i.i
  br i1 %i.ah, label %.lr.ph84.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit

.lr.ph84.i.i.i.i.preheader:                       ; preds = %bb.e
  %i.ai = sub i64 %i.i, %i.m                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.ai, 8
  br i1 %min.iters.check, label %.lr.ph84.i.i.i.i.preheader408, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph84.i.i.i.i.preheader
  %n.vec = and i64 %i.ai, -8                      ; 3 uses
  %i.aj = add i64 %i.m, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ag, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ak = getelementptr [4 x i8], ptr %i.d, i64 %i.m
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.an, %vector.body ]
  %vec.phi317 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ao, %vector.body ]
  %i.al = getelementptr [4 x i8], ptr %i.ak, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %wide.load = load <4 x i32>, ptr %i.al, align 4, !tbaa !21
  %wide.load318 = load <4 x i32>, ptr %i.am, align 4, !tbaa !21
  %i.an = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load) ; 2 uses
  %i.ao = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi317, <4 x i32> %wide.load318) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !92

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.an, <4 x i32> %i.ao)
  %i.aq = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit, label %.lr.ph84.i.i.i.i.preheader408

.lr.ph84.i.i.i.i.preheader408:                    ; preds = %.lr.ph84.i.i.i.i.preheader, %middle.block
  %.05582.i.i.i.i.ph = phi i64 [ %i.m, %.lr.ph84.i.i.i.i.preheader ], [ %i.aj, %middle.block ]
  %.181.i.i.i.i.ph = phi i32 [ %i.ag, %.lr.ph84.i.i.i.i.preheader ], [ %i.aq, %middle.block ]
  br label %.lr.ph84.i.i.i.i

.lr.ph84.i.i.i.i:                                 ; preds = %.lr.ph84.i.i.i.i.preheader408, %.lr.ph84.i.i.i.i
  %.05582.i.i.i.i = phi i64 [ %i.au, %.lr.ph84.i.i.i.i ], [ %.05582.i.i.i.i.ph, %.lr.ph84.i.i.i.i.preheader408 ] ; 2 uses
  %.181.i.i.i.i = phi i32 [ %i.at, %.lr.ph84.i.i.i.i ], [ %.181.i.i.i.i.ph, %.lr.ph84.i.i.i.i.preheader408 ]
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.d, i64 %.05582.i.i.i.i
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !21
  %i.at = tail call noundef i32 @llvm.smax.i32(i32 %.181.i.i.i.i, i32 %i.as) ; 2 uses
  %i.au = add nsw i64 %.05582.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.au, %i.i
  br i1 %exitcond.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit, label %.lr.ph84.i.i.i.i, !llvm.loop !93

bb.f:                                             ; preds = %bb.a
  %i.av = load i32, ptr %i.d, align 4, !tbaa !21  ; 3 uses
  %i.aw = icmp sgt i64 %i.i, 1
  br i1 %i.aw, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit

.lr.ph89.i.i.i.i.preheader:                       ; preds = %bb.f
  %i.ax = add nsw i64 %i.i, -1                    ; 2 uses
  %min.iters.check320 = icmp ult i64 %i.i, 9
  br i1 %min.iters.check320, label %.lr.ph89.i.i.i.i.preheader404, label %vector.ph321

vector.ph321:                                     ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec322 = and i64 %i.ax, -8                   ; 3 uses
  %i.ay = or disjoint i64 %n.vec322, 1
  %broadcast.splatinsert323 = insertelement <4 x i32> poison, i32 %i.av, i64 0
  %broadcast.splat324 = shufflevector <4 x i32> %broadcast.splatinsert323, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body325

vector.body325:                                   ; preds = %vector.body325, %vector.ph321
  %index326 = phi i64 [ 0, %vector.ph321 ], [ %index.next331, %vector.body325 ] ; 2 uses
  %vec.phi327 = phi <4 x i32> [ %broadcast.splat324, %vector.ph321 ], [ %i.bc, %vector.body325 ]
  %vec.phi328 = phi <4 x i32> [ %broadcast.splat324, %vector.ph321 ], [ %i.bd, %vector.body325 ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index326 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 20
  %wide.load329 = load <4 x i32>, ptr %i.ba, align 4, !tbaa !21
  %wide.load330 = load <4 x i32>, ptr %i.bb, align 4, !tbaa !21
  %i.bc = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi327, <4 x i32> %wide.load329) ; 2 uses
  %i.bd = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi328, <4 x i32> %wide.load330) ; 2 uses
  %index.next331 = add nuw i64 %index326, 8       ; 2 uses
  %i.be = icmp eq i64 %index.next331, %n.vec322
  br i1 %i.be, label %middle.block332, label %vector.body325, !llvm.loop !94

middle.block332:                                  ; preds = %vector.body325
  %rdx.minmax333 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.bc, <4 x i32> %i.bd)
  %i.bf = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax333) ; 2 uses
  %cmp.n334 = icmp eq i64 %i.ax, %n.vec322
  br i1 %cmp.n334, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit, label %.lr.ph89.i.i.i.i.preheader404

.lr.ph89.i.i.i.i.preheader404:                    ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block332
  %.087.i.i.i.i.ph = phi i64 [ 1, %.lr.ph89.i.i.i.i.preheader ], [ %i.ay, %middle.block332 ]
  %.286.i.i.i.i.ph = phi i32 [ %i.av, %.lr.ph89.i.i.i.i.preheader ], [ %i.bf, %middle.block332 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader404, %.lr.ph89.i.i.i.i
  %.087.i.i.i.i = phi i64 [ %i.bj, %.lr.ph89.i.i.i.i ], [ %.087.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader404 ] ; 2 uses
  %.286.i.i.i.i = phi i32 [ %i.bi, %.lr.ph89.i.i.i.i ], [ %.286.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader404 ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.087.i.i.i.i
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !21
  %i.bi = tail call noundef i32 @llvm.smax.i32(i32 %.286.i.i.i.i, i32 %i.bh) ; 2 uses
  %i.bj = add nuw nsw i64 %.087.i.i.i.i, 1        ; 2 uses
  %exitcond96.not.i.i.i.i = icmp eq i64 %i.bj, %i.i
  br i1 %exitcond96.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit, label %.lr.ph89.i.i.i.i, !llvm.loop !95

_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit: ; preds = %.lr.ph84.i.i.i.i, %.lr.ph89.i.i.i.i, %middle.block, %middle.block332, %bb.e, %bb.f
  %.3.i.i.i.i = phi i32 [ %i.bi, %.lr.ph89.i.i.i.i ], [ %i.av, %bb.f ], [ %i.ag, %bb.e ], [ %i.bf, %middle.block332 ], [ %i.aq, %middle.block ], [ %i.at, %.lr.ph84.i.i.i.i ] ; 7 uses
  %i.bk = add nsw i32 %.3.i.i.i.i, 1              ; 6 uses
  %i.bl = sext i32 %i.bk to i64                   ; 23 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !18
  %.not.i.i = icmp eq i64 %i.bn, %i.bl
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit
  %i.bo = load ptr, ptr %4, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.bo) #15
  %i.bp = icmp sgt i32 %.3.i.i.i.i, -1
  br i1 %i.bp, label %bb.h, label %.sink.split.i.i

bb.h:                                             ; preds = %bb.g
  %i.bq = shl nuw nsw i64 %i.bl, 2
  %i.br = tail call noalias ptr @malloc(i64 noundef %i.bq) #16 ; 2 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.i, label %.sink.split.i.i

bb.i:                                             ; preds = %bb.h
  %i.bt = tail call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bt, align 8, !tbaa !25
  tail call void @__cxa_throw(ptr nonnull %i.bt, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
  unreachable

.sink.split.i.i:                                  ; preds = %bb.h, %bb.g
  %.sink.i.i = phi ptr [ %i.br, %bb.h ], [ null, %bb.g ]
  store ptr %.sink.i.i, ptr %4, align 8, !tbaa !17
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit, %.sink.split.i.i
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !18
  %.not = icmp eq ptr %3, %1
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  %i.bu = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEaSIS2_EERS2_RKNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(1) %1) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %.not.i.i.i.i102 = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i.i.i102, label %.thread, label %bb.l

.thread:                                          ; preds = %bb.k
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %i.bl, ptr %i.bv, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  br label %bb.t

bb.l:                                             ; preds = %bb.k
  %i.bw = icmp sgt i32 %.3.i.i.i.i, -1
  br i1 %i.bw, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bx = shl nuw nsw i64 %i.bl, 3                ; 2 uses
  %i.by = tail call noalias ptr @malloc(i64 noundef %i.bx) #16 ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ca = tail call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ca, align 8, !tbaa !25
  invoke void @__cxa_throw(ptr nonnull %i.ca, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.noexc.i unwind label %bb.o

.noexc.i:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.cb = landingpad { ptr, i32 }
          cleanup
  %i.cc = load ptr, ptr %8, align 8, !tbaa !29
  tail call void @free(ptr noundef %i.cc) #15
  br label %.body

bb.p:                                             ; preds = %bb.l
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %i.bl, ptr %i.cd, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  br label %.sink.split.i.i.i.i104

bb.q:                                             ; preds = %bb.m
  store ptr %i.by, ptr %8, align 8, !tbaa !29
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %i.bl, ptr %i.ce, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %i.cf = tail call noalias ptr @malloc(i64 noundef %i.bx) #16 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %bb.r, label %.sink.split.i.i.i.i104

bb.r:                                             ; preds = %bb.q
  %i.ch = tail call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ch, align 8, !tbaa !25
  invoke void @__cxa_throw(ptr nonnull %i.ch, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.noexc.i106 unwind label %bb.s

.noexc.i106:                                      ; preds = %bb.r
  unreachable

.sink.split.i.i.i.i104:                           ; preds = %bb.p, %bb.q
  %i.ci = phi ptr [ %i.ce, %bb.q ], [ %i.cd, %bb.p ]
  %.sink.i.i.i.i105 = phi ptr [ %i.cf, %bb.q ], [ null, %bb.p ]
  %i.cj = ptrtoint ptr %.sink.i.i.i.i105 to i64
  br label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ck = landingpad { ptr, i32 }
          cleanup
  %i.cl = load ptr, ptr %9, align 8, !tbaa !29
  tail call void @free(ptr noundef %i.cl) #15
  br label %.body107

bb.t:                                             ; preds = %.sink.split.i.i.i.i104, %.thread
  %storemerge = phi i64 [ 0, %.thread ], [ %i.cj, %.sink.split.i.i.i.i104 ]
  %i.cm = phi ptr [ %i.bv, %.thread ], [ %i.ci, %.sink.split.i.i.i.i104 ]
  store i64 %storemerge, ptr %9, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 %i.bl, ptr %i.cn, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  store <2 x double> splat (double f0x3FE279A74590331D), ptr %10, align 16, !tbaa !19, !alias.scope !125
  %i.co = getelementptr inbounds nuw i8, ptr %10, i64 16
  store double f0x3FE279A74590331D, ptr %i.co, align 16, !tbaa !31, !alias.scope !125
  invoke void @_ZN3igl16per_face_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi3ELi1ELi0ELi3ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERNS1_15PlainObjectBaseIT2_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  invoke void @_ZN3igl10barycenterIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.v unwind label %bb.af

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i unwind label %bb.af

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i: ; preds = %bb.v
  %or.cond = icmp sgt i32 %.3.i.i.i.i, -1
  br i1 %or.cond, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantEllRKd.exit

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i
  %i.cp = mul nuw nsw i64 %i.bl, 24
  %calloc = call ptr @calloc(i64 1, i64 %i.cp)    ; 2 uses
  %i.cq = icmp eq ptr %calloc, null
  br i1 %i.cq, label %bb.w, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantEllRKd.exit

bb.w:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  %i.cr = call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.cr, align 8, !tbaa !25
  invoke void @__cxa_throw(ptr nonnull %i.cr, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.noexc130 unwind label %bb.af

.noexc130:                                        ; preds = %bb.w
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantEllRKd.exit: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i
  %.sroa.0.3234 = phi ptr [ null, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i ], [ %calloc, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i ] ; 11 uses
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %9, i64 noundef %i.bl, i64 noundef 1)
          to label %.noexc114 unwind label %bb.y

.noexc114:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantEllRKd.exit
  %i.cs = load i64, ptr %i.cn, align 8, !tbaa !28 ; 2 uses
  %i.ct = icmp slt i64 %i.cs, 1
  br i1 %i.ct, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantEllRKd.exit, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantEllRKd.exit.loopexit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantEllRKd.exit.loopexit: ; preds = %.noexc114
  %i.cu = load ptr, ptr %9, align 8, !tbaa !29
  %.idx.i.i.i.i.i.i.i.i.i.i.i110 = shl nuw nsw i64 %i.cs, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cu, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i110, i1 false), !tbaa !31
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantEllRKd.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantEllRKd.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantEllRKd.exit.loopexit, %.noexc114
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 noundef %i.bl, i64 noundef 1)
          to label %.noexc119 unwind label %bb.y

.noexc119:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantEllRKd.exit
  %i.cv = load i64, ptr %i.cm, align 8, !tbaa !28 ; 2 uses
  %i.cw = icmp slt i64 %i.cv, 1
  br i1 %i.cw, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantEllRKd.exit120, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantEllRKd.exit120.loopexit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantEllRKd.exit120.loopexit: ; preds = %.noexc119
  %i.cx = load ptr, ptr %8, align 8, !tbaa !29
  %.idx.i.i.i.i.i.i.i.i.i.i.i115 = shl nuw nsw i64 %i.cv, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cx, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i115, i1 false), !tbaa !31
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantEllRKd.exit120

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantEllRKd.exit120: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantEllRKd.exit120.loopexit, %.noexc119
  %i.cy = icmp sgt i32 %i.c, 0                    ; 3 uses
  br i1 %i.cy, label %.lr.ph, label %.preheader245

.lr.ph:                                           ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantEllRKd.exit120
  %i.cz = load ptr, ptr %7, align 8, !tbaa !29
  %i.da = load ptr, ptr %6, align 8, !tbaa !33, !noalias !126
  %i.db = load ptr, ptr %2, align 8, !tbaa !36
  %i.dc = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !34 ; 2 uses
  %i.de = load ptr, ptr %8, align 8, !tbaa !29
  %wide.trip.count = and i64 %i.b, 2147483647
  %.idx = shl nsw i64 %i.bl, 4
  %.idx305 = shl nsw i64 %i.dd, 4
  br label %.lr.ph.i.i.i.i.i.i

.preheader245:                                    ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantEllRKd.exit120
  %.not239252 = icmp slt i32 %.3.i.i.i.i, 0       ; 2 uses
  br i1 %.not239252, label %.preheader244, label %.lr.ph254

.lr.ph254:                                        ; preds = %.preheader245
  %i.df = load ptr, ptr %8, align 8, !tbaa !29    ; 2 uses
  %wide.trip.count271 = zext nneg i32 %i.bk to i64 ; 4 uses
  %.idx306 = shl nuw nsw i64 %i.bl, 4             ; 3 uses
  %min.iters.check349 = icmp ult i32 %i.bk, 2
  br i1 %min.iters.check349, label %.lr.ph.i.i.i.i.i.i121.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph254
  %i.dg = shl nuw nsw i64 %wide.trip.count271, 3  ; 2 uses
  %i.dh = getelementptr i8, ptr %.sroa.0.3234, i64 %i.dg
  %i.di = getelementptr i8, ptr %.sroa.0.3234, i64 %.idx306
  %12 = zext nneg i32 %.3.i.i.i.i to i64
  %i.dj = shl nuw nsw i64 %12, 4
  %i.dk = getelementptr i8, ptr %.sroa.0.3234, i64 %i.dj
  %i.dl = getelementptr i8, ptr %i.dk, i64 %i.dg
  %i.dm = getelementptr i8, ptr %i.dl, i64 16
  %bound0353 = icmp ult ptr %.sroa.0.3234, %i.dm
  %bound1354 = icmp ult ptr %i.di, %i.dh
  %found.conflict355 = and i1 %bound0353, %bound1354
  br i1 %found.conflict355, label %.lr.ph.i.i.i.i.i.i121.preheader, label %vector.ph357

vector.ph357:                                     ; preds = %vector.memcheck
  %n.vec358 = and i64 %wide.trip.count271, 2147483646 ; 3 uses
  br label %vector.body359

vector.body359:                                   ; preds = %vector.body359, %vector.ph357
  %index360 = phi i64 [ 0, %vector.ph357 ], [ %index.next365, %vector.body359 ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %index360
  %wide.load361 = load <2 x double>, ptr %i.dn, align 8, !tbaa !31 ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.3234, i64 %index360 ; 4 uses
  %wide.load362 = load <2 x double>, ptr %i.do, align 8, !tbaa !31, !alias.scope !127, !noalias !128
  %i.dp = fdiv <2 x double> %wide.load362, %wide.load361
  store <2 x double> %i.dp, ptr %i.do, align 8, !tbaa !31, !alias.scope !127, !noalias !128
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.bl ; 2 uses
  %wide.load363 = load <2 x double>, ptr %i.dq, align 8, !tbaa !31, !alias.scope !129
  %i.dr = fdiv <2 x double> %wide.load363, %wide.load361
  store <2 x double> %i.dr, ptr %i.dq, align 8, !tbaa !31, !alias.scope !129
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 %.idx306 ; 2 uses
  %wide.load364 = load <2 x double>, ptr %i.ds, align 8, !tbaa !31, !alias.scope !128
  %i.dt = fdiv <2 x double> %wide.load364, %wide.load361
  store <2 x double> %i.dt, ptr %i.ds, align 8, !tbaa !31, !alias.scope !128
  %index.next365 = add nuw i64 %index360, 2       ; 2 uses
  %i.du = icmp eq i64 %index.next365, %n.vec358
  br i1 %i.du, label %middle.block366, label %vector.body359, !llvm.loop !104

middle.block366:                                  ; preds = %vector.body359
  %cmp.n367 = icmp eq i64 %n.vec358, %wide.trip.count271
  br i1 %cmp.n367, label %.preheader244, label %.lr.ph.i.i.i.i.i.i121.preheader

.lr.ph.i.i.i.i.i.i121.preheader:                  ; preds = %vector.memcheck, %.lr.ph254, %middle.block366
  %indvars.iv268.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph254 ], [ %n.vec358, %middle.block366 ]
  br label %.lr.ph.i.i.i.i.i.i121

bb.x:                                             ; preds = %bb.t
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br label %bb.ah

bb.y:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantEllRKd.exit, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantEllRKd.exit
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph, %.lr.ph.i.i.i.i.i.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.lr.ph.i.i.i.i.i.i ] ; 4 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv ; 3 uses
  %i.dz = load double, ptr %i.dx, align 8, !tbaa !31, !noalias !130 ; 4 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !21
  %i.ec = sext i32 %i.eb to i64                   ; 2 uses
  %i.ed = getelementptr inbounds [8 x i8], ptr %.sroa.0.3234, i64 %i.ec ; 4 uses
  %i.ee = load double, ptr %i.dy, align 8, !tbaa !31
  %i.ef = fmul double %i.dz, %i.ee
  %i.eg = load double, ptr %i.ed, align 8, !tbaa !31
  %i.eh = fadd double %i.ef, %i.eg
  store double %i.eh, ptr %i.ed, align 8, !tbaa !31
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %i.bl ; 2 uses
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.dd
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !31
  %i.el = fmul double %i.dz, %i.ek
  %i.em = load double, ptr %i.ei, align 8, !tbaa !31
  %i.en = fadd double %i.el, %i.em
  store double %i.en, ptr %i.ei, align 8, !tbaa !31
  %i.eo = getelementptr inbounds i8, ptr %i.ed, i64 %.idx ; 2 uses
  %i.ep = getelementptr inbounds i8, ptr %i.dy, i64 %.idx305
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !31
  %i.er = fmul double %i.dz, %i.eq
  %i.es = load double, ptr %i.eo, align 8, !tbaa !31
  %i.et = fadd double %i.er, %i.es
  store double %i.et, ptr %i.eo, align 8, !tbaa !31
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.de, i64 %i.ec ; 2 uses
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !31
  %i.ew = fadd double %i.dz, %i.ev
  store double %i.ew, ptr %i.eu, align 8, !tbaa !31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader245, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !107

.preheader244:                                    ; preds = %.lr.ph.i.i.i.i.i.i121, %middle.block366, %.preheader245
  br i1 %i.cy, label %.lr.ph256, label %.preheader242

.lr.ph256:                                        ; preds = %.preheader244
  %i.ex = load ptr, ptr %2, align 8, !tbaa !36
  %i.ey = load ptr, ptr %6, align 8, !tbaa !33, !noalias !131
  %i.ez = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !35, !noalias !131 ; 10 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !34 ; 7 uses
  %i.fd = icmp sgt i64 %i.fa, 0
  %i.fe = load ptr, ptr %7, align 8               ; 2 uses
  %i.ff = icmp eq i64 %i.fa, 0
  %i.fg = load ptr, ptr %5, align 8               ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fi = load i64, ptr %i.fh, align 8            ; 3 uses
  %i.fj = load ptr, ptr %9, align 8, !tbaa !29
  %wide.trip.count276 = and i64 %i.b, 2147483647
  %i.fk = add i64 %i.fa, -1                       ; 4 uses
  %min.iters.check370 = icmp ugt i64 %i.fa, 3
  %ident.check.not = icmp eq i64 %i.fc, 1
  %or.cond400 = select i1 %min.iters.check370, i1 %ident.check.not, i1 false
  %n.vec372 = and i64 %i.fa, 9223372036854775804  ; 3 uses
  %cmp.n379 = icmp eq i64 %i.fa, %n.vec372
  %xtraiter = and i64 %i.fa, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %xtraiter415 = and i64 %i.fk, 1
  %i.fl = icmp eq i64 %i.fa, 2                    ; 0 uses
  %unroll_iter = and i64 %i.fk, -2
  %lcmp.mod416.not = icmp eq i64 %xtraiter415, 0
  %lcmp.mod418 = trunc i64 %i.fk to i1
  br label %bb.z

.lr.ph.i.i.i.i.i.i121:                            ; preds = %.lr.ph.i.i.i.i.i.i121.preheader, %.lr.ph.i.i.i.i.i.i121
  %indvars.iv268 = phi i64 [ %indvars.iv.next269, %.lr.ph.i.i.i.i.i.i121 ], [ %indvars.iv268.ph, %.lr.ph.i.i.i.i.i.i121.preheader ] ; 3 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv268
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !31 ; 3 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.3234, i64 %indvars.iv268 ; 4 uses
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !31
  %i.fq = fdiv double %i.fp, %i.fn
  store double %i.fq, ptr %i.fo, align 8, !tbaa !31
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.bl ; 2 uses
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !31
  %i.ft = fdiv double %i.fs, %i.fn
  store double %i.ft, ptr %i.fr, align 8, !tbaa !31
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fo, i64 %.idx306 ; 2 uses
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !31
  %i.fw = fdiv double %i.fv, %i.fn
  store double %i.fw, ptr %i.fu, align 8, !tbaa !31
  %indvars.iv.next269 = add nuw nsw i64 %indvars.iv268, 1 ; 2 uses
  %exitcond272.not = icmp eq i64 %indvars.iv.next269, %wide.trip.count271
  br i1 %exitcond272.not, label %.preheader244, label %.lr.ph.i.i.i.i.i.i121, !llvm.loop !110

.preheader242:                                    ; preds = %.loopexit243, %.preheader244
  br i1 %.not239252, label %.preheader, label %.lr.ph259

.lr.ph259:                                        ; preds = %.preheader242
  %i.fx = load ptr, ptr %8, align 8, !tbaa !29    ; 3 uses
  %i.fy = load ptr, ptr %9, align 8, !tbaa !29    ; 3 uses
  %wide.trip.count281 = zext nneg i32 %i.bk to i64 ; 2 uses
  %xtraiter419 = and i64 %wide.trip.count281, 1
  %i.fz = icmp eq i32 %.3.i.i.i.i, 0
  br i1 %i.fz, label %.epil.preheader, label %.lr.ph259.new

.lr.ph259.new:                                    ; preds = %.lr.ph259
  %unroll_iter422 = and i64 %wide.trip.count281, 2147483646
  %i.ga = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  br label %bb.ab

bb.z:                                             ; preds = %.lr.ph256, %.loopexit243
  %indvars.iv273 = phi i64 [ 0, %.lr.ph256 ], [ %indvars.iv.next274, %.loopexit243 ] ; 7 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv273
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !21
  %i.gd = sext i32 %i.gc to i64                   ; 2 uses
  %i.ge = getelementptr inbounds [8 x i8], ptr %.sroa.0.3234, i64 %i.gd ; 7 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %indvars.iv273 ; 9 uses
  br i1 %i.fd, label %.lr.ph.i.i.i.i.i.i124.preheader, label %bb.aa

.lr.ph.i.i.i.i.i.i124.preheader:                  ; preds = %bb.z
  br i1 %or.cond400, label %vector.body373, label %.lr.ph.i.i.i.i.i.i124.preheader403

vector.body373:                                   ; preds = %.lr.ph.i.i.i.i.i.i124.preheader, %vector.body373
  %index374 = phi i64 [ %index.next377, %vector.body373 ], [ 0, %.lr.ph.i.i.i.i.i.i124.preheader ] ; 6 uses
  %i.gg = or disjoint i64 %index374, 1
  %i.gh = or disjoint i64 %index374, 2
  %i.gi = or disjoint i64 %index374, 3
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.gf, i64 %index374 ; 3 uses
  %i.gk = mul nsw i64 %index374, %i.bl
  %i.gl = mul nsw i64 %i.gg, %i.bl
  %i.gm = mul nsw i64 %i.gh, %i.bl
  %i.gn = mul nsw i64 %i.gi, %i.bl
  %i.go = getelementptr inbounds [8 x i8], ptr %i.ge, i64 %i.gk
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.ge, i64 %i.gl
  %i.gq = getelementptr inbounds [8 x i8], ptr %i.ge, i64 %i.gm
  %i.gr = getelementptr inbounds [8 x i8], ptr %i.ge, i64 %i.gn
  %i.gs = load double, ptr %i.go, align 8, !tbaa !31
  %i.gt = load double, ptr %i.gp, align 8, !tbaa !31
  %i.gu = insertelement <2 x double> poison, double %i.gs, i64 0
  %i.gv = insertelement <2 x double> %i.gu, double %i.gt, i64 1
  %i.gw = load double, ptr %i.gq, align 8, !tbaa !31
  %i.gx = load double, ptr %i.gr, align 8, !tbaa !31
  %i.gy = insertelement <2 x double> poison, double %i.gw, i64 0
  %i.gz = insertelement <2 x double> %i.gy, double %i.gx, i64 1
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gj, i64 16 ; 2 uses
  %wide.load375 = load <2 x double>, ptr %i.gj, align 8, !tbaa !31
  %wide.load376 = load <2 x double>, ptr %i.ha, align 8, !tbaa !31
  %i.hb = fsub <2 x double> %wide.load375, %i.gv
  %i.hc = fsub <2 x double> %wide.load376, %i.gz
  store <2 x double> %i.hb, ptr %i.gj, align 8, !tbaa !31
  store <2 x double> %i.hc, ptr %i.ha, align 8, !tbaa !31
  %index.next377 = add nuw i64 %index374, 4       ; 2 uses
  %i.hd = icmp eq i64 %index.next377, %n.vec372
  br i1 %i.hd, label %middle.block378, label %vector.body373, !llvm.loop !111

middle.block378:                                  ; preds = %vector.body373
  br i1 %cmp.n379, label %.loopexit399, label %.lr.ph.i.i.i.i.i.i124.preheader403

.lr.ph.i.i.i.i.i.i124.preheader403:               ; preds = %.lr.ph.i.i.i.i.i.i124.preheader, %middle.block378
  %.05.i.i.i.i.i.i125.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i124.preheader ], [ %n.vec372, %middle.block378 ] ; 5 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i124.prol.loopexit, label %.lr.ph.i.i.i.i.i.i124.prol

.lr.ph.i.i.i.i.i.i124.prol:                       ; preds = %.lr.ph.i.i.i.i.i.i124.preheader403
  %i.he = mul nsw i64 %.05.i.i.i.i.i.i125.ph, %i.fc
  %i.hf = getelementptr inbounds [8 x i8], ptr %i.gf, i64 %i.he ; 2 uses
  %i.hg = mul nsw i64 %.05.i.i.i.i.i.i125.ph, %i.bl
  %i.hh = getelementptr inbounds [8 x i8], ptr %i.ge, i64 %i.hg
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !31
  %i.hj = load double, ptr %i.hf, align 8, !tbaa !31
  %i.hk = fsub double %i.hj, %i.hi
  store double %i.hk, ptr %i.hf, align 8, !tbaa !31
  %i.hl = or disjoint i64 %.05.i.i.i.i.i.i125.ph, 1
  br label %.lr.ph.i.i.i.i.i.i124.prol.loopexit

.lr.ph.i.i.i.i.i.i124.prol.loopexit:              ; preds = %.lr.ph.i.i.i.i.i.i124.prol, %.lr.ph.i.i.i.i.i.i124.preheader403
  %.05.i.i.i.i.i.i125.unr = phi i64 [ %.05.i.i.i.i.i.i125.ph, %.lr.ph.i.i.i.i.i.i124.preheader403 ], [ %i.hl, %.lr.ph.i.i.i.i.i.i124.prol ]
  %i.hm = icmp eq i64 %i.fk, %.05.i.i.i.i.i.i125.ph
  br i1 %i.hm, label %.loopexit399, label %.lr.ph.i.i.i.i.i.i124

.lr.ph.i.i.i.i.i.i124:                            ; preds = %.lr.ph.i.i.i.i.i.i124.prol.loopexit, %.lr.ph.i.i.i.i.i.i124
  %.05.i.i.i.i.i.i125 = phi i64 [ %i.ic, %.lr.ph.i.i.i.i.i.i124 ], [ %.05.i.i.i.i.i.i125.unr, %.lr.ph.i.i.i.i.i.i124.prol.loopexit ] ; 4 uses
  %i.hn = mul nsw i64 %.05.i.i.i.i.i.i125, %i.fc
  %i.ho = getelementptr inbounds [8 x i8], ptr %i.gf, i64 %i.hn ; 2 uses
  %i.hp = mul nsw i64 %.05.i.i.i.i.i.i125, %i.bl
  %i.hq = getelementptr inbounds [8 x i8], ptr %i.ge, i64 %i.hp
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !31
  %i.hs = load double, ptr %i.ho, align 8, !tbaa !31
  %i.ht = fsub double %i.hs, %i.hr
  store double %i.ht, ptr %i.ho, align 8, !tbaa !31
  %i.hu = add nuw nsw i64 %.05.i.i.i.i.i.i125, 1  ; 2 uses
  %i.hv = mul nsw i64 %i.hu, %i.fc
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.gf, i64 %i.hv ; 2 uses
  %i.hx = mul nsw i64 %i.hu, %i.bl
  %i.hy = getelementptr inbounds [8 x i8], ptr %i.ge, i64 %i.hx
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !31
  %i.ia = load double, ptr %i.hw, align 8, !tbaa !31
  %i.ib = fsub double %i.ia, %i.hz
  store double %i.ib, ptr %i.hw, align 8, !tbaa !31
  %i.ic = add nuw nsw i64 %.05.i.i.i.i.i.i125, 2  ; 2 uses
  %exitcond.not.i.i.i.i.i.i126.1 = icmp eq i64 %i.ic, %i.fa
  br i1 %exitcond.not.i.i.i.i.i.i126.1, label %.loopexit399, label %.lr.ph.i.i.i.i.i.i124, !llvm.loop !112

bb.aa:                                            ; preds = %bb.z
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv273
  %i.ie = load double, ptr %i.id, align 8, !tbaa !31 ; 2 uses
  br i1 %i.ff, label %.loopexit243, label %.thread238

.thread238:                                       ; preds = %bb.aa
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %indvars.iv273
  %i.ig = load double, ptr %i.if, align 8, !tbaa !31
  %i.ih = load double, ptr %i.gf, align 8, !tbaa !31
  %i.ii = fmul double %i.ig, %i.ih
  br label %.loopexit243

.loopexit399:                                     ; preds = %.lr.ph.i.i.i.i.i.i124.prol.loopexit, %.lr.ph.i.i.i.i.i.i124, %middle.block378
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv273
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !31 ; 3 uses
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %indvars.iv273 ; 4 uses
  %i.im = load double, ptr %i.il, align 8, !tbaa !31
  %i.in = load double, ptr %i.gf, align 8, !tbaa !31
  %i.io = fmul double %i.im, %i.in                ; 3 uses
  switch i64 %i.fa, label %.lr.ph.i.i.i.i.i [
    i64 1, label %.loopexit243
    i64 2, label %.lr.ph.i.i.i.i.i.epil.preheader
  ]

.lr.ph.i.i.i.i.i:                                 ; preds = %.loopexit399, %.lr.ph.i.i.i.i.i
  %.01724.i.i.i.i.i = phi i64 [ %i.jg, %.lr.ph.i.i.i.i.i ], [ 1, %.loopexit399 ] ; 4 uses
  %.02223.i.i.i.i.i = phi double [ %i.jf, %.lr.ph.i.i.i.i.i ], [ %i.io, %.loopexit399 ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i.i.i.i.i ], [ 0, %.loopexit399 ]
  %i.ip = mul nsw i64 %.01724.i.i.i.i.i, %i.fi
  %i.iq = getelementptr [8 x i8], ptr %i.il, i64 %i.ip
  %i.ir = mul nsw i64 %.01724.i.i.i.i.i, %i.fc
  %i.is = getelementptr [8 x i8], ptr %i.gf, i64 %i.ir
  %i.it = load double, ptr %i.iq, align 8, !tbaa !31
  %i.iu = load double, ptr %i.is, align 8, !tbaa !31
  %i.iv = fmul double %i.it, %i.iu
  %i.iw = fadd double %.02223.i.i.i.i.i, %i.iv
  %i.ix = add nuw nsw i64 %.01724.i.i.i.i.i, 1    ; 2 uses
  %i.iy = mul nsw i64 %i.ix, %i.fi
  %i.iz = getelementptr [8 x i8], ptr %i.il, i64 %i.iy
  %i.ja = mul nsw i64 %i.ix, %i.fc
  %i.jb = getelementptr [8 x i8], ptr %i.gf, i64 %i.ja
  %i.jc = load double, ptr %i.iz, align 8, !tbaa !31
  %i.jd = load double, ptr %i.jb, align 8, !tbaa !31
  %i.je = fmul double %i.jc, %i.jd
  %i.jf = fadd double %i.iw, %i.je                ; 3 uses
  %i.jg = add nuw nsw i64 %.01724.i.i.i.i.i, 2    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit243.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

.loopexit243.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i.i.i.i.i
  br i1 %lcmp.mod416.not, label %.loopexit243, label %.lr.ph.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.epil.preheader:                  ; preds = %.loopexit399, %.loopexit243.loopexit.unr-lcssa
  %.01724.i.i.i.i.i.epil.init = phi i64 [ 1, %.loopexit399 ], [ %i.jg, %.loopexit243.loopexit.unr-lcssa ] ; 2 uses
  %.02223.i.i.i.i.i.epil.init = phi double [ %i.io, %.loopexit399 ], [ %i.jf, %.loopexit243.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod418)
  %i.jh = mul nsw i64 %.01724.i.i.i.i.i.epil.init, %i.fi
  %i.ji = getelementptr [8 x i8], ptr %i.il, i64 %i.jh
  %i.jj = mul nsw i64 %.01724.i.i.i.i.i.epil.init, %i.fc
  %i.jk = getelementptr [8 x i8], ptr %i.gf, i64 %i.jj
  %i.jl = load double, ptr %i.ji, align 8, !tbaa !31
  %i.jm = load double, ptr %i.jk, align 8, !tbaa !31
  %i.jn = fmul double %i.jl, %i.jm
  %i.jo = fadd double %.02223.i.i.i.i.i.epil.init, %i.jn
  br label %.loopexit243

.loopexit243:                                     ; preds = %.lr.ph.i.i.i.i.i.epil.preheader, %.loopexit243.loopexit.unr-lcssa, %.loopexit399, %bb.aa, %.thread238
  %i.jp = phi double [ %i.ie, %bb.aa ], [ %i.ik, %.loopexit399 ], [ %i.ie, %.thread238 ], [ %i.ik, %.loopexit243.loopexit.unr-lcssa ], [ %i.ik, %.lr.ph.i.i.i.i.i.epil.preheader ]
  %.0.i.i.i = phi double [ 0.000000e+00, %bb.aa ], [ %i.io, %.loopexit399 ], [ %i.ii, %.thread238 ], [ %i.jf, %.loopexit243.loopexit.unr-lcssa ], [ %i.jo, %.lr.ph.i.i.i.i.i.epil.preheader ]
  %i.jq = getelementptr inbounds [8 x i8], ptr %i.fj, i64 %i.gd ; 2 uses
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !31
  %i.js = call double @llvm.fmuladd.f64(double %i.jp, double %.0.i.i.i, double %i.jr)
  store double %i.js, ptr %i.jq, align 8, !tbaa !31
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, 1 ; 2 uses
  %exitcond277.not = icmp eq i64 %indvars.iv.next274, %wide.trip.count276
  br i1 %exitcond277.not, label %.preheader242, label %bb.z, !llvm.loop !113

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.ab
  %lcmp.mod420.not = icmp eq i64 %xtraiter419, 0
  br i1 %lcmp.mod420.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph259
  %indvars.iv278.epil.init = phi i64 [ 0, %.lr.ph259 ], [ %indvars.iv.next279.1, %.preheader.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod421 = trunc i32 %i.bk to i1
  call void @llvm.assume(i1 %lcmp.mod421)
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %indvars.iv278.epil.init
  %i.ju = load double, ptr %i.jt, align 8, !tbaa !31
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %indvars.iv278.epil.init ; 2 uses
  %i.jw = load double, ptr %i.jv, align 8, !tbaa !31
  %i.jx = fdiv double %i.jw, %i.ju                ; 2 uses
  store double %i.jx, ptr %i.jv, align 8, !tbaa !31
  %i.jy = fcmp olt double %i.jx, 0.000000e+00
  %i.jz = load ptr, ptr %4, align 8, !tbaa !17
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %indvars.iv278.epil.init
  %..epil = zext i1 %i.jy to i32
  store i32 %..epil, ptr %i.ka, align 4, !tbaa !21
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %.preheader242
  br i1 %i.cy, label %.lr.ph261, label %._crit_edge

.lr.ph261:                                        ; preds = %.preheader
  %i.kb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %11, i64 8
  %wide.trip.count286 = and i64 %i.b, 2147483647
  br label %bb.ac

bb.ab:                                            ; preds = %bb.ab, %.lr.ph259.new
  %indvars.iv278 = phi i64 [ 0, %.lr.ph259.new ], [ %indvars.iv.next279.1, %bb.ab ] ; 5 uses
  %niter423 = phi i64 [ 0, %.lr.ph259.new ], [ %niter423.next.1, %bb.ab ]
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %indvars.iv278
  %i.kf = load double, ptr %i.ke, align 8, !tbaa !31
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %indvars.iv278 ; 2 uses
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !31
  %i.ki = fdiv double %i.kh, %i.kf                ; 2 uses
  store double %i.ki, ptr %i.kg, align 8, !tbaa !31
  %i.kj = fcmp olt double %i.ki, 0.000000e+00
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %indvars.iv278
  %. = zext i1 %i.kj to i32
  store i32 %., ptr %i.kk, align 4, !tbaa !21
  %indvars.iv.next279 = or disjoint i64 %indvars.iv278, 1 ; 3 uses
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %indvars.iv.next279
  %i.km = load double, ptr %i.kl, align 8, !tbaa !31
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %indvars.iv.next279 ; 2 uses
  %i.ko = load double, ptr %i.kn, align 8, !tbaa !31
  %i.kp = fdiv double %i.ko, %i.km                ; 2 uses
  store double %i.kp, ptr %i.kn, align 8, !tbaa !31
  %i.kq = fcmp olt double %i.kp, 0.000000e+00
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %indvars.iv.next279
  %..1 = zext i1 %i.kq to i32
  store i32 %..1, ptr %i.kr, align 4, !tbaa !21
  %indvars.iv.next279.1 = add nuw nsw i64 %indvars.iv278, 2 ; 2 uses
  %niter423.next.1 = add i64 %niter423, 2         ; 2 uses
  %niter423.ncmp.1 = icmp eq i64 %niter423.next.1, %unroll_iter422
  br i1 %niter423.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.ab, !llvm.loop !114

._crit_edge:                                      ; preds = %bb.ag, %.preheader
  %i.ks = load ptr, ptr %9, align 8, !tbaa !29
  call void @free(ptr noundef %i.ks) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  %i.kt = load ptr, ptr %8, align 8, !tbaa !29
  call void @free(ptr noundef %i.kt) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  %i.ku = load ptr, ptr %7, align 8, !tbaa !29
  call void @free(ptr noundef %i.ku) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @free(ptr noundef %.sroa.0.3234) #15
  %i.kv = load ptr, ptr %6, align 8, !tbaa !33
  call void @free(ptr noundef %i.kv) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.kw = load ptr, ptr %5, align 8, !tbaa !33
  call void @free(ptr noundef %i.kw) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  ret void

bb.ac:                                            ; preds = %.lr.ph261, %bb.ag
  %indvars.iv283 = phi i64 [ 0, %.lr.ph261 ], [ %indvars.iv.next284, %bb.ag ] ; 5 uses
  %i.kx = load ptr, ptr %2, align 8, !tbaa !36
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %indvars.iv283
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !21
  %i.la = sext i32 %i.kz to i64
  %i.lb = load ptr, ptr %4, align 8, !tbaa !17
  %i.lc = getelementptr inbounds [4 x i8], ptr %i.lb, i64 %i.la
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !21
  %.not81 = icmp eq i32 %i.ld, 0
  br i1 %.not81, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  %i.le = load ptr, ptr %3, align 8, !tbaa !36, !noalias !132
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %indvars.iv283 ; 3 uses
  %i.lg = load i64, ptr %i.kb, align 8, !tbaa !37, !noalias !38 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !133)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false), !alias.scope !133
  %i.lh = load i64, ptr %i.kc, align 8, !tbaa !15, !noalias !133 ; 3 uses
  %.not8.i.i.i.i.i.i.i.i = icmp eq i64 %i.lg, 0
  br i1 %.not8.i.i.i.i.i.i.i.i, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IiLi1ELin1ELi1ELi1ELin1EEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %thread-pre-split.i.i.i.i.i.i.i

thread-pre-split.i.i.i.i.i.i.i:                   ; preds = %bb.ad
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLi1ELin1ELi1ELi1ELin1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %11, i64 noundef 1, i64 noundef %i.lg)
          to label %bb.ae unwind label %.body127

bb.ae:                                            ; preds = %thread-pre-split.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i = load i64, ptr %i.kd, align 8, !tbaa !40, !alias.scope !133 ; 5 uses
  %.pre.i.i = load ptr, ptr %11, align 8, !tbaa !41, !alias.scope !133 ; 4 uses
  %i.li = icmp sgt i64 %.pr.i.i.i.i.i.i.i, 0
  br i1 %i.li, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %.loopexit

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.ae
  %xtraiter424 = and i64 %.pr.i.i.i.i.i.i.i, 1
  %i.lj = icmp eq i64 %.pr.i.i.i.i.i.i.i, 1
  br i1 %i.lj, label %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.preheader.new:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %unroll_iter427 = and i64 %.pr.i.i.i.i.i.i.i, 9223372036854775806
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader.new
  %.05.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader.new ], [ %i.lx, %.lr.ph.i.i.i.i.i.i.i.i ] ; 5 uses
  %niter428 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader.new ], [ %niter428.next.1, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %.05.i.i.i.i.i.i.i.i
  %i.ll = xor i64 %.05.i.i.i.i.i.i.i.i, -1
  %i.lm = add i64 %i.lg, %i.ll
  %i.ln = mul nsw i64 %i.lm, %i.lh
  %i.lo = getelementptr inbounds [4 x i8], ptr %i.lf, i64 %i.ln
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !21
  store i32 %i.lp, ptr %i.lk, align 4, !tbaa !21
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %.05.i.i.i.i.i.i.i.i
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 4
  %i.ls = xor i64 %.05.i.i.i.i.i.i.i.i, -2
  %i.lt = add i64 %i.lg, %i.ls
  %i.lu = mul nsw i64 %i.lt, %i.lh
  %i.lv = getelementptr inbounds [4 x i8], ptr %i.lf, i64 %i.lu
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !21
  store i32 %i.lw, ptr %i.lr, align 4, !tbaa !21
  %i.lx = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %niter428.next.1 = add nuw nsw i64 %niter428, 2 ; 2 uses
  %niter428.ncmp.1 = icmp eq i64 %niter428.next.1, %unroll_iter427
  br i1 %niter428.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1

.body127:                                         ; preds = %thread-pre-split.i.i.i.i.i.i.i
  %i.ly = landingpad { ptr, i32 }
          cleanup
  %i.lz = load ptr, ptr %11, align 8, !tbaa !41, !alias.scope !133
  call void @free(ptr noundef %i.lz) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  br label %bb.ah

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %lcmp.mod425.not = icmp eq i64 %xtraiter424, 0
  br i1 %lcmp.mod425.not, label %.loopexit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.epil.preheader:            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %.05.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.lx, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod426 = trunc i64 %.pr.i.i.i.i.i.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod426)
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %.05.i.i.i.i.i.i.i.i.epil.init
  %i.mb = xor i64 %.05.i.i.i.i.i.i.i.i.epil.init, -1
  %i.mc = add i64 %i.lg, %i.mb
  %i.md = mul nsw i64 %i.mc, %i.lh
  %i.me = getelementptr inbounds [4 x i8], ptr %i.lf, i64 %i.md
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !21
  store i32 %i.mf, ptr %i.ma, align 4, !tbaa !21
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader
  %.pre = load ptr, ptr %11, align 8, !tbaa !41
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.ae
  %.ph = phi ptr [ %.pre.i.i, %bb.ae ], [ %.pre, %.loopexit.loopexit ] ; 11 uses
  %.ph385 = ptrtoaddr ptr %.ph to i64
  %.pr = load i64, ptr %i.kb, align 8, !tbaa !37, !noalias !134 ; 7 uses
  %i.mg = load ptr, ptr %3, align 8, !tbaa !36, !noalias !134 ; 2 uses
  %i.mh = ptrtoaddr ptr %i.mg to i64
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %indvars.iv283 ; 6 uses
  %i.mj = load i64, ptr %i.kc, align 8, !tbaa !15 ; 6 uses
  %i.mk = icmp sgt i64 %.pr, 0
  br i1 %i.mk, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IiLi1ELin1ELi1ELi1ELin1EEEEERS3_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %.loopexit
  %min.iters.check387 = icmp ugt i64 %.pr, 7
  %ident.check382.not = icmp eq i64 %i.mj, 1
  %or.cond401 = select i1 %min.iters.check387, i1 %ident.check382.not, i1 false
  br i1 %or.cond401, label %vector.memcheck388, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader402

vector.memcheck388:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %i.ml = shl i64 %indvars.iv283, 2
  %i.mm = add i64 %i.ml, %i.mh
  %i.mn = sub i64 %.ph385, %i.mm
  %diff.check = icmp ugt i64 %i.mn, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader402, label %vector.ph389

vector.ph389:                                     ; preds = %vector.memcheck388
  %n.vec390 = and i64 %.pr, 9223372036854775800   ; 3 uses
  br label %vector.body391

vector.body391:                                   ; preds = %vector.body391, %vector.ph389
  %index392 = phi i64 [ 0, %vector.ph389 ], [ %index.next395, %vector.body391 ] ; 3 uses
  %i.mo = getelementptr inbounds [4 x i8], ptr %i.mi, i64 %index392 ; 2 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %.ph, i64 %index392 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 16
  %wide.load393 = load <4 x i32>, ptr %i.mp, align 4, !tbaa !21
  %wide.load394 = load <4 x i32>, ptr %i.mq, align 4, !tbaa !21
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mo, i64 16
  store <4 x i32> %wide.load393, ptr %i.mo, align 4, !tbaa !21
  store <4 x i32> %wide.load394, ptr %i.mr, align 4, !tbaa !21
  %index.next395 = add nuw i64 %index392, 8       ; 2 uses
  %i.ms = icmp eq i64 %index.next395, %n.vec390
  br i1 %i.ms, label %middle.block396, label %vector.body391, !llvm.loop !121

middle.block396:                                  ; preds = %vector.body391
  %cmp.n397 = icmp eq i64 %.pr, %n.vec390
  br i1 %cmp.n397, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IiLi1ELin1ELi1ELi1ELin1EEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader402

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader402:          ; preds = %vector.memcheck388, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block396
  %.05.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck388 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec390, %middle.block396 ] ; 3 uses
  %xtraiter429 = and i64 %.pr, 3                  ; 2 uses
  %lcmp.mod430.not = icmp eq i64 %xtraiter429, 0
  br i1 %lcmp.mod430.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader402, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.mx, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader402 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader402 ]
  %i.mt = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.prol, %i.mj
  %i.mu = getelementptr inbounds [4 x i8], ptr %i.mi, i64 %i.mt
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %.ph, i64 %.05.i.i.i.i.i.i.i.i.i.i.prol
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !21
  store i32 %i.mw, ptr %i.mu, align 4, !tbaa !21
  %i.mx = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter429
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !122

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader402
  %.05.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader402 ], [ %i.mx, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.my = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.ph, %.pr
  %i.mz = icmp ugt i64 %i.my, -4
  br i1 %i.mz, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IiLi1ELin1ELi1ELi1ELin1EEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.nt, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.na = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, %i.mj
  %i.nb = getelementptr inbounds [4 x i8], ptr %i.mi, i64 %i.na
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %.ph, i64 %.05.i.i.i.i.i.i.i.i.i.i
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !21
  store i32 %i.nd, ptr %i.nb, align 4, !tbaa !21
  %i.ne = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.nf = mul nsw i64 %i.ne, %i.mj
  %i.ng = getelementptr inbounds [4 x i8], ptr %i.mi, i64 %i.nf
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %.ph, i64 %i.ne
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !21
  store i32 %i.ni, ptr %i.ng, align 4, !tbaa !21
  %i.nj = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.nk = mul nsw i64 %i.nj, %i.mj
  %i.nl = getelementptr inbounds [4 x i8], ptr %i.mi, i64 %i.nk
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %.ph, i64 %i.nj
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !21
  store i32 %i.nn, ptr %i.nl, align 4, !tbaa !21
  %i.no = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.np = mul nsw i64 %i.no, %i.mj
  %i.nq = getelementptr inbounds [4 x i8], ptr %i.mi, i64 %i.np
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %.ph, i64 %i.no
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !21
  store i32 %i.ns, ptr %i.nq, align 4, !tbaa !21
  %i.nt = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.nt, %.pr
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IiLi1ELin1ELi1ELi1ELin1EEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !123

_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IiLi1ELin1ELi1ELi1ELin1EEEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block396, %bb.ad, %.loopexit
  %i.nu = phi ptr [ null, %bb.ad ], [ %.ph, %.loopexit ], [ %.ph, %middle.block396 ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  call void @free(ptr noundef %i.nu) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  br label %bb.ag

bb.af:                                            ; preds = %bb.w, %bb.u, %bb.v
  %i.nv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ac, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IiLi1ELin1ELi1ELi1ELin1EEEEERS3_RKNS_9DenseBaseIT_EE.exit
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1 ; 2 uses
  %exitcond287.not = icmp eq i64 %indvars.iv.next284, %wide.trip.count286
  br i1 %exitcond287.not, label %._crit_edge, label %bb.ac, !llvm.loop !124

bb.ah:                                            ; preds = %bb.af, %.body127, %bb.y, %bb.x
  %.sroa.0.0 = phi ptr [ %.sroa.0.3234, %.body127 ], [ %.sroa.0.3234, %bb.y ], [ null, %bb.af ], [ null, %bb.x ]
  %.pn94.pn = phi { ptr, i32 } [ %i.ly, %.body127 ], [ %i.dw, %bb.y ], [ %i.nv, %bb.af ], [ %i.dv, %bb.x ]
  %i.nw = load ptr, ptr %9, align 8, !tbaa !29
  call void @free(ptr noundef %i.nw) #15
  br label %.body107

.body107:                                         ; preds = %bb.s, %bb.ah
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %bb.ah ], [ null, %bb.s ]
  %.pn94.pn.pn = phi { ptr, i32 } [ %.pn94.pn, %bb.ah ], [ %i.ck, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  %i.nx = load ptr, ptr %8, align 8, !tbaa !29
  call void @free(ptr noundef %i.nx) #15
  br label %.body

.body:                                            ; preds = %bb.o, %.body107
  %.sroa.0.2 = phi ptr [ %.sroa.0.1, %.body107 ], [ null, %bb.o ]
  %.pn94.pn.pn.pn = phi { ptr, i32 } [ %.pn94.pn.pn, %.body107 ], [ %i.cb, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  %i.ny = load ptr, ptr %7, align 8, !tbaa !29
  call void @free(ptr noundef %i.ny) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @free(ptr noundef %.sroa.0.2) #15
  %i.nz = load ptr, ptr %6, align 8, !tbaa !33
  call void @free(ptr noundef %i.nz) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.oa = load ptr, ptr %5, align 8, !tbaa !33
  call void @free(ptr noundef %i.oa) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  resume { ptr, i32 } %.pn94.pn.pn.pn
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !37
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !36
  tail call void @free(ptr noundef %i.f) #15
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 4611686018427387903
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !25
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 2
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #16 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !25
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !36
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !15
  store i64 %3, ptr %i.c, align 8, !tbaa !37
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sdiv i64 9223372036854775807, %2
  %i.d = icmp sgt i64 %1, %i.c
  br i1 %i.d, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !25
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !28
  %.not.i = icmp eq i64 %i.f, %i.h
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.i = load ptr, ptr %0, align 8, !tbaa !29
  tail call void @free(ptr noundef %i.i) #15
  %i.j = icmp sgt i64 %i.f, 0
  br i1 %i.j, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i64 %i.f, 2305843009213693951
  br i1 %i.k, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !25
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.e
  %i.m = shl nuw i64 %i.f, 3
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #16 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !25
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !29
  br label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %1, ptr %i.g, align 8, !tbaa !28
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLi1ELin1ELi1ELi1ELin1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sdiv i64 9223372036854775807, %2
  %i.d = icmp sgt i64 %1, %i.c
  br i1 %i.d, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !25
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !40
  %.not.i = icmp eq i64 %i.f, %i.h
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIiLin1ELi1ELin1ELi1EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.i = load ptr, ptr %0, align 8, !tbaa !41
  tail call void @free(ptr noundef %i.i) #15
  %i.j = icmp sgt i64 %i.f, 0
  br i1 %i.j, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i64 %i.f, 4611686018427387903
  br i1 %i.k, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !25
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %bb.e
  %i.m = shl nuw i64 %i.f, 2
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #16 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !25
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !41
  br label %_ZN5Eigen12DenseStorageIiLin1ELi1ELin1ELi1EE6resizeElll.exit

_ZN5Eigen12DenseStorageIiLin1ELi1ELin1ELi1EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %2, ptr %i.g, align 8, !tbaa !40
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { noreturn }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !20}
!1 = distinct !{!1, !20}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 int", !11, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EEE", !12, i64 0, !13, i64 8, !13, i64 16}
!15 = !{!14, !13, i64 8}
!16 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EEE", !12, i64 0, !13, i64 8}
!17 = !{!16, !12, i64 0}
!18 = !{!16, !13, i64 8}
!19 = !{!7, !7, i64 0}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!8, !8, i64 0}
!22 = !{!"llvm.loop.isvectorized", i32 1}
!23 = !{!"llvm.loop.unroll.runtime.disable"}
!24 = !{!"vtable pointer", !6, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"p1 double", !11, i64 0}
!27 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EEE", !26, i64 0, !13, i64 8}
!28 = !{!27, !13, i64 8}
!29 = !{!27, !26, i64 0}
!30 = !{!"double", !7, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEE", !26, i64 0, !13, i64 8, !13, i64 16}
!33 = !{!32, !26, i64 0}
!34 = !{!32, !13, i64 8}
!35 = !{!32, !13, i64 16}
!36 = !{!14, !12, i64 0}
!37 = !{!14, !13, i64 16}
!38 = !{}
!39 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELi1ELin1ELi1EEE", !12, i64 0, !13, i64 8}
!40 = !{!39, !13, i64 8}
!41 = !{!39, !12, i64 0}
!42 = !{!"llvm.loop.unroll.disable"}
!43 = distinct !{!43, !20}
!44 = distinct !{!44, !20, !22, !23}
!45 = distinct !{!45, !20, !23, !22}
!46 = distinct !{!46, !20, !22, !23}
!47 = distinct !{!47, !20, !23, !22}
!48 = distinct !{!48, i1 true, !"_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE10normalizedEv"}
!49 = distinct !{!49, !48, !"_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE10normalizedEv: argument 0"}
!50 = distinct !{!50, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!51 = distinct !{!51, !50, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!52 = distinct !{!52, i1 false, !"LVerDomain"}
!53 = distinct !{!53, !52}
!54 = distinct !{!54, !52}
!55 = distinct !{!55, !52}
!56 = distinct !{!56, !20, !22, !23}
!57 = distinct !{!57, i1 true, !"_ZN5EigenmlIdEEKNS_13CwiseBinaryOpINS_8internal17scalar_product_opINS2_18promote_scalar_argIdT_Xsr5Eigen8internal14has_ReturnTypeINS_20ScalarBinaryOpTraitsIS5_dNS3_IS5_dEEEEEE5valueEE4typeEdEEKNS2_19plain_constant_typeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_E4typeEKSG_EERKS5_RKNS_10MatrixBaseISG_EE"}
!58 = distinct !{!58, !57, !"_ZN5EigenmlIdEEKNS_13CwiseBinaryOpINS_8internal17scalar_product_opINS2_18promote_scalar_argIdT_Xsr5Eigen8internal14has_ReturnTypeINS_20ScalarBinaryOpTraitsIS5_dNS3_IS5_dEEEEEE5valueEE4typeEdEEKNS2_19plain_constant_typeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_E4typeEKSG_EERKS5_RKNS_10MatrixBaseISG_EE: argument 0"}
!59 = distinct !{!59, !20}
!60 = distinct !{!60, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!61 = distinct !{!61, !60, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!62 = distinct !{!62, !20, !22}
!63 = distinct !{!63, !20, !22, !23}
!64 = distinct !{!64, !20, !22}
!65 = distinct !{!65, !20}
!66 = distinct !{!66, !20}
!67 = distinct !{!67, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!68 = distinct !{!68, !67, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!69 = distinct !{!69, i1 true, !"_ZNK5Eigen9DenseBaseINS_7ReverseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi2EEEE4evalEv"}
!70 = distinct !{!70, !69, !"_ZNK5Eigen9DenseBaseINS_7ReverseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi2EEEE4evalEv: argument 0"}
!71 = distinct !{!71, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!72 = distinct !{!72, !71, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!73 = distinct !{!73, !20, !22, !23}
!74 = distinct !{!74, !42}
!75 = distinct !{!75, !20, !22}
!76 = distinct !{!76, !20}
!77 = !{!49}
!78 = !{!51}
!79 = !{!53}
!80 = !{!54}
!81 = !{!55}
!82 = !{!58}
!83 = !{!61}
!84 = !{!68}
!85 = !{!70}
!86 = !{!72}
!87 = distinct !{!87, !20, !22, !23}
!88 = distinct !{!88, !42}
!89 = distinct !{!89, !20, !22}
!90 = distinct !{!90, !20}
!91 = distinct !{!91, !20}
!92 = distinct !{!92, !20, !22, !23}
!93 = distinct !{!93, !20, !23, !22}
!94 = distinct !{!94, !20, !22, !23}
!95 = distinct !{!95, !20, !23, !22}
!96 = distinct !{!96, i1 true, !"_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE10normalizedEv"}
!97 = distinct !{!97, !96, !"_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE10normalizedEv: argument 0"}
!98 = distinct !{!98, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!99 = distinct !{!99, !98, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!100 = distinct !{!100, i1 false, !"LVerDomain"}
!101 = distinct !{!101, !100}
!102 = distinct !{!102, !100}
!103 = distinct !{!103, !100}
!104 = distinct !{!104, !20, !22, !23}
!105 = distinct !{!105, i1 true, !"_ZN5EigenmlIdEEKNS_13CwiseBinaryOpINS_8internal17scalar_product_opINS2_18promote_scalar_argIdT_Xsr5Eigen8internal14has_ReturnTypeINS_20ScalarBinaryOpTraitsIS5_dNS3_IS5_dEEEEEE5valueEE4typeEdEEKNS2_19plain_constant_typeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_E4typeEKSG_EERKS5_RKNS_10MatrixBaseISG_EE"}
!106 = distinct !{!106, !105, !"_ZN5EigenmlIdEEKNS_13CwiseBinaryOpINS_8internal17scalar_product_opINS2_18promote_scalar_argIdT_Xsr5Eigen8internal14has_ReturnTypeINS_20ScalarBinaryOpTraitsIS5_dNS3_IS5_dEEEEEE5valueEE4typeEdEEKNS2_19plain_constant_typeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_E4typeEKSG_EERKS5_RKNS_10MatrixBaseISG_EE: argument 0"}
!107 = distinct !{!107, !20}
!108 = distinct !{!108, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!109 = distinct !{!109, !108, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!110 = distinct !{!110, !20, !22}
!111 = distinct !{!111, !20, !22, !23}
!112 = distinct !{!112, !20, !22}
!113 = distinct !{!113, !20}
!114 = distinct !{!114, !20}
!115 = distinct !{!115, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!116 = distinct !{!116, !115, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!117 = distinct !{!117, i1 true, !"_ZNK5Eigen9DenseBaseINS_7ReverseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi2EEEE4evalEv"}
!118 = distinct !{!118, !117, !"_ZNK5Eigen9DenseBaseINS_7ReverseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi2EEEE4evalEv: argument 0"}
!119 = distinct !{!119, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!120 = distinct !{!120, !119, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!121 = distinct !{!121, !20, !22, !23}
!122 = distinct !{!122, !42}
!123 = distinct !{!123, !20, !22}
!124 = distinct !{!124, !20}
!125 = !{!97}
!126 = !{!99}
!127 = !{!101}
!128 = !{!102}
!129 = !{!103}
!130 = !{!106}
!131 = !{!109}
!132 = !{!116}
!133 = !{!118}
!134 = !{!120}
end_hunk_0
