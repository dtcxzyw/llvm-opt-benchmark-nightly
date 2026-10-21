Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/gexecutor?download=true
inline.NumInlined: 2334
inline.NumDeleted: 1419
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN2cv5gimpl9GExecutor3runEONS0_12GRuntimeArgsE:bb.a
          to label %.noexc.i.i.i.i.i.i unwind label %bb.bv, !noalias !420

.noexc.i.i.i.i.i.i:                               ; preds = %.noexc147
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN2cv5gimpl9RMatOnMatE, i64 16), ptr %i.jb, align 8, !tbaa !35, !noalias !420
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iy, i64 24
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.jc, ptr noundef nonnull align 8 dereferenceable(208) %11)
          to label %_ZN2cv9make_rmatINS_5gimpl9RMatOnMatEJRNS_3MatEEEENS_4RMatEDpOT0_.exit.i unwind label %.body.i.i.i.i.i.i.i, !noalias !420

.body.i.i.i.i.i.i.i:                              ; preds = %.noexc.i.i.i.i.i.i
  %i.jd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #22, !noalias !420
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv5gimpl9RMatOnMatESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i

bb.bv:                                            ; preds = %.noexc147
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv5gimpl9RMatOnMatESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv5gimpl9RMatOnMatESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i: ; preds = %bb.bv, %.body.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.je, %bb.bv ], [ %i.jd, %.body.i.i.i.i.i.i.i ]
  call void @_ZdlPvm(ptr noundef nonnull %i.iy, i64 noundef 232) #26, !noalias !420
  br label %.body

_ZN2cv9make_rmatINS_5gimpl9RMatOnMatEJRNS_3MatEEEENS_4RMatEDpOT0_.exit.i: ; preds = %.noexc.i.i.i.i.i.i
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #22, !noalias !420
  call void @llvm.lifetime.end.p0(ptr nonnull %11), !noalias !420
  store ptr %i.jb, ptr %.1.i.i.i, align 8, !tbaa !172
  %i.jf = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 24 ; 2 uses
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !128 ; 8 uses
  store ptr %i.iy, ptr %i.jf, align 8, !tbaa !128
  %.not.i.i.i.i.i.i142 = icmp eq ptr %i.jg, null
  br i1 %.not.i.i.i.i.i.i142, label %_ZN2cv5gimpl8magazine12_GLOBAL__N_114bindOutArgExecERNS1_5ClassIJNS_3MatENS_7Scalar_IdEENS_6detail9VectorRefENS7_9OpaqueRefENS_4RMatENSA_4ViewENS_10MediaFrameENS_4UMatEEEERKNS0_6RcDescERKNS_4util7variantIJPSD_PS4_PSA_PS6_PSC_S8_S9_EEE.exit, label %bb.bw

bb.bw:                                            ; preds = %_ZN2cv9make_rmatINS_5gimpl9RMatOnMatEJRNS_3MatEEEENS_4RMatEDpOT0_.exit.i
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8 ; 4 uses
  %i.ji = load atomic i64, ptr %i.jh acquire, align 8 ; 2 uses
  %i.jj = icmp eq i64 %i.ji, 4294967297
  %i.jk = trunc i64 %i.ji to i32                  ; 2 uses
  br i1 %i.jj, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  store i32 0, ptr %i.jh, align 8, !tbaa !108
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jg, i64 12
  store i32 0, ptr %i.jl, align 4, !tbaa !109
  %i.jm = load ptr, ptr %i.jg, align 8, !tbaa !35
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  %i.jo = load ptr, ptr %i.jn, align 8
  call void %i.jo(ptr noundef nonnull align 8 dereferenceable(16) %i.jg) #22, !inline_history !401
  %i.jp = load ptr, ptr %i.jg, align 8, !tbaa !35
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 24
  %i.jr = load ptr, ptr %i.jq, align 8
  call void %i.jr(ptr noundef nonnull align 8 dereferenceable(16) %i.jg) #22, !inline_history !401
  br label %_ZN2cv5gimpl8magazine12_GLOBAL__N_114bindOutArgExecERNS1_5ClassIJNS_3MatENS_7Scalar_IdEENS_6detail9VectorRefENS7_9OpaqueRefENS_4RMatENSA_4ViewENS_10MediaFrameENS_4UMatEEEERKNS0_6RcDescERKNS_4util7variantIJPSD_PS4_PSA_PS6_PSC_S8_S9_EEE.exit

bb.by:                                            ; preds = %bb.bw
  %i.js = load i8, ptr @__libc_single_threaded, align 1, !tbaa !102
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.js, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.jt = add nsw i32 %i.jk, -1
  store i32 %i.jt, ptr %i.jh, align 8, !tbaa !103
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.ca:                                            ; preds = %bb.by
  %i.ju = atomicrmw volatile add ptr %i.jh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.ca, %bb.bz
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.jk, %bb.bz ], [ %i.ju, %bb.ca ]
  %i.jv = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.jv, label %bb.cb, label %_ZN2cv5gimpl8magazine12_GLOBAL__N_114bindOutArgExecERNS1_5ClassIJNS_3MatENS_7Scalar_IdEENS_6detail9VectorRefENS7_9OpaqueRefENS_4RMatENSA_4ViewENS_10MediaFrameENS_4UMatEEEERKNS0_6RcDescERKNS_4util7variantIJPSD_PS4_PSA_PS6_PSC_S8_S9_EEE.exit, !prof !96

bb.cb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jg) #22
  br label %_ZN2cv5gimpl8magazine12_GLOBAL__N_114bindOutArgExecERNS1_5ClassIJNS_3MatENS_7Scalar_IdEENS_6detail9VectorRefENS7_9OpaqueRefENS_4RMatENSA_4ViewENS_10MediaFrameENS_4UMatEEEERKNS0_6RcDescERKNS_4util7variantIJPSD_PS4_PSA_PS6_PSC_S8_S9_EEE.exit

_ZN2cv4util3getIPNS_4RMatEJPNS_4UMatEPNS_3MatES3_PNS_7Scalar_IdEEPNS_10MediaFrameENS_6detail9VectorRefENSD_9OpaqueRefEEEERKT_RKNS0_7variantIJDpT0_EEE.exit.i: ; preds = %_ZNSt13unordered_mapIiN2cv4RMatESt4hashIiESt8equal_toIiESaISt4pairIKiS1_EEEixERS7_.exit.i
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.0261.0451, i64 8
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !190 ; 2 uses
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !182
  store ptr %i.jy, ptr %.1.i.i.i, align 8, !tbaa !182
  %i.jz = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 24 ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !128 ; 4 uses
  %i.kc = load ptr, ptr %i.jz, align 8, !tbaa !128 ; 3 uses
  %.not.i.i.i.i14.i = icmp eq ptr %i.kb, %i.kc
  br i1 %.not.i.i.i.i14.i, label %_ZN2cv5gimpl8magazine12_GLOBAL__N_114bindOutArgExecERNS1_5ClassIJNS_3MatENS_7Scalar_IdEENS_6detail9VectorRefENS7_9OpaqueRefENS_4RMatENSA_4ViewENS_10MediaFrameENS_4UMatEEEERKNS0_6RcDescERKNS_4util7variantIJPSD_PS4_PSA_PS6_PSC_S8_S9_EEE.exit, label %bb.cc

