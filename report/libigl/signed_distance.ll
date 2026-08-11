inline.NumInlined: 7373
inline.NumDeleted: 3590
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZN3igl15signed_distanceIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_NS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEES3_S3_EEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EENS_18SignedDistanceTypeENSC_6ScalarESL_RNS1_15PlainObjectBaseIT2_EERNSM_IT3_EERNSM_IT4_EERNSM_IT5_EE:bb.a

bb.bw:                                            ; preds = %.loopexit88.i.i
  %i.sm = getelementptr inbounds nuw i8, ptr %36, i64 104
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !198
  %i.so = ptrtoint ptr %i.sn to i64
  %i.sp = ptrtoint ptr %i.sl to i64
  %i.sq = sub i64 %i.so, %i.sp
  call void @_ZdlPvm(ptr noundef nonnull %i.sl, i64 noundef %i.sq) #32
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i:              ; preds = %bb.bw, %.loopexit88.i.i
  %i.sr = getelementptr inbounds nuw i8, ptr %36, i64 64
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !199 ; 3 uses
  %.not.i.i.i1.i.i.i = icmp eq ptr %i.ss, null
  br i1 %.not.i.i.i1.i.i.i, label %_ZNSt6vectorIN3igl17FastWindingNumber14UT_FixedVectorIfLx3ELb0EEESaIS3_EED2Ev.exit.i.i.i, label %bb.bx

bb.bx:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i
  %i.st = getelementptr inbounds nuw i8, ptr %36, i64 80
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !201
  %i.sv = ptrtoint ptr %i.su to i64
  %i.sw = ptrtoint ptr %i.ss to i64
  %i.sx = sub i64 %i.sv, %i.sw
  call void @_ZdlPvm(ptr noundef nonnull %i.ss, i64 noundef %i.sx) #32
  br label %_ZNSt6vectorIN3igl17FastWindingNumber14UT_FixedVectorIfLx3ELb0EEESaIS3_EED2Ev.exit.i.i.i

_ZNSt6vectorIN3igl17FastWindingNumber14UT_FixedVectorIfLx3ELb0EEESaIS3_EED2Ev.exit.i.i.i: ; preds = %bb.bx, %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i
  %i.sy = load ptr, ptr %i.ct, align 8, !tbaa !202 ; 2 uses
  %.not.i.i.i76.i.i = icmp eq ptr %i.sy, null
  br i1 %.not.i.i.i76.i.i, label %_ZNSt10unique_ptrIA_N3igl17FastWindingNumber10HDK_Sample13UT_SolidAngleIffE7BoxDataESt14default_deleteIS6_EED2Ev.exit.i.i.i.i, label %_ZNKSt14default_deleteIA_N3igl17FastWindingNumber10HDK_Sample13UT_SolidAngleIffE7BoxDataEEclIS5_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS6_EE5valueEvE4typeEPSA_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_N3igl17FastWindingNumber10HDK_Sample13UT_SolidAngleIffE7BoxDataEEclIS5_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS6_EE5valueEvE4typeEPSA_.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIN3igl17FastWindingNumber14UT_FixedVectorIfLx3ELb0EEESaIS3_EED2Ev.exit.i.i.i
  call void @_ZdaPv(ptr noundef nonnull %i.sy) #32
  br label %_ZNSt10unique_ptrIA_N3igl17FastWindingNumber10HDK_Sample13UT_SolidAngleIffE7BoxDataESt14default_deleteIS6_EED2Ev.exit.i.i.i.i

_ZNSt10unique_ptrIA_N3igl17FastWindingNumber10HDK_Sample13UT_SolidAngleIffE7BoxDataESt14default_deleteIS6_EED2Ev.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIA_N3igl17FastWindingNumber10HDK_Sample13UT_SolidAngleIffE7BoxDataEEclIS5_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS6_EE5valueEvE4typeEPSA_.exit.i.i.i.i.i, %_ZNSt6vectorIN3igl17FastWindingNumber14UT_FixedVectorIfLx3ELb0EEESaIS3_EED2Ev.exit.i.i.i
  %i.sz = load ptr, ptr %36, align 8, !tbaa !203  ; 2 uses
  %.not.i.i.i2.i.i.i = icmp eq ptr %i.sz, null
  br i1 %.not.i.i.i2.i.i.i, label %_ZN3igl20FastWindingNumberBVHD2Ev.exit.i.i, label %_ZNK3igl17FastWindingNumber10HDK_Sample2UT3BVHILj4EE11FreeDeleterclEPNS4_4NodeE.exit.i.i.i.i.i.i

