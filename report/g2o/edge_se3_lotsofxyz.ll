Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/edge_se3_lotsofxyz?download=true
inline.NumInlined: 6649
inline.NumDeleted: 3240
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 66
loop-unroll.NumUnrolled: 75
begin_hunk_0_@_ZN3g2o21BaseVariableSizedEdgeILin1EN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE20computeQuadraticFormERKNS2_IdLin1ELin1ELi0ELin1ELin1EEERKS3_:bb.a
  %i.ei = getelementptr inbounds [8 x i8], ptr %.sroa.078.sroa.0.0.copyload, i64 %.05283.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !68
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %.05283.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.el = load double, ptr %i.ek, align 8, !tbaa !68
  %i.em = fmul double %i.ej, %i.el
  %i.en = fadd double %.182.i.i.i.i.i.i.i.i.i.i.i.prol, %i.em ; 3 uses
  %i.eo = add nsw i64 %.05283.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !370

.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:     ; preds = %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.lcssa146.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.en, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.05283.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.cy, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.eo, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.182.i.i.i.i.i.i.i.i.i.i.i.unr = phi double [ %i.ef, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.en, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.ep = sub i64 %i.cy, %i.ct
  %i.eq = icmp ugt i64 %i.ep, -4
  br i1 %i.eq, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEELi1ELin1ELb1EEEE3dotINS1_IKNS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSJ_17scalar_product_opIdSN_EEE10ReturnTypeERKNS0_ISL_EE.exit.i.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i
  %.05283.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fs, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i ], [ %.05283.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.182.i.i.i.i.i.i.i.i.i.i.i = phi double [ %i.fr, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i ], [ %.182.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.er = getelementptr inbounds [8 x i8], ptr %.sroa.078.sroa.0.0.copyload, i64 %.05283.i.i.i.i.i.i.i.i.i.i.i
  %i.es = load double, ptr %i.er, align 8, !tbaa !68
  %i.et = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %.05283.i.i.i.i.i.i.i.i.i.i.i
  %i.eu = load double, ptr %i.et, align 8, !tbaa !68
  %i.ev = fmul double %i.es, %i.eu
  %i.ew = fadd double %.182.i.i.i.i.i.i.i.i.i.i.i, %i.ev
  %i.ex = add nsw i64 %.05283.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ey = getelementptr inbounds [8 x i8], ptr %.sroa.078.sroa.0.0.copyload, i64 %i.ex
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !68
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %i.ex
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !68
  %i.fc = fmul double %i.ez, %i.fb
  %i.fd = fadd double %i.ew, %i.fc
  %i.fe = add nsw i64 %.05283.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ff = getelementptr inbounds [8 x i8], ptr %.sroa.078.sroa.0.0.copyload, i64 %i.fe
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !68
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %i.fe
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !68
  %i.fj = fmul double %i.fg, %i.fi
  %i.fk = fadd double %i.fd, %i.fj
  %i.fl = add nsw i64 %.05283.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.fm = getelementptr inbounds [8 x i8], ptr %.sroa.078.sroa.0.0.copyload, i64 %i.fl
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !68
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %i.fl
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !68
  %i.fq = fmul double %i.fn, %i.fp
  %i.fr = fadd double %i.fk, %i.fq                ; 2 uses
  %i.fs = add nsw i64 %.05283.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.fs, %i.ct
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEELi1ELin1ELb1EEEE3dotINS1_IKNS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSJ_17scalar_product_opIdSN_EEE10ReturnTypeERKNS0_ISL_EE.exit.i.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !371

bb.r:                                             ; preds = %bb.m
  %i.ft = load double, ptr %.sroa.078.sroa.0.0.copyload, align 8, !tbaa !68
  %i.fu = load double, ptr %i.cs, align 8, !tbaa !68
  %i.fv = fmul double %i.ft, %i.fu
  br label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEELi1ELin1ELb1EEEE3dotINS1_IKNS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSJ_17scalar_product_opIdSN_EEE10ReturnTypeERKNS0_ISL_EE.exit.i.i.i.i.i.i

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEELi1ELin1ELb1EEEE3dotINS1_IKNS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSJ_17scalar_product_opIdSN_EEE10ReturnTypeERKNS0_ISL_EE.exit.i.i.i.i.i.i: ; preds = %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i, %bb.r, %bb.q, %bb.l
  %.0.i.i.i.i.i.i.i.i.i = phi double [ 0.000000e+00, %bb.l ], [ %i.ef, %bb.q ], [ %i.fv, %bb.r ], [ %.lcssa146.unr, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.fr, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i ]
  %i.fw = load ptr, ptr %16, align 8, !tbaa !140  ; 2 uses
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !68
  %i.fy = fadd double %.0.i.i.i.i.i.i.i.i.i, %i.fx
  store double %i.fy, ptr %i.fw, align 8, !tbaa !68
  br label %bb.t

bb.s:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  store ptr %.sroa.078.sroa.0.0.copyload, ptr %7, align 8
  store <2 x i64> %i.cq, ptr %.sroa.6.0..sroa_idx, align 8
  invoke void @_ZN5Eigen8internal19gemv_dense_selectorILi2ELi1ELb1EE3runINS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS6_IdLin1ELi1ELi0ELin1ELi1EEENS5_ISD_Li0ES9_EEEEvRKT_RKT0_RT1_RKNSL_6ScalarE(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(19) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc61 unwind label %bb.w

.noexc61:                                         ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.t

bb.t:                                             ; preds = %.noexc61, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEELi1ELin1ELb1EEEE3dotINS1_IKNS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSJ_17scalar_product_opIdSN_EEE10ReturnTypeERKNS0_ISL_EE.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  %.095 = add nuw i64 %.04697, 1                  ; 3 uses
  %i.fz = load ptr, ptr %i.f, align 8, !tbaa !72
  %i.ga = load ptr, ptr %i.e, align 8, !tbaa !64  ; 2 uses
  %i.gb = ptrtoint ptr %i.fz to i64
  %i.gc = ptrtoint ptr %i.ga to i64
  %i.gd = sub i64 %i.gb, %i.gc
  %i.ge = ashr exact i64 %i.gd, 3
  %i.gf = icmp ult i64 %.095, %i.ge
  br i1 %i.gf, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.t
  %i.gg = trunc i64 %.04697 to i32
  br label %bb.x

._crit_edge:                                      ; preds = %bb.ah, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  %i.gh = load ptr, ptr %13, align 8, !tbaa !78
  call void @free(ptr noundef %i.gh) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !72
  %.pre107 = load ptr, ptr %i.e, align 8, !tbaa !64
  br label %bb.ak

bb.u:                                             ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS_9TransposeIKNS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEEEES1_Li0EEEEERKNS_9EigenBaseIT_EE.exit
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.v:                                             ; preds = %bb.j, %bb.i
  %i.gj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  br label %bb.ai

bb.w:                                             ; preds = %bb.g, %bb.s
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.x:                                             ; preds = %.lr.ph, %bb.ah
  %i.gl = phi ptr [ %i.ga, %.lr.ph ], [ %i.mg, %bb.ah ]
  %.096 = phi i64 [ %.095, %.lr.ph ], [ %.0, %bb.ah ] ; 4 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %.096
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !66
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 100
  %i.gp = load i8, ptr %i.go, align 4, !tbaa !109, !range !110, !noundef !111
  %i.gq = trunc nuw i8 %i.gp to i1
  br i1 %i.gq, label %bb.ah, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gr = load ptr, ptr %i.i, align 8, !tbaa !73
  %i.gs = getelementptr inbounds nuw [32 x i8], ptr %i.gr, i64 %.096 ; 2 uses
  %i.gt = trunc i64 %.096 to i32                  ; 2 uses
  %i.gu = add nsw i32 %i.gt, -1
  %i.gv = mul nsw i32 %i.gu, %i.gt
  %i.gw = sdiv i32 %i.gv, 2
  %i.gx = add nsw i32 %i.gw, %i.gg
  %i.gy = sext i32 %i.gx to i64
  %i.gz = load ptr, ptr %i.af, align 8, !tbaa !97
  %i.ha = getelementptr inbounds nuw [40 x i8], ptr %i.gz, i64 %i.gy ; 8 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 32
  %i.hc = load i8, ptr %i.hb, align 8, !tbaa !129, !range !110, !noundef !111
  %i.hd = trunc nuw i8 %i.hc to i1
  %i.he = getelementptr inbounds nuw i8, ptr %i.ha, i64 8 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ha, i64 16 ; 2 uses
  br i1 %i.hd, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %i.gs, i64 24, i1 false)
  store i64 %i.au, ptr %i.at, align 8, !alias.scope !398
  %i.hg = load i64, ptr %i.n, align 8, !tbaa !131 ; 5 uses
  %i.hh = load i64, ptr %i.he, align 8, !tbaa !77 ; 13 uses
  %i.hi = add nsw i64 %i.hh, %i.hg
  %i.hj = load i64, ptr %i.hf, align 8, !tbaa !77 ; 5 uses
  %i.hk = add nsw i64 %i.hi, %i.hj
  %i.hl = icmp slt i64 %i.hk, 20
  %i.hm = icmp sgt i64 %i.hg, 0
  %or.cond.i = and i1 %i.hm, %i.hl
  br i1 %or.cond.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %.sroa.06.0.copyload.i.i = load ptr, ptr %18, align 8 ; 7 uses
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8 ; 5 uses
  %i.hn = load ptr, ptr %i.ha, align 8, !tbaa !76 ; 5 uses
  %i.ho = icmp sgt i64 %i.hj, 0
  %i.hp = icmp sgt i64 %i.hh, 0
  %or.cond.i.i.i.i69 = and i1 %i.hp, %i.ho
  br i1 %or.cond.i.i.i.i69, label %.preheader.i.preheader.split.i.i.i.i, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEpLINS_7ProductINS_9TransposeIKS6_EENSB_IS3_EELi0EEEEERS6_RKNS7_IT_EE.exit

.preheader.i.preheader.split.i.i.i.i:             ; preds = %bb.aa
  %i.hq = load ptr, ptr %13, align 8, !tbaa !78, !noalias !399 ; 4 uses
  %i.hr = icmp samesign ugt i64 %i.hg, 1
  %i.hs = load i64, ptr %i.m, align 8, !tbaa !79  ; 5 uses
  br i1 %i.hr, label %.preheader.i.us22.i.i.i.i.preheader, label %.preheader.i.i.i.i.i.preheader

.preheader.i.us22.i.i.i.i.preheader:              ; preds = %.preheader.i.preheader.split.i.i.i.i
  %i.ht = add nsw i64 %i.hg, -1                   ; 2 uses
  %i.hu = add nsw i64 %i.hg, -2
  %xtraiter151 = and i64 %i.ht, 3                 ; 3 uses
  %i.hv = icmp ult i64 %i.hu, 3
  %unroll_iter = and i64 %i.ht, -4
  %lcmp.mod152.not = icmp eq i64 %xtraiter151, 0
  %lcmp.mod154 = icmp ne i64 %xtraiter151, 0
  br label %.preheader.i.us22.i.i.i.i

.preheader.i.i.i.i.i.preheader:                   ; preds = %.preheader.i.preheader.split.i.i.i.i
  %i.hw = shl i64 %i.hj, 3                        ; 2 uses
  %i.hx = mul i64 %i.hw, %i.hh
  %scevgep = getelementptr i8, ptr %i.hn, i64 %i.hx ; 2 uses
  %i.hy = shl i64 %i.hh, 3                        ; 2 uses
  %scevgep133 = getelementptr i8, ptr %.sroa.06.0.copyload.i.i, i64 %i.hy
  %scevgep134 = getelementptr i8, ptr %i.hq, i64 %i.hw
  %min.iters.check = icmp ugt i64 %i.hh, 7
  %ident.check.not = icmp eq i64 %.sroa.4.0.copyload.i.i, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %bound0 = icmp ult ptr %i.hn, %scevgep133
  %bound1 = icmp ult ptr %.sroa.06.0.copyload.i.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %i.hy, 0
  %20 = or i1 %found.conflict, %stride.check
  %bound0135 = icmp ult ptr %i.hn, %scevgep134
  %bound1136 = icmp ult ptr %i.hq, %scevgep
  %found.conflict137 = and i1 %bound0135, %bound1136
  %conflict.rdx = or i1 %20, %found.conflict137
  %n.vec = and i64 %i.hh, 9223372036854775804     ; 3 uses
  %cmp.n = icmp eq i64 %i.hh, %n.vec
  %xtraiter148 = and i64 %i.hh, 1
  %lcmp.mod149.not = icmp eq i64 %xtraiter148, 0
  br label %.preheader.i.i.i.i.i

.preheader.i.us22.i.i.i.i:                        ; preds = %.preheader.i.us22.i.i.i.i.preheader, %._crit_edge.i.split.split.us.us.i.i.i.i
  %.0810.i.us23.i.i.i.i = phi i64 [ %i.jz, %._crit_edge.i.split.split.us.us.i.i.i.i ], [ 0, %.preheader.i.us22.i.i.i.i.preheader ] ; 3 uses
  %i.hz = mul nuw nsw i64 %.0810.i.us23.i.i.i.i, %i.hh
  %i.ia = getelementptr [8 x i8], ptr %i.hn, i64 %i.hz
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %.0810.i.us23.i.i.i.i ; 6 uses
  br label %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.preheader.us.us.i.i.i.i:     ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.i.i.i.i, %.preheader.i.us22.i.i.i.i
  %.09.i.us18.us.i.i.i.i = phi i64 [ 0, %.preheader.i.us22.i.i.i.i ], [ %i.jy, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.i.i.i.i ] ; 3 uses
  %i.ic = mul nsw i64 %.09.i.us18.us.i.i.i.i, %.sroa.4.0.copyload.i.i
  %i.id = getelementptr inbounds [8 x i8], ptr %.sroa.06.0.copyload.i.i, i64 %i.ic ; 6 uses
  %i.ie = load double, ptr %i.id, align 8, !tbaa !68
  %i.if = load double, ptr %i.ib, align 8, !tbaa !68
  %i.ig = fmul double %i.ie, %i.if                ; 2 uses
  br i1 %i.hv, label %.lr.ph.i.i.i.i.i.i.i.us.us.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.us.us.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.us.us.i.i.i.i:               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.us.us.i.i.i.i
  %.01724.i.i.i.i.i.i.i.us.us.i.i.i.i = phi i64 [ %i.jm, %.lr.ph.i.i.i.i.i.i.i.us.us.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.i.i.i.i ] ; 6 uses
  %.02223.i.i.i.i.i.i.i.us.us.i.i.i.i = phi double [ %i.jl, %.lr.ph.i.i.i.i.i.i.i.us.us.i.i.i.i ], [ %i.ig, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.i.i.i.i ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i.i.i.i.i.i.i.us.us.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.i.i.i.i ]
  %i.ih = getelementptr [8 x i8], ptr %i.id, i64 %.01724.i.i.i.i.i.i.i.us.us.i.i.i.i
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !68
  %i.ij = mul nsw i64 %.01724.i.i.i.i.i.i.i.us.us.i.i.i.i, %i.hs
  %i.ik = getelementptr [8 x i8], ptr %i.ib, i64 %i.ij
  %i.il = load double, ptr %i.ik, align 8, !tbaa !68
  %i.im = fmul double %i.ii, %i.il
  %i.in = fadd double %.02223.i.i.i.i.i.i.i.us.us.i.i.i.i, %i.im
  %i.io = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.us.us.i.i.i.i, 1 ; 2 uses
  %i.ip = getelementptr [8 x i8], ptr %i.id, i64 %i.io
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !68
  %i.ir = mul nsw i64 %i.io, %i.hs
  %i.is = getelementptr [8 x i8], ptr %i.ib, i64 %i.ir
  %i.it = load double, ptr %i.is, align 8, !tbaa !68
  %i.iu = fmul double %i.iq, %i.it
  %i.iv = fadd double %i.in, %i.iu
  %i.iw = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.us.us.i.i.i.i, 2 ; 2 uses
  %i.ix = getelementptr [8 x i8], ptr %i.id, i64 %i.iw
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !68
  %i.iz = mul nsw i64 %i.iw, %i.hs
  %i.ja = getelementptr [8 x i8], ptr %i.ib, i64 %i.iz
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !68
  %i.jc = fmul double %i.iy, %i.jb
  %i.jd = fadd double %i.iv, %i.jc
  %i.je = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.us.us.i.i.i.i, 3 ; 2 uses
  %i.jf = getelementptr [8 x i8], ptr %i.id, i64 %i.je
  %i.jg = load double, ptr %i.jf, align 8, !tbaa !68
  %i.jh = mul nsw i64 %i.je, %i.hs
  %i.ji = getelementptr [8 x i8], ptr %i.ib, i64 %i.jh
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !68
  %i.jk = fmul double %i.jg, %i.jj
  %i.jl = fadd double %i.jd, %i.jk                ; 3 uses
  %i.jm = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.us.us.i.i.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.i.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.us.us.i.i.i.i, !llvm.loop !376

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.i.i.i.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.us.us.i.i.i.i
  br i1 %lcmp.mod152.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.us.us.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.us.us.i.i.i.i.epil.preheader: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.i.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.i.i.i.i
  %.01724.i.i.i.i.i.i.i.us.us.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.i.i.i.i ], [ %i.jm, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.i.i.i.i.unr-lcssa ]
  %.02223.i.i.i.i.i.i.i.us.us.i.i.i.i.epil.init = phi double [ %i.ig, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.i.i.i.i ], [ %i.jl, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.i.i.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod154)
  br label %.lr.ph.i.i.i.i.i.i.i.us.us.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.us.us.i.i.i.i.epil:          ; preds = %.lr.ph.i.i.i.i.i.i.i.us.us.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.us.us.i.i.i.i.epil.preheader
  %.01724.i.i.i.i.i.i.i.us.us.i.i.i.i.epil = phi i64 [ %i.ju, %.lr.ph.i.i.i.i.i.i.i.us.us.i.i.i.i.epil ], [ %.01724.i.i.i.i.i.i.i.us.us.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.us.us.i.i.i.i.epil.preheader ] ; 3 uses
  %.02223.i.i.i.i.i.i.i.us.us.i.i.i.i.epil = phi double [ %i.jt, %.lr.ph.i.i.i.i.i.i.i.us.us.i.i.i.i.epil ], [ %.02223.i.i.i.i.i.i.i.us.us.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.us.us.i.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.us.us.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.us.us.i.i.i.i.epil.preheader ]
  %i.jn = getelementptr [8 x i8], ptr %i.id, i64 %.01724.i.i.i.i.i.i.i.us.us.i.i.i.i.epil
  %i.jo = load double, ptr %i.jn, align 8, !tbaa !68
  %i.jp = mul nsw i64 %.01724.i.i.i.i.i.i.i.us.us.i.i.i.i.epil, %i.hs
  %i.jq = getelementptr [8 x i8], ptr %i.ib, i64 %i.jp
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !68
  %i.js = fmul double %i.jo, %i.jr
  %i.jt = fadd double %.02223.i.i.i.i.i.i.i.us.us.i.i.i.i.epil, %i.js ; 2 uses
  %i.ju = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.us.us.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter151
  br i1 %epil.iter.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.us.us.i.i.i.i.epil, !llvm.loop !377

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.us.us.i.i.i.i.epil, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.i.i.i.i.unr-lcssa
  %.lcssa147 = phi double [ %i.jl, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.i.i.i.i.unr-lcssa ], [ %i.jt, %.lr.ph.i.i.i.i.i.i.i.us.us.i.i.i.i.epil ]
  %i.jv = getelementptr [8 x i8], ptr %i.ia, i64 %.09.i.us18.us.i.i.i.i ; 2 uses
  %i.jw = load double, ptr %i.jv, align 8, !tbaa !68
  %i.jx = fadd double %.lcssa147, %i.jw
  store double %i.jx, ptr %i.jv, align 8, !tbaa !68
  %i.jy = add nuw nsw i64 %.09.i.us18.us.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.us21.us.i.i.i.i = icmp eq i64 %i.jy, %i.hh
  br i1 %exitcond.not.i.us21.us.i.i.i.i, label %._crit_edge.i.split.split.us.us.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.i.i.i.i, !llvm.loop !378

._crit_edge.i.split.split.us.us.i.i.i.i:          ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.i.i.i.i
  %i.jz = add nuw nsw i64 %.0810.i.us23.i.i.i.i, 1 ; 2 uses
  %exitcond12.not.i.us24.i.i.i.i = icmp eq i64 %i.jz, %i.hj
  br i1 %exitcond12.not.i.us24.i.i.i.i, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEpLINS_7ProductINS_9TransposeIKS6_EENSB_IS3_EELi0EEEEERS6_RKNS7_IT_EE.exit, label %.preheader.i.us22.i.i.i.i, !llvm.loop !379

.preheader.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.preheader, %._crit_edge.i.split.split.i.i.i.i
  %.0810.i.i.i.i.i = phi i64 [ %i.kx, %._crit_edge.i.split.split.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i.preheader ] ; 3 uses
  %i.ka = mul nuw nsw i64 %.0810.i.i.i.i.i, %i.hh
  %i.kb = getelementptr [8 x i8], ptr %i.hn, i64 %i.ka ; 4 uses
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %.0810.i.i.i.i.i ; 4 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.i.i.i.i
  %i.kd = load double, ptr %i.kc, align 8, !tbaa !68, !alias.scope !400
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.kd, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ke = getelementptr inbounds [8 x i8], ptr %.sroa.06.0.copyload.i.i, i64 %index ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  %wide.load = load <2 x double>, ptr %i.ke, align 8, !tbaa !68, !alias.scope !401
  %wide.load139.a = load <2 x double>, ptr %i.kf, align 8, !tbaa !68, !alias.scope !401
  %i.kg = fmul <2 x double> %wide.load, %broadcast.splat
  %i.kh = fmul <2 x double> %wide.load139.a, %broadcast.splat
  %i.ki = getelementptr [8 x i8], ptr %i.kb, i64 %index ; 3 uses
  %i.kj = getelementptr i8, ptr %i.ki, i64 16     ; 2 uses
  %wide.load140.a = load <2 x double>, ptr %i.ki, align 8, !tbaa !68, !alias.scope !402, !noalias !403
  %wide.load141 = load <2 x double>, ptr %i.kj, align 8, !tbaa !68, !alias.scope !402, !noalias !403
  %i.kk = fadd <2 x double> %i.kg, %wide.load140.a
  %i.kl = fadd <2 x double> %i.kh, %wide.load141
  store <2 x double> %i.kk, ptr %i.ki, align 8, !tbaa !68, !alias.scope !402, !noalias !403
  store <2 x double> %i.kl, ptr %i.kj, align 8, !tbaa !68, !alias.scope !402, !noalias !403
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.km = icmp eq i64 %index.next, %n.vec
  br i1 %i.km, label %middle.block, label %vector.body, !llvm.loop !384

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.split.split.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i.preheader

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i.preheader: ; preds = %.preheader.i.i.i.i.i, %middle.block
  %.09.i.i.i.i.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i.i.i.i.i ] ; 5 uses
  %.neg = or disjoint i64 %.09.i.i.i.i.i.ph, 1
  br i1 %lcmp.mod149.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i.prol.loopexit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i.prol

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i.prol: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i.preheader
  %i.kn = mul nsw i64 %.09.i.i.i.i.i.ph, %.sroa.4.0.copyload.i.i
  %i.ko = getelementptr inbounds [8 x i8], ptr %.sroa.06.0.copyload.i.i, i64 %i.kn
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !68
  %i.kq = load double, ptr %i.kc, align 8, !tbaa !68
  %i.kr = fmul double %i.kp, %i.kq
  %i.ks = getelementptr [8 x i8], ptr %i.kb, i64 %.09.i.i.i.i.i.ph ; 2 uses
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !68
  %i.ku = fadd double %i.kr, %i.kt
  store double %i.ku, ptr %i.ks, align 8, !tbaa !68
  %i.kv = or disjoint i64 %.09.i.i.i.i.i.ph, 1
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i.prol.loopexit

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i.prol.loopexit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i.prol, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i.preheader ], [ %i.kv, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i.prol ]
  %i.kw = icmp eq i64 %i.hh, %.neg
  br i1 %i.kw, label %._crit_edge.i.split.split.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i

