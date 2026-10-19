Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/edge_se3_plane_calib?download=true
inline.NumInlined: 7154
inline.NumDeleted: 3644
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 64
begin_hunk_0_@_ZN3g2o21BaseVariableSizedEdgeILi3ENS_7Plane3DEE20computeQuadraticFormERKN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEERKNS4_IdLi3ELi1ELi0ELi3ELi1EEE:bb.a
  %i.bv = load i64, ptr %i.p, align 8, !tbaa !99  ; 2 uses
  %i.bw = load i64, ptr %i.m, align 8, !tbaa !99  ; 2 uses
  %i.bx = add nsw i64 %i.bw, %i.bv
  %i.by = load i64, ptr %i.n, align 8, !tbaa !99
  %i.bz = add nsw i64 %i.bx, %i.by
  %i.ca = icmp slt i64 %i.bz, 20
  %i.cb = icmp sgt i64 %i.bv, 0
  %or.cond.i.i.i.i = and i1 %i.cb, %i.ca
  br i1 %or.cond.i.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(26) %i.o, i64 24, i1 false)
  store ptr %12, ptr %7, align 8, !tbaa !261
  %i.cc = load ptr, ptr %12, align 8, !tbaa !106
  %i.cd = load i64, ptr %i.k, align 8, !tbaa !107
  store ptr %i.cc, ptr %i.r, align 8, !tbaa !263
  store i64 %i.cd, ptr %i.s, align 8, !tbaa !111
  %i.ce = load ptr, ptr %i.q, align 8, !tbaa !91
  store ptr %i.ce, ptr %i.t, align 8, !tbaa !114
  %i.cf = load i64, ptr %i.v, align 8, !tbaa !99
  store i64 %i.cf, ptr %i.u, align 8, !tbaa !99
  %i.cg = load i64, ptr %i.l, align 8, !tbaa !108
  store i64 %i.cg, ptr %i.w, align 8, !tbaa !119
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.ch = load ptr, ptr %14, align 8, !tbaa !91
  store ptr %i.ch, ptr %8, align 8, !tbaa !114
  store i64 %i.bw, ptr %i.x, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  store ptr %8, ptr %9, align 8, !tbaa !264
  store ptr %7, ptr %i.y, align 8, !tbaa !265
  store ptr %10, ptr %i.z, align 8, !tbaa !266
  store ptr %14, ptr %i.aa, align 8, !tbaa !267
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS3_INS_7ProductIS6_S9_Li1EEEEENS0_13add_assign_opIddEEEELi4ELi0EE3runERSG_(ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store double 1.000000e+00, ptr %i.c, align 8, !tbaa !43
  invoke void @_ZN5Eigen8internal20generic_product_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_3MapIS3_Li0ENS_6StrideILi0ELi0EEEEENS_10DenseShapeES8_Li8EE13scaleAndAddToIS7_EEvRT_RKS3_RKS7_RKd(ptr noundef nonnull align 8 dereferenceable(26) %14, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(26) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc59 unwind label %bb.l

.noexc59:                                         ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  br label %bb.j

bb.j:                                             ; preds = %.noexc, %.noexc59
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  %.sroa.076.sroa.0.0.copyload = load ptr, ptr %i.ba, align 8
  %.sroa.076.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.sroa.076.sroa.5.0.copyload = load i64, ptr %.sroa.076.sroa.5.0..sroa_idx, align 8
  %i.ci = icmp sgt i32 %i.bl, 0
  br i1 %i.ci, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEpLINS_7ProductINS_9TransposeIKNS1_INS2_IdLin1ELin1ELi0ELin1ELin1EEELi0ES5_EEEENS2_IdLi3ELi1ELi0ELi3ELi1EEELi0EEEEERS6_RKNS7_IT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi i64 [ %i.cx, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %bb.j ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %.05.i.i.i.i.i.i.i.i ; 2 uses
  %i.ck = mul nsw i64 %.05.i.i.i.i.i.i.i.i, %.sroa.076.sroa.5.0.copyload
  %i.cl = getelementptr inbounds [8 x i8], ptr %.sroa.076.sroa.0.0.copyload, i64 %i.ck ; 2 uses
  %i.cm = load <2 x double>, ptr %i.cl, align 1, !tbaa !8
  %i.cn = load <2 x double>, ptr %2, align 8, !tbaa !8
  %i.co = fmul <2 x double> %i.cm, %i.cn          ; 2 uses
  %shift = shufflevector <2 x double> %i.co, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.co, %shift
  %i.cp = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !43
  %i.cs = load double, ptr %i.ab, align 8, !tbaa !43
  %i.ct = fmul double %i.cr, %i.cs
  %i.cu = fadd double %i.cp, %i.ct
  %i.cv = load double, ptr %i.cj, align 8, !tbaa !43
  %i.cw = fadd double %i.cv, %i.cu
  store double %i.cw, ptr %i.cj, align 8, !tbaa !43
  %i.cx = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.cx, %i.bq
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEpLINS_7ProductINS_9TransposeIKNS1_INS2_IdLin1ELin1ELi0ELin1ELin1EEELi0ES5_EEEENS2_IdLi3ELi1ELi0ELi3ELi1EEELi0EEEEERS6_RKNS7_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !240

_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEpLINS_7ProductINS_9TransposeIKNS1_INS2_IdLin1ELin1ELi0ELin1ELin1EEELi0ES5_EEEENS2_IdLi3ELi1ELi0ELi3ELi1EEELi0EEEEERS6_RKNS7_IT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.j
  %.086 = add nuw i64 %.04688, 1                  ; 3 uses
  %i.cy = load ptr, ptr %i.e, align 16, !tbaa !63
  %i.cz = load ptr, ptr %i.d, align 8, !tbaa !64  ; 2 uses
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = ashr exact i64 %i.dc, 3
  %i.de = icmp ult i64 %.086, %i.dd
  br i1 %i.de, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEpLINS_7ProductINS_9TransposeIKNS1_INS2_IdLin1ELin1ELi0ELin1ELin1EEELi0ES5_EEEENS2_IdLi3ELi1ELi0ELi3ELi1EEELi0EEEEERS6_RKNS7_IT_EE.exit
  %i.df = trunc i64 %.04688 to i32
  br label %bb.m

._crit_edge:                                      ; preds = %bb.w, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEpLINS_7ProductINS_9TransposeIKNS1_INS2_IdLin1ELin1ELi0ELin1ELin1EEELi0ES5_EEEENS2_IdLi3ELi1ELi0ELi3ELi1EEELi0EEEEERS6_RKNS7_IT_EE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  %i.dg = load ptr, ptr %12, align 8, !tbaa !106
  call void @free(ptr noundef %i.dg) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  %.pre = load ptr, ptr %i.e, align 16, !tbaa !63
  %.pre95 = load ptr, ptr %i.d, align 8, !tbaa !64
  br label %bb.y

bb.k:                                             ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS_9TransposeIKNS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEEEENS0_IdLi3ELi3ELi0ELi3ELi3EEELi0EEEEERKNS_9EigenBaseIT_EE.exit, %bb.f
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.l:                                             ; preds = %bb.i, %bb.h
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br label %bb.x

bb.m:                                             ; preds = %.lr.ph, %bb.w
  %i.dj = phi ptr [ %i.cz, %.lr.ph ], [ %i.je, %bb.w ]
  %.087 = phi i64 [ %.086, %.lr.ph ], [ %.0, %bb.w ] ; 4 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %.087
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !68
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 100
  %i.dn = load i8, ptr %i.dm, align 4, !tbaa !84, !range !85, !noundef !86
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %bb.w, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dp = load ptr, ptr %i.h, align 8, !tbaa !56
  %i.dq = getelementptr inbounds nuw [32 x i8], ptr %i.dp, i64 %.087 ; 2 uses
  %i.dr = trunc i64 %.087 to i32                  ; 2 uses
  %i.ds = add nsw i32 %i.dr, -1
  %i.dt = mul nsw i32 %i.ds, %i.dr
  %i.du = sdiv i32 %i.dt, 2
  %i.dv = add nsw i32 %i.du, %i.df
  %i.dw = sext i32 %i.dv to i64
  %i.dx = load ptr, ptr %i.ac, align 16, !tbaa !60
  %i.dy = getelementptr inbounds nuw [40 x i8], ptr %i.dx, i64 %i.dw ; 8 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %i.ea = load i8, ptr %i.dz, align 8, !tbaa !97, !range !85, !noundef !86
  %i.eb = trunc nuw i8 %i.ea to i1
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 16 ; 2 uses
  br i1 %i.eb, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %i.dq, i64 24, i1 false)
  store i64 %i.ar, ptr %i.aq, align 8, !alias.scope !268
  %i.ee = load i64, ptr %i.l, align 8, !tbaa !108 ; 5 uses
  %i.ef = load i64, ptr %i.ec, align 8, !tbaa !99 ; 13 uses
  %i.eg = add nsw i64 %i.ef, %i.ee
  %i.eh = load i64, ptr %i.ed, align 8, !tbaa !99 ; 5 uses
  %i.ei = add nsw i64 %i.eg, %i.eh
  %i.ej = icmp slt i64 %i.ei, 20
  %i.ek = icmp sgt i64 %i.ee, 0
  %or.cond.i = and i1 %i.ek, %i.ej
  br i1 %or.cond.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.sroa.06.0.copyload.i.i = load ptr, ptr %16, align 8 ; 7 uses
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8 ; 5 uses
  %i.el = load ptr, ptr %i.dy, align 8, !tbaa !91 ; 5 uses
  %i.em = icmp sgt i64 %i.eh, 0
  %i.en = icmp sgt i64 %i.ef, 0
  %or.cond.i.i.i.i67 = and i1 %i.en, %i.em
  br i1 %or.cond.i.i.i.i67, label %.preheader.i.preheader.split.i.i.i.i, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEpLINS_7ProductINS_9TransposeIKS6_EENSB_IS3_EELi0EEEEERS6_RKNS7_IT_EE.exit

.preheader.i.preheader.split.i.i.i.i:             ; preds = %bb.p
  %i.eo = load ptr, ptr %12, align 8, !tbaa !106, !noalias !269 ; 4 uses
  %i.ep = icmp samesign ugt i64 %i.ee, 1
  %i.eq = load i64, ptr %i.k, align 8, !tbaa !107 ; 5 uses
  br i1 %i.ep, label %.preheader.i.us22.i.i.i.i.preheader, label %.preheader.i.i.i.i.i.preheader

.preheader.i.us22.i.i.i.i.preheader:              ; preds = %.preheader.i.preheader.split.i.i.i.i
  %i.er = add nsw i64 %i.ee, -1                   ; 2 uses
  %i.es = add nsw i64 %i.ee, -2
  %xtraiter123 = and i64 %i.er, 3                 ; 3 uses
  %i.et = icmp ult i64 %i.es, 3
  %unroll_iter = and i64 %i.er, -4
  %lcmp.mod124.not = icmp eq i64 %xtraiter123, 0
  %lcmp.mod126 = icmp ne i64 %xtraiter123, 0
  br label %.preheader.i.us22.i.i.i.i

.preheader.i.i.i.i.i.preheader:                   ; preds = %.preheader.i.preheader.split.i.i.i.i
  %i.eu = shl i64 %i.eh, 3                        ; 2 uses
  %i.ev = mul i64 %i.eu, %i.ef
  %scevgep = getelementptr i8, ptr %i.el, i64 %i.ev ; 2 uses
  %i.ew = shl i64 %i.ef, 3                        ; 2 uses
  %scevgep111 = getelementptr i8, ptr %.sroa.06.0.copyload.i.i, i64 %i.ew
  %scevgep112 = getelementptr i8, ptr %i.eo, i64 %i.eu
  %min.iters.check = icmp ugt i64 %i.ef, 7
  %ident.check.not = icmp eq i64 %.sroa.4.0.copyload.i.i, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %bound0 = icmp ult ptr %i.el, %scevgep111
  %bound1 = icmp ult ptr %.sroa.06.0.copyload.i.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0113 = icmp ult ptr %i.el, %scevgep112
  %bound1114 = icmp ult ptr %i.eo, %scevgep
  %found.conflict115 = and i1 %bound0113, %bound1114
  %stride.check116 = icmp slt i64 %i.ew, 0
  %18 = or i1 %found.conflict115, %stride.check116
  %conflict.rdx = or i1 %found.conflict, %18
  %n.vec = and i64 %i.ef, 9223372036854775804     ; 3 uses
  %cmp.n = icmp eq i64 %i.ef, %n.vec
  %xtraiter = and i64 %i.ef, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i.i.i.i.i

.preheader.i.us22.i.i.i.i:                        ; preds = %.preheader.i.us22.i.i.i.i.preheader, %._crit_edge.i.split.split.us.us.i.i.i.i
  %.0810.i.us23.i.i.i.i = phi i64 [ %i.gx, %._crit_edge.i.split.split.us.us.i.i.i.i ], [ 0, %.preheader.i.us22.i.i.i.i.preheader ] ; 3 uses
  %i.ex = mul nuw nsw i64 %.0810.i.us23.i.i.i.i, %i.ef
  %i.ey = getelementptr [8 x i8], ptr %i.el, i64 %i.ex
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %.0810.i.us23.i.i.i.i ; 6 uses
  br label %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.preheader.us.us.i.i.i.i:     ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.i.i.i.i, %.preheader.i.us22.i.i.i.i
  %.09.i.us18.us.i.i.i.i = phi i64 [ 0, %.preheader.i.us22.i.i.i.i ], [ %i.gw, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.i.i.i.i ] ; 3 uses
  %i.fa = mul nsw i64 %.09.i.us18.us.i.i.i.i, %.sroa.4.0.copyload.i.i
  %i.fb = getelementptr inbounds [8 x i8], ptr %.sroa.06.0.copyload.i.i, i64 %i.fa ; 6 uses
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !43
  %i.fd = load double, ptr %i.ez, align 8, !tbaa !43
  %i.fe = fmul double %i.fc, %i.fd                ; 2 uses
  br i1 %i.et, label %.lr.ph.i.i.i.i.i.i.i.us.us.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.us.us.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.us.us.i.i.i.i:               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.us.us.i.i.i.i
  %.01724.i.i.i.i.i.i.i.us.us.i.i.i.i = phi i64 [ %i.gk, %.lr.ph.i.i.i.i.i.i.i.us.us.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.i.i.i.i ] ; 6 uses
  %.02223.i.i.i.i.i.i.i.us.us.i.i.i.i = phi double [ %i.gj, %.lr.ph.i.i.i.i.i.i.i.us.us.i.i.i.i ], [ %i.fe, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.i.i.i.i ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i.i.i.i.i.i.i.us.us.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.i.i.i.i ]
  %i.ff = getelementptr [8 x i8], ptr %i.fb, i64 %.01724.i.i.i.i.i.i.i.us.us.i.i.i.i
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !43
  %i.fh = mul nsw i64 %.01724.i.i.i.i.i.i.i.us.us.i.i.i.i, %i.eq
  %i.fi = getelementptr [8 x i8], ptr %i.ez, i64 %i.fh
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !43
  %i.fk = fmul double %i.fg, %i.fj
  %i.fl = fadd double %.02223.i.i.i.i.i.i.i.us.us.i.i.i.i, %i.fk
  %i.fm = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.us.us.i.i.i.i, 1 ; 2 uses
  %i.fn = getelementptr [8 x i8], ptr %i.fb, i64 %i.fm
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !43
  %i.fp = mul nsw i64 %i.fm, %i.eq
  %i.fq = getelementptr [8 x i8], ptr %i.ez, i64 %i.fp
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !43
  %i.fs = fmul double %i.fo, %i.fr
  %i.ft = fadd double %i.fl, %i.fs
  %i.fu = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.us.us.i.i.i.i, 2 ; 2 uses
  %i.fv = getelementptr [8 x i8], ptr %i.fb, i64 %i.fu
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !43
  %i.fx = mul nsw i64 %i.fu, %i.eq
  %i.fy = getelementptr [8 x i8], ptr %i.ez, i64 %i.fx
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !43
  %i.ga = fmul double %i.fw, %i.fz
  %i.gb = fadd double %i.ft, %i.ga
  %i.gc = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.us.us.i.i.i.i, 3 ; 2 uses
  %i.gd = getelementptr [8 x i8], ptr %i.fb, i64 %i.gc
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !43
  %i.gf = mul nsw i64 %i.gc, %i.eq
  %i.gg = getelementptr [8 x i8], ptr %i.ez, i64 %i.gf
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !43
  %i.gi = fmul double %i.ge, %i.gh
  %i.gj = fadd double %i.gb, %i.gi                ; 3 uses
  %i.gk = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.us.us.i.i.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.i.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.us.us.i.i.i.i, !llvm.loop !245

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.i.i.i.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.us.us.i.i.i.i
  br i1 %lcmp.mod124.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.us.us.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.us.us.i.i.i.i.epil.preheader: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.i.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.i.i.i.i
  %.01724.i.i.i.i.i.i.i.us.us.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.i.i.i.i ], [ %i.gk, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.i.i.i.i.unr-lcssa ]
  %.02223.i.i.i.i.i.i.i.us.us.i.i.i.i.epil.init = phi double [ %i.fe, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.i.i.i.i ], [ %i.gj, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.i.i.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod126)
  br label %.lr.ph.i.i.i.i.i.i.i.us.us.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.us.us.i.i.i.i.epil:          ; preds = %.lr.ph.i.i.i.i.i.i.i.us.us.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.us.us.i.i.i.i.epil.preheader
  %.01724.i.i.i.i.i.i.i.us.us.i.i.i.i.epil = phi i64 [ %i.gs, %.lr.ph.i.i.i.i.i.i.i.us.us.i.i.i.i.epil ], [ %.01724.i.i.i.i.i.i.i.us.us.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.us.us.i.i.i.i.epil.preheader ] ; 3 uses
  %.02223.i.i.i.i.i.i.i.us.us.i.i.i.i.epil = phi double [ %i.gr, %.lr.ph.i.i.i.i.i.i.i.us.us.i.i.i.i.epil ], [ %.02223.i.i.i.i.i.i.i.us.us.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.us.us.i.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.us.us.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.us.us.i.i.i.i.epil.preheader ]
  %i.gl = getelementptr [8 x i8], ptr %i.fb, i64 %.01724.i.i.i.i.i.i.i.us.us.i.i.i.i.epil
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !43
  %i.gn = mul nsw i64 %.01724.i.i.i.i.i.i.i.us.us.i.i.i.i.epil, %i.eq
  %i.go = getelementptr [8 x i8], ptr %i.ez, i64 %i.gn
  %i.gp = load double, ptr %i.go, align 8, !tbaa !43
  %i.gq = fmul double %i.gm, %i.gp
  %i.gr = fadd double %.02223.i.i.i.i.i.i.i.us.us.i.i.i.i.epil, %i.gq ; 2 uses
  %i.gs = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.us.us.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter123
  br i1 %epil.iter.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.us.us.i.i.i.i.epil, !llvm.loop !246

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.us.us.i.i.i.i.epil, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.i.i.i.i.unr-lcssa
  %.lcssa = phi double [ %i.gj, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.i.i.i.i.unr-lcssa ], [ %i.gr, %.lr.ph.i.i.i.i.i.i.i.us.us.i.i.i.i.epil ]
  %i.gt = getelementptr [8 x i8], ptr %i.ey, i64 %.09.i.us18.us.i.i.i.i ; 2 uses
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !43
  %i.gv = fadd double %.lcssa, %i.gu
  store double %i.gv, ptr %i.gt, align 8, !tbaa !43
  %i.gw = add nuw nsw i64 %.09.i.us18.us.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.us21.us.i.i.i.i = icmp eq i64 %i.gw, %i.ef
  br i1 %exitcond.not.i.us21.us.i.i.i.i, label %._crit_edge.i.split.split.us.us.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.i.i.i.i, !llvm.loop !247

._crit_edge.i.split.split.us.us.i.i.i.i:          ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.i.i.i.i
  %i.gx = add nuw nsw i64 %.0810.i.us23.i.i.i.i, 1 ; 2 uses
  %exitcond12.not.i.us24.i.i.i.i = icmp eq i64 %i.gx, %i.eh
  br i1 %exitcond12.not.i.us24.i.i.i.i, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEpLINS_7ProductINS_9TransposeIKS6_EENSB_IS3_EELi0EEEEERS6_RKNS7_IT_EE.exit, label %.preheader.i.us22.i.i.i.i, !llvm.loop !248

.preheader.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.preheader, %._crit_edge.i.split.split.i.i.i.i
  %.0810.i.i.i.i.i = phi i64 [ %i.hv, %._crit_edge.i.split.split.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i.preheader ] ; 3 uses
  %i.gy = mul nuw nsw i64 %.0810.i.i.i.i.i, %i.ef
  %i.gz = getelementptr [8 x i8], ptr %i.el, i64 %i.gy ; 4 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %.0810.i.i.i.i.i ; 4 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.i.i.i.i
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !43, !alias.scope !270
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.hb, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hc = getelementptr inbounds [8 x i8], ptr %.sroa.06.0.copyload.i.i, i64 %index ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %wide.load = load <2 x double>, ptr %i.hc, align 8, !tbaa !43, !alias.scope !271
  %wide.load117.a = load <2 x double>, ptr %i.hd, align 8, !tbaa !43, !alias.scope !271
  %i.he = fmul <2 x double> %wide.load, %broadcast.splat
  %i.hf = fmul <2 x double> %wide.load117.a, %broadcast.splat
  %i.hg = getelementptr [8 x i8], ptr %i.gz, i64 %index ; 3 uses
  %i.hh = getelementptr i8, ptr %i.hg, i64 16     ; 2 uses
  %wide.load118.a = load <2 x double>, ptr %i.hg, align 8, !tbaa !43, !alias.scope !272, !noalias !273
  %wide.load119 = load <2 x double>, ptr %i.hh, align 8, !tbaa !43, !alias.scope !272, !noalias !273
  %i.hi = fadd <2 x double> %i.he, %wide.load118.a
  %i.hj = fadd <2 x double> %i.hf, %wide.load119
  store <2 x double> %i.hi, ptr %i.hg, align 8, !tbaa !43, !alias.scope !272, !noalias !273
  store <2 x double> %i.hj, ptr %i.hh, align 8, !tbaa !43, !alias.scope !272, !noalias !273
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hk = icmp eq i64 %index.next, %n.vec
  br i1 %i.hk, label %middle.block, label %vector.body, !llvm.loop !253

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.split.split.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i.preheader

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i.preheader: ; preds = %.preheader.i.i.i.i.i, %middle.block
  %.09.i.i.i.i.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i.i.i.i.i ] ; 5 uses
  %.neg = or disjoint i64 %.09.i.i.i.i.i.ph, 1
  br i1 %lcmp.mod.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i.prol.loopexit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i.prol

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i.prol: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i.preheader
  %i.hl = mul nsw i64 %.09.i.i.i.i.i.ph, %.sroa.4.0.copyload.i.i
  %i.hm = getelementptr inbounds [8 x i8], ptr %.sroa.06.0.copyload.i.i, i64 %i.hl
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !43
  %i.ho = load double, ptr %i.ha, align 8, !tbaa !43
  %i.hp = fmul double %i.hn, %i.ho
  %i.hq = getelementptr [8 x i8], ptr %i.gz, i64 %.09.i.i.i.i.i.ph ; 2 uses
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !43
  %i.hs = fadd double %i.hp, %i.hr
  store double %i.hs, ptr %i.hq, align 8, !tbaa !43
  %i.ht = or disjoint i64 %.09.i.i.i.i.i.ph, 1
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i.prol.loopexit

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i.prol.loopexit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i.prol, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i.preheader ], [ %i.ht, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i.prol ]
  %i.hu = icmp eq i64 %i.ef, %.neg
  br i1 %i.hu, label %._crit_edge.i.split.split.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i

