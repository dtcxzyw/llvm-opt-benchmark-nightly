Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/ViewerData?download=true
inline.NumInlined: 5241
inline.NumDeleted: 2566
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 117
loop-unroll.NumUnrolled: 139
begin_hunk_0_@_ZN3igl6opengl10ViewerData10add_pointsERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %7, ptr %i.r, align 8, !tbaa !88, !alias.scope !490
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  store i64 %i.e, ptr %i.t, align 8, !tbaa !91, !alias.scope !490
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.u = load ptr, ptr %1, align 8, !tbaa !64
  store ptr %i.u, ptr %3, align 8, !tbaa !93
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.e, ptr %i.v, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store ptr %i.o, ptr %4, align 8, !tbaa !97
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.e, ptr %i.w, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store ptr %4, ptr %5, align 8, !tbaa !99
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.x, align 8, !tbaa !101
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %6, ptr %i.y, align 8, !tbaa !103
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %8, ptr %i.z, align 8, !tbaa !105
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_(ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit

bb.f:                                             ; preds = %.loopexit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.n

bb.g:                                             ; preds = %bb.a
  %i.ab = load ptr, ptr %1, align 8, !tbaa !64    ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !80 ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.ag = or i64 %i.ad, %i.b
  %or.cond.i.i.i.i.i.i.i.i32 = icmp eq i64 %i.ag, 0
  br i1 %or.cond.i.i.i.i.i.i.i.i32, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not8.i.i.i.i.i.i.i.i31 = icmp eq i64 %i.b, 0
  %.not.i.i.i.i.i.i.i.i30 = icmp eq i64 %i.ad, 0
  %or.cond.i.i.i.i.i.i.i.i.i.i33 = or i1 %.not8.i.i.i.i.i.i.i.i31, %.not.i.i.i.i.i.i.i.i30
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i33, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i34, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = sdiv i64 9223372036854775807, %i.b
  %i.ai = icmp sgt i64 %i.ad, %i.ah
  br i1 %i.ai, label %.invoke, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i34

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i34: ; preds = %bb.i, %bb.h
  %i.aj = mul nsw i64 %i.ad, %i.b                 ; 9 uses
  %.not.i43 = icmp eq i64 %i.aj, 0
  br i1 %.not.i43, label %._crit_edge.thread89, label %bb.j

._crit_edge.thread89:                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i34
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !80
  store i64 %i.b, ptr %i.af, align 8, !tbaa !79
  br label %._crit_edge.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i34
  %i.ak = icmp sgt i64 %i.aj, 0
  br i1 %i.ak, label %bb.k, label %._crit_edge.thread90

._crit_edge.thread90:                             ; preds = %bb.j
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !80
  store i64 %i.b, ptr %i.af, align 8, !tbaa !79
  %.nonneg = sub i64 0, %i.aj
  %i.al = and i64 %.nonneg, -2
  %i.am = sub i64 0, %i.al
  br label %._crit_edge.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.an = icmp samesign ugt i64 %i.aj, 2305843009213693951
  br i1 %i.an, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i46

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i46: ; preds = %bb.k
  %i.ao = shl nuw i64 %i.aj, 3
  %i.ap = tail call noalias ptr @malloc(i64 noundef %i.ao) #27 ; 5 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %.invoke, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i46
  store ptr %i.ap, ptr %7, align 8, !tbaa !64
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !80
  store i64 %i.b, ptr %i.af, align 8, !tbaa !79
  %i.ar = and i64 %i.aj, 2305843009213693950      ; 3 uses
  %.not = icmp eq i64 %i.aj, 1
  br i1 %.not, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %._crit_edge.thread90, %._crit_edge.thread89, %._crit_edge
  %i.as = phi i64 [ 0, %._crit_edge.thread89 ], [ %i.am, %._crit_edge.thread90 ], [ %i.ar, %._crit_edge ], [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.at = phi ptr [ null, %._crit_edge.thread89 ], [ null, %._crit_edge.thread90 ], [ %i.ap, %._crit_edge ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %.pre-phi88 = phi i64 [ 0, %._crit_edge.thread89 ], [ %i.aj, %._crit_edge.thread90 ], [ 1, %._crit_edge ], [ %i.aj, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.au = icmp slt i64 %i.as, %.pre-phi88
  br i1 %i.au, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.av = sub i64 %.pre-phi88, %i.as              ; 3 uses
  %min.iters.check = icmp ult i64 %i.av, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader132, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.av, -4                      ; 3 uses
  %i.aw = add i64 %i.as, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = add i64 %i.as, %index                   ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ax ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %wide.load = load <2 x double>, ptr %i.az, align 8, !tbaa !82
  %wide.load93 = load <2 x double>, ptr %i.ba, align 8, !tbaa !82
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store <2 x double> %wide.load, ptr %i.ay, align 8, !tbaa !82
  store <2 x double> %wide.load93, ptr %i.bb, align 8, !tbaa !82
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !475

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader132

.lr.ph.i.i.i.i.i.i.i.i.i.preheader132:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.as, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader132, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bg, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader132 ] ; 3 uses
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.at, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.be = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.bf = load double, ptr %i.be, align 8, !tbaa !82
  store double %i.bf, ptr %i.bd, align 8, !tbaa !82
  %i.bg = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bg, %.pre-phi88
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !476

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %._crit_edge, %.lr.ph.i.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i.i = phi i64 [ %i.bk, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %._crit_edge ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.011.i.i.i.i.i.i.i.i
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.011.i.i.i.i.i.i.i.i
  %i.bj = load <2 x double>, ptr %i.bi, align 16, !tbaa !74
  store <2 x double> %i.bj, ptr %i.bh, align 16, !tbaa !74
  %i.bk = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.bl = icmp samesign ult i64 %i.bk, %i.ar
  br i1 %i.bl, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, !llvm.loop !1

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %bb.g, %._crit_edge.i.i.i.i.i.i.i.i, %bb.e
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !80 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !80
  %i.br = add nsw i64 %i.bq, %i.bo
  invoke void @_ZN5Eigen8internal29conservative_resize_like_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_Lb0EE3runERNS_9DenseBaseIS3_EEll(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i64 noundef %i.br, i64 noundef 6)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE18conservativeResizeEll.exit.preheader unwind label %bb.l

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE18conservativeResizeEll.exit.preheader: ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit
  %i.bs = load i64, ptr %i.bp, align 8, !tbaa !80 ; 8 uses
  %i.bt = icmp sgt i64 %i.bs, 0
  %.pre72 = load ptr, ptr %7, align 8, !tbaa !64  ; 3 uses
  br i1 %i.bt, label %.lr.ph, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE18conservativeResizeEll.exit._crit_edge

.lr.ph:                                           ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE18conservativeResizeEll.exit.preheader
  %.pre72115 = ptrtoaddr ptr %.pre72 to i64
  %i.bu = load ptr, ptr %i.bm, align 8, !tbaa !64, !noalias !491 ; 2 uses
  %i.bv = ptrtoaddr ptr %i.bu to i64              ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !79, !noalias !491
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !79, !noalias !492 ; 9 uses
  %i.ca = load i64, ptr %i.bn, align 8, !tbaa !80, !noalias !493 ; 13 uses
  %i.cb = icmp sgt i64 %i.bz, 0
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !80 ; 8 uses
  %.sroa.650.0.in = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.650.0 = load i64, ptr %.sroa.650.0.in, align 8, !tbaa !79, !noalias !78 ; 8 uses
  %i.ce = icmp ne i64 %i.bz, %i.bx                ; 4 uses
  %.not.i = icmp ne i64 %.sroa.650.0, 0
  %i.cf = icmp sgt i64 %.sroa.650.0, 0
  %brmerge = select i1 %i.ce, i1 true, i1 %.not.i
  %.mux67 = select i1 %i.ce, i64 %i.bz, i64 0     ; 2 uses
  %not. = xor i1 %i.ce, true
  %.mux = zext i1 %not. to i64
  %i.cg = mul nsw i64 %.mux67, %i.ca
  %i.ch = select i1 %i.ce, i64 0, i64 8
  %min.iters.check117 = icmp ult i64 %i.bz, 10
  %ident.check110 = icmp ne i64 %i.ca, 1
  %ident.check111 = icmp ne i64 %i.bs, 1
  %i.ci = or i1 %ident.check110, %ident.check111
  %n.vec121 = and i64 %i.bz, 9223372036854775804  ; 3 uses
  %cmp.n128 = icmp eq i64 %i.bz, %n.vec121
  %xtraiter = and i64 %i.bz, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.cj = load ptr, ptr %2, align 8, !tbaa !64, !noalias !78 ; 2 uses
  %i.ck = getelementptr [8 x i8], ptr %i.cj, i64 %i.cd
  %i.cl = getelementptr i8, ptr %i.ck, i64 -8
  %min.iters.check98 = icmp ult i64 %.sroa.650.0, 14
  %ident.check = icmp ne i64 %i.ca, 1
  %ident.check94 = icmp ne i64 %i.cd, 1
  %i.cm = or i1 %ident.check, %ident.check94
  %invariant.op = add i64 %i.bv, %i.ch
  %n.vec100 = and i64 %.sroa.650.0, 9223372036854775804 ; 3 uses
  %cmp.n107 = icmp eq i64 %.sroa.650.0, %n.vec100
  %xtraiter133 = and i64 %.sroa.650.0, 3          ; 2 uses
  %lcmp.mod134.not = icmp eq i64 %xtraiter133, 0
  br label %bb.m

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE18conservativeResizeEll.exit._crit_edge.loopexit: ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmINS1_IKS3_Li1ELin1ELb0EEEEERS5_RKNS_9DenseBaseIT_EE.exit
  %.pre71 = load ptr, ptr %7, align 8, !tbaa !64
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE18conservativeResizeEll.exit._crit_edge

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE18conservativeResizeEll.exit._crit_edge: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE18conservativeResizeEll.exit._crit_edge.loopexit, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE18conservativeResizeEll.exit.preheader
  %i.cn = phi ptr [ %.pre71, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE18conservativeResizeEll.exit._crit_edge.loopexit ], [ %.pre72, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE18conservativeResizeEll.exit.preheader ]
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !56
  %i.cq = or i32 %i.cp, 512
  store i32 %i.cq, ptr %i.co, align 8, !tbaa !56
  call void @free(ptr noundef %i.cn) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  ret void

bb.l:                                             ; preds = %.invoke, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmINS1_IKS3_Li1ELin1ELb0EEEEERS5_RKNS_9DenseBaseIT_EE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmINS1_IKS3_Li1ELin1ELb0EEEEERS5_RKNS_9DenseBaseIT_EE.exit ] ; 6 uses
  %i.cs = add i64 %indvars.iv, %i.bo
  %i.ct = and i64 %i.cs, 4294967295               ; 3 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.ct ; 7 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.pre72, i64 %indvars.iv ; 6 uses
  br i1 %i.cb, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEElsIS4_EENS_16CommaInitializerIS4_EERKNS0_IT_EE.exit

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.preheader:     ; preds = %bb.m
  %brmerge137 = select i1 %min.iters.check117, i1 true, i1 %i.ci
  br i1 %brmerge137, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.preheader131, label %vector.memcheck118

vector.memcheck118:                               ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.cw = shl i64 %indvars.iv, 3
  %i.cx = add i64 %i.cw, %.pre72115
  %i.cy = sub i64 %i.bv, %i.cx
  %i.cz = shl nuw nsw i64 %i.ct, 3
  %i.da = add i64 %i.cy, %i.cz
  %i.db = add i64 %i.da, -1
  %diff.check119 = icmp ult i64 %i.db, 31
  br i1 %diff.check119, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.preheader131, label %vector.body122

vector.body122:                                   ; preds = %vector.memcheck118, %vector.body122
  %index123 = phi i64 [ %index.next126, %vector.body122 ], [ 0, %vector.memcheck118 ] ; 3 uses
  %i.dc = getelementptr [8 x i8], ptr %i.cu, i64 %index123 ; 2 uses
  %i.dd = getelementptr [8 x i8], ptr %i.cv, i64 %index123 ; 2 uses
  %i.de = getelementptr i8, ptr %i.dd, i64 16
  %wide.load124 = load <2 x double>, ptr %i.dd, align 8, !tbaa !82, !noalias !493
  %wide.load125 = load <2 x double>, ptr %i.de, align 8, !tbaa !82, !noalias !493
  %i.df = getelementptr i8, ptr %i.dc, i64 16
  store <2 x double> %wide.load124, ptr %i.dc, align 8, !tbaa !82, !noalias !493
  store <2 x double> %wide.load125, ptr %i.df, align 8, !tbaa !82, !noalias !493
  %index.next126 = add nuw i64 %index123, 4       ; 2 uses
  %i.dg = icmp eq i64 %index.next126, %n.vec121
  br i1 %i.dg, label %middle.block127, label %vector.body122, !llvm.loop !483

middle.block127:                                  ; preds = %vector.body122
  br i1 %cmp.n128, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEElsIS4_EENS_16CommaInitializerIS4_EERKNS0_IT_EE.exit, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.preheader131

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.preheader131:  ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %vector.memcheck118, %middle.block127
  %.09.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck118 ], [ %n.vec121, %middle.block127 ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  br i1 %lcmp.mod.not, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.prol

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.prol:          ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.preheader131, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %.09.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.dk, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.09.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.preheader131 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.preheader131 ]
  %i.dh = mul nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i.prol, %i.ca
  %gep.i.i.i.i.i.i.i.i.i.i.i.i.prol = getelementptr [8 x i8], ptr %i.cu, i64 %i.dh
  %i.di = mul nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i.prol, %i.bs
  %gep11.i.i.i.i.i.i.i.i.i.i.i.i.prol = getelementptr [8 x i8], ptr %i.cv, i64 %i.di
  %i.dj = load double, ptr %gep11.i.i.i.i.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !82, !noalias !493
  store double %i.dj, ptr %gep.i.i.i.i.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !82, !noalias !493
  %i.dk = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !484

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.preheader131
  %.09.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.preheader131 ], [ %i.dk, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.dl = sub nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i.ph, %i.bz
  %i.dm = icmp ugt i64 %i.dl, -4
  br i1 %i.dm, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEElsIS4_EENS_16CommaInitializerIS4_EERKNS0_IT_EE.exit, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ec, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.dn = mul nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i, %i.ca
  %gep.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %i.cu, i64 %i.dn
  %i.do = mul nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i, %i.bs
  %gep11.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %i.cv, i64 %i.do
  %i.dp = load double, ptr %gep11.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !82, !noalias !493
  store double %i.dp, ptr %gep.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !82, !noalias !493
  %i.dq = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.dr = mul nsw i64 %i.dq, %i.ca
  %gep.i.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr [8 x i8], ptr %i.cu, i64 %i.dr
  %i.ds = mul nuw nsw i64 %i.dq, %i.bs
  %gep11.i.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr [8 x i8], ptr %i.cv, i64 %i.ds
  %i.dt = load double, ptr %gep11.i.i.i.i.i.i.i.i.i.i.i.i.1, align 8, !tbaa !82, !noalias !493
  store double %i.dt, ptr %gep.i.i.i.i.i.i.i.i.i.i.i.i.1, align 8, !tbaa !82, !noalias !493
  %i.du = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.dv = mul nsw i64 %i.du, %i.ca
  %gep.i.i.i.i.i.i.i.i.i.i.i.i.2 = getelementptr [8 x i8], ptr %i.cu, i64 %i.dv
  %i.dw = mul nuw nsw i64 %i.du, %i.bs
  %gep11.i.i.i.i.i.i.i.i.i.i.i.i.2 = getelementptr [8 x i8], ptr %i.cv, i64 %i.dw
  %i.dx = load double, ptr %gep11.i.i.i.i.i.i.i.i.i.i.i.i.2, align 8, !tbaa !82, !noalias !493
  store double %i.dx, ptr %gep.i.i.i.i.i.i.i.i.i.i.i.i.2, align 8, !tbaa !82, !noalias !493
  %i.dy = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.dz = mul nsw i64 %i.dy, %i.ca
  %gep.i.i.i.i.i.i.i.i.i.i.i.i.3 = getelementptr [8 x i8], ptr %i.cu, i64 %i.dz
  %i.ea = mul nuw nsw i64 %i.dy, %i.bs
  %gep11.i.i.i.i.i.i.i.i.i.i.i.i.3 = getelementptr [8 x i8], ptr %i.cv, i64 %i.ea
  %i.eb = load double, ptr %gep11.i.i.i.i.i.i.i.i.i.i.i.i.3, align 8, !tbaa !82, !noalias !493
  store double %i.eb, ptr %gep.i.i.i.i.i.i.i.i.i.i.i.i.3, align 8, !tbaa !82, !noalias !493
  %i.ec = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.ec, %i.bz
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEElsIS4_EENS_16CommaInitializerIS4_EERKNS0_IT_EE.exit, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !485

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEElsIS4_EENS_16CommaInitializerIS4_EERKNS0_IT_EE.exit: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block127, %bb.m
  %i.ed = icmp sgt i64 %i.cd, %indvars.iv
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %indvars.iv
  %.sroa.0.0 = select i1 %i.ed, ptr %i.ee, ptr %i.cl ; 7 uses
  %.sroa.0.096 = ptrtoaddr ptr %.sroa.0.0 to i64
  br i1 %brmerge, label %._crit_edge.i, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmINS1_IKS3_Li1ELin1ELb0EEEEERS5_RKNS_9DenseBaseIT_EE.exit

._crit_edge.i:                                    ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEElsIS4_EENS_16CommaInitializerIS4_EERKNS0_IT_EE.exit
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.cg
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %.mux ; 6 uses
  br i1 %i.cf, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i39.preheader, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmINS1_IKS3_Li1ELin1ELb0EEEEERS5_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i.i.i.i39.preheader:         ; preds = %._crit_edge.i
  %brmerge138 = select i1 %min.iters.check98, i1 true, i1 %i.cm
  br i1 %brmerge138, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i39.preheader130, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i39.preheader
  %9 = add i64 %.mux67, %i.ct
  %i.eh = shl i64 %9, 3
  %.reass = add i64 %i.eh, %invariant.op
  %10 = sub i64 %.sroa.0.096, %.reass
  %diff.check = icmp ugt i64 %10, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i39.preheader130, label %vector.body101

vector.body101:                                   ; preds = %vector.memcheck, %vector.body101
  %index102 = phi i64 [ %index.next105, %vector.body101 ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.eg, i64 %index102 ; 2 uses
  %i.ej = getelementptr inbounds [8 x i8], ptr %.sroa.0.0, i64 %index102 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %wide.load103 = load <2 x double>, ptr %i.ej, align 8, !tbaa !82
  %wide.load104 = load <2 x double>, ptr %i.ek, align 8, !tbaa !82
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  store <2 x double> %wide.load103, ptr %i.ei, align 8, !tbaa !82
  store <2 x double> %wide.load104, ptr %i.el, align 8, !tbaa !82
  %index.next105 = add nuw i64 %index102, 4       ; 2 uses
  %i.em = icmp eq i64 %index.next105, %n.vec100
  br i1 %i.em, label %middle.block106, label %vector.body101, !llvm.loop !486

middle.block106:                                  ; preds = %vector.body101
  br i1 %cmp.n107, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmINS1_IKS3_Li1ELin1ELb0EEEEERS5_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i39.preheader130

.lr.ph.i.i.i.i.i.i.i.i.i.i.i39.preheader130:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i39.preheader, %vector.memcheck, %middle.block106
  %.05.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ %n.vec100, %middle.block106 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i39.preheader ] ; 3 uses
  br i1 %lcmp.mod134.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i39.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i39.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i39.prol:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i39.preheader130, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i39.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.es, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i39.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i39.preheader130 ] ; 3 uses
  %prol.iter135 = phi i64 [ %prol.iter135.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i39.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i39.preheader130 ]
  %i.en = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.prol, %i.ca
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.eg, i64 %i.en
  %i.ep = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.prol, %i.cd
  %i.eq = getelementptr inbounds [8 x i8], ptr %.sroa.0.0, i64 %i.ep
  %i.er = load double, ptr %i.eq, align 8, !tbaa !82
  store double %i.er, ptr %i.eo, align 8, !tbaa !82
  %i.es = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter135.next = add i64 %prol.iter135, 1   ; 2 uses
  %prol.iter135.cmp.not = icmp eq i64 %prol.iter135.next, %xtraiter133
  br i1 %prol.iter135.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i39.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i39.prol, !llvm.loop !487

.lr.ph.i.i.i.i.i.i.i.i.i.i.i39.prol.loopexit:     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i39.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i39.preheader130
  %.05.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i39.preheader130 ], [ %i.es, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i39.prol ]
  %i.et = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %.sroa.650.0
  %i.eu = icmp ugt i64 %i.et, -4
  br i1 %i.eu, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmINS1_IKS3_Li1ELin1ELb0EEEEERS5_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i39

