Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/exploded_view?download=true
inline.NumInlined: 1150
inline.NumDeleted: 688
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN3igl13exploded_viewIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_S4_NS2_IiLin1ELi1ELi0ELin1ELi1EEES5_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EENS7_6ScalarESF_RNS1_15PlainObjectBaseIT1_EERNSG_IT2_EERNSG_IT3_EERNSG_IT4_EE:bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !22 ; 10 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %.loopexit180, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = load ptr, ptr %9, align 8, !tbaa !24    ; 15 uses
  %i.an = sdiv i64 %i.ak, 4
  %i.ao = shl nsw i64 %i.an, 2                    ; 3 uses
  %i.ap = sdiv i64 %i.ak, 2
  %i.aq = shl nsw i64 %i.ap, 1                    ; 6 uses
  %.off.i.i.i = add i64 %i.ak, 1
  %.not.i.i.i = icmp ult i64 %.off.i.i.i, 3
  br i1 %.not.i.i.i, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = load <2 x double>, ptr %i.am, align 16, !tbaa !25 ; 3 uses
  %i.as = icmp sgt i64 %i.ak, 3
  br i1 %i.as, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.au = load <2 x double>, ptr %i.at, align 16, !tbaa !25 ; 2 uses
  %i.av = icmp samesign ugt i64 %i.ak, 7
  br i1 %i.av, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.p
  %.072.lcssa.i.i.i = phi <2 x double> [ %i.au, %bb.p ], [ %i.be, %.lr.ph.i.i.i ]
  %.069.lcssa.i.i.i = phi <2 x double> [ %i.ar, %bb.p ], [ %i.ba, %.lr.ph.i.i.i ]
  %i.aw = fadd <2 x double> %.072.lcssa.i.i.i, %.069.lcssa.i.i.i ; 2 uses
  %i.ax = icmp sgt i64 %i.aq, %i.ao
  br i1 %i.ax, label %bb.q, label %bb.r

.lr.ph.i.i.i:                                     ; preds = %bb.p, %.lr.ph.i.i.i
  %.05477.i.i.i = phi i64 [ %.054.i.i.i, %.lr.ph.i.i.i ], [ 4, %bb.p ] ; 3 uses
  %.054.in76.i.i.i = phi i64 [ %.05477.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.p ]
  %.06975.i.i.i = phi <2 x double> [ %i.ba, %.lr.ph.i.i.i ], [ %i.ar, %bb.p ]
  %.07274.i.i.i = phi <2 x double> [ %i.be, %.lr.ph.i.i.i ], [ %i.au, %bb.p ]
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.05477.i.i.i
  %i.az = load <2 x double>, ptr %i.ay, align 16, !tbaa !25
  %i.ba = fadd <2 x double> %.06975.i.i.i, %i.az  ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.054.in76.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.bd = load <2 x double>, ptr %i.bc, align 16, !tbaa !25
  %i.be = fadd <2 x double> %.07274.i.i.i, %i.bd  ; 2 uses
  %.054.i.i.i = add nuw nsw i64 %.05477.i.i.i, 4  ; 2 uses
  %i.bf = icmp slt i64 %.054.i.i.i, %i.ao
  br i1 %i.bf, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !26

bb.q:                                             ; preds = %._crit_edge.i.i.i
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ao
  %i.bh = load <2 x double>, ptr %i.bg, align 16, !tbaa !25
  %i.bi = fadd <2 x double> %i.aw, %i.bh
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge.i.i.i, %bb.o
  %.271.i.i.i = phi <2 x double> [ %i.ar, %bb.o ], [ %i.bi, %bb.q ], [ %i.aw, %._crit_edge.i.i.i ] ; 2 uses
  %shift = shufflevector <2 x double> %.271.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %.271.i.i.i, %shift
  %i.bj = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 3 uses
  %i.bk = icmp slt i64 %i.aq, %i.ak
  br i1 %i.bk, label %.lr.ph82.i.i.i.preheader, label %.loopexit180

.lr.ph82.i.i.i.preheader:                         ; preds = %bb.r
  %i.bl = sub i64 %i.ak, %i.aq
  %xtraiter = and i64 %i.bl, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph82.i.i.i.prol.loopexit, label %.lr.ph82.i.i.i.prol

.lr.ph82.i.i.i.prol:                              ; preds = %.lr.ph82.i.i.i.preheader, %.lr.ph82.i.i.i.prol
  %.05280.i.i.i.prol = phi i64 [ %i.bp, %.lr.ph82.i.i.i.prol ], [ %i.aq, %.lr.ph82.i.i.i.preheader ] ; 2 uses
  %.179.i.i.i.prol = phi double [ %i.bo, %.lr.ph82.i.i.i.prol ], [ %i.bj, %.lr.ph82.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph82.i.i.i.prol ], [ 0, %.lr.ph82.i.i.i.preheader ]
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.am, i64 %.05280.i.i.i.prol
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !28
  %i.bo = fadd double %.179.i.i.i.prol, %i.bn     ; 3 uses
  %i.bp = add nsw i64 %.05280.i.i.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph82.i.i.i.prol.loopexit, label %.lr.ph82.i.i.i.prol, !llvm.loop !30

.lr.ph82.i.i.i.prol.loopexit:                     ; preds = %.lr.ph82.i.i.i.prol, %.lr.ph82.i.i.i.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph82.i.i.i.preheader ], [ %i.bo, %.lr.ph82.i.i.i.prol ]
  %.05280.i.i.i.unr = phi i64 [ %i.aq, %.lr.ph82.i.i.i.preheader ], [ %i.bp, %.lr.ph82.i.i.i.prol ]
  %.179.i.i.i.unr = phi double [ %i.bj, %.lr.ph82.i.i.i.preheader ], [ %i.bo, %.lr.ph82.i.i.i.prol ]
  %i.bq = sub i64 %i.aq, %i.ak
  %i.br = icmp ugt i64 %i.bq, -8
  br i1 %i.br, label %.loopexit180, label %.lr.ph82.i.i.i

.lr.ph82.i.i.i:                                   ; preds = %.lr.ph82.i.i.i.prol.loopexit, %.lr.ph82.i.i.i
  %.05280.i.i.i = phi i64 [ %i.cx, %.lr.ph82.i.i.i ], [ %.05280.i.i.i.unr, %.lr.ph82.i.i.i.prol.loopexit ] ; 9 uses
  %.179.i.i.i = phi double [ %i.cw, %.lr.ph82.i.i.i ], [ %.179.i.i.i.unr, %.lr.ph82.i.i.i.prol.loopexit ]
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.am, i64 %.05280.i.i.i
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !28
  %i.bu = fadd double %.179.i.i.i, %i.bt
  %i.bv = getelementptr [8 x i8], ptr %i.am, i64 %.05280.i.i.i
  %i.bw = getelementptr i8, ptr %i.bv, i64 8
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !28
  %i.by = fadd double %i.bu, %i.bx
  %i.bz = getelementptr [8 x i8], ptr %i.am, i64 %.05280.i.i.i
  %i.ca = getelementptr i8, ptr %i.bz, i64 16
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !28
  %i.cc = fadd double %i.by, %i.cb
  %i.cd = getelementptr [8 x i8], ptr %i.am, i64 %.05280.i.i.i
  %i.ce = getelementptr i8, ptr %i.cd, i64 24
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !28
  %i.cg = fadd double %i.cc, %i.cf
  %i.ch = getelementptr [8 x i8], ptr %i.am, i64 %.05280.i.i.i
  %i.ci = getelementptr i8, ptr %i.ch, i64 32
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !28
  %i.ck = fadd double %i.cg, %i.cj
  %i.cl = getelementptr [8 x i8], ptr %i.am, i64 %.05280.i.i.i
  %i.cm = getelementptr i8, ptr %i.cl, i64 40
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !28
  %i.co = fadd double %i.ck, %i.cn
  %i.cp = getelementptr [8 x i8], ptr %i.am, i64 %.05280.i.i.i
  %i.cq = getelementptr i8, ptr %i.cp, i64 48
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !28
  %i.cs = fadd double %i.co, %i.cr
  %i.ct = getelementptr [8 x i8], ptr %i.am, i64 %.05280.i.i.i
  %i.cu = getelementptr i8, ptr %i.ct, i64 56
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !28
  %i.cw = fadd double %i.cs, %i.cv                ; 2 uses
  %i.cx = add nsw i64 %.05280.i.i.i, 8            ; 2 uses
  %exitcond.not.i.i.i.7 = icmp eq i64 %i.cx, %i.ak
  br i1 %exitcond.not.i.i.i.7, label %.loopexit180, label %.lr.ph82.i.i.i, !llvm.loop !32

