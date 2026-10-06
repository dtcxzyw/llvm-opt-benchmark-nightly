Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/quantile_dmatrix?download=true
inline.NumInlined: 3179
inline.NumDeleted: 1558
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0_@"_ZN7xgboost4data8cpu_impl11DispatchAnyILb1ESt10shared_ptrZZNS1_12GetDataShapeEPKNS_7ContextEPNS0_12DMatrixProxyEPNS0_13DataIterProxyIFvPvEFiSA_EEEfPNS0_16ExternalDataInfoEENK3$_0clEvEUlRKT_E_EEDcS6_St3anyOT1_Pb":bb.a
bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #10, !noalias !789
  invoke void %i.aa(i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %53)
          to label %bb.k unwind label %bb.l, !noalias !789

bb.k:                                             ; preds = %bb.j
  %i.ac = load ptr, ptr %53, align 8, !tbaa !52, !noalias !789
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #10, !noalias !789
  br label %_ZNKSt3any4typeEv.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #28, !noalias !789
  unreachable

_ZNKSt3any4typeEv.exit.i.i.i:                     ; preds = %bb.k, %bb.i
  %.0.i.i.i.i = phi ptr [ %i.ac, %bb.k ], [ @_ZTIv, %bb.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !102, !noalias !789 ; 3 uses
  %i.ah = icmp eq ptr %i.ag, @_ZTSSt10shared_ptrIN7xgboost4data12DenseAdapterEE
  br i1 %i.ah, label %_ZSt8any_castISt10shared_ptrIN7xgboost4data12DenseAdapterEEEPT_PSt3any.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNKSt3any4typeEv.exit.i.i.i
  %i.ai = load i8, ptr %i.ag, align 1, !tbaa !52, !noalias !789
  %.not.i4.i.i.i = icmp eq i8 %i.ai, 42
  br i1 %.not.i4.i.i.i, label %_ZSt8any_castISt10shared_ptrIN7xgboost4data12DenseAdapterEEEPT_PSt3any.exit.thread.i, label %_ZNKSt9type_infoeqERKS_.exit.i.i.i

_ZNKSt9type_infoeqERKS_.exit.i.i.i:               ; preds = %bb.m
  %i.aj = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ag, ptr noundef nonnull dereferenceable(46) @_ZTSSt10shared_ptrIN7xgboost4data12DenseAdapterEE) #10, !noalias !789
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_ZSt8any_castISt10shared_ptrIN7xgboost4data12DenseAdapterEEEPT_PSt3any.exit.i, label %_ZSt8any_castISt10shared_ptrIN7xgboost4data12DenseAdapterEEEPT_PSt3any.exit.thread.i

_ZSt8any_castISt10shared_ptrIN7xgboost4data12DenseAdapterEEEPT_PSt3any.exit.i: ; preds = %_ZNKSt9type_infoeqERKS_.exit.i.i.i, %_ZNKSt3any4typeEv.exit.i.i.i, %"_ZZN7xgboost4data8cpu_impl11DispatchAnyILb1ESt10shared_ptrZZNS1_12GetDataShapeEPKNS_7ContextEPNS0_12DMatrixProxyEPNS0_13DataIterProxyIFvPvEFiSA_EEEfPNS0_16ExternalDataInfoEENK3$_0clEvEUlRKT_E_EEDcS6_St3anyOT1_PbENKUlvE_clEv.exit"
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !52, !noalias !789 ; 3 uses
  %.not.i26 = icmp eq ptr %i.am, null
  br i1 %.not.i26, label %_ZSt8any_castISt10shared_ptrIN7xgboost4data12DenseAdapterEEEPT_PSt3any.exit.thread.i, label %bb.n

bb.n:                                             ; preds = %_ZSt8any_castISt10shared_ptrIN7xgboost4data12DenseAdapterEEEPT_PSt3any.exit.i
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !105, !noalias !789 ; 3 uses
  store ptr %i.an, ptr %56, align 8, !tbaa !105, !alias.scope !789
  %i.ao = getelementptr inbounds nuw i8, ptr %56, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !55, !noalias !789 ; 3 uses
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !55, !alias.scope !789
  %.not.i.i.i3.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i3.i, label %_ZSt8any_castISt10shared_ptrIN7xgboost4data12DenseAdapterEEET_RSt3any.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 3 uses
  %i.as = load i8, ptr @__libc_single_threaded, align 1, !tbaa !52, !noalias !789
  %.not.i.i.i.i.i = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !24, !noalias !789
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr %i.ar, align 4, !tbaa !24, !noalias !789
  br label %_ZSt8any_castISt10shared_ptrIN7xgboost4data12DenseAdapterEEET_RSt3any.exit

bb.q:                                             ; preds = %bb.o
  %i.av = atomicrmw volatile add ptr %i.ar, i32 1 acq_rel, align 4, !noalias !789 ; 0 uses
  %.pre162 = load ptr, ptr %56, align 8, !tbaa !105
  br label %_ZSt8any_castISt10shared_ptrIN7xgboost4data12DenseAdapterEEET_RSt3any.exit

_ZSt8any_castISt10shared_ptrIN7xgboost4data12DenseAdapterEEEPT_PSt3any.exit.thread.i: ; preds = %_ZSt8any_castISt10shared_ptrIN7xgboost4data12DenseAdapterEEEPT_PSt3any.exit.i, %_ZNKSt9type_infoeqERKS_.exit.i.i.i, %bb.m
  call void @_ZSt20__throw_bad_any_castv() #29, !noalias !789
  unreachable

_ZSt8any_castISt10shared_ptrIN7xgboost4data12DenseAdapterEEET_RSt3any.exit: ; preds = %bb.n, %bb.p, %bb.q
  %i.aw = phi ptr [ %i.an, %bb.n ], [ %i.an, %bb.p ], [ %.pre162, %bb.q ] ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !43
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = invoke noundef nonnull align 8 dereferenceable(24) ptr %i.az(ptr noundef nonnull align 8 dereferenceable(56) %i.aw)
          to label %bb.r unwind label %bb.az      ; 3 uses

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
  %i.br = load ptr, ptr %2, align 8, !tbaa !791, !nonnull !53, !align !54
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !23
  %i.bt = call noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084) %i.bs) ; 5 uses
  %i.bu = sext i32 %i.bt to i64                   ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !792, !nonnull !53, !align !54 ; 2 uses
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

