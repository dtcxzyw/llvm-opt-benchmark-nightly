Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/OpOptimizers?download=true
inline.NumInlined: 568
inline.NumDeleted: 188
begin_hunk_0_@_ZN16OpenColorIO_v2_510OpRcPtrVec8optimizeENS_17OptimizationFlagsE:bb.a
bb.cu:                                            ; preds = %bb.ct
  %i.py = add nsw i32 %i.pp, -1
  store i32 %i.py, ptr %i.pm, align 8, !tbaa !20
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.cv:                                            ; preds = %bb.ct
  %i.pz = atomicrmw volatile add ptr %i.pm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cv, %bb.cu
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.pp, %bb.cu ], [ %i.pz, %bb.cv ]
  %i.qa = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.qa, label %bb.cw, label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i.i.i.i.i, !prof !26

bb.cw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.pl) #14
  br label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.cw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.cs, %.lr.ph.i.i.i.i.i.i
  %i.qb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i173 = icmp eq ptr %i.qb, %i.pj
  br i1 %.not.i.i.i.i.i.i173, label %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i.i.i.i.i
  store ptr %i.pi, ptr %i.mu, align 8, !tbaa !32
  %.pre.i174 = load ptr, ptr %0, align 8, !tbaa !33
  br label %_ZN16OpenColorIO_v2_510OpRcPtrVec5clearEv.exit.i

_ZN16OpenColorIO_v2_510OpRcPtrVec5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i, %.lr.ph.i171
  %i.qc = phi ptr [ %i.ph, %.lr.ph.i171 ], [ %.pre.i174, %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #14
  %i.qd = getelementptr inbounds nuw [16 x i8], ptr %i.qc, i64 %indvars.iv.i ; 2 uses
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !17 ; 3 uses
  store ptr %i.qe, ptr %30, align 8, !tbaa !35
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qd, i64 8
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !18 ; 3 uses
  store ptr %i.qg, ptr %i.mv, align 8, !tbaa !18
  %.not.i.i.i21.i = icmp eq ptr %i.qg, null
  br i1 %.not.i.i.i21.i, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_52OpEEC2IS1_vEERKS_IT_E.exit.i176, label %bb.cx

bb.cx:                                            ; preds = %_ZN16OpenColorIO_v2_510OpRcPtrVec5clearEv.exit.i
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 8 ; 3 uses
  %i.qi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i175 = icmp eq i8 %i.qi, 0
  br i1 %.not.i.i.i.i.i175, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.qj = load i32, ptr %i.qh, align 4, !tbaa !20
  %i.qk = add nsw i32 %i.qj, 1
  store i32 %i.qk, ptr %i.qh, align 4, !tbaa !20
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_52OpEEC2IS1_vEERKS_IT_E.exit.i176

bb.cz:                                            ; preds = %bb.cx
  %i.ql = atomicrmw volatile add ptr %i.qh, i32 1 acq_rel, align 4 ; 0 uses
  %.pre42.i = load ptr, ptr %30, align 8, !tbaa !35
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_52OpEEC2IS1_vEERKS_IT_E.exit.i176

_ZNSt10shared_ptrIKN16OpenColorIO_v2_52OpEEC2IS1_vEERKS_IT_E.exit.i176: ; preds = %bb.cz, %bb.cy, %_ZN16OpenColorIO_v2_510OpRcPtrVec5clearEv.exit.i
  %i.qm = phi ptr [ %i.qe, %_ZN16OpenColorIO_v2_510OpRcPtrVec5clearEv.exit.i ], [ %i.qe, %bb.cy ], [ %.pre42.i, %bb.cz ]
  invoke void @_ZNK16OpenColorIO_v2_52Op21getSimplerReplacementERNS_10OpRcPtrVecE(ptr noundef nonnull align 8 dereferenceable(24) %i.qm, ptr noundef nonnull align 8 dereferenceable(144) %29)
          to label %bb.da unwind label %bb.df

bb.da:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_52OpEEC2IS1_vEERKS_IT_E.exit.i176
  %i.qn = load ptr, ptr %29, align 8, !tbaa !12   ; 2 uses
  %i.qo = load ptr, ptr %i.mu, align 8, !tbaa !12 ; 2 uses
  %i.qp = icmp eq ptr %i.qn, %i.qo
  br i1 %i.qp, label %bb.di, label %bb.db

bb.db:                                            ; preds = %bb.da
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_111FinalizeOpsERNS_10OpRcPtrVecE(ptr %i.qn, ptr %i.qo)
          to label %bb.dc unwind label %bb.df

bb.dc:                                            ; preds = %bb.db
  %i.qq = load ptr, ptr %0, align 8, !tbaa !12
  %i.qr = getelementptr inbounds nuw [16 x i8], ptr %i.qq, i64 %indvars.iv.i ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 16
  %i.qt = invoke ptr @_ZN16OpenColorIO_v2_510OpRcPtrVec5eraseEN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrINS_2OpEESt6vectorIS5_SaIS5_EEEESB_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr %i.qr, ptr nonnull %i.qs)
          to label %bb.dd unwind label %bb.dg     ; 0 uses

