Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/iterative_dmatrix?download=true
inline.NumInlined: 5371
inline.NumDeleted: 1890
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 51
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_ZN7xgboost4data16IterativeDMatrix16GetGradientIndexEPKNS_7ContextERKNS_10BatchParamE:bb.a
bb.w:                                             ; preds = %_ZSt11make_sharedIN7xgboost16GHistIndexMatrixEJPNS0_7ContextERNS0_8MetaInfoERNS0_11EllpackPageERKNS0_10BatchParamEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESD_E4typeEEDpOT0_.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 4 uses
  %i.bs = load atomic i64, ptr %i.br acquire, align 8 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 4294967297
  %i.bu = trunc i64 %i.bs to i32                  ; 2 uses
  br i1 %i.bt, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.br, align 8, !tbaa !109
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  store i32 0, ptr %i.bv, align 4, !tbaa !110
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !29
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #13, !inline_history !555
  %i.bz = load ptr, ptr %i.bq, align 8, !tbaa !29
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #13, !inline_history !555
  br label %_ZNSt12__shared_ptrIN7xgboost16GHistIndexMatrixELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.y:                                             ; preds = %bb.w
  %i.cc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95
  %.not.i.i.i.i.i27 = icmp eq i8 %i.cc, 0
  br i1 %.not.i.i.i.i.i27, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cd = add nsw i32 %i.bu, -1
  store i32 %i.cd, ptr %i.br, align 8, !tbaa !107
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i28

bb.aa:                                            ; preds = %bb.y
  %i.ce = atomicrmw volatile add ptr %i.br, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i28

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i28: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i.i29 = phi i32 [ %i.bu, %bb.z ], [ %i.ce, %bb.aa ]
  %i.cf = icmp eq i32 %.0.i.i.i.i.i.i29, 1
  br i1 %i.cf, label %bb.ab, label %_ZNSt12__shared_ptrIN7xgboost16GHistIndexMatrixELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !111

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i28
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #13
  br label %_ZNSt12__shared_ptrIN7xgboost16GHistIndexMatrixELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ac:                                            ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @_ZNK7xgboost7Context7MakeCPUEv(ptr dead_on_unwind nonnull writable sret(%"struct.xgboost::Context") align 8 %6, ptr noundef nonnull align 8 dereferenceable(5084) %2)
  %i.cg = load ptr, ptr %i.t, align 8, !tbaa !172
  %i.ch = invoke noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #31
          to label %.noexc37 unwind label %bb.ap  ; 6 uses

.noexc37:                                         ; preds = %bb.ac
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 5096
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i32 1, ptr %i.cj, align 8, !tbaa !109, !noalias !564
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 12
  store i32 1, ptr %i.ck, align 4, !tbaa !110, !noalias !564
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN7xgboost16GHistIndexMatrixESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ch, align 8, !tbaa !29, !noalias !564
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 2 uses
  invoke void @_ZN7xgboost16GHistIndexMatrixC1EPKNS_7ContextERKNS_8MetaInfoERKNS_11EllpackPageERKNS_10BatchParamE(ptr noundef nonnull align 8 dereferenceable(225) %i.cl, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(248) %i.ci, ptr noundef nonnull align 1 %i.cg, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %_ZSt11make_sharedIN7xgboost16GHistIndexMatrixEJPNS0_7ContextERNS0_8MetaInfoERNS0_11EllpackPageERKNS0_10BatchParamEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESD_E4typeEEDpOT0_.exit38 unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN7xgboost16GHistIndexMatrixESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i36, !noalias !564

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN7xgboost16GHistIndexMatrixESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i36: ; preds = %.noexc37
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef 248) #33, !noalias !564
  br label %.body

