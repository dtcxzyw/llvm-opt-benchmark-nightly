Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/signed_distance?download=true
inline.NumInlined: 7373
inline.NumDeleted: 3590
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZN3igl15signed_distanceIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_NS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEES3_S3_EEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EENS_18SignedDistanceTypeENSC_6ScalarESL_RNS1_15PlainObjectBaseIT2_EERNSM_IT3_EERNSM_IT4_EERNSM_IT5_EE:bb.a

bb.bw:                                            ; preds = %.loopexit88.i.i
  %i.rl = getelementptr inbounds nuw i8, ptr %36, i64 104
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !182
  %i.rn = ptrtoint ptr %i.rm to i64
  %i.ro = ptrtoint ptr %i.rk to i64
  %i.rp = sub i64 %i.rn, %i.ro
  call void @_ZdlPvm(ptr noundef nonnull %i.rk, i64 noundef %i.rp) #32
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i:              ; preds = %bb.bw, %.loopexit88.i.i
  %i.rq = getelementptr inbounds nuw i8, ptr %36, i64 64
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !184 ; 3 uses
  %.not.i.i.i1.i.i.i = icmp eq ptr %i.rr, null
  br i1 %.not.i.i.i1.i.i.i, label %_ZNSt6vectorIN3igl17FastWindingNumber14UT_FixedVectorIfLx3ELb0EEESaIS3_EED2Ev.exit.i.i.i, label %bb.bx

bb.bx:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i
  %i.rs = getelementptr inbounds nuw i8, ptr %36, i64 80
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !185
  %i.ru = ptrtoint ptr %i.rt to i64
  %i.rv = ptrtoint ptr %i.rr to i64
  %i.rw = sub i64 %i.ru, %i.rv
  call void @_ZdlPvm(ptr noundef nonnull %i.rr, i64 noundef %i.rw) #32
  br label %_ZNSt6vectorIN3igl17FastWindingNumber14UT_FixedVectorIfLx3ELb0EEESaIS3_EED2Ev.exit.i.i.i

_ZNSt6vectorIN3igl17FastWindingNumber14UT_FixedVectorIfLx3ELb0EEESaIS3_EED2Ev.exit.i.i.i: ; preds = %bb.bx, %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i
  %i.rx = load ptr, ptr %i.ct, align 8, !tbaa !186 ; 2 uses
  %.not.i.i.i76.i.i = icmp eq ptr %i.rx, null
  br i1 %.not.i.i.i76.i.i, label %_ZNSt10unique_ptrIA_N3igl17FastWindingNumber10HDK_Sample13UT_SolidAngleIffE7BoxDataESt14default_deleteIS6_EED2Ev.exit.i.i.i.i, label %_ZNKSt14default_deleteIA_N3igl17FastWindingNumber10HDK_Sample13UT_SolidAngleIffE7BoxDataEEclIS5_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS6_EE5valueEvE4typeEPSA_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_N3igl17FastWindingNumber10HDK_Sample13UT_SolidAngleIffE7BoxDataEEclIS5_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS6_EE5valueEvE4typeEPSA_.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIN3igl17FastWindingNumber14UT_FixedVectorIfLx3ELb0EEESaIS3_EED2Ev.exit.i.i.i
  call void @_ZdaPv(ptr noundef nonnull %i.rx) #32
  br label %_ZNSt10unique_ptrIA_N3igl17FastWindingNumber10HDK_Sample13UT_SolidAngleIffE7BoxDataESt14default_deleteIS6_EED2Ev.exit.i.i.i.i