bb.cc:                                            ; preds = %_ZN2cv4util3getIPNS_4RMatEJPNS_4UMatEPNS_3MatES3_PNS_7Scalar_IdEEPNS_10MediaFrameENS_6detail9VectorRefENSD_9OpaqueRefEEEERKT_RKNS0_7variantIJDpT0_EEE.exit.i
  %.not7.i.i.i.i.i = icmp eq ptr %i.kb, null
  br i1 %.not7.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kb, i64 8 ; 3 uses
  %i.ke = load i8, ptr @__libc_single_threaded, align 1, !tbaa !102
  %.not.i.i.i.i.i15.i = icmp eq i8 %i.ke, 0
  br i1 %.not.i.i.i.i.i15.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.kf = load i32, ptr %i.kd, align 4, !tbaa !103
  %i.kg = add nsw i32 %i.kf, 1
  store i32 %i.kg, ptr %i.kd, align 4, !tbaa !103
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i

bb.cf:                                            ; preds = %bb.cd
  %i.kh = atomicrmw volatile add ptr %i.kd, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i.i = load ptr, ptr %i.jz, align 8, !tbaa !128
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i: ; preds = %bb.cf, %bb.ce, %bb.cc
  %i.ki = phi ptr [ %i.kc, %bb.cc ], [ %i.kc, %bb.ce ], [ %.pr.pre.i.i.i.i.i, %bb.cf ] ; 8 uses
  %.not8.i.i.i.i.i = icmp eq ptr %i.ki, null
  br i1 %.not8.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i, label %bb.cg

bb.cg:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 8 ; 4 uses
  %i.kk = load atomic i64, ptr %i.kj acquire, align 8 ; 2 uses
  %i.kl = icmp eq i64 %i.kk, 4294967297
  %i.km = trunc i64 %i.kk to i32                  ; 2 uses
  br i1 %i.kl, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  store i32 0, ptr %i.kj, align 8, !tbaa !108
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ki, i64 12
  store i32 0, ptr %i.kn, align 4, !tbaa !109
  %i.ko = load ptr, ptr %i.ki, align 8, !tbaa !35
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 16
  %i.kq = load ptr, ptr %i.kp, align 8
  call void %i.kq(ptr noundef nonnull align 8 dereferenceable(16) %i.ki) #22, !inline_history !402
  %i.kr = load ptr, ptr %i.ki, align 8, !tbaa !35
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 24
  %i.kt = load ptr, ptr %i.ks, align 8
  call void %i.kt(ptr noundef nonnull align 8 dereferenceable(16) %i.ki) #22, !inline_history !402
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i

bb.ci:                                            ; preds = %bb.cg
  %i.ku = load i8, ptr @__libc_single_threaded, align 1, !tbaa !102
  %.not.i9.i.i.i.i.i = icmp eq i8 %i.ku, 0
  br i1 %.not.i9.i.i.i.i.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.kv = add nsw i32 %i.km, -1
  store i32 %i.kv, ptr %i.kj, align 8, !tbaa !103
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ck:                                            ; preds = %bb.ci
  %i.kw = atomicrmw volatile add ptr %i.kj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ck, %bb.cj
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.km, %bb.cj ], [ %i.kw, %bb.ck ]
  %i.kx = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.kx, label %bb.cl, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i, !prof !96

bb.cl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ki) #22
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i: ; preds = %bb.cl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ch, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i
  store ptr %i.kb, ptr %i.jz, align 8, !tbaa !128
  br label %_ZN2cv5gimpl8magazine12_GLOBAL__N_114bindOutArgExecERNS1_5ClassIJNS_3MatENS_7Scalar_IdEENS_6detail9VectorRefENS7_9OpaqueRefENS_4RMatENSA_4ViewENS_10MediaFrameENS_4UMatEEEERKNS0_6RcDescERKNS_4util7variantIJPSD_PS4_PSA_PS6_PSC_S8_S9_EEE.exit

bb.cm:                                            ; preds = %_ZNSt13unordered_mapIiN2cv4RMatESt4hashIiESt8equal_toIiESaISt4pairIKiS1_EEEixERS7_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull @.str.7)
          to label %.noexc148 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc148:                                        ; preds = %bb.cm
  invoke void @_ZN2cv4util11throw_errorISt11logic_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %13) #23
          to label %bb.cn unwind label %bb.co

bb.cn:                                            ; preds = %.noexc148
  unreachable

bb.co:                                            ; preds = %.noexc148
  %i.ky = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %.body

_ZN2cv5gimpl8magazine12_GLOBAL__N_114bindOutArgExecERNS1_5ClassIJNS_3MatENS_7Scalar_IdEENS_6detail9VectorRefENS7_9OpaqueRefENS_4RMatENSA_4ViewENS_10MediaFrameENS_4UMatEEEERKNS0_6RcDescERKNS_4util7variantIJPSD_PS4_PSA_PS6_PSC_S8_S9_EEE.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i, %_ZN2cv4util3getIPNS_4RMatEJPNS_4UMatEPNS_3MatES3_PNS_7Scalar_IdEEPNS_10MediaFrameENS_6detail9VectorRefENSD_9OpaqueRefEEEERKT_RKNS0_7variantIJDpT0_EEE.exit.i, %bb.cb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.bx, %_ZN2cv9make_rmatINS_5gimpl9RMatOnMatEJRNS_3MatEEEENS_4RMatEDpOT0_.exit.i, %bb.bp
  %i.kz = getelementptr inbounds nuw i8, ptr %.sroa.9265.0450, i64 48 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.sroa.0261.0451, i64 32 ; 2 uses
  %i.lb = icmp eq ptr %i.kz, %i.hg
  %i.lc = icmp eq ptr %i.la, %i.hi
  %narrow.i.i.i.i.i.i.i135 = select i1 %i.lb, i1 true, i1 %i.lc
  br i1 %narrow.i.i.i.i.i.i.i135, label %_ZNK3ade4util5Range13IterableRangeINS1_8ZipRangeIJNS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPKN2cv5gimpl6RcDescESt6vectorIS9_SaIS9_EEEESF_EENS4_INS6_IPNS7_4util7variantIJPNS7_4UMatEPNS7_3MatEPNS7_4RMatEPNS7_7Scalar_IdEEPNS7_10MediaFrameENS7_6detail9VectorRefENSU_9OpaqueRefEEEESC_ISX_SaISX_EEEES11_EEEEEE8iteratorneERKS15_.exit, label %bb.bo

