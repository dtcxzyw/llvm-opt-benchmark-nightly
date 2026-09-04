Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/optistack_internal?download=true
inline.NumInlined: 7559
inline.NumDeleted: 1981
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN6casadi8OptiNode4bakeEv:bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !173
  %i.bn = load ptr, ptr %i.bk, align 8, !tbaa !172
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = ashr exact i64 %i.bq, 3
  tail call void @_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratormb(ptr noundef nonnull align 8 dereferenceable(40) %i.bh, ptr %i.bi, i32 0, i64 noundef %i.br, i1 noundef zeroext false)
  %i.bs = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #29, !noalias !852 ; 16 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i32 1, ptr %i.bt, align 8, !tbaa !193, !noalias !852
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  store i32 1, ptr %i.bu, align 4, !tbaa !194, !noalias !852
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6casadi12RevWeakCacheINS0_2MXESt10shared_ptrINS0_8OptiNode11ValueHelperEEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.bs, align 8, !tbaa !61, !noalias !852
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 48 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bw, i8 0, i64 64, i1 false), !noalias !852
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 64
  store ptr %i.bx, ptr %i.bv, align 8, !tbaa !202, !noalias !852
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  store i64 1, ptr %i.by, align 8, !tbaa !203, !noalias !852
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i8 0, i64 16, i1 false), !noalias !852
  store float 1.000000e+00, ptr %i.bw, align 8, !tbaa !204, !noalias !852
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i8 0, i64 16, i1 false), !noalias !852
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 72
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bs, i64 120
  store ptr %i.cc, ptr %i.cb, align 8, !tbaa !206, !noalias !852
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bs, i64 80
  store i64 1, ptr %i.cd, align 8, !tbaa !207, !noalias !852
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bs, i64 88
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bs, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, i8 0, i64 16, i1 false), !noalias !852
  store float 1.000000e+00, ptr %i.cf, align 8, !tbaa !204, !noalias !852
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bs, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i8 0, i64 16, i1 false), !noalias !852
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1080
  store ptr %i.bv, ptr %i.ch, align 8, !tbaa !208
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !209 ; 8 uses
  store ptr %i.bs, ptr %i.ci, align 8, !tbaa !209
  %.not.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN6casadi12RevWeakCacheINS0_2MXESt10shared_ptrINS0_8OptiNode11ValueHelperEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIbSaIbEE6resizeEmb.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 4 uses
  %i.cl = load atomic i64, ptr %i.ck acquire, align 8 ; 2 uses
  %i.cm = icmp eq i64 %i.cl, 4294967297
  %i.cn = trunc i64 %i.cl to i32                  ; 2 uses
  br i1 %i.cm, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.ck, align 8, !tbaa !193
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  store i32 0, ptr %i.co, align 4, !tbaa !194
  %i.cp = load ptr, ptr %i.cj, align 8, !tbaa !61
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8
  tail call void %i.cr(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #27, !inline_history !6
  %i.cs = load ptr, ptr %i.cj, align 8, !tbaa !61
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8
  tail call void %i.cu(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #27, !inline_history !6
  br label %_ZNSt12__shared_ptrIN6casadi12RevWeakCacheINS0_2MXESt10shared_ptrINS0_8OptiNode11ValueHelperEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.cv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i.i.i = icmp eq i8 %i.cv, 0
  br i1 %.not.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cw = add nsw i32 %i.cn, -1
  store i32 %i.cw, ptr %i.ck, align 8, !tbaa !178
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.cx = atomicrmw volatile add ptr %i.ck, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i = phi i32 [ %i.cn, %bb.v ], [ %i.cx, %bb.w ]
  %i.cy = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cy, label %bb.x, label %_ZNSt12__shared_ptrIN6casadi12RevWeakCacheINS0_2MXESt10shared_ptrINS0_8OptiNode11ValueHelperEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !170

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #27
  br label %_ZNSt12__shared_ptrIN6casadi12RevWeakCacheINS0_2MXESt10shared_ptrINS0_8OptiNode11ValueHelperEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6casadi12RevWeakCacheINS0_2MXESt10shared_ptrINS0_8OptiNode11ValueHelperEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.t, %_ZNSt6vectorIbSaIbEE6resizeEmb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 5 uses
  call void @_ZN6casadi17SparsityInterfaceINS_2MXEE6veccatERKSt6vectorIS1_SaIS1_EE(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %13, ptr noundef nonnull align 8 dereferenceable(24) %i.cz)
  invoke void @_ZN6casadi7vertcatERKNS_2MXES2_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.y unwind label %bb.ae

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN6casadi12RevWeakCacheINS0_2MXESt10shared_ptrINS0_8OptiNode11ValueHelperEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27, !noalias !853
  invoke void @_ZN6casadi2MX6symvarERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.11") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %.noexc unwind label %bb.af, !inline_history !171

.noexc:                                           ; preds = %bb.y
  invoke void @_ZNK6casadi8OptiNode4sortERKSt6vectorINS_2MXESaIS2_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.11") align 8 %14, ptr noundef nonnull align 8 dereferenceable(1248) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.z unwind label %bb.ab, !inline_history !171

bb.z:                                             ; preds = %.noexc
  %i.da = load ptr, ptr %1, align 8, !tbaa !172, !noalias !853 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !173, !noalias !853 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.da, %i.dc
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.z, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.i ], [ %i.da, %bb.z ] ; 2 uses
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i) #27, !inline_history !171
  %i.dd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i484 = icmp eq ptr %i.dd, %i.dc
  br i1 %.not.i.i.i.i484, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !4

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %1, align 8, !tbaa !172, !noalias !853
  br label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.z
  %i.de = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.da, %bb.z ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.de, null
  br i1 %.not.i.i1.i.i, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !174, !noalias !853
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = ptrtoint ptr %i.de to i64
  %i.dj = sub i64 %i.dh, %i.di
  call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef %i.dj) #28, !inline_history !171
  br label %bb.ac