._crit_edge.i.split.split.i.i.i.i:                ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i, %middle.block
  %i.kx = add nuw nsw i64 %.0810.i.i.i.i.i, 1     ; 2 uses
  %exitcond12.not.i.i.i.i.i = icmp eq i64 %i.kx, %i.hj
  br i1 %exitcond12.not.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEpLINS_7ProductINS_9TransposeIKS6_EENSB_IS3_EELi0EEEEERS6_RKNS7_IT_EE.exit, label %.preheader.i.i.i.i.i, !llvm.loop !379

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i
  %.09.i.i.i.i.i = phi i64 [ %i.lp, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.ky = mul nsw i64 %.09.i.i.i.i.i, %.sroa.4.0.copyload.i.i
  %i.kz = getelementptr inbounds [8 x i8], ptr %.sroa.06.0.copyload.i.i, i64 %i.ky
  %i.la = load double, ptr %i.kz, align 8, !tbaa !68
  %i.lb = load double, ptr %i.kc, align 8, !tbaa !68
  %i.lc = fmul double %i.la, %i.lb
  %i.ld = getelementptr [8 x i8], ptr %i.kb, i64 %.09.i.i.i.i.i ; 2 uses
  %i.le = load double, ptr %i.ld, align 8, !tbaa !68
  %i.lf = fadd double %i.lc, %i.le
  store double %i.lf, ptr %i.ld, align 8, !tbaa !68
  %i.lg = add nuw nsw i64 %.09.i.i.i.i.i, 1       ; 2 uses
  %i.lh = mul nsw i64 %i.lg, %.sroa.4.0.copyload.i.i
  %i.li = getelementptr inbounds [8 x i8], ptr %.sroa.06.0.copyload.i.i, i64 %i.lh
  %i.lj = load double, ptr %i.li, align 8, !tbaa !68
  %i.lk = load double, ptr %i.kc, align 8, !tbaa !68
  %i.ll = fmul double %i.lj, %i.lk
  %i.lm = getelementptr [8 x i8], ptr %i.kb, i64 %i.lg ; 2 uses
  %i.ln = load double, ptr %i.lm, align 8, !tbaa !68
  %i.lo = fadd double %i.ll, %i.ln
  store double %i.lo, ptr %i.lm, align 8, !tbaa !68
  %i.lp = add nuw nsw i64 %.09.i.i.i.i.i, 2       ; 2 uses
  %exitcond.not.i.i.i.i.i.1 = icmp eq i64 %i.lp, %i.hh
  br i1 %exitcond.not.i.i.i.i.i.1, label %._crit_edge.i.split.split.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKS8_EENSB_IKS5_EELi1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i, !llvm.loop !385

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !68
  invoke void @_ZN5Eigen8internal20generic_product_implINS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_IS5_EENS_10DenseShapeESC_Li8EE13scaleAndAddToIS8_EEvRT_RKSA_RKSB_RKd(ptr noundef nonnull align 8 dereferenceable(26) %i.ha, ptr noundef nonnull align 8 dereferenceable(40) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc70 unwind label %bb.ac

.noexc70:                                         ; preds = %bb.ab
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal20generic_product_implINS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEES5_NS_10DenseShapeESB_Li8EE13scaleAndAddToIS5_EEvRT_RKSA_RKS5_RKd:bb.a
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %i.ge
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !68
  %i.gj = fmul double %i.gg, %i.gi
  %i.gk = fadd double %i.gd, %i.gj                ; 2 uses
  %i.gl = add nsw i64 %.05283.i.i.i.i.i.i31, 4    ; 2 uses
  %exitcond.not.i.i.i.i.i.i33.3 = icmp eq i64 %i.gl, %i.dm
  br i1 %exitcond.not.i.i.i.i.i.i33.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEELi1ELin1ELb1EEELi1ELin1ELb1EEEE3dotINS1_IKS5_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSK_17scalar_product_opIdSO_EEE10ReturnTypeERKNS0_ISM_EE.exit.i, label %.lr.ph85.i.i.i.i.i.i30, !llvm.loop !437

bb.v:                                             ; preds = %bb.q
  %i.gm = load double, ptr %i.dh, align 8, !tbaa !68
  %i.gn = load double, ptr %i.dk, align 8, !tbaa !68
  %i.go = fmul double %i.gm, %i.gn
  br label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEELi1ELin1ELb1EEELi1ELin1ELb1EEEE3dotINS1_IKS5_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSK_17scalar_product_opIdSO_EEE10ReturnTypeERKNS0_ISM_EE.exit.i

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEELi1ELin1ELb1EEELi1ELin1ELb1EEEE3dotINS1_IKS5_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSK_17scalar_product_opIdSO_EEE10ReturnTypeERKNS0_ISM_EE.exit.i: ; preds = %.lr.ph85.i.i.i.i.i.i30.prol.loopexit, %.lr.ph85.i.i.i.i.i.i30, %bb.v, %bb.u, %bb.p
  %.0.i.i.i.i29 = phi double [ 0.000000e+00, %bb.p ], [ %i.ey, %bb.u ], [ %i.go, %bb.v ], [ %.lcssa103.unr, %.lr.ph85.i.i.i.i.i.i30.prol.loopexit ], [ %i.gk, %.lr.ph85.i.i.i.i.i.i30 ]
  %i.gp = load double, ptr %i.dg, align 8, !tbaa !68
  %i.gq = tail call double @llvm.fmuladd.f64(double %i.dj, double %.0.i.i.i.i29, double %i.gp)
  store double %i.gq, ptr %i.dg, align 8, !tbaa !68
  br label %_ZN5Eigen8internal20generic_product_implIKNS_5BlockIKNS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEELi1ELin1ELb1EEES6_NS_10DenseShapeESF_Li7EE13scaleAndAddToINS2_IS6_Li1ELin1ELb0EEEEEvRT_RSE_RKS6_RKd.exit

bb.w:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store ptr %i.dg, ptr %4, align 8
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.k, ptr %.sroa.555.0..sroa_idx, align 8
  %.sroa.656.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %0, ptr %.sroa.656.0..sroa_idx, align 8
  %.sroa.757.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.959.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.757.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.959.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr %2, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store ptr %i.dh, ptr %6, align 8
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.b, ptr %.sroa.545.0..sroa_idx, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.dh, ptr %i.gr, align 8
  %.sroa.8.24..sroa_idx47 = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %i.b, ptr %.sroa.8.24..sroa_idx47, align 8
  %.sroa.949.24..sroa_idx50 = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 %i.e, ptr %.sroa.949.24..sroa_idx50, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %6, i64 56
  %.sroa.12.56..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gs, i8 0, i64 16, i1 false)
  store i64 %i.b, ptr %.sroa.12.56..sroa_idx, align 8
  call void @_ZN5Eigen8internal19gemv_dense_selectorILi2ELi1ELb1EE3runINS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS4_IKNS_5BlockIKNS4_IKNS_3MapIS6_Li0ENS_6StrideILi0ELi0EEEEEEELi1ELin1ELb1EEEEENS4_INS9_IS6_Li1ELin1ELb0EEEEEEEvRKT_RKT0_RT1_RKNSS_6ScalarE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(80) %6, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %_ZN5Eigen8internal20generic_product_implIKNS_5BlockIKNS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEELi1ELin1ELb1EEES6_NS_10DenseShapeESF_Li7EE13scaleAndAddToINS2_IS6_Li1ELin1ELb0EEEEEvRT_RSE_RKS6_RKd.exit

_ZNK5Eigen8internal12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi1ELb0EdLi0ELb0ELi0ELi1EEENS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEES7_S7_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEclEllllPNS0_16GemmParallelInfoIlEE.exit.i: ; preds = %bb.n
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8
  %i.gt = load double, ptr %3, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %10, i8 0, i64 16, i1 false)
  %i.gu = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store i64 %i.de, ptr %i.gu, align 8, !tbaa !157
  %i.gv = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 3 uses
  store i64 %i.k, ptr %i.gv, align 8, !tbaa !158
  %i.gw = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  store i64 %i.b, ptr %i.gw, align 8, !tbaa !159
  call void @_ZN5Eigen8internal37evaluateProductBlockingSizesHeuristicIddLi1ElEEvRT2_S3_S3_S2_(ptr noundef nonnull align 8 dereferenceable(8) %i.gw, ptr noundef nonnull align 8 dereferenceable(8) %i.gu, ptr noundef nonnull align 8 dereferenceable(8) %i.gv, i64 noundef 1)
  %i.gx = load i64, ptr %i.gu, align 8, !tbaa !157
  %i.gy = load i64, ptr %i.gw, align 8, !tbaa !159 ; 2 uses
  %i.gz = mul nsw i64 %i.gy, %i.gx
  %i.ha = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i64 %i.gz, ptr %i.ha, align 8, !tbaa !161
  %i.hb = load i64, ptr %i.gv, align 8, !tbaa !158
  %i.hc = mul nsw i64 %i.hb, %i.gy
  %i.hd = getelementptr inbounds nuw i8, ptr %10, i64 48
  store i64 %i.hc, ptr %i.hd, align 8, !tbaa !162
  %i.he = load i64, ptr %i.d, align 8, !tbaa !77
  %i.hf = load i64, ptr %i.g, align 8, !tbaa !131
  %i.hg = load ptr, ptr %2, align 8, !tbaa !78
  %i.hh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !79
  %i.hj = load ptr, ptr %0, align 8, !tbaa !78
  %i.hk = load i64, ptr %i.dd, align 8, !tbaa !79
  invoke void @_ZN5Eigen8internal29general_matrix_matrix_productIldLi1ELb0EdLi0ELb0ELi0ELi1EE3runElllPKdlS4_lPdlldRNS0_15level3_blockingIddEEPNS0_16GemmParallelInfoIlEE(i64 noundef %i.he, i64 noundef %i.hf, i64 noundef %i.b, ptr noundef nonnull %.sroa.0.0.copyload, i64 noundef %i.b, ptr noundef nonnull %i.hg, i64 noundef %i.hi, ptr noundef nonnull %i.hj, i64 noundef 1, i64 noundef %i.hk, double noundef %i.gt, ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef null)
          to label %_ZN5Eigen8internal16parallelize_gemmILb1ENS0_12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi1ELb0EdLi0ELb0ELi0ELi1EEENS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEES8_S8_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEElEEvRKT0_T1_SK_SK_b.exit unwind label %bb.x