_ZNSt10unique_ptrIA_N3igl17FastWindingNumber10HDK_Sample13UT_SolidAngleIffE7BoxDataESt14default_deleteIS6_EED2Ev.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIA_N3igl17FastWindingNumber10HDK_Sample13UT_SolidAngleIffE7BoxDataEEclIS5_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS6_EE5valueEvE4typeEPSA_.exit.i.i.i.i.i, %_ZNSt6vectorIN3igl17FastWindingNumber14UT_FixedVectorIfLx3ELb0EEESaIS3_EED2Ev.exit.i.i.i
  %i.ry = load ptr, ptr %36, align 8, !tbaa !187  ; 2 uses
  %.not.i.i.i2.i.i.i = icmp eq ptr %i.ry, null
  br i1 %.not.i.i.i2.i.i.i, label %_ZN3igl20FastWindingNumberBVHD2Ev.exit.i.i, label %_ZNK3igl17FastWindingNumber10HDK_Sample2UT3BVHILj4EE11FreeDeleterclEPNS4_4NodeE.exit.i.i.i.i.i.i

_ZNK3igl17FastWindingNumber10HDK_Sample2UT3BVHILj4EE11FreeDeleterclEPNS4_4NodeE.exit.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIA_N3igl17FastWindingNumber10HDK_Sample13UT_SolidAngleIffE7BoxDataESt14default_deleteIS6_EED2Ev.exit.i.i.i.i
  call void @free(ptr noundef nonnull %i.ry) #28
  br label %_ZN3igl20FastWindingNumberBVHD2Ev.exit.i.i

_ZN3igl20FastWindingNumberBVHD2Ev.exit.i.i:       ; preds = %_ZNK3igl17FastWindingNumber10HDK_Sample2UT3BVHILj4EE11FreeDeleterclEPNS4_4NodeE.exit.i.i.i.i.i.i, %_ZNSt10unique_ptrIA_N3igl17FastWindingNumber10HDK_Sample13UT_SolidAngleIffE7BoxDataESt14default_deleteIS6_EED2Ev.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #28
  call void @_ZN3igl17WindingNumberTreeIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(228) dereferenceable(228) %35) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #28
  %i.rz = load ptr, ptr %34, align 8, !tbaa !58
  call void @free(ptr noundef %i.rz) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  %i.sa = load ptr, ptr %33, align 8, !tbaa !189
  call void @free(ptr noundef %i.sa) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  %i.sb = load ptr, ptr %32, align 8, !tbaa !191
  call void @free(ptr noundef %i.sb) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #28
  %i.sc = load ptr, ptr %31, align 8, !tbaa !191
  call void @free(ptr noundef %i.sc) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #28
  %i.sd = load ptr, ptr %30, align 8, !tbaa !191
  call void @free(ptr noundef %i.sd) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #28
  invoke void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE5clearEv(ptr noundef nonnull align 8 dereferenceable(76) %29)
          to label %_ZN12_GLOBAL__N_117signed_distance_3IN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_NS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEES3_S3_EEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EEN3igl18SignedDistanceTypeENSC_6ScalarESM_RNS1_15PlainObjectBaseIT2_EERNSN_IT3_EERNSN_IT4_EERNSN_IT5_EE.exit.i unwind label %bb.by, !inline_history !6

bb.by:                                            ; preds = %_ZN3igl20FastWindingNumberBVHD2Ev.exit.i.i
  %i.se = landingpad { ptr, i32 }
          catch ptr null
  %i.sf = extractvalue { ptr, i32 } %i.se, 0
  call void @__clang_call_terminate(ptr %i.sf) #33, !inline_history !6
  unreachable

bb.bz:                                            ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i67.i.i, %bb.al, %bb.aj, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  %i.sg = landingpad { ptr, i32 }
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
  %.pn48.i.i = phi { ptr, i32 } [ %eh.lpad-body75.i.i, %.body74.i.i ], [ %i.sg, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.ca, %.body62.i.i, %bb.w, %bb.v
  %.pn48.pn.pn.i.i = phi { ptr, i32 } [ %i.iw, %bb.v ], [ %.pn48.i.i, %bb.ca ], [ %.pn.i.i, %.body62.i.i ], [ %i.iz, %bb.w ]
  call void @_ZN3igl20FastWindingNumberBVHD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %36) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #28
  call void @_ZN3igl17WindingNumberTreeIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(228) dereferenceable(228) %35) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #28
  %i.sh = load ptr, ptr %34, align 8, !tbaa !58
  call void @free(ptr noundef %i.sh) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  %i.si = load ptr, ptr %33, align 8, !tbaa !189
  call void @free(ptr noundef %i.si) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  %i.sj = load ptr, ptr %32, align 8, !tbaa !191
  call void @free(ptr noundef %i.sj) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #28
  %i.sk = load ptr, ptr %31, align 8, !tbaa !191
  call void @free(ptr noundef %i.sk) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #28
  %i.sl = load ptr, ptr %30, align 8, !tbaa !191
  call void @free(ptr noundef %i.sl) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #28
  br label %bb.cb