bb.s:                                             ; preds = %bb.n
  %i.cy = load double, ptr %i.am, align 8, !tbaa !28
  br label %.loopexit180

.loopexit180:                                     ; preds = %.lr.ph82.i.i.i.prol.loopexit, %.lr.ph82.i.i.i, %bb.m, %bb.r, %bb.s
  %.0.i = phi double [ 0.000000e+00, %bb.m ], [ %i.bj, %bb.r ], [ %i.cy, %bb.s ], [ %.lcssa.unr, %.lr.ph82.i.i.i.prol.loopexit ], [ %i.cw, %.lr.ph82.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !33)
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !36, !noalias !33
  store ptr %9, ptr %11, align 8
  %.sroa.5175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %8, ptr %.sroa.5175.0..sroa_idx, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i64 %i.da, ptr %i.db, align 8, !alias.scope !33
  %i.dc = getelementptr inbounds nuw i8, ptr %11, i64 32
  store double %.0.i, ptr %i.dc, align 8, !tbaa !37, !alias.scope !33
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEC2INS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS_7ProductINS_9TransposeINS1_IdLin1ELi1ELi0ELin1ELi1EEEEENS1_IdLin1ELin1ELi0ELin1ELin1EEELi0EEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EEEEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS_7ProductINS_9TransposeINS0_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_IdLin1ELin1ELi0ELin1ELin1EEELi0EEEKNS_14CwiseNullaryOpINS4_18scalar_constant_opIdEEKS1_EEEEEERKNS_9EigenBaseIT_EE.exit unwind label %bb.v

_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS_7ProductINS_9TransposeINS0_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_IdLin1ELin1ELi0ELin1ELin1EEELi0EEEKNS_14CwiseNullaryOpINS4_18scalar_constant_opIdEEKS1_EEEEEERKNS_9EigenBaseIT_EE.exit: ; preds = %.loopexit180
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  %i.dd = load i64, ptr %i.a, align 8, !tbaa !9
  %i.de = icmp sgt i64 %i.dd, 0
  br i1 %i.de, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS_7ProductINS_9TransposeINS0_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_IdLin1ELin1ELi0ELin1ELin1EEELi0EEEKNS_14CwiseNullaryOpINS4_18scalar_constant_opIdEEKS1_EEEEEERKNS_9EigenBaseIT_EE.exit
  %i.df = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %broadcast.splatinsert320 = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat321 = shufflevector <2 x double> %broadcast.splatinsert320, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert295 = insertelement <2 x double> poison, double %2, i64 0
  %broadcast.splat296 = shufflevector <2 x double> %broadcast.splatinsert295, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert267 = insertelement <2 x double> poison, double %2, i64 0
  %broadcast.splat268 = shufflevector <2 x double> %broadcast.splatinsert267, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert239 = insertelement <2 x double> poison, double %2, i64 0
  %broadcast.splat240 = shufflevector <2 x double> %broadcast.splatinsert239, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %2, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.w

._crit_edge:                                      ; preds = %.loopexit, %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS_7ProductINS_9TransposeINS0_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_IdLin1ELin1ELi0ELin1ELin1EEELi0EEEKNS_14CwiseNullaryOpINS4_18scalar_constant_opIdEEKS1_EEEEEERKNS_9EigenBaseIT_EE.exit
  %i.dk = load ptr, ptr %10, align 8, !tbaa !39
  call void @free(ptr noundef %i.dk) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  %i.dl = load ptr, ptr %9, align 8, !tbaa !24
  call void @free(ptr noundef %i.dl) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  %i.dm = load ptr, ptr %8, align 8, !tbaa !41
  call void @free(ptr noundef %i.dm) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  ret void

bb.t:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit96
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.u:                                             ; preds = %bb.l
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.v:                                             ; preds = %.loopexit180
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  br label %bb.y

bb.w:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 15 uses
  %i.dq = shl i64 %indvars.iv, 5                  ; 2 uses
  %13 = mul i64 %indvars.iv, 24
  %i.dr = shl i64 %indvars.iv, 5
  %14 = or disjoint i64 %i.dr, 8                  ; 2 uses
  %15 = mul i64 %indvars.iv, 24
  %16 = add i64 %15, 8
  %i.ds = shl i64 %indvars.iv, 5
  %17 = or disjoint i64 %i.ds, 16                 ; 2 uses
  %18 = mul i64 %indvars.iv, 24
  %19 = add i64 %18, 16
  %i.dt = shl i64 %indvars.iv, 5
  %20 = or disjoint i64 %i.dt, 24                 ; 2 uses
  %21 = mul i64 %indvars.iv, 24
  %22 = add i64 %21, 24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  %i.du = load ptr, ptr %8, align 8, !tbaa !41, !noalias !42 ; 2 uses
  %i.dv = ptrtoaddr ptr %i.du to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !45)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false), !alias.scope !45
  %i.dx = load i64, ptr %i.dg, align 8, !tbaa !16, !noalias !45 ; 4 uses
  %i.dy = load ptr, ptr %10, align 8, !tbaa !39, !noalias !45 ; 5 uses
  %i.dz = ptrtoaddr ptr %i.dy to i64
  %i.ea = load i64, ptr %i.df, align 8, !tbaa !48, !noalias !45 ; 2 uses
  %.not8.i.i.i.i.i.i.i.i = icmp eq i64 %i.ea, 0
  br i1 %.not8.i.i.i.i.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS1_INS2_17scalar_product_opIddEEKNS1_INS2_20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNSA_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEESF_EEEESF_EEE4evalEv.exit, label %thread-pre-split.i.i.i.i.i.i.i

thread-pre-split.i.i.i.i.i.i.i:                   ; preds = %bb.w
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %12, i64 noundef 1, i64 noundef %i.ea)
          to label %bb.x unwind label %.body

bb.x:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i = load i64, ptr %i.dh, align 8, !tbaa !48, !alias.scope !45 ; 7 uses
  %.pre.i.i = load ptr, ptr %12, align 8, !tbaa !39, !alias.scope !45 ; 6 uses
  %.pre.i.i312 = ptrtoaddr ptr %.pre.i.i to i64   ; 2 uses
  %i.eb = icmp sgt i64 %.pr.i.i.i.i.i.i.i, 0
  br i1 %i.eb, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS1_INS2_17scalar_product_opIddEEKNS1_INS2_20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNSA_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEESF_EEEESF_EEE4evalEv.exit

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.x
  %min.iters.check317 = icmp ugt i64 %.pr.i.i.i.i.i.i.i, 5
  %ident.check310.not = icmp eq i64 %i.dx, 1
  %or.cond = select i1 %min.iters.check317, i1 %ident.check310.not, i1 false
  br i1 %or.cond, label %vector.memcheck311, label %.lr.ph.i.i.i.i.i.i.i.i.preheader339

vector.memcheck311:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %i.ec = shl i64 %indvars.iv, 3
  %i.ed = add i64 %i.ec, %i.dv
  %i.ee = sub i64 %i.ed, %.pre.i.i312
  %diff.check313 = icmp ugt i64 %i.ee, -32
  %i.ef = sub i64 %i.dz, %.pre.i.i312
  %diff.check314 = icmp ugt i64 %i.ef, -32
  %conflict.rdx315 = or i1 %diff.check313, %diff.check314
  br i1 %conflict.rdx315, label %.lr.ph.i.i.i.i.i.i.i.i.preheader339, label %vector.ph318

vector.ph318:                                     ; preds = %vector.memcheck311
  %n.vec319 = and i64 %.pr.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  br label %vector.body322