._crit_edge457:                                   ; preds = %bb.di, %_ZNK3ade4util5Range13IterableRangeINS1_8ZipRangeIJNS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPKN2cv5gimpl6RcDescESt6vectorIS9_SaIS9_EEEESF_EENS4_INS6_IPNS7_4util7variantIJPNS7_4UMatEPNS7_3MatEPNS7_4RMatEPNS7_7Scalar_IdEEPNS7_10MediaFrameENS7_6detail9VectorRefENSU_9OpaqueRefEEEESC_ISX_SaISX_EEEES11_EEEEEE8iteratorneERKS15_.exit
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !111 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !111 ; 2 uses
  %.not321458 = icmp eq ptr %i.le, %i.lg
  br i1 %.not321458, label %._crit_edge462, label %.lr.ph461

.lr.ph461:                                        ; preds = %._crit_edge457
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 4 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %25, i64 32
  %i.lk = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %26, i64 32
  %i.lm = getelementptr inbounds nuw i8, ptr %26, i64 40
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 88
  %28 = getelementptr inbounds nuw i8, ptr %26, i64 48
  %29 = getelementptr inbounds nuw i8, ptr %26, i64 56
  %i.ln = getelementptr inbounds nuw i8, ptr %26, i64 72
  %i.lo = getelementptr inbounds nuw i8, ptr %26, i64 80
  %i.lp = getelementptr inbounds nuw i8, ptr %26, i64 96 ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.lr = getelementptr inbounds nuw i8, ptr %25, i64 24
  %30 = insertelement <2 x ptr> poison, ptr %i.lh, i64 0
  %31 = insertelement <2 x ptr> %30, ptr %27, i64 1
  br label %bb.dj

bb.cp:                                            ; preds = %.lr.ph456, %bb.di
  %.sroa.0250.0455 = phi ptr [ %i.hq, %.lr.ph456 ], [ %i.ob, %bb.di ] ; 3 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.sroa.0250.0455, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.lt = load i64, ptr %i.a, align 8, !tbaa !145, !noalias !421
  %i.lu = inttoptr i64 %i.lt to ptr
  %i.lv = getelementptr inbounds nuw i8, ptr %.sroa.0250.0455, i64 24
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !101, !noalias !421 ; 2 uses
  %i.lx = load <2 x ptr>, ptr %i.ls, align 8, !tbaa !75, !noalias !421
  store <2 x ptr> %i.lx, ptr %10, align 16, !tbaa !75, !noalias !421
  %.not.i.i.i.i.i149 = icmp eq ptr %i.lw, null
  br i1 %.not.i.i.i.i.i149, label %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i151, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lw, i64 12 ; 3 uses
  %i.lz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !102, !noalias !421
  %.not.i.i.i.i.i.i150 = icmp eq i8 %i.lz, 0
  br i1 %.not.i.i.i.i.i.i150, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.ma = load i32, ptr %i.ly, align 4, !tbaa !103, !noalias !421
  %i.mb = add nsw i32 %i.ma, 1
  store i32 %i.mb, ptr %i.ly, align 4, !tbaa !103, !noalias !421
  br label %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i151

bb.cs:                                            ; preds = %bb.cq
  %i.mc = atomicrmw volatile add ptr %i.ly, i32 1 acq_rel, align 4, !noalias !421 ; 0 uses
  br label %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i151

_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i151:      ; preds = %bb.cs, %bb.cr, %bb.cp
  %i.md = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN3ade5Graph8metadataENS_6HandleINS_4NodeEEE(ptr noundef nonnull align 8 dereferenceable(168) %i.lu, ptr noundef nonnull align 8 %10)
          to label %bb.ct unwind label %bb.cy, !noalias !421 ; 5 uses

bb.ct:                                            ; preds = %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i151
  %i.me = load ptr, ptr %i.ht, align 8, !tbaa !101, !noalias !421 ; 4 uses
  %.not.i.i.i.i157 = icmp eq ptr %i.me, null
  br i1 %.not.i.i.i.i157, label %bb.dd, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 12 ; 3 uses
  %i.mg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !102, !noalias !421
  %.not.i.i.i.i3.i158 = icmp eq i8 %i.mg, 0
  br i1 %.not.i.i.i.i3.i158, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.mh = load i32, ptr %i.mf, align 4, !tbaa !103, !noalias !421 ; 2 uses
  %i.mi = add nsw i32 %i.mh, -1
  store i32 %i.mi, ptr %i.mf, align 4, !tbaa !103, !noalias !421
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i159

bb.cw:                                            ; preds = %bb.cu
  %i.mj = atomicrmw volatile add ptr %i.mf, i32 -1 acq_rel, align 4, !noalias !421
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i159

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i159: ; preds = %bb.cw, %bb.cv
  %.0.i.i.i.i.i.i160 = phi i32 [ %i.mh, %bb.cv ], [ %i.mj, %bb.cw ]
  %i.mk = icmp eq i32 %.0.i.i.i.i.i.i160, 1
  br i1 %i.mk, label %bb.cx, label %bb.dd

bb.cx:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i159
  %i.ml = load ptr, ptr %i.me, align 8, !tbaa !35, !noalias !421
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 24
  %i.mn = load ptr, ptr %i.mm, align 8, !noalias !421
  call void %i.mn(ptr noundef nonnull align 8 dereferenceable(16) %i.me) #22, !noalias !421, !inline_history !10
  br label %bb.dd

bb.cy:                                            ; preds = %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i151
  %i.mo = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.mp = load ptr, ptr %i.ht, align 8, !tbaa !101, !noalias !421 ; 4 uses
  %.not.i.i.i4.i152 = icmp eq ptr %i.mp, null
  br i1 %.not.i.i.i4.i152, label %.body, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 12 ; 3 uses
  %i.mr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !102, !noalias !421
  %.not.i.i.i.i5.i153 = icmp eq i8 %i.mr, 0
  br i1 %.not.i.i.i.i5.i153, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.ms = load i32, ptr %i.mq, align 4, !tbaa !103, !noalias !421 ; 2 uses
  %i.mt = add nsw i32 %i.ms, -1
  store i32 %i.mt, ptr %i.mq, align 4, !tbaa !103, !noalias !421
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i154