common.resume:                                    ; preds = %bb.d, %bb.az, %bb.dw, %bb.gf, %.body318, %bb.mk, %bb.er, %bb.ge, %bb.bu, %.body.i58, %bb.y, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn.pn.i116, %bb.ge ], [ %.pn.pn.pn.pn.i, %.body.i ], [ %.pn.pn.pn.pn.i54, %.body.i58 ], [ %i.ci, %bb.y ], [ %i.lh, %bb.bu ], [ %i.ve, %bb.er ], [ %i.io, %bb.az ], [ %i.sl, %bb.dw ], [ %i.aak, %bb.gf ], [ %.pn.pn, %.body318 ], [ %i.bbd, %bb.mk ], [ %i.p, %bb.d ]
  resume { ptr, i32 } %common.resume.op

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN7xgboost4data12DenseAdapterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7xgboost16HostDeviceVectorImED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(25) %52) #10
  br label %common.resume

_ZN7xgboost6linalg6TensorImLi2EEC2ImLi2EEERAT0__KT_NS_9DeviceOrdENS0_5OrderE.exit.i: ; preds = %_ZNSt12__shared_ptrIN7xgboost4data12DenseAdapterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  invoke void @_ZN7xgboost16HostDeviceVectorImE4FillEm(ptr noundef nonnull align 8 dereferenceable(8) %52, i64 noundef 0)
          to label %bb.z unwind label %bb.au

bb.z:                                             ; preds = %_ZN7xgboost6linalg6TensorImLi2EEC2ImLi2EEERAT0__KT_NS_9DeviceOrdENS0_5OrderE.exit.i
  %i.cj = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN7xgboost16HostDeviceVectorImE10HostVectorEv(ptr noundef nonnull align 8 dereferenceable(25) %52)
          to label %.noexc.i unwind label %bb.av

.noexc.i:                                         ; preds = %bb.z
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !83, !noalias !793 ; 9 uses
  %i.cl = load i8, ptr %i.cg, align 8, !tbaa !797, !noalias !793
  %i.cm = load i64, ptr %.ptr.i.i.i, align 8, !tbaa !44, !noalias !793
  switch i8 %i.cl, label %bb.ab [
    i8 0, label %bb.ac
    i8 1, label %bb.aa
  ]

bb.aa:                                            ; preds = %.noexc.i
  %i.cn = load i64, ptr %i.cf, align 8, !tbaa !44, !noalias !793
  br label %bb.ac

bb.ab:                                            ; preds = %.noexc.i
  call void @_ZSt9terminatev() #28, !noalias !793
  unreachable

bb.ac:                                            ; preds = %bb.aa, %.noexc.i
  %.sroa.6.0.i = phi i64 [ %i.cn, %bb.aa ], [ 1, %.noexc.i ] ; 10 uses
  %.sroa.0.0.i = phi i64 [ 1, %bb.aa ], [ %i.cm, %.noexc.i ] ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !798, !nonnull !53, !align !222 ; 8 uses
  %i.cq = icmp eq i32 %i.bt, 1
  br i1 %i.cq, label %.preheader.i.i, label %bb.ah

.preheader.i.i:                                   ; preds = %bb.ac
  %.not160.i.i = icmp eq i64 %.sroa.6.0.copyload, 0
  %i.cr = icmp eq i64 %.sroa.7.0.copyload, 0
  %or.cond = select i1 %.not160.i.i, i1 true, i1 %i.cr
  br i1 %or.cond, label %"_ZN7xgboost6common11ParallelForImZZZNS_4data8cpu_impl12GetDataShapeEPKNS_7ContextEPNS2_12DMatrixProxyEPNS2_13DataIterProxyIFvPvEFiSA_EEEfPNS2_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS2_17DenseAdapterBatchEEEDaSK_EUlSI_E_EEvSI_iNS0_5SchedEOT0_.exit.i", label %.lr.ph153.split.i.i.preheader

.lr.ph153.split.i.i.preheader:                    ; preds = %.preheader.i.i
  %.pre10.i.i.i.pre = load float, ptr %i.cp, align 4
  %xtraiter545 = and i64 %.sroa.7.0.copyload, 1
  %i.cs = icmp eq i64 %.sroa.7.0.copyload, 1
  %unroll_iter548 = and i64 %.sroa.7.0.copyload, -2
  %lcmp.mod546.not = icmp eq i64 %xtraiter545, 0
  %lcmp.mod547 = trunc i64 %.sroa.7.0.copyload to i1
  br label %.lr.ph153.split.i.i

.lr.ph153.split.i.i:                              ; preds = %.lr.ph153.split.i.i.preheader, %"_ZZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS_7ContextEPNS0_12DMatrixProxyEPNS0_13DataIterProxyIFvPvEFiS8_EEEfPNS0_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS0_17DenseAdapterBatchEEEDaSI_ENKUlSG_E_clImEEDaSG_.exit.i.i"
  %.pre10.i.i.i = phi float [ %.pre10.i.i.i166.lcssa, %"_ZZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS_7ContextEPNS0_12DMatrixProxyEPNS0_13DataIterProxyIFvPvEFiS8_EEEfPNS0_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS0_17DenseAdapterBatchEEEDaSI_ENKUlSG_E_clImEEDaSG_.exit.i.i" ], [ %.pre10.i.i.i.pre, %.lr.ph153.split.i.i.preheader ] ; 4 uses
  %.049152.i.i = phi i64 [ %i.dy, %"_ZZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS_7ContextEPNS0_12DMatrixProxyEPNS0_13DataIterProxyIFvPvEFiS8_EEEfPNS0_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS0_17DenseAdapterBatchEEEDaSI_ENKUlSG_E_clImEEDaSG_.exit.i.i" ], [ 0, %.lr.ph153.split.i.i.preheader ] ; 2 uses
  %i.ct = mul i64 %.049152.i.i, %.sroa.7.0.copyload
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.ct ; 3 uses
  br i1 %i.cs, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph153.split.i.i, %bb.af
  %.pre10.i.i.i167 = phi float [ %.pre10.i.i.i166.1, %bb.af ], [ %.pre10.i.i.i, %.lr.ph153.split.i.i ]
  %63 = phi float [ %65, %bb.af ], [ %.pre10.i.i.i, %.lr.ph153.split.i.i ] ; 2 uses
  %.09.i.i.i = phi i64 [ %i.do, %bb.af ], [ 0, %.lr.ph153.split.i.i ] ; 4 uses
  %niter549 = phi i64 [ %niter549.next.1, %bb.af ], [ 0, %.lr.ph153.split.i.i ]
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %.09.i.i.i
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !223, !noalias !799 ; 2 uses
  %i.cx = fcmp ord float %i.cw, 0.000000e+00
  %i.cy = fcmp une float %i.cw, %63
  %i.cz = select i1 %i.cx, i1 %i.cy, i1 false
  br i1 %i.cz, label %bb.ad, label %.lr.ph.i.i.i.1