bb.dd:                                            ; preds = %bb.dc
  %i.qu = load ptr, ptr %0, align 8, !tbaa !12
  %i.qv = getelementptr inbounds nuw [16 x i8], ptr %i.qu, i64 %indvars.iv.i
  %i.qw = load ptr, ptr %29, align 8, !tbaa !12
  %i.qx = load ptr, ptr %i.mu, align 8, !tbaa !12
  invoke void @_ZN16OpenColorIO_v2_510OpRcPtrVec6insertEN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrINS_2OpEESt6vectorIS5_SaIS5_EEEESB_SB_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr %i.qv, ptr %i.qw, ptr %i.qx)
          to label %bb.de unwind label %bb.dh

bb.de:                                            ; preds = %bb.dd
  %i.qy = add nsw i32 %.040.i, 1
  br label %bb.di

bb.df:                                            ; preds = %bb.db, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_52OpEEC2IS1_vEERKS_IT_E.exit.i176
  %i.qz = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.dg:                                            ; preds = %bb.dc
  %i.ra = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.dh:                                            ; preds = %bb.dd
  %i.rb = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.di:                                            ; preds = %bb.de, %bb.da
  %.1.i178 = phi i32 [ %.040.i, %bb.da ], [ %i.qy, %bb.de ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.rc = load ptr, ptr %i.mv, align 8, !tbaa !18 ; 8 uses
  %.not.i.i.i179 = icmp eq ptr %i.rc, null
  br i1 %.not.i.i.i179, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i182, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 8 ; 4 uses
  %i.re = load atomic i64, ptr %i.rd acquire, align 8 ; 2 uses
  %i.rf = icmp eq i64 %i.re, 4294967297
  %i.rg = trunc i64 %i.re to i32                  ; 2 uses
  br i1 %i.rf, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  store i32 0, ptr %i.rd, align 8, !tbaa !24
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rc, i64 12
  store i32 0, ptr %i.rh, align 4, !tbaa !25
  %i.ri = load ptr, ptr %i.rc, align 8, !tbaa !22
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 16
  %i.rk = load ptr, ptr %i.rj, align 8
  call void %i.rk(ptr noundef nonnull align 8 dereferenceable(16) %i.rc) #14, !inline_history !96
  %i.rl = load ptr, ptr %i.rc, align 8, !tbaa !22
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 24
  %i.rn = load ptr, ptr %i.rm, align 8
  call void %i.rn(ptr noundef nonnull align 8 dereferenceable(16) %i.rc) #14, !inline_history !96
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i182

bb.dl:                                            ; preds = %bb.dj
  %i.ro = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i22.i = icmp eq i8 %i.ro, 0
  br i1 %.not.i.i.i22.i, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.rp = add nsw i32 %i.rg, -1
  store i32 %i.rp, ptr %i.rd, align 8, !tbaa !20
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i180

bb.dn:                                            ; preds = %bb.dl
  %i.rq = atomicrmw volatile add ptr %i.rd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i180

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i180: ; preds = %bb.dn, %bb.dm
  %.0.i.i.i.i.i181 = phi i32 [ %i.rg, %bb.dm ], [ %i.rq, %bb.dn ]
  %i.rr = icmp eq i32 %.0.i.i.i.i.i181, 1
  br i1 %i.rr, label %bb.do, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i182, !prof !26

bb.do:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i180
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.rc) #14
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i182

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i182: ; preds = %bb.do, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i180, %bb.dk, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #14
  %i.rs = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.rt = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.ru = ptrtoint ptr %i.rs to i64
  %i.rv = ptrtoint ptr %i.rt to i64
  %i.rw = sub i64 %i.ru, %i.rv
  %sext.i = shl i64 %i.rw, 28
  %i.rx = ashr i64 %sext.i, 32
  %i.ry = icmp slt i64 %indvars.iv.next.i, %i.rx
  br i1 %i.ry, label %.lr.ph.i171, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110ReplaceOpsERNS_10OpRcPtrVecE.exit, !llvm.loop !97

bb.dp:                                            ; preds = %bb.dh, %bb.dg, %bb.df
  %.pn.i177 = phi { ptr, i32 } [ %i.rb, %bb.dh ], [ %i.ra, %bb.dg ], [ %i.qz, %bb.df ]
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %30) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #14
  call void @_ZN16OpenColorIO_v2_510OpRcPtrVecD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %29) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #14
  br label %common.resume

_ZN16OpenColorIO_v2_512_GLOBAL__N_110ReplaceOpsERNS_10OpRcPtrVecE.exit: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i182, %bb.cq
  %.0.lcssa.i170 = phi i32 [ 0, %bb.cq ], [ %.1.i178, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i182 ]
  call void @_ZN16OpenColorIO_v2_510OpRcPtrVecD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %29) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #14
  br label %bb.dq