bb.db:                                            ; preds = %bb.cz
  %i.mu = atomicrmw volatile add ptr %i.mq, i32 -1 acq_rel, align 4, !noalias !421
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i154

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i154: ; preds = %bb.db, %bb.da
  %.0.i.i.i.i.i7.i155 = phi i32 [ %i.ms, %bb.da ], [ %i.mu, %bb.db ]
  %i.mv = icmp eq i32 %.0.i.i.i.i.i7.i155, 1
  br i1 %i.mv, label %bb.dc, label %.body

bb.dc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i154
  %i.mw = load ptr, ptr %i.mp, align 8, !tbaa !35, !noalias !421
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 24
  %i.my = load ptr, ptr %i.mx, align 8, !noalias !421
  call void %i.my(ptr noundef nonnull align 8 dereferenceable(16) %i.mp) #22, !noalias !421, !inline_history !10
  br label %.body

bb.dd:                                            ; preds = %bb.cx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i159, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %.sroa.0.0.copyload.i.i164 = load ptr, ptr %i.hu, align 8, !tbaa !75
  store ptr %.sroa.0.0.copyload.i.i164, ptr %9, align 8
  %i.mz = getelementptr inbounds nuw i8, ptr %i.md, i64 32
  %i.na = load i64, ptr %i.mz, align 8, !tbaa !81
  %.not.not.i.i.i.i165 = icmp eq i64 %i.na, 0
  br i1 %.not.not.i.i.i.i165, label %bb.de, label %bb.dg

bb.de:                                            ; preds = %bb.dd
  %i.nb = getelementptr inbounds nuw i8, ptr %i.md, i64 24
  br label %bb.df

bb.df:                                            ; preds = %.noexc179, %bb.de
  %.sroa.06.0.in.i.i.i.i177 = phi ptr [ %i.nb, %bb.de ], [ %.sroa.06.0.i.i.i.i178, %.noexc179 ]
  %.sroa.06.0.i.i.i.i178 = load ptr, ptr %.sroa.06.0.in.i.i.i.i177, align 8, !tbaa !82, !nonnull !83, !noundef !83 ; 3 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i178, i64 8
  %i.nd = invoke noundef zeroext i1 @_ZNK3ade7details10MetadataIdeqERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(24) %i.nc)
          to label %.noexc179 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc179:                                        ; preds = %bb.df
  br i1 %i.nd, label %.loopexit328, label %bb.df, !llvm.loop !0

bb.dg:                                            ; preds = %bb.dd
  %i.ne = invoke noundef i64 @_ZNK3ade7details8Metadata6IdHashclERKNS0_10MetadataIdE(ptr noundef nonnull align 8 dereferenceable(64) %i.md, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %.noexc180 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc180:                                        ; preds = %bb.dg
  %i.nf = getelementptr inbounds nuw i8, ptr %i.md, i64 16 ; 2 uses
  %i.ng = load i64, ptr %i.nf, align 8, !tbaa !85 ; 2 uses
  %i.nh = urem i64 %i.ne, %i.ng                   ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !86
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.nj, i64 %i.nh
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !87, !nonnull !83, !noundef !83 ; 2 uses
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !82 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i166 = getelementptr inbounds nuw i8, ptr %i.nm, i64 24
  %.pre.i.i.i.i.i.i167 = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i166, align 8, !tbaa !89
  br label %bb.dh

bb.dh:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i170, %.noexc180
  %i.nn = phi i64 [ %i.ng, %.noexc180 ], [ %i.ns, %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i170 ]
  %i.no = phi i64 [ %.pre.i.i.i.i.i.i167, %.noexc180 ], [ %i.nv, %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i170 ]
  %.015.i.i.i.i.i.i168 = phi ptr [ %i.nl, %.noexc180 ], [ %.0.i.i.i.i.i.i169, %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i170 ]
  %.0.i.i.i.i.i.i169 = phi ptr [ %i.nm, %.noexc180 ], [ %i.nt, %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i170 ] ; 3 uses
  %i.np = icmp eq i64 %i.ne, %i.no
  br i1 %i.np, label %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i.i.i172, label %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i170

_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i.i.i172: ; preds = %bb.dh
  %i.nq = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i169, i64 8
  %i.nr = invoke noundef zeroext i1 @_ZNK3ade7details10MetadataIdeqERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(24) %i.nq)
          to label %.noexc181 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc181:                                        ; preds = %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i.i.i172
  br i1 %i.nr, label %_ZNKSt10_HashtableIN3ade7details10MetadataIdESt4pairIKS2_St10unique_ptrINS1_8Metadata18MetadataHolderBaseESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ENS6_6IdHashENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS4_m.exit.i.i.i.i.i175, label %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i._ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i_crit_edge.i.i173

_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i._ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i_crit_edge.i.i173: ; preds = %.noexc181
  %.pre.i.i174 = load i64, ptr %i.nf, align 8, !tbaa !85
  br label %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i170

_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i170: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i._ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i_crit_edge.i.i173, %bb.dh
  %i.ns = phi i64 [ %.pre.i.i174, %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i._ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i_crit_edge.i.i173 ], [ %i.nn, %bb.dh ] ; 2 uses
  %i.nt = load ptr, ptr %.0.i.i.i.i.i.i169, align 8, !tbaa !82, !nonnull !83, !noundef !83 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 24
  %i.nv = load i64, ptr %i.nu, align 8, !tbaa !89 ; 2 uses
  %i.nw = urem i64 %i.nv, %i.ns
  %.not19.i.i.i.i.i.i171 = icmp eq i64 %i.nw, %i.nh
  call void @llvm.assume(i1 %.not19.i.i.i.i.i.i171)
  br label %bb.dh

_ZNKSt10_HashtableIN3ade7details10MetadataIdESt4pairIKS2_St10unique_ptrINS1_8Metadata18MetadataHolderBaseESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ENS6_6IdHashENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS4_m.exit.i.i.i.i.i175: ; preds = %.noexc181
  %i.nx = load ptr, ptr %.015.i.i.i.i.i.i168, align 8, !tbaa !82
  br label %.loopexit328