bb.cb:                                            ; preds = %.body.i.i, %bb.m
  %.pn48.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn48.pn.pn.i.i, %.body.i.i ], [ %i.cy, %bb.m ]
  invoke void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE5clearEv(ptr noundef nonnull align 8 dereferenceable(76) %29)
          to label %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EED2Ev.exit77.i.i unwind label %bb.cc, !inline_history !6

bb.cc:                                            ; preds = %bb.cb
  %i.sm = landingpad { ptr, i32 }
          catch ptr null
  %i.sn = extractvalue { ptr, i32 } %i.sm, 0
  call void @__clang_call_terminate(ptr %i.sn) #33, !inline_history !6
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
  store i32 %3, ptr %i.a, align 4, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  %i.so = getelementptr inbounds nuw i8, ptr %18, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %18, i8 0, i64 24, i1 false)
  store <2 x double> splat (double f0x7FEFFFFFFFFFFFFF), ptr %i.so, align 16, !tbaa !52
  %i.sp = getelementptr inbounds nuw i8, ptr %18, i64 48
  store <2 x double> splat (double f0xFFEFFFFFFFFFFFFF), ptr %i.sp, align 16, !tbaa !52
  %i.sq = getelementptr inbounds nuw i8, ptr %18, i64 64
  store i32 -1, ptr %i.sq, align 16, !tbaa !199
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
  %i.sr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

bb.cg:                                            ; preds = %bb.ce
  %i.ss = load i64, ptr %i.g, align 8, !tbaa !44
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi2ELi0ELin1ELi2EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %19, i64 noundef %i.ss, i64 noundef 2)
          to label %bb.ch unwind label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  %i.st = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.su = load i64, ptr %i.st, align 8, !tbaa !47 ; 3 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  %i.sw = load i64, ptr %i.sv, align 8, !tbaa !201
  %.not.i.i.i.i.i.i.i.i.i117.i = icmp eq i64 %i.sw, %i.su
  br i1 %.not.i.i.i.i.i.i.i.i.i117.i, label %bb.ci, label %thread-pre-split.i.i.i.i.i.i.i.i.i

thread-pre-split.i.i.i.i.i.i.i.i.i:               ; preds = %bb.ch
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi2ELi0ELin1ELi2EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %20, i64 noundef %i.su, i64 noundef 2)
          to label %.noexc.i118.i unwind label %bb.ck

.noexc.i118.i:                                    ; preds = %thread-pre-split.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i.i.i = load i64, ptr %i.sv, align 8, !tbaa !201
  br label %bb.ci

bb.ci:                                            ; preds = %.noexc.i118.i, %bb.ch
  %i.sx = phi i64 [ %.pr.i.i.i.i.i.i.i.i.i, %.noexc.i118.i ], [ %i.su, %bb.ch ] ; 2 uses
  %i.sy = icmp sgt i64 %i.sx, 0
  br i1 %i.sy, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i120.i, label %_ZN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEENS0_IdLin1ELin1ELi0ELin1ELin1EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit.i.i

