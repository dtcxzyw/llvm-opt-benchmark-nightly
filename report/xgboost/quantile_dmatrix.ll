Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/quantile_dmatrix?download=true
inline.NumInlined: 3179
inline.NumDeleted: 1558
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0_@"_ZN7xgboost4data8cpu_impl11DispatchAnyILb1ESt10shared_ptrZZNS1_12GetDataShapeEPKNS_7ContextEPNS0_12DMatrixProxyEPNS0_13DataIterProxyIFvPvEFiSA_EEEfPNS0_16ExternalDataInfoEENK3$_0clEvEUlRKT_E_EEDcS6_St3anyOT1_Pb":bb.a
bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #10, !noalias !791
  invoke void %i.aa(i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %53)
          to label %bb.k unwind label %bb.l, !noalias !791

bb.k:                                             ; preds = %bb.j
  %i.ac = load ptr, ptr %53, align 8, !tbaa !52, !noalias !791
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #10, !noalias !791
  br label %_ZNKSt3any4typeEv.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #28, !noalias !791
  unreachable

_ZNKSt3any4typeEv.exit.i.i.i:                     ; preds = %bb.k, %bb.i
  %.0.i.i.i.i = phi ptr [ %i.ac, %bb.k ], [ @_ZTIv, %bb.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !102, !noalias !791 ; 3 uses
  %i.ah = icmp eq ptr %i.ag, @_ZTSSt10shared_ptrIN7xgboost4data12DenseAdapterEE
  br i1 %i.ah, label %_ZSt8any_castISt10shared_ptrIN7xgboost4data12DenseAdapterEEEPT_PSt3any.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNKSt3any4typeEv.exit.i.i.i
  %i.ai = load i8, ptr %i.ag, align 1, !tbaa !52, !noalias !791
  %.not.i4.i.i.i = icmp eq i8 %i.ai, 42
  br i1 %.not.i4.i.i.i, label %_ZSt8any_castISt10shared_ptrIN7xgboost4data12DenseAdapterEEEPT_PSt3any.exit.thread.i, label %_ZNKSt9type_infoeqERKS_.exit.i.i.i

_ZNKSt9type_infoeqERKS_.exit.i.i.i:               ; preds = %bb.m
  %i.aj = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ag, ptr noundef nonnull dereferenceable(46) @_ZTSSt10shared_ptrIN7xgboost4data12DenseAdapterEE) #10, !noalias !791
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_ZSt8any_castISt10shared_ptrIN7xgboost4data12DenseAdapterEEEPT_PSt3any.exit.i, label %_ZSt8any_castISt10shared_ptrIN7xgboost4data12DenseAdapterEEEPT_PSt3any.exit.thread.i

_ZSt8any_castISt10shared_ptrIN7xgboost4data12DenseAdapterEEEPT_PSt3any.exit.i: ; preds = %_ZNKSt9type_infoeqERKS_.exit.i.i.i, %_ZNKSt3any4typeEv.exit.i.i.i, %"_ZZN7xgboost4data8cpu_impl11DispatchAnyILb1ESt10shared_ptrZZNS1_12GetDataShapeEPKNS_7ContextEPNS0_12DMatrixProxyEPNS0_13DataIterProxyIFvPvEFiSA_EEEfPNS0_16ExternalDataInfoEENK3$_0clEvEUlRKT_E_EEDcS6_St3anyOT1_PbENKUlvE_clEv.exit"
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !52, !noalias !791 ; 3 uses
  %.not.i26 = icmp eq ptr %i.am, null
  br i1 %.not.i26, label %_ZSt8any_castISt10shared_ptrIN7xgboost4data12DenseAdapterEEEPT_PSt3any.exit.thread.i, label %bb.n

bb.n:                                             ; preds = %_ZSt8any_castISt10shared_ptrIN7xgboost4data12DenseAdapterEEEPT_PSt3any.exit.i
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !105, !noalias !791 ; 3 uses
  store ptr %i.an, ptr %56, align 8, !tbaa !105, !alias.scope !791
  %i.ao = getelementptr inbounds nuw i8, ptr %56, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !55, !noalias !791 ; 3 uses
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !55, !alias.scope !791
  %.not.i.i.i3.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i3.i, label %_ZSt8any_castISt10shared_ptrIN7xgboost4data12DenseAdapterEEET_RSt3any.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 3 uses
  %i.as = load i8, ptr @__libc_single_threaded, align 1, !tbaa !52, !noalias !791
  %.not.i.i.i.i.i = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !24, !noalias !791
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr %i.ar, align 4, !tbaa !24, !noalias !791
  br label %_ZSt8any_castISt10shared_ptrIN7xgboost4data12DenseAdapterEEET_RSt3any.exit

bb.q:                                             ; preds = %bb.o
  %i.av = atomicrmw volatile add ptr %i.ar, i32 1 acq_rel, align 4, !noalias !791 ; 0 uses
  %.pre163 = load ptr, ptr %56, align 8, !tbaa !105
  br label %_ZSt8any_castISt10shared_ptrIN7xgboost4data12DenseAdapterEEET_RSt3any.exit

_ZSt8any_castISt10shared_ptrIN7xgboost4data12DenseAdapterEEEPT_PSt3any.exit.thread.i: ; preds = %_ZSt8any_castISt10shared_ptrIN7xgboost4data12DenseAdapterEEEPT_PSt3any.exit.i, %_ZNKSt9type_infoeqERKS_.exit.i.i.i, %bb.m
  call void @_ZSt20__throw_bad_any_castv() #29, !noalias !791
  unreachable

_ZSt8any_castISt10shared_ptrIN7xgboost4data12DenseAdapterEEET_RSt3any.exit: ; preds = %bb.n, %bb.p, %bb.q
  %i.aw = phi ptr [ %i.an, %bb.n ], [ %i.an, %bb.p ], [ %.pre163, %bb.q ] ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !43
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = invoke noundef nonnull align 8 dereferenceable(24) ptr %i.az(ptr noundef nonnull align 8 dereferenceable(56) %i.aw)
          to label %bb.r unwind label %bb.ax      ; 3 uses