bb.ab:                                            ; preds = %.noexc
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #27, !inline_history !171
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27, !noalias !853
  br label %.body

bb.ac:                                            ; preds = %bb.aa, %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27, !noalias !853
  %i.dl = load ptr, ptr %14, align 8, !tbaa !175  ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !175 ; 2 uses
  %.not1923 = icmp eq ptr %i.dl, %i.dn
  br i1 %.not1923, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ac
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  br label %bb.ag

._crit_edge:                                      ; preds = %bb.ai
  %.pre = load ptr, ptr %14, align 8, !tbaa !172  ; 3 uses
  %.pre1971 = load ptr, ptr %i.dm, align 8, !tbaa !173 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre1971
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.dq, %.lr.ph.i.i.i ], [ %.pre, %._crit_edge ] ; 2 uses
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i) #27
  %i.dq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i485 = icmp eq ptr %i.dq, %.pre1971
  br i1 %.not.i.i.i485, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !4

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %14, align 8, !tbaa !172
  br label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %bb.ac, %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %._crit_edge
  %i.dr = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %.pre, %._crit_edge ], [ %i.dl, %bb.ac ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.dr, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i
  %i.ds = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !174
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = ptrtoint ptr %i.dr to i64
  %i.dw = sub i64 %i.du, %i.dv
  call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.dw) #28
  br label %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit

_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit:       ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  invoke void @_ZNK6casadi8OptiNode13active_symvarENS_12VariableTypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.11") align 8 %15, ptr noundef nonnull align 8 dereferenceable(1248) %0, i32 noundef 0)
          to label %.preheader1908 unwind label %bb.ak

.preheader1908:                                   ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 7 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !173 ; 2 uses
  %i.dz = load ptr, ptr %15, align 8, !tbaa !172  ; 3 uses
  %.not1964 = icmp eq ptr %i.dy, %i.dz
  br i1 %.not1964, label %.preheader1907, label %.lr.ph1926

.lr.ph1926:                                       ; preds = %.preheader1908
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  br label %bb.al

bb.ae:                                            ; preds = %_ZNSt12__shared_ptrIN6casadi12RevWeakCacheINS0_2MXESt10shared_ptrINS0_8OptiNode11ValueHelperEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ec = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %bb.qg

bb.af:                                            ; preds = %bb.y
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ag:                                            ; preds = %.lr.ph, %bb.ai
  %.sroa.01836.01924 = phi ptr [ %i.dl, %.lr.ph ], [ %i.ey, %bb.ai ] ; 3 uses
  invoke void @_ZNK6casadi8OptiNode10assert_hasERKNS_2MXE(ptr noundef nonnull align 8 dereferenceable(1248) %0, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.01836.01924)
          to label %.noexc488 unwind label %bb.aj

.noexc488:                                        ; preds = %bb.ag
  %i.ee = invoke noundef ptr @_ZNK6casadi2MX3getEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.01836.01924)
          to label %.noexc489 unwind label %bb.aj ; 2 uses

.noexc489:                                        ; preds = %.noexc488
  %i.ef = load ptr, ptr %i.do, align 8, !tbaa !88 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ef, null
  br i1 %.not10.i.i.i.i, label %bb.ai, label %.lr.ph.i.i.i.i486

.lr.ph.i.i.i.i486:                                ; preds = %.noexc489, %.lr.ph.i.i.i.i486
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i486 ], [ %i.ef, %.noexc489 ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i486 ], [ %i.dp, %.noexc489 ]
  %i.eg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !161
  %i.ei = icmp ult ptr %i.eh, %i.ee               ; 2 uses
  %.19.i.i.i.i = select i1 %i.ei, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i = select i1 %i.ei, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !89 ; 2 uses
  %.not.i.i.i.i487 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i487, label %_ZNSt8_Rb_treeIPN6casadi6MXNodeESt4pairIKS2_NS0_7MetaVarEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i, label %.lr.ph.i.i.i.i486, !llvm.loop !7