.lr.ph.i.i.i.i.i.i.i.i.preheader.i120.i:          ; preds = %bb.ci
  %39 = shl nuw i64 %i.sx, 1
  %i.sz = load ptr, ptr %20, align 8, !tbaa !202
  %smax.i.i = call i64 @llvm.smax.i64(i64 %39, i64 2)
  %i.ta = shl i64 %smax.i.i, 3
  call void @llvm.memset.p0.i64(ptr align 16 %i.sz, i8 0, i64 %i.ta, i1 false), !tbaa !133
  br label %_ZN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEENS0_IdLin1ELin1ELi0ELin1ELin1EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit.i.i

_ZN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEENS0_IdLin1ELin1ELi0ELin1ELin1EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader.i120.i, %bb.ci
  %i.tb = load i64, ptr %i.g, align 8, !tbaa !44  ; 3 uses
  %i.tc = icmp sgt i64 %i.tb, 0
  br i1 %i.tc, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEENS0_IdLin1ELin1ELi0ELin1ELin1EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit.i.i
  %i.td = load ptr, ptr %2, align 8, !tbaa !132
  %i.te = load ptr, ptr %1, align 8, !tbaa !63    ; 2 uses
  %i.tf = load i64, ptr %i.st, align 8, !tbaa !47 ; 2 uses
  %i.tg = load ptr, ptr %19, align 8, !tbaa !202
  %i.th = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ti = load i64, ptr %i.th, align 8, !tbaa !201
  %i.tj = load ptr, ptr %20, align 8, !tbaa !202, !noalias !400 ; 2 uses
  %i.tk = load i64, ptr %i.sv, align 8, !tbaa !201 ; 2 uses
  br label %bb.cl

bb.cj:                                            ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i119.i, %bb.cp, %bb.cg
  %i.tl = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

bb.ck:                                            ; preds = %thread-pre-split.i.i.i.i.i.i.i.i.i
  %i.tm = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

bb.cl:                                            ; preds = %bb.cn, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.cn ] ; 3 uses
  %i.tn = getelementptr [4 x i8], ptr %i.td, i64 %indvars.iv.i.i ; 2 uses
  %i.to = getelementptr [4 x i8], ptr %i.tn, i64 %i.tb
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !59
  %i.tq = sext i32 %i.tp to i64                   ; 2 uses
  %i.tr = getelementptr [8 x i8], ptr %i.te, i64 %i.tq ; 2 uses
  %i.ts = getelementptr [8 x i8], ptr %i.tr, i64 %i.tf
  %i.tt = load double, ptr %i.ts, align 8, !tbaa !52
  %i.tu = load i32, ptr %i.tn, align 4, !tbaa !59
  %i.tv = sext i32 %i.tu to i64                   ; 2 uses
  %i.tw = getelementptr [8 x i8], ptr %i.te, i64 %i.tv ; 2 uses
  %i.tx = getelementptr [8 x i8], ptr %i.tw, i64 %i.tf
  %i.ty = load double, ptr %i.tx, align 8, !tbaa !52
  %i.tz = getelementptr [8 x i8], ptr %i.tg, i64 %indvars.iv.i.i ; 6 uses
  %i.ua = fsub double %i.tt, %i.ty
  store double %i.ua, ptr %i.tz, align 8, !tbaa !52
  %i.ub = load double, ptr %i.tr, align 8, !tbaa !52
  %i.uc = load double, ptr %i.tw, align 8, !tbaa !52
  %i.ud = getelementptr [8 x i8], ptr %i.tz, i64 %i.ti ; 5 uses
  %i.ue = fsub double %i.ub, %i.uc                ; 3 uses
  %i.uf = fneg double %i.ue
  store double %i.uf, ptr %i.ud, align 8, !tbaa !52
  %i.ug = load double, ptr %i.tz, align 8, !tbaa !52 ; 4 uses
  %i.uh = fmul double %i.ug, %i.ug
  %i.ui = fmul double %i.ue, %i.ue
  %i.uj = fadd double %i.ui, %i.uh                ; 2 uses
  %i.uk = fcmp ogt double %i.uj, 0.000000e+00
  br i1 %i.uk, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %.scalar.i.i.i = call double @llvm.sqrt.f64(double %i.uj) ; 2 uses
  %i.ul = fdiv double %i.ug, %.scalar.i.i.i
  store double %i.ul, ptr %i.tz, align 8, !tbaa !52
  %i.um = load double, ptr %i.ud, align 8, !tbaa !52
  %i.un = fdiv double %i.um, %.scalar.i.i.i
  store double %i.un, ptr %i.ud, align 8, !tbaa !52
  %.pre.i.i = load double, ptr %i.tz, align 8, !tbaa !52
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.uo = phi double [ %.pre.i.i, %bb.cm ], [ %i.ug, %bb.cl ]
  %i.up = getelementptr inbounds [8 x i8], ptr %i.tj, i64 %i.tq ; 3 uses
  %i.uq = load double, ptr %i.up, align 8, !tbaa !52
  %i.ur = fadd double %i.uo, %i.uq
  store double %i.ur, ptr %i.up, align 8, !tbaa !52
  %i.us = getelementptr inbounds [8 x i8], ptr %i.up, i64 %i.tk ; 2 uses
  %i.ut = load double, ptr %i.ud, align 8, !tbaa !52
  %i.uu = load double, ptr %i.us, align 8, !tbaa !52
  %i.uv = fadd double %i.ut, %i.uu
  store double %i.uv, ptr %i.us, align 8, !tbaa !52
  %i.uw = getelementptr inbounds [8 x i8], ptr %i.tj, i64 %i.tv ; 3 uses
  %i.ux = load double, ptr %i.tz, align 8, !tbaa !52
  %i.uy = load double, ptr %i.uw, align 8, !tbaa !52
  %i.uz = fadd double %i.ux, %i.uy
  store double %i.uz, ptr %i.uw, align 8, !tbaa !52
  %i.va = getelementptr inbounds [8 x i8], ptr %i.uw, i64 %i.tk ; 2 uses
  %i.vb = load double, ptr %i.ud, align 8, !tbaa !52
  %i.vc = load double, ptr %i.va, align 8, !tbaa !52
  %i.vd = fadd double %i.vb, %i.vc
  store double %i.vd, ptr %i.va, align 8, !tbaa !52
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.tb
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.cl, !llvm.loop !378