bb.r:                                             ; preds = %_ZSt8any_castISt10shared_ptrIN7xgboost4data12DenseAdapterEEET_RSt3any.exit
  %.sroa.0.0.copyload = load ptr, ptr %i.ba, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 12 uses
  %i.bb = load ptr, ptr %i.ao, align 8, !tbaa !55 ; 8 uses
  %.not.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7xgboost4data12DenseAdapterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 4 uses
  %i.bd = load atomic i64, ptr %i.bc acquire, align 8 ; 2 uses
  %i.be = icmp eq i64 %i.bd, 4294967297
  %i.bf = trunc i64 %i.bd to i32                  ; 2 uses
  br i1 %i.be, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.bc, align 8, !tbaa !58
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  store i32 0, ptr %i.bg, align 4, !tbaa !59
  %i.bh = load ptr, ptr %i.bb, align 8, !tbaa !43
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #10, !inline_history !8
  %i.bk = load ptr, ptr %i.bb, align 8, !tbaa !43
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #10, !inline_history !8
  br label %_ZNSt12__shared_ptrIN7xgboost4data12DenseAdapterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !52
  %.not.i.i.i = icmp eq i8 %i.bn, 0
  br i1 %.not.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bo = add nsw i32 %i.bf, -1
  store i32 %i.bo, ptr %i.bc, align 8, !tbaa !24
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.bp = atomicrmw volatile add ptr %i.bc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i27 = phi i32 [ %i.bf, %bb.v ], [ %i.bp, %bb.w ]
  %i.bq = icmp eq i32 %.0.i.i.i.i27, 1
  br i1 %i.bq, label %bb.x, label %_ZNSt12__shared_ptrIN7xgboost4data12DenseAdapterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !32

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #10
  br label %_ZNSt12__shared_ptrIN7xgboost4data12DenseAdapterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7xgboost4data12DenseAdapterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.r, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #10
  %i.br = load ptr, ptr %2, align 8, !tbaa !793, !nonnull !53, !align !54
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !23
  %i.bt = call noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084) %i.bs) ; 5 uses
  %i.bu = sext i32 %i.bt to i64                   ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !794, !nonnull !53, !align !54 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !84 ; 2 uses
  %i.ca = load ptr, ptr %i.bx, align 8, !tbaa !83 ; 2 uses
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.cb, %i.cc                    ; 4 uses
  %i.ce = ashr exact i64 %i.cd, 3                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #10
  call void @_ZN7xgboost16HostDeviceVectorImEC1EmmNS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(25) %52, i64 noundef 0, i64 noundef 0, i32 -65536)
  %i.cf = getelementptr inbounds nuw i8, ptr %52, i64 8 ; 2 uses
  %.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %52, i64 24 ; 2 uses
  store i8 0, ptr %i.cg, align 8
  store i64 %i.bu, ptr %i.cf, align 8
  store i64 %i.ce, ptr %.ptr.i.i.i, align 8
  %i.ch = mul i64 %i.ce, %i.bu
  invoke void @_ZN7xgboost16HostDeviceVectorImE6ResizeEm(ptr noundef nonnull align 8 dereferenceable(25) %52, i64 noundef %i.ch)
          to label %_ZN7xgboost6linalg6TensorImLi2EEC2ImLi2EEERAT0__KT_NS_9DeviceOrdENS0_5OrderE.exit.i unwind label %bb.y

common.resume:                                    ; preds = %bb.d, %bb.ax, %bb.dp, %bb.fu, %.body322, %bb.lp, %bb.ek, %bb.ft, %bb.bs, %.body.i58, %bb.y, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn.pn.i116, %bb.ft ], [ %.pn.pn.pn.pn.i, %.body.i ], [ %.pn.pn.pn.pn.i54, %.body.i58 ], [ %i.ci, %bb.y ], [ %i.lj, %bb.bs ], [ %i.vb, %bb.ek ], [ %i.iq, %bb.ax ], [ %i.si, %bb.dp ], [ %i.aad, %bb.fu ], [ %.pn.pn, %.body322 ], [ %i.bam, %bb.lp ], [ %i.p, %bb.d ]
  resume { ptr, i32 } %common.resume.op

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN7xgboost4data12DenseAdapterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7xgboost16HostDeviceVectorImED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(25) %52) #10
  br label %common.resume

_ZN7xgboost6linalg6TensorImLi2EEC2ImLi2EEERAT0__KT_NS_9DeviceOrdENS0_5OrderE.exit.i: ; preds = %_ZNSt12__shared_ptrIN7xgboost4data12DenseAdapterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  invoke void @_ZN7xgboost16HostDeviceVectorImE4FillEm(ptr noundef nonnull align 8 dereferenceable(8) %52, i64 noundef 0)
          to label %bb.z unwind label %bb.aw

bb.z:                                             ; preds = %_ZN7xgboost6linalg6TensorImLi2EEC2ImLi2EEERAT0__KT_NS_9DeviceOrdENS0_5OrderE.exit.i
  %i.cj = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN7xgboost16HostDeviceVectorImE10HostVectorEv(ptr noundef nonnull align 8 dereferenceable(25) %52)
          to label %.noexc.i unwind label %bb.aw

.noexc.i:                                         ; preds = %bb.z
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !83, !noalias !795 ; 9 uses
  %i.cl = load i8, ptr %i.cg, align 8, !tbaa !799, !noalias !795
  %i.cm = load i64, ptr %.ptr.i.i.i, align 8, !tbaa !44, !noalias !795
  switch i8 %i.cl, label %bb.ab [
    i8 0, label %bb.ac
    i8 1, label %bb.aa
  ]

bb.aa:                                            ; preds = %.noexc.i
  %i.cn = load i64, ptr %i.cf, align 8, !tbaa !44, !noalias !795
  br label %bb.ac

bb.ab:                                            ; preds = %.noexc.i
  call void @_ZSt9terminatev() #28, !noalias !795
  unreachable

bb.ac:                                            ; preds = %bb.aa, %.noexc.i
  %.sroa.6.0.i = phi i64 [ %i.cn, %bb.aa ], [ 1, %.noexc.i ] ; 10 uses
  %.sroa.0.0.i = phi i64 [ 1, %bb.aa ], [ %i.cm, %.noexc.i ] ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !800, !nonnull !53, !align !222 ; 8 uses
  %i.cq = icmp eq i32 %i.bt, 1
  br i1 %i.cq, label %.preheader.i.i, label %bb.ai