vector.body322:                                   ; preds = %vector.body322, %vector.ph318
  %index323 = phi i64 [ 0, %vector.ph318 ], [ %index.next328, %vector.body322 ] ; 4 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %index323 ; 2 uses
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %index323 ; 2 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %index323 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %wide.load324 = load <2 x double>, ptr %i.eh, align 8, !tbaa !28
  %wide.load325 = load <2 x double>, ptr %i.ej, align 8, !tbaa !28
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %wide.load326 = load <2 x double>, ptr %i.ei, align 8, !tbaa !28 ; 2 uses
  %wide.load327 = load <2 x double>, ptr %i.ek, align 8, !tbaa !28 ; 2 uses
  %i.el = fsub <2 x double> %wide.load324, %wide.load326
  %i.em = fsub <2 x double> %wide.load325, %wide.load327
  %i.en = fmul <2 x double> %broadcast.splat321, %i.el
  %i.eo = fmul <2 x double> %broadcast.splat321, %i.em
  %i.ep = fadd <2 x double> %wide.load326, %i.en
  %i.eq = fadd <2 x double> %wide.load327, %i.eo
  %i.er = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  store <2 x double> %i.ep, ptr %i.eg, align 8, !tbaa !28
  store <2 x double> %i.eq, ptr %i.er, align 8, !tbaa !28
  %index.next328 = add nuw i64 %index323, 4       ; 2 uses
  %i.es = icmp eq i64 %index.next328, %n.vec319
  br i1 %i.es, label %middle.block329, label %vector.body322, !llvm.loop !49

middle.block329:                                  ; preds = %vector.body322
  %cmp.n330 = icmp eq i64 %.pr.i.i.i.i.i.i.i, %n.vec319
  br i1 %cmp.n330, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS1_INS2_17scalar_product_opIddEEKNS1_INS2_20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNSA_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEESF_EEEESF_EEE4evalEv.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader339