._crit_edge.i.split.split.i.i.i.i:                ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i, %middle.block
  %i.hv = add nuw nsw i64 %.0810.i.i.i.i.i, 1     ; 2 uses
  %exitcond12.not.i.i.i.i.i = icmp eq i64 %i.hv, %i.eh
  br i1 %exitcond12.not.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEpLINS_7ProductINS_9TransposeIKS6_EENSB_IS3_EELi0EEEEERS6_RKNS7_IT_EE.exit, label %.preheader.i.i.i.i.i, !llvm.loop !248

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i
  %.09.i.i.i.i.i = phi i64 [ %i.in, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.hw = mul nsw i64 %.09.i.i.i.i.i, %.sroa.4.0.copyload.i.i
  %i.hx = getelementptr inbounds [8 x i8], ptr %.sroa.06.0.copyload.i.i, i64 %i.hw
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !43
  %i.hz = load double, ptr %i.ha, align 8, !tbaa !43
  %i.ia = fmul double %i.hy, %i.hz
  %i.ib = getelementptr [8 x i8], ptr %i.gz, i64 %.09.i.i.i.i.i ; 2 uses
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !43
  %i.id = fadd double %i.ia, %i.ic
  store double %i.id, ptr %i.ib, align 8, !tbaa !43
  %i.ie = add nuw nsw i64 %.09.i.i.i.i.i, 1       ; 2 uses
  %i.if = mul nsw i64 %i.ie, %.sroa.4.0.copyload.i.i
  %i.ig = getelementptr inbounds [8 x i8], ptr %.sroa.06.0.copyload.i.i, i64 %i.if
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !43
  %i.ii = load double, ptr %i.ha, align 8, !tbaa !43
  %i.ij = fmul double %i.ih, %i.ii
  %i.ik = getelementptr [8 x i8], ptr %i.gz, i64 %i.ie ; 2 uses
  %i.il = load double, ptr %i.ik, align 8, !tbaa !43
  %i.im = fadd double %i.ij, %i.il
  store double %i.im, ptr %i.ik, align 8, !tbaa !43
  %i.in = add nuw nsw i64 %.09.i.i.i.i.i, 2       ; 2 uses
  %exitcond.not.i.i.i.i.i.1 = icmp eq i64 %i.in, %i.ef
  br i1 %exitcond.not.i.i.i.i.i.1, label %._crit_edge.i.split.split.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i, !llvm.loop !254

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !43
  invoke void @_ZN5Eigen8internal20generic_product_implINS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_IS5_EENS_10DenseShapeESC_Li8EE13scaleAndAddToIS8_EEvRT_RKSA_RKSB_RKd(ptr noundef nonnull align 8 dereferenceable(26) %i.dy, ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc68 unwind label %bb.r

.noexc68:                                         ; preds = %bb.q
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal20generic_product_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_3MapIS3_Li0ENS_6StrideILi0ELi0EEEEENS_10DenseShapeES8_Li8EE13scaleAndAddToIS7_EEvRT_RKS3_RKS7_RKd:bb.a
.lr.ph.i.i.i.i.i.i29.preheader:                   ; preds = %bb.l
  %i.ce = add nsw i64 %i.by, -1                   ; 2 uses
  %i.cf = add nsw i64 %i.by, -2
  %xtraiter = and i64 %i.ce, 3                    ; 3 uses
  %i.cg = icmp ult i64 %i.cf, 3
  br i1 %i.cg, label %.lr.ph.i.i.i.i.i.i29.epil.preheader, label %.lr.ph.i.i.i.i.i.i29.preheader.new

.lr.ph.i.i.i.i.i.i29.preheader.new:               ; preds = %.lr.ph.i.i.i.i.i.i29.preheader
  %unroll_iter = and i64 %i.ce, -4
  br label %.lr.ph.i.i.i.i.i.i29

.lr.ph.i.i.i.i.i.i29:                             ; preds = %.lr.ph.i.i.i.i.i.i29, %.lr.ph.i.i.i.i.i.i29.preheader.new
  %.01724.i.i.i.i.i.i30 = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i29.preheader.new ], [ %i.dm, %.lr.ph.i.i.i.i.i.i29 ] ; 6 uses
  %.02223.i.i.i.i.i.i31 = phi double [ %i.cc, %.lr.ph.i.i.i.i.i.i29.preheader.new ], [ %i.dl, %.lr.ph.i.i.i.i.i.i29 ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i29.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i.i.i.i29 ]
  %i.ch = mul nsw i64 %.01724.i.i.i.i.i.i30, %i.e
  %i.ci = getelementptr [8 x i8], ptr %i.bt, i64 %i.ch
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !43
  %i.ck = getelementptr [8 x i8], ptr %i.bw, i64 %.01724.i.i.i.i.i.i30
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !43
  %i.cm = fmul double %i.cj, %i.cl
  %i.cn = fadd double %.02223.i.i.i.i.i.i31, %i.cm
  %i.co = add nuw nsw i64 %.01724.i.i.i.i.i.i30, 1 ; 2 uses
  %i.cp = mul nsw i64 %i.co, %i.e
  %i.cq = getelementptr [8 x i8], ptr %i.bt, i64 %i.cp
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !43
  %i.cs = getelementptr [8 x i8], ptr %i.bw, i64 %i.co
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !43
  %i.cu = fmul double %i.cr, %i.ct
  %i.cv = fadd double %i.cn, %i.cu
  %i.cw = add nuw nsw i64 %.01724.i.i.i.i.i.i30, 2 ; 2 uses
  %i.cx = mul nsw i64 %i.cw, %i.e
  %i.cy = getelementptr [8 x i8], ptr %i.bt, i64 %i.cx
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !43
  %i.da = getelementptr [8 x i8], ptr %i.bw, i64 %i.cw
  %i.db = load double, ptr %i.da, align 8, !tbaa !43
  %i.dc = fmul double %i.cz, %i.db
  %i.dd = fadd double %i.cv, %i.dc
  %i.de = add nuw nsw i64 %.01724.i.i.i.i.i.i30, 3 ; 2 uses
  %i.df = mul nsw i64 %i.de, %i.e
  %i.dg = getelementptr [8 x i8], ptr %i.bt, i64 %i.df
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !43
  %i.di = getelementptr [8 x i8], ptr %i.bw, i64 %i.de
  %i.dj = load double, ptr %i.di, align 8, !tbaa !43
  %i.dk = fmul double %i.dh, %i.dj
  %i.dl = fadd double %i.dd, %i.dk                ; 3 uses
  %i.dm = add nuw nsw i64 %.01724.i.i.i.i.i.i30, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IKNS_3MapIS3_Li0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i29, !llvm.loop !294

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IKNS_3MapIS3_Li0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i29
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IKNS_3MapIS3_Li0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i, label %.lr.ph.i.i.i.i.i.i29.epil.preheader

.lr.ph.i.i.i.i.i.i29.epil.preheader:              ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IKNS_3MapIS3_Li0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i29.preheader
  %.01724.i.i.i.i.i.i30.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i29.preheader ], [ %i.dm, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IKNS_3MapIS3_Li0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i.loopexit.unr-lcssa ]
  %.02223.i.i.i.i.i.i31.epil.init = phi double [ %i.cc, %.lr.ph.i.i.i.i.i.i29.preheader ], [ %i.dl, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IKNS_3MapIS3_Li0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod74 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod74)
  br label %.lr.ph.i.i.i.i.i.i29.epil