bb.ad:                                            ; preds = %.lr.ph.i.i.i
  %i.da = mul i64 %.09.i.i.i, %.sroa.6.0.i
  %i.db = getelementptr [8 x i8], ptr %i.ck, i64 %i.da ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !44
  %i.dd = add i64 %i.dc, 1
  store i64 %i.dd, ptr %i.db, align 8, !tbaa !44
  %.pre.i.i.i = load float, ptr %i.cp, align 4    ; 2 uses
  br label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %bb.ad, %.lr.ph.i.i.i
  %.pre10.i.i.i166 = phi float [ %.pre.i.i.i, %bb.ad ], [ %.pre10.i.i.i167, %.lr.ph.i.i.i ]
  %64 = phi float [ %.pre.i.i.i, %bb.ad ], [ %63, %.lr.ph.i.i.i ] ; 2 uses
  %i.de = or disjoint i64 %.09.i.i.i, 1           ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.de
  %i.dg = load float, ptr %i.df, align 4, !tbaa !223, !noalias !799 ; 2 uses
  %i.dh = fcmp ord float %i.dg, 0.000000e+00
  %i.di = fcmp une float %i.dg, %64
  %i.dj = select i1 %i.dh, i1 %i.di, i1 false
  br i1 %i.dj, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph.i.i.i.1
  %i.dk = mul i64 %i.de, %.sroa.6.0.i
  %i.dl = getelementptr [8 x i8], ptr %i.ck, i64 %i.dk ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !44
  %i.dn = add i64 %i.dm, 1
  store i64 %i.dn, ptr %i.dl, align 8, !tbaa !44
  %.pre.i.i.i.1 = load float, ptr %i.cp, align 4  ; 2 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.lr.ph.i.i.i.1
  %.pre10.i.i.i166.1 = phi float [ %.pre.i.i.i.1, %bb.ae ], [ %.pre10.i.i.i166, %.lr.ph.i.i.i.1 ] ; 3 uses
  %65 = phi float [ %.pre.i.i.i.1, %bb.ae ], [ %64, %.lr.ph.i.i.i.1 ] ; 2 uses
  %i.do = add nuw i64 %.09.i.i.i, 2               ; 2 uses
  %niter549.next.1 = add nuw i64 %niter549, 2     ; 2 uses
  %niter549.ncmp.1 = icmp eq i64 %niter549.next.1, %unroll_iter548
  br i1 %niter549.ncmp.1, label %"_ZZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS_7ContextEPNS0_12DMatrixProxyEPNS0_13DataIterProxyIFvPvEFiS8_EEEfPNS0_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS0_17DenseAdapterBatchEEEDaSI_ENKUlSG_E_clImEEDaSG_.exit.i.i.unr-lcssa", label %.lr.ph.i.i.i, !llvm.loop !691

"_ZZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS_7ContextEPNS0_12DMatrixProxyEPNS0_13DataIterProxyIFvPvEFiS8_EEEfPNS0_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS0_17DenseAdapterBatchEEEDaSI_ENKUlSG_E_clImEEDaSG_.exit.i.i.unr-lcssa": ; preds = %bb.af
  br i1 %lcmp.mod546.not, label %"_ZZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS_7ContextEPNS0_12DMatrixProxyEPNS0_13DataIterProxyIFvPvEFiS8_EEEfPNS0_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS0_17DenseAdapterBatchEEEDaSI_ENKUlSG_E_clImEEDaSG_.exit.i.i", label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %"_ZZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS_7ContextEPNS0_12DMatrixProxyEPNS0_13DataIterProxyIFvPvEFiS8_EEEfPNS0_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS0_17DenseAdapterBatchEEEDaSI_ENKUlSG_E_clImEEDaSG_.exit.i.i.unr-lcssa", %.lr.ph153.split.i.i
  %.pre10.i.i.i167.epil.init = phi float [ %.pre10.i.i.i, %.lr.ph153.split.i.i ], [ %.pre10.i.i.i166.1, %"_ZZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS_7ContextEPNS0_12DMatrixProxyEPNS0_13DataIterProxyIFvPvEFiS8_EEEfPNS0_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS0_17DenseAdapterBatchEEEDaSI_ENKUlSG_E_clImEEDaSG_.exit.i.i.unr-lcssa" ]
  %.epil.init556 = phi float [ %.pre10.i.i.i, %.lr.ph153.split.i.i ], [ %65, %"_ZZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS_7ContextEPNS0_12DMatrixProxyEPNS0_13DataIterProxyIFvPvEFiS8_EEEfPNS0_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS0_17DenseAdapterBatchEEEDaSI_ENKUlSG_E_clImEEDaSG_.exit.i.i.unr-lcssa" ]
  %.09.i.i.i.epil.init = phi i64 [ 0, %.lr.ph153.split.i.i ], [ %i.do, %"_ZZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS_7ContextEPNS0_12DMatrixProxyEPNS0_13DataIterProxyIFvPvEFiS8_EEEfPNS0_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS0_17DenseAdapterBatchEEEDaSI_ENKUlSG_E_clImEEDaSG_.exit.i.i.unr-lcssa" ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod547)
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %.09.i.i.i.epil.init
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !223, !noalias !799 ; 2 uses
  %i.dr = fcmp ord float %i.dq, 0.000000e+00
  %i.ds = fcmp une float %i.dq, %.epil.init556
  %i.dt = select i1 %i.dr, i1 %i.ds, i1 false
  br i1 %i.dt, label %bb.ag, label %"_ZZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS_7ContextEPNS0_12DMatrixProxyEPNS0_13DataIterProxyIFvPvEFiS8_EEEfPNS0_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS0_17DenseAdapterBatchEEEDaSI_ENKUlSG_E_clImEEDaSG_.exit.i.i"

bb.ag:                                            ; preds = %.lr.ph.i.i.i.epil.preheader
  %i.du = mul i64 %.09.i.i.i.epil.init, %.sroa.6.0.i
  %i.dv = getelementptr [8 x i8], ptr %i.ck, i64 %i.du ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !44
  %i.dx = add i64 %i.dw, 1
  store i64 %i.dx, ptr %i.dv, align 8, !tbaa !44
  %.pre.i.i.i.epil = load float, ptr %i.cp, align 4
  br label %"_ZZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS_7ContextEPNS0_12DMatrixProxyEPNS0_13DataIterProxyIFvPvEFiS8_EEEfPNS0_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS0_17DenseAdapterBatchEEEDaSI_ENKUlSG_E_clImEEDaSG_.exit.i.i"