.lr.ph.i.i.i.i.i.i.i.i.preheader339:              ; preds = %vector.memcheck311, %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block329
  %.05.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck311 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %n.vec319, %middle.block329 ] ; 6 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.i.i.ph, 1
  %xtraiter342 = and i64 %.pr.i.i.i.i.i.i.i, 1
  %lcmp.mod343.not = icmp eq i64 %xtraiter342, 0
  br i1 %lcmp.mod343.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader339
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %.05.i.i.i.i.i.i.i.i.ph
  %i.eu = mul nsw i64 %.05.i.i.i.i.i.i.i.i.ph, %i.dx
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.eu
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %.05.i.i.i.i.i.i.i.i.ph
  %i.ex = load double, ptr %i.ev, align 8, !tbaa !28
  %i.ey = load double, ptr %i.ew, align 8, !tbaa !28 ; 2 uses
  %i.ez = fsub double %i.ex, %i.ey
  %i.fa = fmul double %3, %i.ez
  %i.fb = fadd double %i.ey, %i.fa
  store double %i.fb, ptr %i.et, align 8, !tbaa !28
  %i.fc = or disjoint i64 %.05.i.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader339
  %.05.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader339 ], [ %i.fc, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.fd = icmp eq i64 %.pr.i.i.i.i.i.i.i, %.neg
  br i1 %i.fd, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS1_INS2_17scalar_product_opIddEEKNS1_INS2_20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNSA_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEESF_EEEESF_EEE4evalEv.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi i64 [ %i.fx, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %.05.i.i.i.i.i.i.i.i
  %i.ff = mul nsw i64 %.05.i.i.i.i.i.i.i.i, %i.dx
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.ff
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %.05.i.i.i.i.i.i.i.i
  %i.fi = load double, ptr %i.fg, align 8, !tbaa !28
  %i.fj = load double, ptr %i.fh, align 8, !tbaa !28 ; 2 uses
  %i.fk = fsub double %i.fi, %i.fj
  %i.fl = fmul double %3, %i.fk
  %i.fm = fadd double %i.fj, %i.fl
  store double %i.fm, ptr %i.fe, align 8, !tbaa !28
  %i.fn = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %i.fn
  %i.fp = mul nsw i64 %i.fn, %i.dx
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.fp
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.fn
  %i.fs = load double, ptr %i.fq, align 8, !tbaa !28
  %i.ft = load double, ptr %i.fr, align 8, !tbaa !28 ; 2 uses
  %i.fu = fsub double %i.fs, %i.ft
  %i.fv = fmul double %3, %i.fu
  %i.fw = fadd double %i.ft, %i.fv
  store double %i.fw, ptr %i.fo, align 8, !tbaa !28
  %i.fx = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.fx, %.pr.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.1, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS1_INS2_17scalar_product_opIddEEKNS1_INS2_20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNSA_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEESF_EEEESF_EEE4evalEv.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !52

.body:                                            ; preds = %thread-pre-split.i.i.i.i.i.i.i
  %i.fy = landingpad { ptr, i32 }
          cleanup
  %i.fz = load ptr, ptr %12, align 8, !tbaa !39, !alias.scope !45
  call void @free(ptr noundef %i.fz) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  %i.ga = load ptr, ptr %10, align 8, !tbaa !39
  call void @free(ptr noundef %i.ga) #15
  br label %bb.y

_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS1_INS2_17scalar_product_opIddEEKNS1_INS2_20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNSA_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEESF_EEEESF_EEE4evalEv.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %middle.block329
  %.pre = load ptr, ptr %12, align 8, !tbaa !39
  br label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS1_INS2_17scalar_product_opIddEEKNS1_INS2_20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNSA_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEESF_EEEESF_EEE4evalEv.exit

_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS1_INS2_17scalar_product_opIddEEKNS1_INS2_20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNSA_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEESF_EEEESF_EEE4evalEv.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS1_INS2_17scalar_product_opIddEEKNS1_INS2_20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNSA_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEESF_EEEESF_EEE4evalEv.exit.loopexit, %bb.x, %bb.w
  %i.gb = phi ptr [ %.pre, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS1_INS2_17scalar_product_opIddEEKNS1_INS2_20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNSA_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEESF_EEEESF_EEE4evalEv.exit.loopexit ], [ %.pre.i.i, %bb.x ], [ null, %bb.w ] ; 18 uses
  %i.gc = ptrtoaddr ptr %i.gb to i64              ; 4 uses
  %i.gd = load ptr, ptr %1, align 8, !tbaa !53
  %i.ge = load i64, ptr %i.a, align 8, !tbaa !9   ; 3 uses
  %i.gf = getelementptr [4 x i8], ptr %i.gd, i64 %indvars.iv ; 4 uses
  %i.gg = load ptr, ptr %0, align 8, !tbaa !41, !noalias !54 ; 5 uses
  %i.gh = ptrtoaddr ptr %i.gg to i64              ; 4 uses
  %i.gi = load ptr, ptr %8, align 8, !tbaa !41, !noalias !57 ; 2 uses
  %i.gj = ptrtoaddr ptr %i.gi to i64              ; 4 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %indvars.iv ; 16 uses
  %i.gl = shl nuw nsw i64 %indvars.iv, 2          ; 13 uses
  %i.gm = load ptr, ptr %4, align 8, !tbaa !41, !noalias !60 ; 5 uses
  %i.gn = ptrtoaddr ptr %i.gm to i64              ; 12 uses
  %i.go = load i64, ptr %i.di, align 8, !tbaa !36, !noalias !60 ; 25 uses
  %i.gp = load i64, ptr %i.dj, align 8, !tbaa !16 ; 16 uses
  %i.gq = load i64, ptr %i.dg, align 8, !tbaa !16 ; 16 uses
  %i.gr = load i64, ptr %i.l, align 8, !tbaa !16  ; 16 uses
  %i.gs = icmp sgt i64 %i.go, 0                   ; 4 uses
  %i.gt = load ptr, ptr %6, align 8, !tbaa !21    ; 4 uses
  %i.gu = load ptr, ptr %7, align 8, !tbaa !21    ; 4 uses
  %i.gv = load i32, ptr %i.gf, align 4, !tbaa !63 ; 2 uses
  %i.gw = sext i32 %i.gv to i64                   ; 2 uses
  %i.gx = getelementptr inbounds [8 x i8], ptr %i.gg, i64 %i.gw ; 4 uses
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.gl ; 4 uses
  br i1 %i.gs, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %.loopexit210

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS1_INS2_17scalar_product_opIddEEKNS1_INS2_20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNSA_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEESF_EEEESF_EEE4evalEv.exit
  %min.iters.check292 = icmp ult i64 %i.go, 12
  br i1 %min.iters.check292, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader338, label %vector.scevcheck281

vector.scevcheck281:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %ident.check282 = icmp ne i64 %i.gr, 1
  %ident.check283 = icmp ne i64 %i.gp, 1
  %ident.check284 = icmp ne i64 %i.gq, 1
  %i.gz = or i1 %ident.check282, %ident.check283
  %i.ha = or i1 %i.gz, %ident.check284
  br i1 %i.ha, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader338, label %vector.memcheck285

vector.memcheck285:                               ; preds = %vector.scevcheck281
  %i.hb = add i64 %i.dq, %i.gn
  %i.hc = shl nsw i64 %i.gw, 3
  %i.hd = add i64 %i.hc, %i.gh
  %i.he = sub i64 %i.hd, %i.hb
  %diff.check286 = icmp ugt i64 %i.he, -32
  %i.hf = add i64 %13, %i.gn
  %i.hg = sub i64 %i.gj, %i.hf
  %diff.check287 = icmp ugt i64 %i.hg, -32
  %conflict.rdx288 = or i1 %diff.check286, %diff.check287
  %i.hh = add i64 %i.dq, %i.gn
  %i.hi = sub i64 %i.gc, %i.hh
  %diff.check289 = icmp ugt i64 %i.hi, -32
  %conflict.rdx290 = or i1 %conflict.rdx288, %diff.check289
  br i1 %conflict.rdx290, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader338, label %vector.ph293

vector.ph293:                                     ; preds = %vector.memcheck285
  %n.vec294 = and i64 %i.go, 9223372036854775804  ; 3 uses
  br label %vector.body297

vector.body297:                                   ; preds = %vector.body297, %vector.ph293
  %index298 = phi i64 [ 0, %vector.ph293 ], [ %index.next305, %vector.body297 ] ; 5 uses
  %i.hj = getelementptr inbounds [8 x i8], ptr %i.gy, i64 %index298 ; 2 uses
  %i.hk = getelementptr inbounds [8 x i8], ptr %i.gx, i64 %index298 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  %wide.load299 = load <2 x double>, ptr %i.hk, align 8, !tbaa !28
  %wide.load300 = load <2 x double>, ptr %i.hl, align 8, !tbaa !28
  %i.hm = getelementptr inbounds [8 x i8], ptr %i.gk, i64 %index298 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %wide.load301 = load <2 x double>, ptr %i.hm, align 8, !tbaa !28
  %wide.load302 = load <2 x double>, ptr %i.hn, align 8, !tbaa !28
  %i.ho = fsub <2 x double> %wide.load299, %wide.load301
  %i.hp = fsub <2 x double> %wide.load300, %wide.load302
  %i.hq = fmul <2 x double> %broadcast.splat296, %i.ho
  %i.hr = fmul <2 x double> %broadcast.splat296, %i.hp
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %index298 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %wide.load303 = load <2 x double>, ptr %i.hs, align 8, !tbaa !28
  %wide.load304 = load <2 x double>, ptr %i.ht, align 8, !tbaa !28
  %i.hu = fadd <2 x double> %wide.load303, %i.hq
  %i.hv = fadd <2 x double> %wide.load304, %i.hr
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  store <2 x double> %i.hu, ptr %i.hj, align 8, !tbaa !28
  store <2 x double> %i.hv, ptr %i.hw, align 8, !tbaa !28
  %index.next305 = add nuw i64 %index298, 4       ; 2 uses
  %i.hx = icmp eq i64 %index.next305, %n.vec294
  br i1 %i.hx, label %middle.block306, label %vector.body297, !llvm.loop !64

middle.block306:                                  ; preds = %vector.body297
  %cmp.n307 = icmp eq i64 %i.go, %n.vec294
  br i1 %cmp.n307, label %.loopexit210, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader338

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader338:          ; preds = %vector.memcheck285, %vector.scevcheck281, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block306
  %.05.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck285 ], [ 0, %vector.scevcheck281 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec294, %middle.block306 ] ; 7 uses
  %.neg360 = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.ph, 1
  %xtraiter345 = and i64 %i.go, 1
  %lcmp.mod346.not = icmp eq i64 %xtraiter345, 0
  br i1 %lcmp.mod346.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader338
  %i.hy = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.ph, %i.gr
  %i.hz = getelementptr inbounds [8 x i8], ptr %i.gy, i64 %i.hy
  %i.ia = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.ph, %i.gp
  %i.ib = getelementptr inbounds [8 x i8], ptr %i.gx, i64 %i.ia
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !28
  %i.id = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.ph, %i.gq
  %i.ie = getelementptr inbounds [8 x i8], ptr %i.gk, i64 %i.id
  %i.if = load double, ptr %i.ie, align 8, !tbaa !28
  %i.ig = fsub double %i.ic, %i.if
  %i.ih = fmul double %2, %i.ig
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %.05.i.i.i.i.i.i.i.i.i.i.ph
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !28
  %i.ik = fadd double %i.ij, %i.ih
  store double %i.ik, ptr %i.hz, align 8, !tbaa !28
  %i.il = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader338
  %.05.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader338 ], [ %i.il, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.im = icmp eq i64 %i.go, %.neg360
  br i1 %i.im, label %.loopexit210, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.jo, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.in = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, %i.gr
  %i.io = getelementptr inbounds [8 x i8], ptr %i.gy, i64 %i.in
  %i.ip = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, %i.gp
  %i.iq = getelementptr inbounds [8 x i8], ptr %i.gx, i64 %i.ip
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !28
  %i.is = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, %i.gq
  %i.it = getelementptr inbounds [8 x i8], ptr %i.gk, i64 %i.is
  %i.iu = load double, ptr %i.it, align 8, !tbaa !28
  %i.iv = fsub double %i.ir, %i.iu
  %i.iw = fmul double %2, %i.iv
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %.05.i.i.i.i.i.i.i.i.i.i
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !28
  %i.iz = fadd double %i.iy, %i.iw
  store double %i.iz, ptr %i.io, align 8, !tbaa !28
  %i.ja = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 1 ; 4 uses
  %i.jb = mul nsw i64 %i.ja, %i.gr
  %i.jc = getelementptr inbounds [8 x i8], ptr %i.gy, i64 %i.jb
  %i.jd = mul nsw i64 %i.ja, %i.gp
  %i.je = getelementptr inbounds [8 x i8], ptr %i.gx, i64 %i.jd
  %i.jf = load double, ptr %i.je, align 8, !tbaa !28
  %i.jg = mul nsw i64 %i.ja, %i.gq
  %i.jh = getelementptr inbounds [8 x i8], ptr %i.gk, i64 %i.jg
  %i.ji = load double, ptr %i.jh, align 8, !tbaa !28
  %i.jj = fsub double %i.jf, %i.ji
  %i.jk = fmul double %2, %i.jj
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %i.ja
  %i.jm = load double, ptr %i.jl, align 8, !tbaa !28
  %i.jn = fadd double %i.jm, %i.jk
  store double %i.jn, ptr %i.jc, align 8, !tbaa !28
  %i.jo = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.1349 = icmp eq i64 %i.jo, %i.go
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.1349, label %.loopexit210, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !65

.loopexit210:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block306, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS1_INS2_17scalar_product_opIddEEKNS1_INS2_20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNSA_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEESF_EEEESF_EEE4evalEv.exit
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.gl
  store i32 %i.gv, ptr %i.jp, align 4, !tbaa !63
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.gl
  %i.jr = trunc nuw nsw i64 %indvars.iv to i32    ; 4 uses
  store i32 %i.jr, ptr %i.jq, align 4, !tbaa !63
  %i.js = load ptr, ptr %5, align 8, !tbaa !53    ; 4 uses
  %i.jt = getelementptr [4 x i8], ptr %i.js, i64 %i.gl ; 3 uses
  %i.ju = or disjoint i64 %i.gl, 1                ; 7 uses
  %i.jv = trunc nuw i64 %i.ju to i32
  store i32 %i.jv, ptr %i.jt, align 4, !tbaa !63
  %i.jw = load i64, ptr %i.x, align 8, !tbaa !9   ; 8 uses
  %i.jx = getelementptr [4 x i8], ptr %i.jt, i64 %i.jw
  %23 = trunc nuw i64 %i.gl to i32
  %i.jy = or disjoint i32 %23, 2
  store i32 %i.jy, ptr %i.jx, align 4, !tbaa !63
  %.idx179 = shl i64 %i.jw, 3
  %i.jz = getelementptr i8, ptr %i.jt, i64 %.idx179
  %i.ka = trunc i64 %i.gl to i32
  %i.kb = or disjoint i32 %i.ka, 3
  store i32 %i.kb, ptr %i.jz, align 4, !tbaa !63
  %.phi.trans.insert = getelementptr [4 x i8], ptr %i.gf, i64 %i.ge
  %.pre189 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !63 ; 2 uses
  %i.kc = sext i32 %.pre189 to i64                ; 2 uses
  %i.kd = getelementptr inbounds [8 x i8], ptr %i.gg, i64 %i.kc ; 4 uses
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.ju ; 4 uses
  br i1 %i.gs, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.1.preheader, label %.loopexit209

.lr.ph.i.i.i.i.i.i.i.i.i.i.1.preheader:           ; preds = %.loopexit210
  %min.iters.check264 = icmp ult i64 %i.go, 12
  br i1 %min.iters.check264, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.1.preheader337, label %vector.scevcheck253

vector.scevcheck253:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.1.preheader
  %ident.check254 = icmp ne i64 %i.gr, 1
  %ident.check255 = icmp ne i64 %i.gp, 1
  %ident.check256 = icmp ne i64 %i.gq, 1
  %i.kf = or i1 %ident.check254, %ident.check255
  %i.kg = or i1 %i.kf, %ident.check256
  br i1 %i.kg, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.1.preheader337, label %vector.memcheck257

vector.memcheck257:                               ; preds = %vector.scevcheck253
  %i.kh = add i64 %14, %i.gn
  %i.ki = shl nsw i64 %i.kc, 3
  %i.kj = add i64 %i.ki, %i.gh
  %i.kk = sub i64 %i.kj, %i.kh
  %diff.check258 = icmp ugt i64 %i.kk, -32
  %i.kl = add i64 %16, %i.gn
  %i.km = sub i64 %i.gj, %i.kl
  %diff.check259 = icmp ugt i64 %i.km, -32
  %conflict.rdx260 = or i1 %diff.check258, %diff.check259
  %i.kn = add i64 %14, %i.gn
  %i.ko = sub i64 %i.gc, %i.kn
  %diff.check261 = icmp ugt i64 %i.ko, -32
  %conflict.rdx262 = or i1 %conflict.rdx260, %diff.check261
  br i1 %conflict.rdx262, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.1.preheader337, label %vector.ph265

vector.ph265:                                     ; preds = %vector.memcheck257
  %n.vec266 = and i64 %i.go, 9223372036854775804  ; 3 uses
  br label %vector.body269

vector.body269:                                   ; preds = %vector.body269, %vector.ph265
  %index270 = phi i64 [ 0, %vector.ph265 ], [ %index.next277, %vector.body269 ] ; 5 uses
  %i.kp = getelementptr inbounds [8 x i8], ptr %i.ke, i64 %index270 ; 2 uses
  %i.kq = getelementptr inbounds [8 x i8], ptr %i.kd, i64 %index270 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  %wide.load271 = load <2 x double>, ptr %i.kq, align 8, !tbaa !28
  %wide.load272 = load <2 x double>, ptr %i.kr, align 8, !tbaa !28
  %i.ks = getelementptr inbounds [8 x i8], ptr %i.gk, i64 %index270 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  %wide.load273 = load <2 x double>, ptr %i.ks, align 8, !tbaa !28
  %wide.load274 = load <2 x double>, ptr %i.kt, align 8, !tbaa !28
  %i.ku = fsub <2 x double> %wide.load271, %wide.load273
  %i.kv = fsub <2 x double> %wide.load272, %wide.load274
  %i.kw = fmul <2 x double> %broadcast.splat268, %i.ku
  %i.kx = fmul <2 x double> %broadcast.splat268, %i.kv
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %index270 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 16
  %wide.load275 = load <2 x double>, ptr %i.ky, align 8, !tbaa !28
  %wide.load276 = load <2 x double>, ptr %i.kz, align 8, !tbaa !28
  %i.la = fadd <2 x double> %wide.load275, %i.kw
  %i.lb = fadd <2 x double> %wide.load276, %i.kx
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  store <2 x double> %i.la, ptr %i.kp, align 8, !tbaa !28
  store <2 x double> %i.lb, ptr %i.lc, align 8, !tbaa !28
  %index.next277 = add nuw i64 %index270, 4       ; 2 uses
  %i.ld = icmp eq i64 %index.next277, %n.vec266
  br i1 %i.ld, label %middle.block278, label %vector.body269, !llvm.loop !66

middle.block278:                                  ; preds = %vector.body269
  %cmp.n279 = icmp eq i64 %i.go, %n.vec266
  br i1 %cmp.n279, label %.loopexit209, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.1.preheader337

.lr.ph.i.i.i.i.i.i.i.i.i.i.1.preheader337:        ; preds = %vector.memcheck257, %vector.scevcheck253, %.lr.ph.i.i.i.i.i.i.i.i.i.i.1.preheader, %middle.block278
  %.05.i.i.i.i.i.i.i.i.i.i.1.ph = phi i64 [ 0, %vector.memcheck257 ], [ 0, %vector.scevcheck253 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.1.preheader ], [ %n.vec266, %middle.block278 ] ; 7 uses
  %.neg362 = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.1.ph, 1
  %xtraiter351 = and i64 %i.go, 1
  %lcmp.mod352.not = icmp eq i64 %xtraiter351, 0
  br i1 %lcmp.mod352.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.1.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.1.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.1.prol:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.1.preheader337
  %i.le = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.1.ph, %i.gr
  %i.lf = getelementptr inbounds [8 x i8], ptr %i.ke, i64 %i.le
  %i.lg = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.1.ph, %i.gp
  %i.lh = getelementptr inbounds [8 x i8], ptr %i.kd, i64 %i.lg
  %i.li = load double, ptr %i.lh, align 8, !tbaa !28
  %i.lj = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.1.ph, %i.gq
  %i.lk = getelementptr inbounds [8 x i8], ptr %i.gk, i64 %i.lj
  %i.ll = load double, ptr %i.lk, align 8, !tbaa !28
  %i.lm = fsub double %i.li, %i.ll
  %i.ln = fmul double %2, %i.lm
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %.05.i.i.i.i.i.i.i.i.i.i.1.ph
  %i.lp = load double, ptr %i.lo, align 8, !tbaa !28
  %i.lq = fadd double %i.lp, %i.ln
  store double %i.lq, ptr %i.lf, align 8, !tbaa !28
  %i.lr = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.1.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.1.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.i.1.prol.loopexit:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.1.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.1.preheader337
  %.05.i.i.i.i.i.i.i.i.i.i.1.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.1.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.1.preheader337 ], [ %i.lr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.1.prol ]
  %i.ls = icmp eq i64 %i.go, %.neg362
  br i1 %i.ls, label %.loopexit209, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.i.i.i.i.1:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.1.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.1
  %.05.i.i.i.i.i.i.i.i.i.i.1 = phi i64 [ %i.mu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.1 ], [ %.05.i.i.i.i.i.i.i.i.i.i.1.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.1.prol.loopexit ] ; 6 uses
  %i.lt = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.1, %i.gr
  %i.lu = getelementptr inbounds [8 x i8], ptr %i.ke, i64 %i.lt
  %i.lv = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.1, %i.gp
  %i.lw = getelementptr inbounds [8 x i8], ptr %i.kd, i64 %i.lv
  %i.lx = load double, ptr %i.lw, align 8, !tbaa !28
  %i.ly = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.1, %i.gq
  %i.lz = getelementptr inbounds [8 x i8], ptr %i.gk, i64 %i.ly
  %i.ma = load double, ptr %i.lz, align 8, !tbaa !28
  %i.mb = fsub double %i.lx, %i.ma
  %i.mc = fmul double %2, %i.mb
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %.05.i.i.i.i.i.i.i.i.i.i.1
  %i.me = load double, ptr %i.md, align 8, !tbaa !28
  %i.mf = fadd double %i.me, %i.mc
  store double %i.mf, ptr %i.lu, align 8, !tbaa !28
  %i.mg = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.1, 1 ; 4 uses
  %i.mh = mul nsw i64 %i.mg, %i.gr
  %i.mi = getelementptr inbounds [8 x i8], ptr %i.ke, i64 %i.mh
  %i.mj = mul nsw i64 %i.mg, %i.gp
  %i.mk = getelementptr inbounds [8 x i8], ptr %i.kd, i64 %i.mj
  %i.ml = load double, ptr %i.mk, align 8, !tbaa !28
  %i.mm = mul nsw i64 %i.mg, %i.gq
  %i.mn = getelementptr inbounds [8 x i8], ptr %i.gk, i64 %i.mm
  %i.mo = load double, ptr %i.mn, align 8, !tbaa !28
  %i.mp = fsub double %i.ml, %i.mo
  %i.mq = fmul double %2, %i.mp
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %i.mg
  %i.ms = load double, ptr %i.mr, align 8, !tbaa !28
  %i.mt = fadd double %i.ms, %i.mq
  store double %i.mt, ptr %i.mi, align 8, !tbaa !28
  %i.mu = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.1, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.1.1 = icmp eq i64 %i.mu, %i.go
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.1.1, label %.loopexit209, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.1, !llvm.loop !67