._crit_edge.i.i:                                  ; preds = %bb.cn, %_ZN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEENS0_IdLin1ELin1ELi0ELin1ELin1EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  store ptr %20, ptr %17, align 8, !tbaa !204, !alias.scope !401
  %i.ve = getelementptr inbounds nuw i8, ptr %17, i64 24
  store ptr %20, ptr %i.ve, align 8, !tbaa !204, !alias.scope !401
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  invoke void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELi2ELi0ELin1ELi2EEENS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKS3_KNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEES7_EENS0_10member_sumIddEELi1EEEEELi1ELi2EEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(65) %17, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.co unwind label %bb.cq

bb.co:                                            ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  %i.vf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.vg = load i64, ptr %i.vf, align 8, !tbaa !47 ; 3 uses
  %i.vh = icmp sgt i64 %i.vg, 4611686018427387903
  br i1 %i.vh, label %bb.cp, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i119.i

bb.cp:                                            ; preds = %bb.co
  %i.vi = call ptr @__cxa_allocate_exception(i64 8) #28 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.vi, align 8, !tbaa !62
  invoke void @__cxa_throw(ptr nonnull %i.vi, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
          to label %.noexc78.i.i unwind label %bb.cj

.noexc78.i.i:                                     ; preds = %bb.cp
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i119.i: ; preds = %bb.co
  %i.vj = shl nsw i64 %i.vg, 1
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %i.vj, i64 noundef %i.vg, i64 noundef 2)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i23.i unwind label %bb.cj