_ZN5Eigen8internal16parallelize_gemmILb1ENS0_12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi1ELb0EdLi0ELb0ELi0ELi1EEENS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEES8_S8_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEElEEvRKT0_T1_SK_SK_b.exit: ; preds = %_ZNK5Eigen8internal12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi1ELb0EdLi0ELb0ELi0ELi1EEENS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEES7_S7_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEclEllllPNS0_16GemmParallelInfoIlEE.exit.i
  %i.hl = load ptr, ptr %10, align 8, !tbaa !163
  call void @free(ptr noundef %i.hl) #30
  %i.hm = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !164
  call void @free(ptr noundef %i.hn) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %_ZN5Eigen8internal20generic_product_implIKNS_5BlockIKNS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEELi1ELin1ELb1EEES6_NS_10DenseShapeESF_Li7EE13scaleAndAddToINS2_IS6_Li1ELin1ELb0EEEEEvRT_RSE_RKS6_RKd.exit

_ZN5Eigen8internal20generic_product_implIKNS_5BlockIKNS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEELi1ELin1ELb1EEES6_NS_10DenseShapeESF_Li7EE13scaleAndAddToINS2_IS6_Li1ELin1ELb0EEEEEvRT_RSE_RKS6_RKd.exit: ; preds = %bb.w, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEELi1ELin1ELb1EEELi1ELin1ELb1EEEE3dotINS1_IKS5_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSK_17scalar_product_opIdSO_EEE10ReturnTypeERKNS0_ISM_EE.exit.i, %bb.a, %bb.b, %bb.c, %_ZN5Eigen8internal16parallelize_gemmILb1ENS0_12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi1ELb0EdLi0ELb0ELi0ELi1EEENS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEES8_S8_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEElEEvRKT0_T1_SK_SK_b.exit, %_ZN5Eigen8internal20generic_product_implINS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEKNS_5BlockIKS5_Lin1ELi1ELb1EEENS_10DenseShapeESF_Li7EE13scaleAndAddToINSB_IS5_Lin1ELi1ELb1EEEEEvRT_RKSA_RSE_RKd.exit
  ret void

bb.x:                                             ; preds = %_ZNK5Eigen8internal12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi1ELb0EdLi0ELb0ELi0ELi1EEENS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEES7_S7_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEclEllllPNS0_16GemmParallelInfoIlEE.exit.i
  %i.ho = landingpad { ptr, i32 }
          cleanup
  %i.hp = load ptr, ptr %10, align 8, !tbaa !163
  call void @free(ptr noundef %i.hp) #30
  %i.hq = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !164
  call void @free(ptr noundef %i.hr) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  resume { ptr, i32 } %i.ho
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal42call_restricted_packet_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_9TransposeIKNS_3MapIS3_Li0ENS_6StrideILi0ELi0EEEEEEES3_Li1EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #23 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 16 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 14 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !465, !nonnull !111, !align !120 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !77 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !131  ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !79
  %.not.i = icmp eq i64 %i.h, %i.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8
  %.not8.i = icmp eq i64 %i.j, %i.f
  %or.cond.i = select i1 %.not.i, i1 %.not8.i, i1 false
  br i1 %or.cond.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i64 %i.d, 0
  %i.l = icmp eq i64 %i.f, 0
  %or.cond.i.i.i = or i1 %i.k, %i.l
  br i1 %or.cond.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = sdiv i64 9223372036854775807, %i.f
  %i.n = icmp sgt i64 %i.d, %i.m
  br i1 %i.n, label %.noexc, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i

.noexc:                                           ; preds = %bb.c
  %i.o = tail call ptr @__cxa_allocate_exception(i64 8) #30 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.o, align 8, !tbaa !41
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #31
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i: ; preds = %bb.c, %bb.b
  %i.p = mul nsw i64 %i.f, %i.d
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.p, i64 noundef %i.d, i64 noundef %i.f)
  %.pr = load i64, ptr %i.i, align 8, !tbaa !131
  %.pre = load i64, ptr %i.g, align 8, !tbaa !79
  br label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, %bb.a
  %i.q = phi i64 [ %.pre, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i ], [ %i.d, %bb.a ] ; 30 uses
  %i.r = phi i64 [ %.pr, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i ], [ %i.f, %bb.a ] ; 13 uses
  %i.s = load ptr, ptr %0, align 8, !tbaa !78     ; 13 uses
  %i.t = icmp sgt i64 %i.r, 0
  %i.u = icmp sgt i64 %i.q, 0
  %or.cond = select i1 %i.t, i1 %i.u, i1 false
  br i1 %or.cond, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_7ProductINS_9TransposeIKNS_3MapIS5_Li0ENS_6StrideILi0ELi0EEEEEEES5_Li1EEEEENS0_9assign_opIddEEEELi0ELi0EE3runERSJ_.exit