"_ZZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS_7ContextEPNS0_12DMatrixProxyEPNS0_13DataIterProxyIFvPvEFiS8_EEEfPNS0_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS0_17DenseAdapterBatchEEEDaSI_ENKUlSG_E_clImEEDaSG_.exit.i.i": ; preds = %.lr.ph.i.i.i.epil.preheader, %bb.ag, %"_ZZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS_7ContextEPNS0_12DMatrixProxyEPNS0_13DataIterProxyIFvPvEFiS8_EEEfPNS0_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS0_17DenseAdapterBatchEEEDaSI_ENKUlSG_E_clImEEDaSG_.exit.i.i.unr-lcssa"
  %.pre10.i.i.i166.lcssa = phi float [ %.pre10.i.i.i166.1, %"_ZZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS_7ContextEPNS0_12DMatrixProxyEPNS0_13DataIterProxyIFvPvEFiS8_EEEfPNS0_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS0_17DenseAdapterBatchEEEDaSI_ENKUlSG_E_clImEEDaSG_.exit.i.i.unr-lcssa" ], [ %.pre.i.i.i.epil, %bb.ag ], [ %.pre10.i.i.i167.epil.init, %.lr.ph.i.i.i.epil.preheader ]
  %i.dy = add nuw i64 %.049152.i.i, 1             ; 2 uses
  %exitcond179.not.i.i = icmp eq i64 %i.dy, %.sroa.6.0.copyload
  br i1 %exitcond179.not.i.i, label %"_ZN7xgboost6common11ParallelForImZZZNS_4data8cpu_impl12GetDataShapeEPKNS_7ContextEPNS2_12DMatrixProxyEPNS2_13DataIterProxyIFvPvEFiSA_EEEfPNS2_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS2_17DenseAdapterBatchEEEDaSK_EUlSI_E_EEvSI_iNS0_5SchedEOT0_.exit.i", label %.lr.ph153.split.i.i, !llvm.loop !692

bb.ah:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i32 %i.bt, ptr %i.i, align 4, !tbaa !24, !noalias !801
  store i32 1, ptr %i.j, align 4, !tbaa !24, !noalias !801
  %.not.i.i.i28 = icmp slt i32 %i.bt, 1
  br i1 %.not.i.i.i28, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i: ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %.preheader137.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i: ; preds = %bb.ah
  invoke void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %50, ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.j)
          to label %.noexc22.i unwind label %bb.aw

.noexc22.i:                                       ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i
  %.pr.i.i = load ptr, ptr %50, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.not.i.i29 = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i29, label %.preheader137.i.i, label %bb.ai

bb.ai:                                            ; preds = %.noexc22.i
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #10
  %i.dz = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %51)
          to label %.noexc.i.i unwind label %bb.aj

.noexc.i.i:                                       ; preds = %bb.ai
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.dz, ptr noundef nonnull @.str.58, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i unwind label %bb.aj

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i:        ; preds = %.noexc.i.i
  %i.ea = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %51)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i unwind label %bb.ak ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i
  %i.eb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ea, ptr noundef nonnull @.str.4, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %bb.ak ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i
  %i.ec = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ea, ptr noundef nonnull @.str.59, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60.i.i unwind label %bb.ak ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i
  %i.ed = load ptr, ptr %50, align 8, !tbaa !46   ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !50
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !51
  %i.eh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ea, ptr noundef %i.ee, i64 noundef %i.eg)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i unwind label %bb.ak

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60.i.i
  %i.ei = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.eh, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63.i.i unwind label %bb.ak ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %51)
          to label %bb.am unwind label %bb.aj

bb.aj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63.i.i, %.noexc.i.i, %bb.ai
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ak:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i
  %i.ek = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %51)
          to label %bb.al unwind label %bb.as

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pn.i.i = phi { ptr, i32 } [ %i.ej, %bb.aj ], [ %i.ek, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #10
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %50) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #10
  br label %.body.i

bb.am:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #10
  %.pr127.i.i = load ptr, ptr %50, align 8, !tbaa !46 ; 4 uses
  %.not.i64.i.i = icmp eq ptr %.pr127.i.i, null
  br i1 %.not.i64.i.i, label %.preheader137.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.el = load ptr, ptr %.pr127.i.i, align 8, !tbaa !50 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.pr127.i.i, i64 16 ; 2 uses
  %i.en = icmp eq ptr %i.el, %i.em
  br i1 %i.en, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.an
  %i.eo = load i64, ptr %i.em, align 8, !tbaa !52
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.ep) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr127.i.i, i64 noundef 32) #27
  br label %.preheader137.i.i

.preheader137.i.i:                                ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, %bb.am, %.noexc22.i, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #10
  %.not156.i.i = icmp eq i64 %.sroa.6.0.copyload, 0
  %i.eq = icmp eq i64 %.sroa.7.0.copyload, 0
  %or.cond90 = select i1 %.not156.i.i, i1 true, i1 %i.eq
  br i1 %or.cond90, label %"_ZN7xgboost6common11ParallelForImZZZNS_4data8cpu_impl12GetDataShapeEPKNS_7ContextEPNS2_12DMatrixProxyEPNS2_13DataIterProxyIFvPvEFiSA_EEEfPNS2_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS2_17DenseAdapterBatchEEEDaSK_EUlSI_E_EEvSI_iNS0_5SchedEOT0_.exit.i", label %.lr.ph143.split.i.i.preheader

.lr.ph143.split.i.i.preheader:                    ; preds = %.preheader137.i.i
  %.pre10.i.i88.i.i.pre = load float, ptr %i.cp, align 4
  %xtraiter540 = and i64 %.sroa.7.0.copyload, 1
  %i.er = icmp eq i64 %.sroa.7.0.copyload, 1
  %unroll_iter543 = and i64 %.sroa.7.0.copyload, -2
  %lcmp.mod541.not = icmp eq i64 %xtraiter540, 0
  %lcmp.mod542 = trunc i64 %.sroa.7.0.copyload to i1
  br label %.lr.ph143.split.i.i

.lr.ph143.split.i.i:                              ; preds = %.lr.ph143.split.i.i.preheader, %"_ZN4dmlc12OMPException3RunIZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS2_7ContextEPNS3_12DMatrixProxyEPNS3_13DataIterProxyIFvPvEFiSB_EEEfPNS3_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS3_17DenseAdapterBatchEEEDaSL_EUlSJ_E_JmEEEvSJ_DpT0_.exit84.i.i"
  %.pre10.i.i88.i.i = phi float [ %.pre10.i.i88.i.i163.lcssa, %"_ZN4dmlc12OMPException3RunIZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS2_7ContextEPNS3_12DMatrixProxyEPNS3_13DataIterProxyIFvPvEFiSB_EEEfPNS3_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS3_17DenseAdapterBatchEEEDaSL_EUlSJ_E_JmEEEvSJ_DpT0_.exit84.i.i" ], [ %.pre10.i.i88.i.i.pre, %.lr.ph143.split.i.i.preheader ] ; 4 uses
  %.040142.i.i = phi i64 [ %i.fx, %"_ZN4dmlc12OMPException3RunIZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS2_7ContextEPNS3_12DMatrixProxyEPNS3_13DataIterProxyIFvPvEFiSB_EEEfPNS3_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS3_17DenseAdapterBatchEEEDaSL_EUlSJ_E_JmEEEvSJ_DpT0_.exit84.i.i" ], [ 0, %.lr.ph143.split.i.i.preheader ] ; 2 uses
  %i.es = mul i64 %.040142.i.i, %.sroa.7.0.copyload
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.es ; 3 uses
  br i1 %i.er, label %.lr.ph.i.i81.i.i.epil.preheader, label %.lr.ph.i.i81.i.i