_ZNSt8_Rb_treeIPN6casadi6MXNodeESt4pairIKS2_NS0_7MetaVarEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i486
  %i.ej = icmp eq ptr %.19.i.i.i.i, %i.dp
  br i1 %i.ej, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt8_Rb_treeIPN6casadi6MXNodeESt4pairIKS2_NS0_7MetaVarEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !161
  %i.em = icmp ult ptr %i.ee, %i.el
  %spec.select.i.i.i = select i1 %i.em, ptr %i.dp, ptr %.19.i.i.i.i
  br label %bb.ai

bb.ai:                                            ; preds = %.noexc489, %_ZNSt8_Rb_treeIPN6casadi6MXNodeESt4pairIKS2_NS0_7MetaVarEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i, %bb.ah
  %.sroa.0.0.i.i.i = phi ptr [ %i.dp, %.noexc489 ], [ %i.dp, %_ZNSt8_Rb_treeIPN6casadi6MXNodeESt4pairIKS2_NS0_7MetaVarEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i ], [ %spec.select.i.i.i, %bb.ah ]
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 112
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !184 ; 3 uses
  %i.ep = load ptr, ptr %i.bh, align 8, !tbaa !182
  %i.eq = sdiv i64 %i.eo, 64
  %i.er = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %i.eq
  %i.es = and i64 %i.eo, -9223372036854775745
  %i.et = icmp ugt i64 %i.es, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.et, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.er, i64 %storemerge.idx.i.i.i.i.i ; 2 uses
  %i.eu = and i64 %i.eo, 63
  %i.ev = shl nuw i64 1, %i.eu
  %i.ew = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !44
  %i.ex = or i64 %i.ew, %i.ev
  store i64 %i.ex, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !44
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.01836.01924, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ey, %i.dn
  br i1 %.not, label %._crit_edge, label %bb.ag

bb.aj:                                            ; preds = %.noexc488, %bb.ag
  %i.ez = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  br label %.body

.preheader1907:                                   ; preds = %bb.an, %.preheader1908
  %.lcssa1919 = phi ptr [ %i.dy, %.preheader1908 ], [ %i.fq, %bb.an ] ; 2 uses
  %.lcssa1917 = phi ptr [ %i.dz, %.preheader1908 ], [ %i.fr, %bb.an ] ; 2 uses
  %.not18971928 = icmp eq ptr %.lcssa1917, %.lcssa1919
  br i1 %.not18971928, label %._crit_edge1932, label %.lr.ph1931

.lr.ph1931:                                       ; preds = %.preheader1907
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 10 uses
  br label %bb.ap

bb.ak:                                            ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %bb.qf

bb.al:                                            ; preds = %.lr.ph1926, %bb.an
  %i.fd = phi ptr [ %i.dz, %.lr.ph1926 ], [ %i.fr, %bb.an ]
  %.02691925 = phi i64 [ 0, %.lr.ph1926 ], [ %i.fp, %bb.an ] ; 3 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %.02691925 ; 2 uses
  invoke void @_ZNK6casadi8OptiNode10assert_hasERKNS_2MXE(ptr noundef nonnull align 8 dereferenceable(1248) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.fe)
          to label %.noexc502 unwind label %bb.ao

.noexc502:                                        ; preds = %bb.al
  %i.ff = invoke noundef ptr @_ZNK6casadi2MX3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fe)
          to label %.noexc503 unwind label %bb.ao ; 2 uses

.noexc503:                                        ; preds = %.noexc502
  %i.fg = load ptr, ptr %i.ea, align 8, !tbaa !88 ; 2 uses
  %.not10.i.i.i.i490 = icmp eq ptr %i.fg, null
  br i1 %.not10.i.i.i.i490, label %bb.an, label %.lr.ph.i.i.i.i491