.loopexit328:                                     ; preds = %.noexc179, %_ZNKSt10_HashtableIN3ade7details10MetadataIdESt4pairIKS2_St10unique_ptrINS1_8Metadata18MetadataHolderBaseESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ENS6_6IdHashENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS4_m.exit.i.i.i.i.i175
  %.sroa.06.1.i.i.i.i176 = phi ptr [ %i.nx, %_ZNKSt10_HashtableIN3ade7details10MetadataIdESt4pairIKS2_St10unique_ptrINS1_8Metadata18MetadataHolderBaseESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ENS6_6IdHashENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS4_m.exit.i.i.i.i.i175 ], [ %.sroa.06.0.i.i.i.i178, %.noexc179 ]
  %i.ny = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i176, i64 16
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !91
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  invoke void @_ZN2cv5gimpl8magazine17resetInternalDataERNS1_5ClassIJNS_3MatENS_7Scalar_IdEENS_6detail9VectorRefENS6_9OpaqueRefENS_4RMatENS9_4ViewENS_10MediaFrameENS_4UMatEEEERKNS0_4DataE(ptr noundef nonnull align 8 dereferenceable(896) %i.hv, ptr noundef nonnull align 8 dereferenceable(112) %i.oa)
          to label %bb.di unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.di:                                            ; preds = %.loopexit328
  %i.ob = getelementptr inbounds nuw i8, ptr %.sroa.0250.0455, i64 32 ; 2 uses
  %.not320 = icmp eq ptr %i.ob, %i.hs
  br i1 %.not320, label %._crit_edge457, label %bb.cp

bb.dj:                                            ; preds = %.lr.ph461, %_ZN2cv5gimpl17GIslandExecutable6IInputD2Ev.exit
  %.sroa.0244.0459 = phi ptr [ %i.le, %.lr.ph461 ], [ %i.pf, %_ZN2cv5gimpl17GIslandExecutable6IInputD2Ev.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.li, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2cv5gimpl9GExecutor5InputE, i64 16), ptr %25, align 8, !tbaa !35
  store ptr %i.lh, ptr %i.lj, align 8, !tbaa !422
  %i.oc = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN2cv5gimpl6RcDescESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.li, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0244.0459)
          to label %_ZN2cv5gimpl9GExecutor5InputC2ERNS0_8magazine5ClassIJNS_3MatENS_7Scalar_IdEENS_6detail9VectorRefENS8_9OpaqueRefENS_4RMatENSB_4ViewENS_10MediaFrameENS_4UMatEEEERKSt6vectorINS0_6RcDescESaISI_EE.exit unwind label %bb.dk ; 0 uses

bb.dk:                                            ; preds = %bb.dj
  %i.od = landingpad { ptr, i32 }
          cleanup
  br label %.body185

_ZN2cv5gimpl9GExecutor5InputC2ERNS0_8magazine5ClassIJNS_3MatENS_7Scalar_IdEENS_6detail9VectorRefENS8_9OpaqueRefENS_4RMatENSB_4ViewENS_10MediaFrameENS_4UMatEEEERKSt6vectorINS0_6RcDescESaISI_EE.exit: ; preds = %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #22
  %i.oe = getelementptr inbounds nuw i8, ptr %.sroa.0244.0459, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lk, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN2cv5gimpl9GExecutor6OutputE, i64 16), ptr %26, align 8, !tbaa !35
  store <2 x ptr> %31, ptr %i.ll, align 8, !tbaa !75
  store i64 1, ptr %28, align 8, !tbaa !195
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ln, align 8, !tbaa !47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lo, i8 0, i64 24, i1 false)
  %i.of = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN2cv5gimpl6RcDescESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.lk, ptr noundef nonnull align 8 dereferenceable(24) %i.oe)
          to label %_ZN2cv5gimpl9GExecutor6OutputC2ERNS0_8magazine5ClassIJNS_3MatENS_7Scalar_IdEENS_6detail9VectorRefENS8_9OpaqueRefENS_4RMatENSB_4ViewENS_10MediaFrameENS_4UMatEEEERKSt6vectorINS0_6RcDescESaISI_EE.exit unwind label %bb.dl ; 0 uses

bb.dl:                                            ; preds = %_ZN2cv5gimpl9GExecutor5InputC2ERNS0_8magazine5ClassIJNS_3MatENS_7Scalar_IdEENS_6detail9VectorRefENS8_9OpaqueRefENS_4RMatENSB_4ViewENS_10MediaFrameENS_4UMatEEEERKSt6vectorINS0_6RcDescESaISI_EE.exit
  %i.og = landingpad { ptr, i32 }
          cleanup
  %i.oh = load ptr, ptr %i.lp, align 8, !tbaa !197
  %.not.i.i187 = icmp eq ptr %i.oh, null
  br i1 %.not.i.i187, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.lp) #22
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i: ; preds = %bb.dm, %bb.dl
  call void @_ZNSt13unordered_mapIPKviSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_iEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.lm) #22
  call void @_ZN2cv5gimpl17GIslandExecutable7IOutputD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(104) %26) #22
  br label %.body188

_ZN2cv5gimpl9GExecutor6OutputC2ERNS0_8magazine5ClassIJNS_3MatENS_7Scalar_IdEENS_6detail9VectorRefENS8_9OpaqueRefENS_4RMatENSB_4ViewENS_10MediaFrameENS_4UMatEEEERKSt6vectorINS0_6RcDescESaISI_EE.exit: ; preds = %_ZN2cv5gimpl9GExecutor5InputC2ERNS0_8magazine5ClassIJNS_3MatENS_7Scalar_IdEENS_6detail9VectorRefENS8_9OpaqueRefENS_4RMatENSB_4ViewENS_10MediaFrameENS_4UMatEEEERKSt6vectorINS0_6RcDescESaISI_EE.exit
  %i.oi = getelementptr inbounds nuw i8, ptr %.sroa.0244.0459, i64 48
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !115 ; 2 uses
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !35
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 8
  %i.om = load ptr, ptr %i.ol, align 8
  invoke void %i.om(ptr noundef nonnull align 8 dereferenceable(8) %i.oj, ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(32) %26)
          to label %bb.dn unwind label %bb.du

bb.dn:                                            ; preds = %_ZN2cv5gimpl9GExecutor6OutputC2ERNS0_8magazine5ClassIJNS_3MatENS_7Scalar_IdEENS_6detail9VectorRefENS8_9OpaqueRefENS_4RMatENSB_4ViewENS_10MediaFrameENS_4UMatEEEERKSt6vectorINS0_6RcDescESaISI_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.on = load ptr, ptr %i.lp, align 8, !tbaa !197 ; 2 uses
  %.not.i190 = icmp eq ptr %i.on, null
  br i1 %.not.i190, label %bb.dr, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i: ; preds = %bb.dn
  store ptr %i.on, ptr %8, align 8, !tbaa !197
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #22
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %8) #23
          to label %bb.do unwind label %bb.dp

bb.do:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i
  unreachable

bb.dp:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i
  %i.oo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.op = load ptr, ptr %8, align 8, !tbaa !197
  %.not.i2.i = icmp eq ptr %i.op, null
  br i1 %.not.i2.i, label %.body192, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #22
  br label %.body192