_ZSt11make_sharedIN7xgboost16GHistIndexMatrixEJPNS0_7ContextERNS0_8MetaInfoERNS0_11EllpackPageERKNS0_10BatchParamEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESD_E4typeEEDpOT0_.exit38: ; preds = %.noexc37
  store ptr %i.cl, ptr %i.ab, align 8, !tbaa !122
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 5368 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !106 ; 8 uses
  store ptr %i.ch, ptr %i.cn, align 8, !tbaa !106
  %.not.i.i.i.i39 = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i.i39, label %_ZNSt12__shared_ptrIN7xgboost16GHistIndexMatrixELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit48, label %bb.ad

bb.ad:                                            ; preds = %_ZSt11make_sharedIN7xgboost16GHistIndexMatrixEJPNS0_7ContextERNS0_8MetaInfoERNS0_11EllpackPageERKNS0_10BatchParamEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESD_E4typeEEDpOT0_.exit38
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 4 uses
  %i.cq = load atomic i64, ptr %i.cp acquire, align 8 ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 4294967297
  %i.cs = trunc i64 %i.cq to i32                  ; 2 uses
  br i1 %i.cr, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.cp, align 8, !tbaa !109
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 12
  store i32 0, ptr %i.ct, align 4, !tbaa !110
  %i.cu = load ptr, ptr %i.co, align 8, !tbaa !29
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(16) %i.co) #13, !inline_history !555
  %i.cx = load ptr, ptr %i.co, align 8, !tbaa !29
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(16) %i.co) #13, !inline_history !555
  br label %_ZNSt12__shared_ptrIN7xgboost16GHistIndexMatrixELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit48

bb.af:                                            ; preds = %bb.ad
  %i.da = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95
  %.not.i.i.i.i.i40 = icmp eq i8 %i.da, 0
  br i1 %.not.i.i.i.i.i40, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.db = add nsw i32 %i.cs, -1
  store i32 %i.db, ptr %i.cp, align 8, !tbaa !107
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i41

bb.ah:                                            ; preds = %bb.af
  %i.dc = atomicrmw volatile add ptr %i.cp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i41

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i41: ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i.i.i42 = phi i32 [ %i.cs, %bb.ag ], [ %i.dc, %bb.ah ]
  %i.dd = icmp eq i32 %.0.i.i.i.i.i.i42, 1
  br i1 %i.dd, label %bb.ai, label %_ZNSt12__shared_ptrIN7xgboost16GHistIndexMatrixELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit48, !prof !111

bb.ai:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i41
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.co) #13
  br label %_ZNSt12__shared_ptrIN7xgboost16GHistIndexMatrixELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit48

_ZNSt12__shared_ptrIN7xgboost16GHistIndexMatrixELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit48: ; preds = %bb.ai, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i41, %bb.ae, %_ZSt11make_sharedIN7xgboost16GHistIndexMatrixEJPNS0_7ContextERNS0_8MetaInfoERNS0_11EllpackPageERKNS0_10BatchParamEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESD_E4typeEEDpOT0_.exit38
  %i.de = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !106 ; 8 uses
  %.not.i.i.i49 = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i49, label %_ZNSt12__shared_ptrIN7xgboost11CUDAContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt12__shared_ptrIN7xgboost16GHistIndexMatrixELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit48
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 4 uses
  %i.dh = load atomic i64, ptr %i.dg acquire, align 8 ; 2 uses
  %i.di = icmp eq i64 %i.dh, 4294967297
  %i.dj = trunc i64 %i.dh to i32                  ; 2 uses
  br i1 %i.di, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.dg, align 8, !tbaa !109
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  store i32 0, ptr %i.dk, align 4, !tbaa !110
  %i.dl = load ptr, ptr %i.df, align 8, !tbaa !29
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(16) %i.df) #13, !inline_history !5
  %i.do = load ptr, ptr %i.df, align 8, !tbaa !29
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(16) %i.df) #13, !inline_history !5
  br label %_ZNSt12__shared_ptrIN7xgboost11CUDAContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.al:                                            ; preds = %bb.aj
  %i.dr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95
  %.not.i.i.i.i50 = icmp eq i8 %i.dr, 0
  br i1 %.not.i.i.i.i50, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ds = add nsw i32 %i.dj, -1
  store i32 %i.ds, ptr %i.dg, align 8, !tbaa !107
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.an:                                            ; preds = %bb.al
  %i.dt = atomicrmw volatile add ptr %i.dg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.an, %bb.am
  %.0.i.i.i.i.i = phi i32 [ %i.dj, %bb.am ], [ %i.dt, %bb.an ]
  %i.du = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.du, label %bb.ao, label %_ZNSt12__shared_ptrIN7xgboost11CUDAContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !111