.lr.ph.i.i.i.i491:                                ; preds = %.noexc503, %.lr.ph.i.i.i.i491
  %.012.i.i.i.i492 = phi ptr [ %.1.i.i.i.i497, %.lr.ph.i.i.i.i491 ], [ %i.fg, %.noexc503 ] ; 3 uses
  %.0811.i.i.i.i493 = phi ptr [ %.19.i.i.i.i494, %.lr.ph.i.i.i.i491 ], [ %i.eb, %.noexc503 ]
  %i.fh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i492, i64 32
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !161
  %i.fj = icmp ult ptr %i.fi, %i.ff               ; 2 uses
  %.19.i.i.i.i494 = select i1 %i.fj, ptr %.0811.i.i.i.i493, ptr %.012.i.i.i.i492 ; 4 uses
  %.1.in.v.i.i.i.i495 = select i1 %i.fj, i64 24, i64 16
  %.1.in.i.i.i.i496 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i492, i64 %.1.in.v.i.i.i.i495
  %.1.i.i.i.i497 = load ptr, ptr %.1.in.i.i.i.i496, align 8, !tbaa !89 ; 2 uses
  %.not.i.i.i.i498 = icmp eq ptr %.1.i.i.i.i497, null
  br i1 %.not.i.i.i.i498, label %_ZNSt8_Rb_treeIPN6casadi6MXNodeESt4pairIKS2_NS0_7MetaVarEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i499, label %.lr.ph.i.i.i.i491, !llvm.loop !7

_ZNSt8_Rb_treeIPN6casadi6MXNodeESt4pairIKS2_NS0_7MetaVarEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i499: ; preds = %.lr.ph.i.i.i.i491
  %i.fk = icmp eq ptr %.19.i.i.i.i494, %i.eb
  br i1 %i.fk, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZNSt8_Rb_treeIPN6casadi6MXNodeESt4pairIKS2_NS0_7MetaVarEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i499
  %i.fl = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i494, i64 32
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !161
  %i.fn = icmp ult ptr %i.ff, %i.fm
  %spec.select.i.i.i500 = select i1 %i.fn, ptr %i.eb, ptr %.19.i.i.i.i494
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %_ZNSt8_Rb_treeIPN6casadi6MXNodeESt4pairIKS2_NS0_7MetaVarEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i499, %.noexc503
  %.sroa.0.0.i.i.i501 = phi ptr [ %i.eb, %.noexc503 ], [ %i.eb, %_ZNSt8_Rb_treeIPN6casadi6MXNodeESt4pairIKS2_NS0_7MetaVarEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i499 ], [ %spec.select.i.i.i500, %bb.am ]
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i501, i64 128
  store i64 %.02691925, ptr %i.fo, align 8, !tbaa !263
  %i.fp = add nuw nsw i64 %.02691925, 1           ; 2 uses
  %i.fq = load ptr, ptr %i.dx, align 8, !tbaa !173 ; 2 uses
  %i.fr = load ptr, ptr %15, align 8, !tbaa !172  ; 3 uses
  %i.fs = ptrtoint ptr %i.fq to i64
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = sub i64 %i.fs, %i.ft
  %i.fv = ashr exact i64 %i.fu, 3
  %i.fw = icmp ult i64 %i.fp, %i.fv
  br i1 %i.fw, label %bb.al, label %.preheader1907, !llvm.loop !836

bb.ao:                                            ; preds = %.noexc502, %bb.al
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %bb.qe

._crit_edge1932:                                  ; preds = %bb.at, %.preheader1907
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  invoke void @_ZNK6casadi8OptiNode13active_symvarENS_12VariableTypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.11") align 8 %16, ptr noundef nonnull align 8 dereferenceable(1248) %0, i32 noundef 1)
          to label %.preheader1906 unwind label %bb.av

.preheader1906:                                   ; preds = %._crit_edge1932
  %i.fy = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !173
  %i.ga = load ptr, ptr %16, align 8, !tbaa !172  ; 2 uses
  %.not1965 = icmp eq ptr %i.fz, %i.ga
  br i1 %.not1965, label %._crit_edge1935, label %.lr.ph1934

.lr.ph1934:                                       ; preds = %.preheader1906
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  br label %bb.aw

bb.ap:                                            ; preds = %.lr.ph1931, %bb.at
  %.02701930 = phi i64 [ 0, %.lr.ph1931 ], [ %i.gy, %bb.at ] ; 2 uses
  %.sroa.01830.01929 = phi ptr [ %.lcssa1917, %.lr.ph1931 ], [ %i.ha, %bb.at ] ; 6 uses
  invoke void @_ZNK6casadi8OptiNode10assert_hasERKNS_2MXE(ptr noundef nonnull align 8 dereferenceable(1248) %0, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.01830.01929)
          to label %.noexc517 unwind label %bb.au

.noexc517:                                        ; preds = %bb.ap
  %i.gd = invoke noundef ptr @_ZNK6casadi2MX3getEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.01830.01929)
          to label %.noexc518 unwind label %bb.au ; 2 uses

.noexc518:                                        ; preds = %.noexc517
  %i.ge = load ptr, ptr %i.fa, align 8, !tbaa !88 ; 2 uses
  %.not10.i.i.i.i505 = icmp eq ptr %i.ge, null
  br i1 %.not10.i.i.i.i505, label %bb.ar, label %.lr.ph.i.i.i.i506