bb.dr:                                            ; preds = %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @_ZN2cv5gimpl9GExecutor6OutputD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %26) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  %i.oq = load ptr, ptr %i.li, align 8, !tbaa !127 ; 3 uses
  %i.or = load ptr, ptr %i.lq, align 8, !tbaa !132 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.oq, %i.or
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN2cv5gimpl6RcDescES2_EvT_S4_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i194

.lr.ph.i.i.i.i.i194:                              ; preds = %bb.dr, %_ZSt8_DestroyIN2cv5gimpl6RcDescEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.oz, %_ZSt8_DestroyIN2cv5gimpl6RcDescEEvPT_.exit.i.i.i.i.i ], [ %i.oq, %bb.dr ] ; 3 uses
  %i.os = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.ot = load i64, ptr %i.os, align 8, !tbaa !134
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr @constinit.13, i64 %i.ot
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !75
  %i.ow = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16
  invoke void %i.ov(ptr noundef nonnull %i.ow)
          to label %_ZSt8_DestroyIN2cv5gimpl6RcDescEEvPT_.exit.i.i.i.i.i unwind label %bb.ds

bb.ds:                                            ; preds = %.lr.ph.i.i.i.i.i194
  %i.ox = landingpad { ptr, i32 }
          catch ptr null
  %i.oy = extractvalue { ptr, i32 } %i.ox, 0
  call void @__clang_call_terminate(ptr %i.oy) #25
  unreachable

_ZSt8_DestroyIN2cv5gimpl6RcDescEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i194
  %i.oz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i195 = icmp eq ptr %i.oz, %i.or
  br i1 %.not.i.i.i.i.i195, label %_ZSt8_DestroyIPN2cv5gimpl6RcDescES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i194, !llvm.loop !6

_ZSt8_DestroyIPN2cv5gimpl6RcDescES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyIN2cv5gimpl6RcDescEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.li, align 8, !tbaa !127
  br label %_ZSt8_DestroyIPN2cv5gimpl6RcDescES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN2cv5gimpl6RcDescES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN2cv5gimpl6RcDescES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.dr
  %i.pa = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN2cv5gimpl6RcDescES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.oq, %bb.dr ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.pa, null
  br i1 %.not.i.i1.i.i.i, label %_ZN2cv5gimpl17GIslandExecutable6IInputD2Ev.exit, label %bb.dt

bb.dt:                                            ; preds = %_ZSt8_DestroyIPN2cv5gimpl6RcDescES2_EvT_S4_RSaIT0_E.exit.i.i.i
  %i.pb = load ptr, ptr %i.lr, align 8, !tbaa !126
  %i.pc = ptrtoint ptr %i.pb to i64
  %i.pd = ptrtoint ptr %i.pa to i64
  %i.pe = sub i64 %i.pc, %i.pd
  call void @_ZdlPvm(ptr noundef nonnull %i.pa, i64 noundef %i.pe) #26
  br label %_ZN2cv5gimpl17GIslandExecutable6IInputD2Ev.exit

_ZN2cv5gimpl17GIslandExecutable6IInputD2Ev.exit:  ; preds = %_ZSt8_DestroyIPN2cv5gimpl6RcDescES2_EvT_S4_RSaIT0_E.exit.i.i.i, %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  %i.pf = getelementptr inbounds nuw i8, ptr %.sroa.0244.0459, i64 64 ; 2 uses
  %.not321 = icmp eq ptr %i.pf, %i.lg
  br i1 %.not321, label %._crit_edge462, label %bb.dj

bb.du:                                            ; preds = %_ZN2cv5gimpl9GExecutor6OutputC2ERNS0_8magazine5ClassIJNS_3MatENS_7Scalar_IdEENS_6detail9VectorRefENS8_9OpaqueRefENS_4RMatENSB_4ViewENS_10MediaFrameENS_4UMatEEEERKSt6vectorINS0_6RcDescESaISI_EE.exit
  %i.pg = landingpad { ptr, i32 }
          cleanup
  br label %.body192

.body192:                                         ; preds = %bb.dp, %bb.dq, %bb.du
  %eh.lpad-body193 = phi { ptr, i32 } [ %i.pg, %bb.du ], [ %i.oo, %bb.dq ], [ %i.oo, %bb.dp ]
  call void @_ZN2cv5gimpl9GExecutor6OutputD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %26) #22
  br label %.body188

.body188:                                         ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i, %.body192
  %.pn60 = phi { ptr, i32 } [ %eh.lpad-body193, %.body192 ], [ %i.og, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  br label %.body185

.body185:                                         ; preds = %bb.dk, %.body188
  %.pn60.pn = phi { ptr, i32 } [ %.pn60, %.body188 ], [ %i.od, %bb.dk ]
  call void @_ZN2cv5gimpl17GIslandExecutable6IInputD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(40) %25) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  br label %.body

._crit_edge462:                                   ; preds = %_ZN2cv5gimpl17GIslandExecutable6IInputD2Ev.exit, %._crit_edge457
  %i.ph = load ptr, ptr %i.ax, align 8, !tbaa !124 ; 2 uses
  %i.pi = load ptr, ptr %i.ay, align 8, !tbaa !124 ; 2 uses
  %i.pj = load ptr, ptr %i.bf, align 8, !tbaa !419 ; 2 uses
  %i.pk = load ptr, ptr %i.bg, align 8, !tbaa !419 ; 2 uses
  %i.pl = icmp eq ptr %i.ph, %i.pi
  %i.pm = icmp eq ptr %i.pj, %i.pk
  %narrow.i.i.i.i.i.i.i204463 = select i1 %i.pl, i1 true, i1 %i.pm
  br i1 %narrow.i.i.i.i.i.i.i204463, label %_ZNK3ade4util5Range13IterableRangeINS1_8ZipRangeIJNS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPKN2cv5gimpl6RcDescESt6vectorIS9_SaIS9_EEEESF_EENS4_INS6_IPNS7_4util7variantIJPNS7_4UMatEPNS7_3MatEPNS7_4RMatEPNS7_7Scalar_IdEEPNS7_10MediaFrameENS7_6detail9VectorRefENSU_9OpaqueRefEEEESC_ISX_SaISX_EEEES11_EEEEEE8iteratorneERKS15_.exit207, label %.lr.ph467

.lr.ph467:                                        ; preds = %._crit_edge462
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.po = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.ps = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 3 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.px = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.pz = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.qa = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.qb = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 3 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.qe = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.qf = getelementptr inbounds nuw i8, ptr %4, i64 40
  br label %bb.dv