bb.dq:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_111RemoveNoOpsERNS_10OpRcPtrVecE.exit, %_ZN16OpenColorIO_v2_512_GLOBAL__N_110ReplaceOpsERNS_10OpRcPtrVecE.exit
  %i.rz = phi i32 [ %.0.lcssa.i170, %_ZN16OpenColorIO_v2_512_GLOBAL__N_110ReplaceOpsERNS_10OpRcPtrVecE.exit ], [ 0, %_ZN16OpenColorIO_v2_512_GLOBAL__N_111RemoveNoOpsERNS_10OpRcPtrVecE.exit ]
  %.pre893 = load ptr, ptr %i.b, align 8, !tbaa !32 ; 3 uses
  %.pre895 = load ptr, ptr %0, align 8, !tbaa !33 ; 3 uses
  %.not51.i = icmp eq ptr %.pre893, %.pre895
  %or.cond = select i1 %or.cond.not.i, i1 true, i1 %.not51.i
  br i1 %or.cond, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_118ReplaceIdentityOpsERNS_10OpRcPtrVecENS_17OptimizationFlagsE.exit, label %.lr.ph.i183

.lr.ph.i183:                                      ; preds = %bb.dq
  %i.sa = ptrtoint ptr %.pre893 to i64
  %i.sb = ptrtoint ptr %.pre895 to i64
  %i.sc = sub i64 %i.sa, %i.sb
  %i.sd = ashr exact i64 %i.sc, 4
  br label %bb.dr

bb.dr:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i195, %.lr.ph.i183
  %.02750.i = phi i64 [ 0, %.lr.ph.i183 ], [ %i.wo, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i195 ] ; 3 uses
  %.02849.i = phi i32 [ 0, %.lr.ph.i183 ], [ %.129.i, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i195 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #14
  %i.se = load ptr, ptr %0, align 8, !tbaa !33
  %i.sf = getelementptr inbounds nuw [16 x i8], ptr %i.se, i64 %.02750.i ; 2 uses
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !17 ; 3 uses
  store ptr %i.sg, ptr %26, align 8, !tbaa !35
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sf, i64 8
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !18 ; 3 uses
  store ptr %i.si, ptr %i.na, align 8, !tbaa !18
  %.not.i.i.i.i184 = icmp eq ptr %i.si, null
  br i1 %.not.i.i.i.i184, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_52OpEEC2IS1_vEERKS_IT_E.exit.i186, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 8 ; 3 uses
  %i.sk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i185 = icmp eq i8 %i.sk, 0
  br i1 %.not.i.i.i.i.i185, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.sl = load i32, ptr %i.sj, align 4, !tbaa !20
  %i.sm = add nsw i32 %i.sl, 1
  store i32 %i.sm, ptr %i.sj, align 4, !tbaa !20
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_52OpEEC2IS1_vEERKS_IT_E.exit.i186

bb.du:                                            ; preds = %bb.ds
  %i.sn = atomicrmw volatile add ptr %i.sj, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i209 = load ptr, ptr %26, align 8, !tbaa !35
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_52OpEEC2IS1_vEERKS_IT_E.exit.i186

_ZNSt10shared_ptrIKN16OpenColorIO_v2_52OpEEC2IS1_vEERKS_IT_E.exit.i186: ; preds = %bb.du, %bb.dt, %bb.dr
  %i.so = phi ptr [ %i.sg, %bb.dr ], [ %i.sg, %bb.dt ], [ %.pre.i209, %bb.du ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !208)
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !209)
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !38, !noalias !210 ; 3 uses
  store ptr %i.sq, ptr %27, align 8, !tbaa !40, !alias.scope !210
  %i.sr = getelementptr inbounds nuw i8, ptr %i.so, i64 16
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !18, !noalias !210 ; 3 uses
  store ptr %i.ss, ptr %i.nb, align 8, !tbaa !18, !alias.scope !210
  %.not.i.i.i.i.i.i187 = icmp eq ptr %i.ss, null
  br i1 %.not.i.i.i.i.i.i187, label %_ZNK16OpenColorIO_v2_52Op4dataEv.exit.i189, label %bb.dv

bb.dv:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_52OpEEC2IS1_vEERKS_IT_E.exit.i186
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 8 ; 3 uses
  %i.su = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19, !noalias !210
  %.not.i.i.i.i.i.i.i188 = icmp eq i8 %i.su, 0
  br i1 %.not.i.i.i.i.i.i.i188, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.sv = load i32, ptr %i.st, align 4, !tbaa !20, !noalias !210
  %i.sw = add nsw i32 %i.sv, 1
  store i32 %i.sw, ptr %i.st, align 4, !tbaa !20, !noalias !210
  br label %_ZNK16OpenColorIO_v2_52Op4dataEv.exit.i189

bb.dx:                                            ; preds = %bb.dv
  %i.sx = atomicrmw volatile add ptr %i.st, i32 1 acq_rel, align 4, !noalias !210 ; 0 uses
  %.pre52.i = load ptr, ptr %27, align 8, !tbaa !40
  br label %_ZNK16OpenColorIO_v2_52Op4dataEv.exit.i189