.lr.ph.i.i.i.i506:                                ; preds = %.noexc518, %.lr.ph.i.i.i.i506
  %.012.i.i.i.i507 = phi ptr [ %.1.i.i.i.i512, %.lr.ph.i.i.i.i506 ], [ %i.ge, %.noexc518 ] ; 3 uses
  %.0811.i.i.i.i508 = phi ptr [ %.19.i.i.i.i509, %.lr.ph.i.i.i.i506 ], [ %i.fb, %.noexc518 ]
  %i.gf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i507, i64 32
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !161
  %i.gh = icmp ult ptr %i.gg, %i.gd               ; 2 uses
  %.19.i.i.i.i509 = select i1 %i.gh, ptr %.0811.i.i.i.i508, ptr %.012.i.i.i.i507 ; 4 uses
  %.1.in.v.i.i.i.i510 = select i1 %i.gh, i64 24, i64 16
  %.1.in.i.i.i.i511 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i507, i64 %.1.in.v.i.i.i.i510
  %.1.i.i.i.i512 = load ptr, ptr %.1.in.i.i.i.i511, align 8, !tbaa !89 ; 2 uses
  %.not.i.i.i.i513 = icmp eq ptr %.1.i.i.i.i512, null
  br i1 %.not.i.i.i.i513, label %_ZNSt8_Rb_treeIPN6casadi6MXNodeESt4pairIKS2_NS0_7MetaVarEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i514, label %.lr.ph.i.i.i.i506, !llvm.loop !7

_ZNSt8_Rb_treeIPN6casadi6MXNodeESt4pairIKS2_NS0_7MetaVarEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i514: ; preds = %.lr.ph.i.i.i.i506
  %i.gi = icmp eq ptr %.19.i.i.i.i509, %i.fb
  br i1 %i.gi, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt8_Rb_treeIPN6casadi6MXNodeESt4pairIKS2_NS0_7MetaVarEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i514
  %i.gj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i509, i64 32
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !161
  %i.gl = icmp ult ptr %i.gd, %i.gk
  %spec.select.i.i.i515 = select i1 %i.gl, ptr %i.fb, ptr %.19.i.i.i.i509
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %_ZNSt8_Rb_treeIPN6casadi6MXNodeESt4pairIKS2_NS0_7MetaVarEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i514, %.noexc518
  %.sroa.0.0.i.i.i516 = phi ptr [ %i.fb, %.noexc518 ], [ %i.fb, %_ZNSt8_Rb_treeIPN6casadi6MXNodeESt4pairIKS2_NS0_7MetaVarEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i514 ], [ %spec.select.i.i.i515, %bb.aq ]
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i516, i64 40
  store i64 %.02701930, ptr %i.gm, align 8, !tbaa !179
  %i.gn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.01830.01929)
          to label %.noexc520 unwind label %bb.au

.noexc520:                                        ; preds = %bb.ar
  %i.go = invoke noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gn)
          to label %_ZNK6casadi13GenericMatrixINS_2MXEE3nnzEv.exit unwind label %bb.au

_ZNK6casadi13GenericMatrixINS_2MXEE3nnzEv.exit:   ; preds = %.noexc520
  invoke void @_ZNK6casadi8OptiNode10assert_hasERKNS_2MXE(ptr noundef nonnull align 8 dereferenceable(1248) %0, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.01830.01929)
          to label %.noexc534 unwind label %bb.au

.noexc534:                                        ; preds = %_ZNK6casadi13GenericMatrixINS_2MXEE3nnzEv.exit
  %i.gp = invoke noundef ptr @_ZNK6casadi2MX3getEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.01830.01929)
          to label %.noexc535 unwind label %bb.au ; 2 uses

.noexc535:                                        ; preds = %.noexc534
  %i.gq = load ptr, ptr %i.fa, align 8, !tbaa !88 ; 2 uses
  %.not10.i.i.i.i522 = icmp eq ptr %i.gq, null
  br i1 %.not10.i.i.i.i522, label %bb.at, label %.lr.ph.i.i.i.i523

.lr.ph.i.i.i.i523:                                ; preds = %.noexc535, %.lr.ph.i.i.i.i523
  %.012.i.i.i.i524 = phi ptr [ %.1.i.i.i.i529, %.lr.ph.i.i.i.i523 ], [ %i.gq, %.noexc535 ] ; 3 uses
  %.0811.i.i.i.i525 = phi ptr [ %.19.i.i.i.i526, %.lr.ph.i.i.i.i523 ], [ %i.fb, %.noexc535 ]
  %i.gr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i524, i64 32
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !161
  %i.gt = icmp ult ptr %i.gs, %i.gp               ; 2 uses
  %.19.i.i.i.i526 = select i1 %i.gt, ptr %.0811.i.i.i.i525, ptr %.012.i.i.i.i524 ; 4 uses
  %.1.in.v.i.i.i.i527 = select i1 %i.gt, i64 24, i64 16
  %.1.in.i.i.i.i528 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i524, i64 %.1.in.v.i.i.i.i527
  %.1.i.i.i.i529 = load ptr, ptr %.1.in.i.i.i.i528, align 8, !tbaa !89 ; 2 uses
  %.not.i.i.i.i530 = icmp eq ptr %.1.i.i.i.i529, null
  br i1 %.not.i.i.i.i530, label %_ZNSt8_Rb_treeIPN6casadi6MXNodeESt4pairIKS2_NS0_7MetaVarEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i531, label %.lr.ph.i.i.i.i523, !llvm.loop !7