.preheader.i.i:                                   ; preds = %bb.ac
  %.not170.i.i = icmp eq i64 %.sroa.6.0.copyload, 0
  %i.cr = icmp eq i64 %.sroa.7.0.copyload, 0
  %or.cond = select i1 %.not170.i.i, i1 true, i1 %i.cr
  br i1 %or.cond, label %"_ZN7xgboost6common11ParallelForImZZZNS_4data8cpu_impl12GetDataShapeEPKNS_7ContextEPNS2_12DMatrixProxyEPNS2_13DataIterProxyIFvPvEFiSA_EEEfPNS2_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS2_17DenseAdapterBatchEEEDaSK_EUlSI_E_EEvSI_iNS0_5SchedEOT0_.exit.i", label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.preheader.i.i
  %.pre10.i.i.i.pre = load float, ptr %i.cp, align 4
  %xtraiter556 = and i64 %.sroa.7.0.copyload, 1
  %i.cs = icmp eq i64 %.sroa.7.0.copyload, 1
  %unroll_iter562 = and i64 %.sroa.7.0.copyload, -2
  %lcmp.mod559.not.a = icmp eq i64 %xtraiter556, 0
  %lcmp.mod561 = trunc i64 %.sroa.7.0.copyload to i1
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %"_ZZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS_7ContextEPNS0_12DMatrixProxyEPNS0_13DataIterProxyIFvPvEFiS8_EEEfPNS0_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS0_17DenseAdapterBatchEEEDaSI_ENKUlSG_E_clImEEDaSG_.exit.i.i"
  %.pre10.i.i.i = phi float [ %.pre10.i.i.i167.lcssa, %"_ZZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS_7ContextEPNS0_12DMatrixProxyEPNS0_13DataIterProxyIFvPvEFiS8_EEEfPNS0_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS0_17DenseAdapterBatchEEEDaSI_ENKUlSG_E_clImEEDaSG_.exit.i.i" ], [ %.pre10.i.i.i.pre, %.lr.ph.i.i.i.preheader ] ; 4 uses
  %.049162.i.i = phi i64 [ %i.eb, %"_ZZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS_7ContextEPNS0_12DMatrixProxyEPNS0_13DataIterProxyIFvPvEFiS8_EEEfPNS0_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS0_17DenseAdapterBatchEEEDaSI_ENKUlSG_E_clImEEDaSG_.exit.i.i" ], [ 0, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.ct = mul i64 %.049162.i.i, %.sroa.7.0.copyload
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.ct ; 3 uses
  br i1 %i.cs, label %.epil.preheader555, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i, %bb.ag
  %.pre10.i.i.i168 = phi float [ %.pre10.i.i.i167.1, %bb.ag ], [ %.pre10.i.i.i, %.lr.ph.i.i.i ]
  %i.cv = phi float [ %i.dq, %bb.ag ], [ %.pre10.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %.09.i.i.i = phi i64 [ %i.dr, %bb.ag ], [ 0, %.lr.ph.i.i.i ] ; 4 uses
  %niter563 = phi i64 [ %niter563.next.1, %bb.ag ], [ 0, %.lr.ph.i.i.i ]
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %.09.i.i.i
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !223, !noalias !801 ; 2 uses
  %i.cy = fcmp ord float %i.cx, 0.000000e+00
  %i.cz = fcmp une float %i.cx, %i.cv
  %i.da = select i1 %i.cy, i1 %i.cz, i1 false
  br i1 %i.da, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.i.i.i.new
  %i.db = mul i64 %.09.i.i.i, %.sroa.6.0.i
  %i.dc = getelementptr [8 x i8], ptr %i.ck, i64 %i.db ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !44
  %i.de = add i64 %i.dd, 1
  store i64 %i.de, ptr %i.dc, align 8, !tbaa !44
  %.pre.i.i.i = load float, ptr %i.cp, align 4    ; 2 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.lr.ph.i.i.i.new
  %.pre10.i.i.i167 = phi float [ %.pre.i.i.i, %bb.ad ], [ %.pre10.i.i.i168, %.lr.ph.i.i.i.new ]
  %i.df = phi float [ %.pre.i.i.i, %bb.ad ], [ %i.cv, %.lr.ph.i.i.i.new ] ; 2 uses
  %i.dg = or disjoint i64 %.09.i.i.i, 1           ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.dg
  %i.di = load float, ptr %i.dh, align 4, !tbaa !223, !noalias !801 ; 2 uses
  %i.dj = fcmp ord float %i.di, 0.000000e+00
  %i.dk = fcmp une float %i.di, %i.df
  %i.dl = select i1 %i.dj, i1 %i.dk, i1 false
  br i1 %i.dl, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dm = mul i64 %i.dg, %.sroa.6.0.i
  %i.dn = getelementptr [8 x i8], ptr %i.ck, i64 %i.dm ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !44
  %i.dp = add i64 %i.do, 1
  store i64 %i.dp, ptr %i.dn, align 8, !tbaa !44
  %.pre.i.i.i.1 = load float, ptr %i.cp, align 4  ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pre10.i.i.i167.1 = phi float [ %.pre.i.i.i.1, %bb.af ], [ %.pre10.i.i.i167, %bb.ae ] ; 3 uses
  %i.dq = phi float [ %.pre.i.i.i.1, %bb.af ], [ %i.df, %bb.ae ] ; 2 uses
  %i.dr = add nuw i64 %.09.i.i.i, 2               ; 2 uses
  %niter563.next.1 = add nuw i64 %niter563, 2     ; 2 uses
  %niter563.ncmp.1 = icmp eq i64 %niter563.next.1, %unroll_iter562
  br i1 %niter563.ncmp.1, label %"_ZZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS_7ContextEPNS0_12DMatrixProxyEPNS0_13DataIterProxyIFvPvEFiS8_EEEfPNS0_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS0_17DenseAdapterBatchEEEDaSI_ENKUlSG_E_clImEEDaSG_.exit.i.i.unr-lcssa", label %.lr.ph.i.i.i.new, !llvm.loop !693

"_ZZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS_7ContextEPNS0_12DMatrixProxyEPNS0_13DataIterProxyIFvPvEFiS8_EEEfPNS0_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS0_17DenseAdapterBatchEEEDaSI_ENKUlSG_E_clImEEDaSG_.exit.i.i.unr-lcssa": ; preds = %bb.ag
  br i1 %lcmp.mod559.not.a, label %"_ZZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS_7ContextEPNS0_12DMatrixProxyEPNS0_13DataIterProxyIFvPvEFiS8_EEEfPNS0_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS0_17DenseAdapterBatchEEEDaSI_ENKUlSG_E_clImEEDaSG_.exit.i.i", label %.epil.preheader555

.epil.preheader555:                               ; preds = %"_ZZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS_7ContextEPNS0_12DMatrixProxyEPNS0_13DataIterProxyIFvPvEFiS8_EEEfPNS0_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS0_17DenseAdapterBatchEEEDaSI_ENKUlSG_E_clImEEDaSG_.exit.i.i.unr-lcssa", %.lr.ph.i.i.i
  %.pre10.i.i.i168.epil.init = phi float [ %.pre10.i.i.i, %.lr.ph.i.i.i ], [ %.pre10.i.i.i167.1, %"_ZZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS_7ContextEPNS0_12DMatrixProxyEPNS0_13DataIterProxyIFvPvEFiS8_EEEfPNS0_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS0_17DenseAdapterBatchEEEDaSI_ENKUlSG_E_clImEEDaSG_.exit.i.i.unr-lcssa" ]
  %.epil.init558 = phi float [ %.pre10.i.i.i, %.lr.ph.i.i.i ], [ %i.dq, %"_ZZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS_7ContextEPNS0_12DMatrixProxyEPNS0_13DataIterProxyIFvPvEFiS8_EEEfPNS0_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS0_17DenseAdapterBatchEEEDaSI_ENKUlSG_E_clImEEDaSG_.exit.i.i.unr-lcssa" ]
  %.09.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.dr, %"_ZZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS_7ContextEPNS0_12DMatrixProxyEPNS0_13DataIterProxyIFvPvEFiS8_EEEfPNS0_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS0_17DenseAdapterBatchEEEDaSI_ENKUlSG_E_clImEEDaSG_.exit.i.i.unr-lcssa" ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod561)
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %.09.i.i.i.epil.init
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !223, !noalias !801 ; 2 uses
  %i.du = fcmp ord float %i.dt, 0.000000e+00
  %i.dv = fcmp une float %i.dt, %.epil.init558
  %i.dw = select i1 %i.du, i1 %i.dv, i1 false
  br i1 %i.dw, label %bb.ah, label %"_ZZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS_7ContextEPNS0_12DMatrixProxyEPNS0_13DataIterProxyIFvPvEFiS8_EEEfPNS0_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS0_17DenseAdapterBatchEEEDaSI_ENKUlSG_E_clImEEDaSG_.exit.i.i"

bb.ah:                                            ; preds = %.epil.preheader555
  %i.dx = mul i64 %.09.i.i.i.epil.init, %.sroa.6.0.i
  %i.dy = getelementptr [8 x i8], ptr %i.ck, i64 %i.dx ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !44
  %i.ea = add i64 %i.dz, 1
  store i64 %i.ea, ptr %i.dy, align 8, !tbaa !44
  %.pre.i.i.i.epil = load float, ptr %i.cp, align 4
  br label %"_ZZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS_7ContextEPNS0_12DMatrixProxyEPNS0_13DataIterProxyIFvPvEFiS8_EEEfPNS0_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS0_17DenseAdapterBatchEEEDaSI_ENKUlSG_E_clImEEDaSG_.exit.i.i"

"_ZZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS_7ContextEPNS0_12DMatrixProxyEPNS0_13DataIterProxyIFvPvEFiS8_EEEfPNS0_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS0_17DenseAdapterBatchEEEDaSI_ENKUlSG_E_clImEEDaSG_.exit.i.i": ; preds = %.epil.preheader555, %bb.ah, %"_ZZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS_7ContextEPNS0_12DMatrixProxyEPNS0_13DataIterProxyIFvPvEFiS8_EEEfPNS0_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS0_17DenseAdapterBatchEEEDaSI_ENKUlSG_E_clImEEDaSG_.exit.i.i.unr-lcssa"
  %.pre10.i.i.i167.lcssa = phi float [ %.pre10.i.i.i167.1, %"_ZZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS_7ContextEPNS0_12DMatrixProxyEPNS0_13DataIterProxyIFvPvEFiS8_EEEfPNS0_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS0_17DenseAdapterBatchEEEDaSI_ENKUlSG_E_clImEEDaSG_.exit.i.i.unr-lcssa" ], [ %.pre.i.i.i.epil, %bb.ah ], [ %.pre10.i.i.i168.epil.init, %.epil.preheader555 ]
  %i.eb = add nuw i64 %.049162.i.i, 1             ; 2 uses
  %exitcond189.not.i.i = icmp eq i64 %i.eb, %.sroa.6.0.copyload
  br i1 %exitcond189.not.i.i, label %"_ZN7xgboost6common11ParallelForImZZZNS_4data8cpu_impl12GetDataShapeEPKNS_7ContextEPNS2_12DMatrixProxyEPNS2_13DataIterProxyIFvPvEFiSA_EEEfPNS2_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS2_17DenseAdapterBatchEEEDaSK_EUlSI_E_EEvSI_iNS0_5SchedEOT0_.exit.i", label %.lr.ph.i.i.i, !llvm.loop !694

bb.ai:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i32 %i.bt, ptr %i.i, align 4, !tbaa !24, !noalias !803
  store i32 1, ptr %i.j, align 4, !tbaa !24, !noalias !803
  %.not.i.i.i28 = icmp slt i32 %i.bt, 1
  br i1 %.not.i.i.i28, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i: ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %.preheader147.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i: ; preds = %bb.ai
  invoke void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %50, ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.j)
          to label %.noexc22.i unwind label %bb.aw