_ZNK16OpenColorIO_v2_52Op4dataEv.exit.i189:       ; preds = %bb.dx, %bb.dw, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_52OpEEC2IS1_vEERKS_IT_E.exit.i186
  %i.sy = phi ptr [ %i.sq, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_52OpEEC2IS1_vEERKS_IT_E.exit.i186 ], [ %i.sq, %bb.dw ], [ %.pre52.i, %bb.dx ] ; 2 uses
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !22
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 24
  %i.tb = load ptr, ptr %i.ta, align 8
  %i.tc = invoke noundef i32 %i.tb(ptr noundef nonnull align 8 dereferenceable(168) %i.sy)
          to label %bb.dy unwind label %bb.fb     ; 3 uses

bb.dy:                                            ; preds = %_ZNK16OpenColorIO_v2_52Op4dataEv.exit.i189
  %i.td = load ptr, ptr %i.nb, align 8, !tbaa !18 ; 8 uses
  %.not.i.i.i190 = icmp eq ptr %i.td, null
  br i1 %.not.i.i.i190, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i193, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 8 ; 4 uses
  %i.tf = load atomic i64, ptr %i.te acquire, align 8 ; 2 uses
  %i.tg = icmp eq i64 %i.tf, 4294967297
  %i.th = trunc i64 %i.tf to i32                  ; 2 uses
  br i1 %i.tg, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  store i32 0, ptr %i.te, align 8, !tbaa !24
  %i.ti = getelementptr inbounds nuw i8, ptr %i.td, i64 12
  store i32 0, ptr %i.ti, align 4, !tbaa !25
  %i.tj = load ptr, ptr %i.td, align 8, !tbaa !22
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 16
  %i.tl = load ptr, ptr %i.tk, align 8
  call void %i.tl(ptr noundef nonnull align 8 dereferenceable(16) %i.td) #14, !inline_history !102
  %i.tm = load ptr, ptr %i.td, align 8, !tbaa !22
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 24
  %i.to = load ptr, ptr %i.tn, align 8
  call void %i.to(ptr noundef nonnull align 8 dereferenceable(16) %i.td) #14, !inline_history !102
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i193

bb.eb:                                            ; preds = %bb.dz
  %i.tp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i34.i = icmp eq i8 %i.tp, 0
  br i1 %.not.i.i.i34.i, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.tq = add nsw i32 %i.th, -1
  store i32 %i.tq, ptr %i.te, align 8, !tbaa !20
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i191

bb.ed:                                            ; preds = %bb.eb
  %i.tr = atomicrmw volatile add ptr %i.te, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i191

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i191: ; preds = %bb.ed, %bb.ec
  %.0.i.i.i.i.i192 = phi i32 [ %i.th, %bb.ec ], [ %i.tr, %bb.ed ]
  %i.ts = icmp eq i32 %.0.i.i.i.i.i192, 1
  br i1 %i.ts, label %bb.ee, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i193, !prof !26

bb.ee:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i191
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.td) #14
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i193

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i193: ; preds = %bb.ee, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i191, %bb.ea, %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #14
  %.not.i194 = icmp eq i32 %i.tc, 13
  br i1 %.not.i194, label %bb.fg, label %bb.ef

bb.ef:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i193
  %45 = icmp eq i32 %i.tc, 4
  %or.cond3.i = and i1 %i.my, %45
  %46 = icmp ne i32 %i.tc, 4
  %or.cond5.i = and i1 %46, %i.mw
  %or.cond33.i = or i1 %or.cond3.i, %or.cond5.i
  br i1 %or.cond33.i, label %bb.eg, label %bb.fg

bb.eg:                                            ; preds = %bb.ef
  %i.tt = load ptr, ptr %26, align 8, !tbaa !35   ; 3 uses
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !22
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 48
  %i.tw = load ptr, ptr %i.tv, align 8
  %i.tx = invoke noundef zeroext i1 %i.tw(ptr noundef nonnull align 8 dereferenceable(24) %i.tt)
          to label %bb.eh unwind label %bb.fc

bb.eh:                                            ; preds = %bb.eg
  br i1 %i.tx, label %bb.ei, label %bb.fg

bb.ei:                                            ; preds = %bb.eh
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #14
  invoke void @_ZNK16OpenColorIO_v2_52Op22getIdentityReplacementEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %28, ptr noundef nonnull align 8 dereferenceable(24) %i.tt)
          to label %bb.ej unwind label %bb.fd

bb.ej:                                            ; preds = %bb.ei
  %i.ty = load ptr, ptr %28, align 8, !tbaa !17   ; 2 uses
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !22
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 104
  %i.ub = load ptr, ptr %i.ua, align 8
  invoke void %i.ub(ptr noundef nonnull align 8 dereferenceable(24) %i.ty)
          to label %bb.ek unwind label %bb.fe

bb.ek:                                            ; preds = %bb.ej
  %i.uc = load ptr, ptr %0, align 8, !tbaa !33
  %i.ud = getelementptr inbounds nuw [16 x i8], ptr %i.uc, i64 %.02750.i ; 2 uses
  %i.ue = load ptr, ptr %28, align 8, !tbaa !17
  store ptr %i.ue, ptr %i.ud, align 8, !tbaa !17
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ud, i64 8 ; 3 uses
  %i.ug = load ptr, ptr %i.nc, align 8, !tbaa !18 ; 5 uses
  %i.uh = load ptr, ptr %i.uf, align 8, !tbaa !18 ; 3 uses
  %.not.i.i.i35.i = icmp eq ptr %i.ug, %i.uh
  br i1 %.not.i.i.i35.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEaSERKS2_.exit.i206, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %.not7.i.i.i.i198 = icmp eq ptr %i.ug, null
  br i1 %.not7.i.i.i.i198, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i199, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ug, i64 8 ; 3 uses
  %i.uj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i36.i = icmp eq i8 %i.uj, 0
  br i1 %.not.i.i.i.i36.i, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.uk = load i32, ptr %i.ui, align 4, !tbaa !20
  %i.ul = add nsw i32 %i.uk, 1
  store i32 %i.ul, ptr %i.ui, align 4, !tbaa !20
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i199