_ZNSt8_Rb_treeIPN6casadi6MXNodeESt4pairIKS2_NS0_7MetaVarEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i531: ; preds = %.lr.ph.i.i.i.i523
  %i.gu = icmp eq ptr %.19.i.i.i.i526, %i.fb
  br i1 %i.gu, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZNSt8_Rb_treeIPN6casadi6MXNodeESt4pairIKS2_NS0_7MetaVarEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i531
  %i.gv = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i526, i64 32
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !161
  %i.gx = icmp ult ptr %i.gp, %i.gw
  %spec.select.i.i.i532 = select i1 %i.gx, ptr %i.fb, ptr %.19.i.i.i.i526
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %_ZNSt8_Rb_treeIPN6casadi6MXNodeESt4pairIKS2_NS0_7MetaVarEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i531, %.noexc535
  %.sroa.0.0.i.i.i533 = phi ptr [ %i.fb, %.noexc535 ], [ %i.fb, %_ZNSt8_Rb_treeIPN6casadi6MXNodeESt4pairIKS2_NS0_7MetaVarEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i531 ], [ %spec.select.i.i.i532, %bb.as ]
  %i.gy = add nsw i64 %i.go, %.02701930           ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i533, i64 48
  store i64 %i.gy, ptr %i.gz, align 8, !tbaa !854
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.01830.01929, i64 8 ; 2 uses
  %.not1897 = icmp eq ptr %i.ha, %.lcssa1919
  br i1 %.not1897, label %._crit_edge1932, label %bb.ap

bb.au:                                            ; preds = %.noexc534, %_ZNK6casadi13GenericMatrixINS_2MXEE3nnzEv.exit, %.noexc520, %bb.ar, %.noexc517, %bb.ap
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %bb.qe

._crit_edge1935:                                  ; preds = %bb.ay, %.preheader1906
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  invoke void @_ZN6casadi17SparsityInterfaceINS_2MXEE6veccatERKSt6vectorIS1_SaIS1_EE(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %17, ptr noundef nonnull align 8 dereferenceable(24) %15)
          to label %_ZN6casadi6veccatERKSt6vectorINS_2MXESaIS1_EE.exit unwind label %bb.be

bb.av:                                            ; preds = %._crit_edge1932
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %bb.qd

bb.aw:                                            ; preds = %.lr.ph1934, %bb.ay
  %i.hd = phi ptr [ %i.ga, %.lr.ph1934 ], [ %i.hr, %bb.ay ]
  %.02731933 = phi i64 [ 0, %.lr.ph1934 ], [ %i.hp, %bb.ay ] ; 3 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %.02731933 ; 2 uses
  invoke void @_ZNK6casadi8OptiNode10assert_hasERKNS_2MXE(ptr noundef nonnull align 8 dereferenceable(1248) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.he)
          to label %.noexc550 unwind label %bb.az

.noexc550:                                        ; preds = %bb.aw
  %i.hf = invoke noundef ptr @_ZNK6casadi2MX3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.he)
          to label %.noexc551 unwind label %bb.az ; 2 uses

.noexc551:                                        ; preds = %.noexc550
  %i.hg = load ptr, ptr %i.gb, align 8, !tbaa !88 ; 2 uses
  %.not10.i.i.i.i538 = icmp eq ptr %i.hg, null
  br i1 %.not10.i.i.i.i538, label %bb.ay, label %.lr.ph.i.i.i.i539