.lr.ph.i.i.i.i.i.i.i.i.i.i.i39:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i39.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i39
  %.05.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fs, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i39 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i39.prol.loopexit ] ; 6 uses
  %i.ev = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, %i.ca
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.eg, i64 %i.ev
  %i.ex = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, %i.cd
  %i.ey = getelementptr inbounds [8 x i8], ptr %.sroa.0.0, i64 %i.ex
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !82
  store double %i.ez, ptr %i.ew, align 8, !tbaa !82
  %i.fa = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.fb = mul nsw i64 %i.fa, %i.ca
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.eg, i64 %i.fb
  %i.fd = mul nsw i64 %i.fa, %i.cd
  %i.fe = getelementptr inbounds [8 x i8], ptr %.sroa.0.0, i64 %i.fd
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !82
  store double %i.ff, ptr %i.fc, align 8, !tbaa !82
  %i.fg = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.fh = mul nsw i64 %i.fg, %i.ca
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.eg, i64 %i.fh
  %i.fj = mul nsw i64 %i.fg, %i.cd
  %i.fk = getelementptr inbounds [8 x i8], ptr %.sroa.0.0, i64 %i.fj
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !82
  store double %i.fl, ptr %i.fi, align 8, !tbaa !82
  %i.fm = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.fn = mul nsw i64 %i.fm, %i.ca
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.eg, i64 %i.fn
  %i.fp = mul nsw i64 %i.fm, %i.cd
  %i.fq = getelementptr inbounds [8 x i8], ptr %.sroa.0.0, i64 %i.fp
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !82
  store double %i.fr, ptr %i.fo, align 8, !tbaa !82
  %i.fs = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.fs, %.sroa.650.0
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmINS1_IKS3_Li1ELin1ELb0EEEEERS5_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i39, !llvm.loop !488

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmINS1_IKS3_Li1ELin1ELb0EEEEERS5_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i39.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i39, %middle.block106, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEElsIS4_EENS_16CommaInitializerIS4_EERKNS0_IT_EE.exit, %._crit_edge.i
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.ft = and i64 %indvars.iv.next, 4294967295
  %i.fu = icmp samesign ugt i64 %i.bs, %i.ft
  br i1 %i.fu, label %bb.m, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE18conservativeResizeEll.exit._crit_edge.loopexit, !llvm.loop !489