.loopexit209:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.1.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.1, %middle.block278, %.loopexit210
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.ju
  store i32 %.pre189, ptr %i.mv, align 4, !tbaa !63
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.ju
  store i32 %i.jr, ptr %i.mw, align 4, !tbaa !63
  %i.mx = getelementptr [4 x i8], ptr %i.js, i64 %i.ju ; 3 uses
  %24 = trunc nuw i64 %i.gl to i32
  store i32 %24, ptr %i.mx, align 4, !tbaa !63
  %i.my = getelementptr [4 x i8], ptr %i.mx, i64 %i.jw
  %i.mz = trunc nuw i64 %i.ju to i32
  %i.na = or disjoint i32 %i.mz, 2
  store i32 %i.na, ptr %i.my, align 4, !tbaa !63
  %.idx.1 = shl i64 %i.jw, 3
  %i.nb = getelementptr i8, ptr %i.mx, i64 %.idx.1
  %25 = or disjoint i64 %i.gl, 2                  ; 6 uses
  %26 = trunc nuw i64 %25 to i32
  store i32 %26, ptr %i.nb, align 4, !tbaa !63
  %.idx = shl i64 %i.ge, 3
  %i.nc = getelementptr i8, ptr %i.gf, i64 %.idx
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !63 ; 2 uses
  %i.ne = sext i32 %i.nd to i64                   ; 2 uses
  %i.nf = getelementptr inbounds [8 x i8], ptr %i.gg, i64 %i.ne ; 4 uses
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %25 ; 4 uses
  br i1 %i.gs, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.2.preheader, label %.loopexit208