.preheader.lr.ph.split.i:                         ; preds = %bb.d
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !78, !noalias !466 ; 11 uses
  %i.w = load i64, ptr %i.c, align 8, !tbaa !79, !noalias !466 ; 33 uses
  %i.x = icmp eq i64 %i.w, 0
  %i.y = sdiv i64 %i.w, 4
  %i.z = shl nsw i64 %i.y, 2                      ; 12 uses
  %i.aa = sdiv i64 %i.w, 2
  %i.ab = shl nsw i64 %i.aa, 1                    ; 22 uses
  %i.ac = icmp sgt i64 %i.w, 3
  %i.ad = icmp samesign ugt i64 %i.w, 7
  %i.ae = icmp sgt i64 %i.ab, %i.z                ; 4 uses
  %i.af = icmp slt i64 %i.ab, %i.w                ; 3 uses
  br i1 %i.x, label %.preheader.us.preheader.i, label %.preheader.lr.ph.split.split.i

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.split.i
  %i.ag = mul i64 %i.r, %i.q
  %i.ah = shl i64 %i.ag, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 %i.ah, i1 false), !tbaa !68
  br label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_7ProductINS_9TransposeIKNS_3MapIS5_Li0ENS_6StrideILi0ELi0EEEEEEES5_Li1EEEEENS0_9assign_opIddEEEELi0ELi0EE3runERSJ_.exit

.preheader.lr.ph.split.split.i:                   ; preds = %.preheader.lr.ph.split.i
  %.off.i.i.i.i.i.i.i = add i64 %i.w, 1
  %.not.i.i.i.i.i.i.i = icmp ult i64 %.off.i.i.i.i.i.i.i, 3
  br i1 %.not.i.i.i.i.i.i.i, label %.preheader.us20.i.preheader, label %.preheader.i.preheader

.preheader.us20.i.preheader:                      ; preds = %.preheader.lr.ph.split.split.i
  %i.ai = mul i64 %i.r, %i.q
  %i.aj = shl i64 %i.ai, 3
  %scevgep = getelementptr i8, ptr %i.s, i64 %i.aj ; 2 uses
  %i.ak = shl i64 %i.q, 3                         ; 2 uses
  %scevgep138 = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.ak
  %i.al = add nuw i64 %i.r, 2305843009213693951
  %i.am = mul i64 %i.w, %i.al
  %i.an = shl i64 %i.am, 3
  %i.ao = getelementptr i8, ptr %i.v, i64 %i.an
  %scevgep139 = getelementptr i8, ptr %i.ao, i64 8
  %min.iters.check = icmp ugt i64 %i.q, 9
  %ident.check.not = icmp eq i64 %.sroa.6.0.copyload, 1
  %or.cond146 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %bound0 = icmp ult ptr %i.s, %scevgep138
  %bound1 = icmp ult ptr %.sroa.0.0.copyload, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %i.ak, 0
  %3 = or i1 %found.conflict, %stride.check
  %bound0140 = icmp ult ptr %i.s, %scevgep139
  %bound1141 = icmp ult ptr %i.v, %scevgep
  %found.conflict142 = and i1 %bound0140, %bound1141
  %.mask = and i64 %i.w, 1152921504606846976
  %stride.check144 = icmp ne i64 %.mask, 0
  %i.ap = or i1 %found.conflict142, %stride.check144
  %conflict.rdx = or i1 %3, %i.ap
  %n.vec = and i64 %i.q, 9223372036854775804      ; 3 uses
  %cmp.n = icmp eq i64 %i.q, %n.vec
  %xtraiter203 = and i64 %i.q, 1
  %lcmp.mod204.not = icmp eq i64 %xtraiter203, 0
  br label %.preheader.us20.i

.preheader.i.preheader:                           ; preds = %.preheader.lr.ph.split.split.i
  br i1 %i.ac, label %.preheader.i.preheader.split.us, label %.preheader.i.preheader.split

.preheader.i.preheader.split.us:                  ; preds = %.preheader.i.preheader
  br i1 %i.ad, label %.preheader.i.preheader.split.us.split.us, label %.preheader.i.preheader.split.us.split

.preheader.i.preheader.split.us.split.us:         ; preds = %.preheader.i.preheader.split.us
  br i1 %i.af, label %.preheader.i.preheader.split.us.split.us.split.us, label %.preheader.i.us.us

.preheader.i.preheader.split.us.split.us.split.us: ; preds = %.preheader.i.preheader.split.us.split.us
  br i1 %i.ae, label %.preheader.i.us.us.us.us.preheader, label %.preheader.i.us.us.us.preheader

.preheader.i.us.us.us.preheader:                  ; preds = %.preheader.i.preheader.split.us.split.us.split.us
  %i.aq = sub nsw i64 %i.w, %i.ab
  %xtraiter197 = and i64 %i.aq, 3                 ; 2 uses
  %lcmp.mod198.not = icmp eq i64 %xtraiter197, 0
  %i.ar = sub nsw i64 %i.ab, %i.w
  %i.as = icmp ugt i64 %i.ar, -4
  br label %.preheader.i.us.us.us

.preheader.i.us.us.us.us.preheader:               ; preds = %.preheader.i.preheader.split.us.split.us.split.us
  %i.at = sub nsw i64 %i.w, %i.ab
  %xtraiter200 = and i64 %i.at, 3                 ; 2 uses
  %lcmp.mod201.not = icmp eq i64 %xtraiter200, 0
  %i.au = sub nsw i64 %i.ab, %i.w
  %i.av = icmp ugt i64 %i.au, -4
  br label %.preheader.i.us.us.us.us

.preheader.i.us.us.us.us:                         ; preds = %.preheader.i.us.us.us.us.preheader, %._crit_edge.split.split.i.split.us.us.split.us.us.split.us.us.split.us.us
  %.0816.i.us.us.us.us = phi i64 [ %i.dp, %._crit_edge.split.split.i.split.us.us.split.us.us.split.us.us.split.us.us ], [ 0, %.preheader.i.us.us.us.us.preheader ] ; 3 uses
  %i.aw = mul nuw nsw i64 %.0816.i.us.us.us.us, %i.w
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.aw ; 10 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.z
  %i.ba = mul nuw nsw i64 %.0816.i.us.us.us.us, %i.q
  %invariant.gep.i.us.us.us.us = getelementptr [8 x i8], ptr %i.s, i64 %i.ba
  br label %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us.us.us

.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us.us.us: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKNS_3MapIS4_Li0ENS_6StrideILi0ELi0EEEEEEES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us.us.us.us.us.us, %.preheader.i.us.us.us.us
  %.011.i.us.us.us.us.us.us.us.us = phi i64 [ 0, %.preheader.i.us.us.us.us ], [ %i.do, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKNS_3MapIS4_Li0ENS_6StrideILi0ELi0EEEEEEES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us.us.us.us.us.us ] ; 3 uses
  %i.bb = mul nsw i64 %.011.i.us.us.us.us.us.us.us.us, %.sroa.6.0.copyload
  %i.bc = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.copyload, i64 %i.bb ; 10 uses
  %i.bd = load <2 x double>, ptr %i.bc, align 1, !tbaa !70
  %i.be = load <2 x double>, ptr %i.ax, align 1, !tbaa !70
  %i.bf = fmul <2 x double> %i.bd, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bh = load <2 x double>, ptr %i.bg, align 1, !tbaa !70
  %i.bi = load <2 x double>, ptr %i.ay, align 1, !tbaa !70
  %i.bj = fmul <2 x double> %i.bh, %i.bi
  br label %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us

.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us:     ; preds = %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us.us.us
  %.05480.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us = phi i64 [ %.054.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us ], [ 4, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us.us.us ] ; 4 uses
  %.054.in79.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us = phi i64 [ %.05480.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us.us.us ]
  %.07278.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us = phi <2 x double> [ %i.bp, %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us ], [ %i.bf, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us.us.us ]
  %.07577.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us = phi <2 x double> [ %i.bw, %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us ], [ %i.bj, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us.us.us ]
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.05480.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us
  %i.bl = load <2 x double>, ptr %i.bk, align 1, !tbaa !70
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.05480.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us
  %i.bn = load <2 x double>, ptr %i.bm, align 1, !tbaa !70
  %i.bo = fmul <2 x double> %i.bl, %i.bn
  %i.bp = fadd <2 x double> %.07278.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, %i.bo ; 2 uses
  %i.bq = add nuw nsw i64 %.054.in79.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, 6 ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bq
  %i.bs = load <2 x double>, ptr %i.br, align 1, !tbaa !70
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.bq
  %i.bu = load <2 x double>, ptr %i.bt, align 1, !tbaa !70
  %i.bv = fmul <2 x double> %i.bs, %i.bu
  %i.bw = fadd <2 x double> %.07577.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, %i.bv ; 2 uses
  %.054.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us = add nuw nsw i64 %.05480.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, 4 ; 2 uses
  %i.bx = icmp slt i64 %.054.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, %i.z
  br i1 %i.bx, label %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, label %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us.us.us, !llvm.loop !449

._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us.us.us: ; preds = %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us
  %i.by = fadd <2 x double> %i.bw, %i.bp
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.z
  %i.ca = load <2 x double>, ptr %i.bz, align 1, !tbaa !70
  %i.cb = load <2 x double>, ptr %i.az, align 1, !tbaa !70
  %i.cc = fmul <2 x double> %i.ca, %i.cb
  %i.cd = fadd <2 x double> %i.by, %i.cc          ; 2 uses
  %shift = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.cd, %shift
  %i.ce = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  br i1 %lcmp.mod201.not, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol

.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol: ; preds = %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us.us.us, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol
  %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol = phi i64 [ %i.cl, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol ], [ %i.ab, %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us.us.us ] ; 3 uses
  %.182.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol = phi double [ %i.ck, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol ], [ %i.ce, %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us.us.us ]
  %prol.iter202 = phi i64 [ %prol.iter202.next, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol ], [ 0, %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us.us.us ]
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !68
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !68
  %i.cj = fmul double %i.cg, %i.ci
  %i.ck = fadd double %.182.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol, %i.cj ; 3 uses
  %i.cl = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol, 1 ; 2 uses
  %prol.iter202.next = add i64 %prol.iter202, 1   ; 2 uses
  %prol.iter202.cmp.not = icmp eq i64 %prol.iter202.next, %xtraiter200
  br i1 %prol.iter202.cmp.not, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol, !llvm.loop !450

.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol.loopexit: ; preds = %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol, %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us.us.us
  %.lcssa171.unr = phi double [ poison, %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us.us.us ], [ %i.ck, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol ]
  %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.unr = phi i64 [ %i.ab, %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us.us.us ], [ %i.cl, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol ]
  %.182.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.unr = phi double [ %i.ce, %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us.us.us ], [ %i.ck, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol ]
  br i1 %i.av, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKNS_3MapIS4_Li0ENS_6StrideILi0ELi0EEEEEEES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us.us.us.us.us.us, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us

.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us:   ; preds = %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol.loopexit, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us
  %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us = phi i64 [ %i.dn, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us ], [ %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.unr, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol.loopexit ] ; 6 uses
  %.182.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us = phi double [ %i.dm, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us ], [ %.182.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.unr, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol.loopexit ]
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !68
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us
  %i.cp = load double, ptr %i.co, align 8, !tbaa !68
  %i.cq = fmul double %i.cn, %i.cp
  %i.cr = fadd double %.182.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, %i.cq
  %i.cs = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.cs
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !68
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.cs
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !68
  %i.cx = fmul double %i.cu, %i.cw
  %i.cy = fadd double %i.cr, %i.cx
  %i.cz = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, 2 ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.cz
  %i.db = load double, ptr %i.da, align 8, !tbaa !68
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.cz
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !68
  %i.de = fmul double %i.db, %i.dd
  %i.df = fadd double %i.cy, %i.de
  %i.dg = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, 3 ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.dg
  %i.di = load double, ptr %i.dh, align 8, !tbaa !68
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.dg
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !68
  %i.dl = fmul double %i.di, %i.dk
  %i.dm = fadd double %i.df, %i.dl                ; 2 uses
  %i.dn = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.3 = icmp eq i64 %i.dn, %i.w
  br i1 %exitcond.not.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKNS_3MapIS4_Li0ENS_6StrideILi0ELi0EEEEEEES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us.us.us.us.us.us, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, !llvm.loop !451

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKNS_3MapIS4_Li0ENS_6StrideILi0ELi0EEEEEEES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us.us.us.us.us.us: ; preds = %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol.loopexit
  %.lcssa171 = phi double [ %.lcssa171.unr, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol.loopexit ], [ %i.dm, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us ]
  %gep.i.us.us.us.us.us.us.us.us = getelementptr [8 x i8], ptr %invariant.gep.i.us.us.us.us, i64 %.011.i.us.us.us.us.us.us.us.us
  store double %.lcssa171, ptr %gep.i.us.us.us.us.us.us.us.us, align 8, !tbaa !68
  %i.do = add nuw nsw i64 %.011.i.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond.not.i.us.us.us.us.us.us.us.us = icmp eq i64 %i.do, %i.q
  br i1 %exitcond.not.i.us.us.us.us.us.us.us.us, label %._crit_edge.split.split.i.split.us.us.split.us.us.split.us.us.split.us.us, label %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us.us.us, !llvm.loop !452

