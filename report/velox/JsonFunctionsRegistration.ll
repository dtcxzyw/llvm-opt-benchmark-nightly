inline.NumInlined: 34235
inline.NumDeleted: 5823
begin_hunk_0_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEESD_EEEJSH_SD_EEEE8applyUdfIZNKSK_7iterateIJNS3_20ConstantVectorReaderISH_EENSN_ISD_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSL_IS10_EEvSR_SV_EUlSV_E0_EEvRKS1_SV_SX_EUlSV_E_EEvSV_:bb.a
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !26
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.fs, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fm, i64 2
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !26
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.fu, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fm, i64 3
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !26
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.fw, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  %i.fx = load ptr, ptr %i.be, align 8, !tbaa !1921, !nonnull !126, !align !247
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !1922, !nonnull !126, !align !247
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  invoke void @_ZN8facebook5velox4exec12VectorWriterINS0_7VarcharEvE10commitNullEv(ptr noundef nonnull align 8 dereferenceable(112) %i.fz)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEES9_EEEJSD_S9_EEEE8applyUdfIZNKSG_7iterateIJNS1_20ConstantVectorReaderISD_EENSJ_IS9_EEEEEvRNSG_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSN_SR_ENKUlSR_E0_clIiEEDaSR_.exit unwind label %.loopexit57

.loopexit:                                        ; preds = %bb.am, %.lr.ph.i.i.i.preheader.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #36
          to label %bb.bb unwind label %.loopexit.split-lp

bb.an:                                            ; preds = %.body
  %i.ga = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #31
  %i.gb = icmp eq i32 %i.ff, %i.ga
  br i1 %i.gb, label %bb.ao, label %.loopexit55

bb.ao:                                            ; preds = %bb.an
  %i.gc = call ptr @__cxa_begin_catch(ptr %i.fe) #31 ; 0 uses
  %i.gd = load ptr, ptr %i.be, align 8, !tbaa !1921, !nonnull !126, !align !247
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !1922, !nonnull !126, !align !247
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  invoke void @_ZN8facebook5velox4exec12VectorWriterINS0_7VarcharEvE10commitNullEv(ptr noundef nonnull align 8 dereferenceable(112) %i.gf)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEES9_EEEJSD_S9_EEEE8applyUdfIZNKSG_7iterateIJNS1_20ConstantVectorReaderISD_EENSJ_IS9_EEEEEvRNSG_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSN_SR_ENKUlSR_E0_clIiEEDaSR_.exit7 unwind label %bb.ar

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEES9_EEEJSD_S9_EEEE8applyUdfIZNKSG_7iterateIJNS1_20ConstantVectorReaderISD_EENSJ_IS9_EEEEEvRNSG_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSN_SR_ENKUlSR_E0_clIiEEDaSR_.exit7: ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %10) #31
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %.pre, i32 noundef %.064, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.ap unwind label %bb.as

bb.ap:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEES9_EEEJSD_S9_EEEE8applyUdfIZNKSG_7iterateIJNS1_20ConstantVectorReaderISD_EENSJ_IS9_EEEEEvRNSG_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSN_SR_ENKUlSR_E0_clIiEEDaSR_.exit7
  %i.gg = load ptr, ptr %10, align 8, !tbaa !439
  %.not.i44 = icmp eq ptr %i.gg, null
  br i1 %.not.i44, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #31
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEESB_EEEJSF_SB_EEEE8applyUdfIZNKSI_7iterateIJNS1_20ConstantVectorReaderISF_EENSL_ISB_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_EUlST_E_ZNKSJ_ISY_EEvSP_ST_EUlST_E0_EEvRKNS0_17SelectivityVectorEST_SV_ENKUlST_E_clIiEEDaST_.exit

bb.ar:                                            ; preds = %bb.ao
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.as:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEES9_EEEJSD_S9_EEEE8applyUdfIZNKSG_7iterateIJNS1_20ConstantVectorReaderISD_EENSJ_IS9_EEEEEvRNSG_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSN_SR_ENKUlSR_E0_clIiEEDaSR_.exit7
  %i.gi = landingpad { ptr, i32 }
          cleanup
  %i.gj = load ptr, ptr %10, align 8, !tbaa !439
  %.not.i45 = icmp eq ptr %i.gj, null
  br i1 %.not.i45, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit46, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #31
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit46

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit46: ; preds = %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %bb.au

bb.au:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit46, %bb.ar
  %.pn.i = phi { ptr, i32 } [ %i.gi, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit46 ], [ %i.gh, %bb.ar ]
  invoke void @__cxa_end_catch()
          to label %.loopexit55 unwind label %bb.ba

.loopexit57:                                      ; preds = %tailrecurse.i.i.i.i.3
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

.loopexit.split-lp:                               ; preds = %.loopexit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEES9_EEEJSD_S9_EEEE8applyUdfIZNKSG_7iterateIJNS1_20ConstantVectorReaderISD_EENSJ_IS9_EEEEEvRNSG_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSN_SR_ENKUlSR_E0_clIiEEDaSR_.exit: ; preds = %tailrecurse.i.i.i.i.3
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %11) #31
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %.pre, i32 noundef %.064, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEES9_EEEJSD_S9_EEEE8applyUdfIZNKSG_7iterateIJNS1_20ConstantVectorReaderISD_EENSJ_IS9_EEEEEvRNSG_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSN_SR_ENKUlSR_E0_clIiEEDaSR_.exit
  %i.gk = load ptr, ptr %11, align 8, !tbaa !439
  %.not.i47 = icmp eq ptr %i.gk, null
  br i1 %.not.i47, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit48, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #31
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit48

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit48: ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEESB_EEEJSF_SB_EEEE8applyUdfIZNKSI_7iterateIJNS1_20ConstantVectorReaderISF_EENSL_ISB_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_EUlST_E_ZNKSJ_ISY_EEvSP_ST_EUlST_E0_EEvRKNS0_17SelectivityVectorEST_SV_ENKUlST_E_clIiEEDaST_.exit