bb.ao:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.df) #13
  br label %_ZNSt12__shared_ptrIN7xgboost11CUDAContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN7xgboost11CUDAContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.ao, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ak, %_ZNSt12__shared_ptrIN7xgboost16GHistIndexMatrixELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit48
  %i.dv = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !94 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZN7xgboost7ContextD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt12__shared_ptrIN7xgboost11CUDAContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.dz = load i64, ptr %i.dx, align 8, !tbaa !95
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.ea) #33
  br label %_ZN7xgboost7ContextD2Ev.exit

_ZN7xgboost7ContextD2Ev.exit:                     ; preds = %_ZNSt12__shared_ptrIN7xgboost11CUDAContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %_ZNSt12__shared_ptrIN7xgboost16GHistIndexMatrixELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ap:                                            ; preds = %bb.ac
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN7xgboost16GHistIndexMatrixESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i36, %bb.ap
  %eh.lpad-body = phi { ptr, i32 } [ %i.eb, %bb.ap ], [ %i.cm, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN7xgboost16GHistIndexMatrixESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i36 ]
  call void @_ZN7xgboost7ContextD2Ev(ptr noundef nonnull align 8 dead_on_return(5084) dereferenceable(5084) %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %common.resume

_ZNSt12__shared_ptrIN7xgboost16GHistIndexMatrixELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZSt11make_sharedIN7xgboost16GHistIndexMatrixEJPNS0_7ContextERNS0_8MetaInfoERNS0_11EllpackPageERKNS0_10BatchParamEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESD_E4typeEEDpOT0_.exit, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i28, %bb.ab, %_ZSt11make_sharedIN7xgboost16GHistIndexMatrixEJRPKNS0_7ContextERNS0_8MetaInfoERNS0_11EllpackPageERKNS0_10BatchParamEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESF_E4typeEEDpOT0_.exit, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.t, %_ZN7xgboost7ContextD2Ev.exit, %bb.l
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !37
  %or.cond = fcmp ueq double %i.ed, 2.000000e-01
  br i1 %or.cond, label %bb.aw, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt12__shared_ptrIN7xgboost16GHistIndexMatrixELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ee = call noundef zeroext i1 @_ZN7xgboost13ConsoleLogger9ShouldLogENS0_12LogVerbosityE(i32 noundef 1)
  br i1 %i.ee, label %.noexc.i, label %bb.aw

.noexc.i:                                         ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.ef = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.ef, ptr %8, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 61, ptr %i.a, align 8, !tbaa !112
  %i.eg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc51 unwind label %bb.as  ; 3 uses

.noexc51:                                         ; preds = %.noexc.i
  store ptr %i.eg, ptr %8, align 8, !tbaa !94
  %i.eh = load i64, ptr %i.a, align 8, !tbaa !112 ; 3 uses
  store i64 %i.eh, ptr %i.ef, align 8, !tbaa !95
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(61) %i.eg, ptr noundef nonnull align 1 dereferenceable(61) @.str, i64 61, i1 false)
  %i.ei = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.eh, ptr %i.ei, align 8, !tbaa !96
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.eh
  store i8 0, ptr %i.ej, align 1, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  invoke void @_ZN7xgboost13ConsoleLoggerC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiNS0_12LogVerbosityE(ptr noundef nonnull align 8 dereferenceable(380) %7, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 150, i32 noundef 1)
          to label %bb.ar unwind label %bb.at