.lr.ph.i.i.i.i.i.i.i.i.i.i.2.preheader:           ; preds = %.loopexit209
  %min.iters.check236 = icmp ult i64 %i.go, 12
  br i1 %min.iters.check236, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.2.preheader336, label %vector.scevcheck225

vector.scevcheck225:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.2.preheader
  %ident.check226 = icmp ne i64 %i.gr, 1
  %ident.check227 = icmp ne i64 %i.gp, 1
  %ident.check228 = icmp ne i64 %i.gq, 1
  %i.nh = or i1 %ident.check226, %ident.check227
  %i.ni = or i1 %i.nh, %ident.check228
  br i1 %i.ni, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.2.preheader336, label %vector.memcheck229

vector.memcheck229:                               ; preds = %vector.scevcheck225
  %i.nj = add i64 %17, %i.gn
  %i.nk = shl nsw i64 %i.ne, 3
  %i.nl = add i64 %i.nk, %i.gh
  %i.nm = sub i64 %i.nl, %i.nj
  %diff.check230 = icmp ugt i64 %i.nm, -32
  %i.nn = add i64 %19, %i.gn
  %i.no = sub i64 %i.gj, %i.nn
  %diff.check231 = icmp ugt i64 %i.no, -32
  %conflict.rdx232 = or i1 %diff.check230, %diff.check231
  %i.np = add i64 %17, %i.gn
  %i.nq = sub i64 %i.gc, %i.np
  %diff.check233 = icmp ugt i64 %i.nq, -32
  %conflict.rdx234 = or i1 %conflict.rdx232, %diff.check233
  br i1 %conflict.rdx234, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.2.preheader336, label %vector.ph237

vector.ph237:                                     ; preds = %vector.memcheck229
  %n.vec238 = and i64 %i.go, 9223372036854775804  ; 3 uses
  br label %vector.body241

vector.body241:                                   ; preds = %vector.body241, %vector.ph237
  %index242 = phi i64 [ 0, %vector.ph237 ], [ %index.next249, %vector.body241 ] ; 5 uses
  %i.nr = getelementptr inbounds [8 x i8], ptr %i.ng, i64 %index242 ; 2 uses
  %i.ns = getelementptr inbounds [8 x i8], ptr %i.nf, i64 %index242 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 16
  %wide.load243 = load <2 x double>, ptr %i.ns, align 8, !tbaa !28
  %wide.load244 = load <2 x double>, ptr %i.nt, align 8, !tbaa !28
  %i.nu = getelementptr inbounds [8 x i8], ptr %i.gk, i64 %index242 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 16
  %wide.load245 = load <2 x double>, ptr %i.nu, align 8, !tbaa !28
  %wide.load246 = load <2 x double>, ptr %i.nv, align 8, !tbaa !28
  %i.nw = fsub <2 x double> %wide.load243, %wide.load245
  %i.nx = fsub <2 x double> %wide.load244, %wide.load246
  %i.ny = fmul <2 x double> %broadcast.splat240, %i.nw
  %i.nz = fmul <2 x double> %broadcast.splat240, %i.nx
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %index242 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 16
  %wide.load247 = load <2 x double>, ptr %i.oa, align 8, !tbaa !28
  %wide.load248 = load <2 x double>, ptr %i.ob, align 8, !tbaa !28
  %i.oc = fadd <2 x double> %wide.load247, %i.ny
  %i.od = fadd <2 x double> %wide.load248, %i.nz
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  store <2 x double> %i.oc, ptr %i.nr, align 8, !tbaa !28
  store <2 x double> %i.od, ptr %i.oe, align 8, !tbaa !28
  %index.next249 = add nuw i64 %index242, 4       ; 2 uses
  %i.of = icmp eq i64 %index.next249, %n.vec238
  br i1 %i.of, label %middle.block250, label %vector.body241, !llvm.loop !68

middle.block250:                                  ; preds = %vector.body241
  %cmp.n251 = icmp eq i64 %i.go, %n.vec238
  br i1 %cmp.n251, label %.loopexit208, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.2.preheader336