.noexc22.i:                                       ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i
  %.pr.i.i = load ptr, ptr %50, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.not.i.i29 = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i29, label %.preheader147.i.i, label %bb.aj

bb.aj:                                            ; preds = %.noexc22.i
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #10
  %i.ec = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %51)
          to label %.noexc.i.i unwind label %bb.ak

.noexc.i.i:                                       ; preds = %bb.aj
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ec, ptr noundef nonnull @.str.58, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i unwind label %bb.ak

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i:        ; preds = %.noexc.i.i
  %i.ed = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %51)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i unwind label %bb.al ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i
  %i.ee = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ed, ptr noundef nonnull @.str.4, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %bb.al ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i
  %i.ef = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ed, ptr noundef nonnull @.str.59, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60.i.i unwind label %bb.al ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i
  %i.eg = load ptr, ptr %50, align 8, !tbaa !46   ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !50
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !51
  %i.ek = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ed, ptr noundef %i.eh, i64 noundef %i.ej)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i unwind label %bb.al

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60.i.i
  %i.el = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ek, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63.i.i unwind label %bb.al ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %51)
          to label %bb.an unwind label %bb.ak

bb.ak:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63.i.i, %.noexc.i.i, %bb.aj
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.al:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i
  %i.en = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %51)
          to label %bb.am unwind label %bb.au

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.pn.i.i = phi { ptr, i32 } [ %i.em, %bb.ak ], [ %i.en, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #10
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %50) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #10
  br label %.body.i

bb.an:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #10
  %.pr137.i.i = load ptr, ptr %50, align 8, !tbaa !46 ; 4 uses
  %.not.i64.i.i = icmp eq ptr %.pr137.i.i, null
  br i1 %.not.i64.i.i, label %.preheader147.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.eo = load ptr, ptr %.pr137.i.i, align 8, !tbaa !50 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.pr137.i.i, i64 16 ; 2 uses
  %i.eq = icmp eq ptr %i.eo, %i.ep
  br i1 %i.eq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.ao
  %i.er = load i64, ptr %i.ep, align 8, !tbaa !52
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.es) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr137.i.i, i64 noundef 32) #27
  br label %.preheader147.i.i

.preheader147.i.i:                                ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, %bb.an, %.noexc22.i, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #10
  %.not166.i.i = icmp eq i64 %.sroa.6.0.copyload, 0
  %i.et = icmp eq i64 %.sroa.7.0.copyload, 0
  %or.cond90 = select i1 %.not166.i.i, i1 true, i1 %i.et
  br i1 %or.cond90, label %"_ZN7xgboost6common11ParallelForImZZZNS_4data8cpu_impl12GetDataShapeEPKNS_7ContextEPNS2_12DMatrixProxyEPNS2_13DataIterProxyIFvPvEFiSA_EEEfPNS2_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS2_17DenseAdapterBatchEEEDaSK_EUlSI_E_EEvSI_iNS0_5SchedEOT0_.exit.i", label %.lr.ph.i.i87.i.i.preheader

.lr.ph.i.i87.i.i.preheader:                       ; preds = %.preheader147.i.i
  %.pre10.i.i88.i.i.pre = load float, ptr %i.cp, align 4
  %xtraiter549 = and i64 %.sroa.7.0.copyload, 1
  %i.eu = icmp eq i64 %.sroa.7.0.copyload, 1
  %unroll_iter553 = and i64 %.sroa.7.0.copyload, -2
  %lcmp.mod550.not = icmp eq i64 %xtraiter549, 0
  %lcmp.mod552 = trunc i64 %.sroa.7.0.copyload to i1
  br label %.lr.ph.i.i87.i.i