.lr.ph.i.i.i.i.i.i29.epil:                        ; preds = %.lr.ph.i.i.i.i.i.i29.epil, %.lr.ph.i.i.i.i.i.i29.epil.preheader
  %.01724.i.i.i.i.i.i30.epil = phi i64 [ %i.du, %.lr.ph.i.i.i.i.i.i29.epil ], [ %.01724.i.i.i.i.i.i30.epil.init, %.lr.ph.i.i.i.i.i.i29.epil.preheader ] ; 3 uses
  %.02223.i.i.i.i.i.i31.epil = phi double [ %i.dt, %.lr.ph.i.i.i.i.i.i29.epil ], [ %.02223.i.i.i.i.i.i31.epil.init, %.lr.ph.i.i.i.i.i.i29.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i29.epil ], [ 0, %.lr.ph.i.i.i.i.i.i29.epil.preheader ]
  %i.dn = mul nsw i64 %.01724.i.i.i.i.i.i30.epil, %i.e
  %i.do = getelementptr [8 x i8], ptr %i.bt, i64 %i.dn
  %i.dp = load double, ptr %i.do, align 8, !tbaa !43
  %i.dq = getelementptr [8 x i8], ptr %i.bw, i64 %.01724.i.i.i.i.i.i30.epil
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !43
  %i.ds = fmul double %i.dp, %i.dr
  %i.dt = fadd double %.02223.i.i.i.i.i.i31.epil, %i.ds ; 2 uses
  %i.du = add nuw nsw i64 %.01724.i.i.i.i.i.i30.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IKNS_3MapIS3_Li0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i, label %.lr.ph.i.i.i.i.i.i29.epil, !llvm.loop !295

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IKNS_3MapIS3_Li0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i: ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IKNS_3MapIS3_Li0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i29.epil, %bb.l, %bb.k
  %.0.i.i.i.i28 = phi double [ 0.000000e+00, %bb.k ], [ %i.cc, %bb.l ], [ %i.dl, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IKNS_3MapIS3_Li0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i.loopexit.unr-lcssa ], [ %i.dt, %.lr.ph.i.i.i.i.i.i29.epil ]
  %i.dv = load double, ptr %i.bs, align 8, !tbaa !43
  %i.dw = tail call double @llvm.fmuladd.f64(double %i.bv, double %.0.i.i.i.i28, double %i.dv)
  store double %i.dw, ptr %i.bs, align 8, !tbaa !43
  br label %_ZN5Eigen8internal20generic_product_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_5BlockIKNS_3MapIS3_Li0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb1EEENS_10DenseShapeESC_Li7EE13scaleAndAddToINS4_IS8_Lin1ELi1ELb1EEEEEvRT_RKS3_RSB_RKd.exit

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store ptr %i.bt, ptr %6, align 8
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.b, ptr %.sroa.535.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.10.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %i.bs, ptr %4, align 8
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.k, ptr %.sroa.539.0..sroa_idx, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dx, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 56
  %.sroa.1144.56..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dy, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.1144.56..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(26) %2, i64 24, i1 false)
  call void @_ZN5Eigen8internal19gemv_dense_selectorILi2ELi1ELb1EE3runINS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS4_IKNS_5BlockIKS7_Li1ELin1ELb0EEEEENS4_INSD_ISA_Li1ELin1ELb0EEEEEEEvRKT_RKT0_RT1_RKNSQ_6ScalarE(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %_ZN5Eigen8internal20generic_product_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_5BlockIKNS_3MapIS3_Li0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb1EEENS_10DenseShapeESC_Li7EE13scaleAndAddToINS4_IS8_Lin1ELi1ELb1EEEEEvRT_RKS3_RSB_RKd.exit

_ZNK5Eigen8internal12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi0ELb0EdLi0ELb0ELi0ELi1EEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_3MapIS5_Li0ENS_6StrideILi0ELi0EEEEES9_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEclEllllPNS0_16GemmParallelInfoIlEE.exit.i: ; preds = %bb.i
  %i.dz = load double, ptr %3, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %9, i8 0, i64 16, i1 false)
  %i.ea = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store i64 %i.bq, ptr %i.ea, align 8, !tbaa !131
  %i.eb = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  store i64 %i.k, ptr %i.eb, align 8, !tbaa !132
  %i.ec = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  store i64 %i.b, ptr %i.ec, align 8, !tbaa !133
  call void @_ZN5Eigen8internal37evaluateProductBlockingSizesHeuristicIddLi1ElEEvRT2_S3_S3_S2_(ptr noundef nonnull align 8 dereferenceable(8) %i.ec, ptr noundef nonnull align 8 dereferenceable(8) %i.ea, ptr noundef nonnull align 8 dereferenceable(8) %i.eb, i64 noundef 1)
  %i.ed = load i64, ptr %i.ea, align 8, !tbaa !131
  %i.ee = load i64, ptr %i.ec, align 8, !tbaa !133 ; 2 uses
  %i.ef = mul nsw i64 %i.ee, %i.ed
  %i.eg = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i64 %i.ef, ptr %i.eg, align 8, !tbaa !135
  %i.eh = load i64, ptr %i.eb, align 8, !tbaa !132
  %i.ei = mul nsw i64 %i.eh, %i.ee
  %i.ej = getelementptr inbounds nuw i8, ptr %9, i64 48
  store i64 %i.ei, ptr %i.ej, align 8, !tbaa !136
  %i.ek = load i64, ptr %i.d, align 8, !tbaa !107 ; 2 uses
  %i.el = load i64, ptr %i.g, align 8, !tbaa !99
  %i.em = load i64, ptr %i.a, align 8, !tbaa !108
  %i.en = load ptr, ptr %1, align 8, !tbaa !106
  %i.eo = load ptr, ptr %2, align 8, !tbaa !91
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !99
  %i.er = load ptr, ptr %0, align 8, !tbaa !91
  %i.es = load i64, ptr %i.bp, align 8, !tbaa !99
  invoke void @_ZN5Eigen8internal29general_matrix_matrix_productIldLi0ELb0EdLi0ELb0ELi0ELi1EE3runElllPKdlS4_lPdlldRNS0_15level3_blockingIddEEPNS0_16GemmParallelInfoIlEE(i64 noundef %i.ek, i64 noundef %i.el, i64 noundef %i.em, ptr noundef nonnull %i.en, i64 noundef %i.ek, ptr noundef nonnull %i.eo, i64 noundef %i.eq, ptr noundef nonnull %i.er, i64 noundef 1, i64 noundef %i.es, double noundef %i.dz, ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef null)
          to label %_ZN5Eigen8internal16parallelize_gemmILb1ENS0_12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi0ELb0EdLi0ELb0ELi0ELi1EEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_3MapIS6_Li0ENS_6StrideILi0ELi0EEEEESA_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEElEEvRKT0_T1_SH_SH_b.exit unwind label %bb.n