.lr.ph.i.i.i.i.i.i.i.i.i.i.2.preheader336:        ; preds = %vector.memcheck229, %vector.scevcheck225, %.lr.ph.i.i.i.i.i.i.i.i.i.i.2.preheader, %middle.block250
  %.05.i.i.i.i.i.i.i.i.i.i.2.ph = phi i64 [ 0, %vector.memcheck229 ], [ 0, %vector.scevcheck225 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.2.preheader ], [ %n.vec238, %middle.block250 ] ; 7 uses
  %.neg364 = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.2.ph, 1
  %xtraiter354 = and i64 %i.go, 1
  %lcmp.mod355.not = icmp eq i64 %xtraiter354, 0
  br i1 %lcmp.mod355.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.2.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.2.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.2.prol:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.2.preheader336
  %i.og = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.2.ph, %i.gr
  %i.oh = getelementptr inbounds [8 x i8], ptr %i.ng, i64 %i.og
  %i.oi = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.2.ph, %i.gp
  %i.oj = getelementptr inbounds [8 x i8], ptr %i.nf, i64 %i.oi
  %i.ok = load double, ptr %i.oj, align 8, !tbaa !28
  %i.ol = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.2.ph, %i.gq
  %i.om = getelementptr inbounds [8 x i8], ptr %i.gk, i64 %i.ol
  %i.on = load double, ptr %i.om, align 8, !tbaa !28
  %i.oo = fsub double %i.ok, %i.on
  %i.op = fmul double %2, %i.oo
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %.05.i.i.i.i.i.i.i.i.i.i.2.ph
  %i.or = load double, ptr %i.oq, align 8, !tbaa !28
  %i.os = fadd double %i.or, %i.op
  store double %i.os, ptr %i.oh, align 8, !tbaa !28
  %i.ot = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.2.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.2.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.i.2.prol.loopexit:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.2.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.2.preheader336
  %.05.i.i.i.i.i.i.i.i.i.i.2.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.2.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.2.preheader336 ], [ %i.ot, %.lr.ph.i.i.i.i.i.i.i.i.i.i.2.prol ]
  %i.ou = icmp eq i64 %i.go, %.neg364
  br i1 %i.ou, label %.loopexit208, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.i.i.i.i.i.2:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.2.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.2
  %.05.i.i.i.i.i.i.i.i.i.i.2 = phi i64 [ %i.pw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.2 ], [ %.05.i.i.i.i.i.i.i.i.i.i.2.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.2.prol.loopexit ] ; 6 uses
  %i.ov = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.2, %i.gr
  %i.ow = getelementptr inbounds [8 x i8], ptr %i.ng, i64 %i.ov
  %i.ox = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.2, %i.gp
  %i.oy = getelementptr inbounds [8 x i8], ptr %i.nf, i64 %i.ox
  %i.oz = load double, ptr %i.oy, align 8, !tbaa !28
  %i.pa = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.2, %i.gq
  %i.pb = getelementptr inbounds [8 x i8], ptr %i.gk, i64 %i.pa
  %i.pc = load double, ptr %i.pb, align 8, !tbaa !28
  %i.pd = fsub double %i.oz, %i.pc
  %i.pe = fmul double %2, %i.pd
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %.05.i.i.i.i.i.i.i.i.i.i.2
  %i.pg = load double, ptr %i.pf, align 8, !tbaa !28
  %i.ph = fadd double %i.pg, %i.pe
  store double %i.ph, ptr %i.ow, align 8, !tbaa !28
  %i.pi = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.2, 1 ; 4 uses
  %i.pj = mul nsw i64 %i.pi, %i.gr
  %i.pk = getelementptr inbounds [8 x i8], ptr %i.ng, i64 %i.pj
  %i.pl = mul nsw i64 %i.pi, %i.gp
  %i.pm = getelementptr inbounds [8 x i8], ptr %i.nf, i64 %i.pl
  %i.pn = load double, ptr %i.pm, align 8, !tbaa !28
  %i.po = mul nsw i64 %i.pi, %i.gq
  %i.pp = getelementptr inbounds [8 x i8], ptr %i.gk, i64 %i.po
  %i.pq = load double, ptr %i.pp, align 8, !tbaa !28
  %i.pr = fsub double %i.pn, %i.pq
  %i.ps = fmul double %2, %i.pr
  %i.pt = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %i.pi
  %i.pu = load double, ptr %i.pt, align 8, !tbaa !28
  %i.pv = fadd double %i.pu, %i.ps
  store double %i.pv, ptr %i.pk, align 8, !tbaa !28
  %i.pw = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.2, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.2.1 = icmp eq i64 %i.pw, %i.go
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.2.1, label %.loopexit208, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.2, !llvm.loop !69

.loopexit208:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.2.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.2, %middle.block250, %.loopexit209
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %25
  store i32 %i.nd, ptr %i.px, align 4, !tbaa !63
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %25
  store i32 %i.jr, ptr %i.py, align 4, !tbaa !63
  %i.pz = getelementptr [4 x i8], ptr %i.js, i64 %25 ; 3 uses
  %i.qa = trunc i64 %i.gl to i32
  %i.qb = or disjoint i32 %i.qa, 3
  store i32 %i.qb, ptr %i.pz, align 4, !tbaa !63
  %i.qc = getelementptr [4 x i8], ptr %i.pz, i64 %i.jw
  %i.qd = trunc i64 %i.gl to i32
  store i32 %i.qd, ptr %i.qc, align 4, !tbaa !63
  %.idx179.2 = shl i64 %i.jw, 3
  %i.qe = getelementptr i8, ptr %i.pz, i64 %.idx179.2
  %i.qf = trunc nuw i64 %i.ju to i32
  store i32 %i.qf, ptr %i.qe, align 4, !tbaa !63
  %.idx207 = mul i64 %i.ge, 12
  %i.qg = getelementptr i8, ptr %i.gf, i64 %.idx207
  %i.qh = load i32, ptr %i.qg, align 4, !tbaa !63 ; 2 uses
  %i.qi = sext i32 %i.qh to i64                   ; 2 uses
  %i.qj = getelementptr inbounds [8 x i8], ptr %i.gg, i64 %i.qi ; 4 uses
  %i.qk = or disjoint i64 %i.gl, 3                ; 5 uses
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.qk ; 4 uses
  br i1 %i.gs, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.3.preheader, label %.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.i.3.preheader:           ; preds = %.loopexit208
  %min.iters.check = icmp ult i64 %i.go, 12
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.3.preheader335, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.3.preheader
  %ident.check = icmp ne i64 %i.gr, 1
  %ident.check215 = icmp ne i64 %i.gp, 1
  %ident.check216 = icmp ne i64 %i.gq, 1
  %i.qm = or i1 %ident.check, %ident.check215
  %i.qn = or i1 %i.qm, %ident.check216
  br i1 %i.qn, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.3.preheader335, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.qo = add i64 %20, %i.gn
  %i.qp = shl nsw i64 %i.qi, 3
  %i.qq = add i64 %i.qp, %i.gh
  %i.qr = sub i64 %i.qq, %i.qo
  %diff.check = icmp ugt i64 %i.qr, -32
  %i.qs = add i64 %22, %i.gn
  %i.qt = sub i64 %i.gj, %i.qs
  %diff.check217 = icmp ugt i64 %i.qt, -32
  %conflict.rdx = or i1 %diff.check, %diff.check217
  %i.qu = add i64 %20, %i.gn
  %i.qv = sub i64 %i.gc, %i.qu
  %diff.check218 = icmp ugt i64 %i.qv, -32
  %conflict.rdx219 = or i1 %conflict.rdx, %diff.check218
  br i1 %conflict.rdx219, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.3.preheader335, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.go, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.qw = getelementptr inbounds [8 x i8], ptr %i.ql, i64 %index ; 2 uses
  %i.qx = getelementptr inbounds [8 x i8], ptr %i.qj, i64 %index ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 16
  %wide.load = load <2 x double>, ptr %i.qx, align 8, !tbaa !28
  %wide.load220 = load <2 x double>, ptr %i.qy, align 8, !tbaa !28
  %i.qz = getelementptr inbounds [8 x i8], ptr %i.gk, i64 %index ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 16
  %wide.load221 = load <2 x double>, ptr %i.qz, align 8, !tbaa !28
  %wide.load222 = load <2 x double>, ptr %i.ra, align 8, !tbaa !28
  %i.rb = fsub <2 x double> %wide.load, %wide.load221
  %i.rc = fsub <2 x double> %wide.load220, %wide.load222
  %i.rd = fmul <2 x double> %broadcast.splat, %i.rb
  %i.re = fmul <2 x double> %broadcast.splat, %i.rc
  %i.rf = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %index ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 16
  %wide.load223 = load <2 x double>, ptr %i.rf, align 8, !tbaa !28
  %wide.load224 = load <2 x double>, ptr %i.rg, align 8, !tbaa !28
  %i.rh = fadd <2 x double> %wide.load223, %i.rd
  %i.ri = fadd <2 x double> %wide.load224, %i.re
  %i.rj = getelementptr inbounds nuw i8, ptr %i.qw, i64 16
  store <2 x double> %i.rh, ptr %i.qw, align 8, !tbaa !28
  store <2 x double> %i.ri, ptr %i.rj, align 8, !tbaa !28
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.rk = icmp eq i64 %index.next, %n.vec
  br i1 %i.rk, label %middle.block, label %vector.body, !llvm.loop !70

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.go, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.3.preheader335