_ZNK3igl17FastWindingNumber10HDK_Sample2UT3BVHILj4EE11FreeDeleterclEPNS4_4NodeE.exit.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIA_N3igl17FastWindingNumber10HDK_Sample13UT_SolidAngleIffE7BoxDataESt14default_deleteIS6_EED2Ev.exit.i.i.i.i
  call void @free(ptr noundef nonnull %i.sz) #28
  br label %_ZN3igl20FastWindingNumberBVHD2Ev.exit.i.i

_ZN3igl20FastWindingNumberBVHD2Ev.exit.i.i:       ; preds = %_ZNK3igl17FastWindingNumber10HDK_Sample2UT3BVHILj4EE11FreeDeleterclEPNS4_4NodeE.exit.i.i.i.i.i.i, %_ZNSt10unique_ptrIA_N3igl17FastWindingNumber10HDK_Sample13UT_SolidAngleIffE7BoxDataESt14default_deleteIS6_EED2Ev.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #28
  call void @_ZN3igl17WindingNumberTreeIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(228) dereferenceable(228) %35) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #28
  %i.ta = load ptr, ptr %34, align 8, !tbaa !29
  call void @free(ptr noundef %i.ta) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  %i.tb = load ptr, ptr %33, align 8, !tbaa !204
  call void @free(ptr noundef %i.tb) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  %i.tc = load ptr, ptr %32, align 8, !tbaa !206
  call void @free(ptr noundef %i.tc) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #28
  %i.td = load ptr, ptr %31, align 8, !tbaa !206
  call void @free(ptr noundef %i.td) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #28
  %i.te = load ptr, ptr %30, align 8, !tbaa !206
  call void @free(ptr noundef %i.te) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #28
  invoke void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE5clearEv(ptr noundef nonnull align 8 dereferenceable(76) %29)
          to label %_ZN12_GLOBAL__N_117signed_distance_3IN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_NS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEES3_S3_EEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EEN3igl18SignedDistanceTypeENSC_6ScalarESM_RNS1_15PlainObjectBaseIT2_EERNSN_IT3_EERNSN_IT4_EERNSN_IT5_EE.exit.i unwind label %bb.by, !inline_history !208

bb.by:                                            ; preds = %_ZN3igl20FastWindingNumberBVHD2Ev.exit.i.i
  %i.tf = landingpad { ptr, i32 }
          catch ptr null
  %i.tg = extractvalue { ptr, i32 } %i.tf, 0
  call void @__clang_call_terminate(ptr %i.tg) #33, !inline_history !208
  unreachable

bb.bz:                                            ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i67.i.i, %bb.al, %bb.aj, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  %i.th = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body74.i.i

.loopexit.split-lp.i.i:                           ; preds = %bb.am
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body74.i.i

.body74.i.i:                                      ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i, %.body.i.i.i.i
  %eh.lpad-body75.i.i = phi { ptr, i32 } [ %.pn.pn.i.i.i.i, %.body.i.i.i.i ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #28
  br label %bb.ca

bb.ca:                                            ; preds = %.body74.i.i, %bb.bz
  %.pn48.i.i = phi { ptr, i32 } [ %eh.lpad-body75.i.i, %.body74.i.i ], [ %i.th, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.ca, %.body62.i.i, %bb.w, %bb.v
  %.pn48.pn.pn.i.i = phi { ptr, i32 } [ %i.iw, %bb.v ], [ %.pn48.i.i, %bb.ca ], [ %.pn.i.i, %.body62.i.i ], [ %i.iz, %bb.w ]
  call void @_ZN3igl20FastWindingNumberBVHD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %36) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #28
  call void @_ZN3igl17WindingNumberTreeIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(228) dereferenceable(228) %35) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #28
  %i.ti = load ptr, ptr %34, align 8, !tbaa !29
  call void @free(ptr noundef %i.ti) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  %i.tj = load ptr, ptr %33, align 8, !tbaa !204
  call void @free(ptr noundef %i.tj) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  %i.tk = load ptr, ptr %32, align 8, !tbaa !206
  call void @free(ptr noundef %i.tk) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #28
  %i.tl = load ptr, ptr %31, align 8, !tbaa !206
  call void @free(ptr noundef %i.tl) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #28
  %i.tm = load ptr, ptr %30, align 8, !tbaa !206
  call void @free(ptr noundef %i.tm) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #28
  br label %bb.cb