_ZN5Eigen8internal16parallelize_gemmILb1ENS0_12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi0ELb0EdLi0ELb0ELi0ELi1EEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_3MapIS6_Li0ENS_6StrideILi0ELi0EEEEESA_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEElEEvRKT0_T1_SH_SH_b.exit: ; preds = %_ZNK5Eigen8internal12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi0ELb0EdLi0ELb0ELi0ELi1EEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_3MapIS5_Li0ENS_6StrideILi0ELi0EEEEES9_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEclEllllPNS0_16GemmParallelInfoIlEE.exit.i
  %i.et = load ptr, ptr %9, align 8, !tbaa !137
  call void @free(ptr noundef %i.et) #27
  %i.eu = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !138
  call void @free(ptr noundef %i.ev) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %_ZN5Eigen8internal20generic_product_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_5BlockIKNS_3MapIS3_Li0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb1EEENS_10DenseShapeESC_Li7EE13scaleAndAddToINS4_IS8_Lin1ELi1ELb1EEEEEvRT_RKS3_RSB_RKd.exit

_ZN5Eigen8internal20generic_product_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_5BlockIKNS_3MapIS3_Li0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb1EEENS_10DenseShapeESC_Li7EE13scaleAndAddToINS4_IS8_Lin1ELi1ELb1EEEEEvRT_RKS3_RSB_RKd.exit: ; preds = %bb.m, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IKNS_3MapIS3_Li0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i, %bb.h, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IKNS_3MapIS3_Li0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i, %bb.a, %bb.b, %bb.c, %_ZN5Eigen8internal16parallelize_gemmILb1ENS0_12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi0ELb0EdLi0ELb0ELi0ELi1EEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_3MapIS6_Li0ENS_6StrideILi0ELi0EEEEESA_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEElEEvRKT0_T1_SH_SH_b.exit
  ret void

bb.n:                                             ; preds = %_ZNK5Eigen8internal12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi0ELb0EdLi0ELb0ELi0ELi1EEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_3MapIS5_Li0ENS_6StrideILi0ELi0EEEEES9_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEclEllllPNS0_16GemmParallelInfoIlEE.exit.i
  %i.ew = landingpad { ptr, i32 }
          cleanup
  %i.ex = load ptr, ptr %9, align 8, !tbaa !137
  call void @free(ptr noundef %i.ex) #27
  %i.ey = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !138
  call void @free(ptr noundef %i.ez) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  resume { ptr, i32 } %i.ew
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS3_INS_7ProductIS6_S9_Li1EEEEENS0_13add_assign_opIddEEEELi4ELi0EE3runERSG_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !335, !nonnull !86, !align !123 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !91
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 7
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !99   ; 5 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.preheader.lr.ph.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS3_INS_7ProductIS6_S9_Li1EEEEENS0_13add_assign_opIddEEEELi0ELi0EE3runERSG_.exit

.preheader.lr.ph.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !99   ; 14 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS3_INS_7ProductIS6_S9_Li1EEEEENS0_13add_assign_opIddEEEELi0ELi0EE3runERSG_.exit

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !86, !align !123 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = load ptr, ptr %0, align 8, !nonnull !86, !align !123 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !114  ; 6 uses
  %i.s = load i64, ptr %i.q, align 8, !tbaa !99   ; 5 uses
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !336, !nonnull !86, !align !123 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !106, !noalias !337 ; 7 uses
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !91, !noalias !338 ; 4 uses
  %i.w = load i64, ptr %i.n, align 8, !tbaa !99, !noalias !338 ; 8 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %.preheader.us.i.preheader, label %.preheader.lr.ph.split.split.i

.preheader.us.i.preheader:                        ; preds = %.preheader.lr.ph.split.i
  %min.iters.check120 = icmp ult i64 %i.j, 4
  %n.vec122 = and i64 %i.j, 9223372036854775804   ; 3 uses
  %cmp.n129 = icmp eq i64 %i.j, %n.vec122
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.us.i.preheader, %._crit_edge.split.us.us.i
  %.0813.us.i = phi i64 [ %i.aj, %._crit_edge.split.us.us.i ], [ 0, %.preheader.us.i.preheader ] ; 2 uses
  %i.y = mul nsw i64 %.0813.us.i, %i.s
  %i.z = getelementptr [8 x i8], ptr %i.r, i64 %i.y ; 2 uses
  br i1 %min.iters.check120, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.us.us.i.preheader, label %vector.body123

vector.body123:                                   ; preds = %.preheader.us.i, %vector.body123
  %index124 = phi i64 [ %index.next127, %vector.body123 ], [ 0, %.preheader.us.i ] ; 2 uses
  %i.aa = getelementptr [8 x i8], ptr %i.z, i64 %index124 ; 3 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 16     ; 2 uses
  %wide.load125.a = load <2 x double>, ptr %i.aa, align 8, !tbaa !43
  %wide.load126 = load <2 x double>, ptr %i.ab, align 8, !tbaa !43
  %i.ac = fadd <2 x double> %wide.load125.a, zeroinitializer
  %i.ad = fadd <2 x double> %wide.load126, zeroinitializer
  store <2 x double> %i.ac, ptr %i.aa, align 8, !tbaa !43
  store <2 x double> %i.ad, ptr %i.ab, align 8, !tbaa !43
  %index.next127 = add nuw i64 %index124, 4       ; 2 uses
  %i.ae = icmp eq i64 %index.next127, %n.vec122
  br i1 %i.ae, label %middle.block128, label %vector.body123, !llvm.loop !306

middle.block128:                                  ; preds = %vector.body123
  br i1 %cmp.n129, label %._crit_edge.split.us.us.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.us.us.i.preheader

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.us.us.i.preheader: ; preds = %.preheader.us.i, %middle.block128
  %.09.us.us.i.ph = phi i64 [ 0, %.preheader.us.i ], [ %n.vec122, %middle.block128 ]
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.us.us.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.us.us.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.us.us.i.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.us.us.i
  %.09.us.us.i = phi i64 [ %i.ai, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.us.us.i ], [ %.09.us.us.i.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.us.us.i.preheader ] ; 2 uses
  %i.af = getelementptr [8 x i8], ptr %i.z, i64 %.09.us.us.i ; 2 uses
  %i.ag = load double, ptr %i.af, align 8, !tbaa !43
  %i.ah = fadd double %i.ag, 0.000000e+00
  store double %i.ah, ptr %i.af, align 8, !tbaa !43
  %i.ai = add nuw nsw i64 %.09.us.us.i, 1         ; 2 uses
  %exitcond24.not.i = icmp eq i64 %i.ai, %i.j
  br i1 %exitcond24.not.i, label %._crit_edge.split.us.us.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.us.us.i, !llvm.loop !307

._crit_edge.split.us.us.i:                        ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.us.us.i, %middle.block128
  %i.aj = add nuw nsw i64 %.0813.us.i, 1          ; 2 uses
  %exitcond25.not.i = icmp eq i64 %i.aj, %i.g
  br i1 %exitcond25.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS3_INS_7ProductIS6_S9_Li1EEEEENS0_13add_assign_opIddEEEELi0ELi0EE3runERSG_.exit, label %.preheader.us.i, !llvm.loop !308

.preheader.lr.ph.split.split.i:                   ; preds = %.preheader.lr.ph.split.i
  %i.ak = icmp sgt i64 %i.w, 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !107 ; 5 uses
  br i1 %i.ak, label %.preheader.us17.i.preheader, label %.preheader.i.preheader

.preheader.us17.i.preheader:                      ; preds = %.preheader.lr.ph.split.split.i
  %i.an = add nsw i64 %i.w, -1                    ; 2 uses
  %i.ao = add nsw i64 %i.w, -2
  %xtraiter152 = and i64 %i.an, 3                 ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 3
  %unroll_iter = and i64 %i.an, -4
  %lcmp.mod153.not = icmp eq i64 %xtraiter152, 0
  %lcmp.mod155 = icmp ne i64 %xtraiter152, 0
  br label %.preheader.us17.i