.lr.ph.i.i81.i.i:                                 ; preds = %.lr.ph143.split.i.i, %bb.aq
  %.pre10.i.i88.i.i164 = phi float [ %.pre10.i.i88.i.i163.1, %bb.aq ], [ %.pre10.i.i88.i.i, %.lr.ph143.split.i.i ]
  %66 = phi float [ %68, %bb.aq ], [ %.pre10.i.i88.i.i, %.lr.ph143.split.i.i ] ; 2 uses
  %.09.i.i82.i.i = phi i64 [ %i.fn, %bb.aq ], [ 0, %.lr.ph143.split.i.i ] ; 4 uses
  %niter544 = phi i64 [ %niter544.next.1, %bb.aq ], [ 0, %.lr.ph143.split.i.i ]
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %.09.i.i82.i.i
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !223, !noalias !802 ; 2 uses
  %i.ew = fcmp ord float %i.ev, 0.000000e+00
  %i.ex = fcmp une float %i.ev, %66
  %i.ey = select i1 %i.ew, i1 %i.ex, i1 false
  br i1 %i.ey, label %bb.ao, label %.lr.ph.i.i81.i.i.1

bb.ao:                                            ; preds = %.lr.ph.i.i81.i.i
  %i.ez = mul i64 %.09.i.i82.i.i, %.sroa.6.0.i
  %i.fa = getelementptr [8 x i8], ptr %i.ck, i64 %i.ez ; 2 uses
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !44
  %i.fc = add i64 %i.fb, 1
  store i64 %i.fc, ptr %i.fa, align 8, !tbaa !44
  %.pre.i.i91.i.i = load float, ptr %i.cp, align 4 ; 2 uses
  br label %.lr.ph.i.i81.i.i.1

.lr.ph.i.i81.i.i.1:                               ; preds = %bb.ao, %.lr.ph.i.i81.i.i
  %.pre10.i.i88.i.i163 = phi float [ %.pre.i.i91.i.i, %bb.ao ], [ %.pre10.i.i88.i.i164, %.lr.ph.i.i81.i.i ]
  %67 = phi float [ %.pre.i.i91.i.i, %bb.ao ], [ %66, %.lr.ph.i.i81.i.i ] ; 2 uses
  %i.fd = or disjoint i64 %.09.i.i82.i.i, 1       ; 2 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %i.fd
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !223, !noalias !802 ; 2 uses
  %i.fg = fcmp ord float %i.ff, 0.000000e+00
  %i.fh = fcmp une float %i.ff, %67
  %i.fi = select i1 %i.fg, i1 %i.fh, i1 false
  br i1 %i.fi, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.lr.ph.i.i81.i.i.1
  %i.fj = mul i64 %i.fd, %.sroa.6.0.i
  %i.fk = getelementptr [8 x i8], ptr %i.ck, i64 %i.fj ; 2 uses
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !44
  %i.fm = add i64 %i.fl, 1
  store i64 %i.fm, ptr %i.fk, align 8, !tbaa !44
  %.pre.i.i91.i.i.1 = load float, ptr %i.cp, align 4 ; 2 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.lr.ph.i.i81.i.i.1
  %.pre10.i.i88.i.i163.1 = phi float [ %.pre.i.i91.i.i.1, %bb.ap ], [ %.pre10.i.i88.i.i163, %.lr.ph.i.i81.i.i.1 ] ; 3 uses
  %68 = phi float [ %.pre.i.i91.i.i.1, %bb.ap ], [ %67, %.lr.ph.i.i81.i.i.1 ] ; 2 uses
  %i.fn = add nuw i64 %.09.i.i82.i.i, 2           ; 2 uses
  %niter544.next.1 = add nuw i64 %niter544, 2     ; 2 uses
  %niter544.ncmp.1 = icmp eq i64 %niter544.next.1, %unroll_iter543
  br i1 %niter544.ncmp.1, label %"_ZN4dmlc12OMPException3RunIZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS2_7ContextEPNS3_12DMatrixProxyEPNS3_13DataIterProxyIFvPvEFiSB_EEEfPNS3_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS3_17DenseAdapterBatchEEEDaSL_EUlSJ_E_JmEEEvSJ_DpT0_.exit84.i.i.unr-lcssa", label %.lr.ph.i.i81.i.i, !llvm.loop !691

"_ZN4dmlc12OMPException3RunIZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS2_7ContextEPNS3_12DMatrixProxyEPNS3_13DataIterProxyIFvPvEFiSB_EEEfPNS3_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS3_17DenseAdapterBatchEEEDaSL_EUlSJ_E_JmEEEvSJ_DpT0_.exit84.i.i.unr-lcssa": ; preds = %bb.aq
  br i1 %lcmp.mod541.not, label %"_ZN4dmlc12OMPException3RunIZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS2_7ContextEPNS3_12DMatrixProxyEPNS3_13DataIterProxyIFvPvEFiSB_EEEfPNS3_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS3_17DenseAdapterBatchEEEDaSL_EUlSJ_E_JmEEEvSJ_DpT0_.exit84.i.i", label %.lr.ph.i.i81.i.i.epil.preheader