_ZNK3ade4util5Range13IterableRangeINS1_8ZipRangeIJNS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPKN2cv5gimpl6RcDescESt6vectorIS9_SaIS9_EEEESF_EENS4_INS6_IPNS7_4util7variantIJPNS7_4UMatEPNS7_3MatEPNS7_4RMatEPNS7_7Scalar_IdEEPNS7_10MediaFrameENS7_6detail9VectorRefENSU_9OpaqueRefEEEESC_ISX_SaISX_EEEES11_EEEEEE8iteratorneERKS15_.exit207: ; preds = %_ZN2cv5gimpl8magazine12_GLOBAL__N_113writeBackExecERKNS1_5ClassIJNS_3MatENS_7Scalar_IdEENS_6detail9VectorRefENS7_9OpaqueRefENS_4RMatENSA_4ViewENS_10MediaFrameENS_4UMatEEEERKNS0_6RcDescERNS_4util7variantIJPSD_PS4_PSA_PS6_PSC_S8_S9_EEE.exit, %._crit_edge462
  call void @_ZN2cv5gimpl8ProtocolD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  ret void

bb.dv:                                            ; preds = %.lr.ph467, %_ZN2cv5gimpl8magazine12_GLOBAL__N_113writeBackExecERKNS1_5ClassIJNS_3MatENS_7Scalar_IdEENS_6detail9VectorRefENS7_9OpaqueRefENS_4RMatENSA_4ViewENS_10MediaFrameENS_4UMatEEEERKNS0_6RcDescERNS_4util7variantIJPSD_PS4_PSA_PS6_PSC_S8_S9_EEE.exit
  %.sroa.0230.0465 = phi ptr [ %i.pj, %.lr.ph467 ], [ %i.tm, %_ZN2cv5gimpl8magazine12_GLOBAL__N_113writeBackExecERKNS1_5ClassIJNS_3MatENS_7Scalar_IdEENS_6detail9VectorRefENS7_9OpaqueRefENS_4RMatENSA_4ViewENS_10MediaFrameENS_4UMatEEEERKNS0_6RcDescERNS_4util7variantIJPSD_PS4_PSA_PS6_PSC_S8_S9_EEE.exit ] ; 4 uses
  %.sroa.9.0464 = phi ptr [ %i.ph, %.lr.ph467 ], [ %i.tl, %_ZN2cv5gimpl8magazine12_GLOBAL__N_113writeBackExecERKNS1_5ClassIJNS_3MatENS_7Scalar_IdEENS_6detail9VectorRefENS7_9OpaqueRefENS_4RMatENSA_4ViewENS_10MediaFrameENS_4UMatEEEERKNS0_6RcDescERNS_4util7variantIJPSD_PS4_PSA_PS6_PSC_S8_S9_EEE.exit ] ; 4 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %.sroa.9.0464, i64 4
  %i.qh = load i32, ptr %i.qg, align 4, !tbaa !179
  %.not.i208 = icmp eq i32 %i.qh, 0
  br i1 %.not.i208, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  invoke void @_ZN2cv5gimpl8magazine9writeBackERKNS1_5ClassIJNS_3MatENS_7Scalar_IdEENS_6detail9VectorRefENS6_9OpaqueRefENS_4RMatENS9_4ViewENS_10MediaFrameENS_4UMatEEEERKNS0_6RcDescERNS_4util7variantIJPSC_PS3_PS9_PS5_PSB_S7_S8_EEE(ptr noundef nonnull align 8 dereferenceable(896) %i.pn, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.9.0464, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0230.0465)
          to label %_ZN2cv5gimpl8magazine12_GLOBAL__N_113writeBackExecERKNS1_5ClassIJNS_3MatENS_7Scalar_IdEENS_6detail9VectorRefENS7_9OpaqueRefENS_4RMatENSA_4ViewENS_10MediaFrameENS_4UMatEEEERKNS0_6RcDescERNS_4util7variantIJPSD_PS4_PSA_PS6_PSC_S8_S9_EEE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dx:                                            ; preds = %bb.dv
  %i.qi = load i64, ptr %.sroa.0230.0465, align 8, !tbaa !188
  switch i64 %i.qi, label %bb.ev [
    i64 1, label %_ZN2cv4util3getIPNS_3MatEJPNS_4UMatES3_PNS_4RMatEPNS_7Scalar_IdEEPNS_10MediaFrameENS_6detail9VectorRefENSD_9OpaqueRefEEEERT_RNS0_7variantIJDpT0_EEE.exit.i
    i64 2, label %_ZN2cv5gimpl8magazine12_GLOBAL__N_113writeBackExecERKNS1_5ClassIJNS_3MatENS_7Scalar_IdEENS_6detail9VectorRefENS7_9OpaqueRefENS_4RMatENSA_4ViewENS_10MediaFrameENS_4UMatEEEERKNS0_6RcDescERNS_4util7variantIJPSD_PS4_PSA_PS6_PSC_S8_S9_EEE.exit
  ]

_ZN2cv4util3getIPNS_3MatEJPNS_4UMatES3_PNS_4RMatEPNS_7Scalar_IdEEPNS_10MediaFrameENS_6detail9VectorRefENSD_9OpaqueRefEEEERT_RNS0_7variantIJDpT0_EEE.exit.i: ; preds = %bb.dx
  %i.qj = getelementptr inbounds nuw i8, ptr %.sroa.0230.0465, i64 8
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !418 ; 2 uses
  %i.ql = load i64, ptr %i.po, align 8, !tbaa !198
  %.not.not.i.i.i.i209 = icmp eq i64 %i.ql, 0
  %i.qm = load i32, ptr %.sroa.9.0464, align 4    ; 4 uses
  br i1 %.not.not.i.i.i.i209, label %.preheader, label %bb.dz

.preheader:                                       ; preds = %_ZN2cv4util3getIPNS_3MatEJPNS_4UMatES3_PNS_4RMatEPNS_7Scalar_IdEEPNS_10MediaFrameENS_6detail9VectorRefENSD_9OpaqueRefEEEERT_RNS0_7variantIJDpT0_EEE.exit.i, %bb.dy
  %.sroa.06.0.in.i.i.i.i218 = phi ptr [ %.sroa.06.0.i.i.i.i219, %bb.dy ], [ %i.pr, %_ZN2cv4util3getIPNS_3MatEJPNS_4UMatES3_PNS_4RMatEPNS_7Scalar_IdEEPNS_10MediaFrameENS_6detail9VectorRefENSD_9OpaqueRefEEEERT_RNS0_7variantIJDpT0_EEE.exit.i ]
  %.sroa.06.0.i.i.i.i219 = load ptr, ptr %.sroa.06.0.in.i.i.i.i218, align 8, !tbaa !82 ; 4 uses
  %.not.i.i.i.i220 = icmp eq ptr %.sroa.06.0.i.i.i.i219, null
  br i1 %.not.i.i.i.i220, label %.loopexit.i.i.i212, label %bb.dy