bb.ar:                                            ; preds = %.noexc51
  %i.ek = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @.str.17, i64 noundef 90)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53 unwind label %bb.au ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53: ; preds = %bb.ar
  call void @_ZN7xgboost13ConsoleLoggerD1Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %7) #13
  %i.el = load ptr, ptr %8, align 8, !tbaa !94    ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.ef
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53
  %i.en = load i64, ptr %i.ef, align 8, !tbaa !95
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.eo) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %bb.aw

bb.as:                                            ; preds = %.noexc.i
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

bb.at:                                            ; preds = %.noexc51
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.au:                                            ; preds = %bb.ar
  %i.er = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7xgboost13ConsoleLoggerD1Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %7) #13
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.pn = phi { ptr, i32 } [ %i.er, %bb.au ], [ %i.eq, %bb.at ] ; 2 uses
  %i.es = load ptr, ptr %8, align 8, !tbaa !94    ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.ef
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.av
  %i.eu = load i64, ptr %i.ef, align 8, !tbaa !95
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ev) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54, %bb.as
  %.pn.pn = phi { ptr, i32 } [ %i.ep, %bb.as ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54 ], [ %.pn, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %common.resume

bb.aw:                                            ; preds = %bb.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt12__shared_ptrIN7xgboost16GHistIndexMatrixELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  %i.ew = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #31 ; 4 uses
  %i.ex = load ptr, ptr %i.ab, align 8, !tbaa !131 ; 3 uses
  store ptr %i.ex, ptr %10, align 8, !tbaa !174
  %i.ey = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 5368
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !106 ; 4 uses
  store ptr %i.fa, ptr %i.ey, align 8, !tbaa !106
  %.not.i.i.i57 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i57, label %_ZNSt10shared_ptrIKN7xgboost16GHistIndexMatrixEEC2IS1_vEERKS_IT_E.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8 ; 3 uses
  %i.fc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95
  %.not.i.i.i.i58 = icmp eq i8 %i.fc, 0
  br i1 %.not.i.i.i.i58, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fd = load i32, ptr %i.fb, align 4, !tbaa !107
  %i.fe = add nsw i32 %i.fd, 1
  store i32 %i.fe, ptr %i.fb, align 4, !tbaa !107
  br label %_ZNSt10shared_ptrIKN7xgboost16GHistIndexMatrixEEC2IS1_vEERKS_IT_E.exit

bb.az:                                            ; preds = %bb.ax
  %i.ff = atomicrmw volatile add ptr %i.fb, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %10, align 8, !tbaa !174
  %.pre115 = load ptr, ptr %i.ey, align 8, !tbaa !106
  br label %_ZNSt10shared_ptrIKN7xgboost16GHistIndexMatrixEEC2IS1_vEERKS_IT_E.exit

_ZNSt10shared_ptrIKN7xgboost16GHistIndexMatrixEEC2IS1_vEERKS_IT_E.exit: ; preds = %bb.aw, %bb.ay, %bb.az
  %i.fg = phi ptr [ null, %bb.aw ], [ %i.fa, %bb.ay ], [ %.pre115, %bb.az ]
  %i.fh = phi ptr [ %i.ex, %bb.aw ], [ %i.ex, %bb.ay ], [ %.pre, %bb.az ]
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN7xgboost4data23SimpleBatchIteratorImplINS_16GHistIndexMatrixEEE, i64 16), ptr %i.ew, align 8, !tbaa !29
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store ptr %i.fh, ptr %i.fi, align 8, !tbaa !174
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  store ptr null, ptr %i.ey, align 8, !tbaa !106
  store ptr %i.fg, ptr %i.fj, align 8, !tbaa !106
  store ptr null, ptr %10, align 8, !tbaa !174
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  invoke void @_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_16GHistIndexMatrixEEELN9__gnu_cxx12_Lock_policyE2EE5resetIS3_EENSt9enable_ifIXsr21__sp_is_constructibleIS3_T_EE5valueEvE4typeEPS9_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull %i.ew)
          to label %_ZNSt12__shared_ptrIKN7xgboost16GHistIndexMatrixELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %.body59