bb.cb:                                            ; preds = %.body.i.i, %bb.m
  %.pn48.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn48.pn.pn.i.i, %.body.i.i ], [ %i.cy, %bb.m ]
  invoke void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE5clearEv(ptr noundef nonnull align 8 dereferenceable(76) %29)
          to label %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EED2Ev.exit77.i.i unwind label %bb.cc, !inline_history !208

bb.cc:                                            ; preds = %bb.cb
  %i.tn = landingpad { ptr, i32 }
          catch ptr null
  %i.to = extractvalue { ptr, i32 } %i.tn, 0
  call void @__clang_call_terminate(ptr %i.to) #33, !inline_history !208
  unreachable

common.resume.i:                                  ; preds = %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EED2Ev.exit87.i.i, %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EED2Ev.exit77.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %.pn48.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i, %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EED2Ev.exit77.i.i ], [ %.pn67.pn.pn.pn.pn.pn.pn.pn.pn.i.i, %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EED2Ev.exit87.i.i ]
  resume { ptr, i32 } %common.resume.op.i

_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EED2Ev.exit77.i.i: ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #28
  br label %common.resume.i

_ZN12_GLOBAL__N_117signed_distance_3IN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_NS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEES3_S3_EEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EEN3igl18SignedDistanceTypeENSC_6ScalarESM_RNS1_15PlainObjectBaseIT2_EERNSN_IT3_EERNSN_IT4_EERNSN_IT5_EE.exit.i: ; preds = %_ZN3igl20FastWindingNumberBVHD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantEllRKd.exit34

bb.cd:                                            ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %3, ptr %i.a, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  %i.tp = getelementptr inbounds nuw i8, ptr %18, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %18, i8 0, i64 24, i1 false)
  store <2 x double> splat (double f0x7FEFFFFFFFFFFFFF), ptr %i.tp, align 16, !tbaa !20
  %i.tq = getelementptr inbounds nuw i8, ptr %18, i64 48
  store <2 x double> splat (double f0xFFEFFFFFFFFFFFFF), ptr %i.tq, align 16, !tbaa !20
  %i.tr = getelementptr inbounds nuw i8, ptr %18, i64 64
  store i32 -1, ptr %i.tr, align 16, !tbaa !209
  invoke void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE4initINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EE(ptr noundef nonnull align 16 dereferenceable(68) %18, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.ce unwind label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  %cond.i.i = icmp eq i32 %3, 0
  br i1 %cond.i.i, label %bb.cg, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i23.i

bb.cf:                                            ; preds = %bb.cd
  %i.ts = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

bb.cg:                                            ; preds = %bb.ce
  %i.tt = load i64, ptr %i.g, align 8, !tbaa !9
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi2ELi0ELin1ELi2EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %19, i64 noundef %i.tt, i64 noundef 2)
          to label %bb.ch unwind label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  %i.tu = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.tv = load i64, ptr %i.tu, align 8, !tbaa !14 ; 3 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  %i.tx = load i64, ptr %i.tw, align 8, !tbaa !217
  %.not.i.i.i.i.i.i.i.i.i117.i = icmp eq i64 %i.tx, %i.tv
  br i1 %.not.i.i.i.i.i.i.i.i.i117.i, label %bb.ci, label %thread-pre-split.i.i.i.i.i.i.i.i.i

thread-pre-split.i.i.i.i.i.i.i.i.i:               ; preds = %bb.ch
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi2ELi0ELin1ELi2EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %20, i64 noundef %i.tv, i64 noundef 2)
          to label %.noexc.i118.i unwind label %bb.ck

.noexc.i118.i:                                    ; preds = %thread-pre-split.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i.i.i = load i64, ptr %i.tw, align 8, !tbaa !217
  br label %bb.ci