bb.dy:                                            ; preds = %.preheader
  %i.qn = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i219, i64 8
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !103
  %i.qp = icmp eq i32 %i.qm, %i.qo
  br i1 %i.qp, label %_ZNKSt13unordered_mapIiN2cv4RMatESt4hashIiESt8equal_toIiESaISt4pairIKiS1_EEE2atERS7_.exit.i, label %.preheader, !llvm.loop !405

bb.dz:                                            ; preds = %_ZN2cv4util3getIPNS_3MatEJPNS_4UMatES3_PNS_4RMatEPNS_7Scalar_IdEEPNS_10MediaFrameENS_6detail9VectorRefENSD_9OpaqueRefEEEERT_RNS0_7variantIJDpT0_EEE.exit.i
  %i.qq = sext i32 %i.qm to i64
  %i.qr = load i64, ptr %i.pq, align 8, !tbaa !56 ; 2 uses
  %i.qs = urem i64 %i.qq, %i.qr                   ; 2 uses
  %i.qt = load ptr, ptr %i.pp, align 8, !tbaa !55
  %i.qu = getelementptr inbounds nuw [8 x i8], ptr %i.qt, i64 %i.qs
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !87 ; 2 uses
  %.not.i.i.i.i.i.i210 = icmp eq ptr %i.qv, null
  br i1 %.not.i.i.i.i.i.i210, label %.loopexit.i.i.i212, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !82 ; 3 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 8
  %i.qy = load i32, ptr %i.qx, align 4, !tbaa !103
  %i.qz = icmp eq i32 %i.qm, %i.qy
  br i1 %i.qz, label %_ZNKSt13unordered_mapIiN2cv4RMatESt4hashIiESt8equal_toIiESaISt4pairIKiS1_EEE2atERS7_.exit.i, label %.lr.ph.i.i.i.i.i.i

bb.eb:                                            ; preds = %bb.ec
  %i.ra = icmp eq i32 %i.qm, %i.rd
  br i1 %i.ra, label %_ZNKSt13unordered_mapIiN2cv4RMatESt4hashIiESt8equal_toIiESaISt4pairIKiS1_EEE2atERS7_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !12

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ea, %bb.eb
  %.020.i.i.i.i.i.i = phi ptr [ %i.rb, %bb.eb ], [ %i.qw, %bb.ea ]
  %i.rb = load ptr, ptr %.020.i.i.i.i.i.i, align 8, !tbaa !82 ; 4 uses
  %.not18.i.i.i.i.i.i = icmp eq ptr %i.rb, null
  br i1 %.not18.i.i.i.i.i.i, label %.loopexit.i.i.i212, label %bb.ec

bb.ec:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 8
  %i.rd = load i32, ptr %i.rc, align 4, !tbaa !103 ; 2 uses
  %i.re = sext i32 %i.rd to i64
  %i.rf = urem i64 %i.re, %i.qr
  %.not19.i.i.i.i.i.i211 = icmp eq i64 %i.rf, %i.qs
  br i1 %.not19.i.i.i.i.i.i211, label %bb.eb, label %..loopexit_crit_edge21.i.i.i.i.i.i, !llvm.loop !12

..loopexit_crit_edge21.i.i.i.i.i.i:               ; preds = %bb.ec
  br label %.loopexit.i.i.i212, !llvm.loop !12

.loopexit.i.i.i212:                               ; preds = %bb.dz, %.lr.ph.i.i.i.i.i.i, %.preheader, %..loopexit_crit_edge21.i.i.i.i.i.i
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.21) #23
          to label %.noexc222 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc222:                                        ; preds = %.loopexit.i.i.i212
  unreachable

_ZNKSt13unordered_mapIiN2cv4RMatESt4hashIiESt8equal_toIiESaISt4pairIKiS1_EEE2atERS7_.exit.i: ; preds = %bb.eb, %bb.dy, %bb.ea
  %.sroa.06.1.i.i.i.i213 = phi ptr [ %.sroa.06.0.i.i.i.i219, %bb.dy ], [ %i.qw, %bb.ea ], [ %i.rb, %bb.eb ]
  %i.rg = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i213, i64 16
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !182 ; 4 uses
  %.not.i27.i = icmp eq ptr %i.rh, null
  br i1 %.not.i27.i, label %bb.ed, label %_ZNK2cv4RMat3getINS_5gimpl9RMatOnMatEEEPT_v.exit.i

bb.ed:                                            ; preds = %_ZNKSt13unordered_mapIiN2cv4RMatESt4hashIiESt8equal_toIiESaISt4pairIKiS1_EEE2atERS7_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %.noexc223 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc223:                                        ; preds = %bb.ed
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv4RMat3getINS_5gimpl9RMatOnMatEEEPT_v, ptr noundef nonnull @.str.10, i32 noundef 144) #23
          to label %bb.ee unwind label %bb.ef

bb.ee:                                            ; preds = %.noexc223
  unreachable

bb.ef:                                            ; preds = %.noexc223
  %i.ri = landingpad { ptr, i32 }
          cleanup
  %i.rj = load ptr, ptr %2, align 8, !tbaa !142   ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.rl = icmp eq ptr %i.rj, %i.rk
  br i1 %i.rl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.ef
  %i.rm = load i64, ptr %i.rk, align 8, !tbaa !102
  %i.rn = add i64 %i.rm, 1
  call void @_ZdlPvm(ptr noundef %i.rj, i64 noundef %i.rn) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.ef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %.body

_ZNK2cv4RMat3getINS_5gimpl9RMatOnMatEEEPT_v.exit.i: ; preds = %_ZNKSt13unordered_mapIiN2cv4RMatESt4hashIiESt8equal_toIiESaISt4pairIKiS1_EEE2atERS7_.exit.i
  %i.ro = call noundef ptr @__dynamic_cast(ptr nonnull %i.rh, ptr nonnull @_ZTIN2cv4RMat8IAdapterE, ptr nonnull @_ZTIN2cv5gimpl9RMatOnMatE, i64 0) #22 ; 2 uses
  %.not21.i = icmp eq ptr %i.ro, null
  br i1 %.not21.i, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %_ZNK2cv4RMat3getINS_5gimpl9RMatOnMatEEEPT_v.exit.i
  %i.rp = getelementptr inbounds nuw i8, ptr %i.qk, i64 24
end_hunk_0