.body59:                                          ; preds = %_ZNSt10shared_ptrIKN7xgboost16GHistIndexMatrixEEC2IS1_vEERKS_IT_E.exit
  %i.fk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_16GHistIndexMatrixEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #13
  call void @_ZNSt12__shared_ptrIKN7xgboost16GHistIndexMatrixELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  br label %common.resume

_ZNSt12__shared_ptrIKN7xgboost16GHistIndexMatrixELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIKN7xgboost16GHistIndexMatrixEEC2IS1_vEERKS_IT_E.exit
  %.pre116 = load ptr, ptr %9, align 8, !tbaa !177 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.pre117 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !106 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.not.i.i.i.i65 = icmp eq ptr %.pre117, null
  br i1 %.not.i.i.i.i65, label %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit.thread, label %bb.ba

_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit.thread: ; preds = %_ZNSt12__shared_ptrIKN7xgboost16GHistIndexMatrixELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  store ptr %.pre116, ptr %0, align 8, !tbaa !177
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.fm, align 8, !tbaa !106
  br label %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit75

bb.ba:                                            ; preds = %_ZNSt12__shared_ptrIKN7xgboost16GHistIndexMatrixELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.fn = getelementptr inbounds nuw i8, ptr %.pre117, i64 8 ; 3 uses
  %i.fo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95
  %.not.i.i.i.i.i66 = icmp eq i8 %i.fo, 0
  br i1 %.not.i.i.i.i.i66, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fp = load i32, ptr %i.fn, align 4, !tbaa !107
  %i.fq = add nsw i32 %i.fp, 1
  store i32 %i.fq, ptr %i.fn, align 4, !tbaa !107
  br label %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit

bb.bc:                                            ; preds = %bb.ba
  %i.fr = atomicrmw volatile add ptr %i.fn, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit

_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit: ; preds = %bb.bc, %bb.bb
  %.pr = load ptr, ptr %i.fl, align 8, !tbaa !106 ; 8 uses
  store ptr %.pre116, ptr %0, align 8, !tbaa !177
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pre117, ptr %i.fs, align 8, !tbaa !106
  %.not.i.i.i71 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i71, label %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit75, label %bb.bd

bb.bd:                                            ; preds = %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit
  %i.ft = getelementptr inbounds nuw i8, ptr %.pr, i64 8 ; 4 uses
  %i.fu = load atomic i64, ptr %i.ft acquire, align 8 ; 2 uses
  %i.fv = icmp eq i64 %i.fu, 4294967297
  %i.fw = trunc i64 %i.fu to i32                  ; 2 uses
  br i1 %i.fv, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  store i32 0, ptr %i.ft, align 8, !tbaa !109
  %i.fx = getelementptr inbounds nuw i8, ptr %.pr, i64 12
  store i32 0, ptr %i.fx, align 4, !tbaa !110
  %i.fy = load ptr, ptr %.pr, align 8, !tbaa !29
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8
  call void %i.ga(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #13, !inline_history !9
  %i.gb = load ptr, ptr %.pr, align 8, !tbaa !29
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  %i.gd = load ptr, ptr %i.gc, align 8
  call void %i.gd(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #13, !inline_history !9
  br label %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit75

bb.bf:                                            ; preds = %bb.bd
  %i.ge = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95
  %.not.i.i.i.i72 = icmp eq i8 %i.ge, 0
  br i1 %.not.i.i.i.i72, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
end_hunk_0