bb.ci:                                            ; preds = %.noexc.i118.i, %bb.ch
  %i.ty = phi i64 [ %.pr.i.i.i.i.i.i.i.i.i, %.noexc.i118.i ], [ %i.tv, %bb.ch ] ; 2 uses
  %i.tz = icmp sgt i64 %i.ty, 0
  br i1 %i.tz, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i120.i, label %_ZN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEENS0_IdLin1ELin1ELi0ELin1ELin1EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit.i.i

.lr.ph.i.i.i.i.i.i.i.i.preheader.i120.i:          ; preds = %bb.ci
  %i.ua = load ptr, ptr %20, align 8, !tbaa !219
  %i.ub = shl i64 %i.ty, 4
  call void @llvm.memset.p0.i64(ptr align 16 %i.ua, i8 0, i64 %i.ub, i1 false), !tbaa !110
  br label %_ZN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEENS0_IdLin1ELin1ELi0ELin1ELin1EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit.i.i

_ZN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEENS0_IdLin1ELin1ELi0ELin1ELin1EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader.i120.i, %bb.ci
  %i.uc = load i64, ptr %i.g, align 8, !tbaa !9   ; 3 uses
  %i.ud = icmp sgt i64 %i.uc, 0
  br i1 %i.ud, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEENS0_IdLin1ELin1ELi0ELin1ELin1EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit.i.i
  %i.ue = load ptr, ptr %2, align 8, !tbaa !107
  %i.uf = load ptr, ptr %1, align 8, !tbaa !34    ; 2 uses
  %i.ug = load i64, ptr %i.tu, align 8, !tbaa !14 ; 2 uses
  %i.uh = load ptr, ptr %19, align 8, !tbaa !219
  %i.ui = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.uj = load i64, ptr %i.ui, align 8, !tbaa !217
  %i.uk = load ptr, ptr %20, align 8, !tbaa !219, !noalias !220 ; 2 uses
  %i.ul = load i64, ptr %i.tw, align 8, !tbaa !217 ; 2 uses
  br label %bb.cl

bb.cj:                                            ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i119.i, %bb.cp, %bb.cg
  %i.um = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

bb.ck:                                            ; preds = %thread-pre-split.i.i.i.i.i.i.i.i.i
  %i.un = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