.lr.ph.i.i.i.i.i.i.i.i.i.i.3.preheader335:        ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.i.i.i.i.i.i.i.i.i.i.3.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.i.3.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.3.preheader ], [ %n.vec, %middle.block ] ; 7 uses
  %.neg366 = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.3.ph, 1
  %xtraiter357 = and i64 %i.go, 1
  %lcmp.mod358.not = icmp eq i64 %xtraiter357, 0
  br i1 %lcmp.mod358.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.3.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.3.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.3.prol:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.3.preheader335
  %i.rl = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.3.ph, %i.gr
  %i.rm = getelementptr inbounds [8 x i8], ptr %i.ql, i64 %i.rl
  %i.rn = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.3.ph, %i.gp
  %i.ro = getelementptr inbounds [8 x i8], ptr %i.qj, i64 %i.rn
  %i.rp = load double, ptr %i.ro, align 8, !tbaa !28
  %i.rq = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.3.ph, %i.gq
  %i.rr = getelementptr inbounds [8 x i8], ptr %i.gk, i64 %i.rq
  %i.rs = load double, ptr %i.rr, align 8, !tbaa !28
  %i.rt = fsub double %i.rp, %i.rs
  %i.ru = fmul double %2, %i.rt
  %i.rv = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %.05.i.i.i.i.i.i.i.i.i.i.3.ph
  %i.rw = load double, ptr %i.rv, align 8, !tbaa !28
  %i.rx = fadd double %i.rw, %i.ru
  store double %i.rx, ptr %i.rm, align 8, !tbaa !28
  %i.ry = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.3.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.3.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.i.3.prol.loopexit:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.3.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.3.preheader335
  %.05.i.i.i.i.i.i.i.i.i.i.3.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.3.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.3.preheader335 ], [ %i.ry, %.lr.ph.i.i.i.i.i.i.i.i.i.i.3.prol ]
  %i.rz = icmp eq i64 %i.go, %.neg366
  br i1 %i.rz, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.3

.lr.ph.i.i.i.i.i.i.i.i.i.i.3:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.3.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.3
  %.05.i.i.i.i.i.i.i.i.i.i.3 = phi i64 [ %i.tb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.3 ], [ %.05.i.i.i.i.i.i.i.i.i.i.3.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.3.prol.loopexit ] ; 6 uses
  %i.sa = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.3, %i.gr
  %i.sb = getelementptr inbounds [8 x i8], ptr %i.ql, i64 %i.sa
  %i.sc = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.3, %i.gp
  %i.sd = getelementptr inbounds [8 x i8], ptr %i.qj, i64 %i.sc
  %i.se = load double, ptr %i.sd, align 8, !tbaa !28
  %i.sf = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.3, %i.gq
  %i.sg = getelementptr inbounds [8 x i8], ptr %i.gk, i64 %i.sf
  %i.sh = load double, ptr %i.sg, align 8, !tbaa !28
  %i.si = fsub double %i.se, %i.sh
  %i.sj = fmul double %2, %i.si
  %i.sk = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %.05.i.i.i.i.i.i.i.i.i.i.3
  %i.sl = load double, ptr %i.sk, align 8, !tbaa !28
  %i.sm = fadd double %i.sl, %i.sj
  store double %i.sm, ptr %i.sb, align 8, !tbaa !28
  %i.sn = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.3, 1 ; 4 uses
  %i.so = mul nsw i64 %i.sn, %i.gr
  %i.sp = getelementptr inbounds [8 x i8], ptr %i.ql, i64 %i.so
  %i.sq = mul nsw i64 %i.sn, %i.gp
  %i.sr = getelementptr inbounds [8 x i8], ptr %i.qj, i64 %i.sq
  %i.ss = load double, ptr %i.sr, align 8, !tbaa !28
  %i.st = mul nsw i64 %i.sn, %i.gq
  %i.su = getelementptr inbounds [8 x i8], ptr %i.gk, i64 %i.st
  %i.sv = load double, ptr %i.su, align 8, !tbaa !28
  %i.sw = fsub double %i.ss, %i.sv
  %i.sx = fmul double %2, %i.sw
  %i.sy = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %i.sn
  %i.sz = load double, ptr %i.sy, align 8, !tbaa !28
  %i.ta = fadd double %i.sz, %i.sx
  store double %i.ta, ptr %i.sp, align 8, !tbaa !28
  %i.tb = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.3, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.3.1 = icmp eq i64 %i.tb, %i.go
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.3.1, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.3, !llvm.loop !71

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.3.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.3, %middle.block, %.loopexit208
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.qk
  store i32 %i.qh, ptr %i.tc, align 4, !tbaa !63
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.qk
  store i32 %i.jr, ptr %i.td, align 4, !tbaa !63
  %i.te = getelementptr [4 x i8], ptr %i.js, i64 %i.qk ; 3 uses
  %i.tf = trunc nuw i64 %25 to i32
  store i32 %i.tf, ptr %i.te, align 4, !tbaa !63
  %i.tg = getelementptr [4 x i8], ptr %i.te, i64 %i.jw
  %i.th = trunc nuw i64 %i.qk to i32
  %i.ti = and i32 %i.th, -3
  store i32 %i.ti, ptr %i.tg, align 4, !tbaa !63
  %.idx.3 = shl i64 %i.jw, 3
  %i.tj = getelementptr i8, ptr %i.te, i64 %.idx.3
  %27 = trunc nuw i64 %i.gl to i32
  store i32 %27, ptr %i.tj, align 4, !tbaa !63
  call void @free(ptr noundef %i.gb) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.tk = load i64, ptr %i.a, align 8, !tbaa !9
  %i.tl = icmp sgt i64 %i.tk, %indvars.iv.next
  br i1 %i.tl, label %bb.w, label %._crit_edge, !llvm.loop !72

bb.y:                                             ; preds = %.body, %bb.v
  %.pn85.pn.pn = phi { ptr, i32 } [ %i.fy, %.body ], [ %i.dp, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.u
  %.pn85.pn.pn.pn = phi { ptr, i32 } [ %.pn85.pn.pn, %bb.y ], [ %i.do, %bb.u ]
  %i.tm = load ptr, ptr %9, align 8, !tbaa !24
  call void @free(ptr noundef %i.tm) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.t
  %.pn85.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn85.pn.pn.pn, %bb.z ], [ %i.dn, %bb.t ]
  %i.tn = load ptr, ptr %8, align 8, !tbaa !41
  call void @free(ptr noundef %i.tn) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  resume { ptr, i32 } %.pn85.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN3igl10barycenterIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare void @_ZN3igl6volumeIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !36
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !41
  tail call void @free(ptr noundef %i.f) #15
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 2305843009213693951
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !14
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #16
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 3
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #17 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !14
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #16
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !41
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !16
  store i64 %3, ptr %i.c, align 8, !tbaa !36
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !73
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !53
  tail call void @free(ptr noundef %i.f) #15
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 4611686018427387903
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !14
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #16
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 2
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #17 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !14
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #16
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !53
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !9
  store i64 %3, ptr %i.c, align 8, !tbaa !73
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEC2INS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS_7ProductINS_9TransposeINS1_IdLin1ELi1ELi0ELin1ELi1EEEEENS1_IdLin1ELin1ELi0ELin1ELin1EEELi0EEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EEEEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.Eigen::internal::evaluator.124", align 8 ; 11 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !74   ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sdiv i64 9223372036854775807, %i.b
  %i.e = icmp slt i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.f, align 8, !tbaa !14
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #16
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.c
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.b, %bb.a
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 1, i64 noundef %i.b)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS_7ProductINS_9TransposeINS1_IdLin1ELi1ELi0ELin1ELi1EEEEENS1_IdLin1ELin1ELi0ELin1ELin1EEELi0EEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EEEEEEvRKNS_9EigenBaseIT_EE.exit unwind label %bb.g

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS_7ProductINS_9TransposeINS1_IdLin1ELi1ELi0ELin1ELi1EEEEENS1_IdLin1ELin1ELi0ELin1ELin1EEELi0EEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EEEEEEvRKNS_9EigenBaseIT_EE.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  invoke void @_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_7ProductINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS7_IdLin1ELin1ELi0ELin1ELin1EEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi1ELin1ELi1ELi1ELin1EEEEEEENS0_10IndexBasedESL_ddE4DataC2ERKSK_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(41) %1)
          to label %.noexc5 unwind label %bb.g

.noexc5:                                          ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS_7ProductINS_9TransposeINS1_IdLin1ELi1ELi0ELin1ELi1EEEEENS1_IdLin1ELin1ELi0ELin1ELin1EEELi0EEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EEEEEEvRKNS_9EigenBaseIT_EE.exit
  %i.g = load i64, ptr %i.a, align 8, !tbaa !74   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !48
  %.not8.i.i.i.i.i = icmp eq i64 %i.i, %i.g
  br i1 %.not8.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.noexc5
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 1, i64 noundef %i.g)
          to label %thread-pre-split.i.i.i.i unwind label %bb.f

thread-pre-split.i.i.i.i:                         ; preds = %bb.d
  %.pr.i.i.i.i = load i64, ptr %i.h, align 8, !tbaa !48
  br label %bb.e
end_hunk_0