.lr.ph.i.i87.i.i:                                 ; preds = %.lr.ph.i.i87.i.i.preheader, %"_ZN4dmlc12OMPException3RunIZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS2_7ContextEPNS3_12DMatrixProxyEPNS3_13DataIterProxyIFvPvEFiSB_EEEfPNS3_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS3_17DenseAdapterBatchEEEDaSL_EUlSJ_E_JmEEEvSJ_DpT0_.exit92.i.i"
  %.pre10.i.i88.i.i = phi float [ %.pre10.i.i88.i.i164.lcssa, %"_ZN4dmlc12OMPException3RunIZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS2_7ContextEPNS3_12DMatrixProxyEPNS3_13DataIterProxyIFvPvEFiSB_EEEfPNS3_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS3_17DenseAdapterBatchEEEDaSL_EUlSJ_E_JmEEEvSJ_DpT0_.exit92.i.i" ], [ %.pre10.i.i88.i.i.pre, %.lr.ph.i.i87.i.i.preheader ] ; 4 uses
  %.040152.i.i = phi i64 [ %i.gd, %"_ZN4dmlc12OMPException3RunIZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS2_7ContextEPNS3_12DMatrixProxyEPNS3_13DataIterProxyIFvPvEFiSB_EEEfPNS3_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS3_17DenseAdapterBatchEEEDaSL_EUlSJ_E_JmEEEvSJ_DpT0_.exit92.i.i" ], [ 0, %.lr.ph.i.i87.i.i.preheader ] ; 2 uses
  %i.ev = mul i64 %.040152.i.i, %.sroa.7.0.copyload
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.ev ; 3 uses
  br i1 %i.eu, label %.epil.preheader548, label %.lr.ph.i.i87.i.i.new

.lr.ph.i.i87.i.i.new:                             ; preds = %.lr.ph.i.i87.i.i, %bb.as
  %.pre10.i.i88.i.i165 = phi float [ %.pre10.i.i88.i.i164.1, %bb.as ], [ %.pre10.i.i88.i.i, %.lr.ph.i.i87.i.i ]
  %i.ex = phi float [ %i.fs, %bb.as ], [ %.pre10.i.i88.i.i, %.lr.ph.i.i87.i.i ] ; 2 uses
  %.09.i.i89.i.i = phi i64 [ %i.ft, %bb.as ], [ 0, %.lr.ph.i.i87.i.i ] ; 4 uses
  %niter554 = phi i64 [ %niter554.next.1, %bb.as ], [ 0, %.lr.ph.i.i87.i.i ]
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %.09.i.i89.i.i
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !223, !noalias !804 ; 2 uses
  %i.fa = fcmp ord float %i.ez, 0.000000e+00
  %i.fb = fcmp une float %i.ez, %i.ex
  %i.fc = select i1 %i.fa, i1 %i.fb, i1 false
  br i1 %i.fc, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.lr.ph.i.i87.i.i.new
  %i.fd = mul i64 %.09.i.i89.i.i, %.sroa.6.0.i
  %i.fe = getelementptr [8 x i8], ptr %i.ck, i64 %i.fd ; 2 uses
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !44
  %i.fg = add i64 %i.ff, 1
  store i64 %i.fg, ptr %i.fe, align 8, !tbaa !44
  %.pre.i.i91.i.i = load float, ptr %i.cp, align 4 ; 2 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.lr.ph.i.i87.i.i.new
  %.pre10.i.i88.i.i164 = phi float [ %.pre.i.i91.i.i, %bb.ap ], [ %.pre10.i.i88.i.i165, %.lr.ph.i.i87.i.i.new ]
  %i.fh = phi float [ %.pre.i.i91.i.i, %bb.ap ], [ %i.ex, %.lr.ph.i.i87.i.i.new ] ; 2 uses
  %i.fi = or disjoint i64 %.09.i.i89.i.i, 1       ; 2 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.fi
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !223, !noalias !804 ; 2 uses
  %i.fl = fcmp ord float %i.fk, 0.000000e+00
  %i.fm = fcmp une float %i.fk, %i.fh
  %i.fn = select i1 %i.fl, i1 %i.fm, i1 false
  br i1 %i.fn, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.fo = mul i64 %i.fi, %.sroa.6.0.i
  %i.fp = getelementptr [8 x i8], ptr %i.ck, i64 %i.fo ; 2 uses
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !44
  %i.fr = add i64 %i.fq, 1
  store i64 %i.fr, ptr %i.fp, align 8, !tbaa !44
  %.pre.i.i91.i.i.1 = load float, ptr %i.cp, align 4 ; 2 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.pre10.i.i88.i.i164.1 = phi float [ %.pre.i.i91.i.i.1, %bb.ar ], [ %.pre10.i.i88.i.i164, %bb.aq ] ; 3 uses
  %i.fs = phi float [ %.pre.i.i91.i.i.1, %bb.ar ], [ %i.fh, %bb.aq ] ; 2 uses
  %i.ft = add nuw i64 %.09.i.i89.i.i, 2           ; 2 uses
  %niter554.next.1 = add nuw i64 %niter554, 2     ; 2 uses
  %niter554.ncmp.1 = icmp eq i64 %niter554.next.1, %unroll_iter553
  br i1 %niter554.ncmp.1, label %"_ZN4dmlc12OMPException3RunIZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS2_7ContextEPNS3_12DMatrixProxyEPNS3_13DataIterProxyIFvPvEFiSB_EEEfPNS3_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS3_17DenseAdapterBatchEEEDaSL_EUlSJ_E_JmEEEvSJ_DpT0_.exit92.i.i.unr-lcssa", label %.lr.ph.i.i87.i.i.new, !llvm.loop !693

"_ZN4dmlc12OMPException3RunIZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS2_7ContextEPNS3_12DMatrixProxyEPNS3_13DataIterProxyIFvPvEFiSB_EEEfPNS3_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS3_17DenseAdapterBatchEEEDaSL_EUlSJ_E_JmEEEvSJ_DpT0_.exit92.i.i.unr-lcssa": ; preds = %bb.as
  br i1 %lcmp.mod550.not, label %"_ZN4dmlc12OMPException3RunIZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS2_7ContextEPNS3_12DMatrixProxyEPNS3_13DataIterProxyIFvPvEFiSB_EEEfPNS3_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS3_17DenseAdapterBatchEEEDaSL_EUlSJ_E_JmEEEvSJ_DpT0_.exit92.i.i", label %.epil.preheader548