bb.eo:                                            ; preds = %bb.em
  %i.um = atomicrmw volatile add ptr %i.ui, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i208 = load ptr, ptr %i.uf, align 8, !tbaa !18
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i199

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i199: ; preds = %bb.eo, %bb.en, %bb.el
  %i.un = phi ptr [ %i.uh, %bb.el ], [ %i.uh, %bb.en ], [ %.pr.pre.i.i.i.i208, %bb.eo ] ; 8 uses
  %.not8.i.i.i.i200 = icmp eq ptr %i.un, null
  br i1 %.not8.i.i.i.i200, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i204, label %bb.ep

bb.ep:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i199
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 8 ; 4 uses
  %i.up = load atomic i64, ptr %i.uo acquire, align 8 ; 2 uses
  %i.uq = icmp eq i64 %i.up, 4294967297
  %i.ur = trunc i64 %i.up to i32                  ; 2 uses
  br i1 %i.uq, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  store i32 0, ptr %i.uo, align 8, !tbaa !24
  %i.us = getelementptr inbounds nuw i8, ptr %i.un, i64 12
  store i32 0, ptr %i.us, align 4, !tbaa !25
  %i.ut = load ptr, ptr %i.un, align 8, !tbaa !22
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 16
  %i.uv = load ptr, ptr %i.uu, align 8
  call void %i.uv(ptr noundef nonnull align 8 dereferenceable(16) %i.un) #14, !inline_history !103
  %i.uw = load ptr, ptr %i.un, align 8, !tbaa !22
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 24
  %i.uy = load ptr, ptr %i.ux, align 8
  call void %i.uy(ptr noundef nonnull align 8 dereferenceable(16) %i.un) #14, !inline_history !103
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i204

bb.er:                                            ; preds = %bb.ep
  %i.uz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i9.i.i.i.i201 = icmp eq i8 %i.uz, 0
  br i1 %.not.i9.i.i.i.i201, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.va = add nsw i32 %i.ur, -1
  store i32 %i.va, ptr %i.uo, align 8, !tbaa !20
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i202

bb.et:                                            ; preds = %bb.er
  %i.vb = atomicrmw volatile add ptr %i.uo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i202

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i202: ; preds = %bb.et, %bb.es
  %.0.i.i.i.i.i.i203 = phi i32 [ %i.ur, %bb.es ], [ %i.vb, %bb.et ]
  %i.vc = icmp eq i32 %.0.i.i.i.i.i.i203, 1
  br i1 %i.vc, label %bb.eu, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i204, !prof !26

bb.eu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i202
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.un) #14
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i204

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i204: ; preds = %bb.eu, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i202, %bb.eq, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i199
  store ptr %i.ug, ptr %i.uf, align 8, !tbaa !18
  %.pr.i205 = load ptr, ptr %i.nc, align 8, !tbaa !18
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEaSERKS2_.exit.i206

_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEaSERKS2_.exit.i206: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i204, %bb.ek
  %i.vd = phi ptr [ %i.ug, %bb.ek ], [ %.pr.i205, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i204 ] ; 8 uses
  %i.ve = add nsw i32 %.02849.i, 1
  %.not.i.i37.i = icmp eq ptr %i.vd, null
  br i1 %.not.i.i37.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i207, label %bb.ev

bb.ev:                                            ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEaSERKS2_.exit.i206
  %i.vf = getelementptr inbounds nuw i8, ptr %i.vd, i64 8 ; 4 uses
  %i.vg = load atomic i64, ptr %i.vf acquire, align 8 ; 2 uses
  %i.vh = icmp eq i64 %i.vg, 4294967297
  %i.vi = trunc i64 %i.vg to i32                  ; 2 uses
  br i1 %i.vh, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  store i32 0, ptr %i.vf, align 8, !tbaa !24
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vd, i64 12
  store i32 0, ptr %i.vj, align 4, !tbaa !25
  %i.vk = load ptr, ptr %i.vd, align 8, !tbaa !22
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 16
  %i.vm = load ptr, ptr %i.vl, align 8
  call void %i.vm(ptr noundef nonnull align 8 dereferenceable(16) %i.vd) #14, !inline_history !104
  %i.vn = load ptr, ptr %i.vd, align 8, !tbaa !22
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 24
  %i.vp = load ptr, ptr %i.vo, align 8
  call void %i.vp(ptr noundef nonnull align 8 dereferenceable(16) %i.vd) #14, !inline_history !104
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i207