.lr.ph.i.i81.i.i.epil.preheader:                  ; preds = %"_ZN4dmlc12OMPException3RunIZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS2_7ContextEPNS3_12DMatrixProxyEPNS3_13DataIterProxyIFvPvEFiSB_EEEfPNS3_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS3_17DenseAdapterBatchEEEDaSL_EUlSJ_E_JmEEEvSJ_DpT0_.exit84.i.i.unr-lcssa", %.lr.ph143.split.i.i
  %.pre10.i.i88.i.i164.epil.init = phi float [ %.pre10.i.i88.i.i, %.lr.ph143.split.i.i ], [ %.pre10.i.i88.i.i163.1, %"_ZN4dmlc12OMPException3RunIZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS2_7ContextEPNS3_12DMatrixProxyEPNS3_13DataIterProxyIFvPvEFiSB_EEEfPNS3_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS3_17DenseAdapterBatchEEEDaSL_EUlSJ_E_JmEEEvSJ_DpT0_.exit84.i.i.unr-lcssa" ]
  %.epil.init = phi float [ %.pre10.i.i88.i.i, %.lr.ph143.split.i.i ], [ %68, %"_ZN4dmlc12OMPException3RunIZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS2_7ContextEPNS3_12DMatrixProxyEPNS3_13DataIterProxyIFvPvEFiSB_EEEfPNS3_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS3_17DenseAdapterBatchEEEDaSL_EUlSJ_E_JmEEEvSJ_DpT0_.exit84.i.i.unr-lcssa" ]
  %.09.i.i82.i.i.epil.init = phi i64 [ 0, %.lr.ph143.split.i.i ], [ %i.fn, %"_ZN4dmlc12OMPException3RunIZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS2_7ContextEPNS3_12DMatrixProxyEPNS3_13DataIterProxyIFvPvEFiSB_EEEfPNS3_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS3_17DenseAdapterBatchEEEDaSL_EUlSJ_E_JmEEEvSJ_DpT0_.exit84.i.i.unr-lcssa" ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod542)
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %.09.i.i82.i.i.epil.init
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !223, !noalias !802 ; 2 uses
  %i.fq = fcmp ord float %i.fp, 0.000000e+00
  %i.fr = fcmp une float %i.fp, %.epil.init
  %i.fs = select i1 %i.fq, i1 %i.fr, i1 false
  br i1 %i.fs, label %bb.ar, label %"_ZN4dmlc12OMPException3RunIZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS2_7ContextEPNS3_12DMatrixProxyEPNS3_13DataIterProxyIFvPvEFiSB_EEEfPNS3_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS3_17DenseAdapterBatchEEEDaSL_EUlSJ_E_JmEEEvSJ_DpT0_.exit84.i.i"

bb.ar:                                            ; preds = %.lr.ph.i.i81.i.i.epil.preheader
  %i.ft = mul i64 %.09.i.i82.i.i.epil.init, %.sroa.6.0.i
  %i.fu = getelementptr [8 x i8], ptr %i.ck, i64 %i.ft ; 2 uses
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !44
  %i.fw = add i64 %i.fv, 1
  store i64 %i.fw, ptr %i.fu, align 8, !tbaa !44
  %.pre.i.i91.i.i.epil = load float, ptr %i.cp, align 4
  br label %"_ZN4dmlc12OMPException3RunIZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS2_7ContextEPNS3_12DMatrixProxyEPNS3_13DataIterProxyIFvPvEFiSB_EEEfPNS3_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS3_17DenseAdapterBatchEEEDaSL_EUlSJ_E_JmEEEvSJ_DpT0_.exit84.i.i"

"_ZN4dmlc12OMPException3RunIZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS2_7ContextEPNS3_12DMatrixProxyEPNS3_13DataIterProxyIFvPvEFiSB_EEEfPNS3_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS3_17DenseAdapterBatchEEEDaSL_EUlSJ_E_JmEEEvSJ_DpT0_.exit84.i.i": ; preds = %.lr.ph.i.i81.i.i.epil.preheader, %bb.ar, %"_ZN4dmlc12OMPException3RunIZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS2_7ContextEPNS3_12DMatrixProxyEPNS3_13DataIterProxyIFvPvEFiSB_EEEfPNS3_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS3_17DenseAdapterBatchEEEDaSL_EUlSJ_E_JmEEEvSJ_DpT0_.exit84.i.i.unr-lcssa"
  %.pre10.i.i88.i.i163.lcssa = phi float [ %.pre10.i.i88.i.i163.1, %"_ZN4dmlc12OMPException3RunIZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS2_7ContextEPNS3_12DMatrixProxyEPNS3_13DataIterProxyIFvPvEFiSB_EEEfPNS3_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS3_17DenseAdapterBatchEEEDaSL_EUlSJ_E_JmEEEvSJ_DpT0_.exit84.i.i.unr-lcssa" ], [ %.pre.i.i91.i.i.epil, %bb.ar ], [ %.pre10.i.i88.i.i164.epil.init, %.lr.ph.i.i81.i.i.epil.preheader ]
  %i.fx = add nuw i64 %.040142.i.i, 1             ; 2 uses
  %exitcond174.not.i.i = icmp eq i64 %i.fx, %.sroa.6.0.copyload
  br i1 %exitcond174.not.i.i, label %"_ZN7xgboost6common11ParallelForImZZZNS_4data8cpu_impl12GetDataShapeEPKNS_7ContextEPNS2_12DMatrixProxyEPNS2_13DataIterProxyIFvPvEFiSA_EEEfPNS2_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS2_17DenseAdapterBatchEEEDaSK_EUlSI_E_EEvSI_iNS0_5SchedEOT0_.exit.i", label %.lr.ph143.split.i.i, !llvm.loop !697

bb.as:                                            ; preds = %bb.ak
  %i.fy = landingpad { ptr, i32 }
          catch ptr null
  %i.fz = extractvalue { ptr, i32 } %i.fy, 0
  call void @__clang_call_terminate(ptr %i.fz) #28
  unreachable

"_ZN7xgboost6common11ParallelForImZZZNS_4data8cpu_impl12GetDataShapeEPKNS_7ContextEPNS2_12DMatrixProxyEPNS2_13DataIterProxyIFvPvEFiSA_EEEfPNS2_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS2_17DenseAdapterBatchEEEDaSK_EUlSI_E_EEvSI_iNS0_5SchedEOT0_.exit.i": ; preds = %"_ZN4dmlc12OMPException3RunIZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS2_7ContextEPNS3_12DMatrixProxyEPNS3_13DataIterProxyIFvPvEFiSB_EEEfPNS3_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS3_17DenseAdapterBatchEEEDaSL_EUlSJ_E_JmEEEvSJ_DpT0_.exit84.i.i", %"_ZZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS_7ContextEPNS0_12DMatrixProxyEPNS0_13DataIterProxyIFvPvEFiS8_EEEfPNS0_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS0_17DenseAdapterBatchEEEDaSI_ENKUlSG_E_clImEEDaSG_.exit.i.i", %.preheader137.i.i, %.preheader.i.i
  %i.ga = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN7xgboost16HostDeviceVectorImE10HostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %52)
          to label %bb.at unwind label %bb.ax

bb.at:                                            ; preds = %"_ZN7xgboost6common11ParallelForImZZZNS_4data8cpu_impl12GetDataShapeEPKNS_7ContextEPNS2_12DMatrixProxyEPNS2_13DataIterProxyIFvPvEFiSA_EEEfPNS2_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS2_17DenseAdapterBatchEEEDaSK_EUlSI_E_EEvSI_iNS0_5SchedEOT0_.exit.i"
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !83 ; 4 uses
  %i.gc = invoke noundef i64 @_ZNK7xgboost16HostDeviceVectorImE4SizeEv(ptr noundef nonnull align 8 dereferenceable(25) %52)
          to label %_ZNK7xgboost6linalg6TensorImLi2EE4SizeEv.exit.i unwind label %bb.ay ; 2 uses