._crit_edge.split.split.i.split.us.us.split.us.us.split.us.us.split.us.us: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKNS_3MapIS4_Li0ENS_6StrideILi0ELi0EEEEEEES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us.us.us.us.us.us
  %i.dp = add nuw nsw i64 %.0816.i.us.us.us.us, 1 ; 2 uses
  %exitcond27.not.i.us.us.us.us = icmp eq i64 %i.dp, %i.r
  br i1 %exitcond27.not.i.us.us.us.us, label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_7ProductINS_9TransposeIKNS_3MapIS5_Li0ENS_6StrideILi0ELi0EEEEEEES5_Li1EEEEENS0_9assign_opIddEEEELi0ELi0EE3runERSJ_.exit, label %.preheader.i.us.us.us.us, !llvm.loop !453

.preheader.i.us.us.us:                            ; preds = %.preheader.i.us.us.us.preheader, %._crit_edge.split.split.i.split.us.us.split.us.us.split.us.us.split
  %.0816.i.us.us.us = phi i64 [ %i.gd, %._crit_edge.split.split.i.split.us.us.split.us.us.split.us.us.split ], [ 0, %.preheader.i.us.us.us.preheader ] ; 3 uses
  %i.dq = mul nuw nsw i64 %.0816.i.us.us.us, %i.w
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.dq ; 9 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = mul nuw nsw i64 %.0816.i.us.us.us, %i.q
  %invariant.gep.i.us.us.us = getelementptr [8 x i8], ptr %i.s, i64 %i.dt
  br label %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us

.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKNS_3MapIS4_Li0ENS_6StrideILi0ELi0EEEEEEES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us.us.us.us, %.preheader.i.us.us.us
  %.011.i.us.us.us.us.us.us = phi i64 [ 0, %.preheader.i.us.us.us ], [ %i.gc, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKNS_3MapIS4_Li0ENS_6StrideILi0ELi0EEEEEEES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us.us.us.us ] ; 3 uses
  %i.du = mul nsw i64 %.011.i.us.us.us.us.us.us, %.sroa.6.0.copyload
  %i.dv = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.copyload, i64 %i.du ; 9 uses
  %i.dw = load <2 x double>, ptr %i.dv, align 1, !tbaa !70
  %i.dx = load <2 x double>, ptr %i.dr, align 1, !tbaa !70
  %i.dy = fmul <2 x double> %i.dw, %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.ea = load <2 x double>, ptr %i.dz, align 1, !tbaa !70
  %i.eb = load <2 x double>, ptr %i.ds, align 1, !tbaa !70
  %i.ec = fmul <2 x double> %i.ea, %i.eb
  br label %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us

.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us:           ; preds = %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us
  %.05480.i.i.i.i.i.i.i.us.us.us.us.us.us = phi i64 [ %.054.i.i.i.i.i.i.i.us.us.us.us.us.us, %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us ], [ 4, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us ] ; 4 uses
  %.054.in79.i.i.i.i.i.i.i.us.us.us.us.us.us = phi i64 [ %.05480.i.i.i.i.i.i.i.us.us.us.us.us.us, %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us ]
  %.07278.i.i.i.i.i.i.i.us.us.us.us.us.us = phi <2 x double> [ %i.ei, %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us ], [ %i.dy, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us ]
  %.07577.i.i.i.i.i.i.i.us.us.us.us.us.us = phi <2 x double> [ %i.ep, %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us ], [ %i.ec, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us ]
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.05480.i.i.i.i.i.i.i.us.us.us.us.us.us
  %i.ee = load <2 x double>, ptr %i.ed, align 1, !tbaa !70
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %.05480.i.i.i.i.i.i.i.us.us.us.us.us.us
  %i.eg = load <2 x double>, ptr %i.ef, align 1, !tbaa !70
  %i.eh = fmul <2 x double> %i.ee, %i.eg
  %i.ei = fadd <2 x double> %.07278.i.i.i.i.i.i.i.us.us.us.us.us.us, %i.eh ; 2 uses
  %i.ej = add nuw nsw i64 %.054.in79.i.i.i.i.i.i.i.us.us.us.us.us.us, 6 ; 2 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.ej
  %i.el = load <2 x double>, ptr %i.ek, align 1, !tbaa !70
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.ej
  %i.en = load <2 x double>, ptr %i.em, align 1, !tbaa !70
  %i.eo = fmul <2 x double> %i.el, %i.en
  %i.ep = fadd <2 x double> %.07577.i.i.i.i.i.i.i.us.us.us.us.us.us, %i.eo ; 2 uses
  %.054.i.i.i.i.i.i.i.us.us.us.us.us.us = add nuw nsw i64 %.05480.i.i.i.i.i.i.i.us.us.us.us.us.us, 4 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi1EEELi4ELi2EDv2_dLi1ELb0ELb0EEclEPdRKS3_llll:bb.a
  store double %i.gm, ptr %i.gn, align 8, !tbaa !68
  %i.go = getelementptr [8 x i8], ptr %i.gk, i64 %i.fp
  %i.gp = load double, ptr %i.go, align 8, !tbaa !68
  %i.gq = add nsw i64 %.4158, 2                   ; 2 uses
  %i.gr = getelementptr [8 x i8], ptr %1, i64 %.4158
  %i.gs = getelementptr i8, ptr %i.gr, i64 8
  store double %i.gp, ptr %i.gs, align 8, !tbaa !68
  br i1 %exitcond.not.1, label %..loopexit_crit_edge, label %bb.c

bb.c:                                             ; preds = %.preheader139
  %i.gt = getelementptr [8 x i8], ptr %i.gk, i64 %i.fr
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !68
  %i.gv = getelementptr inbounds [8 x i8], ptr %1, i64 %i.gq
  store double %i.gu, ptr %i.gv, align 8, !tbaa !68
  %i.gw = getelementptr [8 x i8], ptr %i.gk, i64 %i.ft
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !68
  %i.gy = add nsw i64 %.4158, 4
  %i.gz = getelementptr [8 x i8], ptr %1, i64 %.4158
  %i.ha = getelementptr i8, ptr %i.gz, i64 24
  store double %i.gx, ptr %i.ha, align 8, !tbaa !68
  br label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %bb.c, %.preheader139
  %.lcssa305 = phi i64 [ %i.gy, %bb.c ], [ %i.gq, %.preheader139 ] ; 2 uses
  %i.hb = add nuw nsw i64 %.2130156, 1            ; 2 uses
  %exitcond201.not = icmp eq i64 %i.hb, %3
  br i1 %exitcond201.not, label %._crit_edge159.split, label %.preheader139, !llvm.loop !515

._crit_edge159.split:                             ; preds = %..loopexit_crit_edge, %.preheader141
  %.4.lcssa = phi i64 [ %.2.lcssa, %.preheader141 ], [ %.lcssa305, %..loopexit_crit_edge ] ; 2 uses
  %i.hc = add i64 %.1133167, %indvars.iv          ; 3 uses
  %i.hd = icmp slt i64 %i.hc, %i.v
  br i1 %i.hd, label %.lr.ph.split, label %._crit_edge, !llvm.loop !514

._crit_edge:                                      ; preds = %._crit_edge159.split, %._crit_edge159.split.us.us, %bb.b
  %.1133.lcssa = phi i64 [ %.0132175, %bb.b ], [ %i.fh, %._crit_edge159.split.us.us ], [ %i.hc, %._crit_edge159.split ] ; 4 uses
  %.1.lcssa = phi i64 [ %.0122178, %bb.b ], [ %.4.lcssa.us, %._crit_edge159.split.us.us ], [ %.4.lcssa, %._crit_edge159.split ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -2  ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, 0
  %indvar.next259 = add i64 %indvar258, 1
  br i1 %.not, label %.preheader137, label %bb.b

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge182
  %indvar286 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvar.next287, %._crit_edge182 ] ; 2 uses
  %.8185 = phi i64 [ %.1.lcssa, %.preheader.lr.ph.split ], [ %.lcssa, %._crit_edge182 ] ; 5 uses
  %.2134184 = phi i64 [ %.1133.lcssa, %.preheader.lr.ph.split ], [ %i.hx, %._crit_edge182 ] ; 2 uses
  %i.he = mul nsw i64 %i.l, %.2134184
  %invariant.gep = getelementptr [8 x i8], ptr %i.j, i64 %i.he ; 6 uses
  br i1 %min.iters.check289, label %scalar.ph288.preheader, label %vector.memcheck285

vector.memcheck285:                               ; preds = %.preheader
  %i.hf = mul i64 %i.q, %indvar286
  %i.hg = add i64 %i.p, %i.hf
  %i.hh = shl i64 %.8185, 3
  %i.hi = add i64 %i.hg, %i.hh
  %i.hj = add i64 %i.hi, -1
  %diff.check = icmp ult i64 %i.hj, 31
  br i1 %diff.check, label %scalar.ph288.preheader, label %vector.ph290

vector.ph290:                                     ; preds = %vector.memcheck285
  %i.hk = add i64 %.8185, %n.vec291               ; 2 uses
  %i.hl = getelementptr [8 x i8], ptr %1, i64 %.8185
  br label %vector.body292

vector.body292:                                   ; preds = %vector.body292, %vector.ph290
  %index293 = phi i64 [ 0, %vector.ph290 ], [ %index.next296, %vector.body292 ] ; 3 uses
  %i.hm = getelementptr [8 x i8], ptr %invariant.gep, i64 %index293 ; 2 uses
  %i.hn = getelementptr i8, ptr %i.hm, i64 16
  %wide.load294 = load <2 x double>, ptr %i.hm, align 8, !tbaa !68
  %wide.load295 = load <2 x double>, ptr %i.hn, align 8, !tbaa !68
  %i.ho = getelementptr [8 x i8], ptr %i.hl, i64 %index293 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  store <2 x double> %wide.load294, ptr %i.ho, align 8, !tbaa !68
  store <2 x double> %wide.load295, ptr %i.hp, align 8, !tbaa !68
  %index.next296 = add nuw i64 %index293, 4       ; 2 uses
  %i.hq = icmp eq i64 %index.next296, %n.vec291
  br i1 %i.hq, label %middle.block297, label %vector.body292, !llvm.loop !516

middle.block297:                                  ; preds = %vector.body292
  br i1 %cmp.n298, label %._crit_edge182, label %scalar.ph288.preheader

scalar.ph288.preheader:                           ; preds = %vector.memcheck285, %.preheader, %middle.block297
  %.0180.ph = phi i64 [ 0, %vector.memcheck285 ], [ 0, %.preheader ], [ %n.vec291, %middle.block297 ] ; 3 uses
  %.9179.ph = phi i64 [ %.8185, %vector.memcheck285 ], [ %.8185, %.preheader ], [ %i.hk, %middle.block297 ] ; 2 uses
  br i1 %lcmp.mod312.not, label %scalar.ph288.prol.loopexit, label %scalar.ph288.prol

scalar.ph288.prol:                                ; preds = %scalar.ph288.preheader, %scalar.ph288.prol
  %.0180.prol = phi i64 [ %i.hu, %scalar.ph288.prol ], [ %.0180.ph, %scalar.ph288.preheader ] ; 2 uses
  %.9179.prol = phi i64 [ %i.hs, %scalar.ph288.prol ], [ %.9179.ph, %scalar.ph288.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph288.prol ], [ 0, %scalar.ph288.preheader ]
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0180.prol
  %i.hr = load double, ptr %gep.prol, align 8, !tbaa !68
  %i.hs = add nsw i64 %.9179.prol, 1              ; 3 uses
  %i.ht = getelementptr inbounds [8 x i8], ptr %1, i64 %.9179.prol
  store double %i.hr, ptr %i.ht, align 8, !tbaa !68
  %i.hu = add nuw nsw i64 %.0180.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter311
  br i1 %prol.iter.cmp.not, label %scalar.ph288.prol.loopexit, label %scalar.ph288.prol, !llvm.loop !517

scalar.ph288.prol.loopexit:                       ; preds = %scalar.ph288.prol, %scalar.ph288.preheader
  %.lcssa301.unr = phi i64 [ poison, %scalar.ph288.preheader ], [ %i.hs, %scalar.ph288.prol ]
  %.0180.unr = phi i64 [ %.0180.ph, %scalar.ph288.preheader ], [ %i.hu, %scalar.ph288.prol ]
  %.9179.unr = phi i64 [ %.9179.ph, %scalar.ph288.preheader ], [ %i.hs, %scalar.ph288.prol ]
  %i.hv = sub nsw i64 %.0180.ph, %3
  %i.hw = icmp ugt i64 %i.hv, -4
  br i1 %i.hw, label %._crit_edge182, label %scalar.ph288

._crit_edge182:                                   ; preds = %scalar.ph288.prol.loopexit, %scalar.ph288, %middle.block297
  %.lcssa = phi i64 [ %i.hk, %middle.block297 ], [ %.lcssa301.unr, %scalar.ph288.prol.loopexit ], [ %i.ik, %scalar.ph288 ]
  %i.hx = add nuw nsw i64 %.2134184, 1            ; 2 uses
  %exitcond211.not = icmp eq i64 %i.hx, %4
  %indvar.next287 = add i64 %indvar286, 1
  br i1 %exitcond211.not, label %._crit_edge186.split, label %.preheader, !llvm.loop !518