.preheader.i.preheader:                           ; preds = %.preheader.lr.ph.split.split.i
  %i.aq = add nsw i64 %i.g, -1                    ; 2 uses
  %i.ar = mul i64 %i.s, %i.aq
  %i.as = shl i64 %i.j, 3
  %i.at = add i64 %i.ar, %i.j
  %i.au = shl i64 %i.at, 3
  %scevgep = getelementptr i8, ptr %i.r, i64 %i.au ; 2 uses
  %scevgep109 = getelementptr i8, ptr %i.u, i64 %i.as
  %i.av = mul i64 %i.w, %i.aq
  %i.aw = shl i64 %i.av, 3
  %i.ax = getelementptr i8, ptr %i.v, i64 %i.aw
  %scevgep110 = getelementptr i8, ptr %i.ax, i64 8
  %min.iters.check = icmp ult i64 %i.j, 8
  %bound0 = icmp ult ptr %i.r, %scevgep109
  %bound1 = icmp ult ptr %i.u, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0111 = icmp ult ptr %i.r, %scevgep110
  %bound1112 = icmp ult ptr %i.v, %scevgep
  %found.conflict113 = and i1 %bound0111, %bound1112
  %1 = or i64 %i.w, %i.s
  %2 = and i64 %1, 1152921504606846976
  %3 = icmp ne i64 %2, 0
  %4 = or i1 %found.conflict113, %3
  %conflict.rdx = or i1 %found.conflict, %4
  %n.vec = and i64 %i.j, 9223372036854775804      ; 3 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  %xtraiter = and i64 %i.j, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i

.preheader.us17.i:                                ; preds = %.preheader.us17.i.preheader, %._crit_edge.split.split.us.us.i
  %.0813.us18.i = phi i64 [ %i.cy, %._crit_edge.split.split.us.us.i ], [ 0, %.preheader.us17.i.preheader ] ; 3 uses
  %i.ay = mul nuw nsw i64 %.0813.us18.i, %i.w
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ay ; 6 uses
  %i.ba = mul nsw i64 %.0813.us18.i, %i.s
  %i.bb = getelementptr [8 x i8], ptr %i.r, i64 %i.ba
  br label %.lr.ph.i.i.i.i.i.i.preheader.us.us.i

.lr.ph.i.i.i.i.i.i.preheader.us.us.i:             ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.us.us.i, %.preheader.us17.i
  %.09.us10.us.i = phi i64 [ 0, %.preheader.us17.i ], [ %i.cx, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.us.us.i ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.09.us10.us.i ; 6 uses
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !43
  %i.be = load double, ptr %i.az, align 8, !tbaa !43
  %i.bf = fmul double %i.bd, %i.be                ; 2 uses
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i.i.us.us.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.us.us.i

.lr.ph.i.i.i.i.i.i.us.us.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.preheader.us.us.i, %.lr.ph.i.i.i.i.i.i.us.us.i
  %.01724.i.i.i.i.i.i.us.us.i = phi i64 [ %i.cl, %.lr.ph.i.i.i.i.i.i.us.us.i ], [ 1, %.lr.ph.i.i.i.i.i.i.preheader.us.us.i ] ; 6 uses
  %.02223.i.i.i.i.i.i.us.us.i = phi double [ %i.ck, %.lr.ph.i.i.i.i.i.i.us.us.i ], [ %i.bf, %.lr.ph.i.i.i.i.i.i.preheader.us.us.i ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i.i.i.i.i.i.us.us.i ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader.us.us.i ]
  %i.bg = mul nsw i64 %.01724.i.i.i.i.i.i.us.us.i, %i.am
  %i.bh = getelementptr [8 x i8], ptr %i.bc, i64 %i.bg
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !43
  %i.bj = getelementptr [8 x i8], ptr %i.az, i64 %.01724.i.i.i.i.i.i.us.us.i
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !43
  %i.bl = fmul double %i.bi, %i.bk
  %i.bm = fadd double %.02223.i.i.i.i.i.i.us.us.i, %i.bl
  %i.bn = add nuw nsw i64 %.01724.i.i.i.i.i.i.us.us.i, 1 ; 2 uses
  %i.bo = mul nsw i64 %i.bn, %i.am
  %i.bp = getelementptr [8 x i8], ptr %i.bc, i64 %i.bo
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !43
  %i.br = getelementptr [8 x i8], ptr %i.az, i64 %i.bn
  %i.bs = load double, ptr %i.br, align 8, !tbaa !43
  %i.bt = fmul double %i.bq, %i.bs
  %i.bu = fadd double %i.bm, %i.bt
  %i.bv = add nuw nsw i64 %.01724.i.i.i.i.i.i.us.us.i, 2 ; 2 uses
  %i.bw = mul nsw i64 %i.bv, %i.am
  %i.bx = getelementptr [8 x i8], ptr %i.bc, i64 %i.bw
  %i.by = load double, ptr %i.bx, align 8, !tbaa !43
  %i.bz = getelementptr [8 x i8], ptr %i.az, i64 %i.bv
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !43
  %i.cb = fmul double %i.by, %i.ca
  %i.cc = fadd double %i.bu, %i.cb
  %i.cd = add nuw nsw i64 %.01724.i.i.i.i.i.i.us.us.i, 3 ; 2 uses
  %i.ce = mul nsw i64 %i.cd, %i.am
  %i.cf = getelementptr [8 x i8], ptr %i.bc, i64 %i.ce
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !43
  %i.ch = getelementptr [8 x i8], ptr %i.az, i64 %i.cd
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !43
  %i.cj = fmul double %i.cg, %i.ci
  %i.ck = fadd double %i.cc, %i.cj                ; 3 uses
  %i.cl = add nuw nsw i64 %.01724.i.i.i.i.i.i.us.us.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.us.us.i.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.us.us.i, !llvm.loop !309

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.us.us.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.us.us.i
  br i1 %lcmp.mod153.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.us.us.i, label %.lr.ph.i.i.i.i.i.i.us.us.i.epil.preheader

.lr.ph.i.i.i.i.i.i.us.us.i.epil.preheader:        ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.us.us.i.unr-lcssa, %.lr.ph.i.i.i.i.i.i.preheader.us.us.i
  %.01724.i.i.i.i.i.i.us.us.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.preheader.us.us.i ], [ %i.cl, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.us.us.i.unr-lcssa ]
  %.02223.i.i.i.i.i.i.us.us.i.epil.init = phi double [ %i.bf, %.lr.ph.i.i.i.i.i.i.preheader.us.us.i ], [ %i.ck, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.us.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod155)
  br label %.lr.ph.i.i.i.i.i.i.us.us.i.epil

.lr.ph.i.i.i.i.i.i.us.us.i.epil:                  ; preds = %.lr.ph.i.i.i.i.i.i.us.us.i.epil, %.lr.ph.i.i.i.i.i.i.us.us.i.epil.preheader
  %.01724.i.i.i.i.i.i.us.us.i.epil = phi i64 [ %i.ct, %.lr.ph.i.i.i.i.i.i.us.us.i.epil ], [ %.01724.i.i.i.i.i.i.us.us.i.epil.init, %.lr.ph.i.i.i.i.i.i.us.us.i.epil.preheader ] ; 3 uses
  %.02223.i.i.i.i.i.i.us.us.i.epil = phi double [ %i.cs, %.lr.ph.i.i.i.i.i.i.us.us.i.epil ], [ %.02223.i.i.i.i.i.i.us.us.i.epil.init, %.lr.ph.i.i.i.i.i.i.us.us.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.us.us.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.us.us.i.epil.preheader ]
  %i.cm = mul nsw i64 %.01724.i.i.i.i.i.i.us.us.i.epil, %i.am
  %i.cn = getelementptr [8 x i8], ptr %i.bc, i64 %i.cm
  %i.co = load double, ptr %i.cn, align 8, !tbaa !43
  %i.cp = getelementptr [8 x i8], ptr %i.az, i64 %.01724.i.i.i.i.i.i.us.us.i.epil
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !43
  %i.cr = fmul double %i.co, %i.cq
  %i.cs = fadd double %.02223.i.i.i.i.i.i.us.us.i.epil, %i.cr ; 2 uses
  %i.ct = add nuw nsw i64 %.01724.i.i.i.i.i.i.us.us.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter152
  br i1 %epil.iter.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.us.us.i, label %.lr.ph.i.i.i.i.i.i.us.us.i.epil, !llvm.loop !310

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.us.us.i: ; preds = %.lr.ph.i.i.i.i.i.i.us.us.i.epil, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.us.us.i.unr-lcssa
  %.lcssa150 = phi double [ %i.ck, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.us.us.i.unr-lcssa ], [ %i.cs, %.lr.ph.i.i.i.i.i.i.us.us.i.epil ]
  %i.cu = getelementptr [8 x i8], ptr %i.bb, i64 %.09.us10.us.i ; 2 uses
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !43
  %i.cw = fadd double %.lcssa150, %i.cv
  store double %i.cw, ptr %i.cu, align 8, !tbaa !43
  %i.cx = add nuw nsw i64 %.09.us10.us.i, 1       ; 2 uses
  %exitcond22.not.i = icmp eq i64 %i.cx, %i.j
  br i1 %exitcond22.not.i, label %._crit_edge.split.split.us.us.i, label %.lr.ph.i.i.i.i.i.i.preheader.us.us.i, !llvm.loop !311

._crit_edge.split.split.us.us.i:                  ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.us.us.i
  %i.cy = add nuw nsw i64 %.0813.us18.i, 1        ; 2 uses
  %exitcond23.not.i = icmp eq i64 %i.cy, %i.g
  br i1 %exitcond23.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS3_INS_7ProductIS6_S9_Li1EEEEENS0_13add_assign_opIddEEEELi0ELi0EE3runERSG_.exit, label %.preheader.us17.i, !llvm.loop !308

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge.split.split.i
  %.0813.i = phi i64 [ %i.dw, %._crit_edge.split.split.i ], [ 0, %.preheader.i.preheader ] ; 3 uses
  %i.cz = mul nsw i64 %.0813.i, %i.w
  %i.da = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.cz ; 4 uses
  %i.db = mul nsw i64 %.0813.i, %i.s
  %i.dc = getelementptr [8 x i8], ptr %i.r, i64 %i.db ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i
  %i.dd = load double, ptr %i.da, align 8, !tbaa !43, !alias.scope !339
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.dd, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %index ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %wide.load = load <2 x double>, ptr %i.de, align 8, !tbaa !43, !alias.scope !340
  %wide.load116.a = load <2 x double>, ptr %i.df, align 8, !tbaa !43, !alias.scope !340
  %i.dg = fmul <2 x double> %wide.load, %broadcast.splat
  %i.dh = fmul <2 x double> %wide.load116.a, %broadcast.splat
  %i.di = getelementptr [8 x i8], ptr %i.dc, i64 %index ; 3 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 16     ; 2 uses
  %wide.load117.a = load <2 x double>, ptr %i.di, align 8, !tbaa !43, !alias.scope !341, !noalias !342
  %wide.load118 = load <2 x double>, ptr %i.dj, align 8, !tbaa !43, !alias.scope !341, !noalias !342
  %i.dk = fadd <2 x double> %i.dg, %wide.load117.a
  %i.dl = fadd <2 x double> %i.dh, %wide.load118
  store <2 x double> %i.dk, ptr %i.di, align 8, !tbaa !43, !alias.scope !341, !noalias !342
  store <2 x double> %i.dl, ptr %i.dj, align 8, !tbaa !43, !alias.scope !341, !noalias !342
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !316

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.split.split.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.preheader

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.preheader: ; preds = %.preheader.i, %middle.block
  %.09.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i ] ; 5 uses
  %.neg = or disjoint i64 %.09.i.ph, 1
  br i1 %lcmp.mod.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.prol.loopexit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.prol

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.prol: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.preheader
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.09.i.ph
  %i.do = load double, ptr %i.dn, align 8, !tbaa !43
  %i.dp = load double, ptr %i.da, align 8, !tbaa !43
  %i.dq = fmul double %i.do, %i.dp
  %i.dr = getelementptr [8 x i8], ptr %i.dc, i64 %.09.i.ph ; 2 uses
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !43
  %i.dt = fadd double %i.dq, %i.ds
  store double %i.dt, ptr %i.dr, align 8, !tbaa !43
  %i.du = or disjoint i64 %.09.i.ph, 1
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.prol.loopexit

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.prol.loopexit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.prol, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.preheader ], [ %i.du, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.prol ]
  %i.dv = icmp eq i64 %i.j, %.neg
  br i1 %i.dv, label %._crit_edge.split.split.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i