.lr.ph.i.i.i.i539:                                ; preds = %.noexc551, %.lr.ph.i.i.i.i539
  %.012.i.i.i.i540 = phi ptr [ %.1.i.i.i.i545, %.lr.ph.i.i.i.i539 ], [ %i.hg, %.noexc551 ] ; 3 uses
  %.0811.i.i.i.i541 = phi ptr [ %.19.i.i.i.i542, %.lr.ph.i.i.i.i539 ], [ %i.gc, %.noexc551 ]
  %i.hh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i540, i64 32
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !161
  %i.hj = icmp ult ptr %i.hi, %i.hf               ; 2 uses
  %.19.i.i.i.i542 = select i1 %i.hj, ptr %.0811.i.i.i.i541, ptr %.012.i.i.i.i540 ; 4 uses
  %.1.in.v.i.i.i.i543 = select i1 %i.hj, i64 24, i64 16
  %.1.in.i.i.i.i544 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i540, i64 %.1.in.v.i.i.i.i543
  %.1.i.i.i.i545 = load ptr, ptr %.1.in.i.i.i.i544, align 8, !tbaa !89 ; 2 uses
  %.not.i.i.i.i546 = icmp eq ptr %.1.i.i.i.i545, null
  br i1 %.not.i.i.i.i546, label %_ZNSt8_Rb_treeIPN6casadi6MXNodeESt4pairIKS2_NS0_7MetaVarEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i547, label %.lr.ph.i.i.i.i539, !llvm.loop !7

_ZNSt8_Rb_treeIPN6casadi6MXNodeESt4pairIKS2_NS0_7MetaVarEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i547: ; preds = %.lr.ph.i.i.i.i539
  %i.hk = icmp eq ptr %.19.i.i.i.i542, %i.gc
  br i1 %i.hk, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt8_Rb_treeIPN6casadi6MXNodeESt4pairIKS2_NS0_7MetaVarEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i547
  %i.hl = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i542, i64 32
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !161
  %i.hn = icmp ult ptr %i.hf, %i.hm
  %spec.select.i.i.i548 = select i1 %i.hn, ptr %i.gc, ptr %.19.i.i.i.i542
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %_ZNSt8_Rb_treeIPN6casadi6MXNodeESt4pairIKS2_NS0_7MetaVarEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i547, %.noexc551
  %.sroa.0.0.i.i.i549 = phi ptr [ %i.gc, %.noexc551 ], [ %i.gc, %_ZNSt8_Rb_treeIPN6casadi6MXNodeESt4pairIKS2_NS0_7MetaVarEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i547 ], [ %spec.select.i.i.i548, %bb.ax ]
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i549, i64 128
  store i64 %.02731933, ptr %i.ho, align 8, !tbaa !263
  %i.hp = add nuw nsw i64 %.02731933, 1           ; 2 uses
  %i.hq = load ptr, ptr %i.fy, align 8, !tbaa !173
  %i.hr = load ptr, ptr %16, align 8, !tbaa !172  ; 2 uses
  %i.hs = ptrtoint ptr %i.hq to i64
  %i.ht = ptrtoint ptr %i.hr to i64
  %i.hu = sub i64 %i.hs, %i.ht
  %i.hv = ashr exact i64 %i.hu, 3
  %i.hw = icmp ult i64 %i.hp, %i.hv
  br i1 %i.hw, label %bb.aw, label %._crit_edge1935, !llvm.loop !837

bb.az:                                            ; preds = %.noexc550, %bb.aw
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %bb.qc

_ZN6casadi6veccatERKSt6vectorINS_2MXESaIS1_EE.exit: ; preds = %._crit_edge1935
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  %i.hz = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  store ptr %i.hz, ptr %18, align 8, !tbaa !42
  store i8 120, ptr %i.hz, align 8, !tbaa !47
  %i.ia = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 1, ptr %i.ia, align 8, !tbaa !48
  %i.ib = getelementptr inbounds nuw i8, ptr %18, i64 17
  store i8 0, ptr %i.ib, align 1, !tbaa !47
  %i.ic = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi2MXESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.hy, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.ba unwind label %bb.bf

bb.ba:                                            ; preds = %_ZN6casadi6veccatERKSt6vectorINS_2MXESaIS1_EE.exit
  %i.id = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.ic, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %_ZN6casadi2MXaSERKS0_.exit unwind label %bb.bf ; 0 uses