bb.cl:                                            ; preds = %bb.cn, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.cn ] ; 3 uses
  %i.uo = getelementptr [4 x i8], ptr %i.ue, i64 %indvars.iv.i.i ; 2 uses
  %i.up = getelementptr [4 x i8], ptr %i.uo, i64 %i.uc
  %i.uq = load i32, ptr %i.up, align 4, !tbaa !30
  %i.ur = sext i32 %i.uq to i64                   ; 2 uses
  %i.us = getelementptr [8 x i8], ptr %i.uf, i64 %i.ur ; 2 uses
  %i.ut = getelementptr [8 x i8], ptr %i.us, i64 %i.ug
  %i.uu = load double, ptr %i.ut, align 8, !tbaa !20
  %i.uv = load i32, ptr %i.uo, align 4, !tbaa !30
  %i.uw = sext i32 %i.uv to i64                   ; 2 uses
  %i.ux = getelementptr [8 x i8], ptr %i.uf, i64 %i.uw ; 2 uses
  %i.uy = getelementptr [8 x i8], ptr %i.ux, i64 %i.ug
  %i.uz = load double, ptr %i.uy, align 8, !tbaa !20
  %i.va = getelementptr [8 x i8], ptr %i.uh, i64 %indvars.iv.i.i ; 6 uses
  %i.vb = fsub double %i.uu, %i.uz
  store double %i.vb, ptr %i.va, align 8, !tbaa !20
  %i.vc = load double, ptr %i.us, align 8, !tbaa !20
  %i.vd = load double, ptr %i.ux, align 8, !tbaa !20
  %i.ve = getelementptr [8 x i8], ptr %i.va, i64 %i.uj ; 5 uses
  %i.vf = fsub double %i.vc, %i.vd                ; 3 uses
  %i.vg = fneg double %i.vf
  store double %i.vg, ptr %i.ve, align 8, !tbaa !20
  %i.vh = load double, ptr %i.va, align 8, !tbaa !20 ; 4 uses
  %i.vi = fmul double %i.vh, %i.vh
  %i.vj = fmul double %i.vf, %i.vf
  %i.vk = fadd double %i.vj, %i.vi                ; 2 uses
  %i.vl = fcmp ogt double %i.vk, 0.000000e+00
  br i1 %i.vl, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %.scalar.i.i.i = call double @llvm.sqrt.f64(double %i.vk) ; 2 uses
  %i.vm = fdiv double %i.vh, %.scalar.i.i.i
  store double %i.vm, ptr %i.va, align 8, !tbaa !20
  %i.vn = load double, ptr %i.ve, align 8, !tbaa !20
  %i.vo = fdiv double %i.vn, %.scalar.i.i.i
  store double %i.vo, ptr %i.ve, align 8, !tbaa !20
  %.pre.i.i = load double, ptr %i.va, align 8, !tbaa !20
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.vp = phi double [ %.pre.i.i, %bb.cm ], [ %i.vh, %bb.cl ]
  %i.vq = getelementptr inbounds [8 x i8], ptr %i.uk, i64 %i.ur ; 3 uses
  %i.vr = load double, ptr %i.vq, align 8, !tbaa !20
  %i.vs = fadd double %i.vp, %i.vr
  store double %i.vs, ptr %i.vq, align 8, !tbaa !20
  %i.vt = getelementptr inbounds [8 x i8], ptr %i.vq, i64 %i.ul ; 2 uses
  %i.vu = load double, ptr %i.ve, align 8, !tbaa !20
  %i.vv = load double, ptr %i.vt, align 8, !tbaa !20
  %i.vw = fadd double %i.vu, %i.vv
  store double %i.vw, ptr %i.vt, align 8, !tbaa !20
  %i.vx = getelementptr inbounds [8 x i8], ptr %i.uk, i64 %i.uw ; 3 uses
  %i.vy = load double, ptr %i.va, align 8, !tbaa !20
  %i.vz = load double, ptr %i.vx, align 8, !tbaa !20
  %i.wa = fadd double %i.vy, %i.vz
  store double %i.wa, ptr %i.vx, align 8, !tbaa !20
  %i.wb = getelementptr inbounds [8 x i8], ptr %i.vx, i64 %i.ul ; 2 uses
  %i.wc = load double, ptr %i.ve, align 8, !tbaa !20
  %i.wd = load double, ptr %i.wb, align 8, !tbaa !20
  %i.we = fadd double %i.wc, %i.wd
  store double %i.we, ptr %i.wb, align 8, !tbaa !20
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.uc
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.cl, !llvm.loop !223

._crit_edge.i.i:                                  ; preds = %bb.cn, %_ZN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEENS0_IdLin1ELin1ELi0ELin1ELin1EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  store ptr %20, ptr %17, align 8, !tbaa !224, !alias.scope !226
  %i.wf = getelementptr inbounds nuw i8, ptr %17, i64 24
  store ptr %20, ptr %i.wf, align 8, !tbaa !224, !alias.scope !226
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  invoke void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELi2ELi0ELin1ELi2EEENS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKS3_KNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEES7_EENS0_10member_sumIddEELi1EEEEELi1ELi2EEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(65) %17, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.co unwind label %bb.cq

bb.co:                                            ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  %i.wg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.wh = load i64, ptr %i.wg, align 8, !tbaa !14 ; 3 uses
  %i.wi = icmp sgt i64 %i.wh, 4611686018427387903
  br i1 %i.wi, label %bb.cp, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i119.i

bb.cp:                                            ; preds = %bb.co
  %i.wj = call ptr @__cxa_allocate_exception(i64 8) #28 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.wj, align 8, !tbaa !32
  invoke void @__cxa_throw(ptr nonnull %i.wj, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
          to label %.noexc78.i.i unwind label %bb.cj

.noexc78.i.i:                                     ; preds = %bb.cp
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i119.i: ; preds = %bb.co
  %i.wk = shl nsw i64 %i.wh, 1
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %i.wk, i64 noundef %i.wh, i64 noundef 2)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i23.i unwind label %bb.cj