.epil.preheader548:                               ; preds = %"_ZN4dmlc12OMPException3RunIZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS2_7ContextEPNS3_12DMatrixProxyEPNS3_13DataIterProxyIFvPvEFiSB_EEEfPNS3_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS3_17DenseAdapterBatchEEEDaSL_EUlSJ_E_JmEEEvSJ_DpT0_.exit92.i.i.unr-lcssa", %.lr.ph.i.i87.i.i
  %.pre10.i.i88.i.i165.epil.init = phi float [ %.pre10.i.i88.i.i, %.lr.ph.i.i87.i.i ], [ %.pre10.i.i88.i.i164.1, %"_ZN4dmlc12OMPException3RunIZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS2_7ContextEPNS3_12DMatrixProxyEPNS3_13DataIterProxyIFvPvEFiSB_EEEfPNS3_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS3_17DenseAdapterBatchEEEDaSL_EUlSJ_E_JmEEEvSJ_DpT0_.exit92.i.i.unr-lcssa" ]
  %.epil.init = phi float [ %.pre10.i.i88.i.i, %.lr.ph.i.i87.i.i ], [ %i.fs, %"_ZN4dmlc12OMPException3RunIZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS2_7ContextEPNS3_12DMatrixProxyEPNS3_13DataIterProxyIFvPvEFiSB_EEEfPNS3_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS3_17DenseAdapterBatchEEEDaSL_EUlSJ_E_JmEEEvSJ_DpT0_.exit92.i.i.unr-lcssa" ]
  %.09.i.i89.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i87.i.i ], [ %i.ft, %"_ZN4dmlc12OMPException3RunIZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS2_7ContextEPNS3_12DMatrixProxyEPNS3_13DataIterProxyIFvPvEFiSB_EEEfPNS3_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS3_17DenseAdapterBatchEEEDaSL_EUlSJ_E_JmEEEvSJ_DpT0_.exit92.i.i.unr-lcssa" ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod552)
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %.09.i.i89.i.i.epil.init
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !223, !noalias !804 ; 2 uses
  %i.fw = fcmp ord float %i.fv, 0.000000e+00
  %i.fx = fcmp une float %i.fv, %.epil.init
  %i.fy = select i1 %i.fw, i1 %i.fx, i1 false
  br i1 %i.fy, label %bb.at, label %"_ZN4dmlc12OMPException3RunIZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS2_7ContextEPNS3_12DMatrixProxyEPNS3_13DataIterProxyIFvPvEFiSB_EEEfPNS3_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS3_17DenseAdapterBatchEEEDaSL_EUlSJ_E_JmEEEvSJ_DpT0_.exit92.i.i"

bb.at:                                            ; preds = %.epil.preheader548
  %i.fz = mul i64 %.09.i.i89.i.i.epil.init, %.sroa.6.0.i
  %i.ga = getelementptr [8 x i8], ptr %i.ck, i64 %i.fz ; 2 uses
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !44
  %i.gc = add i64 %i.gb, 1
  store i64 %i.gc, ptr %i.ga, align 8, !tbaa !44
  %.pre.i.i91.i.i.epil = load float, ptr %i.cp, align 4
  br label %"_ZN4dmlc12OMPException3RunIZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS2_7ContextEPNS3_12DMatrixProxyEPNS3_13DataIterProxyIFvPvEFiSB_EEEfPNS3_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS3_17DenseAdapterBatchEEEDaSL_EUlSJ_E_JmEEEvSJ_DpT0_.exit92.i.i"

"_ZN4dmlc12OMPException3RunIZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS2_7ContextEPNS3_12DMatrixProxyEPNS3_13DataIterProxyIFvPvEFiSB_EEEfPNS3_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS3_17DenseAdapterBatchEEEDaSL_EUlSJ_E_JmEEEvSJ_DpT0_.exit92.i.i": ; preds = %.epil.preheader548, %bb.at, %"_ZN4dmlc12OMPException3RunIZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS2_7ContextEPNS3_12DMatrixProxyEPNS3_13DataIterProxyIFvPvEFiSB_EEEfPNS3_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS3_17DenseAdapterBatchEEEDaSL_EUlSJ_E_JmEEEvSJ_DpT0_.exit92.i.i.unr-lcssa"
  %.pre10.i.i88.i.i164.lcssa = phi float [ %.pre10.i.i88.i.i164.1, %"_ZN4dmlc12OMPException3RunIZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS2_7ContextEPNS3_12DMatrixProxyEPNS3_13DataIterProxyIFvPvEFiSB_EEEfPNS3_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS3_17DenseAdapterBatchEEEDaSL_EUlSJ_E_JmEEEvSJ_DpT0_.exit92.i.i.unr-lcssa" ], [ %.pre.i.i91.i.i.epil, %bb.at ], [ %.pre10.i.i88.i.i165.epil.init, %.epil.preheader548 ]
  %i.gd = add nuw i64 %.040152.i.i, 1             ; 2 uses
  %exitcond184.not.i.i = icmp eq i64 %i.gd, %.sroa.6.0.copyload
  br i1 %exitcond184.not.i.i, label %"_ZN7xgboost6common11ParallelForImZZZNS_4data8cpu_impl12GetDataShapeEPKNS_7ContextEPNS2_12DMatrixProxyEPNS2_13DataIterProxyIFvPvEFiSA_EEEfPNS2_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS2_17DenseAdapterBatchEEEDaSK_EUlSI_E_EEvSI_iNS0_5SchedEOT0_.exit.i", label %.lr.ph.i.i87.i.i, !llvm.loop !699

bb.au:                                            ; preds = %bb.al
  %i.ge = landingpad { ptr, i32 }
          catch ptr null
  %i.gf = extractvalue { ptr, i32 } %i.ge, 0
  call void @__clang_call_terminate(ptr %i.gf) #28
  unreachable

"_ZN7xgboost6common11ParallelForImZZZNS_4data8cpu_impl12GetDataShapeEPKNS_7ContextEPNS2_12DMatrixProxyEPNS2_13DataIterProxyIFvPvEFiSA_EEEfPNS2_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS2_17DenseAdapterBatchEEEDaSK_EUlSI_E_EEvSI_iNS0_5SchedEOT0_.exit.i": ; preds = %"_ZN4dmlc12OMPException3RunIZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS2_7ContextEPNS3_12DMatrixProxyEPNS3_13DataIterProxyIFvPvEFiSB_EEEfPNS3_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS3_17DenseAdapterBatchEEEDaSL_EUlSJ_E_JmEEEvSJ_DpT0_.exit92.i.i", %"_ZZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS_7ContextEPNS0_12DMatrixProxyEPNS0_13DataIterProxyIFvPvEFiS8_EEEfPNS0_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS0_17DenseAdapterBatchEEEDaSI_ENKUlSG_E_clImEEDaSG_.exit.i.i", %.preheader147.i.i, %.preheader.i.i
  %i.gg = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN7xgboost16HostDeviceVectorImE10HostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %52)
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %"_ZN7xgboost6common11ParallelForImZZZNS_4data8cpu_impl12GetDataShapeEPKNS_7ContextEPNS2_12DMatrixProxyEPNS2_13DataIterProxyIFvPvEFiSA_EEEfPNS2_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS2_17DenseAdapterBatchEEEDaSK_EUlSI_E_EEvSI_iNS0_5SchedEOT0_.exit.i"
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !83 ; 4 uses
  %i.gi = invoke noundef i64 @_ZNK7xgboost16HostDeviceVectorImE4SizeEv(ptr noundef nonnull align 8 dereferenceable(25) %52)
          to label %_ZNK7xgboost6linalg6TensorImLi2EE4SizeEv.exit.i unwind label %bb.aw ; 2 uses