._crit_edge.split.split.i:                        ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i, %middle.block
  %i.dw = add nuw nsw i64 %.0813.i, 1             ; 2 uses
  %exitcond21.not.i = icmp eq i64 %i.dw, %i.g
  br i1 %exitcond21.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS3_INS_7ProductIS6_S9_Li1EEEEENS0_13add_assign_opIddEEEELi0ELi0EE3runERSG_.exit, label %.preheader.i, !llvm.loop !308

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i
  %.09.i = phi i64 [ %i.em, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i ], [ %.09.i.unr, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.prol.loopexit ] ; 4 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.09.i
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !43
  %i.dz = load double, ptr %i.da, align 8, !tbaa !43
  %i.ea = fmul double %i.dy, %i.dz
  %i.eb = getelementptr [8 x i8], ptr %i.dc, i64 %.09.i ; 2 uses
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !43
  %i.ed = fadd double %i.ea, %i.ec
  store double %i.ed, ptr %i.eb, align 8, !tbaa !43
  %i.ee = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ee
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !43
  %i.eh = load double, ptr %i.da, align 8, !tbaa !43
  %i.ei = fmul double %i.eg, %i.eh
  %i.ej = getelementptr [8 x i8], ptr %i.dc, i64 %i.ee ; 2 uses
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !43
  %i.el = fadd double %i.ei, %i.ek
  store double %i.el, ptr %i.ej, align 8, !tbaa !43
  %i.em = add nuw nsw i64 %.09.i, 2               ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.em, %i.j
  br i1 %exitcond.not.i.1, label %._crit_edge.split.split.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i, !llvm.loop !317

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit: ; preds = %bb.a
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !99 ; 8 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !99 ; 2 uses
  %i.er = and i64 %i.eo, 1
  %i.es = icmp sgt i64 %i.eq, 0
  br i1 %i.es, label %.lr.ph66, label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS3_INS_7ProductIS6_S9_Li1EEEEENS0_13add_assign_opIddEEEELi0ELi0EE3runERSG_.exit

.lr.ph66:                                         ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit
  %i.et = lshr exact i64 %i.d, 3
  %i.eu = and i64 %i.et, 1
  %i.ev = tail call i64 @llvm.smin.i64(i64 %i.eu, i64 %i.eo)
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph66, %._crit_edge
  %.03465 = phi i64 [ 0, %.lr.ph66 ], [ %i.ln, %._crit_edge ] ; 7 uses
  %.03564 = phi i64 [ %i.ev, %.lr.ph66 ], [ %.sroa.speculated, %._crit_edge ] ; 6 uses
  %i.ex = sub i64 %i.eo, %.03564                  ; 2 uses
  %i.ey = and i64 %i.ex, -2                       ; 2 uses
  %i.ez = add nsw i64 %i.ey, %.03564              ; 6 uses
  %i.fa = icmp sgt i64 %.03564, 0
  br i1 %i.fa, label %.lr.ph, label %.preheader49

.lr.ph:                                           ; preds = %bb.c
  %i.fb = load ptr, ptr %0, align 8, !tbaa !343, !nonnull !86, !align !123 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !114
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !99
  %i.ff = load ptr, ptr %i.ew, align 8, !tbaa !344, !nonnull !86, !align !123 ; 3 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !336, !nonnull !86, !align !123 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !106, !noalias !345 ; 6 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !91, !noalias !346
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !99, !noalias !346 ; 5 uses
  %i.fm = mul nsw i64 %i.fl, %.03465
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.fj, i64 %i.fm ; 6 uses
  %i.fo = icmp eq i64 %i.fl, 0
  %i.fp = mul nsw i64 %i.fe, %.03465
  %i.fq = getelementptr [8 x i8], ptr %i.fc, i64 %i.fp ; 4 uses
  br i1 %i.fo, label %.preheader49.loopexit, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.fr = icmp sgt i64 %i.fl, 1
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !107 ; 5 uses
  %i.fu = load double, ptr %i.fh, align 8, !tbaa !43
  %i.fv = load double, ptr %i.fn, align 8, !tbaa !43
  %i.fw = fmul double %i.fu, %i.fv                ; 3 uses
  br i1 %i.fr, label %.lr.ph.i.i.i.i.i.i.us.preheader, label %.preheader49.loopexit69

.lr.ph.i.i.i.i.i.i.us.preheader:                  ; preds = %.lr.ph.split
  %i.fx = add nsw i64 %i.fl, -1                   ; 2 uses
  %i.fy = add nsw i64 %i.fl, -2
  %xtraiter156 = and i64 %i.fx, 3                 ; 3 uses
  %i.fz = icmp ult i64 %i.fy, 3
  br i1 %i.fz, label %.lr.ph.i.i.i.i.i.i.us.epil.preheader, label %.lr.ph.i.i.i.i.i.i.us.preheader.new

.lr.ph.i.i.i.i.i.i.us.preheader.new:              ; preds = %.lr.ph.i.i.i.i.i.i.us.preheader
  %unroll_iter161 = and i64 %i.fx, -4
  br label %.lr.ph.i.i.i.i.i.i.us

.lr.ph.i.i.i.i.i.i.us:                            ; preds = %.lr.ph.i.i.i.i.i.i.us, %.lr.ph.i.i.i.i.i.i.us.preheader.new
  %.01724.i.i.i.i.i.i.us = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.us.preheader.new ], [ %i.hf, %.lr.ph.i.i.i.i.i.i.us ] ; 6 uses
  %.02223.i.i.i.i.i.i.us = phi double [ %i.fw, %.lr.ph.i.i.i.i.i.i.us.preheader.new ], [ %i.he, %.lr.ph.i.i.i.i.i.i.us ]
  %niter162 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.us.preheader.new ], [ %niter162.next.3, %.lr.ph.i.i.i.i.i.i.us ]
  %i.ga = mul nsw i64 %.01724.i.i.i.i.i.i.us, %i.ft
  %i.gb = getelementptr [8 x i8], ptr %i.fh, i64 %i.ga
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !43
  %i.gd = getelementptr [8 x i8], ptr %i.fn, i64 %.01724.i.i.i.i.i.i.us
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !43
  %i.gf = fmul double %i.gc, %i.ge
  %i.gg = fadd double %.02223.i.i.i.i.i.i.us, %i.gf
  %i.gh = add nuw nsw i64 %.01724.i.i.i.i.i.i.us, 1 ; 2 uses
  %i.gi = mul nsw i64 %i.gh, %i.ft
  %i.gj = getelementptr [8 x i8], ptr %i.fh, i64 %i.gi
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !43
  %i.gl = getelementptr [8 x i8], ptr %i.fn, i64 %i.gh
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !43
  %i.gn = fmul double %i.gk, %i.gm
  %i.go = fadd double %i.gg, %i.gn
  %i.gp = add nuw nsw i64 %.01724.i.i.i.i.i.i.us, 2 ; 2 uses
  %i.gq = mul nsw i64 %i.gp, %i.ft
  %i.gr = getelementptr [8 x i8], ptr %i.fh, i64 %i.gq
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !43
  %i.gt = getelementptr [8 x i8], ptr %i.fn, i64 %i.gp
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !43
  %i.gv = fmul double %i.gs, %i.gu
  %i.gw = fadd double %i.go, %i.gv
  %i.gx = add nuw nsw i64 %.01724.i.i.i.i.i.i.us, 3 ; 2 uses
  %i.gy = mul nsw i64 %i.gx, %i.ft
  %i.gz = getelementptr [8 x i8], ptr %i.fh, i64 %i.gy
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !43
  %i.hb = getelementptr [8 x i8], ptr %i.fn, i64 %i.gx
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !43
  %i.hd = fmul double %i.ha, %i.hc
  %i.he = fadd double %i.gw, %i.hd                ; 3 uses
  %i.hf = add nuw nsw i64 %.01724.i.i.i.i.i.i.us, 4 ; 2 uses
  %niter162.next.3 = add i64 %niter162, 4         ; 2 uses
  %niter162.ncmp.3 = icmp eq i64 %niter162.next.3, %unroll_iter161
  br i1 %niter162.ncmp.3, label %.preheader49.loopexit68.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.us, !llvm.loop !309

.preheader49.loopexit:                            ; preds = %.lr.ph
  %i.hg = load double, ptr %i.fq, align 8, !tbaa !43
  %i.hh = fadd double %i.hg, 0.000000e+00
  br label %.preheader49.sink.split

.preheader49.loopexit68.unr-lcssa:                ; preds = %.lr.ph.i.i.i.i.i.i.us
  %lcmp.mod158.not = icmp eq i64 %xtraiter156, 0
  br i1 %lcmp.mod158.not, label %.preheader49.loopexit68, label %.lr.ph.i.i.i.i.i.i.us.epil.preheader

.lr.ph.i.i.i.i.i.i.us.epil.preheader:             ; preds = %.preheader49.loopexit68.unr-lcssa, %.lr.ph.i.i.i.i.i.i.us.preheader
  %.01724.i.i.i.i.i.i.us.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.us.preheader ], [ %i.hf, %.preheader49.loopexit68.unr-lcssa ]
  %.02223.i.i.i.i.i.i.us.epil.init = phi double [ %i.fw, %.lr.ph.i.i.i.i.i.i.us.preheader ], [ %i.he, %.preheader49.loopexit68.unr-lcssa ]
  %lcmp.mod160 = icmp ne i64 %xtraiter156, 0
  tail call void @llvm.assume(i1 %lcmp.mod160)
  br label %.lr.ph.i.i.i.i.i.i.us.epil
end_hunk_1
begin_hunk_2_@_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll:bb.a
  %i.cd = getelementptr [8 x i8], ptr %i.ca, i64 %.175.us
  %i.ce = getelementptr [8 x i8], ptr %i.cd, i64 %i.cc
  %i.cf = load <2 x double>, ptr %i.ce, align 1, !tbaa !8
  %i.cg = getelementptr inbounds [8 x i8], ptr %1, i64 %.372.us.epil.init
  store <2 x double> %i.cf, ptr %i.cg, align 16, !tbaa !8
  %i.ch = add nsw i64 %.372.us.epil.init, 2
  br label %._crit_edge.us78

._crit_edge.us78:                                 ; preds = %._crit_edge.us78.unr-lcssa, %.epil.preheader123
  %.lcssa117 = phi i64 [ %i.by, %._crit_edge.us78.unr-lcssa ], [ %i.ch, %.epil.preheader123 ] ; 2 uses
  %i.ci = add nuw nsw i64 %.175.us, 2             ; 3 uses
  %i.cj = icmp slt i64 %i.ci, %i.g
  br i1 %i.cj, label %.preheader62.us, label %.preheader61, !llvm.loop !393

.preheader61:                                     ; preds = %._crit_edge.us78, %.preheader62.preheader, %.preheader63
  %.258.lcssa = phi i64 [ %.056.lcssa, %.preheader63 ], [ %.056.lcssa, %.preheader62.preheader ], [ %.lcssa117, %._crit_edge.us78 ]
  %.1.lcssa = phi i64 [ %.055.lcssa, %.preheader63 ], [ %i.bh, %.preheader62.preheader ], [ %i.ci, %._crit_edge.us78 ] ; 3 uses
  %i.ck = icmp slt i64 %.1.lcssa, %4
  %i.cl = icmp sgt i64 %3, 0
  %or.cond = and i1 %i.ck, %i.cl
  br i1 %or.cond, label %.preheader.lr.ph.split, label %._crit_edge86.split