_ZNK7xgboost6linalg6TensorImLi2EE4SizeEv.exit.i:  ; preds = %bb.at
  %.idx.i = shl i64 %i.gc, 3                      ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 %.idx.i
  %.not6.i.i = icmp eq i64 %i.gc, 0
  br i1 %.not6.i.i, label %_ZSt10accumulateIPmmET0_T_S2_S1_.exit.i, label %.lr.ph.i25.i.preheader

.lr.ph.i25.i.preheader:                           ; preds = %_ZNK7xgboost6linalg6TensorImLi2EE4SizeEv.exit.i
  %i.ge = add i64 %.idx.i, -8                     ; 2 uses
  %i.gf = lshr exact i64 %i.ge, 3
  %i.gg = add nuw nsw i64 %i.gf, 1                ; 2 uses
  %min.iters.check440 = icmp ult i64 %i.ge, 24
  br i1 %min.iters.check440, label %.lr.ph.i25.i.preheader486, label %vector.ph441

vector.ph441:                                     ; preds = %.lr.ph.i25.i.preheader
  %n.vec442 = and i64 %i.gg, 4611686018427387900  ; 3 uses
  %i.gh = shl i64 %n.vec442, 3
  %i.gi = getelementptr i8, ptr %i.gb, i64 %i.gh
  br label %vector.body443

vector.body443:                                   ; preds = %vector.body443, %vector.ph441
  %index444 = phi i64 [ 0, %vector.ph441 ], [ %index.next450, %vector.body443 ] ; 2 uses
  %vec.phi445 = phi <2 x i64> [ zeroinitializer, %vector.ph441 ], [ %i.gl, %vector.body443 ]
  %vec.phi446 = phi <2 x i64> [ zeroinitializer, %vector.ph441 ], [ %i.gm, %vector.body443 ]
  %i.gj = shl i64 %index444, 3
  %next.gep447 = getelementptr i8, ptr %i.gb, i64 %i.gj ; 2 uses
  %i.gk = getelementptr i8, ptr %next.gep447, i64 16
  %wide.load448 = load <2 x i64>, ptr %next.gep447, align 8, !tbaa !44
  %wide.load449 = load <2 x i64>, ptr %i.gk, align 8, !tbaa !44
  %i.gl = add <2 x i64> %wide.load448, %vec.phi445 ; 2 uses
  %i.gm = add <2 x i64> %wide.load449, %vec.phi446 ; 2 uses
  %index.next450 = add nuw i64 %index444, 4       ; 2 uses
  %i.gn = icmp eq i64 %index.next450, %n.vec442
  br i1 %i.gn, label %middle.block451, label %vector.body443, !llvm.loop !698

middle.block451:                                  ; preds = %vector.body443
  %bin.rdx452 = add <2 x i64> %i.gm, %i.gl
  %i.go = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx452) ; 2 uses
  %cmp.n453 = icmp eq i64 %i.gg, %n.vec442
  br i1 %cmp.n453, label %_ZSt10accumulateIPmmET0_T_S2_S1_.exit.i, label %.lr.ph.i25.i.preheader486

.lr.ph.i25.i.preheader486:                        ; preds = %.lr.ph.i25.i.preheader, %middle.block451
  %.08.i.i.ph = phi i64 [ 0, %.lr.ph.i25.i.preheader ], [ %i.go, %middle.block451 ]
  %.057.i.i.ph = phi ptr [ %i.gb, %.lr.ph.i25.i.preheader ], [ %i.gi, %middle.block451 ]
  br label %.lr.ph.i25.i

.lr.ph.i25.i:                                     ; preds = %.lr.ph.i25.i.preheader486, %.lr.ph.i25.i
  %.08.i.i = phi i64 [ %i.gq, %.lr.ph.i25.i ], [ %.08.i.i.ph, %.lr.ph.i25.i.preheader486 ]
  %.057.i.i = phi ptr [ %i.gr, %.lr.ph.i25.i ], [ %.057.i.i.ph, %.lr.ph.i25.i.preheader486 ] ; 2 uses
  %i.gp = load i64, ptr %.057.i.i, align 8, !tbaa !44
  %i.gq = add i64 %i.gp, %.08.i.i                 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 8 ; 2 uses
  %.not.i26.i = icmp eq ptr %i.gr, %i.gd
  br i1 %.not.i26.i, label %_ZSt10accumulateIPmmET0_T_S2_S1_.exit.i, label %.lr.ph.i25.i, !llvm.loop !699

_ZSt10accumulateIPmmET0_T_S2_S1_.exit.i:          ; preds = %.lr.ph.i25.i, %middle.block451, %_ZNK7xgboost6linalg6TensorImLi2EE4SizeEv.exit.i
  %.0.lcssa.i.i = phi i64 [ 0, %_ZNK7xgboost6linalg6TensorImLi2EE4SizeEv.exit.i ], [ %i.go, %middle.block451 ], [ %i.gq, %.lr.ph.i25.i ]
  %i.gs = icmp ne i32 %i.bt, 0
  %i.gt = icmp ne ptr %i.bz, %i.ca
  %or.cond.i = select i1 %i.gs, i1 %i.gt, i1 false
  br i1 %or.cond.i, label %.preheader.lr.ph.split.i, label %"_ZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS_7ContextEPNS0_12DMatrixProxyEPNS0_13DataIterProxyIFvPvEFiS8_EEEfPNS0_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS0_17DenseAdapterBatchEEEDaSI_.exit"

.preheader.lr.ph.split.i:                         ; preds = %_ZSt10accumulateIPmmET0_T_S2_S1_.exit.i
  %i.gu = load ptr, ptr %i.bv, align 8, !tbaa !792, !nonnull !53, !align !54
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 32
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !83 ; 6 uses
  %scevgep459 = getelementptr i8, ptr %i.gw, i64 %i.cd
  %i.gx = add nsw i64 %i.bu, 2305843009213693951
  %i.gy = mul i64 %.sroa.0.0.i, %i.gx
  %i.gz = shl i64 %i.gy, 3
  %i.ha = getelementptr i8, ptr %i.ck, i64 %i.gz
  %scevgep460 = getelementptr i8, ptr %i.ha, i64 %i.cd
  %min.iters.check466 = icmp ugt i64 %i.ce, 5
  %ident.check457.not = icmp eq i64 %.sroa.6.0.i, 1
  %or.cond482 = select i1 %min.iters.check466, i1 %ident.check457.not, i1 false
  %bound0461 = icmp ult ptr %i.gw, %scevgep460
  %bound1462 = icmp ult ptr %i.ck, %scevgep459
  %found.conflict463 = and i1 %bound0461, %bound1462
  %.mask481 = and i64 %.sroa.0.0.i, 1152921504606846976
  %stride.check464 = icmp ne i64 %.mask481, 0
  %i.hb = or i1 %found.conflict463, %stride.check464
  %n.vec468 = and i64 %i.ce, -4                   ; 3 uses
  %cmp.n477 = icmp eq i64 %i.ce, %n.vec468
  %i.hc = and i64 %i.cd, 8
  %lcmp.mod551.not = icmp eq i64 %i.hc, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %storemerge48.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %i.hz, %._crit_edge.i ] ; 2 uses
  %i.hd = mul i64 %storemerge48.i, %.sroa.0.0.i
  %i.he = getelementptr [8 x i8], ptr %i.ck, i64 %i.hd ; 4 uses
  %or.cond482.not = xor i1 %or.cond482, true
  %brmerge = select i1 %or.cond482.not, i1 true, i1 %i.hb
  br i1 %brmerge, label %scalar.ph465.preheader, label %vector.body469