_ZNK7xgboost6linalg6TensorImLi2EE4SizeEv.exit.i:  ; preds = %bb.av
  %.idx.i = shl i64 %i.gi, 3                      ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 %.idx.i
  %.not6.i.i = icmp eq i64 %i.gi, 0
  br i1 %.not6.i.i, label %_ZSt10accumulateIPmmET0_T_S2_S1_.exit.i, label %.lr.ph.i25.i.preheader

.lr.ph.i25.i.preheader:                           ; preds = %_ZNK7xgboost6linalg6TensorImLi2EE4SizeEv.exit.i
  %i.gk = add i64 %.idx.i, -8                     ; 2 uses
  %i.gl = lshr exact i64 %i.gk, 3
  %i.gm = add nuw nsw i64 %i.gl, 1                ; 2 uses
  %min.iters.check447 = icmp ult i64 %i.gk, 24
  br i1 %min.iters.check447, label %.lr.ph.i25.i.preheader493, label %vector.ph448

vector.ph448:                                     ; preds = %.lr.ph.i25.i.preheader
  %n.vec449 = and i64 %i.gm, 4611686018427387900  ; 3 uses
  %i.gn = shl i64 %n.vec449, 3
  %i.go = getelementptr i8, ptr %i.gh, i64 %i.gn
  br label %vector.body450

vector.body450:                                   ; preds = %vector.body450, %vector.ph448
  %index451 = phi i64 [ 0, %vector.ph448 ], [ %index.next457, %vector.body450 ] ; 2 uses
  %vec.phi452 = phi <2 x i64> [ zeroinitializer, %vector.ph448 ], [ %i.gr, %vector.body450 ]
  %vec.phi453 = phi <2 x i64> [ zeroinitializer, %vector.ph448 ], [ %i.gs, %vector.body450 ]
  %i.gp = shl i64 %index451, 3
  %next.gep454 = getelementptr i8, ptr %i.gh, i64 %i.gp ; 2 uses
  %i.gq = getelementptr i8, ptr %next.gep454, i64 16
  %wide.load455 = load <2 x i64>, ptr %next.gep454, align 8, !tbaa !44
  %wide.load456 = load <2 x i64>, ptr %i.gq, align 8, !tbaa !44
  %i.gr = add <2 x i64> %wide.load455, %vec.phi452 ; 2 uses
  %i.gs = add <2 x i64> %wide.load456, %vec.phi453 ; 2 uses
  %index.next457 = add nuw i64 %index451, 4       ; 2 uses
  %i.gt = icmp eq i64 %index.next457, %n.vec449
  br i1 %i.gt, label %middle.block458, label %vector.body450, !llvm.loop !700

middle.block458:                                  ; preds = %vector.body450
  %bin.rdx459 = add <2 x i64> %i.gs, %i.gr
  %i.gu = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx459) ; 2 uses
  %cmp.n460 = icmp eq i64 %i.gm, %n.vec449
  br i1 %cmp.n460, label %_ZSt10accumulateIPmmET0_T_S2_S1_.exit.i, label %.lr.ph.i25.i.preheader493

.lr.ph.i25.i.preheader493:                        ; preds = %.lr.ph.i25.i.preheader, %middle.block458
  %.08.i.i.ph = phi i64 [ 0, %.lr.ph.i25.i.preheader ], [ %i.gu, %middle.block458 ]
  %.057.i.i.ph = phi ptr [ %i.gh, %.lr.ph.i25.i.preheader ], [ %i.go, %middle.block458 ]
  br label %.lr.ph.i25.i

.lr.ph.i25.i:                                     ; preds = %.lr.ph.i25.i.preheader493, %.lr.ph.i25.i
  %.08.i.i = phi i64 [ %i.gw, %.lr.ph.i25.i ], [ %.08.i.i.ph, %.lr.ph.i25.i.preheader493 ]
  %.057.i.i = phi ptr [ %i.gx, %.lr.ph.i25.i ], [ %.057.i.i.ph, %.lr.ph.i25.i.preheader493 ] ; 2 uses
  %i.gv = load i64, ptr %.057.i.i, align 8, !tbaa !44
  %i.gw = add i64 %i.gv, %.08.i.i                 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 8 ; 2 uses
  %.not.i26.i = icmp eq ptr %i.gx, %i.gj
  br i1 %.not.i26.i, label %_ZSt10accumulateIPmmET0_T_S2_S1_.exit.i, label %.lr.ph.i25.i, !llvm.loop !701

_ZSt10accumulateIPmmET0_T_S2_S1_.exit.i:          ; preds = %.lr.ph.i25.i, %middle.block458, %_ZNK7xgboost6linalg6TensorImLi2EE4SizeEv.exit.i
  %.0.lcssa.i.i = phi i64 [ 0, %_ZNK7xgboost6linalg6TensorImLi2EE4SizeEv.exit.i ], [ %i.gu, %middle.block458 ], [ %i.gw, %.lr.ph.i25.i ]
  %i.gy = icmp ne i32 %i.bt, 0
  %i.gz = icmp ne ptr %i.bz, %i.ca
  %or.cond.i = select i1 %i.gy, i1 %i.gz, i1 false
  br i1 %or.cond.i, label %.preheader.lr.ph.split.i, label %"_ZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS_7ContextEPNS0_12DMatrixProxyEPNS0_13DataIterProxyIFvPvEFiS8_EEEfPNS0_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS0_17DenseAdapterBatchEEEDaSI_.exit"

.preheader.lr.ph.split.i:                         ; preds = %_ZSt10accumulateIPmmET0_T_S2_S1_.exit.i
  %i.ha = load ptr, ptr %i.bv, align 8, !tbaa !794, !nonnull !53, !align !54
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 32
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !83 ; 6 uses
  %scevgep466 = getelementptr i8, ptr %i.hc, i64 %i.cd
  %i.hd = add nsw i64 %i.bu, 2305843009213693951
  %i.he = mul i64 %.sroa.0.0.i, %i.hd
  %i.hf = shl i64 %i.he, 3
  %i.hg = getelementptr i8, ptr %i.ck, i64 %i.hf
  %scevgep467 = getelementptr i8, ptr %i.hg, i64 %i.cd
  %min.iters.check473 = icmp ugt i64 %i.ce, 5
  %ident.check464.not = icmp eq i64 %.sroa.6.0.i, 1
  %or.cond489 = select i1 %min.iters.check473, i1 %ident.check464.not, i1 false
  %bound0468 = icmp ult ptr %i.hc, %scevgep467
  %bound1469 = icmp ult ptr %i.ck, %scevgep466
  %found.conflict470 = and i1 %bound0468, %bound1469
  %.mask488 = and i64 %.sroa.0.0.i, 1152921504606846976
  %stride.check471 = icmp ne i64 %.mask488, 0
  %i.hh = or i1 %found.conflict470, %stride.check471
  %n.vec475 = and i64 %i.ce, -4                   ; 3 uses
  %cmp.n484 = icmp eq i64 %i.ce, %n.vec475
  %i.hi = and i64 %i.cd, 8
  %lcmp.mod565.not = icmp eq i64 %i.hi, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %storemerge48.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %i.ib, %._crit_edge.i ] ; 2 uses
  %i.hj = mul i64 %storemerge48.i, %.sroa.0.0.i
  %i.hk = getelementptr [8 x i8], ptr %i.ck, i64 %i.hj ; 4 uses
  %or.cond489.not = xor i1 %or.cond489, true
  %brmerge = select i1 %or.cond489.not, i1 true, i1 %i.hh
  br i1 %brmerge, label %scalar.ph472.preheader, label %vector.body476