bb.cq:                                            ; preds = %._crit_edge.i.i
  %i.vk = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i23.i: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i119.i, %bb.ce
  %i.vl = call noundef double @llvm.fabs.f64(double %4) ; 2 uses
  %i.vm = call noundef double @llvm.fabs.f64(double %5) ; 2 uses
  %i.vn = fcmp olt double %i.vl, %i.vm
  %.sroa.speculated89.i.i = select i1 %i.vn, double %i.vm, double %i.vl ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.vo = call double @pow(double noundef %.sroa.speculated89.i.i, double noundef 2.000000e+00) #28
  store double %i.vo, ptr %i.b, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.vp = fsub double %4, %5
  %i.vq = fadd double %i.vp, %.sroa.speculated89.i.i ; 2 uses
  %i.vr = fcmp olt double %i.vq, 0.000000e+00
  %.sroa.speculated.i24.i = select i1 %i.vr, double 0.000000e+00, double %i.vq
  %i.vs = call double @pow(double noundef %.sroa.speculated.i24.i, double noundef 2.000000e+00) #28
  store double %i.vs, ptr %i.c, align 8, !tbaa !52
  %i.vt = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.vu = load i64, ptr %i.vt, align 8, !tbaa !47
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %i.vu, i64 noundef 1)
          to label %bb.cr unwind label %bb.ef

bb.cr:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i23.i
  %i.vv = load i64, ptr %i.vt, align 8, !tbaa !47
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef %i.vv, i64 noundef 1)
          to label %bb.cs unwind label %bb.ef

bb.cs:                                            ; preds = %bb.cr
  %i.vw = load i64, ptr %i.vt, align 8, !tbaa !47 ; 3 uses
  %i.vx = icmp sgt i64 %i.vw, 4611686018427387903
  br i1 %i.vx, label %bb.ct, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i81.i.i

bb.ct:                                            ; preds = %bb.cs
  %i.vy = call ptr @__cxa_allocate_exception(i64 8) #28 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.vy, align 8, !tbaa !62
  invoke void @__cxa_throw(ptr nonnull %i.vy, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
          to label %.noexc82.i.i unwind label %bb.ef

.noexc82.i.i:                                     ; preds = %bb.ct
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i81.i.i: ; preds = %bb.cs
  %i.vz = shl nsw i64 %i.vw, 1
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %i.vz, i64 noundef %i.vw, i64 noundef 2)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit84.i.i unwind label %bb.ef

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit84.i.i: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i81.i.i
  %i.wa = load i64, ptr %i.vt, align 8, !tbaa !47 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #28
  store ptr %0, ptr %21, align 8, !tbaa !143
  %i.wb = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr %18, ptr %i.wb, align 8, !tbaa !402
  %i.wc = getelementptr inbounds nuw i8, ptr %21, i64 16
  store ptr %1, ptr %i.wc, align 8, !tbaa !143
  %i.wd = getelementptr inbounds nuw i8, ptr %21, i64 24
  store ptr %2, ptr %i.wd, align 8, !tbaa !146
  %i.we = getelementptr inbounds nuw i8, ptr %21, i64 32
  store ptr %i.c, ptr %i.we, align 8, !tbaa !147
  %i.wf = getelementptr inbounds nuw i8, ptr %21, i64 40
  store ptr %i.b, ptr %i.wf, align 8, !tbaa !147
  %i.wg = getelementptr inbounds nuw i8, ptr %21, i64 48
  store ptr %6, ptr %i.wg, align 8, !tbaa !149
  %i.wh = getelementptr inbounds nuw i8, ptr %21, i64 56
  store ptr %7, ptr %i.wh, align 8, !tbaa !151
  %i.wi = getelementptr inbounds nuw i8, ptr %21, i64 64
  store ptr %8, ptr %i.wi, align 8, !tbaa !153
  %i.wj = getelementptr inbounds nuw i8, ptr %21, i64 72
  store ptr %i.a, ptr %i.wj, align 8, !tbaa !154
  %i.wk = getelementptr inbounds nuw i8, ptr %21, i64 80
  store ptr %19, ptr %i.wk, align 8, !tbaa !204
  %i.wl = getelementptr inbounds nuw i8, ptr %21, i64 88
  store ptr %20, ptr %i.wl, align 8, !tbaa !204
end_hunk_0