scalar.ph288:                                     ; preds = %scalar.ph288.prol.loopexit, %scalar.ph288
  %.0180 = phi i64 [ %i.in, %scalar.ph288 ], [ %.0180.unr, %scalar.ph288.prol.loopexit ] ; 5 uses
  %.9179 = phi i64 [ %i.ik, %scalar.ph288 ], [ %.9179.unr, %scalar.ph288.prol.loopexit ] ; 5 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0180
  %i.hy = load double, ptr %gep, align 8, !tbaa !68
  %i.hz = getelementptr inbounds [8 x i8], ptr %1, i64 %.9179
  store double %i.hy, ptr %i.hz, align 8, !tbaa !68
  %i.ia = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0180
  %gep.1 = getelementptr i8, ptr %i.ia, i64 8
  %i.ib = load double, ptr %gep.1, align 8, !tbaa !68
  %i.ic = getelementptr [8 x i8], ptr %1, i64 %.9179
  %i.id = getelementptr i8, ptr %i.ic, i64 8
  store double %i.ib, ptr %i.id, align 8, !tbaa !68
  %i.ie = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0180
  %gep.2 = getelementptr i8, ptr %i.ie, i64 16
  %i.if = load double, ptr %gep.2, align 8, !tbaa !68
  %i.ig = getelementptr [8 x i8], ptr %1, i64 %.9179
  %i.ih = getelementptr i8, ptr %i.ig, i64 16
  store double %i.if, ptr %i.ih, align 8, !tbaa !68
  %i.ii = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0180
  %gep.3 = getelementptr i8, ptr %i.ii, i64 24
  %i.ij = load double, ptr %gep.3, align 8, !tbaa !68
  %i.ik = add nsw i64 %.9179, 4                   ; 2 uses
  %i.il = getelementptr [8 x i8], ptr %1, i64 %.9179
  %i.im = getelementptr i8, ptr %i.il, i64 24
  store double %i.ij, ptr %i.im, align 8, !tbaa !68
  %i.in = add nuw nsw i64 %.0180, 4               ; 2 uses
  %exitcond210.not.3 = icmp eq i64 %i.in, %3
  br i1 %exitcond210.not.3, label %._crit_edge182, label %scalar.ph288, !llvm.loop !519

._crit_edge186.split:                             ; preds = %._crit_edge182, %.preheader137
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #25 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void asm sideeffect "#EIGEN PRODUCT PACK RHS COLMAJOR", "~{dirflag},~{fpsr},~{flags}"() #30, !srcloc !540
  %i.b = sdiv i64 %4, 4                           ; 2 uses
  %i.c = shl nsw i64 %i.b, 2                      ; 4 uses
  %i.d = icmp sgt i64 %4, 3
  br i1 %i.d, label %.lr.ph62, label %.preheader

.lr.ph62:                                         ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !133    ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !134  ; 12 uses
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
  %min.iters.check = icmp ult i64 %3, 28
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
  %7 = or i1 %found.conflict, %stride.check98
  %bound196.a = icmp ult ptr %scevgep85, %scevgep91
  %bound196 = icmp ult ptr %scevgep90, %scevgep87
  %found.conflict97 = and i1 %bound196.a, %bound196
  %conflict.rdx = or i1 %7, %found.conflict97
  %bound099 = icmp ult ptr %scevgep85, %scevgep93
  %bound1100 = icmp ult ptr %scevgep92, %scevgep87
  %found.conflict101 = and i1 %bound099, %bound1100
  %conflict.rdx103 = or i1 %conflict.rdx, %found.conflict101
  %bound0104 = icmp ult ptr %scevgep85, %scevgep94
  %bound1105 = icmp ult ptr %i.e, %scevgep87
  %found.conflict106 = and i1 %bound0104, %bound1105
  %conflict.rdx108 = or i1 %conflict.rdx103, %found.conflict106
  br i1 %conflict.rdx108, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ba = add i64 %.04559.us, %i.ad               ; 2 uses
  %i.bb = getelementptr [8 x i8], ptr %1, i64 %.04559.us
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %index
  %wide.load = load <2 x double>, ptr %i.bc, align 8, !tbaa !68, !alias.scope !541
  %.idx = shl i64 %index, 5
  %i.bd = getelementptr i8, ptr %i.bb, i64 %.idx
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %index
  %wide.load109 = load <2 x double>, ptr %i.be, align 8, !tbaa !68, !alias.scope !542
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %index
  %wide.load110 = load <2 x double>, ptr %i.bf, align 8, !tbaa !68, !alias.scope !543
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %index
  %wide.load111 = load <2 x double>, ptr %i.bg, align 8, !tbaa !68, !alias.scope !544
  %i.bh = shufflevector <2 x double> %wide.load, <2 x double> %wide.load109, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bi = shufflevector <2 x double> %wide.load110, <2 x double> %wide.load111, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x double> %i.bh, <4 x double> %i.bi, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.bd, align 8, !tbaa !68, !alias.scope !545, !noalias !546
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !533

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.us, %middle.block
  %.04358.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ] ; 7 uses
  %.157.us.ph = phi i64 [ %.04559.us, %vector.memcheck ], [ %.04559.us, %vector.scevcheck ], [ %.04559.us, %.lr.ph.us ], [ %i.ba, %middle.block ] ; 3 uses
  %.neg = or disjoint i64 %.04358.us.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.04358.us.ph
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !68
  %i.bm = getelementptr inbounds [8 x i8], ptr %1, i64 %.157.us.ph ; 4 uses
  store double %i.bl, ptr %i.bm, align 8, !tbaa !68
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.04358.us.ph
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !68
  %i.bp = getelementptr i8, ptr %i.bm, i64 8
  store double %i.bo, ptr %i.bp, align 8, !tbaa !68
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.04358.us.ph
  %i.br = load double, ptr %i.bq, align 8, !tbaa !68
  %i.bs = getelementptr i8, ptr %i.bm, i64 16
  store double %i.br, ptr %i.bs, align 8, !tbaa !68
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.04358.us.ph
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !68
  %i.bv = getelementptr i8, ptr %i.bm, i64 24
  store double %i.bu, ptr %i.bv, align 8, !tbaa !68
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
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !68
  %i.cb = getelementptr inbounds [8 x i8], ptr %1, i64 %.157.us ; 4 uses
  store double %i.ca, ptr %i.cb, align 8, !tbaa !68
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.04358.us
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !68
  %i.ce = getelementptr i8, ptr %i.cb, i64 8
  store double %i.cd, ptr %i.ce, align 8, !tbaa !68
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.04358.us
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !68
  %i.ch = getelementptr i8, ptr %i.cb, i64 16
  store double %i.cg, ptr %i.ch, align 8, !tbaa !68
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.04358.us
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !68
  %i.ck = getelementptr i8, ptr %i.cb, i64 24
  store double %i.cj, ptr %i.ck, align 8, !tbaa !68
  %i.cl = add nuw nsw i64 %.04358.us, 1           ; 4 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.cl
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !68
  %i.co = getelementptr [8 x i8], ptr %1, i64 %.157.us ; 4 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 32
  store double %i.cn, ptr %i.cp, align 8, !tbaa !68
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.cl
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !68
  %i.cs = getelementptr i8, ptr %i.co, i64 40
  store double %i.cr, ptr %i.cs, align 8, !tbaa !68
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.cl
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !68
  %i.cv = getelementptr i8, ptr %i.co, i64 48
  store double %i.cu, ptr %i.cv, align 8, !tbaa !68
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.cl
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !68
  %i.cy = getelementptr i8, ptr %i.co, i64 56
  store double %i.cx, ptr %i.cy, align 8, !tbaa !68
  %i.cz = add nsw i64 %.157.us, 8                 ; 2 uses
  %i.da = add nuw nsw i64 %.04358.us, 2           ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.da, %3
  br i1 %exitcond.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !534

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa79 = phi i64 [ %i.ba, %middle.block ], [ %.lcssa128.unr, %scalar.ph.prol.loopexit ], [ %i.cz, %scalar.ph ] ; 2 uses
  %i.db = add nuw nsw i64 %.04460.us, 4           ; 2 uses
  %i.dc = icmp slt i64 %i.db, %i.c
  br i1 %i.dc, label %.lr.ph.us, label %.preheader, !llvm.loop !535

.preheader:                                       ; preds = %._crit_edge.us, %.lr.ph62, %bb.a
  %.045.lcssa = phi i64 [ 0, %bb.a ], [ 0, %.lr.ph62 ], [ %.lcssa79, %._crit_edge.us ]
  %i.dd = icmp slt i64 %i.c, %4
  br i1 %i.dd, label %.lr.ph68, label %._crit_edge69.split

.lr.ph68:                                         ; preds = %.preheader
  %i.de = load ptr, ptr %2, align 8, !tbaa !133   ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !134 ; 3 uses
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
  %wide.load120 = load <2 x double>, ptr %i.dx, align 8, !tbaa !68
  %wide.load121 = load <2 x double>, ptr %i.dy, align 8, !tbaa !68
  %i.dz = getelementptr [8 x i8], ptr %i.dw, i64 %index119 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store <2 x double> %wide.load120, ptr %i.dz, align 8, !tbaa !68
  store <2 x double> %wide.load121, ptr %i.ea, align 8, !tbaa !68
  %index.next122 = add nuw i64 %index119, 4       ; 2 uses
  %i.eb = icmp eq i64 %index.next122, %n.vec117
  br i1 %i.eb, label %middle.block123, label %vector.body118, !llvm.loop !536

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
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !68
  %i.ee = getelementptr inbounds [8 x i8], ptr %1, i64 %.364.prol
  store double %i.ed, ptr %i.ee, align 8, !tbaa !68
  %i.ef = add nsw i64 %.364.prol, 1               ; 3 uses
  %i.eg = add nuw nsw i64 %.065.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter129
  br i1 %prol.iter.cmp.not, label %scalar.ph114.prol.loopexit, label %scalar.ph114.prol, !llvm.loop !537