vector.body476:                                   ; preds = %.preheader.i, %vector.body476
  %index477 = phi i64 [ %index.next482, %vector.body476 ], [ 0, %.preheader.i ] ; 3 uses
  %i.hl = getelementptr [8 x i8], ptr %i.hk, i64 %index477 ; 2 uses
  %i.hm = getelementptr i8, ptr %i.hl, i64 16
  %wide.load478 = load <2 x i64>, ptr %i.hl, align 8, !tbaa !44, !alias.scope !807
  %wide.load479 = load <2 x i64>, ptr %i.hm, align 8, !tbaa !44, !alias.scope !807
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %index477 ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16 ; 2 uses
  %wide.load480 = load <2 x i64>, ptr %i.hn, align 8, !tbaa !44, !alias.scope !808, !noalias !807
  %wide.load481 = load <2 x i64>, ptr %i.ho, align 8, !tbaa !44, !alias.scope !808, !noalias !807
  %i.hp = add <2 x i64> %wide.load480, %wide.load478
  %i.hq = add <2 x i64> %wide.load481, %wide.load479
  store <2 x i64> %i.hp, ptr %i.hn, align 8, !tbaa !44, !alias.scope !808, !noalias !807
  store <2 x i64> %i.hq, ptr %i.ho, align 8, !tbaa !44, !alias.scope !808, !noalias !807
  %index.next482 = add nuw i64 %index477, 4       ; 2 uses
  %i.hr = icmp eq i64 %index.next482, %n.vec475
  br i1 %i.hr, label %middle.block483, label %vector.body476, !llvm.loop !705

middle.block483:                                  ; preds = %vector.body476
  br i1 %cmp.n484, label %._crit_edge.i, label %scalar.ph472.preheader

scalar.ph472.preheader:                           ; preds = %.preheader.i, %middle.block483
  %storemerge1747.i.ph = phi i64 [ %n.vec475, %middle.block483 ], [ 0, %.preheader.i ] ; 5 uses
  %.neg568 = or disjoint i64 %storemerge1747.i.ph, 1
  br i1 %lcmp.mod565.not, label %scalar.ph472.prol.loopexit, label %scalar.ph472.prol

scalar.ph472.prol:                                ; preds = %scalar.ph472.preheader
  %i.hs = mul i64 %storemerge1747.i.ph, %.sroa.6.0.i
  %i.ht = getelementptr [8 x i8], ptr %i.hk, i64 %i.hs
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !44
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %storemerge1747.i.ph ; 2 uses
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !44
  %i.hx = add i64 %i.hw, %i.hu
  store i64 %i.hx, ptr %i.hv, align 8, !tbaa !44
  %i.hy = or disjoint i64 %storemerge1747.i.ph, 1
  br label %scalar.ph472.prol.loopexit

scalar.ph472.prol.loopexit:                       ; preds = %scalar.ph472.prol, %scalar.ph472.preheader
  %storemerge1747.i.unr = phi i64 [ %storemerge1747.i.ph, %scalar.ph472.preheader ], [ %i.hy, %scalar.ph472.prol ]
  %i.hz = icmp eq i64 %i.ce, %.neg568
  br i1 %i.hz, label %._crit_edge.i, label %scalar.ph472

bb.aw:                                            ; preds = %bb.av, %"_ZN7xgboost6common11ParallelForImZZZNS_4data8cpu_impl12GetDataShapeEPKNS_7ContextEPNS2_12DMatrixProxyEPNS2_13DataIterProxyIFvPvEFiSA_EEEfPNS2_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS2_17DenseAdapterBatchEEEDaSK_EUlSI_E_EEvSI_iNS0_5SchedEOT0_.exit.i", %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i, %bb.z, %_ZN7xgboost6linalg6TensorImLi2EEC2ImLi2EEERAT0__KT_NS_9DeviceOrdENS0_5OrderE.exit.i
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

._crit_edge.i:                                    ; preds = %scalar.ph472.prol.loopexit, %scalar.ph472, %middle.block483
  %i.ib = add nuw i64 %storemerge48.i, 1          ; 2 uses
  %exitcond51.not.i = icmp eq i64 %i.ib, %i.bu
  br i1 %exitcond51.not.i, label %"_ZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS_7ContextEPNS0_12DMatrixProxyEPNS0_13DataIterProxyIFvPvEFiS8_EEEfPNS0_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS0_17DenseAdapterBatchEEEDaSI_.exit", label %.preheader.i, !llvm.loop !706

scalar.ph472:                                     ; preds = %scalar.ph472.prol.loopexit, %scalar.ph472
  %storemerge1747.i = phi i64 [ %i.ip, %scalar.ph472 ], [ %storemerge1747.i.unr, %scalar.ph472.prol.loopexit ] ; 4 uses
  %i.ic = mul i64 %storemerge1747.i, %.sroa.6.0.i
  %i.id = getelementptr [8 x i8], ptr %i.hk, i64 %i.ic
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !44
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %storemerge1747.i ; 2 uses
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !44
  %i.ih = add i64 %i.ig, %i.ie
  store i64 %i.ih, ptr %i.if, align 8, !tbaa !44
  %i.ii = add nuw i64 %storemerge1747.i, 1        ; 2 uses
  %i.ij = mul i64 %i.ii, %.sroa.6.0.i
  %i.ik = getelementptr [8 x i8], ptr %i.hk, i64 %i.ij
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !44
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %i.ii ; 2 uses
  %i.in = load i64, ptr %i.im, align 8, !tbaa !44
  %i.io = add i64 %i.in, %i.il
  store i64 %i.io, ptr %i.im, align 8, !tbaa !44
  %i.ip = add nuw i64 %storemerge1747.i, 2        ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.ip, %i.ce
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph472, !llvm.loop !707

.body.i:                                          ; preds = %bb.aw, %bb.am
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.i.i, %bb.am ], [ %i.ia, %bb.aw ]
  call void @_ZN7xgboost16HostDeviceVectorImED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(25) %52) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #10
  br label %common.resume

"_ZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS_7ContextEPNS0_12DMatrixProxyEPNS0_13DataIterProxyIFvPvEFiS8_EEEfPNS0_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS0_17DenseAdapterBatchEEEDaSI_.exit": ; preds = %._crit_edge.i, %_ZSt10accumulateIPmmET0_T_S2_S1_.exit.i
  call void @_ZN7xgboost16HostDeviceVectorImED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(25) %52) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #10
  br label %bb.lq

bb.ax:                                            ; preds = %_ZSt8any_castISt10shared_ptrIN7xgboost4data12DenseAdapterEEET_RSt3any.exit
  %i.iq = landingpad { ptr, i32 }
end_hunk_0