_ZN6casadi2MXaSERKS0_.exit:                       ; preds = %bb.ba
  %i.ie = load ptr, ptr %18, align 8, !tbaa !46   ; 2 uses
  %i.if = icmp eq ptr %i.ie, %i.hz
  br i1 %i.if, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit557, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i555

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i555: ; preds = %_ZN6casadi2MXaSERKS0_.exit
  %i.ig = load i64, ptr %i.hz, align 8, !tbaa !47
  %i.ih = add i64 %i.ig, 1
  call void @_ZdlPvm(ptr noundef %i.ie, i64 noundef %i.ih) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit557

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit557: ; preds = %_ZN6casadi2MXaSERKS0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i555
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  invoke void @_ZN6casadi17SparsityInterfaceINS_2MXEE6veccatERKSt6vectorIS1_SaIS1_EE(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %19, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %_ZN6casadi6veccatERKSt6vectorINS_2MXESaIS1_EE.exit559 unwind label %bb.bh

_ZN6casadi6veccatERKSt6vectorINS_2MXESaIS1_EE.exit559: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit557
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #27
  %i.ii = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 6 uses
  store ptr %i.ii, ptr %20, align 8, !tbaa !42
  store i8 112, ptr %i.ii, align 8, !tbaa !47
  %i.ij = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 1, ptr %i.ij, align 8, !tbaa !48
  %i.ik = getelementptr inbounds nuw i8, ptr %20, i64 17
  store i8 0, ptr %i.ik, align 1, !tbaa !47
  %i.il = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi2MXESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.hy, ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %bb.bb unwind label %bb.bi

bb.bb:                                            ; preds = %_ZN6casadi6veccatERKSt6vectorINS_2MXESaIS1_EE.exit559
  %i.im = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.il, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %_ZN6casadi2MXaSERKS0_.exit565 unwind label %bb.bi ; 0 uses

_ZN6casadi2MXaSERKS0_.exit565:                    ; preds = %bb.bb
  %i.in = load ptr, ptr %20, align 8, !tbaa !46   ; 2 uses
  %i.io = icmp eq ptr %i.in, %i.ii
  br i1 %i.io, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit568, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i566

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i566: ; preds = %_ZN6casadi2MXaSERKS0_.exit565
  %i.ip = load i64, ptr %i.ii, align 8, !tbaa !47
  %i.iq = add i64 %i.ip, 1
  call void @_ZdlPvm(ptr noundef %i.in, i64 noundef %i.iq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit568

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit568: ; preds = %_ZN6casadi2MXaSERKS0_.exit565, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i566
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #27
  invoke void @_ZN6casadi17SparsityInterfaceINS_2MXEE6veccatERKSt6vectorIS1_SaIS1_EE(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %21, ptr noundef nonnull align 8 dereferenceable(24) %15)
          to label %_ZN6casadi6veccatERKSt6vectorINS_2MXESaIS1_EE.exit570 unwind label %bb.bk

_ZN6casadi6veccatERKSt6vectorINS_2MXESaIS1_EE.exit570: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit568
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #27
  %i.is = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 6 uses
  store ptr %i.is, ptr %22, align 8, !tbaa !42
  store i8 120, ptr %i.is, align 8, !tbaa !47
  %i.it = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 1, ptr %i.it, align 8, !tbaa !48
  %i.iu = getelementptr inbounds nuw i8, ptr %22, i64 17
  store i8 0, ptr %i.iu, align 1, !tbaa !47
  %i.iv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi2MXESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.ir, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %bb.bc unwind label %bb.bl

bb.bc:                                            ; preds = %_ZN6casadi6veccatERKSt6vectorINS_2MXESaIS1_EE.exit570
  %i.iw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.iv, ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %_ZN6casadi2MXaSERKS0_.exit576 unwind label %bb.bl ; 0 uses

_ZN6casadi2MXaSERKS0_.exit576:                    ; preds = %bb.bc
  %i.ix = load ptr, ptr %22, align 8, !tbaa !46   ; 2 uses
  %i.iy = icmp eq ptr %i.ix, %i.is
  br i1 %i.iy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit579, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i577

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i577: ; preds = %_ZN6casadi2MXaSERKS0_.exit576
  %i.iz = load i64, ptr %i.is, align 8, !tbaa !47
  %i.ja = add i64 %i.iz, 1
  call void @_ZdlPvm(ptr noundef %i.ix, i64 noundef %i.ja) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit579

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit579: ; preds = %_ZN6casadi2MXaSERKS0_.exit576, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i577
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #27
  invoke void @_ZN6casadi17SparsityInterfaceINS_2MXEE6veccatERKSt6vectorIS1_SaIS1_EE(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %23, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %_ZN6casadi6veccatERKSt6vectorINS_2MXESaIS1_EE.exit581 unwind label %bb.bn

_ZN6casadi6veccatERKSt6vectorINS_2MXESaIS1_EE.exit581: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit579
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #27
  %i.jb = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 6 uses
  store ptr %i.jb, ptr %24, align 8, !tbaa !42
  store i8 112, ptr %i.jb, align 8, !tbaa !47
  %i.jc = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 1, ptr %i.jc, align 8, !tbaa !48
  %i.jd = getelementptr inbounds nuw i8, ptr %24, i64 17
  store i8 0, ptr %i.jd, align 1, !tbaa !47
  %i.je = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi2MXESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.ir, ptr noundef nonnull align 8 dereferenceable(32) %24)
          to label %bb.bd unwind label %bb.bo

bb.bd:                                            ; preds = %_ZN6casadi6veccatERKSt6vectorINS_2MXESaIS1_EE.exit581
  %i.jf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.je, ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %_ZN6casadi2MXaSERKS0_.exit587 unwind label %bb.bo ; 0 uses

_ZN6casadi2MXaSERKS0_.exit587:                    ; preds = %bb.bd
end_hunk_0
