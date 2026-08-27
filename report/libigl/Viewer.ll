Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/Viewer?download=true
inline.NumInlined: 3854
inline.NumDeleted: 1142
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 57
begin_hunk_0_@_ZN3igl6opengl4glfw6Viewer19select_hovered_coreEv:bb.a
bb.c:                                             ; preds = %bb.b
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 220
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !145
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 212
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4 ; 2 uses
  %i.w = load i32, ptr %i.q, align 4, !tbaa !229
  %i.x = sub nsw i32 %i.p, %i.w
  %i.y = sitofp i32 %i.x to float                 ; 2 uses
  %i.z = fcmp olt float %.sroa.6.0.copyload, %i.y
  %i.aa = fadd float %.sroa.9.0.copyload, %.sroa.6.0.copyload
  %i.ab = fcmp ogt float %i.aa, %i.y
  %or.cond11 = select i1 %i.z, i1 %i.ab, i1 false
  br i1 %or.cond11, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %indvars.iv, ptr %i.ac, align 16, !tbaa !68
  br label %.loopexit

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.l
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !230

.loopexit:                                        ; preds = %bb.d, %bb.a, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN3igl6opengl4glfw6Viewer10mouse_downENS2_11MouseButtonEi(ptr noundef nonnull align 16 dereferenceable(616) initializes((152, 160)) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.Eigen::Matrix.126", align 16 ; 6 uses
  %4 = alloca %"class.Eigen::Matrix.13", align 4  ; 4 uses
  %5 = alloca %"class.Eigen::Matrix.13", align 8  ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.h = load <2 x i32>, ptr %i.e, align 16, !tbaa !65
  store <2 x i32> %i.h, ptr %i.f, align 8, !tbaa !65
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !14
  %i.l = load ptr, ptr %i.i, align 16, !tbaa !18  ; 2 uses
  %.not63 = icmp eq ptr %i.k, %i.l
  br i1 %.not63, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.m = add i32 %.01062, 1                       ; 2 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !14
  %i.p = load ptr, ptr %i.i, align 16, !tbaa !18  ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3
  %i.u = icmp ugt i64 %i.t, %i.n
  br i1 %i.u, label %.lr.ph, label %._crit_edge, !llvm.loop !231

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.v = phi ptr [ %i.p, %bb.b ], [ %i.l, %bb.a ]
  %i.w = phi i64 [ %i.n, %bb.b ], [ 0, %bb.a ]
  %.01062 = phi i32 [ %i.m, %bb.b ], [ 0, %bb.a ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !19   ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !21
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef zeroext i1 %i.ab(ptr noundef nonnull align 8 dereferenceable(48) %i.y, i32 noundef %1, i32 noundef %2)
  br i1 %i.ac, label %.loopexit, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !74
  %.not.i.i.not = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.not, label %bb.c, label %_ZNKSt8functionIFbRN3igl6opengl4glfw6ViewerEiiEEclES4_ii.exit

_ZNKSt8functionIFbRN3igl6opengl4glfw6ViewerEiiEEclES4_ii.exit: ; preds = %._crit_edge
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %1, ptr %i.c, align 4, !tbaa !65
  store i32 %2, ptr %i.d, align 4, !tbaa !65
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ah = load ptr, ptr %i.ag, align 16, !tbaa !77
  %i.ai = call noundef zeroext i1 %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 16 dereferenceable(616) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d), !inline_history !232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.ai, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt8functionIFbRN3igl6opengl4glfw6ViewerEiiEEclES4_ii.exit, %._crit_edge
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 1, ptr %i.aj, align 16, !tbaa !148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = load ptr, ptr %i.ak, align 16, !tbaa !26
  call void @glfwGetFramebufferSize(ptr noundef %i.al, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ao = load ptr, ptr %i.an, align 16, !tbaa !66 ; 2 uses
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !67 ; 4 uses
  %.not.i = icmp eq ptr %i.ao, %i.ap
  br i1 %.not.i, label %_ZN3igl6opengl4glfw6Viewer19select_hovered_coreEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = sdiv exact i64 %i.as, 544
  %i.au = load i32, ptr %i.e, align 16, !tbaa !228
  %i.av = sitofp i32 %i.au to float               ; 2 uses
  %i.aw = load i32, ptr %i.b, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [544 x i8], ptr %i.ap, i64 %indvars.iv.i ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 208
  %.sroa.0.0.copyload.i = load float, ptr %i.ay, align 16 ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 216
  %.sroa.8.0.copyload.i = load float, ptr %.sroa.8.0..sroa_idx.i, align 8
  %i.az = fcmp olt float %.sroa.0.0.copyload.i, %i.av
  %i.ba = fadd float %.sroa.0.0.copyload.i, %.sroa.8.0.copyload.i
  %i.bb = fcmp ogt float %i.ba, %i.av
  %or.cond.i = select i1 %i.az, i1 %i.bb, i1 false
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 220
  %.sroa.9.0.copyload.i = load float, ptr %.sroa.9.0..sroa_idx.i, align 4, !tbaa !145
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 212
  %.sroa.6.0.copyload.i = load float, ptr %.sroa.6.0..sroa_idx.i, align 4 ; 2 uses
  %i.bc = load i32, ptr %i.g, align 4, !tbaa !229
  %i.bd = sub nsw i32 %i.aw, %i.bc
  %i.be = sitofp i32 %i.bd to float               ; 2 uses
  %i.bf = fcmp olt float %.sroa.6.0.copyload.i, %i.be
  %i.bg = fadd float %.sroa.9.0.copyload.i, %.sroa.6.0.copyload.i
  %i.bh = fcmp ogt float %i.bg, %i.be
  %or.cond11.i = select i1 %i.bf, i1 %i.bh, i1 false
  br i1 %or.cond11.i, label %.critedge.i, label %bb.f

.critedge.i:                                      ; preds = %bb.e
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %indvars.iv.i, ptr %i.bi, align 16, !tbaa !68
  br label %_ZN3igl6opengl4glfw6Viewer19select_hovered_coreEv.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.next.i = add nuw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.at
  br i1 %exitcond.not.i, label %_ZN3igl6opengl4glfw6Viewer19select_hovered_coreEv.exit, label %bb.d, !llvm.loop !230

_ZN3igl6opengl4glfw6Viewer19select_hovered_coreEv.exit: ; preds = %bb.f, %bb.c, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 16, !tbaa !68
  %sext.i = shl i64 %i.bk, 32
  %i.bl = ashr exact i64 %sext.i, 32
  %i.bm = getelementptr inbounds nuw [544 x i8], ptr %i.ap, i64 %i.bl ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 120
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.bp = load float, ptr %i.bn, align 4, !tbaa !69
  store float %i.bp, ptr %i.bo, align 4, !tbaa !69
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 124
  %i.bs = load float, ptr %i.br, align 4, !tbaa !69
  store float %i.bs, ptr %i.bq, align 8, !tbaa !69
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bm, i64 128
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !69
  store float %i.bv, ptr %i.bt, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.by = load i64, ptr %i.bx, align 16, !tbaa !159
  %.phi.trans.insert.i14 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i15 = load ptr, ptr %.phi.trans.insert.i14, align 8, !tbaa !169
  %sext.i16 = shl i64 %i.by, 32
  %i.bz = ashr exact i64 %sext.i16, 32
  %i.ca = getelementptr inbounds nuw [1488 x i8], ptr %.pre.i15, i64 %i.bz ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !202 ; 11 uses
  %i.cd = icmp sgt i64 %i.cc, 0
  br i1 %i.cd, label %bb.g, label %_ZN5Eigen5BlockINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS_16PartialReduxExprINS1_IdLin1ELin1ELi0ELin1ELin1EEENS6_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEEEEERS3_RKNS_9DenseBaseIT_EE.exit

bb.g:                                             ; preds = %_ZN3igl6opengl4glfw6Viewer19select_hovered_coreEv.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cf = uitofp nneg i64 %i.cc to double
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !233 ; 2 uses
  %i.ch = icmp sgt i64 %i.cg, 0
  br i1 %i.ch, label %.lr.ph.split.preheader.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen5BlockINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS_16PartialReduxExprINS1_IdLin1ELin1ELi0ELin1ELin1EEENS6_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEEEEERS3_RKNS_9DenseBaseIT_EE.exit

.lr.ph.split.preheader.i.i.i.i.i.i.i.i.i.i:       ; preds = %bb.g
  %i.ci = load ptr, ptr %i.ca, align 8, !tbaa !209, !noalias !234
  %.not = icmp eq i64 %i.cc, 1
  %i.cj = add nsw i64 %i.cc, -1                   ; 2 uses
  %i.ck = add nsw i64 %i.cc, -2
  %xtraiter101 = and i64 %i.cj, 7                 ; 3 uses
  %i.cl = icmp ult i64 %i.ck, 7
  %unroll_iter106 = and i64 %i.cj, -8
  %lcmp.mod103.not = icmp eq i64 %xtraiter101, 0
  %lcmp.mod105 = icmp ne i64 %xtraiter101, 0
  br label %.lr.ph.split.i.i.i.i.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.split.preheader.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELin1ELi1ELi1ELin1EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i
  %.010.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gx, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELin1ELi1ELi1ELin1EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.split.preheader.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.cm = mul nuw nsw i64 %.010.i.i.i.i.i.i.i.i.i.i, %i.cc
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cm ; 25 uses
  %6 = ptrtoint ptr %i.cn to i64                  ; 2 uses
  %7 = and i64 %6, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %7, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i.i
  %i.co = lshr exact i64 %6, 3
  %i.cp = and i64 %i.co, 1
  %i.cq = call i64 @llvm.smin.i64(i64 %i.cp, i64 %i.cc)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.h, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cq, %bb.h ], [ %i.cc, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i ] ; 10 uses
  %i.cr = sub nsw i64 %i.cc, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 5 uses
  %i.cs = sdiv i64 %i.cr, 4
  %i.ct = shl nsw i64 %i.cs, 2                    ; 2 uses
  %i.cu = sdiv i64 %i.cr, 2
  %i.cv = shl nsw i64 %i.cu, 1                    ; 2 uses
  %i.cw = add nsw i64 %i.ct, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cx = add nsw i64 %i.cv, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.off.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = add i64 %i.cr, 1
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %.off.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cy = getelementptr [8 x i8], ptr %i.cn, i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cz = load <2 x double>, ptr %i.cy, align 1, !tbaa !145 ; 3 uses
  %i.da = icmp sgt i64 %i.cr, 3
  br i1 %i.da, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.db = getelementptr i8, ptr %i.cy, i64 16
  %i.dc = load <2 x double>, ptr %i.db, align 1, !tbaa !145 ; 2 uses
  %i.dd = icmp samesign ugt i64 %i.cr, 7
  br i1 %i.dd, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.j
  %.05478.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.j
  %.076.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.dc, %bb.j ], [ %i.dm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.073.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.cz, %bb.j ], [ %i.di, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.de = fadd <2 x double> %.076.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.073.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.df = icmp sgt i64 %i.cv, %i.ct
  br i1 %i.df, label %bb.k, label %bb.l

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.05482.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.054.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05478.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.054.in81.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.05482.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.07380.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.di, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.cz, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.07679.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.dm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.dc, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.05482.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dh = load <2 x double>, ptr %i.dg, align 1, !tbaa !145
  %i.di = fadd <2 x double> %.07380.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.dh ; 2 uses
  %i.dj = getelementptr [8 x i8], ptr %i.cn, i64 %.054.in81.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dk = getelementptr i8, ptr %i.dj, i64 48
  %i.dl = load <2 x double>, ptr %i.dk, align 1, !tbaa !145
  %i.dm = fadd <2 x double> %.07679.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.dl ; 2 uses
  %.054.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %.05482.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.dn = icmp slt i64 %.054.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.cw
  br i1 %i.dn, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !237

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.do = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.cw
  %i.dp = load <2 x double>, ptr %i.do, align 1, !tbaa !145
  %i.dq = fadd <2 x double> %i.de, %i.dp
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.i
  %.275.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.cz, %bb.i ], [ %i.dq, %bb.k ], [ %i.de, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %shift = shufflevector <2 x double> %.275.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %.275.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %shift
  %i.dr = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 3 uses
  %i.ds = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ds, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %bb.l
  %xtraiter = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 7 ; 3 uses
  %i.dt = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 8
  br i1 %i.dt, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new: ; preds = %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775800
  br label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.05385.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.fe, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %.07284.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi double [ %i.dr, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.fd, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod100 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod100)
  br label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil:  ; preds = %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %.05385.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.dx, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.05385.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %.07284.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = phi double [ %i.dw, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.07284.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.05385.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.dv = load double, ptr %i.du, align 8, !tbaa !72
  %i.dw = fadd double %.07284.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, %i.dv ; 2 uses
  %i.dx = add nuw nsw i64 %.05385.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !238

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:     ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, %bb.l
  %.072.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ %i.dr, %bb.l ], [ %i.fd, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.dw, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil ] ; 2 uses
  %i.dy = icmp slt i64 %i.cx, %i.cc
  br i1 %i.dy, label %.lr.ph91.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELin1ELi1ELi1ELin1EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %.05385.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.fe, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 9 uses
  %.07284.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ %i.dr, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.fd, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.05385.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !72
  %i.eb = fadd double %.07284.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.ea
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.05385.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !72
  %i.ef = fadd double %i.eb, %i.ee
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.05385.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !72
  %i.ej = fadd double %i.ef, %i.ei
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.05385.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.em = load double, ptr %i.el, align 8, !tbaa !72
  %i.en = fadd double %i.ej, %i.em
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.05385.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !72
  %i.er = fadd double %i.en, %i.eq
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.05385.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 40
  %i.eu = load double, ptr %i.et, align 8, !tbaa !72
  %i.ev = fadd double %i.er, %i.eu
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.05385.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 48
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !72
  %i.ez = fadd double %i.ev, %i.ey
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.05385.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 56
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !72
  %i.fd = fadd double %i.ez, %i.fc                ; 3 uses
  %i.fe = add nuw nsw i64 %.05385.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 8 ; 2 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !240

.lr.ph91.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph91.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.05290.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fi, %.lr.ph91.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.cx, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.189.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ %i.fh, %.lr.ph91.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.072.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %.05290.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !72
  %i.fh = fadd double %.189.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.fg ; 2 uses
  %i.fi = add nsw i64 %.05290.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.fj = icmp slt i64 %i.fi, %i.cc
  br i1 %i.fj, label %.lr.ph91.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELin1ELi1ELi1ELin1EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i, !llvm.loop !241

bb.m:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fk = load double, ptr %i.cn, align 8, !tbaa !72 ; 3 uses
  br i1 %.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELin1ELi1ELi1ELin1EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %bb.m
  br i1 %i.cl, label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.094.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gq, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 1, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 9 uses
  %.293.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ %i.gp, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.fk, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %niter107 = phi i64 [ %niter107.next.7, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.094.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !72
  %i.fn = fadd double %.293.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.fm
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.094.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !72
  %i.fr = fadd double %i.fn, %i.fq
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.094.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !72
  %i.fv = fadd double %i.fr, %i.fu
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.094.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !72
  %i.fz = fadd double %i.fv, %i.fy
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.094.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 32
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !72
  %i.gd = fadd double %i.fz, %i.gc
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.094.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 40
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !72
  %i.gh = fadd double %i.gd, %i.gg
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.094.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 48
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !72
  %i.gl = fadd double %i.gh, %i.gk
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.094.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 56
  %i.go = load double, ptr %i.gn, align 8, !tbaa !72
  %i.gp = fadd double %i.gl, %i.go                ; 3 uses
  %i.gq = add nuw nsw i64 %.094.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 8 ; 2 uses
end_hunk_0