bb.ex:                                            ; preds = %bb.ev
  %i.vq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i38.i = icmp eq i8 %i.vq, 0
  br i1 %.not.i.i.i38.i, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.vr = add nsw i32 %i.vi, -1
  store i32 %i.vr, ptr %i.vf, align 8, !tbaa !20
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39.i

bb.ez:                                            ; preds = %bb.ex
  %i.vs = atomicrmw volatile add ptr %i.vf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39.i: ; preds = %bb.ez, %bb.ey
  %.0.i.i.i.i40.i = phi i32 [ %i.vi, %bb.ey ], [ %i.vs, %bb.ez ]
  %i.vt = icmp eq i32 %.0.i.i.i.i40.i, 1
  br i1 %i.vt, label %bb.fa, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i207, !prof !26

bb.fa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.vd) #14
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i207

_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i207: ; preds = %bb.fa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39.i, %bb.ew, %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEaSERKS2_.exit.i206
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #14
  br label %bb.fg

bb.fb:                                            ; preds = %_ZNK16OpenColorIO_v2_52Op4dataEv.exit.i189
  %i.vu = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %27) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #14
  br label %bb.fn

bb.fc:                                            ; preds = %bb.eg
  %i.vv = landingpad { ptr, i32 }
          cleanup
  br label %bb.fn

bb.fd:                                            ; preds = %bb.ei
  %i.vw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ff

bb.fe:                                            ; preds = %bb.ej
  %i.vx = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %28) #14
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd
  %.pn.i197 = phi { ptr, i32 } [ %i.vx, %bb.fe ], [ %i.vw, %bb.fd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #14
  br label %bb.fn

bb.fg:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i207, %bb.eh, %bb.ef, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i193
  %.129.i = phi i32 [ %i.ve, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i207 ], [ %.02849.i, %bb.eh ], [ %.02849.i, %bb.ef ], [ %.02849.i, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i193 ] ; 2 uses
  %i.vy = load ptr, ptr %i.na, align 8, !tbaa !18 ; 8 uses
  %.not.i.i41.i = icmp eq ptr %i.vy, null
  br i1 %.not.i.i41.i, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i195, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 8 ; 4 uses
  %i.wa = load atomic i64, ptr %i.vz acquire, align 8 ; 2 uses
  %i.wb = icmp eq i64 %i.wa, 4294967297
  %i.wc = trunc i64 %i.wa to i32                  ; 2 uses
  br i1 %i.wb, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  store i32 0, ptr %i.vz, align 8, !tbaa !24
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vy, i64 12
  store i32 0, ptr %i.wd, align 4, !tbaa !25
  %i.we = load ptr, ptr %i.vy, align 8, !tbaa !22
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 16
  %i.wg = load ptr, ptr %i.wf, align 8
  call void %i.wg(ptr noundef nonnull align 8 dereferenceable(16) %i.vy) #14, !inline_history !105
  %i.wh = load ptr, ptr %i.vy, align 8, !tbaa !22
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 24
  %i.wj = load ptr, ptr %i.wi, align 8
  call void %i.wj(ptr noundef nonnull align 8 dereferenceable(16) %i.vy) #14, !inline_history !105
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i195

bb.fj:                                            ; preds = %bb.fh
  %i.wk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i42.i = icmp eq i8 %i.wk, 0
  br i1 %.not.i.i.i42.i, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.wl = add nsw i32 %i.wc, -1
  store i32 %i.wl, ptr %i.vz, align 8, !tbaa !20
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i43.i

bb.fl:                                            ; preds = %bb.fj
  %i.wm = atomicrmw volatile add ptr %i.vz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i43.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i43.i: ; preds = %bb.fl, %bb.fk
  %.0.i.i.i.i44.i = phi i32 [ %i.wc, %bb.fk ], [ %i.wm, %bb.fl ]
  %i.wn = icmp eq i32 %.0.i.i.i.i44.i, 1
  br i1 %i.wn, label %bb.fm, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i195, !prof !26

bb.fm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i43.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.vy) #14
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i195

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i195: ; preds = %bb.fm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i43.i, %bb.fi, %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #14
  %i.wo = add nuw i64 %.02750.i, 1                ; 2 uses
  %exitcond.not.i196 = icmp eq i64 %i.wo, %i.sd
  br i1 %exitcond.not.i196, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_118ReplaceIdentityOpsERNS_10OpRcPtrVecENS_17OptimizationFlagsE.exit.loopexit, label %bb.dr, !llvm.loop !106

bb.fn:                                            ; preds = %bb.ff, %bb.fc, %bb.fb
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i197, %bb.ff ], [ %i.vv, %bb.fc ], [ %i.vu, %bb.fb ]
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %26) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #14
  br label %common.resume