bb.ax:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEES9_EEEJSD_S9_EEEE8applyUdfIZNKSG_7iterateIJNS1_20ConstantVectorReaderISD_EENSJ_IS9_EEEEEvRNSG_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSN_SR_ENKUlSR_E0_clIiEEDaSR_.exit
  %i.gl = landingpad { ptr, i32 }
          cleanup
  %i.gm = load ptr, ptr %11, align 8, !tbaa !439
  %.not.i49 = icmp eq ptr %i.gm, null
  br i1 %.not.i49, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit50, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #31
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit50

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit50: ; preds = %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  br label %bb.az

bb.az:                                            ; preds = %.loopexit57, %.loopexit.split-lp, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit50
  %.pn16.i = phi { ptr, i32 } [ %i.gl, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit50 ], [ %lpad.loopexit, %.loopexit57 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @__cxa_end_catch()
          to label %.loopexit55 unwind label %bb.ba

.loopexit55:                                      ; preds = %bb.an, %bb.az, %bb.au
  %.merged.i = phi { ptr, i32 } [ %.pn.i, %bb.au ], [ %.pn16.i, %bb.az ], [ %eh.lpad-body, %bb.an ]
  resume { ptr, i32 } %.merged.i

bb.ba:                                            ; preds = %bb.az, %bb.au
  %i.gn = landingpad { ptr, i32 }
          catch ptr null
  %i.go = extractvalue { ptr, i32 } %i.gn, 0
  call void @__clang_call_terminate(ptr %i.go) #37
  unreachable

bb.bb:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEESB_EEEJSF_SB_EEEE8applyUdfIZNKSI_7iterateIJNS1_20ConstantVectorReaderISF_EENSL_ISB_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_EUlST_E_ZNKSJ_ISY_EEvSP_ST_EUlST_E0_EEvRKNS0_17SelectivityVectorEST_SV_ENKUlST_E_clIiEEDaST_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit43, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit48
  %i.gp = add i32 %.064, 1                        ; 2 uses
  %exitcond.not = icmp eq i32 %i.gp, %i.ag
  br i1 %exitcond.not, label %.loopexit54, label %bb.i, !llvm.loop !1924

bb.bc:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.gq = load ptr, ptr %0, align 8, !tbaa !596
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !821
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !822
  tail call void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEESD_EEEJSH_SD_EEEE8applyUdfIZNKSK_7iterateIJNS3_20ConstantVectorReaderISH_EENSN_ISD_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSL_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_EUlSV_E_EEvPKmiibSV_(ptr noundef %i.gq, i32 noundef %i.gs, i32 noundef %i.gu, i1 noundef zeroext true, ptr noundef nonnull byval(%class.anon.1046) align 8 %1)
  br label %.loopexit54

.loopexit54:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEESB_EEEJSF_SB_EEEE8applyUdfIZNKSI_7iterateIJNS1_20ConstantVectorReaderISF_EENSL_ISB_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_EUlST_E_ZNKSJ_ISY_EEvSP_ST_EUlST_E0_EEvRKNS0_17SelectivityVectorEST_SV_ENKUlST_E_clIiEEDaST_.exit, %bb.h, %bb.bc
  ret void
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN8facebook5velox9functions17SIMDJsonExtractor11getInstanceESt17basic_string_viewIcSt11char_traitsIcEE(i64, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN8facebook5velox9functions17SIMDJsonExtractor7extractIZNS1_25JsonExtractScalarFunctionINS0_4exec10VectorExecEE8callImplERNS5_12StringWriterERKNS0_10StringViewESC_EUlRT_E_EEN8simdjson10error_codeERNSG_8fallback8ondemand8documentESE_Rb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN8simdjson8fallback8ondemand8document9is_scalarEv.exit:
  %4 = alloca %"class.simdjson::fallback::ondemand::value", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !853, !noalias !1925 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !866    ; 6 uses
  %i.d = load i32, ptr %i.b, align 4, !tbaa !3
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !26
  %i.h = add i8 %i.g, -91
  %switch.and = and i8 %i.h, -33
  %switch.selectcmp.not = icmp eq i8 %switch.and, 0
  br i1 %switch.selectcmp.not, label %bb.e, label %bb.a

bb.a:                                             ; preds = %_ZN8simdjson8fallback8ondemand8document9is_scalarEv.exit
  %i.i = load ptr, ptr %0, align 8, !tbaa !1928   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1928
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = tail call noundef i32 @_ZZN8facebook5velox9functions25JsonExtractScalarFunctionINS0_4exec10VectorExecEE8callImplERNS3_12StringWriterERKNS0_10StringViewESA_ENKUlRT_E_clIN8simdjson8fallback8ondemand8documentEEEDaSC_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(56) %1)
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !1930
  switch i32 %i.o, label %bb.r [
    i32 3, label %bb.d
    i32 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  store i8 0, ptr %3, align 1, !tbaa !100
  br label %bb.r

bb.e:                                             ; preds = %_ZN8simdjson8fallback8ondemand8document9is_scalarEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1933, !noalias !1934 ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.b
  tail call void @llvm.assume(i1 %i.s), !noalias !1934
  %i.t = load i32, ptr %i.r, align 4, !tbaa !3, !noalias !1934
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !26, !noalias !1934
  switch i8 %i.w, label %bb.r [
    i8 91, label %bb.f
    i8 123, label %bb.l
  ]

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.y = load i8, ptr %i.x, align 8, !tbaa !854, !range !125, !noalias !1934, !noundef !126
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %_ZN8simdjson8fallback8ondemand8document9get_valueEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1915, !noalias !1934
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1937, !noalias !1934 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !1939, !noalias !1934 ; 3 uses
  %i.ag = icmp ne i32 %i.af, 0
  tail call void @llvm.assume(i1 %i.ag), !noalias !1934
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ai = add i32 %i.af, -1
  %i.aj = zext i32 %i.ai to i64
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !852, !noalias !1934 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.aj
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3, !noalias !1934
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !26, !noalias !1934
  %.not.i22 = icmp eq i8 %i.ap, 93
  br i1 %.not.i22, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr null, ptr %i.aa, align 8, !tbaa !1915, !noalias !1934
  store i32 0, ptr %i.p, align 4, !tbaa !1947, !noalias !1934
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 28, ptr %i.aq, align 8, !tbaa !1948, !noalias !1934
  br label %bb.r

bb.i:                                             ; preds = %bb.g
  %i.ar = zext i32 %i.af to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3, !noalias !1934
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !26, !noalias !1934
  %i.ax = icmp eq i8 %i.aw, 93
  br i1 %i.ax, label %bb.j, label %_ZN8simdjson8fallback8ondemand8document9get_valueEv.exit

bb.j:                                             ; preds = %bb.i
  %i.ay = tail call noundef zeroext i1 @_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv(ptr noundef nonnull align 8 dereferenceable(49) %1) #31, !noalias !1934
  br i1 %i.ay, label %_ZN8simdjson8fallback8ondemand8document9get_valueEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr null, ptr %i.aa, align 8, !tbaa !1915, !noalias !1934
  store i32 0, ptr %i.p, align 4, !tbaa !1947, !noalias !1934
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 28, ptr %i.az, align 8, !tbaa !1948, !noalias !1934
  br label %bb.r

bb.l:                                             ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !854, !range !125, !noalias !1934, !noundef !126
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %_ZN8simdjson8fallback8ondemand8document9get_valueEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1915, !noalias !1934
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1937, !noalias !1934 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !1939, !noalias !1934 ; 3 uses
  %i.bj = icmp ne i32 %i.bi, 0
  tail call void @llvm.assume(i1 %i.bj), !noalias !1934
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bl = add i32 %i.bi, -1
  %i.bm = zext i32 %i.bl to i64
  %i.bn = load ptr, ptr %i.bk, align 8, !tbaa !852, !noalias !1934 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bm
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !3, !noalias !1934
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !26, !noalias !1934
  %.not.i23 = icmp eq i8 %i.bs, 125
  br i1 %.not.i23, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr null, ptr %i.bd, align 8, !tbaa !1915, !noalias !1934
  store i32 0, ptr %i.p, align 4, !tbaa !1947, !noalias !1934
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 28, ptr %i.bt, align 8, !tbaa !1948, !noalias !1934
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.bu = zext i32 %i.bi to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !3, !noalias !1934
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !26, !noalias !1934
  %i.ca = icmp eq i8 %i.bz, 125
  br i1 %i.ca, label %bb.p, label %_ZN8simdjson8fallback8ondemand8document9get_valueEv.exit

bb.p:                                             ; preds = %bb.o
  %i.cb = tail call noundef zeroext i1 @_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv(ptr noundef nonnull align 8 dereferenceable(49) %1) #31, !noalias !1934
  br i1 %i.cb, label %_ZN8simdjson8fallback8ondemand8document9get_valueEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr null, ptr %i.bd, align 8, !tbaa !1915, !noalias !1934
  store i32 0, ptr %i.p, align 4, !tbaa !1947, !noalias !1934
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 28, ptr %i.cc, align 8, !tbaa !1948, !noalias !1934
  br label %bb.r

_ZN8simdjson8fallback8ondemand8document9get_valueEv.exit: ; preds = %bb.l, %bb.p, %bb.o, %bb.f, %bb.j, %bb.i
  %.sroa.0.sroa.10.2 = load ptr, ptr %i.a, align 8, !tbaa !853, !noalias !1934
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store ptr %1, ptr %4, align 8, !tbaa !1949
  %.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %.sroa.0.sroa.8.0..sroa_idx, align 8, !tbaa !3
  %.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %.sroa.0.sroa.9.0..sroa_idx, align 4
  %.sroa.0.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %.sroa.0.sroa.10.2, ptr %.sroa.0.sroa.10.0..sroa_idx, align 8, !tbaa !852
  %i.cd = call noundef i32 @_ZN8facebook5velox9functions17SIMDJsonExtractor15extractInternalIZNS1_25JsonExtractScalarFunctionINS0_4exec10VectorExecEE8callImplERNS5_12StringWriterERKNS0_10StringViewESC_EUlRT_E_EEN8simdjson10error_codeERNSG_8fallback8ondemand5valueESE_Rbm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.r

bb.r:                                             ; preds = %bb.c, %_ZN8simdjson8fallback8ondemand8document9get_valueEv.exit, %bb.n, %bb.h, %bb.k, %bb.q, %bb.e, %bb.b, %bb.d
  %.2 = phi i32 [ 0, %bb.d ], [ %i.m, %bb.b ], [ 28, %bb.n ], [ 0, %bb.c ], [ %i.cd, %_ZN8simdjson8fallback8ondemand8document9get_valueEv.exit ], [ 29, %bb.e ], [ 28, %bb.q ], [ 28, %bb.k ], [ 28, %bb.h ]
  ret i32 %.2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i32 @_ZZN8facebook5velox9functions25JsonExtractScalarFunctionINS0_4exec10VectorExecEE8callImplERNS3_12StringWriterERKNS0_10StringViewESA_ENKUlRT_E_clIN8simdjson8fallback8ondemand8documentEEEDaSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"struct.simdjson::simdjson_result.1061", align 8 ; 7 uses
  %3 = alloca %"struct.simdjson::simdjson_result.1061", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1951, !nonnull !126 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !100, !range !125, !noundef !126
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !1953, !nonnull !126, !align !247 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !306, !range !125, !noundef !126
  %i.i = trunc nuw i8 %i.h to i1
  store i8 0, ptr %i.g, align 8, !tbaa !306
  br i1 %i.i, label %bb.c, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !7    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.m = load i64, ptr %i.k, align 8, !tbaa !26
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #35
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit

bb.d:                                             ; preds = %bb.a
  store i8 1, ptr %i.c, align 1, !tbaa !100
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !853, !noalias !1954 ; 6 uses
  %i.q = load ptr, ptr %1, align 8, !tbaa !866    ; 3 uses
  %i.r = load i32, ptr %i.p, align 4, !tbaa !3    ; 3 uses
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.s ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !26
  switch i8 %i.u, label %bb.q [
    i8 123, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit
    i8 91, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit
    i8 34, label %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit
    i8 110, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit
    i8 116, label %bb.e
    i8 102, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3
  %i.x = sub i32 %i.w, %i.r
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !3
  %i.aa = sub i32 %i.z, %i.r
  %..i = tail call i32 @llvm.umin.i32(i32 %i.x, i32 %i.aa) ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1933 ; 3 uses
  %i.ad = icmp ne ptr %i.ac, %i.p                 ; 2 uses
  br i1 %i.ad, label %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !3
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.af
  br label %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit

_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit: ; preds = %bb.e, %bb.f
  %.0.i = phi ptr [ %i.ag, %bb.f ], [ %i.t, %bb.e ] ; 3 uses
  %i.ah = icmp ugt i32 %..i, 3
  br i1 %i.ah, label %bb.g, label %.thread140

bb.g:                                             ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit
  %.0.copyload.i30 = load i32, ptr %.0.i, align 1 ; 2 uses
  %.not.i = icmp eq i32 %.0.copyload.i30, 1702195828
  %i.ai = icmp ne i32 %..i, 4                     ; 2 uses
  br i1 %.not.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br i1 %i.ai, label %.thread, label %.thread142

.thread:                                          ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !26
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal24structural_or_whitespaceE, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !100, !range !125, !noundef !126
  br label %.thread140

bb.i:                                             ; preds = %bb.g
  %.not10.i = icmp eq i32 %.0.copyload.i30, 1936482662
  %or.cond = and i1 %i.ai, %.not10.i
  br i1 %or.cond, label %bb.j, label %.thread140

bb.j:                                             ; preds = %bb.i
  %i.ao = icmp eq i32 %..i, 5
  br i1 %i.ao, label %.thread142, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i, i64 5
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !26
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal24structural_or_whitespaceE, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !100, !range !125, !noundef !126
  %i.au = icmp ne i8 %i.at, 0
  br label %.thread140

.thread140:                                       ; preds = %.thread, %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit, %bb.k, %bb.i
  %i.av = phi i8 [ %i.an, %.thread ], [ 0, %bb.i ], [ 0, %bb.k ], [ 0, %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit ] ; 2 uses
  %.not12.i = phi i1 [ false, %.thread ], [ false, %bb.i ], [ %i.au, %bb.k ], [ false, %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit ]
  %i.aw = icmp ne i8 %i.av, 0
  %brmerge.i = or i1 %i.aw, %.not12.i
  br i1 %brmerge.i, label %.thread142, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit

.thread142:                                       ; preds = %bb.h, %bb.j, %.thread140
  %i.ax = phi i8 [ %i.av, %.thread140 ], [ 0, %bb.j ], [ 1, %bb.h ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1915
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1937
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !1939
  %i.be = icmp ne i32 %i.bd, 1                    ; 4 uses
  %brmerge = or i1 %i.ad, %i.be
  br i1 %brmerge, label %_ZN8simdjson8fallback8ondemand14value_iterator13get_root_boolEb.exit, label %_ZN8simdjson8fallback8ondemand14value_iterator13get_root_boolEb.exit.thread

_ZN8simdjson8fallback8ondemand14value_iterator13get_root_boolEb.exit.thread: ; preds = %.thread142
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store ptr %i.bg, ptr %i.ab, align 8, !tbaa !1933
  store i32 0, ptr %i.bf, align 4, !tbaa !1947
  br label %.thread146

_ZN8simdjson8fallback8ondemand14value_iterator13get_root_boolEb.exit: ; preds = %.thread142
  %.mux161 = select i1 %i.be, i32 31, i32 0
  %.mux = select i1 %i.be, i8 0, i8 %i.ax
  br i1 %i.be, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit, label %.thread146

.thread146:                                       ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator13get_root_boolEb.exit.thread, %_ZN8simdjson8fallback8ondemand14value_iterator13get_root_boolEb.exit
  %.sroa.096.0173 = phi i8 [ %i.ax, %_ZN8simdjson8fallback8ondemand14value_iterator13get_root_boolEb.exit.thread ], [ %.mux, %_ZN8simdjson8fallback8ondemand14value_iterator13get_root_boolEb.exit ]
  %i.bh = trunc nuw i8 %.sroa.096.0173 to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.bi = select i1 %i.bh, ptr @.str.194, ptr @.str.119
  store ptr %i.bi, ptr %i.a, align 8, !tbaa !730
  %i.bj = load ptr, ptr %0, align 8, !tbaa !1953, !nonnull !126, !align !247
  %i.bk = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIPKcEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS5_ESC_IS5_NSt5decayISF_E4typeEEEEESt16is_constructibleIS5_JSF_EESt13is_assignableIRS5_SF_EEERS6_E4typeEOSF_(ptr noundef nonnull align 8 dereferenceable(40) %i.bj, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit

_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1933, !noalias !1957 ; 3 uses
  %i.bn = icmp eq ptr %i.bm, %i.p                 ; 2 uses
  %spec.select = select i1 %i.bn, ptr %i.bm, ptr %i.p
  %.pn.in = load i32, ptr %spec.select, align 4, !tbaa !3, !noalias !1957
  %.pn = zext i32 %.pn.in to i64
  %.0.i33 = getelementptr inbounds nuw i8, ptr %i.q, i64 %.pn ; 2 uses
  %i.bo = load i8, ptr %.0.i33, align 1, !tbaa !26, !noalias !1957
  %.not.i31 = icmp eq i8 %i.bo, 34
  br i1 %.not.i31, label %bb.l, label %bb.p

bb.l:                                             ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1915, !noalias !1957
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !1937, !noalias !1957 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !1939, !noalias !1957
  %i.bv = icmp eq i32 %i.bu, 1
  br i1 %i.bv, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %i.bn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  store ptr %i.bx, ptr %i.bl, align 8, !tbaa !1933, !noalias !1957
  store i32 0, ptr %i.bw, align 4, !tbaa !1947, !noalias !1957
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i33, i64 1
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !730, !noalias !1960
  %i.cb = load ptr, ptr %i.bs, align 8, !tbaa !115, !noalias !1960
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !1960
  %i.ce = tail call noundef ptr %i.cd(ptr noundef nonnull align 8 dereferenceable(48) %i.bs, ptr noundef nonnull %i.by, ptr noundef %i.ca, i1 noundef zeroext false) #31, !noalias !1960, !inline_history !1963 ; 3 uses
  %.not.i34 = icmp eq ptr %i.ce, null
  br i1 %.not.i34, label %bb.p, label %.thread153

.thread153:                                       ; preds = %bb.o
  %i.cf = load ptr, ptr %i.bz, align 8, !tbaa !730, !noalias !1960 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16JsonSizeFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEENS0_7VarcharEEEEJSG_SH_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EENSM_ISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISV_EEvRKS1_SU_EUlSU_E_EEvSY_SU_T0_EUlSU_E_EEvSU_:bb.a

.body:                                            ; preds = %bb.w, %_ZN8simdjson13padded_stringD2Ev.exit, %_ZN8facebook5velox6StatusD2Ev.exit36
  %eh.lpad-body = phi { ptr, i32 } [ %i.cy, %_ZN8facebook5velox6StatusD2Ev.exit36 ], [ %i.dk, %bb.w ], [ %i.cc, %_ZN8simdjson13padded_stringD2Ev.exit ] ; 3 uses
  %i.dl = extractvalue { ptr, i32 } %eh.lpad-body, 0 ; 2 uses
  %i.dm = extractvalue { ptr, i32 } %eh.lpad-body, 1 ; 2 uses
  %i.dn = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #31
  %i.do = icmp eq i32 %i.dm, %i.dn
  br i1 %i.do, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.body
  %i.dp = call ptr @__cxa_begin_catch(ptr %i.dl) #31
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !874 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 144
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !7  ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 152
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !16
  %i.dw = icmp eq i64 %i.dv, 4
  br i1 %i.dw, label %.lr.ph.i.i.i.preheader.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader.i.preheader:               ; preds = %bb.x
  %i.dx = load i8, ptr %i.dt, align 1, !tbaa !26
  %or.cond.not.i.i.i = icmp eq i8 %i.dx, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.preheader.i.preheader
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dt, i64 1
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !26
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.dz, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dt, i64 2
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !26
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.eb, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dt, i64 3
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !26
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.ed, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %10) #31
  %i.ee = trunc nsw i64 %indvars.iv to i32
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %.pre, i32 noundef %i.ee, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.af unwind label %bb.ah

.loopexit:                                        ; preds = %bb.x, %.lr.ph.i.i.i.preheader.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #36
          to label %bb.al unwind label %bb.ae

bb.y:                                             ; preds = %.body
  %i.ef = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #31
  %i.eg = icmp eq i32 %i.dm, %i.ef
  br i1 %i.eg, label %bb.z, label %.loopexit53

bb.z:                                             ; preds = %bb.y
  %i.eh = call ptr @__cxa_begin_catch(ptr %i.dl) #31 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %9) #31
  %i.ei = trunc nsw i64 %indvars.iv to i32
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %.pre, i32 noundef %i.ei, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.ej = load ptr, ptr %9, align 8, !tbaa !439
  %.not.i39 = icmp eq ptr %i.ej, null
  br i1 %.not.i39, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #31
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16JsonSizeFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEENS0_7VarcharEEEEJSE_SF_EEEE7iterateIJNS1_20ConstantVectorReaderISE_EENSK_ISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit

bb.ac:                                            ; preds = %bb.z
  %i.ek = landingpad { ptr, i32 }
          cleanup
  %i.el = load ptr, ptr %9, align 8, !tbaa !439
  %.not.i40 = icmp eq ptr %i.el, null
  br i1 %.not.i40, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #31
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41: ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  invoke void @__cxa_end_catch()
          to label %.loopexit53 unwind label %bb.ak

bb.ae:                                            ; preds = %.loopexit
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.af:                                            ; preds = %tailrecurse.i.i.i.i.3
  %i.en = load ptr, ptr %10, align 8, !tbaa !439
  %.not.i42 = icmp eq ptr %i.en, null
  br i1 %.not.i42, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit43, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #31
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit43

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit43: ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16JsonSizeFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEENS0_7VarcharEEEEJSE_SF_EEEE7iterateIJNS1_20ConstantVectorReaderISE_EENSK_ISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit

bb.ah:                                            ; preds = %tailrecurse.i.i.i.i.3
  %i.eo = landingpad { ptr, i32 }
          cleanup
  %i.ep = load ptr, ptr %10, align 8, !tbaa !439
  %.not.i44 = icmp eq ptr %i.ep, null
  br i1 %.not.i44, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit45, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #31
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit45

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit45: ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit45, %bb.ae
  %.pn.i = phi { ptr, i32 } [ %i.eo, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit45 ], [ %i.em, %bb.ae ]
  invoke void @__cxa_end_catch()
          to label %.loopexit53 unwind label %bb.ak

.loopexit53:                                      ; preds = %bb.y, %bb.aj, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41
  %.merged.i = phi { ptr, i32 } [ %i.ek, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41 ], [ %.pn.i, %bb.aj ], [ %eh.lpad-body, %bb.y ]
  resume { ptr, i32 } %.merged.i

bb.ak:                                            ; preds = %bb.aj, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41
  %i.eq = landingpad { ptr, i32 }
          catch ptr null
  %i.er = extractvalue { ptr, i32 } %i.eq, 0
  call void @__clang_call_terminate(ptr %i.er) #37
  unreachable

bb.al:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16JsonSizeFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEENS0_7VarcharEEEEJSE_SF_EEEE7iterateIJNS1_20ConstantVectorReaderISE_EENSK_ISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit38, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit43
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ah, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit52, label %.noexc11, !llvm.loop !10374

bb.am:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.es = load ptr, ptr %0, align 8, !tbaa !596
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !821
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !822
  tail call void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16JsonSizeFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEENS0_7VarcharEEEEJSG_SH_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EENSM_ISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISV_EEvRKNS0_17SelectivityVectorESU_EUlSU_E_EEvSZ_SU_T0_EUlSU_E_EEvPKmiibSU_(ptr noundef %i.es, i32 noundef %i.eu, i32 noundef %i.ew, i1 noundef zeroext true, ptr noundef nonnull byval(%class.anon.3066) align 8 %1)
  br label %.loopexit52

.loopexit52:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16JsonSizeFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEENS0_7VarcharEEEEJSE_SF_EEEE7iterateIJNS1_20ConstantVectorReaderISE_EENSK_ISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit, %bb.h, %bb.am
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN8facebook5velox9functions17SIMDJsonExtractor7extractIZNS1_16JsonSizeFunctionINS0_4exec10VectorExecEE8callImplERlRKNS0_10StringViewESB_EUlRT_E_EEN8simdjson10error_codeERNSF_8fallback8ondemand8documentESD_Rb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN8simdjson8fallback8ondemand8document9is_scalarEv.exit:
  %4 = alloca %"class.simdjson::fallback::ondemand::value", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !853, !noalias !10375 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !866    ; 6 uses
  %i.d = load i32, ptr %i.b, align 4, !tbaa !3
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !26
  %i.h = add i8 %i.g, -91
  %switch.and = and i8 %i.h, -33
  %switch.selectcmp.not = icmp eq i8 %switch.and, 0
  br i1 %switch.selectcmp.not, label %bb.e, label %bb.a

bb.a:                                             ; preds = %_ZN8simdjson8fallback8ondemand8document9is_scalarEv.exit
  %i.i = load ptr, ptr %0, align 8, !tbaa !1928   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1928
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = tail call noundef i32 @_ZZN8facebook5velox9functions16JsonSizeFunctionINS0_4exec10VectorExecEE8callImplERlRKNS0_10StringViewES9_ENKUlRT_E_clIN8simdjson8fallback8ondemand8documentEEEDaSB_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(56) %1)
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !1930
  switch i32 %i.o, label %bb.r [
    i32 3, label %bb.d
    i32 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  store i8 0, ptr %3, align 1, !tbaa !100
  br label %bb.r

bb.e:                                             ; preds = %_ZN8simdjson8fallback8ondemand8document9is_scalarEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1933, !noalias !10378 ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.b
  tail call void @llvm.assume(i1 %i.s), !noalias !10378
  %i.t = load i32, ptr %i.r, align 4, !tbaa !3, !noalias !10378
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !26, !noalias !10378
  switch i8 %i.w, label %bb.r [
    i8 91, label %bb.f
    i8 123, label %bb.l
  ]

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.y = load i8, ptr %i.x, align 8, !tbaa !854, !range !125, !noalias !10378, !noundef !126
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %_ZN8simdjson8fallback8ondemand8document9get_valueEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1915, !noalias !10378
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1937, !noalias !10378 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !1939, !noalias !10378 ; 3 uses
  %i.ag = icmp ne i32 %i.af, 0
  tail call void @llvm.assume(i1 %i.ag), !noalias !10378
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ai = add i32 %i.af, -1
  %i.aj = zext i32 %i.ai to i64
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !852, !noalias !10378 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.aj
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3, !noalias !10378
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !26, !noalias !10378
  %.not.i22 = icmp eq i8 %i.ap, 93
  br i1 %.not.i22, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr null, ptr %i.aa, align 8, !tbaa !1915, !noalias !10378
  store i32 0, ptr %i.p, align 4, !tbaa !1947, !noalias !10378
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 28, ptr %i.aq, align 8, !tbaa !1948, !noalias !10378
  br label %bb.r

bb.i:                                             ; preds = %bb.g
  %i.ar = zext i32 %i.af to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3, !noalias !10378
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !26, !noalias !10378
  %i.ax = icmp eq i8 %i.aw, 93
  br i1 %i.ax, label %bb.j, label %_ZN8simdjson8fallback8ondemand8document9get_valueEv.exit

bb.j:                                             ; preds = %bb.i
  %i.ay = tail call noundef zeroext i1 @_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv(ptr noundef nonnull align 8 dereferenceable(49) %1) #31, !noalias !10378
  br i1 %i.ay, label %_ZN8simdjson8fallback8ondemand8document9get_valueEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr null, ptr %i.aa, align 8, !tbaa !1915, !noalias !10378
  store i32 0, ptr %i.p, align 4, !tbaa !1947, !noalias !10378
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 28, ptr %i.az, align 8, !tbaa !1948, !noalias !10378
  br label %bb.r

bb.l:                                             ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !854, !range !125, !noalias !10378, !noundef !126
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %_ZN8simdjson8fallback8ondemand8document9get_valueEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1915, !noalias !10378
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1937, !noalias !10378 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !1939, !noalias !10378 ; 3 uses
  %i.bj = icmp ne i32 %i.bi, 0
  tail call void @llvm.assume(i1 %i.bj), !noalias !10378
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bl = add i32 %i.bi, -1
  %i.bm = zext i32 %i.bl to i64
  %i.bn = load ptr, ptr %i.bk, align 8, !tbaa !852, !noalias !10378 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bm
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !3, !noalias !10378
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !26, !noalias !10378
  %.not.i23 = icmp eq i8 %i.bs, 125
  br i1 %.not.i23, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr null, ptr %i.bd, align 8, !tbaa !1915, !noalias !10378
  store i32 0, ptr %i.p, align 4, !tbaa !1947, !noalias !10378
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 28, ptr %i.bt, align 8, !tbaa !1948, !noalias !10378
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.bu = zext i32 %i.bi to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !3, !noalias !10378
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !26, !noalias !10378
  %i.ca = icmp eq i8 %i.bz, 125
  br i1 %i.ca, label %bb.p, label %_ZN8simdjson8fallback8ondemand8document9get_valueEv.exit

bb.p:                                             ; preds = %bb.o
  %i.cb = tail call noundef zeroext i1 @_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv(ptr noundef nonnull align 8 dereferenceable(49) %1) #31, !noalias !10378
  br i1 %i.cb, label %_ZN8simdjson8fallback8ondemand8document9get_valueEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr null, ptr %i.bd, align 8, !tbaa !1915, !noalias !10378
  store i32 0, ptr %i.p, align 4, !tbaa !1947, !noalias !10378
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 28, ptr %i.cc, align 8, !tbaa !1948, !noalias !10378
  br label %bb.r

_ZN8simdjson8fallback8ondemand8document9get_valueEv.exit: ; preds = %bb.l, %bb.p, %bb.o, %bb.f, %bb.j, %bb.i
  %.sroa.0.sroa.10.2 = load ptr, ptr %i.a, align 8, !tbaa !853, !noalias !10378
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store ptr %1, ptr %4, align 8, !tbaa !1949
  %.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %.sroa.0.sroa.8.0..sroa_idx, align 8, !tbaa !3
  %.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %.sroa.0.sroa.9.0..sroa_idx, align 4
  %.sroa.0.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %.sroa.0.sroa.10.2, ptr %.sroa.0.sroa.10.0..sroa_idx, align 8, !tbaa !852
  %i.cd = call noundef i32 @_ZN8facebook5velox9functions17SIMDJsonExtractor15extractInternalIZNS1_16JsonSizeFunctionINS0_4exec10VectorExecEE8callImplERlRKNS0_10StringViewESB_EUlRT_E_EEN8simdjson10error_codeERNSF_8fallback8ondemand5valueESD_Rbm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.r

bb.r:                                             ; preds = %bb.c, %_ZN8simdjson8fallback8ondemand8document9get_valueEv.exit, %bb.n, %bb.h, %bb.k, %bb.q, %bb.e, %bb.b, %bb.d
  %.2 = phi i32 [ 0, %bb.d ], [ %i.m, %bb.b ], [ 28, %bb.n ], [ 0, %bb.c ], [ %i.cd, %_ZN8simdjson8fallback8ondemand8document9get_valueEv.exit ], [ 29, %bb.e ], [ 28, %bb.q ], [ 28, %bb.k ], [ 28, %bb.h ]
  ret i32 %.2
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZZN8facebook5velox9functions16JsonSizeFunctionINS0_4exec10VectorExecEE8callImplERlRKNS0_10StringViewES9_ENKUlRT_E_clIN8simdjson8fallback8ondemand8documentEEEDaSB_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10381, !nonnull !126, !align !247 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !186  ; 2 uses
  %i.c = add i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !186
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %bb.b, label %.thread683

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !853, !noalias !10383 ; 13 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !866    ; 11 uses
  %i.h = load i32, ptr %i.f, align 4, !tbaa !3
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !26
  switch i8 %i.k, label %.thread683 [
    i8 123, label %bb.c
    i8 91, label %bb.y
    i8 34, label %bb.av
    i8 110, label %bb.av
    i8 116, label %bb.av
    i8 102, label %bb.av
    i8 45, label %bb.av
    i8 48, label %bb.av
    i8 49, label %bb.av
    i8 50, label %bb.av
    i8 51, label %bb.av
    i8 52, label %bb.av
    i8 53, label %bb.av
    i8 54, label %bb.av
    i8 55, label %bb.av
    i8 56, label %bb.av
    i8 57, label %bb.av
  ]

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 13 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1933, !noalias !10386 ; 4 uses
  %i.n = icmp eq ptr %i.m, %i.f
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = load i32, ptr %i.m, align 4, !tbaa !3, !noalias !10386
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !26, !noalias !10386
  %.not8.i.i76 = icmp eq i8 %i.r, 123
  br i1 %.not8.i.i76, label %bb.e, label %.thread683

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  store ptr %i.s, ptr %i.l, align 8, !tbaa !1933, !noalias !10386
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.t = phi ptr [ %i.s, %bb.e ], [ %i.m, %bb.c ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.v = load i8, ptr %i.u, align 8, !tbaa !854, !range !125, !noalias !10386, !noundef !126
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1915, !noalias !10386
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1937, !noalias !10386 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !1939, !noalias !10386 ; 3 uses
  %i.ad = icmp ne i32 %i.ac, 0
  tail call void @llvm.assume(i1 %i.ad), !noalias !10386
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.af = add i32 %i.ac, -1
  %i.ag = zext i32 %i.af to i64
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !852, !noalias !10386 ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ag
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3, !noalias !10386
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !26, !noalias !10386
  %.not.i.i77 = icmp eq i8 %i.am, 125
  br i1 %.not.i.i77, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr null, ptr %i.x, align 8, !tbaa !1915, !noalias !10386
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 0, ptr %i.an, align 4, !tbaa !1947, !noalias !10386
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 28, ptr %i.ao, align 8, !tbaa !1948, !noalias !10386
  br label %.thread683

bb.i:                                             ; preds = %bb.g
  %i.ap = zext i32 %i.ac to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !3, !noalias !10386
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !26, !noalias !10386
  %i.av = icmp eq i8 %i.au, 125
  br i1 %i.av, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.aw = tail call noundef zeroext i1 @_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv(ptr noundef nonnull align 8 dereferenceable(49) %1) #31, !noalias !10386
  br i1 %i.aw, label %._crit_edge766, label %bb.k

._crit_edge766:                                   ; preds = %bb.j
  %.pre767 = load ptr, ptr %i.l, align 8, !tbaa !1983, !noalias !10386
  %.pre768 = load ptr, ptr %1, align 8, !tbaa !866, !noalias !10386
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr null, ptr %i.x, align 8, !tbaa !1915, !noalias !10386
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 0, ptr %i.ax, align 4, !tbaa !1947, !noalias !10386
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 28, ptr %i.ay, align 8, !tbaa !1948, !noalias !10386
  br label %.thread683

bb.l:                                             ; preds = %._crit_edge766, %bb.i, %bb.f
  %i.az = phi ptr [ %.pre768, %._crit_edge766 ], [ %i.g, %bb.i ], [ %i.g, %bb.f ]
  %i.ba = phi ptr [ %.pre767, %._crit_edge766 ], [ %i.t, %bb.i ], [ %i.t, %bb.f ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.bc = icmp eq ptr %i.ba, %i.bb
  tail call void @llvm.assume(i1 %i.bc), !noalias !10386
  %i.bd = load i32, ptr %i.ba, align 4, !tbaa !3, !noalias !10386
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !26, !noalias !10386
  %i.bh = icmp eq i8 %i.bg, 125
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 10 uses
  br i1 %i.bh, label %_ZN8simdjson8fallback8ondemand6object10start_rootERNS1_14value_iteratorE.exit.thread.preheader._ZN8simdjson8fallback8ondemand6object10start_rootERNS1_14value_iteratorE.exit.thread._crit_edge_crit_edge, label %.lr.ph743

_ZN8simdjson8fallback8ondemand6object10start_rootERNS1_14value_iteratorE.exit.thread.preheader._ZN8simdjson8fallback8ondemand6object10start_rootERNS1_14value_iteratorE.exit.thread._crit_edge_crit_edge: ; preds = %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  store ptr %i.bj, ptr %i.l, align 8, !tbaa !1933, !noalias !10386
  store i32 0, ptr %i.bi, align 4, !tbaa !1947, !noalias !10386
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.phi.trans.insert771 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.pre772 = load i32, ptr %.phi.trans.insert771, align 8, !tbaa !1948
  br label %_ZN8simdjson8fallback8ondemand6object10start_rootERNS1_14value_iteratorE.exit.thread._crit_edge

.lr.ph743:                                        ; preds = %bb.l
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bn = load ptr, ptr %1, align 8               ; 6 uses
  %.promoted745 = load i32, ptr %i.bl, align 8, !tbaa !1948 ; 2 uses
  %.promoted746 = load ptr, ptr %i.bm, align 8
  %.promoted748 = load ptr, ptr %i.l, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %.promoted746, i64 8
  br label %bb.m

_ZN8simdjson8fallback8ondemand6object10start_rootERNS1_14value_iteratorE.exit.thread._crit_edge: ; preds = %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit.i, %.thread, %bb.w, %_ZN8simdjson8fallback8ondemand6object10start_rootERNS1_14value_iteratorE.exit.thread.preheader._ZN8simdjson8fallback8ondemand6object10start_rootERNS1_14value_iteratorE.exit.thread._crit_edge_crit_edge
  %i.bp = phi ptr [ %i.bk, %_ZN8simdjson8fallback8ondemand6object10start_rootERNS1_14value_iteratorE.exit.thread.preheader._ZN8simdjson8fallback8ondemand6object10start_rootERNS1_14value_iteratorE.exit.thread._crit_edge_crit_edge ], [ %i.bi, %.thread ], [ %i.bi, %bb.w ], [ %i.bi, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit.i ] ; 2 uses
  %i.bq = phi i32 [ %.pre772, %_ZN8simdjson8fallback8ondemand6object10start_rootERNS1_14value_iteratorE.exit.thread.preheader._ZN8simdjson8fallback8ondemand6object10start_rootERNS1_14value_iteratorE.exit.thread._crit_edge_crit_edge ], [ %.ph, %.thread ], [ %i.br, %bb.w ], [ %i.ea, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit.i ] ; 2 uses
  %.0607.lcssa = phi i64 [ 0, %_ZN8simdjson8fallback8ondemand6object10start_rootERNS1_14value_iteratorE.exit.thread.preheader._ZN8simdjson8fallback8ondemand6object10start_rootERNS1_14value_iteratorE.exit.thread._crit_edge_crit_edge ], [ %i.cg, %.thread ], [ %i.ch, %bb.w ], [ %i.ch, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit.i ]
  %.not.i82 = icmp eq i32 %i.bq, 0
  br i1 %.not.i82, label %bb.x, label %.thread683

bb.m:                                             ; preds = %.lr.ph743, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit.i
  %i.br = phi i32 [ %.promoted745, %.lr.ph743 ], [ %i.ea, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit.i ] ; 3 uses
  %i.bs = phi ptr [ %.promoted748, %.lr.ph743 ], [ %i.eb, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit.i ] ; 6 uses
  %i.bt = phi i32 [ %.promoted745, %.lr.ph743 ], [ %i.ed, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit.i ]
  %.0607742 = phi i64 [ 0, %.lr.ph743 ], [ %i.ch, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit.i ] ; 2 uses
  %.not.i4.i91 = icmp eq i32 %i.bt, 0
  br i1 %.not.i4.i91, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.bu = icmp ugt ptr %i.bs, %i.f
  tail call void @llvm.assume(i1 %i.bu), !noalias !10389
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 4 ; 3 uses
  store ptr %i.bv, ptr %i.l, align 8, !tbaa !1933, !noalias !10389
  %i.bw = load i32, ptr %i.bs, align 4, !tbaa !3, !noalias !10389
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !26, !noalias !10389
  %.not.i6.i = icmp eq i8 %i.bz, 34
  br i1 %.not.i6.i, label %.critedge.i.i, label %bb.o

.critedge.i.i:                                    ; preds = %bb.n
  %i.ca = icmp ugt ptr %i.bv, %i.f
  tail call void @llvm.assume(i1 %i.ca), !noalias !10389
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 3 uses
  store ptr %i.cb, ptr %i.l, align 8, !tbaa !1933, !noalias !10389
  %i.cc = load i32, ptr %i.bv, align 4, !tbaa !3, !noalias !10389
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !26, !noalias !10389
  %.not.i7.i = icmp eq i8 %i.cf, 58
  br i1 %.not.i7.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.critedge.i.i, %bb.n
  store i32 3, ptr %i.bl, align 8, !tbaa !1948, !noalias !10389
  br label %.thread

.thread:                                          ; preds = %bb.m, %bb.o
end_hunk_1