vector.body469:                                   ; preds = %.preheader.i, %vector.body469
  %index470 = phi i64 [ %index.next475, %vector.body469 ], [ 0, %.preheader.i ] ; 3 uses
  %i.hf = getelementptr [8 x i8], ptr %i.he, i64 %index470 ; 2 uses
  %i.hg = getelementptr i8, ptr %i.hf, i64 16
  %wide.load471 = load <2 x i64>, ptr %i.hf, align 8, !tbaa !44, !alias.scope !805
  %wide.load472 = load <2 x i64>, ptr %i.hg, align 8, !tbaa !44, !alias.scope !805
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %index470 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16 ; 2 uses
  %wide.load473 = load <2 x i64>, ptr %i.hh, align 8, !tbaa !44, !alias.scope !806, !noalias !805
  %wide.load474 = load <2 x i64>, ptr %i.hi, align 8, !tbaa !44, !alias.scope !806, !noalias !805
  %i.hj = add <2 x i64> %wide.load473, %wide.load471
  %i.hk = add <2 x i64> %wide.load474, %wide.load472
  store <2 x i64> %i.hj, ptr %i.hh, align 8, !tbaa !44, !alias.scope !806, !noalias !805
  store <2 x i64> %i.hk, ptr %i.hi, align 8, !tbaa !44, !alias.scope !806, !noalias !805
  %index.next475 = add nuw i64 %index470, 4       ; 2 uses
  %i.hl = icmp eq i64 %index.next475, %n.vec468
  br i1 %i.hl, label %middle.block476, label %vector.body469, !llvm.loop !703

middle.block476:                                  ; preds = %vector.body469
  br i1 %cmp.n477, label %._crit_edge.i, label %scalar.ph465.preheader

scalar.ph465.preheader:                           ; preds = %.preheader.i, %middle.block476
  %storemerge1747.i.ph = phi i64 [ %n.vec468, %middle.block476 ], [ 0, %.preheader.i ] ; 5 uses
  %.neg554 = or disjoint i64 %storemerge1747.i.ph, 1
  br i1 %lcmp.mod551.not, label %scalar.ph465.prol.loopexit, label %scalar.ph465.prol

scalar.ph465.prol:                                ; preds = %scalar.ph465.preheader
  %i.hm = mul i64 %storemerge1747.i.ph, %.sroa.6.0.i
  %i.hn = getelementptr [8 x i8], ptr %i.he, i64 %i.hm
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !44
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %storemerge1747.i.ph ; 2 uses
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !44
  %i.hr = add i64 %i.hq, %i.ho
  store i64 %i.hr, ptr %i.hp, align 8, !tbaa !44
  %i.hs = or disjoint i64 %storemerge1747.i.ph, 1
  br label %scalar.ph465.prol.loopexit

scalar.ph465.prol.loopexit:                       ; preds = %scalar.ph465.prol, %scalar.ph465.preheader
  %storemerge1747.i.unr = phi i64 [ %storemerge1747.i.ph, %scalar.ph465.preheader ], [ %i.hs, %scalar.ph465.prol ]
  %i.ht = icmp eq i64 %i.ce, %.neg554
  br i1 %i.ht, label %._crit_edge.i, label %scalar.ph465

bb.au:                                            ; preds = %_ZN7xgboost6linalg6TensorImLi2EEC2ImLi2EEERAT0__KT_NS_9DeviceOrdENS0_5OrderE.exit.i
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.av:                                            ; preds = %bb.z
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.aw:                                            ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ax:                                            ; preds = %"_ZN7xgboost6common11ParallelForImZZZNS_4data8cpu_impl12GetDataShapeEPKNS_7ContextEPNS2_12DMatrixProxyEPNS2_13DataIterProxyIFvPvEFiSA_EEEfPNS2_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS2_17DenseAdapterBatchEEEDaSK_EUlSI_E_EEvSI_iNS0_5SchedEOT0_.exit.i"
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ay:                                            ; preds = %bb.at
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

._crit_edge.i:                                    ; preds = %scalar.ph465.prol.loopexit, %scalar.ph465, %middle.block476
  %i.hz = add nuw i64 %storemerge48.i, 1          ; 2 uses
  %exitcond51.not.i = icmp eq i64 %i.hz, %i.bu
  br i1 %exitcond51.not.i, label %"_ZZZN7xgboost4data8cpu_impl12GetDataShapeEPKNS_7ContextEPNS0_12DMatrixProxyEPNS0_13DataIterProxyIFvPvEFiS8_EEEfPNS0_16ExternalDataInfoEENK3$_0clEvENKUlRKT_E_clINS0_17DenseAdapterBatchEEEDaSI_.exit", label %.preheader.i, !llvm.loop !704

scalar.ph465:                                     ; preds = %scalar.ph465.prol.loopexit, %scalar.ph465
  %storemerge1747.i = phi i64 [ %i.in, %scalar.ph465 ], [ %storemerge1747.i.unr, %scalar.ph465.prol.loopexit ] ; 4 uses
  %i.ia = mul i64 %storemerge1747.i, %.sroa.6.0.i
  %i.ib = getelementptr [8 x i8], ptr %i.he, i64 %i.ia
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !44
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %storemerge1747.i ; 2 uses
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !44
  %i.if = add i64 %i.ie, %i.ic
  store i64 %i.if, ptr %i.id, align 8, !tbaa !44
  %i.ig = add nuw i64 %storemerge1747.i, 1        ; 2 uses
  %i.ih = mul i64 %i.ig, %.sroa.6.0.i
  %i.ii = getelementptr [8 x i8], ptr %i.he, i64 %i.ih
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !44
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %i.ig ; 2 uses
end_hunk_0