bb.n:                                             ; preds = %bb.l, %bb.f
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cr, %bb.l ], [ %i.aa, %bb.f ]
  %i.fv = load ptr, ptr %7, align 8, !tbaa !64
  call void @free(ptr noundef %i.fv) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @_ZN3igl6opengl10ViewerData12clear_pointsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1488) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !80
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !79
  %i.e = mul nsw i64 %i.d, %i.b
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !64
  tail call void @free(ptr noundef %i.g) #25
  store ptr null, ptr %i.f, align 8, !tbaa !64
  br label %_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll.exit: ; preds = %bb.a, %bb.b
  store i64 0, ptr %i.a, align 8, !tbaa !80
  store i64 6, ptr %i.c, align 8, !tbaa !79
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl6opengl10ViewerData9set_edgesERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS3_IiLin1ELin1ELi0ELin1ELin1EEES6_(ptr noundef nonnull align 8 dereferenceable(1488) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::Matrix.222", align 8 ; 27 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !111  ; 3 uses
  %i.d = icmp sgt i64 %i.c, 1024819115206086200
  br i1 %i.d, label %bb.b, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !107
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %bb.a
  %i.f = mul nsw i64 %i.c, 9
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.f, i64 noundef %i.c, i64 noundef 9)
  %i.g = load i64, ptr %i.b, align 8, !tbaa !111  ; 22 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !80   ; 17 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !79   ; 26 uses
  %i.m = mul nsw i64 %i.l, %i.j
  %i.n = icmp eq i64 %i.m, 3                      ; 2 uses
  %i.o = icmp eq i64 %i.j, %i.g                   ; 2 uses
  %i.p = icmp sgt i64 %i.l, 0                     ; 3 uses
  %i.q = icmp sgt i64 %i.j, 0
  %or.cond.i.i = and i1 %i.q, %i.p                ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !79   ; 19 uses
  %i.t = icmp eq i64 %i.s, 2
  %i.u = icmp sgt i64 %i.s, 0
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !64, !noalias !78 ; 5 uses
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !79, !noalias !78 ; 6 uses
  %i.ac = load ptr, ptr %2, align 8, !tbaa !66    ; 4 uses
  %i.ad = load ptr, ptr %1, align 8, !tbaa !64, !noalias !78 ; 9 uses
  %i.ae = load i64, ptr %i.x, align 8, !tbaa !80, !noalias !78 ; 18 uses
  %i.af = load i64, ptr %i.y, align 8, !tbaa !80, !noalias !78 ; 30 uses
  br i1 %i.t, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.ag = icmp eq i64 %i.ab, 2                    ; 2 uses
  %.sroa.8.0.us = zext i1 %i.ag to i64            ; 4 uses
  %i.ah = select i1 %i.ag, i64 0, i64 2           ; 2 uses
  %i.ai = or disjoint i64 %i.ah, 1                ; 2 uses
  %i.aj = mul nsw i64 %i.af, %i.ah                ; 3 uses
  %i.ak = icmp eq i64 %i.ai, %i.ab                ; 2 uses
  %.sroa.8.1.us = select i1 %i.ak, i64 1, i64 %.sroa.8.0.us ; 4 uses
  %i.al = select i1 %i.ak, i64 0, i64 %i.ai       ; 2 uses
  %i.am = mul nsw i64 %i.af, %i.al                ; 3 uses
  %i.an = add nuw nsw i64 %i.al, 2                ; 2 uses
  %i.ao = icmp eq i64 %i.an, %i.ab                ; 2 uses
  %i.ap = zext i1 %i.ao to i64
  %.sroa.8.2.us = add nuw nsw i64 %.sroa.8.1.us, %i.ap ; 6 uses
  %i.aq = select i1 %i.ao, i64 0, i64 %i.an       ; 2 uses
  %i.ar = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %i.as = mul nsw i64 %i.aq, %i.af                ; 3 uses
  %i.at = icmp eq i64 %i.ar, %i.ab                ; 2 uses
  %i.au = select i1 %i.at, i64 0, i64 %i.ar
  %i.av = zext i1 %i.at to i64                    ; 3 uses
  %i.aw = mul nsw i64 %i.au, %i.af                ; 3 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us = shl nsw i64 %i.af, 4 ; 3 uses
  br i1 %i.n, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  %i.ax = load ptr, ptr %3, align 8, !tbaa !64, !noalias !524
  %min.iters.check306 = icmp ugt i64 %i.l, 3
  %ident.check304.not = icmp eq i64 %i.j, 1
  %or.cond = select i1 %min.iters.check306, i1 %ident.check304.not, i1 false
  %n.vec308 = and i64 %i.l, 9223372036854775804   ; 3 uses
  %cmp.n315 = icmp eq i64 %i.l, %n.vec308
  %xtraiter340 = and i64 %i.l, 3                  ; 2 uses
  %lcmp.mod341.not = icmp eq i64 %xtraiter340, 0
  br label %bb.c

end_hunk_0
