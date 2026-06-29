inline.NumInlined: 127525
inline.NumDeleted: 25083
loop-unroll.NumCompletelyUnrolled: 1344
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 1383
begin_hunk_0_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS3_10VectorExecEEESB_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESF_EEEJSF_SF_EEEE7iterateIJNS3_20ConstantVectorReaderISF_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_:bb.a
  %.not.i.i.i.i.i30 = icmp eq i8 %i.cq, 0
  br i1 %.not.i.i.i.i.i30, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cr = add nsw i32 %i.ci, -1
  store i32 %i.cr, ptr %i.cf, align 8, !tbaa !3, !noalias !40590
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i31

bb.w:                                             ; preds = %bb.u
  %i.cs = atomicrmw volatile add ptr %i.cf, i32 -1 acq_rel, align 4, !noalias !40590
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i31

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i31: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i32 = phi i32 [ %i.ci, %bb.v ], [ %i.cs, %bb.w ]
  %i.ct = icmp eq i32 %.0.i.i.i.i.i.i32, 1
  br i1 %i.ct, label %bb.x, label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit, !prof !38

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i31
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #31, !noalias !40590
  br label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit

bb.y:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEEaSEOS4_.exit
  %i.cu = load ptr, ptr %2, align 16, !tbaa !1145, !noalias !40590
  %.not.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i, label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit, label %bb.z, !prof !596

bb.z:                                             ; preds = %bb.y
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %2), !noalias !40590
  br label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit

_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEEaSEOS4_.exit, %bb.r, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i31, %bb.x, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !40590
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !40590
  %.pre = load i32, ptr %8, align 8, !tbaa !39249
  %.pre82 = load ptr, ptr %i.aj, align 8
  br label %.noexc13

bb.aa:                                            ; preds = %.noexc27, %bb.k, %bb.j
  %i.cv = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !40590
  call void @_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #31, !noalias !40590
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !40590
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !40590
  br label %.body

.noexc13:                                         ; preds = %bb.i, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit
  %i.cw = phi ptr [ %.sroa.2.0.copyload.i20, %bb.i ], [ %.pre82, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit ]
  %i.cx = phi i32 [ %i.bf, %bb.i ], [ %.pre, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31, !noalias !40590
  %i.cy = load ptr, ptr %i.bb, align 8, !tbaa !38376, !noalias !40590
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31, !noalias !40590
  %i.cz = icmp ult i32 %i.cx, 13
  %i.da = select i1 %i.cz, ptr %i.ap, ptr %i.cw
  %i.db = zext i32 %i.cx to i64
  store i64 %i.db, ptr %6, align 8, !noalias !40590
  store ptr %i.da, ptr %i.aq, align 8, !noalias !40590
  invoke void @_ZNK8facebook5velox9functions17DateTimeFormatter5parseERKSt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.folly::Expected.14860") align 8 %5, ptr noundef nonnull align 8 dereferenceable(44) %i.cy, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %.noexc14 unwind label %bb.at

.noexc14:                                         ; preds = %.noexc13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31, !noalias !40590
  %i.dc = load i8, ptr %i.ar, align 8, !tbaa !40139, !noalias !40590
  switch i8 %i.dc, label %.invoke [
    i8 2, label %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit
    i8 1, label %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit
  ], !prof !4660

_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit: ; preds = %.noexc14
  %i.dd = load ptr, ptr %5, align 16, !tbaa !1145 ; 4 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %.noexc.thread, label %bb.ab

bb.ab:                                            ; preds = %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit
  %i.df = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34
          to label %.noexc37 unwind label %bb.ah  ; 6 uses

.noexc37:                                         ; preds = %bb.ab
  %i.dg = load i8, ptr %i.dd, align 8, !tbaa !1148
  store i8 %i.dg, ptr %i.df, align 8, !tbaa !1148
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 24 ; 3 uses
  store ptr %i.dj, ptr %i.dh, align 8, !tbaa !37
  %i.dk = load ptr, ptr %i.di, align 8, !tbaa !7  ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !16 ; 8 uses
  %i.dn = icmp ugt i64 %i.dm, 15
  br i1 %i.dn, label %bb.ac, label %._crit_edge.i.i.i.i

bb.ac:                                            ; preds = %.noexc37
  %i.do = icmp slt i64 %i.dm, 0
  br i1 %i.do, label %.noexc.i.i.i, label %bb.ad

.noexc.i.i.i:                                     ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #36
          to label %.noexc.i36 unwind label %bb.ag

.noexc.i36:                                       ; preds = %.noexc.i.i.i
  unreachable

bb.ad:                                            ; preds = %bb.ac
  %i.dp = add nuw i64 %i.dm, 1                    ; 2 uses
  %i.dq = icmp slt i64 %i.dp, 0
  br i1 %i.dq, label %.noexc6.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !38

.noexc6.i.i.i:                                    ; preds = %bb.ad
  invoke void @_ZSt17__throw_bad_allocv() #36
          to label %.noexc6.i unwind label %bb.ag

.noexc6.i:                                        ; preds = %.noexc6.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.ad
  %i.dr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dp) #34
          to label %.noexc7.i unwind label %bb.ag ; 2 uses

.noexc7.i:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.dr, ptr %i.dh, align 8, !tbaa !7
  store i64 %i.dm, ptr %i.dj, align 8, !tbaa !26
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc7.i, %.noexc37
  %i.ds = phi ptr [ %i.dr, %.noexc7.i ], [ %i.dj, %.noexc37 ] ; 3 uses
  switch i64 %i.dm, label %bb.af [
    i64 1, label %bb.ae
    i64 0, label %_ZN8facebook5velox9functions17DateParseFunctionINS0_4exec10VectorExecEE4callERNS0_9TimestampERKNS0_10StringViewESA_.exit
  ]

bb.ae:                                            ; preds = %._crit_edge.i.i.i.i
  %i.dt = load i8, ptr %i.dk, align 1, !tbaa !26
  store i8 %i.dt, ptr %i.ds, align 1, !tbaa !26
  br label %_ZN8facebook5velox9functions17DateParseFunctionINS0_4exec10VectorExecEE4callERNS0_9TimestampERKNS0_10StringViewESA_.exit

bb.af:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ds, ptr align 1 %i.dk, i64 %i.dm, i1 false)
  br label %_ZN8facebook5velox9functions17DateParseFunctionINS0_4exec10VectorExecEE4callERNS0_9TimestampERKNS0_10StringViewESA_.exit

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %.noexc6.i.i.i, %.noexc.i.i.i
  %i.du = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @_ZdlPvm(ptr noundef nonnull %i.df, i64 noundef 40) #35
  br label %.body38

bb.ah:                                            ; preds = %.invoke, %bb.ak, %bb.ab, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit
  %i.dv = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body38

.body38:                                          ; preds = %bb.ag, %bb.ah
  %eh.lpad-body39 = phi { ptr, i32 } [ %i.dv, %bb.ah ], [ %i.du, %bb.ag ]
  %i.dw = load i8, ptr %i.ar, align 8, !tbaa !40139
  %cond.i.i = icmp ne i8 %i.dw, 2
  %i.dx = load ptr, ptr %5, align 16
  %.not.i.i.i40 = icmp eq ptr %i.dx, null
  %or.cond.i.i = select i1 %cond.i.i, i1 true, i1 %.not.i.i.i40, !prof !1429
  br i1 %or.cond.i.i, label %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit, label %bb.ai, !prof !1429

bb.ai:                                            ; preds = %.body38
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %5)
  br label %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit

_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit: ; preds = %.body38, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !40590
  br label %.body

_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit: ; preds = %.noexc14
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !40546, !noalias !40590
  invoke void @_ZN8facebook5velox9Timestamp5toGMTERKNS0_2tz8TimeZoneE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(50) %i.dz)
          to label %bb.aj unwind label %bb.ah, !noalias !40590

bb.aj:                                            ; preds = %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit
  %i.ea = load i8, ptr %i.ar, align 8, !tbaa !40139, !noalias !40590
  switch i8 %i.ea, label %.invoke [
    i8 1, label %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit45
    i8 2, label %bb.ak
  ], !prof !4156

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIN8facebook5velox6StatusEEEJRKS5_EEEvDpT0_(ptr noundef nonnull align 8 dereferenceable(32) %5) #18
          to label %.noexc43 unwind label %bb.ah

.noexc43:                                         ; preds = %bb.ak
  unreachable

.invoke:                                          ; preds = %bb.aj, %.noexc14
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #18
          to label %.cont unwind label %bb.ah

.cont:                                            ; preds = %.invoke
  unreachable

_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit45: ; preds = %bb.aj
  %i.eb = load <2 x i64>, ptr %5, align 16
  br label %.noexc.thread

.noexc.thread:                                    ; preds = %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit45
  %i.ec = phi <2 x i64> [ zeroinitializer, %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit ], [ %i.eb, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit45 ]
  store ptr null, ptr %9, align 8, !tbaa !1145
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !40590
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31, !noalias !40584
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31, !noalias !40581
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSN_bSO_.exit.i

_ZN8facebook5velox9functions17DateParseFunctionINS0_4exec10VectorExecEE4callERNS0_9TimestampERKNS0_10StringViewESA_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.ae, %bb.af
  %i.ed = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  store i64 %i.dm, ptr %i.ed, align 8, !tbaa !16
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dm
  store i8 0, ptr %i.ee, align 1, !tbaa !26
  store ptr %i.df, ptr %9, align 8, !tbaa !1145
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %5)
  %.pre83 = load ptr, ptr %9, align 8, !tbaa !1145
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !40590
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31, !noalias !40584
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31, !noalias !40581
  %i.ef = icmp eq ptr %.pre83, null
  br i1 %i.ef, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSN_bSO_.exit.i, label %bb.al, !prof !40593

bb.al:                                            ; preds = %_ZN8facebook5velox9functions17DateParseFunctionINS0_4exec10VectorExecEE4callERNS0_9TimestampERKNS0_10StringViewESA_.exit
  %i.eg = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !40594, !nonnull !476, !align !580
  invoke void @_ZN8facebook5velox6StatusC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 48
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !40563, !nonnull !476, !align !580
  %i.ek = trunc nsw i64 %indvars.iv to i32
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %i.ej, i32 noundef %i.ek, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit unwind label %bb.ap

_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit: ; preds = %bb.am
  %i.el = load ptr, ptr %10, align 8, !tbaa !1145
  %.not.i = icmp eq ptr %i.el, null
  br i1 %.not.i, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit, label %bb.an, !prof !596

bb.an:                                            ; preds = %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit

bb.ao:                                            ; preds = %bb.al
  %i.em = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook5velox6StatusD2Ev.exit52

bb.ap:                                            ; preds = %bb.am
  %i.en = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.eo = load ptr, ptr %10, align 8, !tbaa !1145
  %.not.i51 = icmp eq ptr %i.eo, null
  br i1 %.not.i51, label %_ZN8facebook5velox6StatusD2Ev.exit52, label %bb.aq, !prof !596

bb.aq:                                            ; preds = %bb.ap
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %_ZN8facebook5velox6StatusD2Ev.exit52

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSN_bSO_.exit.i: ; preds = %.noexc.thread, %_ZN8facebook5velox9functions17DateParseFunctionINS0_4exec10VectorExecEE4callERNS0_9TimestampERKNS0_10StringViewESA_.exit
  %i.ep = phi <2 x i64> [ %i.ec, %.noexc.thread ], [ zeroinitializer, %_ZN8facebook5velox9functions17DateParseFunctionINS0_4exec10VectorExecEE4callERNS0_9TimestampERKNS0_10StringViewESA_.exit ]
  %i.eq = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !40595, !nonnull !476, !align !580
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !40596, !nonnull !476, !align !580
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !1686
  %i.ev = getelementptr inbounds [16 x i8], ptr %i.eu, i64 %indvars.iv
  store <2 x i64> %i.ep, ptr %i.ev, align 8, !tbaa !536
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit

_ZN8facebook5velox6StatusD2Ev.exit52:             ; preds = %bb.aq, %bb.ap, %bb.ao
  %.pn.i4 = phi { ptr, i32 } [ %i.em, %bb.ao ], [ %i.en, %bb.ap ], [ %i.en, %bb.aq ]
  %i.ew = load ptr, ptr %9, align 8, !tbaa !1145
  %.not.i54 = icmp eq ptr %i.ew, null
  br i1 %.not.i54, label %_ZN8facebook5velox6StatusD2Ev.exit55, label %bb.ar, !prof !596

bb.ar:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit52
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %_ZN8facebook5velox6StatusD2Ev.exit55

_ZN8facebook5velox6StatusD2Ev.exit55:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit52, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %.body

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit: ; preds = %bb.an, %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSN_bSO_.exit.i
  %i.ex = load ptr, ptr %9, align 8, !tbaa !1145
  %.not.i56 = icmp eq ptr %i.ex, null
  br i1 %.not.i56, label %_ZN8facebook5velox6StatusD2Ev.exit57, label %bb.as, !prof !596

bb.as:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %_ZN8facebook5velox6StatusD2Ev.exit57

_ZN8facebook5velox6StatusD2Ev.exit57:             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESD_EEEJSD_SD_EEEE7iterateIJNS1_20ConstantVectorReaderISD_EESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit

bb.at:                                            ; preds = %.noexc13, %.noexc11
  %i.ey = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body

.body:                                            ; preds = %bb.at, %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit, %bb.aa, %_ZN8facebook5velox6StatusD2Ev.exit55
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i4, %_ZN8facebook5velox6StatusD2Ev.exit55 ], [ %i.ey, %bb.at ], [ %eh.lpad-body39, %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit ], [ %i.cv, %bb.aa ] ; 3 uses
  %i.ez = extractvalue { ptr, i32 } %eh.lpad-body, 0 ; 2 uses
  %i.fa = extractvalue { ptr, i32 } %eh.lpad-body, 1 ; 2 uses
  %i.fb = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #31
  %i.fc = icmp eq i32 %i.fa, %i.fb
  br i1 %i.fc, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.body
  %i.fd = call ptr @__cxa_begin_catch(ptr %i.ez) #31
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !1579 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 144
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !7  ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 152
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !16
  %i.fk = icmp eq i64 %i.fj, 4
  br i1 %i.fk, label %.lr.ph.i.i.i.preheader.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader.i.preheader:               ; preds = %bb.au
  %i.fl = load i8, ptr %i.fh, align 1, !tbaa !26
  %or.cond.not.i.i.i = icmp eq i8 %i.fl, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.preheader.i.preheader
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fh, i64 1
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !26
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.fn, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fh, i64 2
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !26
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.fp, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fh, i64 3
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !26
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.fr, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %12) #31
  %i.fs = trunc nsw i64 %indvars.iv to i32
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.at, i32 noundef %i.fs, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.bc unwind label %bb.be

.loopexit:                                        ; preds = %bb.au, %.lr.ph.i.i.i.preheader.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #36
          to label %bb.bi unwind label %bb.bb

bb.av:                                            ; preds = %.body
  %i.ft = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #31
  %i.fu = icmp eq i32 %i.fa, %i.ft
  br i1 %i.fu, label %bb.aw, label %.loopexit66

bb.aw:                                            ; preds = %bb.av
  %i.fv = call ptr @__cxa_begin_catch(ptr %i.ez) #31 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %11) #31
  %i.fw = trunc nsw i64 %indvars.iv to i32
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.at, i32 noundef %i.fw, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.ax unwind label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.fx = load ptr, ptr %11, align 8, !tbaa !772
  %.not.i58 = icmp eq ptr %i.fx, null
  br i1 %.not.i58, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #31
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESD_EEEJSD_SD_EEEE7iterateIJNS1_20ConstantVectorReaderISD_EESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit

bb.az:                                            ; preds = %bb.aw
  %i.fy = landingpad { ptr, i32 }
          cleanup
  %i.fz = load ptr, ptr %11, align 8, !tbaa !772
  %.not.i59 = icmp eq ptr %i.fz, null
  br i1 %.not.i59, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit60, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #31
end_hunk_0
begin_hunk_1_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS3_10VectorExecEEESB_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESF_EEEJSF_SF_EEEE7iterateIJNS3_20ConstantVectorReaderISF_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim:bb.a
  %.not.i.i.i.i.i36 = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i.i.i36, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.by = add nsw i32 %i.bp, -1
  store i32 %i.by, ptr %i.bm, align 8, !tbaa !3, !noalias !40615
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i37

bb.p:                                             ; preds = %bb.n
  %i.bz = atomicrmw volatile add ptr %i.bm, i32 -1 acq_rel, align 4, !noalias !40615
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i37

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i37: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i38 = phi i32 [ %i.bp, %bb.o ], [ %i.bz, %bb.p ]
  %i.ca = icmp eq i32 %.0.i.i.i.i.i.i38, 1
  br i1 %i.ca, label %bb.q, label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit, !prof !38

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i37
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #31, !noalias !40615
  br label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit

bb.r:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEEaSEOS4_.exit
  %i.cb = load ptr, ptr %3, align 16, !tbaa !1145, !noalias !40615
  %.not.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i, label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit, label %bb.s, !prof !596

bb.s:                                             ; preds = %bb.r
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %3), !noalias !40615
  br label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit

_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEEaSEOS4_.exit, %bb.k, %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i37, %bb.q, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !40615
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !40615
  %.pre = load i32, ptr %9, align 8, !tbaa !39249
  %.pre84 = load ptr, ptr %i.o, align 8
  br label %.noexc20

bb.t:                                             ; preds = %.noexc33, %bb.d, %bb.c
  %i.cc = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !40615
  call void @_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #31, !noalias !40615
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !40615
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !40615
  br label %.body

.noexc20:                                         ; preds = %bb.b, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit
  %i.cd = phi ptr [ %.sroa.2.0.copyload.i26, %bb.b ], [ %.pre84, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit ]
  %i.ce = phi i32 [ %i.am, %bb.b ], [ %.pre, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31, !noalias !40615
  %i.cf = load ptr, ptr %i.ai, align 8, !tbaa !38376, !noalias !40615
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31, !noalias !40615
  %i.cg = icmp ult i32 %i.ce, 13
  %i.ch = select i1 %i.cg, ptr %i.u, ptr %i.cd
  %i.ci = zext i32 %i.ce to i64
  store i64 %i.ci, ptr %7, align 8, !noalias !40615
  store ptr %i.ch, ptr %i.v, align 8, !noalias !40615
  invoke void @_ZNK8facebook5velox9functions17DateTimeFormatter5parseERKSt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.folly::Expected.14860") align 8 %6, ptr noundef nonnull align 8 dereferenceable(44) %i.cf, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %.noexc21 unwind label %bb.am

.noexc21:                                         ; preds = %.noexc20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31, !noalias !40615
  %i.cj = load i8, ptr %i.w, align 8, !tbaa !40139, !noalias !40615
  switch i8 %i.cj, label %.invoke [
    i8 2, label %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit
    i8 1, label %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit
  ], !prof !4660

_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit: ; preds = %.noexc21
  %i.ck = load ptr, ptr %6, align 16, !tbaa !1145 ; 4 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %.noexc.thread, label %bb.u

bb.u:                                             ; preds = %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit
  %i.cm = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34
          to label %.noexc43 unwind label %bb.aa  ; 6 uses

.noexc43:                                         ; preds = %bb.u
  %i.cn = load i8, ptr %i.ck, align 8, !tbaa !1148
  store i8 %i.cn, ptr %i.cm, align 8, !tbaa !1148
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 24 ; 3 uses
  store ptr %i.cq, ptr %i.co, align 8, !tbaa !37
  %i.cr = load ptr, ptr %i.cp, align 8, !tbaa !7  ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !16 ; 8 uses
  %i.cu = icmp ugt i64 %i.ct, 15
  br i1 %i.cu, label %bb.v, label %._crit_edge.i.i.i.i

bb.v:                                             ; preds = %.noexc43
  %i.cv = icmp slt i64 %i.ct, 0
  br i1 %i.cv, label %.noexc.i.i.i, label %bb.w

.noexc.i.i.i:                                     ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #36
          to label %.noexc.i42 unwind label %bb.z

.noexc.i42:                                       ; preds = %.noexc.i.i.i
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.cw = add nuw i64 %i.ct, 1                    ; 2 uses
  %i.cx = icmp slt i64 %i.cw, 0
  br i1 %i.cx, label %.noexc6.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !38

.noexc6.i.i.i:                                    ; preds = %bb.w
  invoke void @_ZSt17__throw_bad_allocv() #36
          to label %.noexc6.i unwind label %bb.z

.noexc6.i:                                        ; preds = %.noexc6.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.w
  %i.cy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cw) #34
          to label %.noexc7.i unwind label %bb.z  ; 2 uses

.noexc7.i:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.cy, ptr %i.co, align 8, !tbaa !7
  store i64 %i.ct, ptr %i.cq, align 8, !tbaa !26
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc7.i, %.noexc43
  %i.cz = phi ptr [ %i.cy, %.noexc7.i ], [ %i.cq, %.noexc43 ] ; 3 uses
  switch i64 %i.ct, label %bb.y [
    i64 1, label %bb.x
    i64 0, label %_ZN8facebook5velox9functions17DateParseFunctionINS0_4exec10VectorExecEE4callERNS0_9TimestampERKNS0_10StringViewESA_.exit
  ]

bb.x:                                             ; preds = %._crit_edge.i.i.i.i
  %i.da = load i8, ptr %i.cr, align 1, !tbaa !26
  store i8 %i.da, ptr %i.cz, align 1, !tbaa !26
  br label %_ZN8facebook5velox9functions17DateParseFunctionINS0_4exec10VectorExecEE4callERNS0_9TimestampERKNS0_10StringViewESA_.exit

bb.y:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cz, ptr align 1 %i.cr, i64 %i.ct, i1 false)
  br label %_ZN8facebook5velox9functions17DateParseFunctionINS0_4exec10VectorExecEE4callERNS0_9TimestampERKNS0_10StringViewESA_.exit

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %.noexc6.i.i.i, %.noexc.i.i.i
  %i.db = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef 40) #35
  br label %.body44

bb.aa:                                            ; preds = %.invoke, %bb.ad, %bb.u, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit
  %i.dc = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body44

.body44:                                          ; preds = %bb.z, %bb.aa
  %eh.lpad-body45 = phi { ptr, i32 } [ %i.dc, %bb.aa ], [ %i.db, %bb.z ]
  %i.dd = load i8, ptr %i.w, align 8, !tbaa !40139
  %cond.i.i = icmp ne i8 %i.dd, 2
  %i.de = load ptr, ptr %6, align 16
  %.not.i.i.i46 = icmp eq ptr %i.de, null
  %or.cond.i.i = select i1 %cond.i.i, i1 true, i1 %.not.i.i.i46, !prof !1429
  br i1 %or.cond.i.i, label %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit, label %bb.ab, !prof !1429

bb.ab:                                            ; preds = %.body44
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %6)
  br label %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit

_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit: ; preds = %.body44, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31, !noalias !40615
  br label %.body

_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit: ; preds = %.noexc21
  %i.df = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !40546, !noalias !40615
  invoke void @_ZN8facebook5velox9Timestamp5toGMTERKNS0_2tz8TimeZoneE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(50) %i.dg)
          to label %bb.ac unwind label %bb.aa, !noalias !40615

bb.ac:                                            ; preds = %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit
  %i.dh = load i8, ptr %i.w, align 8, !tbaa !40139, !noalias !40615
  switch i8 %i.dh, label %.invoke [
    i8 1, label %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit51
    i8 2, label %bb.ad
  ], !prof !4156

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIN8facebook5velox6StatusEEEJRKS5_EEEvDpT0_(ptr noundef nonnull align 8 dereferenceable(32) %6) #18
          to label %.noexc49 unwind label %bb.aa

.noexc49:                                         ; preds = %bb.ad
  unreachable

.invoke:                                          ; preds = %bb.ac, %.noexc21
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #18
          to label %.cont unwind label %bb.aa

.cont:                                            ; preds = %.invoke
  unreachable

_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit51: ; preds = %bb.ac
  %i.di = load <2 x i64>, ptr %6, align 16
  br label %.noexc.thread

.noexc.thread:                                    ; preds = %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit51
  %i.dj = phi <2 x i64> [ zeroinitializer, %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit ], [ %i.di, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit51 ]
  store ptr null, ptr %10, align 8, !tbaa !1145
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31, !noalias !40615
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31, !noalias !40609
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31, !noalias !40606
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSN_bSO_.exit.i

_ZN8facebook5velox9functions17DateParseFunctionINS0_4exec10VectorExecEE4callERNS0_9TimestampERKNS0_10StringViewESA_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.x, %bb.y
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store i64 %i.ct, ptr %i.dk, align 8, !tbaa !16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.ct
  store i8 0, ptr %i.dl, align 1, !tbaa !26
  store ptr %i.cm, ptr %10, align 8, !tbaa !1145
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %6)
  %.pre85 = load ptr, ptr %10, align 8, !tbaa !1145
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31, !noalias !40615
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31, !noalias !40609
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31, !noalias !40606
  %i.dm = icmp eq ptr %.pre85, null
  br i1 %i.dm, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSN_bSO_.exit.i, label %bb.ae, !prof !40593

bb.ae:                                            ; preds = %_ZN8facebook5velox9functions17DateParseFunctionINS0_4exec10VectorExecEE4callERNS0_9TimestampERKNS0_10StringViewESA_.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !40594, !nonnull !476, !align !580
  invoke void @_ZN8facebook5velox6StatusC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 48
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !40563, !nonnull !476, !align !580
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %i.dq, i32 noundef %i.z, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit unwind label %bb.ai

_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit: ; preds = %bb.af
  %i.dr = load ptr, ptr %11, align 8, !tbaa !1145
  %.not.i = icmp eq ptr %i.dr, null
  br i1 %.not.i, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit, label %bb.ag, !prof !596

bb.ag:                                            ; preds = %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %11)
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit

bb.ah:                                            ; preds = %bb.ae
  %i.ds = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook5velox6StatusD2Ev.exit58

bb.ai:                                            ; preds = %bb.af
  %i.dt = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.du = load ptr, ptr %11, align 8, !tbaa !1145
  %.not.i57 = icmp eq ptr %i.du, null
  br i1 %.not.i57, label %_ZN8facebook5velox6StatusD2Ev.exit58, label %bb.aj, !prof !596

bb.aj:                                            ; preds = %bb.ai
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %11)
  br label %_ZN8facebook5velox6StatusD2Ev.exit58

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSN_bSO_.exit.i: ; preds = %.noexc.thread, %_ZN8facebook5velox9functions17DateParseFunctionINS0_4exec10VectorExecEE4callERNS0_9TimestampERKNS0_10StringViewESA_.exit
  %i.dv = phi <2 x i64> [ %i.dj, %.noexc.thread ], [ zeroinitializer, %_ZN8facebook5velox9functions17DateParseFunctionINS0_4exec10VectorExecEE4callERNS0_9TimestampERKNS0_10StringViewESA_.exit ]
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !40595, !nonnull !476, !align !580
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !40596, !nonnull !476, !align !580
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !1686
  %i.eb = sext i32 %i.z to i64
  %i.ec = getelementptr inbounds [16 x i8], ptr %i.ea, i64 %i.eb
  store <2 x i64> %i.dv, ptr %i.ec, align 8, !tbaa !536
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit

_ZN8facebook5velox6StatusD2Ev.exit58:             ; preds = %bb.aj, %bb.ai, %bb.ah
  %.pn.i11 = phi { ptr, i32 } [ %i.ds, %bb.ah ], [ %i.dt, %bb.ai ], [ %i.dt, %bb.aj ]
  %i.ed = load ptr, ptr %10, align 8, !tbaa !1145
  %.not.i60 = icmp eq ptr %i.ed, null
  br i1 %.not.i60, label %_ZN8facebook5velox6StatusD2Ev.exit61, label %bb.ak, !prof !596

bb.ak:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit58
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %_ZN8facebook5velox6StatusD2Ev.exit61

_ZN8facebook5velox6StatusD2Ev.exit61:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit58, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %.body

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit: ; preds = %bb.ag, %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSN_bSO_.exit.i
  %i.ee = load ptr, ptr %10, align 8, !tbaa !1145
  %.not.i62 = icmp eq ptr %i.ee, null
  br i1 %.not.i62, label %_ZN8facebook5velox6StatusD2Ev.exit63, label %bb.al, !prof !596

bb.al:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %_ZN8facebook5velox6StatusD2Ev.exit63

_ZN8facebook5velox6StatusD2Ev.exit63:             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESD_EEEJSD_SD_EEEE7iterateIJNS1_20ConstantVectorReaderISD_EESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit

bb.am:                                            ; preds = %.noexc20, %.noexc18
  %i.ef = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body

.body:                                            ; preds = %bb.am, %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit, %bb.t, %_ZN8facebook5velox6StatusD2Ev.exit61
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i11, %_ZN8facebook5velox6StatusD2Ev.exit61 ], [ %i.ef, %bb.am ], [ %eh.lpad-body45, %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit ], [ %i.cc, %bb.t ] ; 3 uses
  %i.eg = extractvalue { ptr, i32 } %eh.lpad-body, 0 ; 2 uses
  %i.eh = extractvalue { ptr, i32 } %eh.lpad-body, 1 ; 2 uses
  %i.ei = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #31
  %i.ej = icmp eq i32 %i.eh, %i.ei
  br i1 %i.ej, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.body
  %i.ek = call ptr @__cxa_begin_catch(ptr %i.eg) #31
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !1579 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 144
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !7  ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 152
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !16
  %i.er = icmp eq i64 %i.eq, 4
  br i1 %i.er, label %.lr.ph.i.i.i.preheader.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader.i.preheader:               ; preds = %bb.an
  %i.es = load i8, ptr %i.eo, align 1, !tbaa !26
  %or.cond.not.i.i.i = icmp eq i8 %i.es, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.preheader.i.preheader
  %i.et = getelementptr inbounds nuw i8, ptr %i.eo, i64 1
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !26
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.eu, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eo, i64 2
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !26
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.ew, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eo, i64 3
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !26
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.ey, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %13) #31
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.aa, i32 noundef %i.z, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.av unwind label %bb.ax

.loopexit:                                        ; preds = %bb.an, %.lr.ph.i.i.i.preheader.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #36
          to label %bb.bb unwind label %bb.au

bb.ao:                                            ; preds = %.body
  %i.ez = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #31
  %i.fa = icmp eq i32 %i.eh, %i.ez
  br i1 %i.fa, label %bb.ap, label %.loopexit72

bb.ap:                                            ; preds = %bb.ao
  %i.fb = call ptr @__cxa_begin_catch(ptr %i.eg) #31 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %12) #31
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.aa, i32 noundef %i.z, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.aq unwind label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.fc = load ptr, ptr %12, align 8, !tbaa !772
  %.not.i64 = icmp eq ptr %i.fc, null
  br i1 %.not.i64, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #31
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESD_EEEJSD_SD_EEEE7iterateIJNS1_20ConstantVectorReaderISD_EESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit

bb.as:                                            ; preds = %bb.ap
  %i.fd = landingpad { ptr, i32 }
          cleanup
  %i.fe = load ptr, ptr %12, align 8, !tbaa !772
  %.not.i65 = icmp eq ptr %i.fe, null
  br i1 %.not.i65, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #31
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66

end_hunk_1
begin_hunk_2_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS3_10VectorExecEEESB_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESF_EEEJSF_SF_EEEE7iterateIJNS3_20ConstantVectorReaderISF_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi:bb.a
  %.not.i.i.i.i.i57 = icmp eq i8 %i.ci, 0
  br i1 %.not.i.i.i.i.i57, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cj = add nsw i32 %i.ca, -1
  store i32 %i.cj, ptr %i.bx, align 8, !tbaa !3, !noalias !40631
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i58

bb.q:                                             ; preds = %bb.o
  %i.ck = atomicrmw volatile add ptr %i.bx, i32 -1 acq_rel, align 4, !noalias !40631
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i58

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i58: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i59 = phi i32 [ %i.ca, %bb.p ], [ %i.ck, %bb.q ]
  %i.cl = icmp eq i32 %.0.i.i.i.i.i.i59, 1
  br i1 %i.cl, label %bb.r, label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit, !prof !38

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i58
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bw) #31, !noalias !40631
  br label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit

bb.s:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEEaSEOS4_.exit
  %i.cm = load ptr, ptr %2, align 16, !tbaa !1145, !noalias !40631
  %.not.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i, label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit, label %bb.t, !prof !596

bb.t:                                             ; preds = %bb.s
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %2), !noalias !40631
  br label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit

_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEEaSEOS4_.exit, %bb.l, %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i58, %bb.r, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !40631
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !40631
  %.pre = load i32, ptr %8, align 8, !tbaa !39249
  %.pre211 = load ptr, ptr %i.ac, align 8
  br label %.noexc41

bb.u:                                             ; preds = %.noexc54, %bb.e, %bb.d
  %i.cn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !40631
  call void @_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #31, !noalias !40631
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !40631
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !40631
  br label %.body43

.noexc41:                                         ; preds = %bb.c, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit
  %i.co = phi ptr [ %.sroa.2.0.copyload.i47, %bb.c ], [ %.pre211, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit ]
  %i.cp = phi i32 [ %i.ax, %bb.c ], [ %.pre, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31, !noalias !40631
  %i.cq = load ptr, ptr %i.at, align 8, !tbaa !38376, !noalias !40631
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31, !noalias !40631
  %i.cr = icmp ult i32 %i.cp, 13
  %i.cs = select i1 %i.cr, ptr %i.ai, ptr %i.co
  %i.ct = zext i32 %i.cp to i64
  store i64 %i.ct, ptr %6, align 8, !noalias !40631
  store ptr %i.cs, ptr %i.aj, align 8, !noalias !40631
  invoke void @_ZNK8facebook5velox9functions17DateTimeFormatter5parseERKSt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.folly::Expected.14860") align 8 %5, ptr noundef nonnull align 8 dereferenceable(44) %i.cq, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %.noexc42 unwind label %bb.an

.noexc42:                                         ; preds = %.noexc41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31, !noalias !40631
  %i.cu = load i8, ptr %i.ak, align 8, !tbaa !40139, !noalias !40631
  switch i8 %i.cu, label %.invoke [
    i8 2, label %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit
    i8 1, label %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit
  ], !prof !4660

_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit: ; preds = %.noexc42
  %i.cv = load ptr, ptr %5, align 16, !tbaa !1145 ; 4 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit76.thread, label %bb.v

bb.v:                                             ; preds = %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit
  %i.cx = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34
          to label %.noexc64 unwind label %bb.ab  ; 6 uses

.noexc64:                                         ; preds = %bb.v
  %i.cy = load i8, ptr %i.cv, align 8, !tbaa !1148
  store i8 %i.cy, ptr %i.cx, align 8, !tbaa !1148
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 24 ; 3 uses
  store ptr %i.db, ptr %i.cz, align 8, !tbaa !37
  %i.dc = load ptr, ptr %i.da, align 8, !tbaa !7  ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !16 ; 8 uses
  %i.df = icmp ugt i64 %i.de, 15
  br i1 %i.df, label %bb.w, label %._crit_edge.i.i.i.i

bb.w:                                             ; preds = %.noexc64
  %i.dg = icmp slt i64 %i.de, 0
  br i1 %i.dg, label %.noexc.i.i.i, label %bb.x

.noexc.i.i.i:                                     ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #36
          to label %.noexc.i63 unwind label %bb.aa

.noexc.i63:                                       ; preds = %.noexc.i.i.i
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.dh = add nuw i64 %i.de, 1                    ; 2 uses
  %i.di = icmp slt i64 %i.dh, 0
  br i1 %i.di, label %.noexc6.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !38

.noexc6.i.i.i:                                    ; preds = %bb.x
  invoke void @_ZSt17__throw_bad_allocv() #36
          to label %.noexc6.i unwind label %bb.aa

.noexc6.i:                                        ; preds = %.noexc6.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.x
  %i.dj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dh) #34
          to label %.noexc7.i unwind label %bb.aa ; 2 uses

.noexc7.i:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.dj, ptr %i.cz, align 8, !tbaa !7
  store i64 %i.de, ptr %i.db, align 8, !tbaa !26
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc7.i, %.noexc64
  %i.dk = phi ptr [ %i.dj, %.noexc7.i ], [ %i.db, %.noexc64 ] ; 3 uses
  switch i64 %i.de, label %bb.z [
    i64 1, label %bb.y
    i64 0, label %_ZN8facebook5velox9functions17DateParseFunctionINS0_4exec10VectorExecEE4callERNS0_9TimestampERKNS0_10StringViewESA_.exit.i
  ]

bb.y:                                             ; preds = %._crit_edge.i.i.i.i
  %i.dl = load i8, ptr %i.dc, align 1, !tbaa !26
  store i8 %i.dl, ptr %i.dk, align 1, !tbaa !26
  br label %_ZN8facebook5velox9functions17DateParseFunctionINS0_4exec10VectorExecEE4callERNS0_9TimestampERKNS0_10StringViewESA_.exit.i

bb.z:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dk, ptr align 1 %i.dc, i64 %i.de, i1 false)
  br label %_ZN8facebook5velox9functions17DateParseFunctionINS0_4exec10VectorExecEE4callERNS0_9TimestampERKNS0_10StringViewESA_.exit.i

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %.noexc6.i.i.i, %.noexc.i.i.i
  %i.dm = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef 40) #35
  br label %.body65

bb.ab:                                            ; preds = %.invoke, %bb.ae, %bb.v, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit
  %i.dn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body65

.body65:                                          ; preds = %bb.aa, %bb.ab
  %eh.lpad-body66 = phi { ptr, i32 } [ %i.dn, %bb.ab ], [ %i.dm, %bb.aa ]
  %i.do = load i8, ptr %i.ak, align 8, !tbaa !40139
  %cond.i.i = icmp ne i8 %i.do, 2
  %i.dp = load ptr, ptr %5, align 16
  %.not.i.i.i67 = icmp eq ptr %i.dp, null
  %or.cond.i.i = select i1 %cond.i.i, i1 true, i1 %.not.i.i.i67, !prof !1429
  br i1 %or.cond.i.i, label %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit, label %bb.ac, !prof !1429

bb.ac:                                            ; preds = %.body65
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %5)
  br label %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit

_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit: ; preds = %.body65, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !40631
  br label %.body43

_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit: ; preds = %.noexc42
  %i.dq = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !40546, !noalias !40631
  invoke void @_ZN8facebook5velox9Timestamp5toGMTERKNS0_2tz8TimeZoneE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(50) %i.dr)
          to label %bb.ad unwind label %bb.ab, !noalias !40631

bb.ad:                                            ; preds = %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit
  %i.ds = load i8, ptr %i.ak, align 8, !tbaa !40139, !noalias !40631
  switch i8 %i.ds, label %.invoke [
    i8 1, label %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit72
    i8 2, label %bb.ae
  ], !prof !4156

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIN8facebook5velox6StatusEEEJRKS5_EEEvDpT0_(ptr noundef nonnull align 8 dereferenceable(32) %5) #18
          to label %.noexc70 unwind label %bb.ab

.noexc70:                                         ; preds = %bb.ae
  unreachable

.invoke:                                          ; preds = %bb.ad, %.noexc42
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #18
          to label %.cont unwind label %bb.ab

.cont:                                            ; preds = %.invoke
  unreachable

_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit72: ; preds = %bb.ad
  %i.dt = load <2 x i64>, ptr %5, align 16
  br label %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit76.thread

_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit76.thread: ; preds = %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit72
  %i.du = phi <2 x i64> [ zeroinitializer, %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit ], [ %i.dt, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit72 ]
  store ptr null, ptr %9, align 8, !tbaa !1145
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !40631
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31, !noalias !40625
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31, !noalias !40622
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clImS9_EEDaSN_bSO_.exit.i

_ZN8facebook5velox9functions17DateParseFunctionINS0_4exec10VectorExecEE4callERNS0_9TimestampERKNS0_10StringViewESA_.exit.i: ; preds = %._crit_edge.i.i.i.i, %bb.y, %bb.z
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store i64 %i.de, ptr %i.dv, align 8, !tbaa !16
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.de
  store i8 0, ptr %i.dw, align 1, !tbaa !26
  store ptr %i.cx, ptr %9, align 8, !tbaa !1145
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %5)
  %.pre212 = load ptr, ptr %9, align 8, !tbaa !1145
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !40631
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31, !noalias !40625
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31, !noalias !40622
  %i.dx = icmp eq ptr %.pre212, null
  br i1 %i.dx, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clImS9_EEDaSN_bSO_.exit.i, label %bb.af, !prof !40593

bb.af:                                            ; preds = %_ZN8facebook5velox9functions17DateParseFunctionINS0_4exec10VectorExecEE4callERNS0_9TimestampERKNS0_10StringViewESA_.exit.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !40594, !nonnull !476, !align !580
  invoke void @_ZN8facebook5velox6StatusC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.ea = trunc i64 %.0193 to i32
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 48
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !40563, !nonnull !476, !align !580
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %i.ec, i32 noundef %i.ea, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit unwind label %bb.aj

_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit: ; preds = %bb.ag
  %i.ed = load ptr, ptr %10, align 8, !tbaa !1145
  %.not.i = icmp eq ptr %i.ed, null
  br i1 %.not.i, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSN_.exit, label %bb.ah, !prof !596

bb.ah:                                            ; preds = %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSN_.exit

bb.ai:                                            ; preds = %bb.af
  %i.ee = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook5velox6StatusD2Ev.exit79

bb.aj:                                            ; preds = %bb.ag
  %i.ef = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.eg = load ptr, ptr %10, align 8, !tbaa !1145
  %.not.i78 = icmp eq ptr %i.eg, null
  br i1 %.not.i78, label %_ZN8facebook5velox6StatusD2Ev.exit79, label %bb.ak, !prof !596

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %_ZN8facebook5velox6StatusD2Ev.exit79

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clImS9_EEDaSN_bSO_.exit.i: ; preds = %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit76.thread, %_ZN8facebook5velox9functions17DateParseFunctionINS0_4exec10VectorExecEE4callERNS0_9TimestampERKNS0_10StringViewESA_.exit.i
  %i.eh = phi <2 x i64> [ %i.du, %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit76.thread ], [ zeroinitializer, %_ZN8facebook5velox9functions17DateParseFunctionINS0_4exec10VectorExecEE4callERNS0_9TimestampERKNS0_10StringViewESA_.exit.i ]
  %i.ei = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !40595, !nonnull !476, !align !580
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !40596, !nonnull !476, !align !580
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !1686
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %i.em, i64 %.0193
  store <2 x i64> %i.eh, ptr %i.en, align 8, !tbaa !536
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSN_.exit

_ZN8facebook5velox6StatusD2Ev.exit79:             ; preds = %bb.ak, %bb.aj, %bb.ai
  %.pn.i32 = phi { ptr, i32 } [ %i.ee, %bb.ai ], [ %i.ef, %bb.aj ], [ %i.ef, %bb.ak ]
  %i.eo = load ptr, ptr %9, align 8, !tbaa !1145
  %.not.i81 = icmp eq ptr %i.eo, null
  br i1 %.not.i81, label %_ZN8facebook5velox6StatusD2Ev.exit82, label %bb.al, !prof !596

bb.al:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit79
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %_ZN8facebook5velox6StatusD2Ev.exit82

_ZN8facebook5velox6StatusD2Ev.exit82:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit79, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %.body43

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSN_.exit: ; preds = %bb.ah, %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clImS9_EEDaSN_bSO_.exit.i
  %i.ep = load ptr, ptr %9, align 8, !tbaa !1145
  %.not.i83 = icmp eq ptr %i.ep, null
  br i1 %.not.i83, label %_ZN8facebook5velox6StatusD2Ev.exit84, label %bb.am, !prof !596

bb.am:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSN_.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %_ZN8facebook5velox6StatusD2Ev.exit84

_ZN8facebook5velox6StatusD2Ev.exit84:             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSN_.exit, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESD_EEEJSD_SD_EEEE7iterateIJNS1_20ConstantVectorReaderISD_EESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clImEEDaSP_.exit

bb.an:                                            ; preds = %.noexc41, %.noexc39
  %i.eq = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body43

.body43:                                          ; preds = %bb.u, %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit, %_ZN8facebook5velox6StatusD2Ev.exit82, %bb.an
  %eh.lpad-body44 = phi { ptr, i32 } [ %i.eq, %bb.an ], [ %.pn.i32, %_ZN8facebook5velox6StatusD2Ev.exit82 ], [ %eh.lpad-body66, %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit ], [ %i.cn, %bb.u ] ; 3 uses
  %i.er = extractvalue { ptr, i32 } %eh.lpad-body44, 0 ; 2 uses
  %i.es = extractvalue { ptr, i32 } %eh.lpad-body44, 1 ; 2 uses
  %i.et = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #31
  %i.eu = icmp eq i32 %i.es, %i.et
  br i1 %i.eu, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.body43
  %i.ev = call ptr @__cxa_begin_catch(ptr %i.er) #31
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !1579 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 144
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !7  ; 4 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 152
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !16
  %i.fc = icmp eq i64 %i.fb, 4
  br i1 %i.fc, label %.lr.ph.i.i.i.preheader.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader.i.preheader:               ; preds = %bb.ao
  %i.fd = load i8, ptr %i.ez, align 1, !tbaa !26
  %or.cond.not.i.i.i = icmp eq i8 %i.fd, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.preheader.i.preheader
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 1
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !26
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.ff, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ez, i64 2
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !26
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.fh, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ez, i64 3
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !26
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.fj, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  %i.fk = trunc i64 %.0193 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %12) #31
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.al, i32 noundef %i.fk, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.aw unwind label %bb.ay

.loopexit:                                        ; preds = %bb.ao, %.lr.ph.i.i.i.preheader.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #36
          to label %bb.bc unwind label %bb.av

bb.ap:                                            ; preds = %.body43
  %i.fl = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #31
  %i.fm = icmp eq i32 %i.es, %i.fl
  br i1 %i.fm, label %bb.aq, label %common.resume

bb.aq:                                            ; preds = %bb.ap
  %i.fn = call ptr @__cxa_begin_catch(ptr %i.er) #31 ; 0 uses
  %i.fo = trunc i64 %.0193 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %11) #31
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.al, i32 noundef %i.fo, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.ar unwind label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.fp = load ptr, ptr %11, align 8, !tbaa !772
  %.not.i85 = icmp eq ptr %i.fp, null
  br i1 %.not.i85, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #31
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESD_EEEJSD_SD_EEEE7iterateIJNS1_20ConstantVectorReaderISD_EESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clImEEDaSP_.exit

bb.at:                                            ; preds = %bb.aq
  %i.fq = landingpad { ptr, i32 }
          cleanup
  %i.fr = load ptr, ptr %11, align 8, !tbaa !772
  %.not.i86 = icmp eq ptr %i.fr, null
  br i1 %.not.i86, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit87, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #31
end_hunk_2
begin_hunk_3_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS3_10VectorExecEEESB_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESF_EEEJSF_SF_EEEE7iterateIJNS3_20ConstantVectorReaderISF_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi:bb.a
  %.not.i.i.i.i.i113 = icmp eq i8 %i.ia, 0
  br i1 %.not.i.i.i.i.i113, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ib = add nsw i32 %i.hs, -1
  store i32 %i.ib, ptr %i.hp, align 8, !tbaa !3, !noalias !40644
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i114

bb.br:                                            ; preds = %bb.bp
  %i.ic = atomicrmw volatile add ptr %i.hp, i32 -1 acq_rel, align 4, !noalias !40644
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i114

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i114: ; preds = %bb.br, %bb.bq
  %.0.i.i.i.i.i.i115 = phi i32 [ %i.hs, %bb.bq ], [ %i.ic, %bb.br ]
  %i.id = icmp eq i32 %.0.i.i.i.i.i.i115, 1
  br i1 %i.id, label %bb.bs, label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit116, !prof !38

bb.bs:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i114
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ho) #31, !noalias !40644
  br label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit116

bb.bt:                                            ; preds = %_ZNSt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEEaSEOS4_.exit110
  %i.ie = load ptr, ptr %13, align 16, !tbaa !1145, !noalias !40644
  %.not.i.i.i111 = icmp eq ptr %i.ie, null
  br i1 %.not.i.i.i111, label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit116, label %bb.bu, !prof !596

bb.bu:                                            ; preds = %bb.bt
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %13), !noalias !40644
  br label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit116

_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit116: ; preds = %_ZNSt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEEaSEOS4_.exit110, %bb.bm, %bb.bo, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i114, %bb.bs, %bb.bt, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31, !noalias !40644
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31, !noalias !40644
  %.pre213 = load i32, ptr %19, align 8, !tbaa !39249
  %.pre214 = load ptr, ptr %i.n, align 8
  br label %.noexc26

bb.bv:                                            ; preds = %.noexc103, %bb.bf, %bb.be
  %i.if = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31, !noalias !40644
  call void @_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %13) #31, !noalias !40644
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31, !noalias !40644
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31, !noalias !40644
  br label %.body

.noexc26:                                         ; preds = %bb.bd, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit116
  %i.ig = phi ptr [ %.sroa.2.0.copyload.i94, %bb.bd ], [ %.pre214, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit116 ]
  %i.ih = phi i32 [ %i.gp, %bb.bd ], [ %.pre213, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit116 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31, !noalias !40644
  %i.ii = load ptr, ptr %i.gl, align 8, !tbaa !38376, !noalias !40644
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31, !noalias !40644
  %i.ij = icmp ult i32 %i.ih, 13
  %i.ik = select i1 %i.ij, ptr %i.t, ptr %i.ig
  %i.il = zext i32 %i.ih to i64
  store i64 %i.il, ptr %17, align 8, !noalias !40644
  store ptr %i.ik, ptr %i.u, align 8, !noalias !40644
  invoke void @_ZNK8facebook5velox9functions17DateTimeFormatter5parseERKSt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.folly::Expected.14860") align 8 %16, ptr noundef nonnull align 8 dereferenceable(44) %i.ii, ptr noundef nonnull align 8 dereferenceable(16) %17)
          to label %.noexc27 unwind label %bb.co

.noexc27:                                         ; preds = %.noexc26
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31, !noalias !40644
  %i.im = load i8, ptr %i.v, align 8, !tbaa !40139, !noalias !40644
  switch i8 %i.im, label %.invoke268 [
    i8 2, label %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit120
    i8 1, label %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit139
  ], !prof !4660

_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit120: ; preds = %.noexc27
  %i.in = load ptr, ptr %16, align 16, !tbaa !1145 ; 4 uses
  %i.io = icmp eq ptr %i.in, null
  br i1 %i.io, label %.noexc.thread, label %bb.bw

bb.bw:                                            ; preds = %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit120
  %i.ip = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34
          to label %.noexc129 unwind label %bb.cc ; 6 uses

.noexc129:                                        ; preds = %bb.bw
  %i.iq = load i8, ptr %i.in, align 8, !tbaa !1148
  store i8 %i.iq, ptr %i.ip, align 8, !tbaa !1148
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 8 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  %i.it = getelementptr inbounds nuw i8, ptr %i.ip, i64 24 ; 3 uses
  store ptr %i.it, ptr %i.ir, align 8, !tbaa !37
  %i.iu = load ptr, ptr %i.is, align 8, !tbaa !7  ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !16 ; 8 uses
  %i.ix = icmp ugt i64 %i.iw, 15
  br i1 %i.ix, label %bb.bx, label %._crit_edge.i.i.i.i121

bb.bx:                                            ; preds = %.noexc129
  %i.iy = icmp slt i64 %i.iw, 0
  br i1 %i.iy, label %.noexc.i.i.i127, label %bb.by

.noexc.i.i.i127:                                  ; preds = %bb.bx
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #36
          to label %.noexc.i128 unwind label %bb.cb

.noexc.i128:                                      ; preds = %.noexc.i.i.i127
  unreachable

bb.by:                                            ; preds = %bb.bx
  %i.iz = add nuw i64 %i.iw, 1                    ; 2 uses
  %i.ja = icmp slt i64 %i.iz, 0
  br i1 %i.ja, label %.noexc6.i.i.i125, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i123, !prof !38

.noexc6.i.i.i125:                                 ; preds = %bb.by
  invoke void @_ZSt17__throw_bad_allocv() #36
          to label %.noexc6.i126 unwind label %bb.cb

.noexc6.i126:                                     ; preds = %.noexc6.i.i.i125
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i123: ; preds = %bb.by
  %i.jb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iz) #34
          to label %.noexc7.i124 unwind label %bb.cb ; 2 uses

.noexc7.i124:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i123
  store ptr %i.jb, ptr %i.ir, align 8, !tbaa !7
  store i64 %i.iw, ptr %i.it, align 8, !tbaa !26
  br label %._crit_edge.i.i.i.i121

._crit_edge.i.i.i.i121:                           ; preds = %.noexc7.i124, %.noexc129
  %i.jc = phi ptr [ %i.jb, %.noexc7.i124 ], [ %i.it, %.noexc129 ] ; 3 uses
  switch i64 %i.iw, label %bb.ca [
    i64 1, label %bb.bz
    i64 0, label %_ZN8facebook5velox9functions17DateParseFunctionINS0_4exec10VectorExecEE4callERNS0_9TimestampERKNS0_10StringViewESA_.exit
  ]

bb.bz:                                            ; preds = %._crit_edge.i.i.i.i121
  %i.jd = load i8, ptr %i.iu, align 1, !tbaa !26
  store i8 %i.jd, ptr %i.jc, align 1, !tbaa !26
  br label %_ZN8facebook5velox9functions17DateParseFunctionINS0_4exec10VectorExecEE4callERNS0_9TimestampERKNS0_10StringViewESA_.exit

bb.ca:                                            ; preds = %._crit_edge.i.i.i.i121
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jc, ptr align 1 %i.iu, i64 %i.iw, i1 false)
  br label %_ZN8facebook5velox9functions17DateParseFunctionINS0_4exec10VectorExecEE4callERNS0_9TimestampERKNS0_10StringViewESA_.exit

bb.cb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i123, %.noexc6.i.i.i125, %.noexc.i.i.i127
  %i.je = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @_ZdlPvm(ptr noundef nonnull %i.ip, i64 noundef 40) #35
  br label %.body130

bb.cc:                                            ; preds = %.invoke268, %bb.cf, %bb.bw, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit139
  %i.jf = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body130

.body130:                                         ; preds = %bb.cb, %bb.cc
  %eh.lpad-body131 = phi { ptr, i32 } [ %i.jf, %bb.cc ], [ %i.je, %bb.cb ]
  %i.jg = load i8, ptr %i.v, align 8, !tbaa !40139
  %cond.i.i133 = icmp ne i8 %i.jg, 2
  %i.jh = load ptr, ptr %16, align 16
  %.not.i.i.i134 = icmp eq ptr %i.jh, null
  %or.cond.i.i135 = select i1 %cond.i.i133, i1 true, i1 %.not.i.i.i134, !prof !1429
  br i1 %or.cond.i.i135, label %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit136, label %bb.cd, !prof !1429

bb.cd:                                            ; preds = %.body130
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %16)
  br label %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit136

_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit136: ; preds = %.body130, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31, !noalias !40644
  br label %.body

_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit139: ; preds = %.noexc27
  %i.ji = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !40546, !noalias !40644
  invoke void @_ZN8facebook5velox9Timestamp5toGMTERKNS0_2tz8TimeZoneE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(50) %i.jj)
          to label %bb.ce unwind label %bb.cc, !noalias !40644

bb.ce:                                            ; preds = %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit139
  %i.jk = load i8, ptr %i.v, align 8, !tbaa !40139, !noalias !40644
  switch i8 %i.jk, label %.invoke268 [
    i8 1, label %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit142
    i8 2, label %bb.cf
  ], !prof !4156

bb.cf:                                            ; preds = %bb.ce
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIN8facebook5velox6StatusEEEJRKS5_EEEvDpT0_(ptr noundef nonnull align 8 dereferenceable(32) %16) #18
          to label %.noexc140 unwind label %bb.cc

.noexc140:                                        ; preds = %bb.cf
  unreachable

.invoke268:                                       ; preds = %bb.ce, %.noexc27
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #18
          to label %.cont269 unwind label %bb.cc

.cont269:                                         ; preds = %.invoke268
  unreachable

_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit142: ; preds = %bb.ce
  %i.jl = load <2 x i64>, ptr %16, align 16
  br label %.noexc.thread

.noexc.thread:                                    ; preds = %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit120, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit142
  %i.jm = phi <2 x i64> [ zeroinitializer, %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit120 ], [ %i.jl, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit142 ]
  store ptr null, ptr %20, align 8, !tbaa !1145
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31, !noalias !40644
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31, !noalias !40638
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #31, !noalias !40635
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSN_bSO_.exit.i

_ZN8facebook5velox9functions17DateParseFunctionINS0_4exec10VectorExecEE4callERNS0_9TimestampERKNS0_10StringViewESA_.exit: ; preds = %._crit_edge.i.i.i.i121, %bb.bz, %bb.ca
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  store i64 %i.iw, ptr %i.jn, align 8, !tbaa !16
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.iw
  store i8 0, ptr %i.jo, align 1, !tbaa !26
  store ptr %i.ip, ptr %20, align 8, !tbaa !1145
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %16)
  %.pre215 = load ptr, ptr %20, align 8, !tbaa !1145
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31, !noalias !40644
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31, !noalias !40638
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #31, !noalias !40635
  %i.jp = icmp eq ptr %.pre215, null
  br i1 %i.jp, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSN_bSO_.exit.i, label %bb.cg, !prof !40593

bb.cg:                                            ; preds = %_ZN8facebook5velox9functions17DateParseFunctionINS0_4exec10VectorExecEE4callERNS0_9TimestampERKNS0_10StringViewESA_.exit
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ge, i64 24
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !40594, !nonnull !476, !align !580
  invoke void @_ZN8facebook5velox6StatusC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.ch unwind label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 48
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !40563, !nonnull !476, !align !580
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %i.jt, i32 noundef %i.gc, ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit148 unwind label %bb.ck

_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit148: ; preds = %bb.ch
  %i.ju = load ptr, ptr %21, align 8, !tbaa !1145
  %.not.i149 = icmp eq ptr %i.ju, null
  br i1 %.not.i149, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit, label %bb.ci, !prof !596

bb.ci:                                            ; preds = %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit148
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %21)
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit

bb.cj:                                            ; preds = %bb.cg
  %i.jv = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook5velox6StatusD2Ev.exit152

bb.ck:                                            ; preds = %bb.ch
  %i.jw = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.jx = load ptr, ptr %21, align 8, !tbaa !1145
  %.not.i151 = icmp eq ptr %i.jx, null
  br i1 %.not.i151, label %_ZN8facebook5velox6StatusD2Ev.exit152, label %bb.cl, !prof !596

bb.cl:                                            ; preds = %bb.ck
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %21)
  br label %_ZN8facebook5velox6StatusD2Ev.exit152

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSN_bSO_.exit.i: ; preds = %.noexc.thread, %_ZN8facebook5velox9functions17DateParseFunctionINS0_4exec10VectorExecEE4callERNS0_9TimestampERKNS0_10StringViewESA_.exit
  %i.jy = phi <2 x i64> [ %i.jm, %.noexc.thread ], [ zeroinitializer, %_ZN8facebook5velox9functions17DateParseFunctionINS0_4exec10VectorExecEE4callERNS0_9TimestampERKNS0_10StringViewESA_.exit ]
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ge, i64 32
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !40595, !nonnull !476, !align !580
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !40596, !nonnull !476, !align !580
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !1686
  %i.ke = sext i32 %i.gc to i64
  %i.kf = getelementptr inbounds [16 x i8], ptr %i.kd, i64 %i.ke
  store <2 x i64> %i.jy, ptr %i.kf, align 8, !tbaa !536
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit

_ZN8facebook5velox6StatusD2Ev.exit152:            ; preds = %bb.cl, %bb.ck, %bb.cj
  %.pn.i17 = phi { ptr, i32 } [ %i.jv, %bb.cj ], [ %i.jw, %bb.ck ], [ %i.jw, %bb.cl ]
  %i.kg = load ptr, ptr %20, align 8, !tbaa !1145
  %.not.i155 = icmp eq ptr %i.kg, null
  br i1 %.not.i155, label %_ZN8facebook5velox6StatusD2Ev.exit156, label %bb.cm, !prof !596

bb.cm:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit152
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %20)
  br label %_ZN8facebook5velox6StatusD2Ev.exit156

_ZN8facebook5velox6StatusD2Ev.exit156:            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit152, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #31
  br label %.body

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit: ; preds = %bb.ci, %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit148, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSN_bSO_.exit.i
  %i.kh = load ptr, ptr %20, align 8, !tbaa !1145
  %.not.i157 = icmp eq ptr %i.kh, null
  br i1 %.not.i157, label %_ZN8facebook5velox6StatusD2Ev.exit158, label %bb.cn, !prof !596

bb.cn:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %20)
  br label %_ZN8facebook5velox6StatusD2Ev.exit158

_ZN8facebook5velox6StatusD2Ev.exit158:            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESD_EEEJSD_SD_EEEE7iterateIJNS1_20ConstantVectorReaderISD_EESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit

bb.co:                                            ; preds = %.noexc26, %.noexc24
  %i.ki = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body

.body:                                            ; preds = %bb.co, %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit136, %bb.bv, %_ZN8facebook5velox6StatusD2Ev.exit156
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i17, %_ZN8facebook5velox6StatusD2Ev.exit156 ], [ %i.ki, %bb.co ], [ %eh.lpad-body131, %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit136 ], [ %i.if, %bb.bv ] ; 3 uses
  %i.kj = extractvalue { ptr, i32 } %eh.lpad-body, 0 ; 2 uses
  %i.kk = extractvalue { ptr, i32 } %eh.lpad-body, 1 ; 2 uses
  %i.kl = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #31
  %i.km = icmp eq i32 %i.kk, %i.kl
  br i1 %i.km, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %.body
  %i.kn = call ptr @__cxa_begin_catch(ptr %i.kj) #31
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !1579 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 144
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !7  ; 4 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kp, i64 152
  %i.kt = load i64, ptr %i.ks, align 8, !tbaa !16
  %i.ku = icmp eq i64 %i.kt, 4
  br i1 %i.ku, label %.lr.ph.i.i.i.preheader.i159.preheader, label %.loopexit179

.lr.ph.i.i.i.preheader.i159.preheader:            ; preds = %bb.cp
  %i.kv = load i8, ptr %i.kr, align 1, !tbaa !26
  %or.cond.not.i.i.i161 = icmp eq i8 %i.kv, 85
  br i1 %or.cond.not.i.i.i161, label %tailrecurse.i.i.i.i162, label %.loopexit179

tailrecurse.i.i.i.i162:                           ; preds = %.lr.ph.i.i.i.preheader.i159.preheader
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kr, i64 1
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !26
  %or.cond.not.i.i.i161.1 = icmp eq i8 %i.kx, 83
  br i1 %or.cond.not.i.i.i161.1, label %tailrecurse.i.i.i.i162.1, label %.loopexit179

tailrecurse.i.i.i.i162.1:                         ; preds = %tailrecurse.i.i.i.i162
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kr, i64 2
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !26
  %or.cond.not.i.i.i161.2 = icmp eq i8 %i.kz, 69
  br i1 %or.cond.not.i.i.i161.2, label %tailrecurse.i.i.i.i162.2, label %.loopexit179

tailrecurse.i.i.i.i162.2:                         ; preds = %tailrecurse.i.i.i.i162.1
  %i.la = getelementptr inbounds nuw i8, ptr %i.kr, i64 3
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !26
  %or.cond.not.i.i.i161.3 = icmp eq i8 %i.lb, 82
  br i1 %or.cond.not.i.i.i161.3, label %tailrecurse.i.i.i.i162.3, label %.loopexit179

tailrecurse.i.i.i.i162.3:                         ; preds = %tailrecurse.i.i.i.i162.2
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #31
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %23) #31
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.gd, i32 noundef %i.gc, ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.cx unwind label %bb.cz

.loopexit179:                                     ; preds = %bb.cp, %.lr.ph.i.i.i.preheader.i159.preheader, %tailrecurse.i.i.i.i162, %tailrecurse.i.i.i.i162.1, %tailrecurse.i.i.i.i162.2
  invoke void @__cxa_rethrow() #36
          to label %bb.dd unwind label %bb.cw

bb.cq:                                            ; preds = %.body
  %i.lc = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #31
  %i.ld = icmp eq i32 %i.kk, %i.lc
  br i1 %i.ld, label %bb.cr, label %common.resume

bb.cr:                                            ; preds = %bb.cq
  %i.le = call ptr @__cxa_begin_catch(ptr %i.kj) #31 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #31
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %22) #31
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.gd, i32 noundef %i.gc, ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.cs unwind label %bb.cu

bb.cs:                                            ; preds = %bb.cr
  %i.lf = load ptr, ptr %22, align 8, !tbaa !772
  %.not.i164 = icmp eq ptr %i.lf, null
  br i1 %.not.i164, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit165, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %22) #31
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit165

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit165: ; preds = %bb.cs, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #31
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESD_EEEJSD_SD_EEEE7iterateIJNS1_20ConstantVectorReaderISD_EESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit

bb.cu:                                            ; preds = %bb.cr
  %i.lg = landingpad { ptr, i32 }
          cleanup
  %i.lh = load ptr, ptr %22, align 8, !tbaa !772
  %.not.i166 = icmp eq ptr %i.lh, null
  br i1 %.not.i166, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit167, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %22) #31
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit167

end_hunk_3
begin_hunk_4_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS3_10VectorExecEEESB_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESF_EEEJSF_SF_EEEE7iterateIJNS3_20ConstantVectorReaderISF_EENS3_16FlatVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISU_EEvRKS1_ST_EUlST_E_EEvSX_ST_T0_EUlST_E_EEvST_:bb.a
  %.not.i.i.i.i.i25 = icmp eq i8 %i.cs, 0
  br i1 %.not.i.i.i.i.i25, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ct = add nsw i32 %i.ck, -1
  store i32 %i.ct, ptr %i.ch, align 8, !tbaa !3, !noalias !40662
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i26

bb.w:                                             ; preds = %bb.u
  %i.cu = atomicrmw volatile add ptr %i.ch, i32 -1 acq_rel, align 4, !noalias !40662
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i26

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i26: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i27 = phi i32 [ %i.ck, %bb.v ], [ %i.cu, %bb.w ]
  %i.cv = icmp eq i32 %.0.i.i.i.i.i.i27, 1
  br i1 %i.cv, label %bb.x, label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit, !prof !38

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i26
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cg) #31, !noalias !40662
  br label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit

bb.y:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEEaSEOS4_.exit
  %i.cw = load ptr, ptr %2, align 16, !tbaa !1145, !noalias !40662
  %.not.i.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i, label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit, label %bb.z, !prof !596

bb.z:                                             ; preds = %bb.y
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %2), !noalias !40662
  br label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit

_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEEaSEOS4_.exit, %bb.r, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i26, %bb.x, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !40662
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !40662
  %.pre = load i32, ptr %8, align 8, !tbaa !39249
  %.pre77 = load ptr, ptr %i.aj, align 8
  br label %.noexc8

bb.aa:                                            ; preds = %.noexc22, %bb.k, %bb.j
  %i.cx = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !40662
  call void @_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #31, !noalias !40662
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !40662
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !40662
  br label %.body

.noexc8:                                          ; preds = %bb.i, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit
  %i.cy = phi ptr [ %.sroa.2.0.copyload.i15, %bb.i ], [ %.pre77, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit ]
  %i.cz = phi i32 [ %i.bh, %bb.i ], [ %.pre, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31, !noalias !40662
  %i.da = load ptr, ptr %i.bd, align 8, !tbaa !38376, !noalias !40662
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31, !noalias !40662
  %i.db = icmp ult i32 %i.cz, 13
  %i.dc = select i1 %i.db, ptr %i.ap, ptr %i.cy
  %i.dd = zext i32 %i.cz to i64
  store i64 %i.dd, ptr %6, align 8, !noalias !40662
  store ptr %i.dc, ptr %i.aq, align 8, !noalias !40662
  invoke void @_ZNK8facebook5velox9functions17DateTimeFormatter5parseERKSt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.folly::Expected.14860") align 8 %5, ptr noundef nonnull align 8 dereferenceable(44) %i.da, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %.noexc9 unwind label %bb.at

.noexc9:                                          ; preds = %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31, !noalias !40662
  %i.de = load i8, ptr %i.ar, align 8, !tbaa !40139, !noalias !40662
  switch i8 %i.de, label %.invoke [
    i8 2, label %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit
    i8 1, label %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit
  ], !prof !4660

_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit: ; preds = %.noexc9
  %i.df = load ptr, ptr %5, align 16, !tbaa !1145 ; 4 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %.noexc.thread, label %bb.ab

bb.ab:                                            ; preds = %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit
  %i.dh = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34
          to label %.noexc32 unwind label %bb.ah  ; 6 uses

.noexc32:                                         ; preds = %bb.ab
  %i.di = load i8, ptr %i.df, align 8, !tbaa !1148
  store i8 %i.di, ptr %i.dh, align 8, !tbaa !1148
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 8 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 24 ; 3 uses
  store ptr %i.dl, ptr %i.dj, align 8, !tbaa !37
  %i.dm = load ptr, ptr %i.dk, align 8, !tbaa !7  ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !16 ; 8 uses
  %i.dp = icmp ugt i64 %i.do, 15
  br i1 %i.dp, label %bb.ac, label %._crit_edge.i.i.i.i

bb.ac:                                            ; preds = %.noexc32
  %i.dq = icmp slt i64 %i.do, 0
  br i1 %i.dq, label %.noexc.i.i.i, label %bb.ad

.noexc.i.i.i:                                     ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #36
          to label %.noexc.i31 unwind label %bb.ag

.noexc.i31:                                       ; preds = %.noexc.i.i.i
  unreachable

bb.ad:                                            ; preds = %bb.ac
  %i.dr = add nuw i64 %i.do, 1                    ; 2 uses
  %i.ds = icmp slt i64 %i.dr, 0
  br i1 %i.ds, label %.noexc6.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !38

.noexc6.i.i.i:                                    ; preds = %bb.ad
  invoke void @_ZSt17__throw_bad_allocv() #36
          to label %.noexc6.i unwind label %bb.ag

.noexc6.i:                                        ; preds = %.noexc6.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.ad
  %i.dt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dr) #34
          to label %.noexc7.i unwind label %bb.ag ; 2 uses

.noexc7.i:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.dt, ptr %i.dj, align 8, !tbaa !7
  store i64 %i.do, ptr %i.dl, align 8, !tbaa !26
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc7.i, %.noexc32
  %i.du = phi ptr [ %i.dt, %.noexc7.i ], [ %i.dl, %.noexc32 ] ; 3 uses
  switch i64 %i.do, label %bb.af [
    i64 1, label %bb.ae
    i64 0, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm1EKNS1_16FlatVectorReaderISB_EEJNS0_10StringViewEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit
  ]

bb.ae:                                            ; preds = %._crit_edge.i.i.i.i
  %i.dv = load i8, ptr %i.dm, align 1, !tbaa !26
  store i8 %i.dv, ptr %i.du, align 1, !tbaa !26
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm1EKNS1_16FlatVectorReaderISB_EEJNS0_10StringViewEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit

bb.af:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.du, ptr align 1 %i.dm, i64 %i.do, i1 false)
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm1EKNS1_16FlatVectorReaderISB_EEJNS0_10StringViewEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %.noexc6.i.i.i, %.noexc.i.i.i
  %i.dw = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef 40) #35
  br label %.body33

bb.ah:                                            ; preds = %.invoke, %bb.ak, %bb.ab, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit
  %i.dx = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body33

.body33:                                          ; preds = %bb.ag, %bb.ah
  %eh.lpad-body34 = phi { ptr, i32 } [ %i.dx, %bb.ah ], [ %i.dw, %bb.ag ]
  %i.dy = load i8, ptr %i.ar, align 8, !tbaa !40139
  %cond.i.i = icmp ne i8 %i.dy, 2
  %i.dz = load ptr, ptr %5, align 16
  %.not.i.i.i35 = icmp eq ptr %i.dz, null
  %or.cond.i.i = select i1 %cond.i.i, i1 true, i1 %.not.i.i.i35, !prof !1429
  br i1 %or.cond.i.i, label %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit, label %bb.ai, !prof !1429

bb.ai:                                            ; preds = %.body33
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %5)
  br label %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit

_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit: ; preds = %.body33, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !40662
  br label %.body

_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit: ; preds = %.noexc9
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !40546, !noalias !40662
  invoke void @_ZN8facebook5velox9Timestamp5toGMTERKNS0_2tz8TimeZoneE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(50) %i.eb)
          to label %bb.aj unwind label %bb.ah, !noalias !40662

bb.aj:                                            ; preds = %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit
  %i.ec = load i8, ptr %i.ar, align 8, !tbaa !40139, !noalias !40662
  switch i8 %i.ec, label %.invoke [
    i8 1, label %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit40
    i8 2, label %bb.ak
  ], !prof !4156

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIN8facebook5velox6StatusEEEJRKS5_EEEvDpT0_(ptr noundef nonnull align 8 dereferenceable(32) %5) #18
          to label %.noexc38 unwind label %bb.ah

.noexc38:                                         ; preds = %bb.ak
  unreachable

.invoke:                                          ; preds = %bb.aj, %.noexc9
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #18
          to label %.cont unwind label %bb.ah

.cont:                                            ; preds = %.invoke
  unreachable

_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit40: ; preds = %bb.aj
  %i.ed = load <2 x i64>, ptr %5, align 16
  br label %.noexc.thread

.noexc.thread:                                    ; preds = %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit40
  %i.ee = phi <2 x i64> [ zeroinitializer, %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit ], [ %i.ed, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit40 ]
  store ptr null, ptr %9, align 8, !tbaa !1145
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !40662
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31, !noalias !40656
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31, !noalias !40653
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EENS1_16FlatVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSP_bSQ_.exit.i

_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm1EKNS1_16FlatVectorReaderISB_EEJNS0_10StringViewEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.ae, %bb.af
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store i64 %i.do, ptr %i.ef, align 8, !tbaa !16
  %i.eg = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.do
  store i8 0, ptr %i.eg, align 1, !tbaa !26
  store ptr %i.dh, ptr %9, align 8, !tbaa !1145
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %5)
  %.pre78 = load ptr, ptr %9, align 8, !tbaa !1145
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !40662
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31, !noalias !40656
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31, !noalias !40653
  %i.eh = icmp eq ptr %.pre78, null
  br i1 %i.eh, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EENS1_16FlatVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSP_bSQ_.exit.i, label %bb.al, !prof !40593

bb.al:                                            ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm1EKNS1_16FlatVectorReaderISB_EEJNS0_10StringViewEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !40665, !nonnull !476, !align !580
  invoke void @_ZN8facebook5velox6StatusC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 48
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !40563, !nonnull !476, !align !580
  %i.em = trunc nsw i64 %indvars.iv to i32
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %i.el, i32 noundef %i.em, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit unwind label %bb.ap

_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit: ; preds = %bb.am
  %i.en = load ptr, ptr %10, align 8, !tbaa !1145
  %.not.i = icmp eq ptr %i.en, null
  br i1 %.not.i, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EENS1_16FlatVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSP_.exit, label %bb.an, !prof !596

bb.an:                                            ; preds = %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EENS1_16FlatVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSP_.exit

bb.ao:                                            ; preds = %bb.al
  %i.eo = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook5velox6StatusD2Ev.exit47

bb.ap:                                            ; preds = %bb.am
  %i.ep = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.eq = load ptr, ptr %10, align 8, !tbaa !1145
  %.not.i46 = icmp eq ptr %i.eq, null
  br i1 %.not.i46, label %_ZN8facebook5velox6StatusD2Ev.exit47, label %bb.aq, !prof !596

bb.aq:                                            ; preds = %bb.ap
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %_ZN8facebook5velox6StatusD2Ev.exit47

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EENS1_16FlatVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSP_bSQ_.exit.i: ; preds = %.noexc.thread, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm1EKNS1_16FlatVectorReaderISB_EEJNS0_10StringViewEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit
  %i.er = phi <2 x i64> [ %i.ee, %.noexc.thread ], [ zeroinitializer, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm1EKNS1_16FlatVectorReaderISB_EEJNS0_10StringViewEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit ]
  %i.es = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !40666, !nonnull !476, !align !580
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !40667, !nonnull !476, !align !580
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !1686
  %i.ex = getelementptr inbounds [16 x i8], ptr %i.ew, i64 %indvars.iv
  store <2 x i64> %i.er, ptr %i.ex, align 8, !tbaa !536
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EENS1_16FlatVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSP_.exit

_ZN8facebook5velox6StatusD2Ev.exit47:             ; preds = %bb.aq, %bb.ap, %bb.ao
  %.pn.i4 = phi { ptr, i32 } [ %i.eo, %bb.ao ], [ %i.ep, %bb.ap ], [ %i.ep, %bb.aq ]
  %i.ey = load ptr, ptr %9, align 8, !tbaa !1145
  %.not.i49 = icmp eq ptr %i.ey, null
  br i1 %.not.i49, label %_ZN8facebook5velox6StatusD2Ev.exit50, label %bb.ar, !prof !596

bb.ar:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit47
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %_ZN8facebook5velox6StatusD2Ev.exit50

_ZN8facebook5velox6StatusD2Ev.exit50:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit47, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %.body

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EENS1_16FlatVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSP_.exit: ; preds = %bb.an, %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EENS1_16FlatVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSP_bSQ_.exit.i
  %i.ez = load ptr, ptr %9, align 8, !tbaa !1145
  %.not.i51 = icmp eq ptr %i.ez, null
  br i1 %.not.i51, label %_ZN8facebook5velox6StatusD2Ev.exit52, label %bb.as, !prof !596

bb.as:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EENS1_16FlatVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSP_.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %_ZN8facebook5velox6StatusD2Ev.exit52

_ZN8facebook5velox6StatusD2Ev.exit52:             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EENS1_16FlatVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSP_.exit, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESD_EEEJSD_SD_EEEE7iterateIJNS1_20ConstantVectorReaderISD_EENS1_16FlatVectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit

bb.at:                                            ; preds = %.noexc8, %.noexc6
  %i.fa = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body

.body:                                            ; preds = %bb.at, %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit, %bb.aa, %_ZN8facebook5velox6StatusD2Ev.exit50
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i4, %_ZN8facebook5velox6StatusD2Ev.exit50 ], [ %i.fa, %bb.at ], [ %eh.lpad-body34, %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit ], [ %i.cx, %bb.aa ] ; 3 uses
  %i.fb = extractvalue { ptr, i32 } %eh.lpad-body, 0 ; 2 uses
  %i.fc = extractvalue { ptr, i32 } %eh.lpad-body, 1 ; 2 uses
  %i.fd = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #31
  %i.fe = icmp eq i32 %i.fc, %i.fd
  br i1 %i.fe, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.body
  %i.ff = call ptr @__cxa_begin_catch(ptr %i.fb) #31
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !1579 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 144
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !7  ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 152
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !16
  %i.fm = icmp eq i64 %i.fl, 4
  br i1 %i.fm, label %.lr.ph.i.i.i.preheader.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader.i.preheader:               ; preds = %bb.au
  %i.fn = load i8, ptr %i.fj, align 1, !tbaa !26
  %or.cond.not.i.i.i = icmp eq i8 %i.fn, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.preheader.i.preheader
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 1
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !26
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.fp, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fj, i64 2
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !26
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.fr, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fj, i64 3
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !26
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.ft, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %12) #31
  %i.fu = trunc nsw i64 %indvars.iv to i32
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.at, i32 noundef %i.fu, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.bc unwind label %bb.be

.loopexit:                                        ; preds = %bb.au, %.lr.ph.i.i.i.preheader.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #36
          to label %bb.bi unwind label %bb.bb

bb.av:                                            ; preds = %.body
  %i.fv = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #31
  %i.fw = icmp eq i32 %i.fc, %i.fv
  br i1 %i.fw, label %bb.aw, label %.loopexit61

bb.aw:                                            ; preds = %bb.av
  %i.fx = call ptr @__cxa_begin_catch(ptr %i.fb) #31 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %11) #31
  %i.fy = trunc nsw i64 %indvars.iv to i32
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.at, i32 noundef %i.fy, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.ax unwind label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.fz = load ptr, ptr %11, align 8, !tbaa !772
  %.not.i53 = icmp eq ptr %i.fz, null
  br i1 %.not.i53, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #31
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESD_EEEJSD_SD_EEEE7iterateIJNS1_20ConstantVectorReaderISD_EENS1_16FlatVectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit

bb.az:                                            ; preds = %bb.aw
  %i.ga = landingpad { ptr, i32 }
          cleanup
  %i.gb = load ptr, ptr %11, align 8, !tbaa !772
  %.not.i54 = icmp eq ptr %i.gb, null
  br i1 %.not.i54, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit55, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #31
end_hunk_4
begin_hunk_5_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS3_10VectorExecEEESB_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESF_EEEJSF_SF_EEEE7iterateIJNS3_20ConstantVectorReaderISF_EENS3_16FlatVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_EUlST_E_EEvPKmiibST_ENKUlimE_clEim:bb.a
  %.not.i.i.i.i.i31 = icmp eq i8 %i.ca, 0
  br i1 %.not.i.i.i.i.i31, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cb = add nsw i32 %i.bs, -1
  store i32 %i.cb, ptr %i.bp, align 8, !tbaa !3, !noalias !40683
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i32

bb.p:                                             ; preds = %bb.n
  %i.cc = atomicrmw volatile add ptr %i.bp, i32 -1 acq_rel, align 4, !noalias !40683
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i32

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i32: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i33 = phi i32 [ %i.bs, %bb.o ], [ %i.cc, %bb.p ]
  %i.cd = icmp eq i32 %.0.i.i.i.i.i.i33, 1
  br i1 %i.cd, label %bb.q, label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit, !prof !38

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i32
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #31, !noalias !40683
  br label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit

bb.r:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEEaSEOS4_.exit
  %i.ce = load ptr, ptr %3, align 16, !tbaa !1145, !noalias !40683
  %.not.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i, label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit, label %bb.s, !prof !596

bb.s:                                             ; preds = %bb.r
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %3), !noalias !40683
  br label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit

_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEEaSEOS4_.exit, %bb.k, %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i32, %bb.q, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !40683
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !40683
  %.pre = load i32, ptr %9, align 8, !tbaa !39249
  %.pre79 = load ptr, ptr %i.o, align 8
  br label %.noexc15

bb.t:                                             ; preds = %.noexc28, %bb.d, %bb.c
  %i.cf = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !40683
  call void @_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #31, !noalias !40683
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !40683
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !40683
  br label %.body

.noexc15:                                         ; preds = %bb.b, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit
  %i.cg = phi ptr [ %.sroa.2.0.copyload.i21, %bb.b ], [ %.pre79, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit ]
  %i.ch = phi i32 [ %i.ap, %bb.b ], [ %.pre, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31, !noalias !40683
  %i.ci = load ptr, ptr %i.al, align 8, !tbaa !38376, !noalias !40683
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31, !noalias !40683
  %i.cj = icmp ult i32 %i.ch, 13
  %i.ck = select i1 %i.cj, ptr %i.u, ptr %i.cg
  %i.cl = zext i32 %i.ch to i64
  store i64 %i.cl, ptr %7, align 8, !noalias !40683
  store ptr %i.ck, ptr %i.v, align 8, !noalias !40683
  invoke void @_ZNK8facebook5velox9functions17DateTimeFormatter5parseERKSt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.folly::Expected.14860") align 8 %6, ptr noundef nonnull align 8 dereferenceable(44) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %.noexc16 unwind label %bb.am

.noexc16:                                         ; preds = %.noexc15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31, !noalias !40683
  %i.cm = load i8, ptr %i.w, align 8, !tbaa !40139, !noalias !40683
  switch i8 %i.cm, label %.invoke [
    i8 2, label %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit
    i8 1, label %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit
  ], !prof !4660

_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit: ; preds = %.noexc16
  %i.cn = load ptr, ptr %6, align 16, !tbaa !1145 ; 4 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %.noexc.thread, label %bb.u

bb.u:                                             ; preds = %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit
  %i.cp = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34
          to label %.noexc38 unwind label %bb.aa  ; 6 uses

.noexc38:                                         ; preds = %bb.u
  %i.cq = load i8, ptr %i.cn, align 8, !tbaa !1148
  store i8 %i.cq, ptr %i.cp, align 8, !tbaa !1148
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 24 ; 3 uses
  store ptr %i.ct, ptr %i.cr, align 8, !tbaa !37
  %i.cu = load ptr, ptr %i.cs, align 8, !tbaa !7  ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !16 ; 8 uses
  %i.cx = icmp ugt i64 %i.cw, 15
  br i1 %i.cx, label %bb.v, label %._crit_edge.i.i.i.i

bb.v:                                             ; preds = %.noexc38
  %i.cy = icmp slt i64 %i.cw, 0
  br i1 %i.cy, label %.noexc.i.i.i, label %bb.w

.noexc.i.i.i:                                     ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #36
          to label %.noexc.i37 unwind label %bb.z

.noexc.i37:                                       ; preds = %.noexc.i.i.i
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.cz = add nuw i64 %i.cw, 1                    ; 2 uses
  %i.da = icmp slt i64 %i.cz, 0
  br i1 %i.da, label %.noexc6.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !38

.noexc6.i.i.i:                                    ; preds = %bb.w
  invoke void @_ZSt17__throw_bad_allocv() #36
          to label %.noexc6.i unwind label %bb.z

.noexc6.i:                                        ; preds = %.noexc6.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.w
  %i.db = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cz) #34
          to label %.noexc7.i unwind label %bb.z  ; 2 uses

.noexc7.i:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.db, ptr %i.cr, align 8, !tbaa !7
  store i64 %i.cw, ptr %i.ct, align 8, !tbaa !26
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc7.i, %.noexc38
  %i.dc = phi ptr [ %i.db, %.noexc7.i ], [ %i.ct, %.noexc38 ] ; 3 uses
  switch i64 %i.cw, label %bb.y [
    i64 1, label %bb.x
    i64 0, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm1EKNS1_16FlatVectorReaderISB_EEJNS0_10StringViewEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit
  ]

bb.x:                                             ; preds = %._crit_edge.i.i.i.i
  %i.dd = load i8, ptr %i.cu, align 1, !tbaa !26
  store i8 %i.dd, ptr %i.dc, align 1, !tbaa !26
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm1EKNS1_16FlatVectorReaderISB_EEJNS0_10StringViewEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit

bb.y:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dc, ptr align 1 %i.cu, i64 %i.cw, i1 false)
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm1EKNS1_16FlatVectorReaderISB_EEJNS0_10StringViewEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %.noexc6.i.i.i, %.noexc.i.i.i
  %i.de = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef 40) #35
  br label %.body39

bb.aa:                                            ; preds = %.invoke, %bb.ad, %bb.u, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit
  %i.df = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body39

.body39:                                          ; preds = %bb.z, %bb.aa
  %eh.lpad-body40 = phi { ptr, i32 } [ %i.df, %bb.aa ], [ %i.de, %bb.z ]
  %i.dg = load i8, ptr %i.w, align 8, !tbaa !40139
  %cond.i.i = icmp ne i8 %i.dg, 2
  %i.dh = load ptr, ptr %6, align 16
  %.not.i.i.i41 = icmp eq ptr %i.dh, null
  %or.cond.i.i = select i1 %cond.i.i, i1 true, i1 %.not.i.i.i41, !prof !1429
  br i1 %or.cond.i.i, label %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit, label %bb.ab, !prof !1429

bb.ab:                                            ; preds = %.body39
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %6)
  br label %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit

_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit: ; preds = %.body39, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31, !noalias !40683
  br label %.body

_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit: ; preds = %.noexc16
  %i.di = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !40546, !noalias !40683
  invoke void @_ZN8facebook5velox9Timestamp5toGMTERKNS0_2tz8TimeZoneE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(50) %i.dj)
          to label %bb.ac unwind label %bb.aa, !noalias !40683

bb.ac:                                            ; preds = %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit
  %i.dk = load i8, ptr %i.w, align 8, !tbaa !40139, !noalias !40683
  switch i8 %i.dk, label %.invoke [
    i8 1, label %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit46
    i8 2, label %bb.ad
  ], !prof !4156

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIN8facebook5velox6StatusEEEJRKS5_EEEvDpT0_(ptr noundef nonnull align 8 dereferenceable(32) %6) #18
          to label %.noexc44 unwind label %bb.aa

.noexc44:                                         ; preds = %bb.ad
  unreachable

.invoke:                                          ; preds = %bb.ac, %.noexc16
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #18
          to label %.cont unwind label %bb.aa

.cont:                                            ; preds = %.invoke
  unreachable

_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit46: ; preds = %bb.ac
  %i.dl = load <2 x i64>, ptr %6, align 16
  br label %.noexc.thread

.noexc.thread:                                    ; preds = %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit46
  %i.dm = phi <2 x i64> [ zeroinitializer, %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit ], [ %i.dl, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit46 ]
  store ptr null, ptr %10, align 8, !tbaa !1145
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31, !noalias !40683
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31, !noalias !40677
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31, !noalias !40674
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EENS1_16FlatVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSP_bSQ_.exit.i

_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm1EKNS1_16FlatVectorReaderISB_EEJNS0_10StringViewEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.x, %bb.y
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store i64 %i.cw, ptr %i.dn, align 8, !tbaa !16
  %i.do = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.cw
  store i8 0, ptr %i.do, align 1, !tbaa !26
  store ptr %i.cp, ptr %10, align 8, !tbaa !1145
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %6)
  %.pre80 = load ptr, ptr %10, align 8, !tbaa !1145
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31, !noalias !40683
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31, !noalias !40677
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31, !noalias !40674
  %i.dp = icmp eq ptr %.pre80, null
  br i1 %i.dp, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EENS1_16FlatVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSP_bSQ_.exit.i, label %bb.ae, !prof !40593

bb.ae:                                            ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm1EKNS1_16FlatVectorReaderISB_EEJNS0_10StringViewEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !40665, !nonnull !476, !align !580
  invoke void @_ZN8facebook5velox6StatusC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 48
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !40563, !nonnull !476, !align !580
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %i.dt, i32 noundef %i.z, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit unwind label %bb.ai

_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit: ; preds = %bb.af
  %i.du = load ptr, ptr %11, align 8, !tbaa !1145
  %.not.i = icmp eq ptr %i.du, null
  br i1 %.not.i, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EENS1_16FlatVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSP_.exit, label %bb.ag, !prof !596

bb.ag:                                            ; preds = %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %11)
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EENS1_16FlatVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSP_.exit

bb.ah:                                            ; preds = %bb.ae
  %i.dv = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook5velox6StatusD2Ev.exit53

bb.ai:                                            ; preds = %bb.af
  %i.dw = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.dx = load ptr, ptr %11, align 8, !tbaa !1145
  %.not.i52 = icmp eq ptr %i.dx, null
  br i1 %.not.i52, label %_ZN8facebook5velox6StatusD2Ev.exit53, label %bb.aj, !prof !596

bb.aj:                                            ; preds = %bb.ai
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %11)
  br label %_ZN8facebook5velox6StatusD2Ev.exit53

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EENS1_16FlatVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSP_bSQ_.exit.i: ; preds = %.noexc.thread, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm1EKNS1_16FlatVectorReaderISB_EEJNS0_10StringViewEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit
  %i.dy = phi <2 x i64> [ %i.dm, %.noexc.thread ], [ zeroinitializer, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm1EKNS1_16FlatVectorReaderISB_EEJNS0_10StringViewEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit ]
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !40666, !nonnull !476, !align !580
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !40667, !nonnull !476, !align !580
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !1686
  %i.ee = getelementptr inbounds [16 x i8], ptr %i.ed, i64 %i.ai
  store <2 x i64> %i.dy, ptr %i.ee, align 8, !tbaa !536
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EENS1_16FlatVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSP_.exit

_ZN8facebook5velox6StatusD2Ev.exit53:             ; preds = %bb.aj, %bb.ai, %bb.ah
  %.pn.i11 = phi { ptr, i32 } [ %i.dv, %bb.ah ], [ %i.dw, %bb.ai ], [ %i.dw, %bb.aj ]
  %i.ef = load ptr, ptr %10, align 8, !tbaa !1145
  %.not.i55 = icmp eq ptr %i.ef, null
  br i1 %.not.i55, label %_ZN8facebook5velox6StatusD2Ev.exit56, label %bb.ak, !prof !596

bb.ak:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit53
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %_ZN8facebook5velox6StatusD2Ev.exit56

_ZN8facebook5velox6StatusD2Ev.exit56:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit53, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %.body

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EENS1_16FlatVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSP_.exit: ; preds = %bb.ag, %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EENS1_16FlatVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSP_bSQ_.exit.i
  %i.eg = load ptr, ptr %10, align 8, !tbaa !1145
  %.not.i57 = icmp eq ptr %i.eg, null
  br i1 %.not.i57, label %_ZN8facebook5velox6StatusD2Ev.exit58, label %bb.al, !prof !596

bb.al:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EENS1_16FlatVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSP_.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %_ZN8facebook5velox6StatusD2Ev.exit58

_ZN8facebook5velox6StatusD2Ev.exit58:             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EENS1_16FlatVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSP_.exit, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESD_EEEJSD_SD_EEEE7iterateIJNS1_20ConstantVectorReaderISD_EENS1_16FlatVectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit

bb.am:                                            ; preds = %.noexc15, %.noexc13
  %i.eh = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body

.body:                                            ; preds = %bb.am, %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit, %bb.t, %_ZN8facebook5velox6StatusD2Ev.exit56
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i11, %_ZN8facebook5velox6StatusD2Ev.exit56 ], [ %i.eh, %bb.am ], [ %eh.lpad-body40, %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit ], [ %i.cf, %bb.t ] ; 3 uses
  %i.ei = extractvalue { ptr, i32 } %eh.lpad-body, 0 ; 2 uses
  %i.ej = extractvalue { ptr, i32 } %eh.lpad-body, 1 ; 2 uses
  %i.ek = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #31
  %i.el = icmp eq i32 %i.ej, %i.ek
  br i1 %i.el, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.body
  %i.em = call ptr @__cxa_begin_catch(ptr %i.ei) #31
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !1579 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 144
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !7  ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 152
  %i.es = load i64, ptr %i.er, align 8, !tbaa !16
  %i.et = icmp eq i64 %i.es, 4
  br i1 %i.et, label %.lr.ph.i.i.i.preheader.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader.i.preheader:               ; preds = %bb.an
  %i.eu = load i8, ptr %i.eq, align 1, !tbaa !26
  %or.cond.not.i.i.i = icmp eq i8 %i.eu, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.preheader.i.preheader
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eq, i64 1
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !26
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.ew, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eq, i64 2
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !26
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.ey, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eq, i64 3
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !26
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.fa, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %13) #31
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.aa, i32 noundef %i.z, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.av unwind label %bb.ax

.loopexit:                                        ; preds = %bb.an, %.lr.ph.i.i.i.preheader.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #36
          to label %bb.bb unwind label %bb.au

bb.ao:                                            ; preds = %.body
  %i.fb = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #31
  %i.fc = icmp eq i32 %i.ej, %i.fb
  br i1 %i.fc, label %bb.ap, label %.loopexit67

bb.ap:                                            ; preds = %bb.ao
  %i.fd = call ptr @__cxa_begin_catch(ptr %i.ei) #31 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %12) #31
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.aa, i32 noundef %i.z, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.aq unwind label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.fe = load ptr, ptr %12, align 8, !tbaa !772
  %.not.i59 = icmp eq ptr %i.fe, null
  br i1 %.not.i59, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #31
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESD_EEEJSD_SD_EEEE7iterateIJNS1_20ConstantVectorReaderISD_EENS1_16FlatVectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit

bb.as:                                            ; preds = %bb.ap
  %i.ff = landingpad { ptr, i32 }
          cleanup
  %i.fg = load ptr, ptr %12, align 8, !tbaa !772
  %.not.i60 = icmp eq ptr %i.fg, null
  br i1 %.not.i60, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit61, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #31
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit61

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit61: ; preds = %bb.as, %bb.at
end_hunk_5
begin_hunk_6_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS3_10VectorExecEEESB_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESF_EEEJSF_SF_EEEE7iterateIJNS3_20ConstantVectorReaderISF_EENS3_16FlatVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi:bb.a
  %.not.i.i.i.i.i52 = icmp eq i8 %i.cm, 0
  br i1 %.not.i.i.i.i.i52, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cn = add nsw i32 %i.ce, -1
  store i32 %i.cn, ptr %i.cb, align 8, !tbaa !3, !noalias !40699
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i53

bb.q:                                             ; preds = %bb.o
  %i.co = atomicrmw volatile add ptr %i.cb, i32 -1 acq_rel, align 4, !noalias !40699
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i53

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i53: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i54 = phi i32 [ %i.ce, %bb.p ], [ %i.co, %bb.q ]
  %i.cp = icmp eq i32 %.0.i.i.i.i.i.i54, 1
  br i1 %i.cp, label %bb.r, label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit, !prof !38

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i53
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #31, !noalias !40699
  br label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit

bb.s:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEEaSEOS4_.exit
  %i.cq = load ptr, ptr %2, align 16, !tbaa !1145, !noalias !40699
  %.not.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i, label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit, label %bb.t, !prof !596

bb.t:                                             ; preds = %bb.s
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %2), !noalias !40699
  br label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit

_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEEaSEOS4_.exit, %bb.l, %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i53, %bb.r, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !40699
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !40699
  %.pre = load i32, ptr %8, align 8, !tbaa !39249
  %.pre206 = load ptr, ptr %i.ac, align 8
  br label %.noexc36

bb.u:                                             ; preds = %.noexc49, %bb.e, %bb.d
  %i.cr = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !40699
  call void @_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #31, !noalias !40699
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !40699
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !40699
  br label %.body38

.noexc36:                                         ; preds = %bb.c, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit
  %i.cs = phi ptr [ %.sroa.2.0.copyload.i42, %bb.c ], [ %.pre206, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit ]
  %i.ct = phi i32 [ %i.bb, %bb.c ], [ %.pre, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31, !noalias !40699
  %i.cu = load ptr, ptr %i.ax, align 8, !tbaa !38376, !noalias !40699
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31, !noalias !40699
  %i.cv = icmp ult i32 %i.ct, 13
  %i.cw = select i1 %i.cv, ptr %i.ai, ptr %i.cs
  %i.cx = zext i32 %i.ct to i64
  store i64 %i.cx, ptr %6, align 8, !noalias !40699
  store ptr %i.cw, ptr %i.aj, align 8, !noalias !40699
  invoke void @_ZNK8facebook5velox9functions17DateTimeFormatter5parseERKSt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.folly::Expected.14860") align 8 %5, ptr noundef nonnull align 8 dereferenceable(44) %i.cu, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %.noexc37 unwind label %bb.an

.noexc37:                                         ; preds = %.noexc36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31, !noalias !40699
  %i.cy = load i8, ptr %i.ak, align 8, !tbaa !40139, !noalias !40699
  switch i8 %i.cy, label %.invoke [
    i8 2, label %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit
    i8 1, label %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit
  ], !prof !4660

_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit: ; preds = %.noexc37
  %i.cz = load ptr, ptr %5, align 16, !tbaa !1145 ; 4 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit71.thread, label %bb.v

bb.v:                                             ; preds = %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit
  %i.db = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34
          to label %.noexc59 unwind label %bb.ab  ; 6 uses

.noexc59:                                         ; preds = %bb.v
  %i.dc = load i8, ptr %i.cz, align 8, !tbaa !1148
  store i8 %i.dc, ptr %i.db, align 8, !tbaa !1148
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 24 ; 3 uses
  store ptr %i.df, ptr %i.dd, align 8, !tbaa !37
  %i.dg = load ptr, ptr %i.de, align 8, !tbaa !7  ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !16 ; 8 uses
  %i.dj = icmp ugt i64 %i.di, 15
  br i1 %i.dj, label %bb.w, label %._crit_edge.i.i.i.i

bb.w:                                             ; preds = %.noexc59
  %i.dk = icmp slt i64 %i.di, 0
  br i1 %i.dk, label %.noexc.i.i.i, label %bb.x

.noexc.i.i.i:                                     ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #36
          to label %.noexc.i58 unwind label %bb.aa

.noexc.i58:                                       ; preds = %.noexc.i.i.i
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.dl = add nuw i64 %i.di, 1                    ; 2 uses
  %i.dm = icmp slt i64 %i.dl, 0
  br i1 %i.dm, label %.noexc6.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !38

.noexc6.i.i.i:                                    ; preds = %bb.x
  invoke void @_ZSt17__throw_bad_allocv() #36
          to label %.noexc6.i unwind label %bb.aa

.noexc6.i:                                        ; preds = %.noexc6.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.x
  %i.dn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dl) #34
          to label %.noexc7.i unwind label %bb.aa ; 2 uses

.noexc7.i:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.dn, ptr %i.dd, align 8, !tbaa !7
  store i64 %i.di, ptr %i.df, align 8, !tbaa !26
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc7.i, %.noexc59
  %i.do = phi ptr [ %i.dn, %.noexc7.i ], [ %i.df, %.noexc59 ] ; 3 uses
  switch i64 %i.di, label %bb.z [
    i64 1, label %bb.y
    i64 0, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm1EKNS1_16FlatVectorReaderISB_EEJNS0_10StringViewEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit.i
  ]

bb.y:                                             ; preds = %._crit_edge.i.i.i.i
  %i.dp = load i8, ptr %i.dg, align 1, !tbaa !26
  store i8 %i.dp, ptr %i.do, align 1, !tbaa !26
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm1EKNS1_16FlatVectorReaderISB_EEJNS0_10StringViewEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit.i

bb.z:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.do, ptr align 1 %i.dg, i64 %i.di, i1 false)
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm1EKNS1_16FlatVectorReaderISB_EEJNS0_10StringViewEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit.i

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %.noexc6.i.i.i, %.noexc.i.i.i
  %i.dq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @_ZdlPvm(ptr noundef nonnull %i.db, i64 noundef 40) #35
  br label %.body60

bb.ab:                                            ; preds = %.invoke, %bb.ae, %bb.v, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit
  %i.dr = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body60

.body60:                                          ; preds = %bb.aa, %bb.ab
  %eh.lpad-body61 = phi { ptr, i32 } [ %i.dr, %bb.ab ], [ %i.dq, %bb.aa ]
  %i.ds = load i8, ptr %i.ak, align 8, !tbaa !40139
  %cond.i.i = icmp ne i8 %i.ds, 2
  %i.dt = load ptr, ptr %5, align 16
  %.not.i.i.i62 = icmp eq ptr %i.dt, null
  %or.cond.i.i = select i1 %cond.i.i, i1 true, i1 %.not.i.i.i62, !prof !1429
  br i1 %or.cond.i.i, label %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit, label %bb.ac, !prof !1429

bb.ac:                                            ; preds = %.body60
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %5)
  br label %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit

_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit: ; preds = %.body60, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !40699
  br label %.body38

_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit: ; preds = %.noexc37
  %i.du = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !40546, !noalias !40699
  invoke void @_ZN8facebook5velox9Timestamp5toGMTERKNS0_2tz8TimeZoneE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(50) %i.dv)
          to label %bb.ad unwind label %bb.ab, !noalias !40699

bb.ad:                                            ; preds = %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit
  %i.dw = load i8, ptr %i.ak, align 8, !tbaa !40139, !noalias !40699
  switch i8 %i.dw, label %.invoke [
    i8 1, label %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit67
    i8 2, label %bb.ae
  ], !prof !4156

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIN8facebook5velox6StatusEEEJRKS5_EEEvDpT0_(ptr noundef nonnull align 8 dereferenceable(32) %5) #18
          to label %.noexc65 unwind label %bb.ab

.noexc65:                                         ; preds = %bb.ae
  unreachable

.invoke:                                          ; preds = %bb.ad, %.noexc37
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #18
          to label %.cont unwind label %bb.ab

.cont:                                            ; preds = %.invoke
  unreachable

_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit67: ; preds = %bb.ad
  %i.dx = load <2 x i64>, ptr %5, align 16
  br label %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit71.thread

_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit71.thread: ; preds = %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit67
  %i.dy = phi <2 x i64> [ zeroinitializer, %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit ], [ %i.dx, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit67 ]
  store ptr null, ptr %9, align 8, !tbaa !1145
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !40699
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31, !noalias !40693
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31, !noalias !40690
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EENS1_16FlatVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clImS9_EEDaSP_bSQ_.exit.i

_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm1EKNS1_16FlatVectorReaderISB_EEJNS0_10StringViewEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit.i: ; preds = %._crit_edge.i.i.i.i, %bb.y, %bb.z
  %i.dz = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store i64 %i.di, ptr %i.dz, align 8, !tbaa !16
  %i.ea = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.di
  store i8 0, ptr %i.ea, align 1, !tbaa !26
  store ptr %i.db, ptr %9, align 8, !tbaa !1145
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %5)
  %.pre207 = load ptr, ptr %9, align 8, !tbaa !1145
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !40699
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31, !noalias !40693
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31, !noalias !40690
  %i.eb = icmp eq ptr %.pre207, null
  br i1 %i.eb, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EENS1_16FlatVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clImS9_EEDaSP_bSQ_.exit.i, label %bb.af, !prof !40593

bb.af:                                            ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm1EKNS1_16FlatVectorReaderISB_EEJNS0_10StringViewEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !40665, !nonnull !476, !align !580
  invoke void @_ZN8facebook5velox6StatusC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 48
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !40563, !nonnull !476, !align !580
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %i.ef, i32 noundef %i.as, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit unwind label %bb.aj

_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit: ; preds = %bb.ag
  %i.eg = load ptr, ptr %10, align 8, !tbaa !1145
  %.not.i = icmp eq ptr %i.eg, null
  br i1 %.not.i, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EENS1_16FlatVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSP_.exit, label %bb.ah, !prof !596

bb.ah:                                            ; preds = %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EENS1_16FlatVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSP_.exit

bb.ai:                                            ; preds = %bb.af
  %i.eh = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook5velox6StatusD2Ev.exit74

bb.aj:                                            ; preds = %bb.ag
  %i.ei = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.ej = load ptr, ptr %10, align 8, !tbaa !1145
  %.not.i73 = icmp eq ptr %i.ej, null
  br i1 %.not.i73, label %_ZN8facebook5velox6StatusD2Ev.exit74, label %bb.ak, !prof !596

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %_ZN8facebook5velox6StatusD2Ev.exit74

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EENS1_16FlatVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clImS9_EEDaSP_bSQ_.exit.i: ; preds = %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit71.thread, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm1EKNS1_16FlatVectorReaderISB_EEJNS0_10StringViewEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit.i
  %i.ek = phi <2 x i64> [ %i.dy, %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit71.thread ], [ zeroinitializer, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm1EKNS1_16FlatVectorReaderISB_EEJNS0_10StringViewEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit.i ]
  %i.el = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !40666, !nonnull !476, !align !580
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !40667, !nonnull !476, !align !580
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !1686
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %i.ep, i64 %.0188
  store <2 x i64> %i.ek, ptr %i.eq, align 8, !tbaa !536
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EENS1_16FlatVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSP_.exit

_ZN8facebook5velox6StatusD2Ev.exit74:             ; preds = %bb.ak, %bb.aj, %bb.ai
  %.pn.i27 = phi { ptr, i32 } [ %i.eh, %bb.ai ], [ %i.ei, %bb.aj ], [ %i.ei, %bb.ak ]
  %i.er = load ptr, ptr %9, align 8, !tbaa !1145
  %.not.i76 = icmp eq ptr %i.er, null
  br i1 %.not.i76, label %_ZN8facebook5velox6StatusD2Ev.exit77, label %bb.al, !prof !596

bb.al:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit74
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %_ZN8facebook5velox6StatusD2Ev.exit77

_ZN8facebook5velox6StatusD2Ev.exit77:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit74, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %.body38

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EENS1_16FlatVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSP_.exit: ; preds = %bb.ah, %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EENS1_16FlatVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clImS9_EEDaSP_bSQ_.exit.i
  %i.es = load ptr, ptr %9, align 8, !tbaa !1145
  %.not.i78 = icmp eq ptr %i.es, null
  br i1 %.not.i78, label %_ZN8facebook5velox6StatusD2Ev.exit79, label %bb.am, !prof !596

bb.am:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EENS1_16FlatVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSP_.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %_ZN8facebook5velox6StatusD2Ev.exit79

_ZN8facebook5velox6StatusD2Ev.exit79:             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EENS1_16FlatVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSP_.exit, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESD_EEEJSD_SD_EEEE7iterateIJNS1_20ConstantVectorReaderISD_EENS1_16FlatVectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_ENKUlSR_E_clImEEDaSR_.exit

bb.an:                                            ; preds = %.noexc36, %.noexc34
  %i.et = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body38

.body38:                                          ; preds = %bb.u, %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit, %_ZN8facebook5velox6StatusD2Ev.exit77, %bb.an
  %eh.lpad-body39 = phi { ptr, i32 } [ %i.et, %bb.an ], [ %.pn.i27, %_ZN8facebook5velox6StatusD2Ev.exit77 ], [ %eh.lpad-body61, %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit ], [ %i.cr, %bb.u ] ; 3 uses
  %i.eu = extractvalue { ptr, i32 } %eh.lpad-body39, 0 ; 2 uses
  %i.ev = extractvalue { ptr, i32 } %eh.lpad-body39, 1 ; 2 uses
  %i.ew = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #31
  %i.ex = icmp eq i32 %i.ev, %i.ew
  br i1 %i.ex, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.body38
  %i.ey = call ptr @__cxa_begin_catch(ptr %i.eu) #31
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !1579 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 144
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !7  ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 152
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !16
  %i.ff = icmp eq i64 %i.fe, 4
  br i1 %i.ff, label %.lr.ph.i.i.i.preheader.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader.i.preheader:               ; preds = %bb.ao
  %i.fg = load i8, ptr %i.fc, align 1, !tbaa !26
  %or.cond.not.i.i.i = icmp eq i8 %i.fg, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.preheader.i.preheader
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fc, i64 1
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !26
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.fi, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fc, i64 2
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !26
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.fk, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fc, i64 3
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !26
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.fm, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %12) #31
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.al, i32 noundef %i.as, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.aw unwind label %bb.ay

.loopexit:                                        ; preds = %bb.ao, %.lr.ph.i.i.i.preheader.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #36
          to label %bb.bc unwind label %bb.av

bb.ap:                                            ; preds = %.body38
  %i.fn = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #31
  %i.fo = icmp eq i32 %i.ev, %i.fn
  br i1 %i.fo, label %bb.aq, label %common.resume

bb.aq:                                            ; preds = %bb.ap
  %i.fp = call ptr @__cxa_begin_catch(ptr %i.eu) #31 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %11) #31
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.al, i32 noundef %i.as, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.ar unwind label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.fq = load ptr, ptr %11, align 8, !tbaa !772
  %.not.i80 = icmp eq ptr %i.fq, null
  br i1 %.not.i80, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #31
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESD_EEEJSD_SD_EEEE7iterateIJNS1_20ConstantVectorReaderISD_EENS1_16FlatVectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_ENKUlSR_E_clImEEDaSR_.exit

bb.at:                                            ; preds = %bb.aq
  %i.fr = landingpad { ptr, i32 }
          cleanup
  %i.fs = load ptr, ptr %11, align 8, !tbaa !772
  %.not.i81 = icmp eq ptr %i.fs, null
  br i1 %.not.i81, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit82, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #31
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit82

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit82: ; preds = %bb.at, %bb.au
end_hunk_6
begin_hunk_7_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS3_10VectorExecEEESB_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESF_EEEJSF_SF_EEEE7iterateIJNS3_20ConstantVectorReaderISF_EENS3_16FlatVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi:bb.a
  %.not.i.i.i.i.i108 = icmp eq i8 %i.ie, 0
  br i1 %.not.i.i.i.i.i108, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.if = add nsw i32 %i.hw, -1
  store i32 %i.if, ptr %i.ht, align 8, !tbaa !3, !noalias !40712
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i109

bb.br:                                            ; preds = %bb.bp
  %i.ig = atomicrmw volatile add ptr %i.ht, i32 -1 acq_rel, align 4, !noalias !40712
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i109

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i109: ; preds = %bb.br, %bb.bq
  %.0.i.i.i.i.i.i110 = phi i32 [ %i.hw, %bb.bq ], [ %i.ig, %bb.br ]
  %i.ih = icmp eq i32 %.0.i.i.i.i.i.i110, 1
  br i1 %i.ih, label %bb.bs, label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit111, !prof !38

bb.bs:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i109
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hs) #31, !noalias !40712
  br label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit111

bb.bt:                                            ; preds = %_ZNSt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEEaSEOS4_.exit105
  %i.ii = load ptr, ptr %13, align 16, !tbaa !1145, !noalias !40712
  %.not.i.i.i106 = icmp eq ptr %i.ii, null
  br i1 %.not.i.i.i106, label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit111, label %bb.bu, !prof !596

bb.bu:                                            ; preds = %bb.bt
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %13), !noalias !40712
  br label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit111

_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit111: ; preds = %_ZNSt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEEaSEOS4_.exit105, %bb.bm, %bb.bo, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i109, %bb.bs, %bb.bt, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31, !noalias !40712
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31, !noalias !40712
  %.pre208 = load i32, ptr %19, align 8, !tbaa !39249
  %.pre209 = load ptr, ptr %i.n, align 8
  br label %.noexc21

bb.bv:                                            ; preds = %.noexc98, %bb.bf, %bb.be
  %i.ij = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31, !noalias !40712
  call void @_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %13) #31, !noalias !40712
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31, !noalias !40712
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31, !noalias !40712
  br label %.body

.noexc21:                                         ; preds = %bb.bd, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit111
  %i.ik = phi ptr [ %.sroa.2.0.copyload.i89, %bb.bd ], [ %.pre209, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit111 ]
  %i.il = phi i32 [ %i.gt, %bb.bd ], [ %.pre208, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit111 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31, !noalias !40712
  %i.im = load ptr, ptr %i.gp, align 8, !tbaa !38376, !noalias !40712
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31, !noalias !40712
  %i.in = icmp ult i32 %i.il, 13
  %i.io = select i1 %i.in, ptr %i.t, ptr %i.ik
  %i.ip = zext i32 %i.il to i64
  store i64 %i.ip, ptr %17, align 8, !noalias !40712
  store ptr %i.io, ptr %i.u, align 8, !noalias !40712
  invoke void @_ZNK8facebook5velox9functions17DateTimeFormatter5parseERKSt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.folly::Expected.14860") align 8 %16, ptr noundef nonnull align 8 dereferenceable(44) %i.im, ptr noundef nonnull align 8 dereferenceable(16) %17)
          to label %.noexc22 unwind label %bb.co

.noexc22:                                         ; preds = %.noexc21
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31, !noalias !40712
  %i.iq = load i8, ptr %i.v, align 8, !tbaa !40139, !noalias !40712
  switch i8 %i.iq, label %.invoke263 [
    i8 2, label %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit115
    i8 1, label %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit134
  ], !prof !4660

_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit115: ; preds = %.noexc22
  %i.ir = load ptr, ptr %16, align 16, !tbaa !1145 ; 4 uses
  %i.is = icmp eq ptr %i.ir, null
  br i1 %i.is, label %.noexc.thread, label %bb.bw

bb.bw:                                            ; preds = %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit115
  %i.it = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34
          to label %.noexc124 unwind label %bb.cc ; 6 uses

.noexc124:                                        ; preds = %bb.bw
  %i.iu = load i8, ptr %i.ir, align 8, !tbaa !1148
  store i8 %i.iu, ptr %i.it, align 8, !tbaa !1148
  %i.iv = getelementptr inbounds nuw i8, ptr %i.it, i64 8 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.it, i64 24 ; 3 uses
  store ptr %i.ix, ptr %i.iv, align 8, !tbaa !37
  %i.iy = load ptr, ptr %i.iw, align 8, !tbaa !7  ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !16 ; 8 uses
  %i.jb = icmp ugt i64 %i.ja, 15
  br i1 %i.jb, label %bb.bx, label %._crit_edge.i.i.i.i116

bb.bx:                                            ; preds = %.noexc124
  %i.jc = icmp slt i64 %i.ja, 0
  br i1 %i.jc, label %.noexc.i.i.i122, label %bb.by

.noexc.i.i.i122:                                  ; preds = %bb.bx
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #36
          to label %.noexc.i123 unwind label %bb.cb

.noexc.i123:                                      ; preds = %.noexc.i.i.i122
  unreachable

bb.by:                                            ; preds = %bb.bx
  %i.jd = add nuw i64 %i.ja, 1                    ; 2 uses
  %i.je = icmp slt i64 %i.jd, 0
  br i1 %i.je, label %.noexc6.i.i.i120, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i118, !prof !38

.noexc6.i.i.i120:                                 ; preds = %bb.by
  invoke void @_ZSt17__throw_bad_allocv() #36
          to label %.noexc6.i121 unwind label %bb.cb

.noexc6.i121:                                     ; preds = %.noexc6.i.i.i120
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i118: ; preds = %bb.by
  %i.jf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jd) #34
          to label %.noexc7.i119 unwind label %bb.cb ; 2 uses

.noexc7.i119:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i118
  store ptr %i.jf, ptr %i.iv, align 8, !tbaa !7
  store i64 %i.ja, ptr %i.ix, align 8, !tbaa !26
  br label %._crit_edge.i.i.i.i116

._crit_edge.i.i.i.i116:                           ; preds = %.noexc7.i119, %.noexc124
  %i.jg = phi ptr [ %i.jf, %.noexc7.i119 ], [ %i.ix, %.noexc124 ] ; 3 uses
  switch i64 %i.ja, label %bb.ca [
    i64 1, label %bb.bz
    i64 0, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm1EKNS1_16FlatVectorReaderISB_EEJNS0_10StringViewEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit
  ]

bb.bz:                                            ; preds = %._crit_edge.i.i.i.i116
  %i.jh = load i8, ptr %i.iy, align 1, !tbaa !26
  store i8 %i.jh, ptr %i.jg, align 1, !tbaa !26
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm1EKNS1_16FlatVectorReaderISB_EEJNS0_10StringViewEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit

bb.ca:                                            ; preds = %._crit_edge.i.i.i.i116
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jg, ptr align 1 %i.iy, i64 %i.ja, i1 false)
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm1EKNS1_16FlatVectorReaderISB_EEJNS0_10StringViewEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit

bb.cb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i118, %.noexc6.i.i.i120, %.noexc.i.i.i122
  %i.ji = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @_ZdlPvm(ptr noundef nonnull %i.it, i64 noundef 40) #35
  br label %.body125

bb.cc:                                            ; preds = %.invoke263, %bb.cf, %bb.bw, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit134
  %i.jj = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body125

.body125:                                         ; preds = %bb.cb, %bb.cc
  %eh.lpad-body126 = phi { ptr, i32 } [ %i.jj, %bb.cc ], [ %i.ji, %bb.cb ]
  %i.jk = load i8, ptr %i.v, align 8, !tbaa !40139
  %cond.i.i128 = icmp ne i8 %i.jk, 2
  %i.jl = load ptr, ptr %16, align 16
  %.not.i.i.i129 = icmp eq ptr %i.jl, null
  %or.cond.i.i130 = select i1 %cond.i.i128, i1 true, i1 %.not.i.i.i129, !prof !1429
  br i1 %or.cond.i.i130, label %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit131, label %bb.cd, !prof !1429

bb.cd:                                            ; preds = %.body125
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %16)
  br label %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit131

_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit131: ; preds = %.body125, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31, !noalias !40712
  br label %.body

_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit134: ; preds = %.noexc22
  %i.jm = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !40546, !noalias !40712
  invoke void @_ZN8facebook5velox9Timestamp5toGMTERKNS0_2tz8TimeZoneE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(50) %i.jn)
          to label %bb.ce unwind label %bb.cc, !noalias !40712

bb.ce:                                            ; preds = %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit134
  %i.jo = load i8, ptr %i.v, align 8, !tbaa !40139, !noalias !40712
  switch i8 %i.jo, label %.invoke263 [
    i8 1, label %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit137
    i8 2, label %bb.cf
  ], !prof !4156

bb.cf:                                            ; preds = %bb.ce
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIN8facebook5velox6StatusEEEJRKS5_EEEvDpT0_(ptr noundef nonnull align 8 dereferenceable(32) %16) #18
          to label %.noexc135 unwind label %bb.cc

.noexc135:                                        ; preds = %bb.cf
  unreachable

.invoke263:                                       ; preds = %bb.ce, %.noexc22
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #18
          to label %.cont264 unwind label %bb.cc

.cont264:                                         ; preds = %.invoke263
  unreachable

_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit137: ; preds = %bb.ce
  %i.jp = load <2 x i64>, ptr %16, align 16
  br label %.noexc.thread

.noexc.thread:                                    ; preds = %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit115, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit137
  %i.jq = phi <2 x i64> [ zeroinitializer, %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit115 ], [ %i.jp, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit137 ]
  store ptr null, ptr %20, align 8, !tbaa !1145
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31, !noalias !40712
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31, !noalias !40706
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #31, !noalias !40703
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EENS1_16FlatVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSP_bSQ_.exit.i

_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm1EKNS1_16FlatVectorReaderISB_EEJNS0_10StringViewEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit: ; preds = %._crit_edge.i.i.i.i116, %bb.bz, %bb.ca
  %i.jr = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  store i64 %i.ja, ptr %i.jr, align 8, !tbaa !16
  %i.js = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.ja
  store i8 0, ptr %i.js, align 1, !tbaa !26
  store ptr %i.it, ptr %20, align 8, !tbaa !1145
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %16)
  %.pre210 = load ptr, ptr %20, align 8, !tbaa !1145
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31, !noalias !40712
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31, !noalias !40706
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #31, !noalias !40703
  %i.jt = icmp eq ptr %.pre210, null
  br i1 %i.jt, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EENS1_16FlatVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSP_bSQ_.exit.i, label %bb.cg, !prof !40593

bb.cg:                                            ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm1EKNS1_16FlatVectorReaderISB_EEJNS0_10StringViewEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit
  %i.ju = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !40665, !nonnull !476, !align !580
  invoke void @_ZN8facebook5velox6StatusC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.ch unwind label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 48
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !40563, !nonnull !476, !align !580
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %i.jx, i32 noundef %i.gd, ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit143 unwind label %bb.ck

_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit143: ; preds = %bb.ch
  %i.jy = load ptr, ptr %21, align 8, !tbaa !1145
  %.not.i144 = icmp eq ptr %i.jy, null
  br i1 %.not.i144, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EENS1_16FlatVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSP_.exit, label %bb.ci, !prof !596

bb.ci:                                            ; preds = %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit143
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %21)
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EENS1_16FlatVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSP_.exit

bb.cj:                                            ; preds = %bb.cg
  %i.jz = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook5velox6StatusD2Ev.exit147

bb.ck:                                            ; preds = %bb.ch
  %i.ka = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.kb = load ptr, ptr %21, align 8, !tbaa !1145
  %.not.i146 = icmp eq ptr %i.kb, null
  br i1 %.not.i146, label %_ZN8facebook5velox6StatusD2Ev.exit147, label %bb.cl, !prof !596

bb.cl:                                            ; preds = %bb.ck
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %21)
  br label %_ZN8facebook5velox6StatusD2Ev.exit147

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EENS1_16FlatVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSP_bSQ_.exit.i: ; preds = %.noexc.thread, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm1EKNS1_16FlatVectorReaderISB_EEJNS0_10StringViewEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit
  %i.kc = phi <2 x i64> [ %i.jq, %.noexc.thread ], [ zeroinitializer, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm1EKNS1_16FlatVectorReaderISB_EEJNS0_10StringViewEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit ]
  %i.kd = getelementptr inbounds nuw i8, ptr %i.gf, i64 32
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !40666, !nonnull !476, !align !580
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !40667, !nonnull !476, !align !580
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !1686
  %i.ki = getelementptr inbounds [16 x i8], ptr %i.kh, i64 %i.gm
  store <2 x i64> %i.kc, ptr %i.ki, align 8, !tbaa !536
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EENS1_16FlatVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSP_.exit

_ZN8facebook5velox6StatusD2Ev.exit147:            ; preds = %bb.cl, %bb.ck, %bb.cj
  %.pn.i17 = phi { ptr, i32 } [ %i.jz, %bb.cj ], [ %i.ka, %bb.ck ], [ %i.ka, %bb.cl ]
  %i.kj = load ptr, ptr %20, align 8, !tbaa !1145
  %.not.i150 = icmp eq ptr %i.kj, null
  br i1 %.not.i150, label %_ZN8facebook5velox6StatusD2Ev.exit151, label %bb.cm, !prof !596

bb.cm:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit147
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %20)
  br label %_ZN8facebook5velox6StatusD2Ev.exit151

_ZN8facebook5velox6StatusD2Ev.exit151:            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit147, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #31
  br label %.body

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EENS1_16FlatVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSP_.exit: ; preds = %bb.ci, %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit143, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EENS1_16FlatVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSP_bSQ_.exit.i
  %i.kk = load ptr, ptr %20, align 8, !tbaa !1145
  %.not.i152 = icmp eq ptr %i.kk, null
  br i1 %.not.i152, label %_ZN8facebook5velox6StatusD2Ev.exit153, label %bb.cn, !prof !596

bb.cn:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EENS1_16FlatVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSP_.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %20)
  br label %_ZN8facebook5velox6StatusD2Ev.exit153

_ZN8facebook5velox6StatusD2Ev.exit153:            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_20ConstantVectorReaderISB_EENS1_16FlatVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSP_.exit, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESD_EEEJSD_SD_EEEE7iterateIJNS1_20ConstantVectorReaderISD_EENS1_16FlatVectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit

bb.co:                                            ; preds = %.noexc21, %.noexc19
  %i.kl = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body

.body:                                            ; preds = %bb.co, %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit131, %bb.bv, %_ZN8facebook5velox6StatusD2Ev.exit151
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i17, %_ZN8facebook5velox6StatusD2Ev.exit151 ], [ %i.kl, %bb.co ], [ %eh.lpad-body126, %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit131 ], [ %i.ij, %bb.bv ] ; 3 uses
  %i.km = extractvalue { ptr, i32 } %eh.lpad-body, 0 ; 2 uses
  %i.kn = extractvalue { ptr, i32 } %eh.lpad-body, 1 ; 2 uses
  %i.ko = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #31
  %i.kp = icmp eq i32 %i.kn, %i.ko
  br i1 %i.kp, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %.body
  %i.kq = call ptr @__cxa_begin_catch(ptr %i.km) #31
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !1579 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 144
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !7  ; 4 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ks, i64 152
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !16
  %i.kx = icmp eq i64 %i.kw, 4
  br i1 %i.kx, label %.lr.ph.i.i.i.preheader.i154.preheader, label %.loopexit174

.lr.ph.i.i.i.preheader.i154.preheader:            ; preds = %bb.cp
  %i.ky = load i8, ptr %i.ku, align 1, !tbaa !26
  %or.cond.not.i.i.i156 = icmp eq i8 %i.ky, 85
  br i1 %or.cond.not.i.i.i156, label %tailrecurse.i.i.i.i157, label %.loopexit174

tailrecurse.i.i.i.i157:                           ; preds = %.lr.ph.i.i.i.preheader.i154.preheader
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ku, i64 1
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !26
  %or.cond.not.i.i.i156.1 = icmp eq i8 %i.la, 83
  br i1 %or.cond.not.i.i.i156.1, label %tailrecurse.i.i.i.i157.1, label %.loopexit174

tailrecurse.i.i.i.i157.1:                         ; preds = %tailrecurse.i.i.i.i157
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ku, i64 2
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !26
  %or.cond.not.i.i.i156.2 = icmp eq i8 %i.lc, 69
  br i1 %or.cond.not.i.i.i156.2, label %tailrecurse.i.i.i.i157.2, label %.loopexit174

tailrecurse.i.i.i.i157.2:                         ; preds = %tailrecurse.i.i.i.i157.1
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ku, i64 3
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !26
  %or.cond.not.i.i.i156.3 = icmp eq i8 %i.le, 82
  br i1 %or.cond.not.i.i.i156.3, label %tailrecurse.i.i.i.i157.3, label %.loopexit174

tailrecurse.i.i.i.i157.3:                         ; preds = %tailrecurse.i.i.i.i157.2
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #31
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %23) #31
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.ge, i32 noundef %i.gd, ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.cx unwind label %bb.cz

.loopexit174:                                     ; preds = %bb.cp, %.lr.ph.i.i.i.preheader.i154.preheader, %tailrecurse.i.i.i.i157, %tailrecurse.i.i.i.i157.1, %tailrecurse.i.i.i.i157.2
  invoke void @__cxa_rethrow() #36
          to label %bb.dd unwind label %bb.cw

bb.cq:                                            ; preds = %.body
  %i.lf = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #31
  %i.lg = icmp eq i32 %i.kn, %i.lf
  br i1 %i.lg, label %bb.cr, label %common.resume

bb.cr:                                            ; preds = %bb.cq
  %i.lh = call ptr @__cxa_begin_catch(ptr %i.km) #31 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #31
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %22) #31
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.ge, i32 noundef %i.gd, ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.cs unwind label %bb.cu

bb.cs:                                            ; preds = %bb.cr
  %i.li = load ptr, ptr %22, align 8, !tbaa !772
  %.not.i159 = icmp eq ptr %i.li, null
  br i1 %.not.i159, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit160, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %22) #31
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit160

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit160: ; preds = %bb.cs, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #31
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESD_EEEJSD_SD_EEEE7iterateIJNS1_20ConstantVectorReaderISD_EENS1_16FlatVectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit

bb.cu:                                            ; preds = %bb.cr
  %i.lj = landingpad { ptr, i32 }
          cleanup
  %i.lk = load ptr, ptr %22, align 8, !tbaa !772
  %.not.i161 = icmp eq ptr %i.lk, null
  br i1 %.not.i161, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit162, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %22) #31
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit162

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit162: ; preds = %bb.cu, %bb.cv
end_hunk_7
begin_hunk_8_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS3_10VectorExecEEESB_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESF_EEEJSF_SF_EEEE7iterateIJNS3_16FlatVectorReaderISF_EENS3_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISU_EEvRKS1_ST_EUlST_E_EEvSX_ST_T0_EUlST_E_EEvST_:bb.a
  %.not.i.i.i.i.i24 = icmp eq i8 %i.cs, 0
  br i1 %.not.i.i.i.i.i24, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ct = add nsw i32 %i.ck, -1
  store i32 %i.ct, ptr %i.ch, align 8, !tbaa !3, !noalias !40730
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i25

bb.w:                                             ; preds = %bb.u
  %i.cu = atomicrmw volatile add ptr %i.ch, i32 -1 acq_rel, align 4, !noalias !40730
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i25

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i25: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i26 = phi i32 [ %i.ck, %bb.v ], [ %i.cu, %bb.w ]
  %i.cv = icmp eq i32 %.0.i.i.i.i.i.i26, 1
  br i1 %i.cv, label %bb.x, label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit, !prof !38

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i25
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cg) #31, !noalias !40730
  br label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit

bb.y:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEEaSEOS4_.exit
  %i.cw = load ptr, ptr %2, align 16, !tbaa !1145, !noalias !40730
  %.not.i.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i, label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit, label %bb.z, !prof !596

bb.z:                                             ; preds = %bb.y
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %2), !noalias !40730
  br label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit

_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEEaSEOS4_.exit, %bb.r, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i25, %bb.x, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !40730
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !40730
  %.pre = load i32, ptr %8, align 8, !tbaa !39249
  %.pre76 = load ptr, ptr %i.aj, align 8
  br label %.noexc7

bb.aa:                                            ; preds = %.noexc21, %bb.k, %bb.j
  %i.cx = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !40730
  call void @_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #31, !noalias !40730
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !40730
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !40730
  br label %.body

.noexc7:                                          ; preds = %bb.i, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit
  %i.cy = phi ptr [ %.sroa.2.0.copyload.i14, %bb.i ], [ %.pre76, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit ]
  %i.cz = phi i32 [ %i.bh, %bb.i ], [ %.pre, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31, !noalias !40730
  %i.da = load ptr, ptr %i.bd, align 8, !tbaa !38376, !noalias !40730
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31, !noalias !40730
  %i.db = icmp ult i32 %i.cz, 13
  %i.dc = select i1 %i.db, ptr %i.ap, ptr %i.cy
  %i.dd = zext i32 %i.cz to i64
  store i64 %i.dd, ptr %6, align 8, !noalias !40730
  store ptr %i.dc, ptr %i.aq, align 8, !noalias !40730
  invoke void @_ZNK8facebook5velox9functions17DateTimeFormatter5parseERKSt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.folly::Expected.14860") align 8 %5, ptr noundef nonnull align 8 dereferenceable(44) %i.da, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %.noexc8 unwind label %bb.at

.noexc8:                                          ; preds = %.noexc7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31, !noalias !40730
  %i.de = load i8, ptr %i.ar, align 8, !tbaa !40139, !noalias !40730
  switch i8 %i.de, label %.invoke [
    i8 2, label %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit
    i8 1, label %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit
  ], !prof !4660

_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit: ; preds = %.noexc8
  %i.df = load ptr, ptr %5, align 16, !tbaa !1145 ; 4 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %.noexc.thread, label %bb.ab

bb.ab:                                            ; preds = %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit
  %i.dh = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34
          to label %.noexc31 unwind label %bb.ah  ; 6 uses

.noexc31:                                         ; preds = %bb.ab
  %i.di = load i8, ptr %i.df, align 8, !tbaa !1148
  store i8 %i.di, ptr %i.dh, align 8, !tbaa !1148
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 8 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 24 ; 3 uses
  store ptr %i.dl, ptr %i.dj, align 8, !tbaa !37
  %i.dm = load ptr, ptr %i.dk, align 8, !tbaa !7  ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !16 ; 8 uses
  %i.dp = icmp ugt i64 %i.do, 15
  br i1 %i.dp, label %bb.ac, label %._crit_edge.i.i.i.i

bb.ac:                                            ; preds = %.noexc31
  %i.dq = icmp slt i64 %i.do, 0
  br i1 %i.dq, label %.noexc.i.i.i, label %bb.ad

.noexc.i.i.i:                                     ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #36
          to label %.noexc.i30 unwind label %bb.ag

.noexc.i30:                                       ; preds = %.noexc.i.i.i
  unreachable

bb.ad:                                            ; preds = %bb.ac
  %i.dr = add nuw i64 %i.do, 1                    ; 2 uses
  %i.ds = icmp slt i64 %i.dr, 0
  br i1 %i.ds, label %.noexc6.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !38

.noexc6.i.i.i:                                    ; preds = %bb.ad
  invoke void @_ZSt17__throw_bad_allocv() #36
          to label %.noexc6.i unwind label %bb.ag

.noexc6.i:                                        ; preds = %.noexc6.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.ad
  %i.dt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dr) #34
          to label %.noexc7.i unwind label %bb.ag ; 2 uses

.noexc7.i:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.dt, ptr %i.dj, align 8, !tbaa !7
  store i64 %i.do, ptr %i.dl, align 8, !tbaa !26
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc7.i, %.noexc31
  %i.du = phi ptr [ %i.dt, %.noexc7.i ], [ %i.dl, %.noexc31 ] ; 3 uses
  switch i64 %i.do, label %bb.af [
    i64 1, label %bb.ae
    i64 0, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISB_EEJNS1_20ConstantVectorReaderISB_EEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit
  ]

bb.ae:                                            ; preds = %._crit_edge.i.i.i.i
  %i.dv = load i8, ptr %i.dm, align 1, !tbaa !26
  store i8 %i.dv, ptr %i.du, align 1, !tbaa !26
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISB_EEJNS1_20ConstantVectorReaderISB_EEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit

bb.af:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.du, ptr align 1 %i.dm, i64 %i.do, i1 false)
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISB_EEJNS1_20ConstantVectorReaderISB_EEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %.noexc6.i.i.i, %.noexc.i.i.i
  %i.dw = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef 40) #35
  br label %.body32

bb.ah:                                            ; preds = %.invoke, %bb.ak, %bb.ab, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit
  %i.dx = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body32

.body32:                                          ; preds = %bb.ag, %bb.ah
  %eh.lpad-body33 = phi { ptr, i32 } [ %i.dx, %bb.ah ], [ %i.dw, %bb.ag ]
  %i.dy = load i8, ptr %i.ar, align 8, !tbaa !40139
  %cond.i.i = icmp ne i8 %i.dy, 2
  %i.dz = load ptr, ptr %5, align 16
  %.not.i.i.i34 = icmp eq ptr %i.dz, null
  %or.cond.i.i = select i1 %cond.i.i, i1 true, i1 %.not.i.i.i34, !prof !1429
  br i1 %or.cond.i.i, label %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit, label %bb.ai, !prof !1429

bb.ai:                                            ; preds = %.body32
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %5)
  br label %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit

_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit: ; preds = %.body32, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !40730
  br label %.body

_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit: ; preds = %.noexc8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !40546, !noalias !40730
  invoke void @_ZN8facebook5velox9Timestamp5toGMTERKNS0_2tz8TimeZoneE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(50) %i.eb)
          to label %bb.aj unwind label %bb.ah, !noalias !40730

bb.aj:                                            ; preds = %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit
  %i.ec = load i8, ptr %i.ar, align 8, !tbaa !40139, !noalias !40730
  switch i8 %i.ec, label %.invoke [
    i8 1, label %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit39
    i8 2, label %bb.ak
  ], !prof !4156

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIN8facebook5velox6StatusEEEJRKS5_EEEvDpT0_(ptr noundef nonnull align 8 dereferenceable(32) %5) #18
          to label %.noexc37 unwind label %bb.ah

.noexc37:                                         ; preds = %bb.ak
  unreachable

.invoke:                                          ; preds = %bb.aj, %.noexc8
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #18
          to label %.cont unwind label %bb.ah

.cont:                                            ; preds = %.invoke
  unreachable

_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit39: ; preds = %bb.aj
  %i.ed = load <2 x i64>, ptr %5, align 16
  br label %.noexc.thread

.noexc.thread:                                    ; preds = %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit39
  %i.ee = phi <2 x i64> [ zeroinitializer, %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit ], [ %i.ed, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit39 ]
  store ptr null, ptr %9, align 8, !tbaa !1145
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !40730
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31, !noalias !40724
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31, !noalias !40721
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EENS1_20ConstantVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSP_bSQ_.exit.i

_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISB_EEJNS1_20ConstantVectorReaderISB_EEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.ae, %bb.af
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store i64 %i.do, ptr %i.ef, align 8, !tbaa !16
  %i.eg = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.do
  store i8 0, ptr %i.eg, align 1, !tbaa !26
  store ptr %i.dh, ptr %9, align 8, !tbaa !1145
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %5)
  %.pre77 = load ptr, ptr %9, align 8, !tbaa !1145
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !40730
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31, !noalias !40724
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31, !noalias !40721
  %i.eh = icmp eq ptr %.pre77, null
  br i1 %i.eh, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EENS1_20ConstantVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSP_bSQ_.exit.i, label %bb.al, !prof !40593

bb.al:                                            ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISB_EEJNS1_20ConstantVectorReaderISB_EEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !40733, !nonnull !476, !align !580
  invoke void @_ZN8facebook5velox6StatusC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 48
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !40563, !nonnull !476, !align !580
  %i.em = trunc nsw i64 %indvars.iv to i32
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %i.el, i32 noundef %i.em, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit unwind label %bb.ap

_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit: ; preds = %bb.am
  %i.en = load ptr, ptr %10, align 8, !tbaa !1145
  %.not.i = icmp eq ptr %i.en, null
  br i1 %.not.i, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EENS1_20ConstantVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSP_.exit, label %bb.an, !prof !596

bb.an:                                            ; preds = %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EENS1_20ConstantVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSP_.exit

bb.ao:                                            ; preds = %bb.al
  %i.eo = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook5velox6StatusD2Ev.exit46

bb.ap:                                            ; preds = %bb.am
  %i.ep = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.eq = load ptr, ptr %10, align 8, !tbaa !1145
  %.not.i45 = icmp eq ptr %i.eq, null
  br i1 %.not.i45, label %_ZN8facebook5velox6StatusD2Ev.exit46, label %bb.aq, !prof !596

bb.aq:                                            ; preds = %bb.ap
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %_ZN8facebook5velox6StatusD2Ev.exit46

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EENS1_20ConstantVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSP_bSQ_.exit.i: ; preds = %.noexc.thread, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISB_EEJNS1_20ConstantVectorReaderISB_EEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit
  %i.er = phi <2 x i64> [ %i.ee, %.noexc.thread ], [ zeroinitializer, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISB_EEJNS1_20ConstantVectorReaderISB_EEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit ]
  %i.es = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !40734, !nonnull !476, !align !580
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !40735, !nonnull !476, !align !580
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !1686
  %i.ex = getelementptr inbounds [16 x i8], ptr %i.ew, i64 %indvars.iv
  store <2 x i64> %i.er, ptr %i.ex, align 8, !tbaa !536
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EENS1_20ConstantVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSP_.exit

_ZN8facebook5velox6StatusD2Ev.exit46:             ; preds = %bb.aq, %bb.ap, %bb.ao
  %.pn.i4 = phi { ptr, i32 } [ %i.eo, %bb.ao ], [ %i.ep, %bb.ap ], [ %i.ep, %bb.aq ]
  %i.ey = load ptr, ptr %9, align 8, !tbaa !1145
  %.not.i48 = icmp eq ptr %i.ey, null
  br i1 %.not.i48, label %_ZN8facebook5velox6StatusD2Ev.exit49, label %bb.ar, !prof !596

bb.ar:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit46
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %_ZN8facebook5velox6StatusD2Ev.exit49

_ZN8facebook5velox6StatusD2Ev.exit49:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit46, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %.body

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EENS1_20ConstantVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSP_.exit: ; preds = %bb.an, %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EENS1_20ConstantVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSP_bSQ_.exit.i
  %i.ez = load ptr, ptr %9, align 8, !tbaa !1145
  %.not.i50 = icmp eq ptr %i.ez, null
  br i1 %.not.i50, label %_ZN8facebook5velox6StatusD2Ev.exit51, label %bb.as, !prof !596

bb.as:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EENS1_20ConstantVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSP_.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %_ZN8facebook5velox6StatusD2Ev.exit51

_ZN8facebook5velox6StatusD2Ev.exit51:             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EENS1_20ConstantVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSP_.exit, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESD_EEEJSD_SD_EEEE7iterateIJNS1_16FlatVectorReaderISD_EENS1_20ConstantVectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit

bb.at:                                            ; preds = %.noexc7, %.noexc5
  %i.fa = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body

.body:                                            ; preds = %bb.at, %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit, %bb.aa, %_ZN8facebook5velox6StatusD2Ev.exit49
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i4, %_ZN8facebook5velox6StatusD2Ev.exit49 ], [ %i.fa, %bb.at ], [ %eh.lpad-body33, %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit ], [ %i.cx, %bb.aa ] ; 3 uses
  %i.fb = extractvalue { ptr, i32 } %eh.lpad-body, 0 ; 2 uses
  %i.fc = extractvalue { ptr, i32 } %eh.lpad-body, 1 ; 2 uses
  %i.fd = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #31
  %i.fe = icmp eq i32 %i.fc, %i.fd
  br i1 %i.fe, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.body
  %i.ff = call ptr @__cxa_begin_catch(ptr %i.fb) #31
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !1579 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 144
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !7  ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 152
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !16
  %i.fm = icmp eq i64 %i.fl, 4
  br i1 %i.fm, label %.lr.ph.i.i.i.preheader.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader.i.preheader:               ; preds = %bb.au
  %i.fn = load i8, ptr %i.fj, align 1, !tbaa !26
  %or.cond.not.i.i.i = icmp eq i8 %i.fn, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.preheader.i.preheader
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 1
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !26
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.fp, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fj, i64 2
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !26
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.fr, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fj, i64 3
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !26
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.ft, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %12) #31
  %i.fu = trunc nsw i64 %indvars.iv to i32
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.at, i32 noundef %i.fu, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.bc unwind label %bb.be

.loopexit:                                        ; preds = %bb.au, %.lr.ph.i.i.i.preheader.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #36
          to label %bb.bi unwind label %bb.bb

bb.av:                                            ; preds = %.body
  %i.fv = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #31
  %i.fw = icmp eq i32 %i.fc, %i.fv
  br i1 %i.fw, label %bb.aw, label %.loopexit60

bb.aw:                                            ; preds = %bb.av
  %i.fx = call ptr @__cxa_begin_catch(ptr %i.fb) #31 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %11) #31
  %i.fy = trunc nsw i64 %indvars.iv to i32
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.at, i32 noundef %i.fy, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.ax unwind label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.fz = load ptr, ptr %11, align 8, !tbaa !772
  %.not.i52 = icmp eq ptr %i.fz, null
  br i1 %.not.i52, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #31
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESD_EEEJSD_SD_EEEE7iterateIJNS1_16FlatVectorReaderISD_EENS1_20ConstantVectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit

bb.az:                                            ; preds = %bb.aw
  %i.ga = landingpad { ptr, i32 }
          cleanup
  %i.gb = load ptr, ptr %11, align 8, !tbaa !772
  %.not.i53 = icmp eq ptr %i.gb, null
  br i1 %.not.i53, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit54, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #31
end_hunk_8
begin_hunk_9_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS3_10VectorExecEEESB_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESF_EEEJSF_SF_EEEE7iterateIJNS3_16FlatVectorReaderISF_EENS3_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_EUlST_E_EEvPKmiibST_ENKUlimE_clEim:bb.a
  %.not.i.i.i.i.i30 = icmp eq i8 %i.ca, 0
  br i1 %.not.i.i.i.i.i30, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cb = add nsw i32 %i.bs, -1
  store i32 %i.cb, ptr %i.bp, align 8, !tbaa !3, !noalias !40751
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i31

bb.p:                                             ; preds = %bb.n
  %i.cc = atomicrmw volatile add ptr %i.bp, i32 -1 acq_rel, align 4, !noalias !40751
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i31

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i31: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i32 = phi i32 [ %i.bs, %bb.o ], [ %i.cc, %bb.p ]
  %i.cd = icmp eq i32 %.0.i.i.i.i.i.i32, 1
  br i1 %i.cd, label %bb.q, label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit, !prof !38

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i31
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #31, !noalias !40751
  br label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit

bb.r:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEEaSEOS4_.exit
  %i.ce = load ptr, ptr %3, align 16, !tbaa !1145, !noalias !40751
  %.not.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i, label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit, label %bb.s, !prof !596

bb.s:                                             ; preds = %bb.r
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %3), !noalias !40751
  br label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit

_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEEaSEOS4_.exit, %bb.k, %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i31, %bb.q, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !40751
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !40751
  %.pre = load i32, ptr %9, align 8, !tbaa !39249
  %.pre78 = load ptr, ptr %i.o, align 8
  br label %.noexc14

bb.t:                                             ; preds = %.noexc27, %bb.d, %bb.c
  %i.cf = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !40751
  call void @_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #31, !noalias !40751
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !40751
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !40751
  br label %.body

.noexc14:                                         ; preds = %bb.b, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit
  %i.cg = phi ptr [ %.sroa.2.0.copyload.i20, %bb.b ], [ %.pre78, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit ]
  %i.ch = phi i32 [ %i.ap, %bb.b ], [ %.pre, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31, !noalias !40751
  %i.ci = load ptr, ptr %i.al, align 8, !tbaa !38376, !noalias !40751
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31, !noalias !40751
  %i.cj = icmp ult i32 %i.ch, 13
  %i.ck = select i1 %i.cj, ptr %i.u, ptr %i.cg
  %i.cl = zext i32 %i.ch to i64
  store i64 %i.cl, ptr %7, align 8, !noalias !40751
  store ptr %i.ck, ptr %i.v, align 8, !noalias !40751
  invoke void @_ZNK8facebook5velox9functions17DateTimeFormatter5parseERKSt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.folly::Expected.14860") align 8 %6, ptr noundef nonnull align 8 dereferenceable(44) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %.noexc15 unwind label %bb.am

.noexc15:                                         ; preds = %.noexc14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31, !noalias !40751
  %i.cm = load i8, ptr %i.w, align 8, !tbaa !40139, !noalias !40751
  switch i8 %i.cm, label %.invoke [
    i8 2, label %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit
    i8 1, label %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit
  ], !prof !4660

_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit: ; preds = %.noexc15
  %i.cn = load ptr, ptr %6, align 16, !tbaa !1145 ; 4 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %.noexc.thread, label %bb.u

bb.u:                                             ; preds = %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit
  %i.cp = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34
          to label %.noexc37 unwind label %bb.aa  ; 6 uses

.noexc37:                                         ; preds = %bb.u
  %i.cq = load i8, ptr %i.cn, align 8, !tbaa !1148
  store i8 %i.cq, ptr %i.cp, align 8, !tbaa !1148
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 24 ; 3 uses
  store ptr %i.ct, ptr %i.cr, align 8, !tbaa !37
  %i.cu = load ptr, ptr %i.cs, align 8, !tbaa !7  ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !16 ; 8 uses
  %i.cx = icmp ugt i64 %i.cw, 15
  br i1 %i.cx, label %bb.v, label %._crit_edge.i.i.i.i

bb.v:                                             ; preds = %.noexc37
  %i.cy = icmp slt i64 %i.cw, 0
  br i1 %i.cy, label %.noexc.i.i.i, label %bb.w

.noexc.i.i.i:                                     ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #36
          to label %.noexc.i36 unwind label %bb.z

.noexc.i36:                                       ; preds = %.noexc.i.i.i
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.cz = add nuw i64 %i.cw, 1                    ; 2 uses
  %i.da = icmp slt i64 %i.cz, 0
  br i1 %i.da, label %.noexc6.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !38

.noexc6.i.i.i:                                    ; preds = %bb.w
  invoke void @_ZSt17__throw_bad_allocv() #36
          to label %.noexc6.i unwind label %bb.z

.noexc6.i:                                        ; preds = %.noexc6.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.w
  %i.db = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cz) #34
          to label %.noexc7.i unwind label %bb.z  ; 2 uses

.noexc7.i:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.db, ptr %i.cr, align 8, !tbaa !7
  store i64 %i.cw, ptr %i.ct, align 8, !tbaa !26
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc7.i, %.noexc37
  %i.dc = phi ptr [ %i.db, %.noexc7.i ], [ %i.ct, %.noexc37 ] ; 3 uses
  switch i64 %i.cw, label %bb.y [
    i64 1, label %bb.x
    i64 0, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISB_EEJNS1_20ConstantVectorReaderISB_EEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit
  ]

bb.x:                                             ; preds = %._crit_edge.i.i.i.i
  %i.dd = load i8, ptr %i.cu, align 1, !tbaa !26
  store i8 %i.dd, ptr %i.dc, align 1, !tbaa !26
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISB_EEJNS1_20ConstantVectorReaderISB_EEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit

bb.y:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dc, ptr align 1 %i.cu, i64 %i.cw, i1 false)
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISB_EEJNS1_20ConstantVectorReaderISB_EEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %.noexc6.i.i.i, %.noexc.i.i.i
  %i.de = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef 40) #35
  br label %.body38

bb.aa:                                            ; preds = %.invoke, %bb.ad, %bb.u, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit
  %i.df = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body38

.body38:                                          ; preds = %bb.z, %bb.aa
  %eh.lpad-body39 = phi { ptr, i32 } [ %i.df, %bb.aa ], [ %i.de, %bb.z ]
  %i.dg = load i8, ptr %i.w, align 8, !tbaa !40139
  %cond.i.i = icmp ne i8 %i.dg, 2
  %i.dh = load ptr, ptr %6, align 16
  %.not.i.i.i40 = icmp eq ptr %i.dh, null
  %or.cond.i.i = select i1 %cond.i.i, i1 true, i1 %.not.i.i.i40, !prof !1429
  br i1 %or.cond.i.i, label %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit, label %bb.ab, !prof !1429

bb.ab:                                            ; preds = %.body38
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %6)
  br label %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit

_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit: ; preds = %.body38, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31, !noalias !40751
  br label %.body

_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit: ; preds = %.noexc15
  %i.di = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !40546, !noalias !40751
  invoke void @_ZN8facebook5velox9Timestamp5toGMTERKNS0_2tz8TimeZoneE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(50) %i.dj)
          to label %bb.ac unwind label %bb.aa, !noalias !40751

bb.ac:                                            ; preds = %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit
  %i.dk = load i8, ptr %i.w, align 8, !tbaa !40139, !noalias !40751
  switch i8 %i.dk, label %.invoke [
    i8 1, label %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit45
    i8 2, label %bb.ad
  ], !prof !4156

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIN8facebook5velox6StatusEEEJRKS5_EEEvDpT0_(ptr noundef nonnull align 8 dereferenceable(32) %6) #18
          to label %.noexc43 unwind label %bb.aa

.noexc43:                                         ; preds = %bb.ad
  unreachable

.invoke:                                          ; preds = %bb.ac, %.noexc15
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #18
          to label %.cont unwind label %bb.aa

.cont:                                            ; preds = %.invoke
  unreachable

_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit45: ; preds = %bb.ac
  %i.dl = load <2 x i64>, ptr %6, align 16
  br label %.noexc.thread

.noexc.thread:                                    ; preds = %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit45
  %i.dm = phi <2 x i64> [ zeroinitializer, %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit ], [ %i.dl, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit45 ]
  store ptr null, ptr %10, align 8, !tbaa !1145
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31, !noalias !40751
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31, !noalias !40745
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31, !noalias !40742
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EENS1_20ConstantVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSP_bSQ_.exit.i

_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISB_EEJNS1_20ConstantVectorReaderISB_EEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.x, %bb.y
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store i64 %i.cw, ptr %i.dn, align 8, !tbaa !16
  %i.do = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.cw
  store i8 0, ptr %i.do, align 1, !tbaa !26
  store ptr %i.cp, ptr %10, align 8, !tbaa !1145
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %6)
  %.pre79 = load ptr, ptr %10, align 8, !tbaa !1145
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31, !noalias !40751
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31, !noalias !40745
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31, !noalias !40742
  %i.dp = icmp eq ptr %.pre79, null
  br i1 %i.dp, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EENS1_20ConstantVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSP_bSQ_.exit.i, label %bb.ae, !prof !40593

bb.ae:                                            ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISB_EEJNS1_20ConstantVectorReaderISB_EEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !40733, !nonnull !476, !align !580
  invoke void @_ZN8facebook5velox6StatusC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 48
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !40563, !nonnull !476, !align !580
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %i.dt, i32 noundef %i.z, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit unwind label %bb.ai

_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit: ; preds = %bb.af
  %i.du = load ptr, ptr %11, align 8, !tbaa !1145
  %.not.i = icmp eq ptr %i.du, null
  br i1 %.not.i, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EENS1_20ConstantVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSP_.exit, label %bb.ag, !prof !596

bb.ag:                                            ; preds = %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %11)
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EENS1_20ConstantVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSP_.exit

bb.ah:                                            ; preds = %bb.ae
  %i.dv = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook5velox6StatusD2Ev.exit52

bb.ai:                                            ; preds = %bb.af
  %i.dw = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.dx = load ptr, ptr %11, align 8, !tbaa !1145
  %.not.i51 = icmp eq ptr %i.dx, null
  br i1 %.not.i51, label %_ZN8facebook5velox6StatusD2Ev.exit52, label %bb.aj, !prof !596

bb.aj:                                            ; preds = %bb.ai
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %11)
  br label %_ZN8facebook5velox6StatusD2Ev.exit52

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EENS1_20ConstantVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSP_bSQ_.exit.i: ; preds = %.noexc.thread, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISB_EEJNS1_20ConstantVectorReaderISB_EEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit
  %i.dy = phi <2 x i64> [ %i.dm, %.noexc.thread ], [ zeroinitializer, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISB_EEJNS1_20ConstantVectorReaderISB_EEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit ]
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !40734, !nonnull !476, !align !580
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !40735, !nonnull !476, !align !580
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !1686
  %i.ee = getelementptr inbounds [16 x i8], ptr %i.ed, i64 %i.ai
  store <2 x i64> %i.dy, ptr %i.ee, align 8, !tbaa !536
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EENS1_20ConstantVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSP_.exit

_ZN8facebook5velox6StatusD2Ev.exit52:             ; preds = %bb.aj, %bb.ai, %bb.ah
  %.pn.i11 = phi { ptr, i32 } [ %i.dv, %bb.ah ], [ %i.dw, %bb.ai ], [ %i.dw, %bb.aj ]
  %i.ef = load ptr, ptr %10, align 8, !tbaa !1145
  %.not.i54 = icmp eq ptr %i.ef, null
  br i1 %.not.i54, label %_ZN8facebook5velox6StatusD2Ev.exit55, label %bb.ak, !prof !596

bb.ak:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit52
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %_ZN8facebook5velox6StatusD2Ev.exit55

_ZN8facebook5velox6StatusD2Ev.exit55:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit52, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %.body

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EENS1_20ConstantVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSP_.exit: ; preds = %bb.ag, %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EENS1_20ConstantVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSP_bSQ_.exit.i
  %i.eg = load ptr, ptr %10, align 8, !tbaa !1145
  %.not.i56 = icmp eq ptr %i.eg, null
  br i1 %.not.i56, label %_ZN8facebook5velox6StatusD2Ev.exit57, label %bb.al, !prof !596

bb.al:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EENS1_20ConstantVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSP_.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %_ZN8facebook5velox6StatusD2Ev.exit57

_ZN8facebook5velox6StatusD2Ev.exit57:             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EENS1_20ConstantVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSP_.exit, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESD_EEEJSD_SD_EEEE7iterateIJNS1_16FlatVectorReaderISD_EENS1_20ConstantVectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit

bb.am:                                            ; preds = %.noexc14, %.noexc12
  %i.eh = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body

.body:                                            ; preds = %bb.am, %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit, %bb.t, %_ZN8facebook5velox6StatusD2Ev.exit55
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i11, %_ZN8facebook5velox6StatusD2Ev.exit55 ], [ %i.eh, %bb.am ], [ %eh.lpad-body39, %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit ], [ %i.cf, %bb.t ] ; 3 uses
  %i.ei = extractvalue { ptr, i32 } %eh.lpad-body, 0 ; 2 uses
  %i.ej = extractvalue { ptr, i32 } %eh.lpad-body, 1 ; 2 uses
  %i.ek = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #31
  %i.el = icmp eq i32 %i.ej, %i.ek
  br i1 %i.el, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.body
  %i.em = call ptr @__cxa_begin_catch(ptr %i.ei) #31
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !1579 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 144
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !7  ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 152
  %i.es = load i64, ptr %i.er, align 8, !tbaa !16
  %i.et = icmp eq i64 %i.es, 4
  br i1 %i.et, label %.lr.ph.i.i.i.preheader.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader.i.preheader:               ; preds = %bb.an
  %i.eu = load i8, ptr %i.eq, align 1, !tbaa !26
  %or.cond.not.i.i.i = icmp eq i8 %i.eu, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.preheader.i.preheader
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eq, i64 1
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !26
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.ew, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eq, i64 2
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !26
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.ey, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eq, i64 3
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !26
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.fa, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %13) #31
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.aa, i32 noundef %i.z, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.av unwind label %bb.ax

.loopexit:                                        ; preds = %bb.an, %.lr.ph.i.i.i.preheader.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #36
          to label %bb.bb unwind label %bb.au

bb.ao:                                            ; preds = %.body
  %i.fb = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #31
  %i.fc = icmp eq i32 %i.ej, %i.fb
  br i1 %i.fc, label %bb.ap, label %.loopexit66

bb.ap:                                            ; preds = %bb.ao
  %i.fd = call ptr @__cxa_begin_catch(ptr %i.ei) #31 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %12) #31
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.aa, i32 noundef %i.z, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.aq unwind label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.fe = load ptr, ptr %12, align 8, !tbaa !772
  %.not.i58 = icmp eq ptr %i.fe, null
  br i1 %.not.i58, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #31
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESD_EEEJSD_SD_EEEE7iterateIJNS1_16FlatVectorReaderISD_EENS1_20ConstantVectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit

bb.as:                                            ; preds = %bb.ap
  %i.ff = landingpad { ptr, i32 }
          cleanup
  %i.fg = load ptr, ptr %12, align 8, !tbaa !772
  %.not.i59 = icmp eq ptr %i.fg, null
  br i1 %.not.i59, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit60, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #31
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit60

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit60: ; preds = %bb.as, %bb.at
end_hunk_9
begin_hunk_10_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS3_10VectorExecEEESB_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESF_EEEJSF_SF_EEEE7iterateIJNS3_16FlatVectorReaderISF_EENS3_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi:bb.a
  %.not.i.i.i.i.i51 = icmp eq i8 %i.cm, 0
  br i1 %.not.i.i.i.i.i51, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cn = add nsw i32 %i.ce, -1
  store i32 %i.cn, ptr %i.cb, align 8, !tbaa !3, !noalias !40767
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i52

bb.q:                                             ; preds = %bb.o
  %i.co = atomicrmw volatile add ptr %i.cb, i32 -1 acq_rel, align 4, !noalias !40767
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i52

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i52: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i53 = phi i32 [ %i.ce, %bb.p ], [ %i.co, %bb.q ]
  %i.cp = icmp eq i32 %.0.i.i.i.i.i.i53, 1
  br i1 %i.cp, label %bb.r, label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit, !prof !38

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i52
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #31, !noalias !40767
  br label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit

bb.s:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEEaSEOS4_.exit
  %i.cq = load ptr, ptr %2, align 16, !tbaa !1145, !noalias !40767
  %.not.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i, label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit, label %bb.t, !prof !596

bb.t:                                             ; preds = %bb.s
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %2), !noalias !40767
  br label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit

_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEEaSEOS4_.exit, %bb.l, %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i52, %bb.r, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !40767
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !40767
  %.pre = load i32, ptr %8, align 8, !tbaa !39249
  %.pre205 = load ptr, ptr %i.ac, align 8
  br label %.noexc35

bb.u:                                             ; preds = %.noexc48, %bb.e, %bb.d
  %i.cr = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !40767
  call void @_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #31, !noalias !40767
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !40767
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !40767
  br label %.body37

.noexc35:                                         ; preds = %bb.c, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit
  %i.cs = phi ptr [ %.sroa.2.0.copyload.i41, %bb.c ], [ %.pre205, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit ]
  %i.ct = phi i32 [ %i.bb, %bb.c ], [ %.pre, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31, !noalias !40767
  %i.cu = load ptr, ptr %i.ax, align 8, !tbaa !38376, !noalias !40767
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31, !noalias !40767
  %i.cv = icmp ult i32 %i.ct, 13
  %i.cw = select i1 %i.cv, ptr %i.ai, ptr %i.cs
  %i.cx = zext i32 %i.ct to i64
  store i64 %i.cx, ptr %6, align 8, !noalias !40767
  store ptr %i.cw, ptr %i.aj, align 8, !noalias !40767
  invoke void @_ZNK8facebook5velox9functions17DateTimeFormatter5parseERKSt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.folly::Expected.14860") align 8 %5, ptr noundef nonnull align 8 dereferenceable(44) %i.cu, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %.noexc36 unwind label %bb.an

.noexc36:                                         ; preds = %.noexc35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31, !noalias !40767
  %i.cy = load i8, ptr %i.ak, align 8, !tbaa !40139, !noalias !40767
  switch i8 %i.cy, label %.invoke [
    i8 2, label %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit
    i8 1, label %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit
  ], !prof !4660

_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit: ; preds = %.noexc36
  %i.cz = load ptr, ptr %5, align 16, !tbaa !1145 ; 4 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit70.thread, label %bb.v

bb.v:                                             ; preds = %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit
  %i.db = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34
          to label %.noexc58 unwind label %bb.ab  ; 6 uses

.noexc58:                                         ; preds = %bb.v
  %i.dc = load i8, ptr %i.cz, align 8, !tbaa !1148
  store i8 %i.dc, ptr %i.db, align 8, !tbaa !1148
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 24 ; 3 uses
  store ptr %i.df, ptr %i.dd, align 8, !tbaa !37
  %i.dg = load ptr, ptr %i.de, align 8, !tbaa !7  ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !16 ; 8 uses
  %i.dj = icmp ugt i64 %i.di, 15
  br i1 %i.dj, label %bb.w, label %._crit_edge.i.i.i.i

bb.w:                                             ; preds = %.noexc58
  %i.dk = icmp slt i64 %i.di, 0
  br i1 %i.dk, label %.noexc.i.i.i, label %bb.x

.noexc.i.i.i:                                     ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #36
          to label %.noexc.i57 unwind label %bb.aa

.noexc.i57:                                       ; preds = %.noexc.i.i.i
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.dl = add nuw i64 %i.di, 1                    ; 2 uses
  %i.dm = icmp slt i64 %i.dl, 0
  br i1 %i.dm, label %.noexc6.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !38

.noexc6.i.i.i:                                    ; preds = %bb.x
  invoke void @_ZSt17__throw_bad_allocv() #36
          to label %.noexc6.i unwind label %bb.aa

.noexc6.i:                                        ; preds = %.noexc6.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.x
  %i.dn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dl) #34
          to label %.noexc7.i unwind label %bb.aa ; 2 uses

.noexc7.i:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.dn, ptr %i.dd, align 8, !tbaa !7
  store i64 %i.di, ptr %i.df, align 8, !tbaa !26
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc7.i, %.noexc58
  %i.do = phi ptr [ %i.dn, %.noexc7.i ], [ %i.df, %.noexc58 ] ; 3 uses
  switch i64 %i.di, label %bb.z [
    i64 1, label %bb.y
    i64 0, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISB_EEJNS1_20ConstantVectorReaderISB_EEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit.i
  ]

bb.y:                                             ; preds = %._crit_edge.i.i.i.i
  %i.dp = load i8, ptr %i.dg, align 1, !tbaa !26
  store i8 %i.dp, ptr %i.do, align 1, !tbaa !26
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISB_EEJNS1_20ConstantVectorReaderISB_EEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit.i

bb.z:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.do, ptr align 1 %i.dg, i64 %i.di, i1 false)
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISB_EEJNS1_20ConstantVectorReaderISB_EEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit.i

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %.noexc6.i.i.i, %.noexc.i.i.i
  %i.dq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @_ZdlPvm(ptr noundef nonnull %i.db, i64 noundef 40) #35
  br label %.body59

bb.ab:                                            ; preds = %.invoke, %bb.ae, %bb.v, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit
  %i.dr = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body59

.body59:                                          ; preds = %bb.aa, %bb.ab
  %eh.lpad-body60 = phi { ptr, i32 } [ %i.dr, %bb.ab ], [ %i.dq, %bb.aa ]
  %i.ds = load i8, ptr %i.ak, align 8, !tbaa !40139
  %cond.i.i = icmp ne i8 %i.ds, 2
  %i.dt = load ptr, ptr %5, align 16
  %.not.i.i.i61 = icmp eq ptr %i.dt, null
  %or.cond.i.i = select i1 %cond.i.i, i1 true, i1 %.not.i.i.i61, !prof !1429
  br i1 %or.cond.i.i, label %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit, label %bb.ac, !prof !1429

bb.ac:                                            ; preds = %.body59
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %5)
  br label %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit

_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit: ; preds = %.body59, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !40767
  br label %.body37

_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit: ; preds = %.noexc36
  %i.du = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !40546, !noalias !40767
  invoke void @_ZN8facebook5velox9Timestamp5toGMTERKNS0_2tz8TimeZoneE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(50) %i.dv)
          to label %bb.ad unwind label %bb.ab, !noalias !40767

bb.ad:                                            ; preds = %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit
  %i.dw = load i8, ptr %i.ak, align 8, !tbaa !40139, !noalias !40767
  switch i8 %i.dw, label %.invoke [
    i8 1, label %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit66
    i8 2, label %bb.ae
  ], !prof !4156

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIN8facebook5velox6StatusEEEJRKS5_EEEvDpT0_(ptr noundef nonnull align 8 dereferenceable(32) %5) #18
          to label %.noexc64 unwind label %bb.ab

.noexc64:                                         ; preds = %bb.ae
  unreachable

.invoke:                                          ; preds = %bb.ad, %.noexc36
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #18
          to label %.cont unwind label %bb.ab

.cont:                                            ; preds = %.invoke
  unreachable

_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit66: ; preds = %bb.ad
  %i.dx = load <2 x i64>, ptr %5, align 16
  br label %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit70.thread

_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit70.thread: ; preds = %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit66
  %i.dy = phi <2 x i64> [ zeroinitializer, %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit ], [ %i.dx, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit66 ]
  store ptr null, ptr %9, align 8, !tbaa !1145
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !40767
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31, !noalias !40761
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31, !noalias !40758
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EENS1_20ConstantVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clImS9_EEDaSP_bSQ_.exit.i

_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISB_EEJNS1_20ConstantVectorReaderISB_EEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit.i: ; preds = %._crit_edge.i.i.i.i, %bb.y, %bb.z
  %i.dz = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store i64 %i.di, ptr %i.dz, align 8, !tbaa !16
  %i.ea = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.di
  store i8 0, ptr %i.ea, align 1, !tbaa !26
  store ptr %i.db, ptr %9, align 8, !tbaa !1145
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %5)
  %.pre206 = load ptr, ptr %9, align 8, !tbaa !1145
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !40767
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31, !noalias !40761
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31, !noalias !40758
  %i.eb = icmp eq ptr %.pre206, null
  br i1 %i.eb, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EENS1_20ConstantVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clImS9_EEDaSP_bSQ_.exit.i, label %bb.af, !prof !40593

bb.af:                                            ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISB_EEJNS1_20ConstantVectorReaderISB_EEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !40733, !nonnull !476, !align !580
  invoke void @_ZN8facebook5velox6StatusC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 48
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !40563, !nonnull !476, !align !580
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %i.ef, i32 noundef %i.as, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit unwind label %bb.aj

_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit: ; preds = %bb.ag
  %i.eg = load ptr, ptr %10, align 8, !tbaa !1145
  %.not.i = icmp eq ptr %i.eg, null
  br i1 %.not.i, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EENS1_20ConstantVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSP_.exit, label %bb.ah, !prof !596

bb.ah:                                            ; preds = %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EENS1_20ConstantVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSP_.exit

bb.ai:                                            ; preds = %bb.af
  %i.eh = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook5velox6StatusD2Ev.exit73

bb.aj:                                            ; preds = %bb.ag
  %i.ei = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.ej = load ptr, ptr %10, align 8, !tbaa !1145
  %.not.i72 = icmp eq ptr %i.ej, null
  br i1 %.not.i72, label %_ZN8facebook5velox6StatusD2Ev.exit73, label %bb.ak, !prof !596

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %_ZN8facebook5velox6StatusD2Ev.exit73

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EENS1_20ConstantVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clImS9_EEDaSP_bSQ_.exit.i: ; preds = %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit70.thread, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISB_EEJNS1_20ConstantVectorReaderISB_EEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit.i
  %i.ek = phi <2 x i64> [ %i.dy, %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit70.thread ], [ zeroinitializer, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISB_EEJNS1_20ConstantVectorReaderISB_EEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit.i ]
  %i.el = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !40734, !nonnull !476, !align !580
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !40735, !nonnull !476, !align !580
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !1686
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %i.ep, i64 %.0187
  store <2 x i64> %i.ek, ptr %i.eq, align 8, !tbaa !536
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EENS1_20ConstantVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSP_.exit

_ZN8facebook5velox6StatusD2Ev.exit73:             ; preds = %bb.ak, %bb.aj, %bb.ai
  %.pn.i26 = phi { ptr, i32 } [ %i.eh, %bb.ai ], [ %i.ei, %bb.aj ], [ %i.ei, %bb.ak ]
  %i.er = load ptr, ptr %9, align 8, !tbaa !1145
  %.not.i75 = icmp eq ptr %i.er, null
  br i1 %.not.i75, label %_ZN8facebook5velox6StatusD2Ev.exit76, label %bb.al, !prof !596

bb.al:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit73
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %_ZN8facebook5velox6StatusD2Ev.exit76

_ZN8facebook5velox6StatusD2Ev.exit76:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit73, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %.body37

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EENS1_20ConstantVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSP_.exit: ; preds = %bb.ah, %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EENS1_20ConstantVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clImS9_EEDaSP_bSQ_.exit.i
  %i.es = load ptr, ptr %9, align 8, !tbaa !1145
  %.not.i77 = icmp eq ptr %i.es, null
  br i1 %.not.i77, label %_ZN8facebook5velox6StatusD2Ev.exit78, label %bb.am, !prof !596

bb.am:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EENS1_20ConstantVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSP_.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %_ZN8facebook5velox6StatusD2Ev.exit78

_ZN8facebook5velox6StatusD2Ev.exit78:             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EENS1_20ConstantVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSP_.exit, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESD_EEEJSD_SD_EEEE7iterateIJNS1_16FlatVectorReaderISD_EENS1_20ConstantVectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_ENKUlSR_E_clImEEDaSR_.exit

bb.an:                                            ; preds = %.noexc35, %.noexc33
  %i.et = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body37

.body37:                                          ; preds = %bb.u, %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit, %_ZN8facebook5velox6StatusD2Ev.exit76, %bb.an
  %eh.lpad-body38 = phi { ptr, i32 } [ %i.et, %bb.an ], [ %.pn.i26, %_ZN8facebook5velox6StatusD2Ev.exit76 ], [ %eh.lpad-body60, %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit ], [ %i.cr, %bb.u ] ; 3 uses
  %i.eu = extractvalue { ptr, i32 } %eh.lpad-body38, 0 ; 2 uses
  %i.ev = extractvalue { ptr, i32 } %eh.lpad-body38, 1 ; 2 uses
  %i.ew = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #31
  %i.ex = icmp eq i32 %i.ev, %i.ew
  br i1 %i.ex, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.body37
  %i.ey = call ptr @__cxa_begin_catch(ptr %i.eu) #31
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !1579 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 144
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !7  ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 152
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !16
  %i.ff = icmp eq i64 %i.fe, 4
  br i1 %i.ff, label %.lr.ph.i.i.i.preheader.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader.i.preheader:               ; preds = %bb.ao
  %i.fg = load i8, ptr %i.fc, align 1, !tbaa !26
  %or.cond.not.i.i.i = icmp eq i8 %i.fg, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.preheader.i.preheader
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fc, i64 1
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !26
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.fi, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fc, i64 2
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !26
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.fk, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fc, i64 3
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !26
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.fm, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %12) #31
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.al, i32 noundef %i.as, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.aw unwind label %bb.ay

.loopexit:                                        ; preds = %bb.ao, %.lr.ph.i.i.i.preheader.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #36
          to label %bb.bc unwind label %bb.av

bb.ap:                                            ; preds = %.body37
  %i.fn = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #31
  %i.fo = icmp eq i32 %i.ev, %i.fn
  br i1 %i.fo, label %bb.aq, label %common.resume

bb.aq:                                            ; preds = %bb.ap
  %i.fp = call ptr @__cxa_begin_catch(ptr %i.eu) #31 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %11) #31
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.al, i32 noundef %i.as, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.ar unwind label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.fq = load ptr, ptr %11, align 8, !tbaa !772
  %.not.i79 = icmp eq ptr %i.fq, null
  br i1 %.not.i79, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #31
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESD_EEEJSD_SD_EEEE7iterateIJNS1_16FlatVectorReaderISD_EENS1_20ConstantVectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_ENKUlSR_E_clImEEDaSR_.exit

bb.at:                                            ; preds = %bb.aq
  %i.fr = landingpad { ptr, i32 }
          cleanup
  %i.fs = load ptr, ptr %11, align 8, !tbaa !772
  %.not.i80 = icmp eq ptr %i.fs, null
  br i1 %.not.i80, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit81, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #31
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit81

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit81: ; preds = %bb.at, %bb.au
end_hunk_10
begin_hunk_11_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS3_10VectorExecEEESB_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESF_EEEJSF_SF_EEEE7iterateIJNS3_16FlatVectorReaderISF_EENS3_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi:bb.a
  %.not.i.i.i.i.i107 = icmp eq i8 %i.ie, 0
  br i1 %.not.i.i.i.i.i107, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.if = add nsw i32 %i.hw, -1
  store i32 %i.if, ptr %i.ht, align 8, !tbaa !3, !noalias !40780
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i108

bb.br:                                            ; preds = %bb.bp
  %i.ig = atomicrmw volatile add ptr %i.ht, i32 -1 acq_rel, align 4, !noalias !40780
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i108

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i108: ; preds = %bb.br, %bb.bq
  %.0.i.i.i.i.i.i109 = phi i32 [ %i.hw, %bb.bq ], [ %i.ig, %bb.br ]
  %i.ih = icmp eq i32 %.0.i.i.i.i.i.i109, 1
  br i1 %i.ih, label %bb.bs, label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit110, !prof !38

bb.bs:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i108
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hs) #31, !noalias !40780
  br label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit110

bb.bt:                                            ; preds = %_ZNSt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEEaSEOS4_.exit104
  %i.ii = load ptr, ptr %13, align 16, !tbaa !1145, !noalias !40780
  %.not.i.i.i105 = icmp eq ptr %i.ii, null
  br i1 %.not.i.i.i105, label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit110, label %bb.bu, !prof !596

bb.bu:                                            ; preds = %bb.bt
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %13), !noalias !40780
  br label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit110

_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit110: ; preds = %_ZNSt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEEaSEOS4_.exit104, %bb.bm, %bb.bo, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i108, %bb.bs, %bb.bt, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31, !noalias !40780
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31, !noalias !40780
  %.pre207 = load i32, ptr %19, align 8, !tbaa !39249
  %.pre208 = load ptr, ptr %i.n, align 8
  br label %.noexc20

bb.bv:                                            ; preds = %.noexc97, %bb.bf, %bb.be
  %i.ij = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31, !noalias !40780
  call void @_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %13) #31, !noalias !40780
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31, !noalias !40780
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31, !noalias !40780
  br label %.body

.noexc20:                                         ; preds = %bb.bd, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit110
  %i.ik = phi ptr [ %.sroa.2.0.copyload.i88, %bb.bd ], [ %.pre208, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit110 ]
  %i.il = phi i32 [ %i.gt, %bb.bd ], [ %.pre207, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit110 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31, !noalias !40780
  %i.im = load ptr, ptr %i.gp, align 8, !tbaa !38376, !noalias !40780
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31, !noalias !40780
  %i.in = icmp ult i32 %i.il, 13
  %i.io = select i1 %i.in, ptr %i.t, ptr %i.ik
  %i.ip = zext i32 %i.il to i64
  store i64 %i.ip, ptr %17, align 8, !noalias !40780
  store ptr %i.io, ptr %i.u, align 8, !noalias !40780
  invoke void @_ZNK8facebook5velox9functions17DateTimeFormatter5parseERKSt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.folly::Expected.14860") align 8 %16, ptr noundef nonnull align 8 dereferenceable(44) %i.im, ptr noundef nonnull align 8 dereferenceable(16) %17)
          to label %.noexc21 unwind label %bb.co

.noexc21:                                         ; preds = %.noexc20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31, !noalias !40780
  %i.iq = load i8, ptr %i.v, align 8, !tbaa !40139, !noalias !40780
  switch i8 %i.iq, label %.invoke262 [
    i8 2, label %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit114
    i8 1, label %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit133
  ], !prof !4660

_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit114: ; preds = %.noexc21
  %i.ir = load ptr, ptr %16, align 16, !tbaa !1145 ; 4 uses
  %i.is = icmp eq ptr %i.ir, null
  br i1 %i.is, label %.noexc.thread, label %bb.bw

bb.bw:                                            ; preds = %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit114
  %i.it = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34
          to label %.noexc123 unwind label %bb.cc ; 6 uses

.noexc123:                                        ; preds = %bb.bw
  %i.iu = load i8, ptr %i.ir, align 8, !tbaa !1148
  store i8 %i.iu, ptr %i.it, align 8, !tbaa !1148
  %i.iv = getelementptr inbounds nuw i8, ptr %i.it, i64 8 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.it, i64 24 ; 3 uses
  store ptr %i.ix, ptr %i.iv, align 8, !tbaa !37
  %i.iy = load ptr, ptr %i.iw, align 8, !tbaa !7  ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !16 ; 8 uses
  %i.jb = icmp ugt i64 %i.ja, 15
  br i1 %i.jb, label %bb.bx, label %._crit_edge.i.i.i.i115

bb.bx:                                            ; preds = %.noexc123
  %i.jc = icmp slt i64 %i.ja, 0
  br i1 %i.jc, label %.noexc.i.i.i121, label %bb.by

.noexc.i.i.i121:                                  ; preds = %bb.bx
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #36
          to label %.noexc.i122 unwind label %bb.cb

.noexc.i122:                                      ; preds = %.noexc.i.i.i121
  unreachable

bb.by:                                            ; preds = %bb.bx
  %i.jd = add nuw i64 %i.ja, 1                    ; 2 uses
  %i.je = icmp slt i64 %i.jd, 0
  br i1 %i.je, label %.noexc6.i.i.i119, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i117, !prof !38

.noexc6.i.i.i119:                                 ; preds = %bb.by
  invoke void @_ZSt17__throw_bad_allocv() #36
          to label %.noexc6.i120 unwind label %bb.cb

.noexc6.i120:                                     ; preds = %.noexc6.i.i.i119
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i117: ; preds = %bb.by
  %i.jf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jd) #34
          to label %.noexc7.i118 unwind label %bb.cb ; 2 uses

.noexc7.i118:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i117
  store ptr %i.jf, ptr %i.iv, align 8, !tbaa !7
  store i64 %i.ja, ptr %i.ix, align 8, !tbaa !26
  br label %._crit_edge.i.i.i.i115

._crit_edge.i.i.i.i115:                           ; preds = %.noexc7.i118, %.noexc123
  %i.jg = phi ptr [ %i.jf, %.noexc7.i118 ], [ %i.ix, %.noexc123 ] ; 3 uses
  switch i64 %i.ja, label %bb.ca [
    i64 1, label %bb.bz
    i64 0, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISB_EEJNS1_20ConstantVectorReaderISB_EEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit
  ]

bb.bz:                                            ; preds = %._crit_edge.i.i.i.i115
  %i.jh = load i8, ptr %i.iy, align 1, !tbaa !26
  store i8 %i.jh, ptr %i.jg, align 1, !tbaa !26
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISB_EEJNS1_20ConstantVectorReaderISB_EEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit

bb.ca:                                            ; preds = %._crit_edge.i.i.i.i115
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jg, ptr align 1 %i.iy, i64 %i.ja, i1 false)
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISB_EEJNS1_20ConstantVectorReaderISB_EEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit

bb.cb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i117, %.noexc6.i.i.i119, %.noexc.i.i.i121
  %i.ji = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @_ZdlPvm(ptr noundef nonnull %i.it, i64 noundef 40) #35
  br label %.body124

bb.cc:                                            ; preds = %.invoke262, %bb.cf, %bb.bw, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit133
  %i.jj = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body124

.body124:                                         ; preds = %bb.cb, %bb.cc
  %eh.lpad-body125 = phi { ptr, i32 } [ %i.jj, %bb.cc ], [ %i.ji, %bb.cb ]
  %i.jk = load i8, ptr %i.v, align 8, !tbaa !40139
  %cond.i.i127 = icmp ne i8 %i.jk, 2
  %i.jl = load ptr, ptr %16, align 16
  %.not.i.i.i128 = icmp eq ptr %i.jl, null
  %or.cond.i.i129 = select i1 %cond.i.i127, i1 true, i1 %.not.i.i.i128, !prof !1429
  br i1 %or.cond.i.i129, label %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit130, label %bb.cd, !prof !1429

bb.cd:                                            ; preds = %.body124
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %16)
  br label %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit130

_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit130: ; preds = %.body124, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31, !noalias !40780
  br label %.body

_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit133: ; preds = %.noexc21
  %i.jm = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !40546, !noalias !40780
  invoke void @_ZN8facebook5velox9Timestamp5toGMTERKNS0_2tz8TimeZoneE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(50) %i.jn)
          to label %bb.ce unwind label %bb.cc, !noalias !40780

bb.ce:                                            ; preds = %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit133
  %i.jo = load i8, ptr %i.v, align 8, !tbaa !40139, !noalias !40780
  switch i8 %i.jo, label %.invoke262 [
    i8 1, label %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit136
    i8 2, label %bb.cf
  ], !prof !4156

bb.cf:                                            ; preds = %bb.ce
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIN8facebook5velox6StatusEEEJRKS5_EEEvDpT0_(ptr noundef nonnull align 8 dereferenceable(32) %16) #18
          to label %.noexc134 unwind label %bb.cc

.noexc134:                                        ; preds = %bb.cf
  unreachable

.invoke262:                                       ; preds = %bb.ce, %.noexc21
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #18
          to label %.cont263 unwind label %bb.cc

.cont263:                                         ; preds = %.invoke262
  unreachable

_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit136: ; preds = %bb.ce
  %i.jp = load <2 x i64>, ptr %16, align 16
  br label %.noexc.thread

.noexc.thread:                                    ; preds = %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit114, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit136
  %i.jq = phi <2 x i64> [ zeroinitializer, %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit114 ], [ %i.jp, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit136 ]
  store ptr null, ptr %20, align 8, !tbaa !1145
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31, !noalias !40780
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31, !noalias !40774
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #31, !noalias !40771
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EENS1_20ConstantVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSP_bSQ_.exit.i

_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISB_EEJNS1_20ConstantVectorReaderISB_EEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit: ; preds = %._crit_edge.i.i.i.i115, %bb.bz, %bb.ca
  %i.jr = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  store i64 %i.ja, ptr %i.jr, align 8, !tbaa !16
  %i.js = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.ja
  store i8 0, ptr %i.js, align 1, !tbaa !26
  store ptr %i.it, ptr %20, align 8, !tbaa !1145
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %16)
  %.pre209 = load ptr, ptr %20, align 8, !tbaa !1145
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31, !noalias !40780
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31, !noalias !40774
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #31, !noalias !40771
  %i.jt = icmp eq ptr %.pre209, null
  br i1 %i.jt, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EENS1_20ConstantVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSP_bSQ_.exit.i, label %bb.cg, !prof !40593

bb.cg:                                            ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISB_EEJNS1_20ConstantVectorReaderISB_EEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit
  %i.ju = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !40733, !nonnull !476, !align !580
  invoke void @_ZN8facebook5velox6StatusC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.ch unwind label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 48
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !40563, !nonnull !476, !align !580
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %i.jx, i32 noundef %i.gd, ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit142 unwind label %bb.ck

_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit142: ; preds = %bb.ch
  %i.jy = load ptr, ptr %21, align 8, !tbaa !1145
  %.not.i143 = icmp eq ptr %i.jy, null
  br i1 %.not.i143, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EENS1_20ConstantVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSP_.exit, label %bb.ci, !prof !596

bb.ci:                                            ; preds = %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit142
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %21)
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EENS1_20ConstantVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSP_.exit

bb.cj:                                            ; preds = %bb.cg
  %i.jz = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook5velox6StatusD2Ev.exit146

bb.ck:                                            ; preds = %bb.ch
  %i.ka = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.kb = load ptr, ptr %21, align 8, !tbaa !1145
  %.not.i145 = icmp eq ptr %i.kb, null
  br i1 %.not.i145, label %_ZN8facebook5velox6StatusD2Ev.exit146, label %bb.cl, !prof !596

bb.cl:                                            ; preds = %bb.ck
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %21)
  br label %_ZN8facebook5velox6StatusD2Ev.exit146

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EENS1_20ConstantVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSP_bSQ_.exit.i: ; preds = %.noexc.thread, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISB_EEJNS1_20ConstantVectorReaderISB_EEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit
  %i.kc = phi <2 x i64> [ %i.jq, %.noexc.thread ], [ zeroinitializer, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISB_EEJNS1_20ConstantVectorReaderISB_EEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit ]
  %i.kd = getelementptr inbounds nuw i8, ptr %i.gf, i64 32
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !40734, !nonnull !476, !align !580
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !40735, !nonnull !476, !align !580
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !1686
  %i.ki = getelementptr inbounds [16 x i8], ptr %i.kh, i64 %i.gm
  store <2 x i64> %i.kc, ptr %i.ki, align 8, !tbaa !536
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EENS1_20ConstantVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSP_.exit

_ZN8facebook5velox6StatusD2Ev.exit146:            ; preds = %bb.cl, %bb.ck, %bb.cj
  %.pn.i17 = phi { ptr, i32 } [ %i.jz, %bb.cj ], [ %i.ka, %bb.ck ], [ %i.ka, %bb.cl ]
  %i.kj = load ptr, ptr %20, align 8, !tbaa !1145
  %.not.i149 = icmp eq ptr %i.kj, null
  br i1 %.not.i149, label %_ZN8facebook5velox6StatusD2Ev.exit150, label %bb.cm, !prof !596

bb.cm:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit146
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %20)
  br label %_ZN8facebook5velox6StatusD2Ev.exit150

_ZN8facebook5velox6StatusD2Ev.exit150:            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit146, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #31
  br label %.body

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EENS1_20ConstantVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSP_.exit: ; preds = %bb.ci, %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit142, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EENS1_20ConstantVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSP_bSQ_.exit.i
  %i.kk = load ptr, ptr %20, align 8, !tbaa !1145
  %.not.i151 = icmp eq ptr %i.kk, null
  br i1 %.not.i151, label %_ZN8facebook5velox6StatusD2Ev.exit152, label %bb.cn, !prof !596

bb.cn:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EENS1_20ConstantVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSP_.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %20)
  br label %_ZN8facebook5velox6StatusD2Ev.exit152

_ZN8facebook5velox6StatusD2Ev.exit152:            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EENS1_20ConstantVectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSP_.exit, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESD_EEEJSD_SD_EEEE7iterateIJNS1_16FlatVectorReaderISD_EENS1_20ConstantVectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit

bb.co:                                            ; preds = %.noexc20, %.noexc18
  %i.kl = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body

.body:                                            ; preds = %bb.co, %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit130, %bb.bv, %_ZN8facebook5velox6StatusD2Ev.exit150
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i17, %_ZN8facebook5velox6StatusD2Ev.exit150 ], [ %i.kl, %bb.co ], [ %eh.lpad-body125, %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit130 ], [ %i.ij, %bb.bv ] ; 3 uses
  %i.km = extractvalue { ptr, i32 } %eh.lpad-body, 0 ; 2 uses
  %i.kn = extractvalue { ptr, i32 } %eh.lpad-body, 1 ; 2 uses
  %i.ko = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #31
  %i.kp = icmp eq i32 %i.kn, %i.ko
  br i1 %i.kp, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %.body
  %i.kq = call ptr @__cxa_begin_catch(ptr %i.km) #31
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !1579 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 144
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !7  ; 4 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ks, i64 152
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !16
  %i.kx = icmp eq i64 %i.kw, 4
  br i1 %i.kx, label %.lr.ph.i.i.i.preheader.i153.preheader, label %.loopexit173

.lr.ph.i.i.i.preheader.i153.preheader:            ; preds = %bb.cp
  %i.ky = load i8, ptr %i.ku, align 1, !tbaa !26
  %or.cond.not.i.i.i155 = icmp eq i8 %i.ky, 85
  br i1 %or.cond.not.i.i.i155, label %tailrecurse.i.i.i.i156, label %.loopexit173

tailrecurse.i.i.i.i156:                           ; preds = %.lr.ph.i.i.i.preheader.i153.preheader
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ku, i64 1
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !26
  %or.cond.not.i.i.i155.1 = icmp eq i8 %i.la, 83
  br i1 %or.cond.not.i.i.i155.1, label %tailrecurse.i.i.i.i156.1, label %.loopexit173

tailrecurse.i.i.i.i156.1:                         ; preds = %tailrecurse.i.i.i.i156
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ku, i64 2
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !26
  %or.cond.not.i.i.i155.2 = icmp eq i8 %i.lc, 69
  br i1 %or.cond.not.i.i.i155.2, label %tailrecurse.i.i.i.i156.2, label %.loopexit173

tailrecurse.i.i.i.i156.2:                         ; preds = %tailrecurse.i.i.i.i156.1
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ku, i64 3
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !26
  %or.cond.not.i.i.i155.3 = icmp eq i8 %i.le, 82
  br i1 %or.cond.not.i.i.i155.3, label %tailrecurse.i.i.i.i156.3, label %.loopexit173

tailrecurse.i.i.i.i156.3:                         ; preds = %tailrecurse.i.i.i.i156.2
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #31
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %23) #31
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.ge, i32 noundef %i.gd, ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.cx unwind label %bb.cz

.loopexit173:                                     ; preds = %bb.cp, %.lr.ph.i.i.i.preheader.i153.preheader, %tailrecurse.i.i.i.i156, %tailrecurse.i.i.i.i156.1, %tailrecurse.i.i.i.i156.2
  invoke void @__cxa_rethrow() #36
          to label %bb.dd unwind label %bb.cw

bb.cq:                                            ; preds = %.body
  %i.lf = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #31
  %i.lg = icmp eq i32 %i.kn, %i.lf
  br i1 %i.lg, label %bb.cr, label %common.resume

bb.cr:                                            ; preds = %bb.cq
  %i.lh = call ptr @__cxa_begin_catch(ptr %i.km) #31 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #31
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %22) #31
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.ge, i32 noundef %i.gd, ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.cs unwind label %bb.cu

bb.cs:                                            ; preds = %bb.cr
  %i.li = load ptr, ptr %22, align 8, !tbaa !772
  %.not.i158 = icmp eq ptr %i.li, null
  br i1 %.not.i158, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit159, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %22) #31
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit159

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit159: ; preds = %bb.cs, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #31
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESD_EEEJSD_SD_EEEE7iterateIJNS1_16FlatVectorReaderISD_EENS1_20ConstantVectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit

bb.cu:                                            ; preds = %bb.cr
  %i.lj = landingpad { ptr, i32 }
          cleanup
  %i.lk = load ptr, ptr %22, align 8, !tbaa !772
  %.not.i160 = icmp eq ptr %i.lk, null
  br i1 %.not.i160, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit161, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %22) #31
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit161

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit161: ; preds = %bb.cu, %bb.cv
end_hunk_11
begin_hunk_12_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS3_10VectorExecEEESB_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESF_EEEJSF_SF_EEEE7iterateIJNS3_16FlatVectorReaderISF_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_:bb.a
  %.not.i.i.i.i.i24 = icmp eq i8 %i.cu, 0
  br i1 %.not.i.i.i.i.i24, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cv = add nsw i32 %i.cm, -1
  store i32 %i.cv, ptr %i.cj, align 8, !tbaa !3, !noalias !40798
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i25

bb.w:                                             ; preds = %bb.u
  %i.cw = atomicrmw volatile add ptr %i.cj, i32 -1 acq_rel, align 4, !noalias !40798
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i25

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i25: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i26 = phi i32 [ %i.cm, %bb.v ], [ %i.cw, %bb.w ]
  %i.cx = icmp eq i32 %.0.i.i.i.i.i.i26, 1
  br i1 %i.cx, label %bb.x, label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit, !prof !38

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i25
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #31, !noalias !40798
  br label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit

bb.y:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEEaSEOS4_.exit
  %i.cy = load ptr, ptr %2, align 16, !tbaa !1145, !noalias !40798
  %.not.i.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i, label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit, label %bb.z, !prof !596

bb.z:                                             ; preds = %bb.y
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %2), !noalias !40798
  br label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit

_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEEaSEOS4_.exit, %bb.r, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i25, %bb.x, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !40798
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !40798
  %.pre = load i32, ptr %8, align 8, !tbaa !39249
  %.pre76 = load ptr, ptr %i.aj, align 8
  br label %.noexc7

bb.aa:                                            ; preds = %.noexc21, %bb.k, %bb.j
  %i.cz = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !40798
  call void @_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #31, !noalias !40798
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !40798
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !40798
  br label %.body

.noexc7:                                          ; preds = %bb.i, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit
  %i.da = phi ptr [ %.sroa.2.0.copyload.i14, %bb.i ], [ %.pre76, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit ]
  %i.db = phi i32 [ %i.bj, %bb.i ], [ %.pre, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31, !noalias !40798
  %i.dc = load ptr, ptr %i.bf, align 8, !tbaa !38376, !noalias !40798
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31, !noalias !40798
  %i.dd = icmp ult i32 %i.db, 13
  %i.de = select i1 %i.dd, ptr %i.ap, ptr %i.da
  %i.df = zext i32 %i.db to i64
  store i64 %i.df, ptr %6, align 8, !noalias !40798
  store ptr %i.de, ptr %i.aq, align 8, !noalias !40798
  invoke void @_ZNK8facebook5velox9functions17DateTimeFormatter5parseERKSt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.folly::Expected.14860") align 8 %5, ptr noundef nonnull align 8 dereferenceable(44) %i.dc, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %.noexc8 unwind label %bb.at

.noexc8:                                          ; preds = %.noexc7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31, !noalias !40798
  %i.dg = load i8, ptr %i.ar, align 8, !tbaa !40139, !noalias !40798
  switch i8 %i.dg, label %.invoke [
    i8 2, label %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit
    i8 1, label %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit
  ], !prof !4660

_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit: ; preds = %.noexc8
  %i.dh = load ptr, ptr %5, align 16, !tbaa !1145 ; 4 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %.noexc.thread, label %bb.ab

bb.ab:                                            ; preds = %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit
  %i.dj = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34
          to label %.noexc31 unwind label %bb.ah  ; 6 uses

.noexc31:                                         ; preds = %bb.ab
  %i.dk = load i8, ptr %i.dh, align 8, !tbaa !1148
  store i8 %i.dk, ptr %i.dj, align 8, !tbaa !1148
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 24 ; 3 uses
  store ptr %i.dn, ptr %i.dl, align 8, !tbaa !37
  %i.do = load ptr, ptr %i.dm, align 8, !tbaa !7  ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !16 ; 8 uses
  %i.dr = icmp ugt i64 %i.dq, 15
  br i1 %i.dr, label %bb.ac, label %._crit_edge.i.i.i.i

bb.ac:                                            ; preds = %.noexc31
  %i.ds = icmp slt i64 %i.dq, 0
  br i1 %i.ds, label %.noexc.i.i.i, label %bb.ad

.noexc.i.i.i:                                     ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #36
          to label %.noexc.i30 unwind label %bb.ag

.noexc.i30:                                       ; preds = %.noexc.i.i.i
  unreachable

bb.ad:                                            ; preds = %bb.ac
  %i.dt = add nuw i64 %i.dq, 1                    ; 2 uses
  %i.du = icmp slt i64 %i.dt, 0
  br i1 %i.du, label %.noexc6.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !38

.noexc6.i.i.i:                                    ; preds = %bb.ad
  invoke void @_ZSt17__throw_bad_allocv() #36
          to label %.noexc6.i unwind label %bb.ag

.noexc6.i:                                        ; preds = %.noexc6.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.ad
  %i.dv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dt) #34
          to label %.noexc7.i unwind label %bb.ag ; 2 uses

.noexc7.i:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.dv, ptr %i.dl, align 8, !tbaa !7
  store i64 %i.dq, ptr %i.dn, align 8, !tbaa !26
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc7.i, %.noexc31
  %i.dw = phi ptr [ %i.dv, %.noexc7.i ], [ %i.dn, %.noexc31 ] ; 3 uses
  switch i64 %i.dq, label %bb.af [
    i64 1, label %bb.ae
    i64 0, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISB_EEJSH_ETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit
  ]

bb.ae:                                            ; preds = %._crit_edge.i.i.i.i
  %i.dx = load i8, ptr %i.do, align 1, !tbaa !26
  store i8 %i.dx, ptr %i.dw, align 1, !tbaa !26
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISB_EEJSH_ETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit

bb.af:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dw, ptr align 1 %i.do, i64 %i.dq, i1 false)
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISB_EEJSH_ETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %.noexc6.i.i.i, %.noexc.i.i.i
  %i.dy = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef 40) #35
  br label %.body32

bb.ah:                                            ; preds = %.invoke, %bb.ak, %bb.ab, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit
  %i.dz = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body32

.body32:                                          ; preds = %bb.ag, %bb.ah
  %eh.lpad-body33 = phi { ptr, i32 } [ %i.dz, %bb.ah ], [ %i.dy, %bb.ag ]
  %i.ea = load i8, ptr %i.ar, align 8, !tbaa !40139
  %cond.i.i = icmp ne i8 %i.ea, 2
  %i.eb = load ptr, ptr %5, align 16
  %.not.i.i.i34 = icmp eq ptr %i.eb, null
  %or.cond.i.i = select i1 %cond.i.i, i1 true, i1 %.not.i.i.i34, !prof !1429
  br i1 %or.cond.i.i, label %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit, label %bb.ai, !prof !1429

bb.ai:                                            ; preds = %.body32
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %5)
  br label %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit

_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit: ; preds = %.body32, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !40798
  br label %.body

_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit: ; preds = %.noexc8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !40546, !noalias !40798
  invoke void @_ZN8facebook5velox9Timestamp5toGMTERKNS0_2tz8TimeZoneE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(50) %i.ed)
          to label %bb.aj unwind label %bb.ah, !noalias !40798

bb.aj:                                            ; preds = %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit
  %i.ee = load i8, ptr %i.ar, align 8, !tbaa !40139, !noalias !40798
  switch i8 %i.ee, label %.invoke [
    i8 1, label %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit39
    i8 2, label %bb.ak
  ], !prof !4156

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIN8facebook5velox6StatusEEEJRKS5_EEEvDpT0_(ptr noundef nonnull align 8 dereferenceable(32) %5) #18
          to label %.noexc37 unwind label %bb.ah

.noexc37:                                         ; preds = %bb.ak
  unreachable

.invoke:                                          ; preds = %bb.aj, %.noexc8
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #18
          to label %.cont unwind label %bb.ah

.cont:                                            ; preds = %.invoke
  unreachable

_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit39: ; preds = %bb.aj
  %i.ef = load <2 x i64>, ptr %5, align 16
  br label %.noexc.thread

.noexc.thread:                                    ; preds = %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit39
  %i.eg = phi <2 x i64> [ zeroinitializer, %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit ], [ %i.ef, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit39 ]
  store ptr null, ptr %9, align 8, !tbaa !1145
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !40798
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31, !noalias !40792
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31, !noalias !40789
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSN_bSO_.exit.i

_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISB_EEJSH_ETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.ae, %bb.af
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store i64 %i.dq, ptr %i.eh, align 8, !tbaa !16
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dq
  store i8 0, ptr %i.ei, align 1, !tbaa !26
  store ptr %i.dj, ptr %9, align 8, !tbaa !1145
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %5)
  %.pre77 = load ptr, ptr %9, align 8, !tbaa !1145
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !40798
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31, !noalias !40792
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31, !noalias !40789
  %i.ej = icmp eq ptr %.pre77, null
  br i1 %i.ej, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSN_bSO_.exit.i, label %bb.al, !prof !40593

bb.al:                                            ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISB_EEJSH_ETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !40801, !nonnull !476, !align !580
  invoke void @_ZN8facebook5velox6StatusC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 48
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !40563, !nonnull !476, !align !580
  %i.eo = trunc nsw i64 %indvars.iv to i32
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %i.en, i32 noundef %i.eo, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit unwind label %bb.ap

_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit: ; preds = %bb.am
  %i.ep = load ptr, ptr %10, align 8, !tbaa !1145
  %.not.i = icmp eq ptr %i.ep, null
  br i1 %.not.i, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit, label %bb.an, !prof !596

bb.an:                                            ; preds = %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit

bb.ao:                                            ; preds = %bb.al
  %i.eq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook5velox6StatusD2Ev.exit46

bb.ap:                                            ; preds = %bb.am
  %i.er = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.es = load ptr, ptr %10, align 8, !tbaa !1145
  %.not.i45 = icmp eq ptr %i.es, null
  br i1 %.not.i45, label %_ZN8facebook5velox6StatusD2Ev.exit46, label %bb.aq, !prof !596

bb.aq:                                            ; preds = %bb.ap
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %_ZN8facebook5velox6StatusD2Ev.exit46

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSN_bSO_.exit.i: ; preds = %.noexc.thread, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISB_EEJSH_ETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit
  %i.et = phi <2 x i64> [ %i.eg, %.noexc.thread ], [ zeroinitializer, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISB_EEJSH_ETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit ]
  %i.eu = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !40802, !nonnull !476, !align !580
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !40803, !nonnull !476, !align !580
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !1686
  %i.ez = getelementptr inbounds [16 x i8], ptr %i.ey, i64 %indvars.iv
  store <2 x i64> %i.et, ptr %i.ez, align 8, !tbaa !536
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit

_ZN8facebook5velox6StatusD2Ev.exit46:             ; preds = %bb.aq, %bb.ap, %bb.ao
  %.pn.i4 = phi { ptr, i32 } [ %i.eq, %bb.ao ], [ %i.er, %bb.ap ], [ %i.er, %bb.aq ]
  %i.fa = load ptr, ptr %9, align 8, !tbaa !1145
  %.not.i48 = icmp eq ptr %i.fa, null
  br i1 %.not.i48, label %_ZN8facebook5velox6StatusD2Ev.exit49, label %bb.ar, !prof !596

bb.ar:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit46
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %_ZN8facebook5velox6StatusD2Ev.exit49

_ZN8facebook5velox6StatusD2Ev.exit49:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit46, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %.body

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit: ; preds = %bb.an, %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSN_bSO_.exit.i
  %i.fb = load ptr, ptr %9, align 8, !tbaa !1145
  %.not.i50 = icmp eq ptr %i.fb, null
  br i1 %.not.i50, label %_ZN8facebook5velox6StatusD2Ev.exit51, label %bb.as, !prof !596

bb.as:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %_ZN8facebook5velox6StatusD2Ev.exit51

_ZN8facebook5velox6StatusD2Ev.exit51:             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESD_EEEJSD_SD_EEEE7iterateIJNS1_16FlatVectorReaderISD_EESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit

bb.at:                                            ; preds = %.noexc7, %.noexc5
  %i.fc = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body

.body:                                            ; preds = %bb.at, %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit, %bb.aa, %_ZN8facebook5velox6StatusD2Ev.exit49
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i4, %_ZN8facebook5velox6StatusD2Ev.exit49 ], [ %i.fc, %bb.at ], [ %eh.lpad-body33, %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit ], [ %i.cz, %bb.aa ] ; 3 uses
  %i.fd = extractvalue { ptr, i32 } %eh.lpad-body, 0 ; 2 uses
  %i.fe = extractvalue { ptr, i32 } %eh.lpad-body, 1 ; 2 uses
  %i.ff = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #31
  %i.fg = icmp eq i32 %i.fe, %i.ff
  br i1 %i.fg, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.body
  %i.fh = call ptr @__cxa_begin_catch(ptr %i.fd) #31
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !1579 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 144
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !7  ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 152
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !16
  %i.fo = icmp eq i64 %i.fn, 4
  br i1 %i.fo, label %.lr.ph.i.i.i.preheader.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader.i.preheader:               ; preds = %bb.au
  %i.fp = load i8, ptr %i.fl, align 1, !tbaa !26
  %or.cond.not.i.i.i = icmp eq i8 %i.fp, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.preheader.i.preheader
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fl, i64 1
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !26
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.fr, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fl, i64 2
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !26
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.ft, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fl, i64 3
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !26
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.fv, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %12) #31
  %i.fw = trunc nsw i64 %indvars.iv to i32
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.at, i32 noundef %i.fw, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.bc unwind label %bb.be

.loopexit:                                        ; preds = %bb.au, %.lr.ph.i.i.i.preheader.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #36
          to label %bb.bi unwind label %bb.bb

bb.av:                                            ; preds = %.body
  %i.fx = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #31
  %i.fy = icmp eq i32 %i.fe, %i.fx
  br i1 %i.fy, label %bb.aw, label %.loopexit60

bb.aw:                                            ; preds = %bb.av
  %i.fz = call ptr @__cxa_begin_catch(ptr %i.fd) #31 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %11) #31
  %i.ga = trunc nsw i64 %indvars.iv to i32
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.at, i32 noundef %i.ga, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.ax unwind label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.gb = load ptr, ptr %11, align 8, !tbaa !772
  %.not.i52 = icmp eq ptr %i.gb, null
  br i1 %.not.i52, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #31
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESD_EEEJSD_SD_EEEE7iterateIJNS1_16FlatVectorReaderISD_EESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit

bb.az:                                            ; preds = %bb.aw
  %i.gc = landingpad { ptr, i32 }
          cleanup
  %i.gd = load ptr, ptr %11, align 8, !tbaa !772
  %.not.i53 = icmp eq ptr %i.gd, null
  br i1 %.not.i53, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit54, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #31
end_hunk_12
begin_hunk_13_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS3_10VectorExecEEESB_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESF_EEEJSF_SF_EEEE7iterateIJNS3_16FlatVectorReaderISF_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim:bb.a
  %.not.i.i.i.i.i30 = icmp eq i8 %i.cc, 0
  br i1 %.not.i.i.i.i.i30, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cd = add nsw i32 %i.bu, -1
  store i32 %i.cd, ptr %i.br, align 8, !tbaa !3, !noalias !40819
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i31

bb.p:                                             ; preds = %bb.n
  %i.ce = atomicrmw volatile add ptr %i.br, i32 -1 acq_rel, align 4, !noalias !40819
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i31

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i31: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i32 = phi i32 [ %i.bu, %bb.o ], [ %i.ce, %bb.p ]
  %i.cf = icmp eq i32 %.0.i.i.i.i.i.i32, 1
  br i1 %i.cf, label %bb.q, label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit, !prof !38

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i31
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #31, !noalias !40819
  br label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit

bb.r:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEEaSEOS4_.exit
  %i.cg = load ptr, ptr %3, align 16, !tbaa !1145, !noalias !40819
  %.not.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i, label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit, label %bb.s, !prof !596

bb.s:                                             ; preds = %bb.r
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %3), !noalias !40819
  br label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit

_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEEaSEOS4_.exit, %bb.k, %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i31, %bb.q, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !40819
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !40819
  %.pre = load i32, ptr %9, align 8, !tbaa !39249
  %.pre78 = load ptr, ptr %i.o, align 8
  br label %.noexc14

bb.t:                                             ; preds = %.noexc27, %bb.d, %bb.c
  %i.ch = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !40819
  call void @_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #31, !noalias !40819
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !40819
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !40819
  br label %.body

.noexc14:                                         ; preds = %bb.b, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit
  %i.ci = phi ptr [ %.sroa.2.0.copyload.i20, %bb.b ], [ %.pre78, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit ]
  %i.cj = phi i32 [ %i.ar, %bb.b ], [ %.pre, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31, !noalias !40819
  %i.ck = load ptr, ptr %i.an, align 8, !tbaa !38376, !noalias !40819
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31, !noalias !40819
  %i.cl = icmp ult i32 %i.cj, 13
  %i.cm = select i1 %i.cl, ptr %i.u, ptr %i.ci
  %i.cn = zext i32 %i.cj to i64
  store i64 %i.cn, ptr %7, align 8, !noalias !40819
  store ptr %i.cm, ptr %i.v, align 8, !noalias !40819
  invoke void @_ZNK8facebook5velox9functions17DateTimeFormatter5parseERKSt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.folly::Expected.14860") align 8 %6, ptr noundef nonnull align 8 dereferenceable(44) %i.ck, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %.noexc15 unwind label %bb.am

.noexc15:                                         ; preds = %.noexc14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31, !noalias !40819
  %i.co = load i8, ptr %i.w, align 8, !tbaa !40139, !noalias !40819
  switch i8 %i.co, label %.invoke [
    i8 2, label %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit
    i8 1, label %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit
  ], !prof !4660

_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit: ; preds = %.noexc15
  %i.cp = load ptr, ptr %6, align 16, !tbaa !1145 ; 4 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %.noexc.thread, label %bb.u

bb.u:                                             ; preds = %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit
  %i.cr = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34
          to label %.noexc37 unwind label %bb.aa  ; 6 uses

.noexc37:                                         ; preds = %bb.u
  %i.cs = load i8, ptr %i.cp, align 8, !tbaa !1148
  store i8 %i.cs, ptr %i.cr, align 8, !tbaa !1148
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 24 ; 3 uses
  store ptr %i.cv, ptr %i.ct, align 8, !tbaa !37
  %i.cw = load ptr, ptr %i.cu, align 8, !tbaa !7  ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !16 ; 8 uses
  %i.cz = icmp ugt i64 %i.cy, 15
  br i1 %i.cz, label %bb.v, label %._crit_edge.i.i.i.i

bb.v:                                             ; preds = %.noexc37
  %i.da = icmp slt i64 %i.cy, 0
  br i1 %i.da, label %.noexc.i.i.i, label %bb.w

.noexc.i.i.i:                                     ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #36
          to label %.noexc.i36 unwind label %bb.z

.noexc.i36:                                       ; preds = %.noexc.i.i.i
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.db = add nuw i64 %i.cy, 1                    ; 2 uses
  %i.dc = icmp slt i64 %i.db, 0
  br i1 %i.dc, label %.noexc6.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !38

.noexc6.i.i.i:                                    ; preds = %bb.w
  invoke void @_ZSt17__throw_bad_allocv() #36
          to label %.noexc6.i unwind label %bb.z

.noexc6.i:                                        ; preds = %.noexc6.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.w
  %i.dd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.db) #34
          to label %.noexc7.i unwind label %bb.z  ; 2 uses

.noexc7.i:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.dd, ptr %i.ct, align 8, !tbaa !7
  store i64 %i.cy, ptr %i.cv, align 8, !tbaa !26
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc7.i, %.noexc37
  %i.de = phi ptr [ %i.dd, %.noexc7.i ], [ %i.cv, %.noexc37 ] ; 3 uses
  switch i64 %i.cy, label %bb.y [
    i64 1, label %bb.x
    i64 0, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISB_EEJSH_ETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit
  ]

bb.x:                                             ; preds = %._crit_edge.i.i.i.i
  %i.df = load i8, ptr %i.cw, align 1, !tbaa !26
  store i8 %i.df, ptr %i.de, align 1, !tbaa !26
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISB_EEJSH_ETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit

bb.y:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.de, ptr align 1 %i.cw, i64 %i.cy, i1 false)
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISB_EEJSH_ETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %.noexc6.i.i.i, %.noexc.i.i.i
  %i.dg = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef 40) #35
  br label %.body38

bb.aa:                                            ; preds = %.invoke, %bb.ad, %bb.u, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit
  %i.dh = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body38

.body38:                                          ; preds = %bb.z, %bb.aa
  %eh.lpad-body39 = phi { ptr, i32 } [ %i.dh, %bb.aa ], [ %i.dg, %bb.z ]
  %i.di = load i8, ptr %i.w, align 8, !tbaa !40139
  %cond.i.i = icmp ne i8 %i.di, 2
  %i.dj = load ptr, ptr %6, align 16
  %.not.i.i.i40 = icmp eq ptr %i.dj, null
  %or.cond.i.i = select i1 %cond.i.i, i1 true, i1 %.not.i.i.i40, !prof !1429
  br i1 %or.cond.i.i, label %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit, label %bb.ab, !prof !1429

bb.ab:                                            ; preds = %.body38
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %6)
  br label %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit

_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit: ; preds = %.body38, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31, !noalias !40819
  br label %.body

_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit: ; preds = %.noexc15
  %i.dk = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !40546, !noalias !40819
  invoke void @_ZN8facebook5velox9Timestamp5toGMTERKNS0_2tz8TimeZoneE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(50) %i.dl)
          to label %bb.ac unwind label %bb.aa, !noalias !40819

bb.ac:                                            ; preds = %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit
  %i.dm = load i8, ptr %i.w, align 8, !tbaa !40139, !noalias !40819
  switch i8 %i.dm, label %.invoke [
    i8 1, label %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit45
    i8 2, label %bb.ad
  ], !prof !4156

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIN8facebook5velox6StatusEEEJRKS5_EEEvDpT0_(ptr noundef nonnull align 8 dereferenceable(32) %6) #18
          to label %.noexc43 unwind label %bb.aa

.noexc43:                                         ; preds = %bb.ad
  unreachable

.invoke:                                          ; preds = %bb.ac, %.noexc15
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #18
          to label %.cont unwind label %bb.aa

.cont:                                            ; preds = %.invoke
  unreachable

_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit45: ; preds = %bb.ac
  %i.dn = load <2 x i64>, ptr %6, align 16
  br label %.noexc.thread

.noexc.thread:                                    ; preds = %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit45
  %i.do = phi <2 x i64> [ zeroinitializer, %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit ], [ %i.dn, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit45 ]
  store ptr null, ptr %10, align 8, !tbaa !1145
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31, !noalias !40819
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31, !noalias !40813
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31, !noalias !40810
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSN_bSO_.exit.i

_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISB_EEJSH_ETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.x, %bb.y
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store i64 %i.cy, ptr %i.dp, align 8, !tbaa !16
  %i.dq = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.cy
  store i8 0, ptr %i.dq, align 1, !tbaa !26
  store ptr %i.cr, ptr %10, align 8, !tbaa !1145
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %6)
  %.pre79 = load ptr, ptr %10, align 8, !tbaa !1145
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31, !noalias !40819
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31, !noalias !40813
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31, !noalias !40810
  %i.dr = icmp eq ptr %.pre79, null
  br i1 %i.dr, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSN_bSO_.exit.i, label %bb.ae, !prof !40593

bb.ae:                                            ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISB_EEJSH_ETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !40801, !nonnull !476, !align !580
  invoke void @_ZN8facebook5velox6StatusC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 48
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !40563, !nonnull !476, !align !580
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %i.dv, i32 noundef %i.z, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit unwind label %bb.ai

_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit: ; preds = %bb.af
  %i.dw = load ptr, ptr %11, align 8, !tbaa !1145
  %.not.i = icmp eq ptr %i.dw, null
  br i1 %.not.i, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit, label %bb.ag, !prof !596

bb.ag:                                            ; preds = %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %11)
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit

bb.ah:                                            ; preds = %bb.ae
  %i.dx = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook5velox6StatusD2Ev.exit52

bb.ai:                                            ; preds = %bb.af
  %i.dy = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.dz = load ptr, ptr %11, align 8, !tbaa !1145
  %.not.i51 = icmp eq ptr %i.dz, null
  br i1 %.not.i51, label %_ZN8facebook5velox6StatusD2Ev.exit52, label %bb.aj, !prof !596

bb.aj:                                            ; preds = %bb.ai
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %11)
  br label %_ZN8facebook5velox6StatusD2Ev.exit52

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSN_bSO_.exit.i: ; preds = %.noexc.thread, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISB_EEJSH_ETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit
  %i.ea = phi <2 x i64> [ %i.do, %.noexc.thread ], [ zeroinitializer, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISB_EEJSH_ETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit ]
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !40802, !nonnull !476, !align !580
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !40803, !nonnull !476, !align !580
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !1686
  %i.eg = getelementptr inbounds [16 x i8], ptr %i.ef, i64 %i.ai
  store <2 x i64> %i.ea, ptr %i.eg, align 8, !tbaa !536
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit

_ZN8facebook5velox6StatusD2Ev.exit52:             ; preds = %bb.aj, %bb.ai, %bb.ah
  %.pn.i11 = phi { ptr, i32 } [ %i.dx, %bb.ah ], [ %i.dy, %bb.ai ], [ %i.dy, %bb.aj ]
  %i.eh = load ptr, ptr %10, align 8, !tbaa !1145
  %.not.i54 = icmp eq ptr %i.eh, null
  br i1 %.not.i54, label %_ZN8facebook5velox6StatusD2Ev.exit55, label %bb.ak, !prof !596

bb.ak:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit52
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %_ZN8facebook5velox6StatusD2Ev.exit55

_ZN8facebook5velox6StatusD2Ev.exit55:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit52, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %.body

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit: ; preds = %bb.ag, %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSN_bSO_.exit.i
  %i.ei = load ptr, ptr %10, align 8, !tbaa !1145
  %.not.i56 = icmp eq ptr %i.ei, null
  br i1 %.not.i56, label %_ZN8facebook5velox6StatusD2Ev.exit57, label %bb.al, !prof !596

bb.al:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %_ZN8facebook5velox6StatusD2Ev.exit57

_ZN8facebook5velox6StatusD2Ev.exit57:             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESD_EEEJSD_SD_EEEE7iterateIJNS1_16FlatVectorReaderISD_EESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit

bb.am:                                            ; preds = %.noexc14, %.noexc12
  %i.ej = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body

.body:                                            ; preds = %bb.am, %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit, %bb.t, %_ZN8facebook5velox6StatusD2Ev.exit55
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i11, %_ZN8facebook5velox6StatusD2Ev.exit55 ], [ %i.ej, %bb.am ], [ %eh.lpad-body39, %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit ], [ %i.ch, %bb.t ] ; 3 uses
  %i.ek = extractvalue { ptr, i32 } %eh.lpad-body, 0 ; 2 uses
  %i.el = extractvalue { ptr, i32 } %eh.lpad-body, 1 ; 2 uses
  %i.em = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #31
  %i.en = icmp eq i32 %i.el, %i.em
  br i1 %i.en, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.body
  %i.eo = call ptr @__cxa_begin_catch(ptr %i.ek) #31
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !1579 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 144
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !7  ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 152
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !16
  %i.ev = icmp eq i64 %i.eu, 4
  br i1 %i.ev, label %.lr.ph.i.i.i.preheader.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader.i.preheader:               ; preds = %bb.an
  %i.ew = load i8, ptr %i.es, align 1, !tbaa !26
  %or.cond.not.i.i.i = icmp eq i8 %i.ew, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.preheader.i.preheader
  %i.ex = getelementptr inbounds nuw i8, ptr %i.es, i64 1
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !26
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.ey, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.es, i64 2
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !26
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.fa, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.fb = getelementptr inbounds nuw i8, ptr %i.es, i64 3
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !26
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.fc, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %13) #31
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.aa, i32 noundef %i.z, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.av unwind label %bb.ax

.loopexit:                                        ; preds = %bb.an, %.lr.ph.i.i.i.preheader.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #36
          to label %bb.bb unwind label %bb.au

bb.ao:                                            ; preds = %.body
  %i.fd = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #31
  %i.fe = icmp eq i32 %i.el, %i.fd
  br i1 %i.fe, label %bb.ap, label %.loopexit66

bb.ap:                                            ; preds = %bb.ao
  %i.ff = call ptr @__cxa_begin_catch(ptr %i.ek) #31 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %12) #31
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.aa, i32 noundef %i.z, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.aq unwind label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.fg = load ptr, ptr %12, align 8, !tbaa !772
  %.not.i58 = icmp eq ptr %i.fg, null
  br i1 %.not.i58, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #31
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESD_EEEJSD_SD_EEEE7iterateIJNS1_16FlatVectorReaderISD_EESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit

bb.as:                                            ; preds = %bb.ap
  %i.fh = landingpad { ptr, i32 }
          cleanup
  %i.fi = load ptr, ptr %12, align 8, !tbaa !772
  %.not.i59 = icmp eq ptr %i.fi, null
  br i1 %.not.i59, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit60, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #31
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit60

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit60: ; preds = %bb.as, %bb.at
end_hunk_13
begin_hunk_14_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS3_10VectorExecEEESB_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESF_EEEJSF_SF_EEEE7iterateIJNS3_16FlatVectorReaderISF_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi:bb.a
  %.not.i.i.i.i.i51 = icmp eq i8 %i.co, 0
  br i1 %.not.i.i.i.i.i51, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cp = add nsw i32 %i.cg, -1
  store i32 %i.cp, ptr %i.cd, align 8, !tbaa !3, !noalias !40835
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i52

bb.q:                                             ; preds = %bb.o
  %i.cq = atomicrmw volatile add ptr %i.cd, i32 -1 acq_rel, align 4, !noalias !40835
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i52

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i52: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i53 = phi i32 [ %i.cg, %bb.p ], [ %i.cq, %bb.q ]
  %i.cr = icmp eq i32 %.0.i.i.i.i.i.i53, 1
  br i1 %i.cr, label %bb.r, label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit, !prof !38

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i52
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #31, !noalias !40835
  br label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit

bb.s:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEEaSEOS4_.exit
  %i.cs = load ptr, ptr %2, align 16, !tbaa !1145, !noalias !40835
  %.not.i.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i, label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit, label %bb.t, !prof !596

bb.t:                                             ; preds = %bb.s
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %2), !noalias !40835
  br label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit

_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEEaSEOS4_.exit, %bb.l, %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i52, %bb.r, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !40835
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !40835
  %.pre = load i32, ptr %8, align 8, !tbaa !39249
  %.pre205 = load ptr, ptr %i.ac, align 8
  br label %.noexc35

bb.u:                                             ; preds = %.noexc48, %bb.e, %bb.d
  %i.ct = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !40835
  call void @_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #31, !noalias !40835
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !40835
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !40835
  br label %.body37

.noexc35:                                         ; preds = %bb.c, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit
  %i.cu = phi ptr [ %.sroa.2.0.copyload.i41, %bb.c ], [ %.pre205, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit ]
  %i.cv = phi i32 [ %i.bd, %bb.c ], [ %.pre, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31, !noalias !40835
  %i.cw = load ptr, ptr %i.az, align 8, !tbaa !38376, !noalias !40835
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31, !noalias !40835
  %i.cx = icmp ult i32 %i.cv, 13
  %i.cy = select i1 %i.cx, ptr %i.ai, ptr %i.cu
  %i.cz = zext i32 %i.cv to i64
  store i64 %i.cz, ptr %6, align 8, !noalias !40835
  store ptr %i.cy, ptr %i.aj, align 8, !noalias !40835
  invoke void @_ZNK8facebook5velox9functions17DateTimeFormatter5parseERKSt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.folly::Expected.14860") align 8 %5, ptr noundef nonnull align 8 dereferenceable(44) %i.cw, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %.noexc36 unwind label %bb.an

.noexc36:                                         ; preds = %.noexc35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31, !noalias !40835
  %i.da = load i8, ptr %i.ak, align 8, !tbaa !40139, !noalias !40835
  switch i8 %i.da, label %.invoke [
    i8 2, label %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit
    i8 1, label %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit
  ], !prof !4660

_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit: ; preds = %.noexc36
  %i.db = load ptr, ptr %5, align 16, !tbaa !1145 ; 4 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit70.thread, label %bb.v

bb.v:                                             ; preds = %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit
  %i.dd = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34
          to label %.noexc58 unwind label %bb.ab  ; 6 uses

.noexc58:                                         ; preds = %bb.v
  %i.de = load i8, ptr %i.db, align 8, !tbaa !1148
  store i8 %i.de, ptr %i.dd, align 8, !tbaa !1148
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 24 ; 3 uses
  store ptr %i.dh, ptr %i.df, align 8, !tbaa !37
  %i.di = load ptr, ptr %i.dg, align 8, !tbaa !7  ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !16 ; 8 uses
  %i.dl = icmp ugt i64 %i.dk, 15
  br i1 %i.dl, label %bb.w, label %._crit_edge.i.i.i.i

bb.w:                                             ; preds = %.noexc58
  %i.dm = icmp slt i64 %i.dk, 0
  br i1 %i.dm, label %.noexc.i.i.i, label %bb.x

.noexc.i.i.i:                                     ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #36
          to label %.noexc.i57 unwind label %bb.aa

.noexc.i57:                                       ; preds = %.noexc.i.i.i
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.dn = add nuw i64 %i.dk, 1                    ; 2 uses
  %i.do = icmp slt i64 %i.dn, 0
  br i1 %i.do, label %.noexc6.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !38

.noexc6.i.i.i:                                    ; preds = %bb.x
  invoke void @_ZSt17__throw_bad_allocv() #36
          to label %.noexc6.i unwind label %bb.aa

.noexc6.i:                                        ; preds = %.noexc6.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.x
  %i.dp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dn) #34
          to label %.noexc7.i unwind label %bb.aa ; 2 uses

.noexc7.i:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.dp, ptr %i.df, align 8, !tbaa !7
  store i64 %i.dk, ptr %i.dh, align 8, !tbaa !26
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc7.i, %.noexc58
  %i.dq = phi ptr [ %i.dp, %.noexc7.i ], [ %i.dh, %.noexc58 ] ; 3 uses
  switch i64 %i.dk, label %bb.z [
    i64 1, label %bb.y
    i64 0, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISB_EEJSH_ETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit.i
  ]

bb.y:                                             ; preds = %._crit_edge.i.i.i.i
  %i.dr = load i8, ptr %i.di, align 1, !tbaa !26
  store i8 %i.dr, ptr %i.dq, align 1, !tbaa !26
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISB_EEJSH_ETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit.i

bb.z:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dq, ptr align 1 %i.di, i64 %i.dk, i1 false)
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISB_EEJSH_ETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit.i

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %.noexc6.i.i.i, %.noexc.i.i.i
  %i.ds = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef 40) #35
  br label %.body59

bb.ab:                                            ; preds = %.invoke, %bb.ae, %bb.v, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit
  %i.dt = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body59

.body59:                                          ; preds = %bb.aa, %bb.ab
  %eh.lpad-body60 = phi { ptr, i32 } [ %i.dt, %bb.ab ], [ %i.ds, %bb.aa ]
  %i.du = load i8, ptr %i.ak, align 8, !tbaa !40139
  %cond.i.i = icmp ne i8 %i.du, 2
  %i.dv = load ptr, ptr %5, align 16
  %.not.i.i.i61 = icmp eq ptr %i.dv, null
  %or.cond.i.i = select i1 %cond.i.i, i1 true, i1 %.not.i.i.i61, !prof !1429
  br i1 %or.cond.i.i, label %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit, label %bb.ac, !prof !1429

bb.ac:                                            ; preds = %.body59
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %5)
  br label %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit

_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit: ; preds = %.body59, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !40835
  br label %.body37

_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit: ; preds = %.noexc36
  %i.dw = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !40546, !noalias !40835
  invoke void @_ZN8facebook5velox9Timestamp5toGMTERKNS0_2tz8TimeZoneE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(50) %i.dx)
          to label %bb.ad unwind label %bb.ab, !noalias !40835

bb.ad:                                            ; preds = %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit
  %i.dy = load i8, ptr %i.ak, align 8, !tbaa !40139, !noalias !40835
  switch i8 %i.dy, label %.invoke [
    i8 1, label %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit66
    i8 2, label %bb.ae
  ], !prof !4156

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIN8facebook5velox6StatusEEEJRKS5_EEEvDpT0_(ptr noundef nonnull align 8 dereferenceable(32) %5) #18
          to label %.noexc64 unwind label %bb.ab

.noexc64:                                         ; preds = %bb.ae
  unreachable

.invoke:                                          ; preds = %bb.ad, %.noexc36
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #18
          to label %.cont unwind label %bb.ab

.cont:                                            ; preds = %.invoke
  unreachable

_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit66: ; preds = %bb.ad
  %i.dz = load <2 x i64>, ptr %5, align 16
  br label %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit70.thread

_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit70.thread: ; preds = %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit66
  %i.ea = phi <2 x i64> [ zeroinitializer, %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit ], [ %i.dz, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit66 ]
  store ptr null, ptr %9, align 8, !tbaa !1145
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !40835
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31, !noalias !40829
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31, !noalias !40826
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clImS9_EEDaSN_bSO_.exit.i

_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISB_EEJSH_ETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit.i: ; preds = %._crit_edge.i.i.i.i, %bb.y, %bb.z
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store i64 %i.dk, ptr %i.eb, align 8, !tbaa !16
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dk
  store i8 0, ptr %i.ec, align 1, !tbaa !26
  store ptr %i.dd, ptr %9, align 8, !tbaa !1145
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %5)
  %.pre206 = load ptr, ptr %9, align 8, !tbaa !1145
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !40835
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31, !noalias !40829
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31, !noalias !40826
  %i.ed = icmp eq ptr %.pre206, null
  br i1 %i.ed, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clImS9_EEDaSN_bSO_.exit.i, label %bb.af, !prof !40593

bb.af:                                            ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISB_EEJSH_ETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !40801, !nonnull !476, !align !580
  invoke void @_ZN8facebook5velox6StatusC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 48
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !40563, !nonnull !476, !align !580
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %i.eh, i32 noundef %i.as, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit unwind label %bb.aj

_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit: ; preds = %bb.ag
  %i.ei = load ptr, ptr %10, align 8, !tbaa !1145
  %.not.i = icmp eq ptr %i.ei, null
  br i1 %.not.i, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSN_.exit, label %bb.ah, !prof !596

bb.ah:                                            ; preds = %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSN_.exit

bb.ai:                                            ; preds = %bb.af
  %i.ej = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook5velox6StatusD2Ev.exit73

bb.aj:                                            ; preds = %bb.ag
  %i.ek = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.el = load ptr, ptr %10, align 8, !tbaa !1145
  %.not.i72 = icmp eq ptr %i.el, null
  br i1 %.not.i72, label %_ZN8facebook5velox6StatusD2Ev.exit73, label %bb.ak, !prof !596

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %_ZN8facebook5velox6StatusD2Ev.exit73

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clImS9_EEDaSN_bSO_.exit.i: ; preds = %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit70.thread, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISB_EEJSH_ETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit.i
  %i.em = phi <2 x i64> [ %i.ea, %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit70.thread ], [ zeroinitializer, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISB_EEJSH_ETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit.i ]
  %i.en = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !40802, !nonnull !476, !align !580
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !40803, !nonnull !476, !align !580
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !1686
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %i.er, i64 %.0187
  store <2 x i64> %i.em, ptr %i.es, align 8, !tbaa !536
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSN_.exit

_ZN8facebook5velox6StatusD2Ev.exit73:             ; preds = %bb.ak, %bb.aj, %bb.ai
  %.pn.i26 = phi { ptr, i32 } [ %i.ej, %bb.ai ], [ %i.ek, %bb.aj ], [ %i.ek, %bb.ak ]
  %i.et = load ptr, ptr %9, align 8, !tbaa !1145
  %.not.i75 = icmp eq ptr %i.et, null
  br i1 %.not.i75, label %_ZN8facebook5velox6StatusD2Ev.exit76, label %bb.al, !prof !596

bb.al:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit73
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %_ZN8facebook5velox6StatusD2Ev.exit76

_ZN8facebook5velox6StatusD2Ev.exit76:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit73, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %.body37

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSN_.exit: ; preds = %bb.ah, %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clImS9_EEDaSN_bSO_.exit.i
  %i.eu = load ptr, ptr %9, align 8, !tbaa !1145
  %.not.i77 = icmp eq ptr %i.eu, null
  br i1 %.not.i77, label %_ZN8facebook5velox6StatusD2Ev.exit78, label %bb.am, !prof !596

bb.am:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSN_.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %_ZN8facebook5velox6StatusD2Ev.exit78

_ZN8facebook5velox6StatusD2Ev.exit78:             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSN_.exit, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESD_EEEJSD_SD_EEEE7iterateIJNS1_16FlatVectorReaderISD_EESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clImEEDaSP_.exit

bb.an:                                            ; preds = %.noexc35, %.noexc33
  %i.ev = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body37

.body37:                                          ; preds = %bb.u, %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit, %_ZN8facebook5velox6StatusD2Ev.exit76, %bb.an
  %eh.lpad-body38 = phi { ptr, i32 } [ %i.ev, %bb.an ], [ %.pn.i26, %_ZN8facebook5velox6StatusD2Ev.exit76 ], [ %eh.lpad-body60, %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit ], [ %i.ct, %bb.u ] ; 3 uses
  %i.ew = extractvalue { ptr, i32 } %eh.lpad-body38, 0 ; 2 uses
  %i.ex = extractvalue { ptr, i32 } %eh.lpad-body38, 1 ; 2 uses
  %i.ey = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #31
  %i.ez = icmp eq i32 %i.ex, %i.ey
  br i1 %i.ez, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.body37
  %i.fa = call ptr @__cxa_begin_catch(ptr %i.ew) #31
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !1579 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 144
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !7  ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 152
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !16
  %i.fh = icmp eq i64 %i.fg, 4
  br i1 %i.fh, label %.lr.ph.i.i.i.preheader.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader.i.preheader:               ; preds = %bb.ao
  %i.fi = load i8, ptr %i.fe, align 1, !tbaa !26
  %or.cond.not.i.i.i = icmp eq i8 %i.fi, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.preheader.i.preheader
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 1
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !26
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.fk, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fe, i64 2
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !26
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.fm, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fe, i64 3
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !26
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.fo, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %12) #31
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.al, i32 noundef %i.as, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.aw unwind label %bb.ay

.loopexit:                                        ; preds = %bb.ao, %.lr.ph.i.i.i.preheader.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #36
          to label %bb.bc unwind label %bb.av

bb.ap:                                            ; preds = %.body37
  %i.fp = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #31
  %i.fq = icmp eq i32 %i.ex, %i.fp
  br i1 %i.fq, label %bb.aq, label %common.resume

bb.aq:                                            ; preds = %bb.ap
  %i.fr = call ptr @__cxa_begin_catch(ptr %i.ew) #31 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %11) #31
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.al, i32 noundef %i.as, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.ar unwind label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.fs = load ptr, ptr %11, align 8, !tbaa !772
  %.not.i79 = icmp eq ptr %i.fs, null
  br i1 %.not.i79, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #31
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESD_EEEJSD_SD_EEEE7iterateIJNS1_16FlatVectorReaderISD_EESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clImEEDaSP_.exit

bb.at:                                            ; preds = %bb.aq
  %i.ft = landingpad { ptr, i32 }
          cleanup
  %i.fu = load ptr, ptr %11, align 8, !tbaa !772
  %.not.i80 = icmp eq ptr %i.fu, null
  br i1 %.not.i80, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit81, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #31
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit81

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit81: ; preds = %bb.at, %bb.au
end_hunk_14
begin_hunk_15_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS3_10VectorExecEEESB_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESF_EEEJSF_SF_EEEE7iterateIJNS3_16FlatVectorReaderISF_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi:bb.a
  %.not.i.i.i.i.i107 = icmp eq i8 %i.ii, 0
  br i1 %.not.i.i.i.i.i107, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ij = add nsw i32 %i.ia, -1
  store i32 %i.ij, ptr %i.hx, align 8, !tbaa !3, !noalias !40848
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i108

bb.br:                                            ; preds = %bb.bp
  %i.ik = atomicrmw volatile add ptr %i.hx, i32 -1 acq_rel, align 4, !noalias !40848
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i108

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i108: ; preds = %bb.br, %bb.bq
  %.0.i.i.i.i.i.i109 = phi i32 [ %i.ia, %bb.bq ], [ %i.ik, %bb.br ]
  %i.il = icmp eq i32 %.0.i.i.i.i.i.i109, 1
  br i1 %i.il, label %bb.bs, label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit110, !prof !38

bb.bs:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i108
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hw) #31, !noalias !40848
  br label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit110

bb.bt:                                            ; preds = %_ZNSt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEEaSEOS4_.exit104
  %i.im = load ptr, ptr %13, align 16, !tbaa !1145, !noalias !40848
  %.not.i.i.i105 = icmp eq ptr %i.im, null
  br i1 %.not.i.i.i105, label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit110, label %bb.bu, !prof !596

bb.bu:                                            ; preds = %bb.bt
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %13), !noalias !40848
  br label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit110

_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit110: ; preds = %_ZNSt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEEaSEOS4_.exit104, %bb.bm, %bb.bo, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i108, %bb.bs, %bb.bt, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31, !noalias !40848
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31, !noalias !40848
  %.pre207 = load i32, ptr %19, align 8, !tbaa !39249
  %.pre208 = load ptr, ptr %i.n, align 8
  br label %.noexc20

bb.bv:                                            ; preds = %.noexc97, %bb.bf, %bb.be
  %i.in = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31, !noalias !40848
  call void @_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %13) #31, !noalias !40848
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31, !noalias !40848
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31, !noalias !40848
  br label %.body

.noexc20:                                         ; preds = %bb.bd, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit110
  %i.io = phi ptr [ %.sroa.2.0.copyload.i88, %bb.bd ], [ %.pre208, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit110 ]
  %i.ip = phi i32 [ %i.gx, %bb.bd ], [ %.pre207, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit110 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31, !noalias !40848
  %i.iq = load ptr, ptr %i.gt, align 8, !tbaa !38376, !noalias !40848
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31, !noalias !40848
  %i.ir = icmp ult i32 %i.ip, 13
  %i.is = select i1 %i.ir, ptr %i.t, ptr %i.io
  %i.it = zext i32 %i.ip to i64
  store i64 %i.it, ptr %17, align 8, !noalias !40848
  store ptr %i.is, ptr %i.u, align 8, !noalias !40848
  invoke void @_ZNK8facebook5velox9functions17DateTimeFormatter5parseERKSt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.folly::Expected.14860") align 8 %16, ptr noundef nonnull align 8 dereferenceable(44) %i.iq, ptr noundef nonnull align 8 dereferenceable(16) %17)
          to label %.noexc21 unwind label %bb.co

.noexc21:                                         ; preds = %.noexc20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31, !noalias !40848
  %i.iu = load i8, ptr %i.v, align 8, !tbaa !40139, !noalias !40848
  switch i8 %i.iu, label %.invoke262 [
    i8 2, label %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit114
    i8 1, label %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit133
  ], !prof !4660

_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit114: ; preds = %.noexc21
  %i.iv = load ptr, ptr %16, align 16, !tbaa !1145 ; 4 uses
  %i.iw = icmp eq ptr %i.iv, null
  br i1 %i.iw, label %.noexc.thread, label %bb.bw

bb.bw:                                            ; preds = %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit114
  %i.ix = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34
          to label %.noexc123 unwind label %bb.cc ; 6 uses

.noexc123:                                        ; preds = %bb.bw
  %i.iy = load i8, ptr %i.iv, align 8, !tbaa !1148
  store i8 %i.iy, ptr %i.ix, align 8, !tbaa !1148
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 8 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ix, i64 24 ; 3 uses
  store ptr %i.jb, ptr %i.iz, align 8, !tbaa !37
  %i.jc = load ptr, ptr %i.ja, align 8, !tbaa !7  ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !16 ; 8 uses
  %i.jf = icmp ugt i64 %i.je, 15
  br i1 %i.jf, label %bb.bx, label %._crit_edge.i.i.i.i115

bb.bx:                                            ; preds = %.noexc123
  %i.jg = icmp slt i64 %i.je, 0
  br i1 %i.jg, label %.noexc.i.i.i121, label %bb.by

.noexc.i.i.i121:                                  ; preds = %bb.bx
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #36
          to label %.noexc.i122 unwind label %bb.cb

.noexc.i122:                                      ; preds = %.noexc.i.i.i121
  unreachable

bb.by:                                            ; preds = %bb.bx
  %i.jh = add nuw i64 %i.je, 1                    ; 2 uses
  %i.ji = icmp slt i64 %i.jh, 0
  br i1 %i.ji, label %.noexc6.i.i.i119, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i117, !prof !38

.noexc6.i.i.i119:                                 ; preds = %bb.by
  invoke void @_ZSt17__throw_bad_allocv() #36
          to label %.noexc6.i120 unwind label %bb.cb

.noexc6.i120:                                     ; preds = %.noexc6.i.i.i119
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i117: ; preds = %bb.by
  %i.jj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jh) #34
          to label %.noexc7.i118 unwind label %bb.cb ; 2 uses

.noexc7.i118:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i117
  store ptr %i.jj, ptr %i.iz, align 8, !tbaa !7
  store i64 %i.je, ptr %i.jb, align 8, !tbaa !26
  br label %._crit_edge.i.i.i.i115

._crit_edge.i.i.i.i115:                           ; preds = %.noexc7.i118, %.noexc123
  %i.jk = phi ptr [ %i.jj, %.noexc7.i118 ], [ %i.jb, %.noexc123 ] ; 3 uses
  switch i64 %i.je, label %bb.ca [
    i64 1, label %bb.bz
    i64 0, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISB_EEJSH_ETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit
  ]

bb.bz:                                            ; preds = %._crit_edge.i.i.i.i115
  %i.jl = load i8, ptr %i.jc, align 1, !tbaa !26
  store i8 %i.jl, ptr %i.jk, align 1, !tbaa !26
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISB_EEJSH_ETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit

bb.ca:                                            ; preds = %._crit_edge.i.i.i.i115
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jk, ptr align 1 %i.jc, i64 %i.je, i1 false)
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISB_EEJSH_ETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit

bb.cb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i117, %.noexc6.i.i.i119, %.noexc.i.i.i121
  %i.jm = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @_ZdlPvm(ptr noundef nonnull %i.ix, i64 noundef 40) #35
  br label %.body124

bb.cc:                                            ; preds = %.invoke262, %bb.cf, %bb.bw, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit133
  %i.jn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body124

.body124:                                         ; preds = %bb.cb, %bb.cc
  %eh.lpad-body125 = phi { ptr, i32 } [ %i.jn, %bb.cc ], [ %i.jm, %bb.cb ]
  %i.jo = load i8, ptr %i.v, align 8, !tbaa !40139
  %cond.i.i127 = icmp ne i8 %i.jo, 2
  %i.jp = load ptr, ptr %16, align 16
  %.not.i.i.i128 = icmp eq ptr %i.jp, null
  %or.cond.i.i129 = select i1 %cond.i.i127, i1 true, i1 %.not.i.i.i128, !prof !1429
  br i1 %or.cond.i.i129, label %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit130, label %bb.cd, !prof !1429

bb.cd:                                            ; preds = %.body124
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %16)
  br label %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit130

_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit130: ; preds = %.body124, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31, !noalias !40848
  br label %.body

_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit133: ; preds = %.noexc21
  %i.jq = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !40546, !noalias !40848
  invoke void @_ZN8facebook5velox9Timestamp5toGMTERKNS0_2tz8TimeZoneE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(50) %i.jr)
          to label %bb.ce unwind label %bb.cc, !noalias !40848

bb.ce:                                            ; preds = %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit133
  %i.js = load i8, ptr %i.v, align 8, !tbaa !40139, !noalias !40848
  switch i8 %i.js, label %.invoke262 [
    i8 1, label %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit136
    i8 2, label %bb.cf
  ], !prof !4156

bb.cf:                                            ; preds = %bb.ce
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIN8facebook5velox6StatusEEEJRKS5_EEEvDpT0_(ptr noundef nonnull align 8 dereferenceable(32) %16) #18
          to label %.noexc134 unwind label %bb.cc

.noexc134:                                        ; preds = %bb.cf
  unreachable

.invoke262:                                       ; preds = %bb.ce, %.noexc21
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #18
          to label %.cont263 unwind label %bb.cc

.cont263:                                         ; preds = %.invoke262
  unreachable

_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit136: ; preds = %bb.ce
  %i.jt = load <2 x i64>, ptr %16, align 16
  br label %.noexc.thread

.noexc.thread:                                    ; preds = %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit114, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit136
  %i.ju = phi <2 x i64> [ zeroinitializer, %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit114 ], [ %i.jt, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit136 ]
  store ptr null, ptr %20, align 8, !tbaa !1145
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31, !noalias !40848
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31, !noalias !40842
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #31, !noalias !40839
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSN_bSO_.exit.i

_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISB_EEJSH_ETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit: ; preds = %._crit_edge.i.i.i.i115, %bb.bz, %bb.ca
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  store i64 %i.je, ptr %i.jv, align 8, !tbaa !16
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.je
  store i8 0, ptr %i.jw, align 1, !tbaa !26
  store ptr %i.ix, ptr %20, align 8, !tbaa !1145
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %16)
  %.pre209 = load ptr, ptr %20, align 8, !tbaa !1145
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31, !noalias !40848
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31, !noalias !40842
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #31, !noalias !40839
  %i.jx = icmp eq ptr %.pre209, null
  br i1 %i.jx, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSN_bSO_.exit.i, label %bb.cg, !prof !40593

bb.cg:                                            ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISB_EEJSH_ETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit
  %i.jy = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !40801, !nonnull !476, !align !580
  invoke void @_ZN8facebook5velox6StatusC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.ch unwind label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 48
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !40563, !nonnull !476, !align !580
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %i.kb, i32 noundef %i.gf, ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit142 unwind label %bb.ck

_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit142: ; preds = %bb.ch
  %i.kc = load ptr, ptr %21, align 8, !tbaa !1145
  %.not.i143 = icmp eq ptr %i.kc, null
  br i1 %.not.i143, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit, label %bb.ci, !prof !596

bb.ci:                                            ; preds = %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit142
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %21)
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit

bb.cj:                                            ; preds = %bb.cg
  %i.kd = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook5velox6StatusD2Ev.exit146

bb.ck:                                            ; preds = %bb.ch
  %i.ke = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.kf = load ptr, ptr %21, align 8, !tbaa !1145
  %.not.i145 = icmp eq ptr %i.kf, null
  br i1 %.not.i145, label %_ZN8facebook5velox6StatusD2Ev.exit146, label %bb.cl, !prof !596

bb.cl:                                            ; preds = %bb.ck
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %21)
  br label %_ZN8facebook5velox6StatusD2Ev.exit146

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSN_bSO_.exit.i: ; preds = %.noexc.thread, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISB_EEJSH_ETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit
  %i.kg = phi <2 x i64> [ %i.ju, %.noexc.thread ], [ zeroinitializer, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm0ENS1_16FlatVectorReaderISB_EEJSH_ETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit ]
  %i.kh = getelementptr inbounds nuw i8, ptr %i.gh, i64 32
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !40802, !nonnull !476, !align !580
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !40803, !nonnull !476, !align !580
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !1686
  %i.km = getelementptr inbounds [16 x i8], ptr %i.kl, i64 %i.go
  store <2 x i64> %i.kg, ptr %i.km, align 8, !tbaa !536
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit

_ZN8facebook5velox6StatusD2Ev.exit146:            ; preds = %bb.cl, %bb.ck, %bb.cj
  %.pn.i17 = phi { ptr, i32 } [ %i.kd, %bb.cj ], [ %i.ke, %bb.ck ], [ %i.ke, %bb.cl ]
  %i.kn = load ptr, ptr %20, align 8, !tbaa !1145
  %.not.i149 = icmp eq ptr %i.kn, null
  br i1 %.not.i149, label %_ZN8facebook5velox6StatusD2Ev.exit150, label %bb.cm, !prof !596

bb.cm:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit146
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %20)
  br label %_ZN8facebook5velox6StatusD2Ev.exit150

_ZN8facebook5velox6StatusD2Ev.exit150:            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit146, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #31
  br label %.body

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit: ; preds = %bb.ci, %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit142, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSN_bSO_.exit.i
  %i.ko = load ptr, ptr %20, align 8, !tbaa !1145
  %.not.i151 = icmp eq ptr %i.ko, null
  br i1 %.not.i151, label %_ZN8facebook5velox6StatusD2Ev.exit152, label %bb.cn, !prof !596

bb.cn:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %20)
  br label %_ZN8facebook5velox6StatusD2Ev.exit152

_ZN8facebook5velox6StatusD2Ev.exit152:            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_16FlatVectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESD_EEEJSD_SD_EEEE7iterateIJNS1_16FlatVectorReaderISD_EESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit

bb.co:                                            ; preds = %.noexc20, %.noexc18
  %i.kp = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body

.body:                                            ; preds = %bb.co, %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit130, %bb.bv, %_ZN8facebook5velox6StatusD2Ev.exit150
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i17, %_ZN8facebook5velox6StatusD2Ev.exit150 ], [ %i.kp, %bb.co ], [ %eh.lpad-body125, %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit130 ], [ %i.in, %bb.bv ] ; 3 uses
  %i.kq = extractvalue { ptr, i32 } %eh.lpad-body, 0 ; 2 uses
  %i.kr = extractvalue { ptr, i32 } %eh.lpad-body, 1 ; 2 uses
  %i.ks = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #31
  %i.kt = icmp eq i32 %i.kr, %i.ks
  br i1 %i.kt, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %.body
  %i.ku = call ptr @__cxa_begin_catch(ptr %i.kq) #31
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !1579 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 144
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !7  ; 4 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kw, i64 152
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !16
  %i.lb = icmp eq i64 %i.la, 4
  br i1 %i.lb, label %.lr.ph.i.i.i.preheader.i153.preheader, label %.loopexit173

.lr.ph.i.i.i.preheader.i153.preheader:            ; preds = %bb.cp
  %i.lc = load i8, ptr %i.ky, align 1, !tbaa !26
  %or.cond.not.i.i.i155 = icmp eq i8 %i.lc, 85
  br i1 %or.cond.not.i.i.i155, label %tailrecurse.i.i.i.i156, label %.loopexit173

tailrecurse.i.i.i.i156:                           ; preds = %.lr.ph.i.i.i.preheader.i153.preheader
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ky, i64 1
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !26
  %or.cond.not.i.i.i155.1 = icmp eq i8 %i.le, 83
  br i1 %or.cond.not.i.i.i155.1, label %tailrecurse.i.i.i.i156.1, label %.loopexit173

tailrecurse.i.i.i.i156.1:                         ; preds = %tailrecurse.i.i.i.i156
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ky, i64 2
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !26
  %or.cond.not.i.i.i155.2 = icmp eq i8 %i.lg, 69
  br i1 %or.cond.not.i.i.i155.2, label %tailrecurse.i.i.i.i156.2, label %.loopexit173

tailrecurse.i.i.i.i156.2:                         ; preds = %tailrecurse.i.i.i.i156.1
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ky, i64 3
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !26
  %or.cond.not.i.i.i155.3 = icmp eq i8 %i.li, 82
  br i1 %or.cond.not.i.i.i155.3, label %tailrecurse.i.i.i.i156.3, label %.loopexit173

tailrecurse.i.i.i.i156.3:                         ; preds = %tailrecurse.i.i.i.i156.2
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #31
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %23) #31
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.gg, i32 noundef %i.gf, ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.cx unwind label %bb.cz

.loopexit173:                                     ; preds = %bb.cp, %.lr.ph.i.i.i.preheader.i153.preheader, %tailrecurse.i.i.i.i156, %tailrecurse.i.i.i.i156.1, %tailrecurse.i.i.i.i156.2
  invoke void @__cxa_rethrow() #36
          to label %bb.dd unwind label %bb.cw

bb.cq:                                            ; preds = %.body
  %i.lj = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #31
  %i.lk = icmp eq i32 %i.kr, %i.lj
  br i1 %i.lk, label %bb.cr, label %common.resume

bb.cr:                                            ; preds = %bb.cq
  %i.ll = call ptr @__cxa_begin_catch(ptr %i.kq) #31 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #31
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %22) #31
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.gg, i32 noundef %i.gf, ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.cs unwind label %bb.cu

bb.cs:                                            ; preds = %bb.cr
  %i.lm = load ptr, ptr %22, align 8, !tbaa !772
  %.not.i158 = icmp eq ptr %i.lm, null
  br i1 %.not.i158, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit159, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %22) #31
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit159

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit159: ; preds = %bb.cs, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #31
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESD_EEEJSD_SD_EEEE7iterateIJNS1_16FlatVectorReaderISD_EESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit

bb.cu:                                            ; preds = %bb.cr
  %i.ln = landingpad { ptr, i32 }
          cleanup
  %i.lo = load ptr, ptr %22, align 8, !tbaa !772
  %.not.i160 = icmp eq ptr %i.lo, null
  br i1 %.not.i160, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit161, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %22) #31
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit161

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit161: ; preds = %bb.cu, %bb.cv
end_hunk_15
begin_hunk_16_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS3_10VectorExecEEESB_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESF_EEEJSF_SF_EEEE7iterateIJNS3_12VectorReaderISF_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_:bb.a
  %.not.i.i.i.i.i28 = icmp eq i8 %i.eb, 0
  br i1 %.not.i.i.i.i.i28, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ec = add nsw i32 %i.dt, -1
  store i32 %i.ec, ptr %i.dq, align 8, !tbaa !3, !noalias !40868
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i29

bb.ac:                                            ; preds = %bb.aa
  %i.ed = atomicrmw volatile add ptr %i.dq, i32 -1 acq_rel, align 4, !noalias !40868
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i29

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i29: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i.i.i30 = phi i32 [ %i.dt, %bb.ab ], [ %i.ed, %bb.ac ]
  %i.ee = icmp eq i32 %.0.i.i.i.i.i.i30, 1
  br i1 %i.ee, label %bb.ad, label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit, !prof !38

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i29
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dp) #31, !noalias !40868
  br label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit

bb.ae:                                            ; preds = %_ZNSt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEEaSEOS4_.exit
  %i.ef = load ptr, ptr %2, align 16, !tbaa !1145, !noalias !40868
  %.not.i.i.i = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i, label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit, label %bb.af, !prof !596

bb.af:                                            ; preds = %bb.ae
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %2), !noalias !40868
  br label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit

_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEEaSEOS4_.exit, %bb.x, %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i29, %bb.ad, %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !40868
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !40868
  %.pre = load i32, ptr %8, align 8, !tbaa !39249
  %.pre78 = load ptr, ptr %i.aj, align 8
  br label %.noexc10

bb.ag:                                            ; preds = %.noexc25, %bb.q, %bb.p
  %i.eg = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !40868
  call void @_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #31, !noalias !40868
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !40868
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !40868
  br label %.body

.noexc10:                                         ; preds = %.noexc7, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit
  %i.eh = phi ptr [ %.sroa.2.0.copyload.i.i, %.noexc7 ], [ %.pre78, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit ]
  %i.ei = phi i32 [ %i.bz, %.noexc7 ], [ %.pre, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31, !noalias !40868
  %i.ej = load ptr, ptr %i.cn, align 8, !tbaa !38376, !noalias !40868
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31, !noalias !40868
  %i.ek = icmp ult i32 %i.ei, 13
  %i.el = select i1 %i.ek, ptr %i.ap, ptr %i.eh
  %i.em = zext i32 %i.ei to i64
  store i64 %i.em, ptr %6, align 8, !noalias !40868
  store ptr %i.el, ptr %i.aq, align 8, !noalias !40868
  invoke void @_ZNK8facebook5velox9functions17DateTimeFormatter5parseERKSt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.folly::Expected.14860") align 8 %5, ptr noundef nonnull align 8 dereferenceable(44) %i.ej, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %.noexc11 unwind label %bb.az

.noexc11:                                         ; preds = %.noexc10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31, !noalias !40868
  %i.en = load i8, ptr %i.ar, align 8, !tbaa !40139, !noalias !40868
  switch i8 %i.en, label %.invoke [
    i8 2, label %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit
    i8 1, label %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit
  ], !prof !4660

_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit: ; preds = %.noexc11
  %i.eo = load ptr, ptr %5, align 16, !tbaa !1145 ; 4 uses
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %.noexc.thread, label %bb.ah

bb.ah:                                            ; preds = %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit
  %i.eq = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34
          to label %.noexc33 unwind label %bb.an  ; 6 uses

.noexc33:                                         ; preds = %bb.ah
  %i.er = load i8, ptr %i.eo, align 8, !tbaa !1148
  store i8 %i.er, ptr %i.eq, align 8, !tbaa !1148
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 8 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 24 ; 3 uses
  store ptr %i.eu, ptr %i.es, align 8, !tbaa !37
  %i.ev = load ptr, ptr %i.et, align 8, !tbaa !7  ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !16 ; 8 uses
  %i.ey = icmp ugt i64 %i.ex, 15
  br i1 %i.ey, label %bb.ai, label %._crit_edge.i.i.i.i

bb.ai:                                            ; preds = %.noexc33
  %i.ez = icmp slt i64 %i.ex, 0
  br i1 %i.ez, label %.noexc.i.i.i, label %bb.aj

.noexc.i.i.i:                                     ; preds = %bb.ai
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #36
          to label %.noexc.i32 unwind label %bb.am

.noexc.i32:                                       ; preds = %.noexc.i.i.i
  unreachable

bb.aj:                                            ; preds = %bb.ai
  %i.fa = add nuw i64 %i.ex, 1                    ; 2 uses
  %i.fb = icmp slt i64 %i.fa, 0
  br i1 %i.fb, label %.noexc6.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !38

.noexc6.i.i.i:                                    ; preds = %bb.aj
  invoke void @_ZSt17__throw_bad_allocv() #36
          to label %.noexc6.i unwind label %bb.am

.noexc6.i:                                        ; preds = %.noexc6.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.aj
  %i.fc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fa) #34
          to label %.noexc7.i unwind label %bb.am ; 2 uses

.noexc7.i:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.fc, ptr %i.es, align 8, !tbaa !7
  store i64 %i.ex, ptr %i.eu, align 8, !tbaa !26
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc7.i, %.noexc33
  %i.fd = phi ptr [ %i.fc, %.noexc7.i ], [ %i.eu, %.noexc33 ] ; 3 uses
  switch i64 %i.ex, label %bb.al [
    i64 1, label %bb.ak
    i64 0, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm1EKNS1_12VectorReaderISB_EEJNS0_10StringViewEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit
  ]

bb.ak:                                            ; preds = %._crit_edge.i.i.i.i
  %i.fe = load i8, ptr %i.ev, align 1, !tbaa !26
  store i8 %i.fe, ptr %i.fd, align 1, !tbaa !26
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm1EKNS1_12VectorReaderISB_EEJNS0_10StringViewEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit

bb.al:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fd, ptr align 1 %i.ev, i64 %i.ex, i1 false)
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm1EKNS1_12VectorReaderISB_EEJNS0_10StringViewEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %.noexc6.i.i.i, %.noexc.i.i.i
  %i.ff = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @_ZdlPvm(ptr noundef nonnull %i.eq, i64 noundef 40) #35
  br label %.body34

bb.an:                                            ; preds = %.invoke, %bb.aq, %bb.ah, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit
  %i.fg = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body34

.body34:                                          ; preds = %bb.am, %bb.an
  %eh.lpad-body35 = phi { ptr, i32 } [ %i.fg, %bb.an ], [ %i.ff, %bb.am ]
  %i.fh = load i8, ptr %i.ar, align 8, !tbaa !40139
  %cond.i.i = icmp ne i8 %i.fh, 2
  %i.fi = load ptr, ptr %5, align 16
  %.not.i.i.i36 = icmp eq ptr %i.fi, null
  %or.cond.i.i = select i1 %cond.i.i, i1 true, i1 %.not.i.i.i36, !prof !1429
  br i1 %or.cond.i.i, label %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit, label %bb.ao, !prof !1429

bb.ao:                                            ; preds = %.body34
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %5)
  br label %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit

_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit: ; preds = %.body34, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !40868
  br label %.body

_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit: ; preds = %.noexc11
  %i.fj = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !40546, !noalias !40868
  invoke void @_ZN8facebook5velox9Timestamp5toGMTERKNS0_2tz8TimeZoneE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(50) %i.fk)
          to label %bb.ap unwind label %bb.an, !noalias !40868

bb.ap:                                            ; preds = %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit
  %i.fl = load i8, ptr %i.ar, align 8, !tbaa !40139, !noalias !40868
  switch i8 %i.fl, label %.invoke [
    i8 1, label %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit41
    i8 2, label %bb.aq
  ], !prof !4156

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIN8facebook5velox6StatusEEEJRKS5_EEEvDpT0_(ptr noundef nonnull align 8 dereferenceable(32) %5) #18
          to label %.noexc39 unwind label %bb.an

.noexc39:                                         ; preds = %bb.aq
  unreachable

.invoke:                                          ; preds = %bb.ap, %.noexc11
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #18
          to label %.cont unwind label %bb.an

.cont:                                            ; preds = %.invoke
  unreachable

_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit41: ; preds = %bb.ap
  %i.fm = load <2 x i64>, ptr %5, align 16
  br label %.noexc.thread

.noexc.thread:                                    ; preds = %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit41
  %i.fn = phi <2 x i64> [ zeroinitializer, %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit ], [ %i.fm, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit41 ]
  store ptr null, ptr %9, align 8, !tbaa !1145
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !40868
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31, !noalias !40862
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31, !noalias !40859
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_12VectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSN_bSO_.exit.i

_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm1EKNS1_12VectorReaderISB_EEJNS0_10StringViewEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.ak, %bb.al
  %i.fo = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store i64 %i.ex, ptr %i.fo, align 8, !tbaa !16
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.ex
  store i8 0, ptr %i.fp, align 1, !tbaa !26
  store ptr %i.eq, ptr %9, align 8, !tbaa !1145
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %5)
  %.pre79 = load ptr, ptr %9, align 8, !tbaa !1145
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !40868
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31, !noalias !40862
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31, !noalias !40859
  %i.fq = icmp eq ptr %.pre79, null
  br i1 %i.fq, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_12VectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSN_bSO_.exit.i, label %bb.ar, !prof !40593

bb.ar:                                            ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm1EKNS1_12VectorReaderISB_EEJNS0_10StringViewEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit
  %i.fr = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !40871, !nonnull !476, !align !580
  invoke void @_ZN8facebook5velox6StatusC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.as unwind label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 48
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !40563, !nonnull !476, !align !580
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %i.fu, i32 noundef %i.bg, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit unwind label %bb.av

_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit: ; preds = %bb.as
  %i.fv = load ptr, ptr %10, align 8, !tbaa !1145
  %.not.i = icmp eq ptr %i.fv, null
  br i1 %.not.i, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_12VectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit, label %bb.at, !prof !596

bb.at:                                            ; preds = %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_12VectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit

bb.au:                                            ; preds = %bb.ar
  %i.fw = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook5velox6StatusD2Ev.exit48

bb.av:                                            ; preds = %bb.as
  %i.fx = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.fy = load ptr, ptr %10, align 8, !tbaa !1145
  %.not.i47 = icmp eq ptr %i.fy, null
  br i1 %.not.i47, label %_ZN8facebook5velox6StatusD2Ev.exit48, label %bb.aw, !prof !596

bb.aw:                                            ; preds = %bb.av
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %_ZN8facebook5velox6StatusD2Ev.exit48

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_12VectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSN_bSO_.exit.i: ; preds = %.noexc.thread, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm1EKNS1_12VectorReaderISB_EEJNS0_10StringViewEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit
  %i.fz = phi <2 x i64> [ %i.fn, %.noexc.thread ], [ zeroinitializer, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm1EKNS1_12VectorReaderISB_EEJNS0_10StringViewEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit ]
  %i.ga = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !40872, !nonnull !476, !align !580
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !40873, !nonnull !476, !align !580
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !1686
  %i.gf = getelementptr inbounds [16 x i8], ptr %i.ge, i64 %indvars.iv
  store <2 x i64> %i.fz, ptr %i.gf, align 8, !tbaa !536
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_12VectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit

_ZN8facebook5velox6StatusD2Ev.exit48:             ; preds = %bb.aw, %bb.av, %bb.au
  %.pn.i4 = phi { ptr, i32 } [ %i.fw, %bb.au ], [ %i.fx, %bb.av ], [ %i.fx, %bb.aw ]
  %i.gg = load ptr, ptr %9, align 8, !tbaa !1145
  %.not.i50 = icmp eq ptr %i.gg, null
  br i1 %.not.i50, label %_ZN8facebook5velox6StatusD2Ev.exit51, label %bb.ax, !prof !596

bb.ax:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit48
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %_ZN8facebook5velox6StatusD2Ev.exit51

_ZN8facebook5velox6StatusD2Ev.exit51:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit48, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %.body

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_12VectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit: ; preds = %bb.at, %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_12VectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSN_bSO_.exit.i
  %i.gh = load ptr, ptr %9, align 8, !tbaa !1145
  %.not.i52 = icmp eq ptr %i.gh, null
  br i1 %.not.i52, label %_ZN8facebook5velox6StatusD2Ev.exit53, label %bb.ay, !prof !596

bb.ay:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_12VectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %_ZN8facebook5velox6StatusD2Ev.exit53

_ZN8facebook5velox6StatusD2Ev.exit53:             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_12VectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESD_EEEJSD_SD_EEEE7iterateIJNS1_12VectorReaderISD_EESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit

bb.az:                                            ; preds = %.noexc10, %.noexc8
  %i.gi = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body

.body:                                            ; preds = %bb.az, %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit, %bb.ag, %_ZN8facebook5velox6StatusD2Ev.exit51
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i4, %_ZN8facebook5velox6StatusD2Ev.exit51 ], [ %i.gi, %bb.az ], [ %eh.lpad-body35, %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit ], [ %i.eg, %bb.ag ] ; 3 uses
  %i.gj = extractvalue { ptr, i32 } %eh.lpad-body, 0 ; 2 uses
  %i.gk = extractvalue { ptr, i32 } %eh.lpad-body, 1 ; 2 uses
  %i.gl = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #31
  %i.gm = icmp eq i32 %i.gk, %i.gl
  br i1 %i.gm, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %.body
  %i.gn = call ptr @__cxa_begin_catch(ptr %i.gj) #31
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !1579 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 144
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !7  ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 152
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !16
  %i.gu = icmp eq i64 %i.gt, 4
  br i1 %i.gu, label %.lr.ph.i.i.i.preheader.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader.i.preheader:               ; preds = %bb.ba
  %i.gv = load i8, ptr %i.gr, align 1, !tbaa !26
  %or.cond.not.i.i.i = icmp eq i8 %i.gv, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.preheader.i.preheader
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gr, i64 1
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !26
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.gx, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gr, i64 2
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !26
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.gz, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gr, i64 3
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !26
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.hb, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %12) #31
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.at, i32 noundef %i.bg, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.bi unwind label %bb.bk

.loopexit:                                        ; preds = %bb.ba, %.lr.ph.i.i.i.preheader.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #36
          to label %bb.bo unwind label %bb.bh

bb.bb:                                            ; preds = %.body
  %i.hc = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #31
  %i.hd = icmp eq i32 %i.gk, %i.hc
  br i1 %i.hd, label %bb.bc, label %.loopexit62

bb.bc:                                            ; preds = %bb.bb
  %i.he = call ptr @__cxa_begin_catch(ptr %i.gj) #31 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %11) #31
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.at, i32 noundef %i.bg, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.bd unwind label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %i.hf = load ptr, ptr %11, align 8, !tbaa !772
  %.not.i54 = icmp eq ptr %i.hf, null
  br i1 %.not.i54, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #31
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.bd, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESD_EEEJSD_SD_EEEE7iterateIJNS1_12VectorReaderISD_EESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit

bb.bf:                                            ; preds = %bb.bc
  %i.hg = landingpad { ptr, i32 }
          cleanup
  %i.hh = load ptr, ptr %11, align 8, !tbaa !772
  %.not.i55 = icmp eq ptr %i.hh, null
  br i1 %.not.i55, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit56, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #31
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit56

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit56: ; preds = %bb.bf, %bb.bg
end_hunk_16
begin_hunk_17_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS3_10VectorExecEEESB_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESF_EEEJSF_SF_EEEE7iterateIJNS3_12VectorReaderISF_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim:bb.a
  %.not.i.i.i.i.i34 = icmp eq i8 %i.di, 0
  br i1 %.not.i.i.i.i.i34, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dj = add nsw i32 %i.da, -1
  store i32 %i.dj, ptr %i.cx, align 8, !tbaa !3, !noalias !40889
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i35

bb.v:                                             ; preds = %bb.t
  %i.dk = atomicrmw volatile add ptr %i.cx, i32 -1 acq_rel, align 4, !noalias !40889
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i35

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i35: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i.i36 = phi i32 [ %i.da, %bb.u ], [ %i.dk, %bb.v ]
  %i.dl = icmp eq i32 %.0.i.i.i.i.i.i36, 1
  br i1 %i.dl, label %bb.w, label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit, !prof !38

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i35
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cw) #31, !noalias !40889
  br label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit

bb.x:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEEaSEOS4_.exit
  %i.dm = load ptr, ptr %3, align 16, !tbaa !1145, !noalias !40889
  %.not.i.i.i = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i, label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit, label %bb.y, !prof !596

bb.y:                                             ; preds = %bb.x
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %3), !noalias !40889
  br label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit

_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEEaSEOS4_.exit, %bb.q, %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i35, %bb.w, %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !40889
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !40889
  %.pre = load i32, ptr %9, align 8, !tbaa !39249
  %.pre80 = load ptr, ptr %i.o, align 8
  br label %.noexc17

bb.z:                                             ; preds = %.noexc31, %bb.j, %bb.i
  %i.dn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !40889
  call void @_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #31, !noalias !40889
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !40889
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !40889
  br label %.body

.noexc17:                                         ; preds = %.noexc14, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit
  %i.do = phi ptr [ %.sroa.2.0.copyload.i.i, %.noexc14 ], [ %.pre80, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit ]
  %i.dp = phi i32 [ %i.bg, %.noexc14 ], [ %.pre, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31, !noalias !40889
  %i.dq = load ptr, ptr %i.bu, align 8, !tbaa !38376, !noalias !40889
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31, !noalias !40889
  %i.dr = icmp ult i32 %i.dp, 13
  %i.ds = select i1 %i.dr, ptr %i.u, ptr %i.do
  %i.dt = zext i32 %i.dp to i64
  store i64 %i.dt, ptr %7, align 8, !noalias !40889
  store ptr %i.ds, ptr %i.v, align 8, !noalias !40889
  invoke void @_ZNK8facebook5velox9functions17DateTimeFormatter5parseERKSt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.folly::Expected.14860") align 8 %6, ptr noundef nonnull align 8 dereferenceable(44) %i.dq, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %.noexc18 unwind label %bb.as

.noexc18:                                         ; preds = %.noexc17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31, !noalias !40889
  %i.du = load i8, ptr %i.w, align 8, !tbaa !40139, !noalias !40889
  switch i8 %i.du, label %.invoke [
    i8 2, label %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit
    i8 1, label %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit
  ], !prof !4660

_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit: ; preds = %.noexc18
  %i.dv = load ptr, ptr %6, align 16, !tbaa !1145 ; 4 uses
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %.noexc.thread, label %bb.aa

bb.aa:                                            ; preds = %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit
  %i.dx = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34
          to label %.noexc39 unwind label %bb.ag  ; 6 uses

.noexc39:                                         ; preds = %bb.aa
  %i.dy = load i8, ptr %i.dv, align 8, !tbaa !1148
  store i8 %i.dy, ptr %i.dx, align 8, !tbaa !1148
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 8 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 24 ; 3 uses
  store ptr %i.eb, ptr %i.dz, align 8, !tbaa !37
  %i.ec = load ptr, ptr %i.ea, align 8, !tbaa !7  ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !16 ; 8 uses
  %i.ef = icmp ugt i64 %i.ee, 15
  br i1 %i.ef, label %bb.ab, label %._crit_edge.i.i.i.i

bb.ab:                                            ; preds = %.noexc39
  %i.eg = icmp slt i64 %i.ee, 0
  br i1 %i.eg, label %.noexc.i.i.i, label %bb.ac

.noexc.i.i.i:                                     ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #36
          to label %.noexc.i38 unwind label %bb.af

.noexc.i38:                                       ; preds = %.noexc.i.i.i
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.eh = add nuw i64 %i.ee, 1                    ; 2 uses
  %i.ei = icmp slt i64 %i.eh, 0
  br i1 %i.ei, label %.noexc6.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !38

.noexc6.i.i.i:                                    ; preds = %bb.ac
  invoke void @_ZSt17__throw_bad_allocv() #36
          to label %.noexc6.i unwind label %bb.af

.noexc6.i:                                        ; preds = %.noexc6.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.ac
  %i.ej = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eh) #34
          to label %.noexc7.i unwind label %bb.af ; 2 uses

.noexc7.i:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.ej, ptr %i.dz, align 8, !tbaa !7
  store i64 %i.ee, ptr %i.eb, align 8, !tbaa !26
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc7.i, %.noexc39
  %i.ek = phi ptr [ %i.ej, %.noexc7.i ], [ %i.eb, %.noexc39 ] ; 3 uses
  switch i64 %i.ee, label %bb.ae [
    i64 1, label %bb.ad
    i64 0, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm1EKNS1_12VectorReaderISB_EEJNS0_10StringViewEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit
  ]

bb.ad:                                            ; preds = %._crit_edge.i.i.i.i
  %i.el = load i8, ptr %i.ec, align 1, !tbaa !26
  store i8 %i.el, ptr %i.ek, align 1, !tbaa !26
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm1EKNS1_12VectorReaderISB_EEJNS0_10StringViewEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit

bb.ae:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ek, ptr align 1 %i.ec, i64 %i.ee, i1 false)
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm1EKNS1_12VectorReaderISB_EEJNS0_10StringViewEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %.noexc6.i.i.i, %.noexc.i.i.i
  %i.em = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @_ZdlPvm(ptr noundef nonnull %i.dx, i64 noundef 40) #35
  br label %.body40

bb.ag:                                            ; preds = %.invoke, %bb.aj, %bb.aa, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit
  %i.en = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body40

.body40:                                          ; preds = %bb.af, %bb.ag
  %eh.lpad-body41 = phi { ptr, i32 } [ %i.en, %bb.ag ], [ %i.em, %bb.af ]
  %i.eo = load i8, ptr %i.w, align 8, !tbaa !40139
  %cond.i.i = icmp ne i8 %i.eo, 2
  %i.ep = load ptr, ptr %6, align 16
  %.not.i.i.i42 = icmp eq ptr %i.ep, null
  %or.cond.i.i = select i1 %cond.i.i, i1 true, i1 %.not.i.i.i42, !prof !1429
  br i1 %or.cond.i.i, label %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit, label %bb.ah, !prof !1429

bb.ah:                                            ; preds = %.body40
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %6)
  br label %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit

_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit: ; preds = %.body40, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31, !noalias !40889
  br label %.body

_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit: ; preds = %.noexc18
  %i.eq = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !40546, !noalias !40889
  invoke void @_ZN8facebook5velox9Timestamp5toGMTERKNS0_2tz8TimeZoneE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(50) %i.er)
          to label %bb.ai unwind label %bb.ag, !noalias !40889

bb.ai:                                            ; preds = %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit
  %i.es = load i8, ptr %i.w, align 8, !tbaa !40139, !noalias !40889
  switch i8 %i.es, label %.invoke [
    i8 1, label %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit47
    i8 2, label %bb.aj
  ], !prof !4156

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIN8facebook5velox6StatusEEEJRKS5_EEEvDpT0_(ptr noundef nonnull align 8 dereferenceable(32) %6) #18
          to label %.noexc45 unwind label %bb.ag

.noexc45:                                         ; preds = %bb.aj
  unreachable

.invoke:                                          ; preds = %bb.ai, %.noexc18
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #18
          to label %.cont unwind label %bb.ag

.cont:                                            ; preds = %.invoke
  unreachable

_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit47: ; preds = %bb.ai
  %i.et = load <2 x i64>, ptr %6, align 16
  br label %.noexc.thread

.noexc.thread:                                    ; preds = %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit47
  %i.eu = phi <2 x i64> [ zeroinitializer, %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit ], [ %i.et, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit47 ]
  store ptr null, ptr %10, align 8, !tbaa !1145
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31, !noalias !40889
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31, !noalias !40883
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31, !noalias !40880
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_12VectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSN_bSO_.exit.i

_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm1EKNS1_12VectorReaderISB_EEJNS0_10StringViewEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.ad, %bb.ae
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  store i64 %i.ee, ptr %i.ev, align 8, !tbaa !16
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ee
  store i8 0, ptr %i.ew, align 1, !tbaa !26
  store ptr %i.dx, ptr %10, align 8, !tbaa !1145
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %6)
  %.pre81 = load ptr, ptr %10, align 8, !tbaa !1145
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31, !noalias !40889
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31, !noalias !40883
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31, !noalias !40880
  %i.ex = icmp eq ptr %.pre81, null
  br i1 %i.ex, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_12VectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSN_bSO_.exit.i, label %bb.ak, !prof !40593

bb.ak:                                            ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm1EKNS1_12VectorReaderISB_EEJNS0_10StringViewEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !40871, !nonnull !476, !align !580
  invoke void @_ZN8facebook5velox6StatusC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.al unwind label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 48
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !40563, !nonnull !476, !align !580
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %i.fb, i32 noundef %i.z, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit unwind label %bb.ao

_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit: ; preds = %bb.al
  %i.fc = load ptr, ptr %11, align 8, !tbaa !1145
  %.not.i = icmp eq ptr %i.fc, null
  br i1 %.not.i, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_12VectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit, label %bb.am, !prof !596

bb.am:                                            ; preds = %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %11)
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_12VectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit

bb.an:                                            ; preds = %bb.ak
  %i.fd = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook5velox6StatusD2Ev.exit54

bb.ao:                                            ; preds = %bb.al
  %i.fe = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.ff = load ptr, ptr %11, align 8, !tbaa !1145
  %.not.i53 = icmp eq ptr %i.ff, null
  br i1 %.not.i53, label %_ZN8facebook5velox6StatusD2Ev.exit54, label %bb.ap, !prof !596

bb.ap:                                            ; preds = %bb.ao
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %11)
  br label %_ZN8facebook5velox6StatusD2Ev.exit54

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_12VectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSN_bSO_.exit.i: ; preds = %.noexc.thread, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm1EKNS1_12VectorReaderISB_EEJNS0_10StringViewEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit
  %i.fg = phi <2 x i64> [ %i.eu, %.noexc.thread ], [ zeroinitializer, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm1EKNS1_12VectorReaderISB_EEJNS0_10StringViewEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit ]
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !40872, !nonnull !476, !align !580
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !40873, !nonnull !476, !align !580
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !1686
  %i.fm = getelementptr inbounds [16 x i8], ptr %i.fl, i64 %i.ad
  store <2 x i64> %i.fg, ptr %i.fm, align 8, !tbaa !536
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_12VectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit

_ZN8facebook5velox6StatusD2Ev.exit54:             ; preds = %bb.ap, %bb.ao, %bb.an
  %.pn.i11 = phi { ptr, i32 } [ %i.fd, %bb.an ], [ %i.fe, %bb.ao ], [ %i.fe, %bb.ap ]
  %i.fn = load ptr, ptr %10, align 8, !tbaa !1145
  %.not.i56 = icmp eq ptr %i.fn, null
  br i1 %.not.i56, label %_ZN8facebook5velox6StatusD2Ev.exit57, label %bb.aq, !prof !596

bb.aq:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit54
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %_ZN8facebook5velox6StatusD2Ev.exit57

_ZN8facebook5velox6StatusD2Ev.exit57:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit54, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %.body

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_12VectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit: ; preds = %bb.am, %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_12VectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSN_bSO_.exit.i
  %i.fo = load ptr, ptr %10, align 8, !tbaa !1145
  %.not.i58 = icmp eq ptr %i.fo, null
  br i1 %.not.i58, label %_ZN8facebook5velox6StatusD2Ev.exit59, label %bb.ar, !prof !596

bb.ar:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_12VectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %_ZN8facebook5velox6StatusD2Ev.exit59

_ZN8facebook5velox6StatusD2Ev.exit59:             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_12VectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESD_EEEJSD_SD_EEEE7iterateIJNS1_12VectorReaderISD_EESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit

bb.as:                                            ; preds = %.noexc17, %.noexc15
  %i.fp = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body

.body:                                            ; preds = %bb.as, %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit, %bb.z, %_ZN8facebook5velox6StatusD2Ev.exit57
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i11, %_ZN8facebook5velox6StatusD2Ev.exit57 ], [ %i.fp, %bb.as ], [ %eh.lpad-body41, %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit ], [ %i.dn, %bb.z ] ; 3 uses
  %i.fq = extractvalue { ptr, i32 } %eh.lpad-body, 0 ; 2 uses
  %i.fr = extractvalue { ptr, i32 } %eh.lpad-body, 1 ; 2 uses
  %i.fs = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #31
  %i.ft = icmp eq i32 %i.fr, %i.fs
  br i1 %i.ft, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.body
  %i.fu = call ptr @__cxa_begin_catch(ptr %i.fq) #31
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !1579 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 144
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !7  ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 152
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !16
  %i.gb = icmp eq i64 %i.ga, 4
  br i1 %i.gb, label %.lr.ph.i.i.i.preheader.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader.i.preheader:               ; preds = %bb.at
  %i.gc = load i8, ptr %i.fy, align 1, !tbaa !26
  %or.cond.not.i.i.i = icmp eq i8 %i.gc, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.preheader.i.preheader
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 1
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !26
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.ge, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fy, i64 2
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !26
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.gg, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fy, i64 3
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !26
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.gi, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %13) #31
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.aa, i32 noundef %i.z, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.bb unwind label %bb.bd

.loopexit:                                        ; preds = %bb.at, %.lr.ph.i.i.i.preheader.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #36
          to label %bb.bh unwind label %bb.ba

bb.au:                                            ; preds = %.body
  %i.gj = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #31
  %i.gk = icmp eq i32 %i.fr, %i.gj
  br i1 %i.gk, label %bb.av, label %.loopexit68

bb.av:                                            ; preds = %bb.au
  %i.gl = call ptr @__cxa_begin_catch(ptr %i.fq) #31 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %12) #31
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.aa, i32 noundef %i.z, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.aw unwind label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.gm = load ptr, ptr %12, align 8, !tbaa !772
  %.not.i60 = icmp eq ptr %i.gm, null
  br i1 %.not.i60, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #31
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESD_EEEJSD_SD_EEEE7iterateIJNS1_12VectorReaderISD_EESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit

bb.ay:                                            ; preds = %bb.av
  %i.gn = landingpad { ptr, i32 }
          cleanup
  %i.go = load ptr, ptr %12, align 8, !tbaa !772
  %.not.i61 = icmp eq ptr %i.go, null
  br i1 %.not.i61, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit62, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #31
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit62

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit62: ; preds = %bb.ay, %bb.az
end_hunk_17
begin_hunk_18_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS3_10VectorExecEEESB_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESF_EEEJSF_SF_EEEE7iterateIJNS3_12VectorReaderISF_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi:bb.a
  %.not.i.i.i.i.i57 = icmp eq i8 %i.dt, 0
  br i1 %.not.i.i.i.i.i57, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.du = add nsw i32 %i.dl, -1
  store i32 %i.du, ptr %i.di, align 8, !tbaa !3, !noalias !40905
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i58

bb.w:                                             ; preds = %bb.u
  %i.dv = atomicrmw volatile add ptr %i.di, i32 -1 acq_rel, align 4, !noalias !40905
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i58

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i58: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i59 = phi i32 [ %i.dl, %bb.v ], [ %i.dv, %bb.w ]
  %i.dw = icmp eq i32 %.0.i.i.i.i.i.i59, 1
  br i1 %i.dw, label %bb.x, label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit, !prof !38

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i58
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dh) #31, !noalias !40905
  br label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit

bb.y:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEEaSEOS4_.exit
  %i.dx = load ptr, ptr %2, align 16, !tbaa !1145, !noalias !40905
  %.not.i.i.i = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i, label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit, label %bb.z, !prof !596

bb.z:                                             ; preds = %bb.y
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %2), !noalias !40905
  br label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit

_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEEaSEOS4_.exit, %bb.r, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i58, %bb.x, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !40905
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !40905
  %.pre = load i32, ptr %8, align 8, !tbaa !39249
  %.pre215 = load ptr, ptr %i.ac, align 8
  br label %.noexc40

bb.aa:                                            ; preds = %.noexc54, %bb.k, %bb.j
  %i.dy = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !40905
  call void @_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #31, !noalias !40905
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !40905
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !40905
  br label %.body42

.noexc40:                                         ; preds = %.noexc37, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit
  %i.dz = phi ptr [ %.sroa.2.0.copyload.i.i, %.noexc37 ], [ %.pre215, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit ]
  %i.ea = phi i32 [ %i.br, %.noexc37 ], [ %.pre, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31, !noalias !40905
  %i.eb = load ptr, ptr %i.cf, align 8, !tbaa !38376, !noalias !40905
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31, !noalias !40905
  %i.ec = icmp ult i32 %i.ea, 13
  %i.ed = select i1 %i.ec, ptr %i.ai, ptr %i.dz
  %i.ee = zext i32 %i.ea to i64
  store i64 %i.ee, ptr %6, align 8, !noalias !40905
  store ptr %i.ed, ptr %i.aj, align 8, !noalias !40905
  invoke void @_ZNK8facebook5velox9functions17DateTimeFormatter5parseERKSt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.folly::Expected.14860") align 8 %5, ptr noundef nonnull align 8 dereferenceable(44) %i.eb, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %.noexc41 unwind label %bb.at

.noexc41:                                         ; preds = %.noexc40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31, !noalias !40905
  %i.ef = load i8, ptr %i.ak, align 8, !tbaa !40139, !noalias !40905
  switch i8 %i.ef, label %.invoke [
    i8 2, label %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit
    i8 1, label %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit
  ], !prof !4660

_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit: ; preds = %.noexc41
  %i.eg = load ptr, ptr %5, align 16, !tbaa !1145 ; 4 uses
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit74.thread, label %bb.ab

bb.ab:                                            ; preds = %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit
  %i.ei = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34
          to label %.noexc62 unwind label %bb.ah  ; 6 uses

.noexc62:                                         ; preds = %bb.ab
  %i.ej = load i8, ptr %i.eg, align 8, !tbaa !1148
  store i8 %i.ej, ptr %i.ei, align 8, !tbaa !1148
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 24 ; 3 uses
  store ptr %i.em, ptr %i.ek, align 8, !tbaa !37
  %i.en = load ptr, ptr %i.el, align 8, !tbaa !7  ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !16 ; 8 uses
  %i.eq = icmp ugt i64 %i.ep, 15
  br i1 %i.eq, label %bb.ac, label %._crit_edge.i.i.i.i

bb.ac:                                            ; preds = %.noexc62
  %i.er = icmp slt i64 %i.ep, 0
  br i1 %i.er, label %.noexc.i.i.i, label %bb.ad

.noexc.i.i.i:                                     ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #36
          to label %.noexc.i61 unwind label %bb.ag

.noexc.i61:                                       ; preds = %.noexc.i.i.i
  unreachable

bb.ad:                                            ; preds = %bb.ac
  %i.es = add nuw i64 %i.ep, 1                    ; 2 uses
  %i.et = icmp slt i64 %i.es, 0
  br i1 %i.et, label %.noexc6.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !38

.noexc6.i.i.i:                                    ; preds = %bb.ad
  invoke void @_ZSt17__throw_bad_allocv() #36
          to label %.noexc6.i unwind label %bb.ag

.noexc6.i:                                        ; preds = %.noexc6.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.ad
  %i.eu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.es) #34
          to label %.noexc7.i unwind label %bb.ag ; 2 uses

.noexc7.i:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.eu, ptr %i.ek, align 8, !tbaa !7
  store i64 %i.ep, ptr %i.em, align 8, !tbaa !26
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc7.i, %.noexc62
  %i.ev = phi ptr [ %i.eu, %.noexc7.i ], [ %i.em, %.noexc62 ] ; 3 uses
  switch i64 %i.ep, label %bb.af [
    i64 1, label %bb.ae
    i64 0, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm1EKNS1_12VectorReaderISB_EEJNS0_10StringViewEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit.i
  ]

bb.ae:                                            ; preds = %._crit_edge.i.i.i.i
  %i.ew = load i8, ptr %i.en, align 1, !tbaa !26
  store i8 %i.ew, ptr %i.ev, align 1, !tbaa !26
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm1EKNS1_12VectorReaderISB_EEJNS0_10StringViewEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit.i

bb.af:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ev, ptr align 1 %i.en, i64 %i.ep, i1 false)
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm1EKNS1_12VectorReaderISB_EEJNS0_10StringViewEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit.i

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %.noexc6.i.i.i, %.noexc.i.i.i
  %i.ex = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @_ZdlPvm(ptr noundef nonnull %i.ei, i64 noundef 40) #35
  br label %.body63

bb.ah:                                            ; preds = %.invoke, %bb.ak, %bb.ab, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit
  %i.ey = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body63

.body63:                                          ; preds = %bb.ag, %bb.ah
  %eh.lpad-body64 = phi { ptr, i32 } [ %i.ey, %bb.ah ], [ %i.ex, %bb.ag ]
  %i.ez = load i8, ptr %i.ak, align 8, !tbaa !40139
  %cond.i.i = icmp ne i8 %i.ez, 2
  %i.fa = load ptr, ptr %5, align 16
  %.not.i.i.i65 = icmp eq ptr %i.fa, null
  %or.cond.i.i = select i1 %cond.i.i, i1 true, i1 %.not.i.i.i65, !prof !1429
  br i1 %or.cond.i.i, label %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit, label %bb.ai, !prof !1429

bb.ai:                                            ; preds = %.body63
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %5)
  br label %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit

_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit: ; preds = %.body63, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !40905
  br label %.body42

_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit: ; preds = %.noexc41
  %i.fb = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !40546, !noalias !40905
  invoke void @_ZN8facebook5velox9Timestamp5toGMTERKNS0_2tz8TimeZoneE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(50) %i.fc)
          to label %bb.aj unwind label %bb.ah, !noalias !40905

bb.aj:                                            ; preds = %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit
  %i.fd = load i8, ptr %i.ak, align 8, !tbaa !40139, !noalias !40905
  switch i8 %i.fd, label %.invoke [
    i8 1, label %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit70
    i8 2, label %bb.ak
  ], !prof !4156

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIN8facebook5velox6StatusEEEJRKS5_EEEvDpT0_(ptr noundef nonnull align 8 dereferenceable(32) %5) #18
          to label %.noexc68 unwind label %bb.ah

.noexc68:                                         ; preds = %bb.ak
  unreachable

.invoke:                                          ; preds = %bb.aj, %.noexc41
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #18
          to label %.cont unwind label %bb.ah

.cont:                                            ; preds = %.invoke
  unreachable

_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit70: ; preds = %bb.aj
  %i.fe = load <2 x i64>, ptr %5, align 16
  br label %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit74.thread

_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit74.thread: ; preds = %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit70
  %i.ff = phi <2 x i64> [ zeroinitializer, %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit ], [ %i.fe, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit70 ]
  store ptr null, ptr %9, align 8, !tbaa !1145
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !40905
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31, !noalias !40899
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31, !noalias !40896
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_12VectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clImS9_EEDaSN_bSO_.exit.i

_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm1EKNS1_12VectorReaderISB_EEJNS0_10StringViewEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit.i: ; preds = %._crit_edge.i.i.i.i, %bb.ae, %bb.af
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  store i64 %i.ep, ptr %i.fg, align 8, !tbaa !16
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.ep
  store i8 0, ptr %i.fh, align 1, !tbaa !26
  store ptr %i.ei, ptr %9, align 8, !tbaa !1145
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %5)
  %.pre216 = load ptr, ptr %9, align 8, !tbaa !1145
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !40905
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31, !noalias !40899
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31, !noalias !40896
  %i.fi = icmp eq ptr %.pre216, null
  br i1 %i.fi, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_12VectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clImS9_EEDaSN_bSO_.exit.i, label %bb.al, !prof !40593

bb.al:                                            ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm1EKNS1_12VectorReaderISB_EEJNS0_10StringViewEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !40871, !nonnull !476, !align !580
  invoke void @_ZN8facebook5velox6StatusC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 48
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !40563, !nonnull !476, !align !580
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %i.fm, i32 noundef %i.at, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit unwind label %bb.ap

_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit: ; preds = %bb.am
  %i.fn = load ptr, ptr %10, align 8, !tbaa !1145
  %.not.i = icmp eq ptr %i.fn, null
  br i1 %.not.i, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_12VectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSN_.exit, label %bb.an, !prof !596

bb.an:                                            ; preds = %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_12VectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSN_.exit

bb.ao:                                            ; preds = %bb.al
  %i.fo = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook5velox6StatusD2Ev.exit77

bb.ap:                                            ; preds = %bb.am
  %i.fp = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.fq = load ptr, ptr %10, align 8, !tbaa !1145
  %.not.i76 = icmp eq ptr %i.fq, null
  br i1 %.not.i76, label %_ZN8facebook5velox6StatusD2Ev.exit77, label %bb.aq, !prof !596

bb.aq:                                            ; preds = %bb.ap
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %_ZN8facebook5velox6StatusD2Ev.exit77

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_12VectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clImS9_EEDaSN_bSO_.exit.i: ; preds = %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit74.thread, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm1EKNS1_12VectorReaderISB_EEJNS0_10StringViewEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit.i
  %i.fr = phi <2 x i64> [ %i.ff, %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit74.thread ], [ zeroinitializer, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm1EKNS1_12VectorReaderISB_EEJNS0_10StringViewEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit.i ]
  %i.fs = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !40872, !nonnull !476, !align !580
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !40873, !nonnull !476, !align !580
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !1686
  %i.fx = getelementptr inbounds nuw [16 x i8], ptr %i.fw, i64 %.0197
  store <2 x i64> %i.fr, ptr %i.fx, align 8, !tbaa !536
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_12VectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSN_.exit

_ZN8facebook5velox6StatusD2Ev.exit77:             ; preds = %bb.aq, %bb.ap, %bb.ao
  %.pn.i29 = phi { ptr, i32 } [ %i.fo, %bb.ao ], [ %i.fp, %bb.ap ], [ %i.fp, %bb.aq ]
  %i.fy = load ptr, ptr %9, align 8, !tbaa !1145
  %.not.i79 = icmp eq ptr %i.fy, null
  br i1 %.not.i79, label %_ZN8facebook5velox6StatusD2Ev.exit80, label %bb.ar, !prof !596

bb.ar:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit77
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %_ZN8facebook5velox6StatusD2Ev.exit80

_ZN8facebook5velox6StatusD2Ev.exit80:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit77, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %.body42

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_12VectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSN_.exit: ; preds = %bb.an, %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_12VectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clImS9_EEDaSN_bSO_.exit.i
  %i.fz = load ptr, ptr %9, align 8, !tbaa !1145
  %.not.i81 = icmp eq ptr %i.fz, null
  br i1 %.not.i81, label %_ZN8facebook5velox6StatusD2Ev.exit82, label %bb.as, !prof !596

bb.as:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_12VectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSN_.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %_ZN8facebook5velox6StatusD2Ev.exit82

_ZN8facebook5velox6StatusD2Ev.exit82:             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_12VectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSN_.exit, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESD_EEEJSD_SD_EEEE7iterateIJNS1_12VectorReaderISD_EESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clImEEDaSP_.exit

bb.at:                                            ; preds = %.noexc40, %.noexc38
  %i.ga = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body42

.body42:                                          ; preds = %bb.aa, %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit, %_ZN8facebook5velox6StatusD2Ev.exit80, %bb.at
  %eh.lpad-body43 = phi { ptr, i32 } [ %i.ga, %bb.at ], [ %.pn.i29, %_ZN8facebook5velox6StatusD2Ev.exit80 ], [ %eh.lpad-body64, %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit ], [ %i.dy, %bb.aa ] ; 3 uses
  %i.gb = extractvalue { ptr, i32 } %eh.lpad-body43, 0 ; 2 uses
  %i.gc = extractvalue { ptr, i32 } %eh.lpad-body43, 1 ; 2 uses
  %i.gd = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #31
  %i.ge = icmp eq i32 %i.gc, %i.gd
  br i1 %i.ge, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.body42
  %i.gf = call ptr @__cxa_begin_catch(ptr %i.gb) #31
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !1579 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 144
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !7  ; 4 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 152
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !16
  %i.gm = icmp eq i64 %i.gl, 4
  br i1 %i.gm, label %.lr.ph.i.i.i.preheader.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader.i.preheader:               ; preds = %bb.au
  %i.gn = load i8, ptr %i.gj, align 1, !tbaa !26
  %or.cond.not.i.i.i = icmp eq i8 %i.gn, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.preheader.i.preheader
  %i.go = getelementptr inbounds nuw i8, ptr %i.gj, i64 1
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !26
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.gp, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gj, i64 2
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !26
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.gr, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gj, i64 3
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !26
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.gt, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %12) #31
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.al, i32 noundef %i.at, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.bc unwind label %bb.be

.loopexit:                                        ; preds = %bb.au, %.lr.ph.i.i.i.preheader.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #36
          to label %bb.bi unwind label %bb.bb

bb.av:                                            ; preds = %.body42
  %i.gu = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #31
  %i.gv = icmp eq i32 %i.gc, %i.gu
  br i1 %i.gv, label %bb.aw, label %common.resume

bb.aw:                                            ; preds = %bb.av
  %i.gw = call ptr @__cxa_begin_catch(ptr %i.gb) #31 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %11) #31
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.al, i32 noundef %i.at, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.ax unwind label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.gx = load ptr, ptr %11, align 8, !tbaa !772
  %.not.i83 = icmp eq ptr %i.gx, null
  br i1 %.not.i83, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #31
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESD_EEEJSD_SD_EEEE7iterateIJNS1_12VectorReaderISD_EESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clImEEDaSP_.exit

bb.az:                                            ; preds = %bb.aw
  %i.gy = landingpad { ptr, i32 }
          cleanup
  %i.gz = load ptr, ptr %11, align 8, !tbaa !772
  %.not.i84 = icmp eq ptr %i.gz, null
  br i1 %.not.i84, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit85, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #31
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit85

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit85: ; preds = %bb.az, %bb.ba
end_hunk_18
begin_hunk_19_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS3_10VectorExecEEESB_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESF_EEEJSF_SF_EEEE7iterateIJNS3_12VectorReaderISF_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi:bb.a
  %.not.i.i.i.i.i117 = icmp eq i8 %i.kt, 0
  br i1 %.not.i.i.i.i.i117, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ku = add nsw i32 %i.kl, -1
  store i32 %i.ku, ptr %i.ki, align 8, !tbaa !3, !noalias !40918
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i118

bb.cd:                                            ; preds = %bb.cb
  %i.kv = atomicrmw volatile add ptr %i.ki, i32 -1 acq_rel, align 4, !noalias !40918
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i118

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i118: ; preds = %bb.cd, %bb.cc
  %.0.i.i.i.i.i.i119 = phi i32 [ %i.kl, %bb.cc ], [ %i.kv, %bb.cd ]
  %i.kw = icmp eq i32 %.0.i.i.i.i.i.i119, 1
  br i1 %i.kw, label %bb.ce, label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit120, !prof !38

bb.ce:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i118
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kh) #31, !noalias !40918
  br label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit120

bb.cf:                                            ; preds = %_ZNSt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEEaSEOS4_.exit114
  %i.kx = load ptr, ptr %13, align 16, !tbaa !1145, !noalias !40918
  %.not.i.i.i115 = icmp eq ptr %i.kx, null
  br i1 %.not.i.i.i115, label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit120, label %bb.cg, !prof !596

bb.cg:                                            ; preds = %bb.cf
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %13), !noalias !40918
  br label %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit120

_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit120: ; preds = %_ZNSt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEEaSEOS4_.exit114, %bb.by, %bb.ca, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i118, %bb.ce, %bb.cf, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31, !noalias !40918
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31, !noalias !40918
  %.pre217 = load i32, ptr %19, align 8, !tbaa !39249
  %.pre218 = load ptr, ptr %i.n, align 8
  br label %.noexc23

bb.ch:                                            ; preds = %.noexc107, %bb.br, %bb.bq
  %i.ky = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31, !noalias !40918
  call void @_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %13) #31, !noalias !40918
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31, !noalias !40918
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31, !noalias !40918
  br label %.body

.noexc23:                                         ; preds = %.noexc20, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit120
  %i.kz = phi ptr [ %.sroa.2.0.copyload.i.i94, %.noexc20 ], [ %.pre218, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit120 ]
  %i.la = phi i32 [ %i.ir, %.noexc20 ], [ %.pre217, %_ZN5folly15expected_detail15ExpectedStorageISt10shared_ptrIN8facebook5velox9functions17DateTimeFormatterEENS4_6StatusELNS0_11StorageTypeE2EED2Ev.exit120 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31, !noalias !40918
  %i.lb = load ptr, ptr %i.jf, align 8, !tbaa !38376, !noalias !40918
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31, !noalias !40918
  %i.lc = icmp ult i32 %i.la, 13
  %i.ld = select i1 %i.lc, ptr %i.t, ptr %i.kz
  %i.le = zext i32 %i.la to i64
  store i64 %i.le, ptr %17, align 8, !noalias !40918
  store ptr %i.ld, ptr %i.u, align 8, !noalias !40918
  invoke void @_ZNK8facebook5velox9functions17DateTimeFormatter5parseERKSt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.folly::Expected.14860") align 8 %16, ptr noundef nonnull align 8 dereferenceable(44) %i.lb, ptr noundef nonnull align 8 dereferenceable(16) %17)
          to label %.noexc24 unwind label %bb.da

.noexc24:                                         ; preds = %.noexc23
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31, !noalias !40918
  %i.lf = load i8, ptr %i.v, align 8, !tbaa !40139, !noalias !40918
  switch i8 %i.lf, label %.invoke272 [
    i8 2, label %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit124
    i8 1, label %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit143
  ], !prof !4660

_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit124: ; preds = %.noexc24
  %i.lg = load ptr, ptr %16, align 16, !tbaa !1145 ; 4 uses
  %i.lh = icmp eq ptr %i.lg, null
  br i1 %i.lh, label %.noexc.thread, label %bb.ci

bb.ci:                                            ; preds = %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit124
  %i.li = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34
          to label %.noexc133 unwind label %bb.co ; 6 uses

.noexc133:                                        ; preds = %bb.ci
  %i.lj = load i8, ptr %i.lg, align 8, !tbaa !1148
  store i8 %i.lj, ptr %i.li, align 8, !tbaa !1148
  %i.lk = getelementptr inbounds nuw i8, ptr %i.li, i64 8 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %i.lm = getelementptr inbounds nuw i8, ptr %i.li, i64 24 ; 3 uses
  store ptr %i.lm, ptr %i.lk, align 8, !tbaa !37
  %i.ln = load ptr, ptr %i.ll, align 8, !tbaa !7  ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lg, i64 16
  %i.lp = load i64, ptr %i.lo, align 8, !tbaa !16 ; 8 uses
  %i.lq = icmp ugt i64 %i.lp, 15
  br i1 %i.lq, label %bb.cj, label %._crit_edge.i.i.i.i125

bb.cj:                                            ; preds = %.noexc133
  %i.lr = icmp slt i64 %i.lp, 0
  br i1 %i.lr, label %.noexc.i.i.i131, label %bb.ck

.noexc.i.i.i131:                                  ; preds = %bb.cj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #36
          to label %.noexc.i132 unwind label %bb.cn

.noexc.i132:                                      ; preds = %.noexc.i.i.i131
  unreachable

bb.ck:                                            ; preds = %bb.cj
  %i.ls = add nuw i64 %i.lp, 1                    ; 2 uses
  %i.lt = icmp slt i64 %i.ls, 0
  br i1 %i.lt, label %.noexc6.i.i.i129, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i127, !prof !38

.noexc6.i.i.i129:                                 ; preds = %bb.ck
  invoke void @_ZSt17__throw_bad_allocv() #36
          to label %.noexc6.i130 unwind label %bb.cn

.noexc6.i130:                                     ; preds = %.noexc6.i.i.i129
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i127: ; preds = %bb.ck
  %i.lu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ls) #34
          to label %.noexc7.i128 unwind label %bb.cn ; 2 uses

.noexc7.i128:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i127
  store ptr %i.lu, ptr %i.lk, align 8, !tbaa !7
  store i64 %i.lp, ptr %i.lm, align 8, !tbaa !26
  br label %._crit_edge.i.i.i.i125

._crit_edge.i.i.i.i125:                           ; preds = %.noexc7.i128, %.noexc133
  %i.lv = phi ptr [ %i.lu, %.noexc7.i128 ], [ %i.lm, %.noexc133 ] ; 3 uses
  switch i64 %i.lp, label %bb.cm [
    i64 1, label %bb.cl
    i64 0, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm1EKNS1_12VectorReaderISB_EEJNS0_10StringViewEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit
  ]

bb.cl:                                            ; preds = %._crit_edge.i.i.i.i125
  %i.lw = load i8, ptr %i.ln, align 1, !tbaa !26
  store i8 %i.lw, ptr %i.lv, align 1, !tbaa !26
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm1EKNS1_12VectorReaderISB_EEJNS0_10StringViewEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit

bb.cm:                                            ; preds = %._crit_edge.i.i.i.i125
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.lv, ptr align 1 %i.ln, i64 %i.lp, i1 false)
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm1EKNS1_12VectorReaderISB_EEJNS0_10StringViewEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit

bb.cn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i127, %.noexc6.i.i.i129, %.noexc.i.i.i131
  %i.lx = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @_ZdlPvm(ptr noundef nonnull %i.li, i64 noundef 40) #35
  br label %.body134

bb.co:                                            ; preds = %.invoke272, %bb.cr, %bb.ci, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit143
  %i.ly = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body134

.body134:                                         ; preds = %bb.cn, %bb.co
  %eh.lpad-body135 = phi { ptr, i32 } [ %i.ly, %bb.co ], [ %i.lx, %bb.cn ]
  %i.lz = load i8, ptr %i.v, align 8, !tbaa !40139
  %cond.i.i137 = icmp ne i8 %i.lz, 2
  %i.ma = load ptr, ptr %16, align 16
  %.not.i.i.i138 = icmp eq ptr %i.ma, null
  %or.cond.i.i139 = select i1 %cond.i.i137, i1 true, i1 %.not.i.i.i138, !prof !1429
  br i1 %or.cond.i.i139, label %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit140, label %bb.cp, !prof !1429

bb.cp:                                            ; preds = %.body134
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %16)
  br label %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit140

_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit140: ; preds = %.body134, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31, !noalias !40918
  br label %.body

_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit143: ; preds = %.noexc24
  %i.mb = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !40546, !noalias !40918
  invoke void @_ZN8facebook5velox9Timestamp5toGMTERKNS0_2tz8TimeZoneE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(50) %i.mc)
          to label %bb.cq unwind label %bb.co, !noalias !40918

bb.cq:                                            ; preds = %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit143
  %i.md = load i8, ptr %i.v, align 8, !tbaa !40139, !noalias !40918
  switch i8 %i.md, label %.invoke272 [
    i8 1, label %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit146
    i8 2, label %bb.cr
  ], !prof !4156

bb.cr:                                            ; preds = %bb.cq
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIN8facebook5velox6StatusEEEJRKS5_EEEvDpT0_(ptr noundef nonnull align 8 dereferenceable(32) %16) #18
          to label %.noexc144 unwind label %bb.co

.noexc144:                                        ; preds = %bb.cr
  unreachable

.invoke272:                                       ; preds = %bb.cq, %.noexc24
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #18
          to label %.cont273 unwind label %bb.co

.cont273:                                         ; preds = %.invoke272
  unreachable

_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit146: ; preds = %bb.cq
  %i.me = load <2 x i64>, ptr %16, align 16
  br label %.noexc.thread

.noexc.thread:                                    ; preds = %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit124, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit146
  %i.mf = phi <2 x i64> [ zeroinitializer, %_ZNR5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEE5errorEv.exit124 ], [ %i.me, %_ZN5folly8ExpectedIN8facebook5velox9functions14DateTimeResultENS2_6StatusEEptEv.exit146 ]
  store ptr null, ptr %20, align 8, !tbaa !1145
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31, !noalias !40918
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31, !noalias !40912
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #31, !noalias !40909
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_12VectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSN_bSO_.exit.i

_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm1EKNS1_12VectorReaderISB_EEJNS0_10StringViewEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit: ; preds = %._crit_edge.i.i.i.i125, %bb.cl, %bb.cm
  %i.mg = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  store i64 %i.lp, ptr %i.mg, align 8, !tbaa !16
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.lp
  store i8 0, ptr %i.mh, align 1, !tbaa !26
  store ptr %i.li, ptr %20, align 8, !tbaa !1145
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %16)
  %.pre219 = load ptr, ptr %20, align 8, !tbaa !1145
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31, !noalias !40918
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31, !noalias !40912
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #31, !noalias !40909
  %i.mi = icmp eq ptr %.pre219, null
  br i1 %i.mi, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_12VectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSN_bSO_.exit.i, label %bb.cs, !prof !40593

bb.cs:                                            ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm1EKNS1_12VectorReaderISB_EEJNS0_10StringViewEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit
  %i.mj = getelementptr inbounds nuw i8, ptr %i.hm, i64 24
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !40871, !nonnull !476, !align !580
  invoke void @_ZN8facebook5velox6StatusC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.ct unwind label %bb.cv

bb.ct:                                            ; preds = %bb.cs
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 48
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !40563, !nonnull !476, !align !580
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %i.mm, i32 noundef %i.hk, ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit152 unwind label %bb.cw

_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit152: ; preds = %bb.ct
  %i.mn = load ptr, ptr %21, align 8, !tbaa !1145
  %.not.i153 = icmp eq ptr %i.mn, null
  br i1 %.not.i153, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_12VectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit, label %bb.cu, !prof !596

bb.cu:                                            ; preds = %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit152
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %21)
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_12VectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit

bb.cv:                                            ; preds = %bb.cs
  %i.mo = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook5velox6StatusD2Ev.exit156

bb.cw:                                            ; preds = %bb.ct
  %i.mp = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.mq = load ptr, ptr %21, align 8, !tbaa !1145
  %.not.i155 = icmp eq ptr %i.mq, null
  br i1 %.not.i155, label %_ZN8facebook5velox6StatusD2Ev.exit156, label %bb.cx, !prof !596

bb.cx:                                            ; preds = %bb.cw
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %21)
  br label %_ZN8facebook5velox6StatusD2Ev.exit156

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_12VectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSN_bSO_.exit.i: ; preds = %.noexc.thread, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm1EKNS1_12VectorReaderISB_EEJNS0_10StringViewEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit
  %i.mr = phi <2 x i64> [ %i.mf, %.noexc.thread ], [ zeroinitializer, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE14doApplyNotNullILm1EKNS1_12VectorReaderISB_EEJNS0_10StringViewEETnNSt9enable_ifIXneT_L_ZNSD_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRS9_RbRT0_DpRKT1_.exit ]
  %i.ms = getelementptr inbounds nuw i8, ptr %i.hm, i64 32
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !40872, !nonnull !476, !align !580
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 16
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !40873, !nonnull !476, !align !580
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !1686
  %i.mx = getelementptr inbounds [16 x i8], ptr %i.mw, i64 %i.ho
  store <2 x i64> %i.mr, ptr %i.mx, align 8, !tbaa !536
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_12VectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit

_ZN8facebook5velox6StatusD2Ev.exit156:            ; preds = %bb.cx, %bb.cw, %bb.cv
  %.pn.i17 = phi { ptr, i32 } [ %i.mo, %bb.cv ], [ %i.mp, %bb.cw ], [ %i.mp, %bb.cx ]
  %i.my = load ptr, ptr %20, align 8, !tbaa !1145
  %.not.i159 = icmp eq ptr %i.my, null
  br i1 %.not.i159, label %_ZN8facebook5velox6StatusD2Ev.exit160, label %bb.cy, !prof !596

bb.cy:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit156
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %20)
  br label %_ZN8facebook5velox6StatusD2Ev.exit160

_ZN8facebook5velox6StatusD2Ev.exit160:            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit156, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #31
  br label %.body

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_12VectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit: ; preds = %bb.cu, %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit152, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_12VectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_bT0_E_clIiS9_EEDaSN_bSO_.exit.i
  %i.mz = load ptr, ptr %20, align 8, !tbaa !1145
  %.not.i161 = icmp eq ptr %i.mz, null
  br i1 %.not.i161, label %_ZN8facebook5velox6StatusD2Ev.exit162, label %bb.cz, !prof !596

bb.cz:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_12VectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %20)
  br label %_ZN8facebook5velox6StatusD2Ev.exit162

_ZN8facebook5velox6StatusD2Ev.exit162:            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESB_EEEJSB_SB_EEEE7iterateIJNS1_12VectorReaderISB_EESH_EEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESD_EEEJSD_SD_EEEE7iterateIJNS1_12VectorReaderISD_EESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit

bb.da:                                            ; preds = %.noexc23, %.noexc21
  %i.na = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body

.body:                                            ; preds = %bb.da, %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit140, %bb.ch, %_ZN8facebook5velox6StatusD2Ev.exit160
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i17, %_ZN8facebook5velox6StatusD2Ev.exit160 ], [ %i.na, %bb.da ], [ %eh.lpad-body135, %_ZN5folly15expected_detail15ExpectedStorageIN8facebook5velox9functions14DateTimeResultENS3_6StatusELNS0_11StorageTypeE2EED2Ev.exit140 ], [ %i.ky, %bb.ch ] ; 3 uses
  %i.nb = extractvalue { ptr, i32 } %eh.lpad-body, 0 ; 2 uses
  %i.nc = extractvalue { ptr, i32 } %eh.lpad-body, 1 ; 2 uses
  %i.nd = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #31
  %i.ne = icmp eq i32 %i.nc, %i.nd
  br i1 %i.ne, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %.body
  %i.nf = call ptr @__cxa_begin_catch(ptr %i.nb) #31
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !1579 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 144
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !7  ; 4 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nh, i64 152
  %i.nl = load i64, ptr %i.nk, align 8, !tbaa !16
  %i.nm = icmp eq i64 %i.nl, 4
  br i1 %i.nm, label %.lr.ph.i.i.i.preheader.i163.preheader, label %.loopexit183

.lr.ph.i.i.i.preheader.i163.preheader:            ; preds = %bb.db
  %i.nn = load i8, ptr %i.nj, align 1, !tbaa !26
  %or.cond.not.i.i.i165 = icmp eq i8 %i.nn, 85
  br i1 %or.cond.not.i.i.i165, label %tailrecurse.i.i.i.i166, label %.loopexit183

tailrecurse.i.i.i.i166:                           ; preds = %.lr.ph.i.i.i.preheader.i163.preheader
  %i.no = getelementptr inbounds nuw i8, ptr %i.nj, i64 1
  %i.np = load i8, ptr %i.no, align 1, !tbaa !26
  %or.cond.not.i.i.i165.1 = icmp eq i8 %i.np, 83
  br i1 %or.cond.not.i.i.i165.1, label %tailrecurse.i.i.i.i166.1, label %.loopexit183

tailrecurse.i.i.i.i166.1:                         ; preds = %tailrecurse.i.i.i.i166
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nj, i64 2
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !26
  %or.cond.not.i.i.i165.2 = icmp eq i8 %i.nr, 69
  br i1 %or.cond.not.i.i.i165.2, label %tailrecurse.i.i.i.i166.2, label %.loopexit183

tailrecurse.i.i.i.i166.2:                         ; preds = %tailrecurse.i.i.i.i166.1
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nj, i64 3
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !26
  %or.cond.not.i.i.i165.3 = icmp eq i8 %i.nt, 82
  br i1 %or.cond.not.i.i.i165.3, label %tailrecurse.i.i.i.i166.3, label %.loopexit183

tailrecurse.i.i.i.i166.3:                         ; preds = %tailrecurse.i.i.i.i166.2
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #31
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %23) #31
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.hl, i32 noundef %i.hk, ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.dj unwind label %bb.dl

.loopexit183:                                     ; preds = %bb.db, %.lr.ph.i.i.i.preheader.i163.preheader, %tailrecurse.i.i.i.i166, %tailrecurse.i.i.i.i166.1, %tailrecurse.i.i.i.i166.2
  invoke void @__cxa_rethrow() #36
          to label %bb.dp unwind label %bb.di

bb.dc:                                            ; preds = %.body
  %i.nu = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #31
  %i.nv = icmp eq i32 %i.nc, %i.nu
  br i1 %i.nv, label %bb.dd, label %common.resume

bb.dd:                                            ; preds = %bb.dc
  %i.nw = call ptr @__cxa_begin_catch(ptr %i.nb) #31 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #31
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %22) #31
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.hl, i32 noundef %i.hk, ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.de unwind label %bb.dg

bb.de:                                            ; preds = %bb.dd
  %i.nx = load ptr, ptr %22, align 8, !tbaa !772
  %.not.i168 = icmp eq ptr %i.nx, null
  br i1 %.not.i168, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit169, label %bb.df

bb.df:                                            ; preds = %bb.de
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %22) #31
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit169

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit169: ; preds = %bb.de, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #31
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17DateParseFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_7VarcharESD_EEEJSD_SD_EEEE7iterateIJNS1_12VectorReaderISD_EESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit

bb.dg:                                            ; preds = %bb.dd
  %i.ny = landingpad { ptr, i32 }
          cleanup
  %i.nz = load ptr, ptr %22, align 8, !tbaa !772
  %.not.i170 = icmp eq ptr %i.nz, null
  br i1 %.not.i170, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit171, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %22) #31
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit171

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit171: ; preds = %bb.dg, %bb.dh
end_hunk_19