_ZN16OpenColorIO_v2_512_GLOBAL__N_118ReplaceIdentityOpsERNS_10OpRcPtrVecENS_17OptimizationFlagsE.exit.loopexit: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i195
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !32
  %.pre894 = load ptr, ptr %0, align 8, !tbaa !33
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_118ReplaceIdentityOpsERNS_10OpRcPtrVecENS_17OptimizationFlagsE.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_118ReplaceIdentityOpsERNS_10OpRcPtrVecENS_17OptimizationFlagsE.exit: ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_118ReplaceIdentityOpsERNS_10OpRcPtrVecENS_17OptimizationFlagsE.exit.loopexit, %bb.dq
  %i.wp = phi ptr [ %.pre895, %bb.dq ], [ %.pre894, %_ZN16OpenColorIO_v2_512_GLOBAL__N_118ReplaceIdentityOpsERNS_10OpRcPtrVecENS_17OptimizationFlagsE.exit.loopexit ] ; 2 uses
  %i.wq = phi ptr [ %.pre893, %bb.dq ], [ %.pre, %_ZN16OpenColorIO_v2_512_GLOBAL__N_118ReplaceIdentityOpsERNS_10OpRcPtrVecENS_17OptimizationFlagsE.exit.loopexit ]
  %.2.i = phi i32 [ 0, %bb.dq ], [ %.129.i, %_ZN16OpenColorIO_v2_512_GLOBAL__N_118ReplaceIdentityOpsERNS_10OpRcPtrVecENS_17OptimizationFlagsE.exit.loopexit ] ; 2 uses
  %i.wr = ptrtoint ptr %i.wq to i64
  %i.ws = ptrtoint ptr %i.wp to i64
  %i.wt = sub i64 %i.wr, %i.ws
  %i.wu = lshr exact i64 %i.wt, 4
  %i.wv = trunc i64 %i.wu to i32
  %i.ww = icmp sgt i32 %i.wv, 1
  br i1 %i.ww, label %.lr.ph.i211, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116RemoveInverseOpsERNS_10OpRcPtrVecENS_17OptimizationFlagsE.exit