.preheader.lr.ph.split:                           ; preds = %.preheader61
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cn = load ptr, ptr %2, align 8, !tbaa !125   ; 2 uses
  %i.co = ptrtoaddr ptr %i.cn to i64
  %i.cp = load i64, ptr %i.cm, align 8, !tbaa !126 ; 6 uses
  %min.iters.check = icmp ugt i64 %3, 5
  %ident.check.not = icmp eq i64 %i.cp, 1
  %or.cond115 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %n.vec = and i64 %3, 9223372036854775804        ; 4 uses
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter130 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod131.not = icmp eq i64 %xtraiter130, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvar = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %.285 = phi i64 [ %.1.lcssa, %.preheader.lr.ph.split ], [ %i.dn, %._crit_edge ] ; 2 uses
  %.484 = phi i64 [ %.258.lcssa, %.preheader.lr.ph.split ], [ %.lcssa, %._crit_edge ] ; 5 uses
  %i.cq = getelementptr [8 x i8], ptr %i.cn, i64 %.285 ; 6 uses
  br i1 %or.cond115, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.preheader
  %i.cr = add i64 %.1.lcssa, %indvar
  %i.cs = shl i64 %i.cr, 3
  %i.ct = add i64 %i.cs, %i.co
  %i.cu = sub i64 %i.a, %i.ct
  %i.cv = shl i64 %.484, 3
  %i.cw = add i64 %i.cu, %i.cv
  %i.cx = add i64 %i.cw, -1
  %diff.check = icmp ult i64 %i.cx, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.cy = add i64 %.484, %n.vec                   ; 2 uses
  %i.cz = getelementptr [8 x i8], ptr %1, i64 %.484
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.da = getelementptr [8 x i8], ptr %i.cq, i64 %index ; 2 uses
  %i.db = getelementptr i8, ptr %i.da, i64 16
  %wide.load = load <2 x double>, ptr %i.da, align 8, !tbaa !43
  %wide.load113 = load <2 x double>, ptr %i.db, align 8, !tbaa !43
  %i.dc = getelementptr [8 x i8], ptr %i.cz, i64 %index ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store <2 x double> %wide.load, ptr %i.dc, align 8, !tbaa !43
  store <2 x double> %wide.load113, ptr %i.dd, align 8, !tbaa !43
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !394

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader, %middle.block
  %.083.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.582.ph = phi i64 [ %.484, %vector.memcheck ], [ %.484, %.preheader ], [ %i.cy, %middle.block ] ; 2 uses
  br i1 %lcmp.mod131.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.083.prol = phi i64 [ %i.dk, %scalar.ph.prol ], [ %.083.ph, %scalar.ph.preheader ] ; 2 uses
  %.582.prol = phi i64 [ %i.di, %scalar.ph.prol ], [ %.582.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.df = mul nsw i64 %i.cp, %.083.prol
  %i.dg = getelementptr [8 x i8], ptr %i.cq, i64 %i.df
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !43
  %i.di = add nsw i64 %.582.prol, 1               ; 3 uses
  %i.dj = getelementptr inbounds [8 x i8], ptr %1, i64 %.582.prol
  store double %i.dh, ptr %i.dj, align 8, !tbaa !43
  %i.dk = add nuw nsw i64 %.083.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter130
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !395

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa116.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.di, %scalar.ph.prol ]
  %.083.unr = phi i64 [ %.083.ph, %scalar.ph.preheader ], [ %i.dk, %scalar.ph.prol ]
  %.582.unr = phi i64 [ %.582.ph, %scalar.ph.preheader ], [ %i.di, %scalar.ph.prol ]
  %i.dl = sub nsw i64 %.083.ph, %3
  %i.dm = icmp ugt i64 %i.dl, -4
  br i1 %i.dm, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa = phi i64 [ %i.cy, %middle.block ], [ %.lcssa116.unr, %scalar.ph.prol.loopexit ], [ %i.ei, %scalar.ph ]
  %i.dn = add nuw nsw i64 %.285, 1                ; 2 uses
  %exitcond97.not = icmp eq i64 %i.dn, %4
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond97.not, label %._crit_edge86.split, label %.preheader, !llvm.loop !396

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.083 = phi i64 [ %i.el, %scalar.ph ], [ %.083.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.582 = phi i64 [ %i.ei, %scalar.ph ], [ %.582.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.do = mul nsw i64 %i.cp, %.083
  %i.dp = getelementptr [8 x i8], ptr %i.cq, i64 %i.do
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !43
  %i.dr = getelementptr inbounds [8 x i8], ptr %1, i64 %.582
  store double %i.dq, ptr %i.dr, align 8, !tbaa !43
  %i.ds = add nuw nsw i64 %.083, 1
  %i.dt = mul nsw i64 %i.cp, %i.ds
  %i.du = getelementptr [8 x i8], ptr %i.cq, i64 %i.dt
  %i.dv = load double, ptr %i.du, align 8, !tbaa !43
  %i.dw = getelementptr [8 x i8], ptr %1, i64 %.582
  %i.dx = getelementptr i8, ptr %i.dw, i64 8
  store double %i.dv, ptr %i.dx, align 8, !tbaa !43
  %i.dy = add nuw nsw i64 %.083, 2
  %i.dz = mul nsw i64 %i.cp, %i.dy
  %i.ea = getelementptr [8 x i8], ptr %i.cq, i64 %i.dz
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !43
  %i.ec = getelementptr [8 x i8], ptr %1, i64 %.582
  %i.ed = getelementptr i8, ptr %i.ec, i64 16
  store double %i.eb, ptr %i.ed, align 8, !tbaa !43
  %i.ee = add nuw nsw i64 %.083, 3
  %i.ef = mul nsw i64 %i.cp, %i.ee
  %i.eg = getelementptr [8 x i8], ptr %i.cq, i64 %i.ef
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !43
  %i.ei = add nsw i64 %.582, 4                    ; 2 uses
  %i.ej = getelementptr [8 x i8], ptr %1, i64 %.582
  %i.ek = getelementptr i8, ptr %i.ej, i64 24
  store double %i.eh, ptr %i.ek, align 8, !tbaa !43
  %i.el = add nuw nsw i64 %.083, 4                ; 2 uses
  %exitcond96.not.3 = icmp eq i64 %i.el, %3
  br i1 %exitcond96.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !397

._crit_edge86.split:                              ; preds = %._crit_edge, %.preheader61
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void asm sideeffect "#EIGEN PRODUCT PACK RHS COLMAJOR", "~{dirflag},~{fpsr},~{flags}"() #27, !srcloc !412
  %i.b = sdiv i64 %4, 4                           ; 2 uses
  %i.c = shl nsw i64 %i.b, 2                      ; 4 uses
  %i.d = icmp sgt i64 %4, 3
  br i1 %i.d, label %.lr.ph62, label %.preheader

.lr.ph62:                                         ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !125    ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !126  ; 12 uses
  %i.h = icmp sgt i64 %3, 0
  br i1 %i.h, label %.lr.ph.us.preheader, label %.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph62
  %i.i = add nsw i64 %3, -1                       ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 8
  %scevgep81 = getelementptr i8, ptr %1, i64 16
  %scevgep83 = getelementptr i8, ptr %1, i64 24
  %i.j = shl i64 %3, 5
  %scevgep86 = getelementptr i8, ptr %1, i64 %i.j
  %i.k = mul i64 %i.g, 24
  %scevgep88 = getelementptr i8, ptr %i.e, i64 %i.k
  %smax = tail call i64 @llvm.smax.i64(i64 %i.c, i64 4)
  %i.l = add nsw i64 %smax, -4                    ; 2 uses
  %i.m = lshr exact i64 %i.l, 2
  %i.n = shl i64 %i.l, 3                          ; 3 uses
  %i.o = or disjoint i64 %i.n, 24
  %i.p = mul i64 %i.g, %i.o
  %i.q = shl i64 %3, 3                            ; 4 uses
  %i.r = getelementptr i8, ptr %i.e, i64 %i.p
  %scevgep89 = getelementptr i8, ptr %i.r, i64 %i.q
  %i.s = shl i64 %i.g, 4
  %scevgep90 = getelementptr i8, ptr %i.e, i64 %i.s
  %i.t = or disjoint i64 %i.n, 16
  %i.u = mul i64 %i.g, %i.t
  %i.v = getelementptr i8, ptr %i.e, i64 %i.u
  %scevgep91 = getelementptr i8, ptr %i.v, i64 %i.q
  %i.w = shl i64 %i.g, 3
  %scevgep92 = getelementptr i8, ptr %i.e, i64 %i.w
  %i.x = or disjoint i64 %i.n, 8
  %i.y = mul i64 %i.g, %i.x
  %i.z = getelementptr i8, ptr %i.e, i64 %i.y
  %scevgep93 = getelementptr i8, ptr %i.z, i64 %i.q
  %i.aa = mul i64 %i.g, %i.m
  %i.ab = shl i64 %i.aa, 5
  %i.ac = getelementptr i8, ptr %i.e, i64 %i.ab
  %scevgep94 = getelementptr i8, ptr %i.ac, i64 %i.q
  %min.iters.check = icmp ult i64 %3, 30
  %mul.result = shl i64 %i.i, 5                   ; 3 uses
  %mul.overflow = icmp ugt i64 %i.i, 576460752303423487
  %.mask = and i64 %i.g, 288230376151711744
  %stride.check98 = icmp ne i64 %.mask, 0
  %n.vec = and i64 %3, 1152921504606846974        ; 4 uses
  %i.ad = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.04460.us = phi i64 [ %i.db, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 5 uses
  %.04559.us = phi i64 [ %.lcssa79, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 7 uses
  %i.ae = mul nsw i64 %i.g, %.04460.us
  %i.af = getelementptr [8 x i8], ptr %i.e, i64 %i.ae ; 4 uses
  %i.ag = or disjoint i64 %.04460.us, 1
  %i.ah = mul nsw i64 %i.g, %i.ag
  %i.ai = getelementptr [8 x i8], ptr %i.e, i64 %i.ah ; 4 uses
  %i.aj = or disjoint i64 %.04460.us, 2
  %i.ak = mul nsw i64 %i.g, %i.aj
  %i.al = getelementptr [8 x i8], ptr %i.e, i64 %i.ak ; 4 uses
  %i.am = or disjoint i64 %.04460.us, 3
  %i.an = mul nsw i64 %i.g, %i.am
  %i.ao = getelementptr [8 x i8], ptr %i.e, i64 %i.an ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.us
  %i.ap = shl i64 %.04559.us, 3                   ; 3 uses
  %scevgep80 = getelementptr i8, ptr %scevgep, i64 %i.ap ; 2 uses
  %i.aq = getelementptr i8, ptr %scevgep80, i64 %mul.result
  %i.ar = icmp ult ptr %i.aq, %scevgep80
  %scevgep82 = getelementptr i8, ptr %scevgep81, i64 %i.ap ; 2 uses
  %i.as = getelementptr i8, ptr %scevgep82, i64 %mul.result
  %i.at = icmp ult ptr %i.as, %scevgep82
  %scevgep84 = getelementptr i8, ptr %scevgep83, i64 %i.ap ; 2 uses
  %i.au = getelementptr i8, ptr %scevgep84, i64 %mul.result
  %i.av = icmp ult ptr %i.au, %scevgep84
  %i.aw = or i1 %i.av, %mul.overflow
  %i.ax = or i1 %i.at, %i.ar
  %i.ay = or i1 %i.ax, %i.aw
  br i1 %i.ay, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.az = shl i64 %.04559.us, 3                   ; 2 uses
  %scevgep85 = getelementptr i8, ptr %1, i64 %i.az ; 4 uses
  %scevgep87 = getelementptr i8, ptr %scevgep86, i64 %i.az ; 4 uses
  %bound0 = icmp ult ptr %scevgep85, %scevgep89
  %bound1 = icmp ult ptr %scevgep88, %scevgep87
  %found.conflict = and i1 %bound0, %bound1
  %bound095 = icmp ult ptr %scevgep85, %scevgep91
  %bound196.a = icmp ult ptr %scevgep90, %scevgep87
  %found.conflict97 = and i1 %bound095, %bound196.a
  %7 = or i1 %found.conflict97, %stride.check98
  %conflict.rdx = or i1 %found.conflict, %7
  %bound099 = icmp ult ptr %scevgep85, %scevgep93
  %bound1100 = icmp ult ptr %scevgep92, %scevgep87
  %found.conflict101 = and i1 %bound099, %bound1100
  %conflict.rdx103 = or i1 %found.conflict101, %conflict.rdx
  %bound0104 = icmp ult ptr %scevgep85, %scevgep94
  %bound1105 = icmp ult ptr %i.e, %scevgep87
  %found.conflict106 = and i1 %bound0104, %bound1105
  %conflict.rdx108 = or i1 %found.conflict106, %conflict.rdx103
  br i1 %conflict.rdx108, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ba = add i64 %.04559.us, %i.ad               ; 2 uses
  %i.bb = getelementptr [8 x i8], ptr %1, i64 %.04559.us
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %index
  %wide.load = load <2 x double>, ptr %i.bc, align 8, !tbaa !43, !alias.scope !413
  %.idx = shl i64 %index, 5
  %i.bd = getelementptr i8, ptr %i.bb, i64 %.idx
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %index
  %wide.load109 = load <2 x double>, ptr %i.be, align 8, !tbaa !43, !alias.scope !414
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %index
  %wide.load110 = load <2 x double>, ptr %i.bf, align 8, !tbaa !43, !alias.scope !415
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %index
  %wide.load111 = load <2 x double>, ptr %i.bg, align 8, !tbaa !43, !alias.scope !416
  %i.bh = shufflevector <2 x double> %wide.load, <2 x double> %wide.load109, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bi = shufflevector <2 x double> %wide.load110, <2 x double> %wide.load111, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x double> %i.bh, <4 x double> %i.bi, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.bd, align 8, !tbaa !43, !alias.scope !417, !noalias !418
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !405

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.us, %middle.block
  %.04358.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ] ; 7 uses
  %.157.us.ph = phi i64 [ %.04559.us, %vector.memcheck ], [ %.04559.us, %vector.scevcheck ], [ %.04559.us, %.lr.ph.us ], [ %i.ba, %middle.block ] ; 3 uses
  %.neg = or disjoint i64 %.04358.us.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.04358.us.ph
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !43
  %i.bm = getelementptr inbounds [8 x i8], ptr %1, i64 %.157.us.ph ; 4 uses
  store double %i.bl, ptr %i.bm, align 8, !tbaa !43
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.04358.us.ph
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !43
  %i.bp = getelementptr i8, ptr %i.bm, i64 8
  store double %i.bo, ptr %i.bp, align 8, !tbaa !43
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.04358.us.ph
  %i.br = load double, ptr %i.bq, align 8, !tbaa !43
  %i.bs = getelementptr i8, ptr %i.bm, i64 16
  store double %i.br, ptr %i.bs, align 8, !tbaa !43
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.04358.us.ph
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !43
  %i.bv = getelementptr i8, ptr %i.bm, i64 24
  store double %i.bu, ptr %i.bv, align 8, !tbaa !43
  %i.bw = add nsw i64 %.157.us.ph, 4              ; 2 uses
  %i.bx = or disjoint i64 %.04358.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa128.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.bw, %scalar.ph.prol ]
  %.04358.us.unr = phi i64 [ %.04358.us.ph, %scalar.ph.preheader ], [ %i.bx, %scalar.ph.prol ]
  %.157.us.unr = phi i64 [ %.157.us.ph, %scalar.ph.preheader ], [ %i.bw, %scalar.ph.prol ]
  %i.by = icmp eq i64 %3, %.neg
  br i1 %i.by, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.04358.us = phi i64 [ %i.da, %scalar.ph ], [ %.04358.us.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %.157.us = phi i64 [ %i.cz, %scalar.ph ], [ %.157.us.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.04358.us
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !43
  %i.cb = getelementptr inbounds [8 x i8], ptr %1, i64 %.157.us ; 4 uses
  store double %i.ca, ptr %i.cb, align 8, !tbaa !43
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.04358.us
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !43
  %i.ce = getelementptr i8, ptr %i.cb, i64 8
  store double %i.cd, ptr %i.ce, align 8, !tbaa !43
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.04358.us
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !43
  %i.ch = getelementptr i8, ptr %i.cb, i64 16
  store double %i.cg, ptr %i.ch, align 8, !tbaa !43
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.04358.us
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !43
  %i.ck = getelementptr i8, ptr %i.cb, i64 24
  store double %i.cj, ptr %i.ck, align 8, !tbaa !43
  %i.cl = add nuw nsw i64 %.04358.us, 1           ; 4 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.cl
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !43
  %i.co = getelementptr [8 x i8], ptr %1, i64 %.157.us ; 4 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 32
  store double %i.cn, ptr %i.cp, align 8, !tbaa !43
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.cl
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !43
  %i.cs = getelementptr i8, ptr %i.co, i64 40
  store double %i.cr, ptr %i.cs, align 8, !tbaa !43
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.cl
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !43
  %i.cv = getelementptr i8, ptr %i.co, i64 48
  store double %i.cu, ptr %i.cv, align 8, !tbaa !43
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.cl
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !43
  %i.cy = getelementptr i8, ptr %i.co, i64 56
  store double %i.cx, ptr %i.cy, align 8, !tbaa !43
  %i.cz = add nsw i64 %.157.us, 8                 ; 2 uses
  %i.da = add nuw nsw i64 %.04358.us, 2           ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.da, %3
  br i1 %exitcond.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !406

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa79 = phi i64 [ %i.ba, %middle.block ], [ %.lcssa128.unr, %scalar.ph.prol.loopexit ], [ %i.cz, %scalar.ph ] ; 2 uses
  %i.db = add nuw nsw i64 %.04460.us, 4           ; 2 uses
  %i.dc = icmp slt i64 %i.db, %i.c
  br i1 %i.dc, label %.lr.ph.us, label %.preheader, !llvm.loop !407

.preheader:                                       ; preds = %._crit_edge.us, %.lr.ph62, %bb.a
  %.045.lcssa = phi i64 [ 0, %bb.a ], [ 0, %.lr.ph62 ], [ %.lcssa79, %._crit_edge.us ]
  %i.dd = icmp slt i64 %i.c, %4
  br i1 %i.dd, label %.lr.ph68, label %._crit_edge69.split

.lr.ph68:                                         ; preds = %.preheader
  %i.de = load ptr, ptr %2, align 8, !tbaa !125   ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !126 ; 3 uses
  %i.dh = icmp sgt i64 %3, 0
  br i1 %i.dh, label %.lr.ph.preheader, label %._crit_edge69.split

.lr.ph.preheader:                                 ; preds = %.lr.ph68
  %i.di = ptrtoaddr ptr %i.de to i64
  %i.dj = mul i64 %i.dg, %i.b
  %i.dk = shl i64 %i.dj, 5
  %i.dl = add i64 %i.dk, %i.di
  %i.dm = sub i64 %i.a, %i.dl
  %i.dn = mul i64 %i.dg, -8
  %min.iters.check115 = icmp ult i64 %3, 4
  %n.vec117 = and i64 %3, 9223372036854775804     ; 4 uses
  %cmp.n124 = icmp eq i64 %3, %n.vec117
  %xtraiter129 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod130.not = icmp eq i64 %xtraiter129, 0
  br label %.lr.ph

._crit_edge69.split:                              ; preds = %._crit_edge, %.lr.ph68, %.preheader
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvar = phi i64 [ 0, %.lr.ph.preheader ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %.04267 = phi i64 [ %i.c, %.lr.ph.preheader ], [ %i.ej, %._crit_edge ] ; 2 uses
  %.266 = phi i64 [ %.045.lcssa, %.lr.ph.preheader ], [ %.lcssa, %._crit_edge ] ; 5 uses
  %i.do = mul nsw i64 %i.dg, %.04267
  %i.dp = getelementptr [8 x i8], ptr %i.de, i64 %i.do ; 6 uses
  br i1 %min.iters.check115, label %scalar.ph114.preheader, label %vector.memcheck113

vector.memcheck113:                               ; preds = %.lr.ph
  %i.dq = mul i64 %i.dn, %indvar
  %i.dr = add i64 %i.dm, %i.dq
  %i.ds = shl i64 %.266, 3
  %i.dt = add i64 %i.dr, %i.ds
  %i.du = add i64 %i.dt, -1
  %diff.check = icmp ult i64 %i.du, 31
  br i1 %diff.check, label %scalar.ph114.preheader, label %vector.ph116

vector.ph116:                                     ; preds = %vector.memcheck113
  %i.dv = add i64 %.266, %n.vec117                ; 2 uses
  %i.dw = getelementptr [8 x i8], ptr %1, i64 %.266
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph116
  %index119 = phi i64 [ 0, %vector.ph116 ], [ %index.next122, %vector.body118 ] ; 3 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %index119 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %wide.load120 = load <2 x double>, ptr %i.dx, align 8, !tbaa !43
  %wide.load121 = load <2 x double>, ptr %i.dy, align 8, !tbaa !43
  %i.dz = getelementptr [8 x i8], ptr %i.dw, i64 %index119 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store <2 x double> %wide.load120, ptr %i.dz, align 8, !tbaa !43
  store <2 x double> %wide.load121, ptr %i.ea, align 8, !tbaa !43
  %index.next122 = add nuw i64 %index119, 4       ; 2 uses
  %i.eb = icmp eq i64 %index.next122, %n.vec117
  br i1 %i.eb, label %middle.block123, label %vector.body118, !llvm.loop !408

middle.block123:                                  ; preds = %vector.body118
  br i1 %cmp.n124, label %._crit_edge, label %scalar.ph114.preheader

scalar.ph114.preheader:                           ; preds = %vector.memcheck113, %.lr.ph, %middle.block123
  %.065.ph = phi i64 [ 0, %vector.memcheck113 ], [ 0, %.lr.ph ], [ %n.vec117, %middle.block123 ] ; 3 uses
  %.364.ph = phi i64 [ %.266, %vector.memcheck113 ], [ %.266, %.lr.ph ], [ %i.dv, %middle.block123 ] ; 2 uses
  br i1 %lcmp.mod130.not, label %scalar.ph114.prol.loopexit, label %scalar.ph114.prol

scalar.ph114.prol:                                ; preds = %scalar.ph114.preheader, %scalar.ph114.prol
  %.065.prol = phi i64 [ %i.eg, %scalar.ph114.prol ], [ %.065.ph, %scalar.ph114.preheader ] ; 2 uses
  %.364.prol = phi i64 [ %i.ef, %scalar.ph114.prol ], [ %.364.ph, %scalar.ph114.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph114.prol ], [ 0, %scalar.ph114.preheader ]
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %.065.prol
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !43
  %i.ee = getelementptr inbounds [8 x i8], ptr %1, i64 %.364.prol
  store double %i.ed, ptr %i.ee, align 8, !tbaa !43
  %i.ef = add nsw i64 %.364.prol, 1               ; 3 uses
  %i.eg = add nuw nsw i64 %.065.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter129
  br i1 %prol.iter.cmp.not, label %scalar.ph114.prol.loopexit, label %scalar.ph114.prol, !llvm.loop !409

scalar.ph114.prol.loopexit:                       ; preds = %scalar.ph114.prol, %scalar.ph114.preheader
end_hunk_2