bb.cq:                                            ; preds = %._crit_edge.i.i
  %i.wl = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i23.i: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i119.i, %bb.ce
  %i.wm = call noundef double @llvm.fabs.f64(double %4) ; 2 uses
  %i.wn = call noundef double @llvm.fabs.f64(double %5) ; 2 uses
  %i.wo = fcmp olt double %i.wm, %i.wn
  %.sroa.speculated89.i.i = select i1 %i.wo, double %i.wn, double %i.wm ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.wp = call double @pow(double noundef %.sroa.speculated89.i.i, double noundef 2.000000e+00) #28
  store double %i.wp, ptr %i.b, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.wq = fsub double %4, %5
  %i.wr = fadd double %i.wq, %.sroa.speculated89.i.i ; 2 uses
  %i.ws = fcmp olt double %i.wr, 0.000000e+00
  %.sroa.speculated.i24.i = select i1 %i.ws, double 0.000000e+00, double %i.wr
  %i.wt = call double @pow(double noundef %.sroa.speculated.i24.i, double noundef 2.000000e+00) #28
  store double %i.wt, ptr %i.c, align 8, !tbaa !20
  %i.wu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.wv = load i64, ptr %i.wu, align 8, !tbaa !14
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %i.wv, i64 noundef 1)
          to label %bb.cr unwind label %bb.ef

bb.cr:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i23.i
  %i.ww = load i64, ptr %i.wu, align 8, !tbaa !14
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef %i.ww, i64 noundef 1)
          to label %bb.cs unwind label %bb.ef

bb.cs:                                            ; preds = %bb.cr
  %i.wx = load i64, ptr %i.wu, align 8, !tbaa !14 ; 3 uses
  %i.wy = icmp sgt i64 %i.wx, 4611686018427387903
  br i1 %i.wy, label %bb.ct, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i81.i.i

bb.ct:                                            ; preds = %bb.cs
  %i.wz = call ptr @__cxa_allocate_exception(i64 8) #28 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.wz, align 8, !tbaa !32
  invoke void @__cxa_throw(ptr nonnull %i.wz, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
          to label %.noexc82.i.i unwind label %bb.ef

.noexc82.i.i:                                     ; preds = %bb.ct
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i81.i.i: ; preds = %bb.cs
  %i.xa = shl nsw i64 %i.wx, 1
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %i.xa, i64 noundef %i.wx, i64 noundef 2)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit84.i.i unwind label %bb.ef

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit84.i.i: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i81.i.i
  %i.xb = load i64, ptr %i.wu, align 8, !tbaa !14 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #28
  store ptr %0, ptr %21, align 8, !tbaa !127
  %i.xc = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr %18, ptr %i.xc, align 8, !tbaa !231
  %i.xd = getelementptr inbounds nuw i8, ptr %21, i64 16
  store ptr %1, ptr %i.xd, align 8, !tbaa !127
  %i.xe = getelementptr inbounds nuw i8, ptr %21, i64 24
  store ptr %2, ptr %i.xe, align 8, !tbaa !130
  %i.xf = getelementptr inbounds nuw i8, ptr %21, i64 32
  store ptr %i.c, ptr %i.xf, align 8, !tbaa !132
  %i.xg = getelementptr inbounds nuw i8, ptr %21, i64 40
  store ptr %i.b, ptr %i.xg, align 8, !tbaa !132
  %i.xh = getelementptr inbounds nuw i8, ptr %21, i64 48
  store ptr %6, ptr %i.xh, align 8, !tbaa !133
  %i.xi = getelementptr inbounds nuw i8, ptr %21, i64 56
  store ptr %7, ptr %i.xi, align 8, !tbaa !135
  %i.xj = getelementptr inbounds nuw i8, ptr %21, i64 64
  store ptr %8, ptr %i.xj, align 8, !tbaa !137
  %i.xk = getelementptr inbounds nuw i8, ptr %21, i64 72
  store ptr %i.a, ptr %i.xk, align 8, !tbaa !139
  %i.xl = getelementptr inbounds nuw i8, ptr %21, i64 80
  store ptr %19, ptr %i.xl, align 8, !tbaa !224
  %i.xm = getelementptr inbounds nuw i8, ptr %21, i64 88
  store ptr %20, ptr %i.xm, align 8, !tbaa !224
end_hunk_0