.lr.ph.i211:                                      ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_118ReplaceIdentityOpsERNS_10OpRcPtrVecENS_17OptimizationFlagsE.exit, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit141.i
  %i.wx = phi ptr [ %i.ame, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit141.i ], [ %i.wp, %_ZN16OpenColorIO_v2_512_GLOBAL__N_118ReplaceIdentityOpsERNS_10OpRcPtrVecENS_17OptimizationFlagsE.exit ] ; 3 uses
  %.0191.i = phi i32 [ %.1.i224, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit141.i ], [ 0, %_ZN16OpenColorIO_v2_512_GLOBAL__N_118ReplaceIdentityOpsERNS_10OpRcPtrVecENS_17OptimizationFlagsE.exit ] ; 14 uses
  %.028190.i = phi i32 [ %.2.i223, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit141.i ], [ 0, %_ZN16OpenColorIO_v2_512_GLOBAL__N_118ReplaceIdentityOpsERNS_10OpRcPtrVecENS_17OptimizationFlagsE.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #14
  %i.wy = sext i32 %.028190.i to i64              ; 3 uses
  %i.wz = getelementptr inbounds nuw [16 x i8], ptr %i.wx, i64 %i.wy ; 2 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 8
  %i.xb = load ptr, ptr %i.xa, align 8, !tbaa !18 ; 2 uses
  %i.xc = load <2 x ptr>, ptr %i.wz, align 8, !tbaa !211
  store <2 x ptr> %i.xc, ptr %14, align 16, !tbaa !211
  %.not.i.i.i.i213 = icmp eq ptr %i.xb, null
  br i1 %.not.i.i.i.i213, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_52OpEEC2IS1_vEERKS_IT_E.exit.i215, label %bb.fo

bb.fo:                                            ; preds = %.lr.ph.i211
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xb, i64 8 ; 3 uses
  %i.xe = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i214 = icmp eq i8 %i.xe, 0
  br i1 %.not.i.i.i.i.i214, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.xf = load i32, ptr %i.xd, align 4, !tbaa !20
  %i.xg = add nsw i32 %i.xf, 1
  store i32 %i.xg, ptr %i.xd, align 4, !tbaa !20
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_52OpEEC2IS1_vEERKS_IT_E.exit.i215

bb.fq:                                            ; preds = %bb.fo
  %i.xh = atomicrmw volatile add ptr %i.xd, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i239 = load ptr, ptr %0, align 8, !tbaa !33
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_52OpEEC2IS1_vEERKS_IT_E.exit.i215

_ZNSt10shared_ptrIKN16OpenColorIO_v2_52OpEEC2IS1_vEERKS_IT_E.exit.i215: ; preds = %bb.fq, %bb.fp, %.lr.ph.i211
  %i.xi = phi ptr [ %i.wx, %.lr.ph.i211 ], [ %i.wx, %bb.fp ], [ %.pre.i239, %bb.fq ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #14
  %i.xj = add nsw i32 %.028190.i, 1               ; 15 uses
  %i.xk = sext i32 %i.xj to i64
  %i.xl = getelementptr inbounds nuw [16 x i8], ptr %i.xi, i64 %i.xk ; 2 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 8
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !18 ; 2 uses
  %i.xo = load <2 x ptr>, ptr %i.xl, align 8, !tbaa !211
  store <2 x ptr> %i.xo, ptr %15, align 16, !tbaa !211
  %.not.i.i.i47.i = icmp eq ptr %i.xn, null
  br i1 %.not.i.i.i47.i, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_52OpEEC2IS1_vEERKS_IT_E.exit49.i, label %bb.fr

bb.fr:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_52OpEEC2IS1_vEERKS_IT_E.exit.i215
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xn, i64 8 ; 3 uses
  %i.xq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i48.i = icmp eq i8 %i.xq, 0
  br i1 %.not.i.i.i.i48.i, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.xr = load i32, ptr %i.xp, align 4, !tbaa !20
  %i.xs = add nsw i32 %i.xr, 1
  store i32 %i.xs, ptr %i.xp, align 4, !tbaa !20
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_52OpEEC2IS1_vEERKS_IT_E.exit49.i

bb.ft:                                            ; preds = %bb.fr
  %i.xt = atomicrmw volatile add ptr %i.xp, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_52OpEEC2IS1_vEERKS_IT_E.exit49.i

_ZNSt10shared_ptrIKN16OpenColorIO_v2_52OpEEC2IS1_vEERKS_IT_E.exit49.i: ; preds = %bb.ft, %bb.fs, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_52OpEEC2IS1_vEERKS_IT_E.exit.i215
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #14
  %i.xu = load ptr, ptr %14, align 16, !tbaa !35  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !212)
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %i.xw = load ptr, ptr %i.xv, align 8, !tbaa !38, !noalias !214 ; 3 uses
  store ptr %i.xw, ptr %16, align 8, !tbaa !40, !alias.scope !214
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xu, i64 16
  %i.xy = load ptr, ptr %i.xx, align 8, !tbaa !18, !noalias !214 ; 3 uses
  store ptr %i.xy, ptr %i.nf, align 8, !tbaa !18, !alias.scope !214
  %.not.i.i.i.i.i.i216 = icmp eq ptr %i.xy, null
  br i1 %.not.i.i.i.i.i.i216, label %_ZNK16OpenColorIO_v2_52Op4dataEv.exit.i218, label %bb.fu

bb.fu:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_52OpEEC2IS1_vEERKS_IT_E.exit49.i
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 8 ; 3 uses
  %i.ya = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19, !noalias !214
  %.not.i.i.i.i.i.i.i217 = icmp eq i8 %i.ya, 0
  br i1 %.not.i.i.i.i.i.i.i217, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.yb = load i32, ptr %i.xz, align 4, !tbaa !20, !noalias !214
  %i.yc = add nsw i32 %i.yb, 1
  store i32 %i.yc, ptr %i.xz, align 4, !tbaa !20, !noalias !214
  br label %_ZNK16OpenColorIO_v2_52Op4dataEv.exit.i218

bb.fw:                                            ; preds = %bb.fu
  %i.yd = atomicrmw volatile add ptr %i.xz, i32 1 acq_rel, align 4, !noalias !214 ; 0 uses
  %.pre192.i = load ptr, ptr %16, align 8, !tbaa !40
  br label %_ZNK16OpenColorIO_v2_52Op4dataEv.exit.i218

_ZNK16OpenColorIO_v2_52Op4dataEv.exit.i218:       ; preds = %bb.fw, %bb.fv, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_52OpEEC2IS1_vEERKS_IT_E.exit49.i
  %i.ye = phi ptr [ %i.xw, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_52OpEEC2IS1_vEERKS_IT_E.exit49.i ], [ %i.xw, %bb.fv ], [ %.pre192.i, %bb.fw ] ; 2 uses
  %i.yf = load ptr, ptr %i.ye, align 8, !tbaa !22
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 24
  %i.yh = load ptr, ptr %i.yg, align 8
  %i.yi = invoke noundef i32 %i.yh(ptr noundef nonnull align 8 dereferenceable(168) %i.ye)
          to label %bb.fx unwind label %bb.ii     ; 3 uses

bb.fx:                                            ; preds = %_ZNK16OpenColorIO_v2_52Op4dataEv.exit.i218
  %i.yj = load ptr, ptr %i.nf, align 8, !tbaa !18 ; 8 uses
  %.not.i.i.i219 = icmp eq ptr %i.yj, null
  br i1 %.not.i.i.i219, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i222, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 8 ; 4 uses
  %i.yl = load atomic i64, ptr %i.yk acquire, align 8 ; 2 uses
  %i.ym = icmp eq i64 %i.yl, 4294967297
  %i.yn = trunc i64 %i.yl to i32                  ; 2 uses
  br i1 %i.ym, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  store i32 0, ptr %i.yk, align 8, !tbaa !24
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yj, i64 12
  store i32 0, ptr %i.yo, align 4, !tbaa !25
  %i.yp = load ptr, ptr %i.yj, align 8, !tbaa !22
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 16
  %i.yr = load ptr, ptr %i.yq, align 8
  call void %i.yr(ptr noundef nonnull align 8 dereferenceable(16) %i.yj) #14, !inline_history !111
  %i.ys = load ptr, ptr %i.yj, align 8, !tbaa !22
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 24
  %i.yu = load ptr, ptr %i.yt, align 8
  call void %i.yu(ptr noundef nonnull align 8 dereferenceable(16) %i.yj) #14, !inline_history !111
end_hunk_0