scalar.ph114.prol.loopexit:                       ; preds = %scalar.ph114.prol, %scalar.ph114.preheader
end_hunk_2
begin_hunk_3_@_ZN5Eigen8internal20generic_product_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_3MapIS3_Li0ENS_6StrideILi0ELi0EEEEENS_10DenseShapeES8_Li8EE13scaleAndAddToIS7_EEvRT_RKS3_RKS7_RKd:bb.a
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
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !68
  %i.ck = getelementptr [8 x i8], ptr %i.bw, i64 %.01724.i.i.i.i.i.i30
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !68
  %i.cm = fmul double %i.cj, %i.cl
  %i.cn = fadd double %.02223.i.i.i.i.i.i31, %i.cm
  %i.co = add nuw nsw i64 %.01724.i.i.i.i.i.i30, 1 ; 2 uses
  %i.cp = mul nsw i64 %i.co, %i.e
  %i.cq = getelementptr [8 x i8], ptr %i.bt, i64 %i.cp
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !68
  %i.cs = getelementptr [8 x i8], ptr %i.bw, i64 %i.co
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !68
  %i.cu = fmul double %i.cr, %i.ct
  %i.cv = fadd double %i.cn, %i.cu
  %i.cw = add nuw nsw i64 %.01724.i.i.i.i.i.i30, 2 ; 2 uses
  %i.cx = mul nsw i64 %i.cw, %i.e
  %i.cy = getelementptr [8 x i8], ptr %i.bt, i64 %i.cx
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !68
  %i.da = getelementptr [8 x i8], ptr %i.bw, i64 %i.cw
  %i.db = load double, ptr %i.da, align 8, !tbaa !68
  %i.dc = fmul double %i.cz, %i.db
  %i.dd = fadd double %i.cv, %i.dc
  %i.de = add nuw nsw i64 %.01724.i.i.i.i.i.i30, 3 ; 2 uses
  %i.df = mul nsw i64 %i.de, %i.e
  %i.dg = getelementptr [8 x i8], ptr %i.bt, i64 %i.df
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !68
  %i.di = getelementptr [8 x i8], ptr %i.bw, i64 %i.de
  %i.dj = load double, ptr %i.di, align 8, !tbaa !68
  %i.dk = fmul double %i.dh, %i.dj
  %i.dl = fadd double %i.dd, %i.dk                ; 3 uses
  %i.dm = add nuw nsw i64 %.01724.i.i.i.i.i.i30, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IKNS_3MapIS3_Li0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i29, !llvm.loop !667

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
  %i.dp = load double, ptr %i.do, align 8, !tbaa !68
  %i.dq = getelementptr [8 x i8], ptr %i.bw, i64 %.01724.i.i.i.i.i.i30.epil
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !68
  %i.ds = fmul double %i.dp, %i.dr
  %i.dt = fadd double %.02223.i.i.i.i.i.i31.epil, %i.ds ; 2 uses
  %i.du = add nuw nsw i64 %.01724.i.i.i.i.i.i30.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IKNS_3MapIS3_Li0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i, label %.lr.ph.i.i.i.i.i.i29.epil, !llvm.loop !668

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IKNS_3MapIS3_Li0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i: ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IKNS_3MapIS3_Li0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i29.epil, %bb.l, %bb.k
  %.0.i.i.i.i28 = phi double [ 0.000000e+00, %bb.k ], [ %i.cc, %bb.l ], [ %i.dl, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IKNS_3MapIS3_Li0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i.loopexit.unr-lcssa ], [ %i.dt, %.lr.ph.i.i.i.i.i.i29.epil ]
  %i.dv = load double, ptr %i.bs, align 8, !tbaa !68
  %i.dw = tail call double @llvm.fmuladd.f64(double %i.bv, double %.0.i.i.i.i28, double %i.dv)
  store double %i.dw, ptr %i.bs, align 8, !tbaa !68
  br label %_ZN5Eigen8internal20generic_product_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_5BlockIKNS_3MapIS3_Li0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb1EEENS_10DenseShapeESC_Li7EE13scaleAndAddToINS4_IS8_Lin1ELi1ELb1EEEEEvRT_RKS3_RSB_RKd.exit

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store ptr %i.bt, ptr %6, align 8
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.b, ptr %.sroa.535.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.10.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store ptr %i.bs, ptr %4, align 8
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.k, ptr %.sroa.539.0..sroa_idx, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dx, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 56
  %.sroa.1144.56..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dy, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.1144.56..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(26) %2, i64 24, i1 false)
  call void @_ZN5Eigen8internal19gemv_dense_selectorILi2ELi1ELb1EE3runINS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS4_IKNS_5BlockIKS7_Li1ELin1ELb0EEEEENS4_INSD_ISA_Li1ELin1ELb0EEEEEEEvRKT_RKT0_RT1_RKNSQ_6ScalarE(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %_ZN5Eigen8internal20generic_product_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_5BlockIKNS_3MapIS3_Li0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb1EEENS_10DenseShapeESC_Li7EE13scaleAndAddToINS4_IS8_Lin1ELi1ELb1EEEEEvRT_RKS3_RSB_RKd.exit

_ZNK5Eigen8internal12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi0ELb0EdLi0ELb0ELi0ELi1EEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_3MapIS5_Li0ENS_6StrideILi0ELi0EEEEES9_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEclEllllPNS0_16GemmParallelInfoIlEE.exit.i: ; preds = %bb.i
  %i.dz = load double, ptr %3, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %9, i8 0, i64 16, i1 false)
  %i.ea = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store i64 %i.bq, ptr %i.ea, align 8, !tbaa !157
  %i.eb = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  store i64 %i.k, ptr %i.eb, align 8, !tbaa !158
  %i.ec = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  store i64 %i.b, ptr %i.ec, align 8, !tbaa !159
  call void @_ZN5Eigen8internal37evaluateProductBlockingSizesHeuristicIddLi1ElEEvRT2_S3_S3_S2_(ptr noundef nonnull align 8 dereferenceable(8) %i.ec, ptr noundef nonnull align 8 dereferenceable(8) %i.ea, ptr noundef nonnull align 8 dereferenceable(8) %i.eb, i64 noundef 1)
  %i.ed = load i64, ptr %i.ea, align 8, !tbaa !157
  %i.ee = load i64, ptr %i.ec, align 8, !tbaa !159 ; 2 uses
  %i.ef = mul nsw i64 %i.ee, %i.ed
  %i.eg = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i64 %i.ef, ptr %i.eg, align 8, !tbaa !161
  %i.eh = load i64, ptr %i.eb, align 8, !tbaa !158
  %i.ei = mul nsw i64 %i.eh, %i.ee
  %i.ej = getelementptr inbounds nuw i8, ptr %9, i64 48
  store i64 %i.ei, ptr %i.ej, align 8, !tbaa !162
  %i.ek = load i64, ptr %i.d, align 8, !tbaa !79  ; 2 uses
  %i.el = load i64, ptr %i.g, align 8, !tbaa !77
  %i.em = load i64, ptr %i.a, align 8, !tbaa !131
  %i.en = load ptr, ptr %1, align 8, !tbaa !78
  %i.eo = load ptr, ptr %2, align 8, !tbaa !76
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !77
  %i.er = load ptr, ptr %0, align 8, !tbaa !76
  %i.es = load i64, ptr %i.bp, align 8, !tbaa !77
  invoke void @_ZN5Eigen8internal29general_matrix_matrix_productIldLi0ELb0EdLi0ELb0ELi0ELi1EE3runElllPKdlS4_lPdlldRNS0_15level3_blockingIddEEPNS0_16GemmParallelInfoIlEE(i64 noundef %i.ek, i64 noundef %i.el, i64 noundef %i.em, ptr noundef nonnull %i.en, i64 noundef %i.ek, ptr noundef nonnull %i.eo, i64 noundef %i.eq, ptr noundef nonnull %i.er, i64 noundef 1, i64 noundef %i.es, double noundef %i.dz, ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef null)
          to label %_ZN5Eigen8internal16parallelize_gemmILb1ENS0_12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi0ELb0EdLi0ELb0ELi0ELi1EEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_3MapIS6_Li0ENS_6StrideILi0ELi0EEEEESA_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEElEEvRKT0_T1_SH_SH_b.exit unwind label %bb.n

_ZN5Eigen8internal16parallelize_gemmILb1ENS0_12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi0ELb0EdLi0ELb0ELi0ELi1EEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_3MapIS6_Li0ENS_6StrideILi0ELi0EEEEESA_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEElEEvRKT0_T1_SH_SH_b.exit: ; preds = %_ZNK5Eigen8internal12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi0ELb0EdLi0ELb0ELi0ELi1EEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_3MapIS5_Li0ENS_6StrideILi0ELi0EEEEES9_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEclEllllPNS0_16GemmParallelInfoIlEE.exit.i
  %i.et = load ptr, ptr %9, align 8, !tbaa !163
  call void @free(ptr noundef %i.et) #30
  %i.eu = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !164
  call void @free(ptr noundef %i.ev) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %_ZN5Eigen8internal20generic_product_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_5BlockIKNS_3MapIS3_Li0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb1EEENS_10DenseShapeESC_Li7EE13scaleAndAddToINS4_IS8_Lin1ELi1ELb1EEEEEvRT_RKS3_RSB_RKd.exit

_ZN5Eigen8internal20generic_product_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_5BlockIKNS_3MapIS3_Li0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb1EEENS_10DenseShapeESC_Li7EE13scaleAndAddToINS4_IS8_Lin1ELi1ELb1EEEEEvRT_RKS3_RSB_RKd.exit: ; preds = %bb.m, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IKNS_3MapIS3_Li0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i, %bb.h, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IKNS_3MapIS3_Li0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i, %bb.a, %bb.b, %bb.c, %_ZN5Eigen8internal16parallelize_gemmILb1ENS0_12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi0ELb0EdLi0ELb0ELi0ELi1EEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_3MapIS6_Li0ENS_6StrideILi0ELi0EEEEESA_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEElEEvRKT0_T1_SH_SH_b.exit
  ret void

bb.n:                                             ; preds = %_ZNK5Eigen8internal12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi0ELb0EdLi0ELb0ELi0ELi1EEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_3MapIS5_Li0ENS_6StrideILi0ELi0EEEEES9_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEclEllllPNS0_16GemmParallelInfoIlEE.exit.i
  %i.ew = landingpad { ptr, i32 }
          cleanup
  %i.ex = load ptr, ptr %9, align 8, !tbaa !163
  call void @free(ptr noundef %i.ex) #30
  %i.ey = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !164
  call void @free(ptr noundef %i.ez) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  resume { ptr, i32 } %i.ew
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS3_INS_7ProductIS6_S9_Li1EEEEENS0_13add_assign_opIddEEEELi4ELi0EE3runERSG_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #23 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !708, !nonnull !111, !align !120 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 7
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !77   ; 5 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.preheader.lr.ph.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS3_INS_7ProductIS6_S9_Li1EEEEENS0_13add_assign_opIddEEEELi0ELi0EE3runERSG_.exit

.preheader.lr.ph.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !77   ; 14 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS3_INS_7ProductIS6_S9_Li1EEEEENS0_13add_assign_opIddEEEELi0ELi0EE3runERSG_.exit

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !111, !align !120 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = load ptr, ptr %0, align 8, !nonnull !111, !align !120 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !144  ; 5 uses
  %i.s = load i64, ptr %i.q, align 8, !tbaa !77   ; 5 uses
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !709, !nonnull !111, !align !120 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !78, !noalias !710 ; 7 uses
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !76, !noalias !711 ; 4 uses
  %i.w = load i64, ptr %i.n, align 8, !tbaa !77, !noalias !711 ; 8 uses
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
  %wide.load125.a = load <2 x double>, ptr %i.aa, align 8, !tbaa !68
  %wide.load126 = load <2 x double>, ptr %i.ab, align 8, !tbaa !68
  %i.ac = fadd <2 x double> %wide.load125.a, zeroinitializer
  %i.ad = fadd <2 x double> %wide.load126, zeroinitializer
  store <2 x double> %i.ac, ptr %i.aa, align 8, !tbaa !68
  store <2 x double> %i.ad, ptr %i.ab, align 8, !tbaa !68
  %index.next127 = add nuw i64 %index124, 4       ; 2 uses
  %i.ae = icmp eq i64 %index.next127, %n.vec122
  br i1 %i.ae, label %middle.block128, label %vector.body123, !llvm.loop !679

middle.block128:                                  ; preds = %vector.body123
  br i1 %cmp.n129, label %._crit_edge.split.us.us.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.us.us.i.preheader

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.us.us.i.preheader: ; preds = %.preheader.us.i, %middle.block128
  %.09.us.us.i.ph = phi i64 [ 0, %.preheader.us.i ], [ %n.vec122, %middle.block128 ]
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.us.us.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.us.us.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.us.us.i.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.us.us.i
  %.09.us.us.i = phi i64 [ %i.ai, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.us.us.i ], [ %.09.us.us.i.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.us.us.i.preheader ] ; 2 uses
  %i.af = getelementptr [8 x i8], ptr %i.z, i64 %.09.us.us.i ; 2 uses
  %i.ag = load double, ptr %i.af, align 8, !tbaa !68
  %i.ah = fadd double %i.ag, 0.000000e+00
  store double %i.ah, ptr %i.af, align 8, !tbaa !68
  %i.ai = add nuw nsw i64 %.09.us.us.i, 1         ; 2 uses
  %exitcond24.not.i = icmp eq i64 %i.ai, %i.j
  br i1 %exitcond24.not.i, label %._crit_edge.split.us.us.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.us.us.i, !llvm.loop !680

._crit_edge.split.us.us.i:                        ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.us.us.i, %middle.block128
  %i.aj = add nuw nsw i64 %.0813.us.i, 1          ; 2 uses
  %exitcond25.not.i = icmp eq i64 %i.aj, %i.g
  br i1 %exitcond25.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS3_INS_7ProductIS6_S9_Li1EEEEENS0_13add_assign_opIddEEEELi0ELi0EE3runERSG_.exit, label %.preheader.us.i, !llvm.loop !681

.preheader.lr.ph.split.split.i:                   ; preds = %.preheader.lr.ph.split.i
  %i.ak = icmp sgt i64 %i.w, 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !79 ; 5 uses
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
  %scevgep = getelementptr i8, ptr %i.r, i64 %i.au
  %scevgep109 = getelementptr i8, ptr %i.u, i64 %i.as
  %i.av = mul i64 %i.w, %i.aq
  %i.aw = shl i64 %i.av, 3
  %i.ax = getelementptr i8, ptr %i.v, i64 %i.aw
  %scevgep110 = getelementptr i8, ptr %i.ax, i64 8
  %1 = insertelement <2 x ptr> poison, ptr %i.r, i64 0
  %2 = shufflevector <2 x ptr> %1, <2 x ptr> poison, <2 x i32> zeroinitializer
  %3 = insertelement <2 x ptr> poison, ptr %scevgep109, i64 0
  %4 = insertelement <2 x ptr> %3, ptr %scevgep110, i64 1
  %5 = insertelement <2 x ptr> poison, ptr %i.u, i64 0
  %6 = insertelement <2 x ptr> %5, ptr %i.v, i64 1
  %7 = insertelement <2 x ptr> poison, ptr %scevgep, i64 0
  %8 = shufflevector <2 x ptr> %7, <2 x ptr> poison, <2 x i32> zeroinitializer
  %9 = insertelement <2 x i64> poison, i64 %i.s, i64 0
  %10 = insertelement <2 x i64> %9, i64 %i.w, i64 1
  %bound0111 = icmp ult i64 %i.j, 8
  %11 = icmp ult <2 x ptr> %2, %4
  %12 = icmp ult <2 x ptr> %6, %8
  %13 = and <2 x i64> %10, splat (i64 1152921504606846976)
  %14 = and <2 x i1> %11, %12
  %15 = icmp ne <2 x i64> %13, zeroinitializer
  %16 = or <2 x i1> %14, %15
  %17 = bitcast <2 x i1> %16 to i2
  %.not143 = icmp eq i2 %17, 0
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
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !68
  %i.be = load double, ptr %i.az, align 8, !tbaa !68
  %i.bf = fmul double %i.bd, %i.be                ; 2 uses
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i.i.us.us.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.us.us.i

.lr.ph.i.i.i.i.i.i.us.us.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.preheader.us.us.i, %.lr.ph.i.i.i.i.i.i.us.us.i
  %.01724.i.i.i.i.i.i.us.us.i = phi i64 [ %i.cl, %.lr.ph.i.i.i.i.i.i.us.us.i ], [ 1, %.lr.ph.i.i.i.i.i.i.preheader.us.us.i ] ; 6 uses
  %.02223.i.i.i.i.i.i.us.us.i = phi double [ %i.ck, %.lr.ph.i.i.i.i.i.i.us.us.i ], [ %i.bf, %.lr.ph.i.i.i.i.i.i.preheader.us.us.i ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i.i.i.i.i.i.us.us.i ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader.us.us.i ]
  %i.bg = mul nsw i64 %.01724.i.i.i.i.i.i.us.us.i, %i.am
  %i.bh = getelementptr [8 x i8], ptr %i.bc, i64 %i.bg
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !68
  %i.bj = getelementptr [8 x i8], ptr %i.az, i64 %.01724.i.i.i.i.i.i.us.us.i
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !68
  %i.bl = fmul double %i.bi, %i.bk
  %i.bm = fadd double %.02223.i.i.i.i.i.i.us.us.i, %i.bl
  %i.bn = add nuw nsw i64 %.01724.i.i.i.i.i.i.us.us.i, 1 ; 2 uses
  %i.bo = mul nsw i64 %i.bn, %i.am
  %i.bp = getelementptr [8 x i8], ptr %i.bc, i64 %i.bo
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !68
  %i.br = getelementptr [8 x i8], ptr %i.az, i64 %i.bn
  %i.bs = load double, ptr %i.br, align 8, !tbaa !68
  %i.bt = fmul double %i.bq, %i.bs
  %i.bu = fadd double %i.bm, %i.bt
  %i.bv = add nuw nsw i64 %.01724.i.i.i.i.i.i.us.us.i, 2 ; 2 uses
  %i.bw = mul nsw i64 %i.bv, %i.am
  %i.bx = getelementptr [8 x i8], ptr %i.bc, i64 %i.bw
  %i.by = load double, ptr %i.bx, align 8, !tbaa !68
  %i.bz = getelementptr [8 x i8], ptr %i.az, i64 %i.bv
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !68
  %i.cb = fmul double %i.by, %i.ca
  %i.cc = fadd double %i.bu, %i.cb
  %i.cd = add nuw nsw i64 %.01724.i.i.i.i.i.i.us.us.i, 3 ; 2 uses
  %i.ce = mul nsw i64 %i.cd, %i.am
  %i.cf = getelementptr [8 x i8], ptr %i.bc, i64 %i.ce
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !68
  %i.ch = getelementptr [8 x i8], ptr %i.az, i64 %i.cd
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !68
  %i.cj = fmul double %i.cg, %i.ci
  %i.ck = fadd double %i.cc, %i.cj                ; 3 uses
  %i.cl = add nuw nsw i64 %.01724.i.i.i.i.i.i.us.us.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.us.us.i.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.us.us.i, !llvm.loop !682

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
  %i.co = load double, ptr %i.cn, align 8, !tbaa !68
  %i.cp = getelementptr [8 x i8], ptr %i.az, i64 %.01724.i.i.i.i.i.i.us.us.i.epil
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !68
  %i.cr = fmul double %i.co, %i.cq
  %i.cs = fadd double %.02223.i.i.i.i.i.i.us.us.i.epil, %i.cr ; 2 uses
  %i.ct = add nuw nsw i64 %.01724.i.i.i.i.i.i.us.us.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter152
  br i1 %epil.iter.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.us.us.i, label %.lr.ph.i.i.i.i.i.i.us.us.i.epil, !llvm.loop !683

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.us.us.i: ; preds = %.lr.ph.i.i.i.i.i.i.us.us.i.epil, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.us.us.i.unr-lcssa
  %.lcssa150 = phi double [ %i.ck, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.us.us.i.unr-lcssa ], [ %i.cs, %.lr.ph.i.i.i.i.i.i.us.us.i.epil ]
  %i.cu = getelementptr [8 x i8], ptr %i.bb, i64 %.09.us10.us.i ; 2 uses
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !68
  %i.cw = fadd double %.lcssa150, %i.cv
  store double %i.cw, ptr %i.cu, align 8, !tbaa !68
  %i.cx = add nuw nsw i64 %.09.us10.us.i, 1       ; 2 uses
  %exitcond22.not.i = icmp eq i64 %i.cx, %i.j
  br i1 %exitcond22.not.i, label %._crit_edge.split.split.us.us.i, label %.lr.ph.i.i.i.i.i.i.preheader.us.us.i, !llvm.loop !684

._crit_edge.split.split.us.us.i:                  ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.us.us.i
  %i.cy = add nuw nsw i64 %.0813.us18.i, 1        ; 2 uses
  %exitcond23.not.i = icmp eq i64 %i.cy, %i.g
  br i1 %exitcond23.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS3_INS_7ProductIS6_S9_Li1EEEEENS0_13add_assign_opIddEEEELi0ELi0EE3runERSG_.exit, label %.preheader.us17.i, !llvm.loop !681

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge.split.split.i
  %.0813.i = phi i64 [ %i.dw, %._crit_edge.split.split.i ], [ 0, %.preheader.i.preheader ] ; 3 uses
  %i.cz = mul nsw i64 %.0813.i, %i.w
  %i.da = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.cz ; 4 uses
  %i.db = mul nsw i64 %.0813.i, %i.s
  %i.dc = getelementptr [8 x i8], ptr %i.r, i64 %i.db ; 4 uses
  %.not143.not = xor i1 %.not143, true
  %brmerge = select i1 %bound0111, i1 true, i1 %.not143.not
  br i1 %brmerge, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i
  %i.dd = load double, ptr %i.da, align 8, !tbaa !68, !alias.scope !712
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.dd, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %index ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %wide.load = load <2 x double>, ptr %i.de, align 8, !tbaa !68, !alias.scope !713
  %wide.load116.a = load <2 x double>, ptr %i.df, align 8, !tbaa !68, !alias.scope !713
  %i.dg = fmul <2 x double> %wide.load, %broadcast.splat
  %i.dh = fmul <2 x double> %wide.load116.a, %broadcast.splat
  %i.di = getelementptr [8 x i8], ptr %i.dc, i64 %index ; 3 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 16     ; 2 uses
  %wide.load117.a = load <2 x double>, ptr %i.di, align 8, !tbaa !68, !alias.scope !714, !noalias !715
  %wide.load118 = load <2 x double>, ptr %i.dj, align 8, !tbaa !68, !alias.scope !714, !noalias !715
  %i.dk = fadd <2 x double> %i.dg, %wide.load117.a
  %i.dl = fadd <2 x double> %i.dh, %wide.load118
  store <2 x double> %i.dk, ptr %i.di, align 8, !tbaa !68, !alias.scope !714, !noalias !715
  store <2 x double> %i.dl, ptr %i.dj, align 8, !tbaa !68, !alias.scope !714, !noalias !715
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !689

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.split.split.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.preheader

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.preheader: ; preds = %.preheader.i, %middle.block
  %.09.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i ] ; 5 uses
  %.neg = or disjoint i64 %.09.i.ph, 1
  br i1 %lcmp.mod.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.prol.loopexit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.prol

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.prol: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.preheader
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.09.i.ph
  %i.do = load double, ptr %i.dn, align 8, !tbaa !68
  %i.dp = load double, ptr %i.da, align 8, !tbaa !68
  %i.dq = fmul double %i.do, %i.dp
  %i.dr = getelementptr [8 x i8], ptr %i.dc, i64 %.09.i.ph ; 2 uses
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !68
  %i.dt = fadd double %i.dq, %i.ds
  store double %i.dt, ptr %i.dr, align 8, !tbaa !68
  %i.du = or disjoint i64 %.09.i.ph, 1
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.prol.loopexit

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.prol.loopexit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.prol, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.preheader ], [ %i.du, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.prol ]
  %i.dv = icmp eq i64 %i.j, %.neg
  br i1 %i.dv, label %._crit_edge.split.split.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i

._crit_edge.split.split.i:                        ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i, %middle.block
  %i.dw = add nuw nsw i64 %.0813.i, 1             ; 2 uses
  %exitcond21.not.i = icmp eq i64 %i.dw, %i.g
  br i1 %exitcond21.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS3_INS_7ProductIS6_S9_Li1EEEEENS0_13add_assign_opIddEEEELi0ELi0EE3runERSG_.exit, label %.preheader.i, !llvm.loop !681

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i
  %.09.i = phi i64 [ %i.em, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i ], [ %.09.i.unr, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.prol.loopexit ] ; 4 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.09.i
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !68
  %i.dz = load double, ptr %i.da, align 8, !tbaa !68
  %i.ea = fmul double %i.dy, %i.dz
  %i.eb = getelementptr [8 x i8], ptr %i.dc, i64 %.09.i ; 2 uses
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !68
  %i.ed = fadd double %i.ea, %i.ec
  store double %i.ed, ptr %i.eb, align 8, !tbaa !68
  %i.ee = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ee
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !68
  %i.eh = load double, ptr %i.da, align 8, !tbaa !68
  %i.ei = fmul double %i.eg, %i.eh
  %i.ej = getelementptr [8 x i8], ptr %i.dc, i64 %i.ee ; 2 uses
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !68
  %i.el = fadd double %i.ei, %i.ek
  store double %i.el, ptr %i.ej, align 8, !tbaa !68
  %i.em = add nuw nsw i64 %.09.i, 2               ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.em, %i.j
  br i1 %exitcond.not.i.1, label %._crit_edge.split.split.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i, !llvm.loop !690

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit: ; preds = %bb.a
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !77 ; 8 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !77 ; 2 uses
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
  %i.fb = load ptr, ptr %0, align 8, !tbaa !716, !nonnull !111, !align !120 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !144
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !77
  %i.ff = load ptr, ptr %i.ew, align 8, !tbaa !717, !nonnull !111, !align !120 ; 3 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !709, !nonnull !111, !align !120 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !78, !noalias !718 ; 6 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !76, !noalias !719
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !77, !noalias !719 ; 5 uses
  %i.fm = mul nsw i64 %i.fl, %.03465
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.fj, i64 %i.fm ; 6 uses
  %i.fo = icmp eq i64 %i.fl, 0
  %i.fp = mul nsw i64 %i.fe, %.03465
  %i.fq = getelementptr [8 x i8], ptr %i.fc, i64 %i.fp ; 4 uses
  br i1 %i.fo, label %.preheader49.loopexit, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.fr = icmp sgt i64 %i.fl, 1
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !79 ; 5 uses
  %i.fu = load double, ptr %i.fh, align 8, !tbaa !68
  %i.fv = load double, ptr %i.fn, align 8, !tbaa !68
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
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !68
  %i.gd = getelementptr [8 x i8], ptr %i.fn, i64 %.01724.i.i.i.i.i.i.us
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !68
  %i.gf = fmul double %i.gc, %i.ge
  %i.gg = fadd double %.02223.i.i.i.i.i.i.us, %i.gf
  %i.gh = add nuw nsw i64 %.01724.i.i.i.i.i.i.us, 1 ; 2 uses
  %i.gi = mul nsw i64 %i.gh, %i.ft
  %i.gj = getelementptr [8 x i8], ptr %i.fh, i64 %i.gi
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !68
  %i.gl = getelementptr [8 x i8], ptr %i.fn, i64 %i.gh
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !68
  %i.gn = fmul double %i.gk, %i.gm
  %i.go = fadd double %i.gg, %i.gn
  %i.gp = add nuw nsw i64 %.01724.i.i.i.i.i.i.us, 2 ; 2 uses
  %i.gq = mul nsw i64 %i.gp, %i.ft
  %i.gr = getelementptr [8 x i8], ptr %i.fh, i64 %i.gq
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !68
  %i.gt = getelementptr [8 x i8], ptr %i.fn, i64 %i.gp
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !68
  %i.gv = fmul double %i.gs, %i.gu
  %i.gw = fadd double %i.go, %i.gv
  %i.gx = add nuw nsw i64 %.01724.i.i.i.i.i.i.us, 3 ; 2 uses
  %i.gy = mul nsw i64 %i.gx, %i.ft
  %i.gz = getelementptr [8 x i8], ptr %i.fh, i64 %i.gy
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !68
  %i.hb = getelementptr [8 x i8], ptr %i.fn, i64 %i.gx
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !68
  %i.hd = fmul double %i.ha, %i.hc
  %i.he = fadd double %i.gw, %i.hd                ; 3 uses
  %i.hf = add nuw nsw i64 %.01724.i.i.i.i.i.i.us, 4 ; 2 uses
  %niter162.next.3 = add i64 %niter162, 4         ; 2 uses
  %niter162.ncmp.3 = icmp eq i64 %niter162.next.3, %unroll_iter161
  br i1 %niter162.ncmp.3, label %.preheader49.loopexit68.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.us, !llvm.loop !682

.preheader49.loopexit:                            ; preds = %.lr.ph
  %i.hg = load double, ptr %i.fq, align 8, !tbaa !68
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
end_hunk_3
