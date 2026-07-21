inline.NumInlined: 92648
inline.NumDeleted: 25948
loop-unroll.NumCompletelyUnrolled: 437
loop-unroll.NumRuntimeUnrolled: 139
loop-unroll.NumUnrolled: 576
begin_hunk_0_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17MapAppendFunctionINS3_10VectorExecEEESB_NS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSE_INSF_ILm2EEELb0ELb0EEEEENS0_15ConstantCheckerIJSK_NS0_5ArrayISH_EENSM_ISJ_EEEEEJSK_SN_SO_EEEE8applyUdfIZNKSR_7iterateIJNS3_12VectorReaderISK_EENSU_ISN_EENSU_ISO_EEEEEvRNSR_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSZ_S13_EUlS13_E_ZNKSS_IS18_EEvSZ_S13_EUlS13_E0_EEvRKS1_S13_S15_EUlS13_E_EEvS13_:bb.a
tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eq, i64 3
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !17
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.fa, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  %i.fb = load ptr, ptr %i.ao, align 8, !tbaa !22398, !nonnull !552, !align !674
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !22399, !nonnull !552, !align !674 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !541
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 32
  %i.fg = load ptr, ptr %i.ff, align 8
  invoke void %i.fg(ptr noundef nonnull align 8 dereferenceable(264) %i.fd)
          to label %.noexc46 unwind label %.loopexit56, !inline_history !11884

.loopexit:                                        ; preds = %bb.x, %.lr.ph.i.i.i.preheader.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #42
          to label %bb.am unwind label %.loopexit.split-lp

bb.y:                                             ; preds = %.body
  %i.fh = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #34
  %i.fi = icmp eq i32 %i.ej, %i.fh
  br i1 %i.fi, label %bb.z, label %.loopexit54

bb.z:                                             ; preds = %bb.y
  %i.fj = call ptr @__cxa_begin_catch(ptr %i.ei) #34 ; 0 uses
  %i.fk = load ptr, ptr %i.ao, align 8, !tbaa !22398, !nonnull !552, !align !674
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !22399, !nonnull !552, !align !674 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !541
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  %i.fp = load ptr, ptr %i.fo, align 8
  invoke void %i.fp(ptr noundef nonnull align 8 dereferenceable(264) %i.fm)
          to label %.noexc40 unwind label %bb.ac, !inline_history !11884

.noexc40:                                         ; preds = %bb.z
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fl, i64 80
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !11875 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !954
  %i.fu = load ptr, ptr %i.fr, align 8, !tbaa !541
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 144
  %i.fw = load ptr, ptr %i.fv, align 8
  invoke void %i.fw(ptr noundef nonnull align 8 dereferenceable(94) %i.fr, i32 noundef %i.ft, i1 noundef zeroext true)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17MapAppendFunctionINS1_10VectorExecEEES7_NS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSA_INSB_ILm2EEELb0ELb0EEEEENS0_15ConstantCheckerIJSG_NS0_5ArrayISD_EENSI_ISF_EEEEEJSG_SJ_SK_EEEE8applyUdfIZNKSN_7iterateIJNS1_12VectorReaderISG_EENSQ_ISJ_EENSQ_ISK_EEEEEvRNSN_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSV_SZ_ENKUlSZ_E0_clIiEEDaSZ_.exit7 unwind label %bb.ac, !inline_history !11884

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17MapAppendFunctionINS1_10VectorExecEEES7_NS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSA_INSB_ILm2EEELb0ELb0EEEEENS0_15ConstantCheckerIJSG_NS0_5ArrayISD_EENSI_ISF_EEEEEJSG_SJ_SK_EEEE8applyUdfIZNKSN_7iterateIJNS1_12VectorReaderISG_EENSQ_ISJ_EENSQ_ISK_EEEEEvRNSN_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSV_SZ_ENKUlSZ_E0_clIiEEDaSZ_.exit7: ; preds = %.noexc40
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %6) #34
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %.pre, i32 noundef %i.at, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.aa unwind label %bb.ad

bb.aa:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17MapAppendFunctionINS1_10VectorExecEEES7_NS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSA_INSB_ILm2EEELb0ELb0EEEEENS0_15ConstantCheckerIJSG_NS0_5ArrayISD_EENSI_ISF_EEEEEJSG_SJ_SK_EEEE8applyUdfIZNKSN_7iterateIJNS1_12VectorReaderISG_EENSQ_ISJ_EENSQ_ISK_EEEEEvRNSN_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSV_SZ_ENKUlSZ_E0_clIiEEDaSZ_.exit7
  %i.fx = load ptr, ptr %6, align 8, !tbaa !911
  %.not.i43 = icmp eq ptr %i.fx, null
  br i1 %.not.i43, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #34
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17MapAppendFunctionINS1_10VectorExecEEES9_NS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSC_INSD_ILm2EEELb0ELb0EEEEENS0_15ConstantCheckerIJSI_NS0_5ArrayISF_EENSK_ISH_EEEEEJSI_SL_SM_EEEE8applyUdfIZNKSP_7iterateIJNS1_12VectorReaderISI_EENSS_ISL_EENSS_ISM_EEEEEvRNSP_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSX_S11_EUlS11_E_ZNKSQ_IS16_EEvSX_S11_EUlS11_E0_EEvRKNS0_17SelectivityVectorES11_S13_ENKUlS11_E_clIiEEDaS11_.exit

bb.ac:                                            ; preds = %.noexc40, %bb.z
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ad:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17MapAppendFunctionINS1_10VectorExecEEES7_NS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSA_INSB_ILm2EEELb0ELb0EEEEENS0_15ConstantCheckerIJSG_NS0_5ArrayISD_EENSI_ISF_EEEEEJSG_SJ_SK_EEEE8applyUdfIZNKSN_7iterateIJNS1_12VectorReaderISG_EENSQ_ISJ_EENSQ_ISK_EEEEEvRNSN_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSV_SZ_ENKUlSZ_E0_clIiEEDaSZ_.exit7
  %i.fz = landingpad { ptr, i32 }
          cleanup
  %i.ga = load ptr, ptr %6, align 8, !tbaa !911
  %.not.i44 = icmp eq ptr %i.ga, null
  br i1 %.not.i44, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit45, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #34
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit45

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit45: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit45, %bb.ac
  %.pn.i = phi { ptr, i32 } [ %i.fz, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit45 ], [ %i.fy, %bb.ac ]
  invoke void @__cxa_end_catch()
          to label %.loopexit54 unwind label %bb.al

.loopexit56:                                      ; preds = %tailrecurse.i.i.i.i.3, %.noexc46
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit.split-lp:                               ; preds = %.loopexit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.noexc46:                                         ; preds = %tailrecurse.i.i.i.i.3
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fc, i64 80
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !11875 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !954
  %i.gf = load ptr, ptr %i.gc, align 8, !tbaa !541
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 144
  %i.gh = load ptr, ptr %i.gg, align 8
  invoke void %i.gh(ptr noundef nonnull align 8 dereferenceable(94) %i.gc, i32 noundef %i.ge, i1 noundef zeroext true)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17MapAppendFunctionINS1_10VectorExecEEES7_NS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSA_INSB_ILm2EEELb0ELb0EEEEENS0_15ConstantCheckerIJSG_NS0_5ArrayISD_EENSI_ISF_EEEEEJSG_SJ_SK_EEEE8applyUdfIZNKSN_7iterateIJNS1_12VectorReaderISG_EENSQ_ISJ_EENSQ_ISK_EEEEEvRNSN_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSV_SZ_ENKUlSZ_E0_clIiEEDaSZ_.exit unwind label %.loopexit56, !inline_history !11884

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17MapAppendFunctionINS1_10VectorExecEEES7_NS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSA_INSB_ILm2EEELb0ELb0EEEEENS0_15ConstantCheckerIJSG_NS0_5ArrayISD_EENSI_ISF_EEEEEJSG_SJ_SK_EEEE8applyUdfIZNKSN_7iterateIJNS1_12VectorReaderISG_EENSQ_ISJ_EENSQ_ISK_EEEEEvRNSN_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSV_SZ_ENKUlSZ_E0_clIiEEDaSZ_.exit: ; preds = %.noexc46
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %7) #34
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %.pre, i32 noundef %i.at, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17MapAppendFunctionINS1_10VectorExecEEES7_NS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSA_INSB_ILm2EEELb0ELb0EEEEENS0_15ConstantCheckerIJSG_NS0_5ArrayISD_EENSI_ISF_EEEEEJSG_SJ_SK_EEEE8applyUdfIZNKSN_7iterateIJNS1_12VectorReaderISG_EENSQ_ISJ_EENSQ_ISK_EEEEEvRNSN_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSV_SZ_ENKUlSZ_E0_clIiEEDaSZ_.exit
  %i.gi = load ptr, ptr %7, align 8, !tbaa !911
  %.not.i49 = icmp eq ptr %i.gi, null
  br i1 %.not.i49, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit50, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #34
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit50

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit50: ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17MapAppendFunctionINS1_10VectorExecEEES9_NS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSC_INSD_ILm2EEELb0ELb0EEEEENS0_15ConstantCheckerIJSI_NS0_5ArrayISF_EENSK_ISH_EEEEEJSI_SL_SM_EEEE8applyUdfIZNKSP_7iterateIJNS1_12VectorReaderISI_EENSS_ISL_EENSS_ISM_EEEEEvRNSP_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSX_S11_EUlS11_E_ZNKSQ_IS16_EEvSX_S11_EUlS11_E0_EEvRKNS0_17SelectivityVectorES11_S13_ENKUlS11_E_clIiEEDaS11_.exit

bb.ai:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17MapAppendFunctionINS1_10VectorExecEEES7_NS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSA_INSB_ILm2EEELb0ELb0EEEEENS0_15ConstantCheckerIJSG_NS0_5ArrayISD_EENSI_ISF_EEEEEJSG_SJ_SK_EEEE8applyUdfIZNKSN_7iterateIJNS1_12VectorReaderISG_EENSQ_ISJ_EENSQ_ISK_EEEEEvRNSN_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSV_SZ_ENKUlSZ_E0_clIiEEDaSZ_.exit
  %i.gj = landingpad { ptr, i32 }
          cleanup
  %i.gk = load ptr, ptr %7, align 8, !tbaa !911
  %.not.i51 = icmp eq ptr %i.gk, null
  br i1 %.not.i51, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #34
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52: ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit56, %.loopexit.split-lp, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52
  %.pn16.i = phi { ptr, i32 } [ %i.gj, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52 ], [ %lpad.loopexit, %.loopexit56 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @__cxa_end_catch()
          to label %.loopexit54 unwind label %bb.al

.loopexit54:                                      ; preds = %bb.y, %bb.ak, %bb.af
  %.merged.i = phi { ptr, i32 } [ %.pn.i, %bb.af ], [ %.pn16.i, %bb.ak ], [ %eh.lpad-body, %bb.y ]
  resume { ptr, i32 } %.merged.i

bb.al:                                            ; preds = %bb.ak, %bb.af
  %i.gl = landingpad { ptr, i32 }
          catch ptr null
  %i.gm = extractvalue { ptr, i32 } %i.gl, 0
  call void @__clang_call_terminate(ptr %i.gm) #43
  unreachable

bb.am:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17MapAppendFunctionINS1_10VectorExecEEES9_NS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSC_INSD_ILm2EEELb0ELb0EEEEENS0_15ConstantCheckerIJSI_NS0_5ArrayISF_EENSK_ISH_EEEEEJSI_SL_SM_EEEE8applyUdfIZNKSP_7iterateIJNS1_12VectorReaderISI_EENSS_ISL_EENSS_ISM_EEEEEvRNSP_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSX_S11_EUlS11_E_ZNKSQ_IS16_EEvSX_S11_EUlS11_E0_EEvRKNS0_17SelectivityVectorES11_S13_ENKUlS11_E_clIiEEDaS11_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit39, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit50
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit53, label %bb.i, !llvm.loop !22401

bb.an:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.gn = load ptr, ptr %0, align 8, !tbaa !1035
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !1416
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !1418
  tail call void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17MapAppendFunctionINS3_10VectorExecEEESB_NS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSE_INSF_ILm2EEELb0ELb0EEEEENS0_15ConstantCheckerIJSK_NS0_5ArrayISH_EENSM_ISJ_EEEEEJSK_SN_SO_EEEE8applyUdfIZNKSR_7iterateIJNS3_12VectorReaderISK_EENSU_ISN_EENSU_ISO_EEEEEvRNSR_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSZ_S13_EUlS13_E_ZNKSS_IS18_EEvSZ_S13_EUlS13_E0_EEvRKNS0_17SelectivityVectorES13_S15_EUlS13_E_EEvPKmiibS13_(ptr noundef %i.gn, i32 noundef %i.gp, i32 noundef %i.gr, i1 noundef zeroext true, ptr noundef nonnull byval(%class.anon.7025) align 8 %1)
  br label %.loopexit53

.loopexit53:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17MapAppendFunctionINS1_10VectorExecEEES9_NS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSC_INSD_ILm2EEELb0ELb0EEEEENS0_15ConstantCheckerIJSI_NS0_5ArrayISF_EENSK_ISH_EEEEEJSI_SL_SM_EEEE8applyUdfIZNKSP_7iterateIJNS1_12VectorReaderISI_EENSS_ISL_EENSS_ISM_EEEEEvRNSP_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSX_S11_EUlS11_E_ZNKSQ_IS16_EEvSX_S11_EUlS11_E0_EEvRKNS0_17SelectivityVectorES11_S13_ENKUlS11_E_clIiEEDaS11_.exit, %bb.h, %bb.an
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox9functions17MapAppendFunctionINS0_4exec10VectorExecEE4callERNS3_9MapWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENS7_INS8_ILm2EEELb0ELb0EEEEERKNS3_7MapViewILb1ESA_SC_EERKNS3_9ArrayViewILb1ESA_EERKNSJ_ILb1ESC_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::pair.3101", align 8   ; 4 uses
  %6 = alloca %"struct.std::pair.3101", align 8   ; 3 uses
  %7 = alloca %"struct.fmt::v11::detail::format_arg_store.478", align 16 ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.folly::F14FastSet.7027", align 8 ; 9 uses
  %10 = alloca %"class.facebook::velox::exec::MapView<true, facebook::velox::Generic<facebook::velox::TypeVariable<1>>, facebook::velox::Generic<facebook::velox::TypeVariable<2>>>::Element", align 8 ; 10 uses
  %11 = alloca %"class.folly::F14FastSet.7027", align 8 ; 8 uses
  %12 = alloca %"class.facebook::velox::exec::GenericView", align 8 ; 10 uses
  %13 = alloca %"class.facebook::velox::exec::MapView<true, facebook::velox::Generic<facebook::velox::TypeVariable<1>>, facebook::velox::Generic<facebook::velox::TypeVariable<2>>>::Element", align 8 ; 10 uses
  %14 = alloca %"class.std::tuple.3444", align 8  ; 6 uses
  %15 = alloca %"class.facebook::velox::exec::GenericView", align 8 ; 8 uses
  %16 = alloca %"class.facebook::velox::exec::GenericView", align 8 ; 8 uses
  %17 = alloca %"class.std::tuple.3444", align 8  ; 6 uses
  %18 = alloca %"class.facebook::velox::exec::GenericView", align 8 ; 8 uses
  %19 = alloca %"class.facebook::velox::exec::GenericView", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !12079 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !22402 ; 2 uses
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %bb.e, label %bb.b, !prof !742

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34, !noalias !22404
  store i32 %i.b, ptr %7, align 16, !tbaa !17, !noalias !22404
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %i.d, ptr %i.e, align 16, !tbaa !17, !noalias !22404
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull @.str.266, i64 60, i64 17, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34, !noalias !22404
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions17MapAppendFunctionINS0_4exec10VectorExecEE4callERNS3_9MapWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENS7_INS8_ILm2EEELb0ELb0EEEEERKNS3_7MapViewILb1ESA_SC_EERKNS3_9ArrayViewILb1ESA_EERKNSJ_ILb1ESC_EEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr nonnull @.str.266) #42
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %8, align 8, !tbaa !7      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.j = load i64, ptr %i.h, align 8, !tbaa !17
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %bb.co

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  store ptr null, ptr %9, align 8, !tbaa !22407
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.l, align 8, !tbaa !22409
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  store i64 0, ptr %i.m, align 8, !tbaa !1395
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !12060, !noalias !22411 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !12061, !noalias !22411 ; 2 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !12057, !noalias !22411 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !12059, !noalias !22411
  %i.u = add nsw i32 %i.q, %i.o
  %i.v = icmp eq i32 %i.q, 0
  br i1 %i.v, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, <2 x i64> <i64 8, i64 56>
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.ab = sext i32 %i.o to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %.noexc85
  %indvars.iv = phi i64 [ %i.ab, %.lr.ph ], [ %indvars.iv.next, %.noexc85 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !22414)
  call void @llvm.experimental.noalias.scope.decl(metadata !22417)
  call void @llvm.experimental.noalias.scope.decl(metadata !22420)
  call void @llvm.experimental.noalias.scope.decl(metadata !22423)
  %i.ac = load ptr, ptr %i.r, align 8, !tbaa !8393, !noalias !22426, !nonnull !552, !align !674 ; 6 uses
  store ptr %i.ac, ptr %10, align 8, !tbaa !1034, !alias.scope !22426
  store <2 x ptr> %i.w, ptr %i.x, align 8, !tbaa !533, !alias.scope !22426
  %i.ad = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  store i32 %i.ad, ptr %i.y, align 8, !tbaa !8646, !alias.scope !22426
  store ptr %i.t, ptr %i.z, align 8, !alias.scope !22427
  store i64 %indvars.iv, ptr %i.aa, align 8, !alias.scope !22427
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34, !noalias !22428
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !8368, !noalias !22431 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 58
  %i.ah = load i8, ptr %i.ag, align 2, !tbaa !2367, !range !551, !noalias !22431, !noundef !552
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %_ZN5folly6detail22callWithConstructedKeyIN8facebook5velox4exec11GenericViewENS_3f146detail11F14BasicSetINS7_21VectorContainerPolicyIS5_vSt4hashIS5_ENS3_9functions32MapAppendFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE11UsableAsKeyESaIS5_EZNSH_7emplaceIJRKS5_EEESt4pairINS7_23VectorContainerIteratorIPSL_EEbEDpOT_EUlSU_E_SM_TnNSt9enable_ifIXoosr3std7is_sameINS_12remove_cvrefIT3_E4typeET_EE5valuesrT0_IS10_E5valueEiE4typeELi0EEEDaRT1_OT2_OSY_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 59
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !2373, !range !551, !noalias !22431, !noundef !552
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.an = load i32, ptr %i.am, align 8, !tbaa !2374, !noalias !22431
  br label %_ZN5folly6detail22callWithConstructedKeyIN8facebook5velox4exec11GenericViewENS_3f146detail11F14BasicSetINS7_21VectorContainerPolicyIS5_vSt4hashIS5_ENS3_9functions32MapAppendFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE11UsableAsKeyESaIS5_EZNSH_7emplaceIJRKS5_EEESt4pairINS7_23VectorContainerIteratorIPSL_EEbEDpOT_EUlSU_E_SM_TnNSt9enable_ifIXoosr3std7is_sameINS_12remove_cvrefIT3_E4typeET_EE5valuesrT0_IS10_E5valueEiE4typeELi0EEEDaRT1_OT2_OSY_.exit.i

bb.i:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !2378, !noalias !22431
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %indvars.iv
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !3, !noalias !22431
  br label %_ZN5folly6detail22callWithConstructedKeyIN8facebook5velox4exec11GenericViewENS_3f146detail11F14BasicSetINS7_21VectorContainerPolicyIS5_vSt4hashIS5_ENS3_9functions32MapAppendFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE11UsableAsKeyESaIS5_EZNSH_7emplaceIJRKS5_EEESt4pairINS7_23VectorContainerIteratorIPSL_EEbEDpOT_EUlSU_E_SM_TnNSt9enable_ifIXoosr3std7is_sameINS_12remove_cvrefIT3_E4typeET_EE5valuesrT0_IS10_E5valueEiE4typeELi0EEEDaRT1_OT2_OSY_.exit.i

_ZN5folly6detail22callWithConstructedKeyIN8facebook5velox4exec11GenericViewENS_3f146detail11F14BasicSetINS7_21VectorContainerPolicyIS5_vSt4hashIS5_ENS3_9functions32MapAppendFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE11UsableAsKeyESaIS5_EZNSH_7emplaceIJRKS5_EEESt4pairINS7_23VectorContainerIteratorIPSL_EEbEDpOT_EUlSU_E_SM_TnNSt9enable_ifIXoosr3std7is_sameINS_12remove_cvrefIT3_E4typeET_EE5valuesrT0_IS10_E5valueEiE4typeELi0EEEDaRT1_OT2_OSY_.exit.i: ; preds = %bb.i, %bb.h, %bb.f
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ar, %bb.i ], [ %i.an, %bb.h ], [ %i.ad, %bb.f ]
  %i.as = load ptr, ptr %i.af, align 8, !tbaa !541, !noalias !22431
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 104
  %i.au = load ptr, ptr %i.at, align 8, !noalias !22431
  %i.av = invoke noundef i64 %i.au(ptr noundef nonnull align 8 dereferenceable(94) %i.af, i32 noundef %.0.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc84 unwind label %bb.j, !inline_history !22438 ; 2 uses

.noexc84:                                         ; preds = %_ZN5folly6detail22callWithConstructedKeyIN8facebook5velox4exec11GenericViewENS_3f146detail11F14BasicSetINS7_21VectorContainerPolicyIS5_vSt4hashIS5_ENS3_9functions32MapAppendFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE11UsableAsKeyESaIS5_EZNSH_7emplaceIJRKS5_EEESt4pairINS7_23VectorContainerIteratorIPSL_EEbEDpOT_EUlSU_E_SM_TnNSt9enable_ifIXoosr3std7is_sameINS_12remove_cvrefIT3_E4typeET_EE5valuesrT0_IS10_E5valueEiE4typeELi0EEEDaRT1_OT2_OSY_.exit.i
  %i.aw = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.av) ; 2 uses
  %i.ax = lshr i64 %i.aw, 24
  %i.ay = or i64 %i.ax, 128
  %i.az = add i64 %i.aw, %i.av
  invoke void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapAppendFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS7_JRKS7_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESJ_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.3101") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 %i.az, i64 %i.ay, ptr noundef nonnull align 8 dereferenceable(28) %10, ptr noundef nonnull align 8 dereferenceable(28) %10)
          to label %.noexc85 unwind label %bb.j

.noexc85:                                         ; preds = %.noexc84
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34, !noalias !22428
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ba = trunc nsw i64 %indvars.iv.next to i32
  %i.bb = icmp eq i32 %i.u, %i.ba
  br i1 %i.bb, label %._crit_edge.loopexit, label %bb.f

bb.j:                                             ; preds = %.noexc84, %_ZN5folly6detail22callWithConstructedKeyIN8facebook5velox4exec11GenericViewENS_3f146detail11F14BasicSetINS7_21VectorContainerPolicyIS5_vSt4hashIS5_ENS3_9functions32MapAppendFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE11UsableAsKeyESaIS5_EZNSH_7emplaceIJRKS5_EEESt4pairINS7_23VectorContainerIteratorIPSL_EEbEDpOT_EUlSU_E_SM_TnNSt9enable_ifIXoosr3std7is_sameINS_12remove_cvrefIT3_E4typeET_EE5valuesrT0_IS10_E5valueEiE4typeELi0EEEDaRT1_OT2_OSY_.exit.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %bb.cn

._crit_edge.loopexit:                             ; preds = %.noexc85
  %.pre = load i32, ptr %i.a, align 4, !tbaa !12079, !noalias !22439
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %i.bd = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.b, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  store ptr null, ptr %11, align 8, !tbaa !22407
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.be, align 8, !tbaa !22409
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  store i64 0, ptr %i.bf, align 8, !tbaa !1395
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.bh = load ptr, ptr %3, align 8, !tbaa !12098, !noalias !22442 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bj = icmp eq i32 %i.bd, 0
  br i1 %i.bj, label %._crit_edge287, label %.lr.ph286

.lr.ph286:                                        ; preds = %._crit_edge
  %i.bk = load i32, ptr %i.bg, align 8, !tbaa !12102, !noalias !22442 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, <2 x i64> <i64 8, i64 56>
  %i.bm = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bp = sext i32 %i.bk to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph286, %bb.ao
  %i.bq = phi i32 [ %i.bd, %.lr.ph286 ], [ %i.ia, %bb.ao ]
  %i.br = phi i32 [ %i.bk, %.lr.ph286 ], [ %i.ib, %bb.ao ]
  %indvars.iv298 = phi i64 [ %i.bp, %.lr.ph286 ], [ %indvars.iv.next299, %bb.ao ] ; 6 uses
  %i.bs = load ptr, ptr %i.bh, align 8, !tbaa !8393, !nonnull !552, !align !674 ; 12 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !2366 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 58
  %i.bw = load i8, ptr %i.bv, align 2, !tbaa !2367, !range !551, !noundef !552
  %i.bx = trunc nuw i8 %i.bw to i1
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 57
  %i.bz = load i8, ptr %i.by, align 1, !range !551
  %i.ca = trunc nuw i8 %i.bz to i1
  %or.cond.i.i.i = select i1 %i.bx, i1 true, i1 %i.ca
  br i1 %or.cond.i.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cb = lshr i64 %indvars.iv298, 6
  %i.cc = and i64 %i.cb, 67108863
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !612
  %i.cf = and i64 %indvars.iv298, 63
  %i.cg = shl nuw i64 1, %i.cf
  %i.ch = and i64 %i.ce, %i.cg
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bs, i64 59
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !2373, !range !551, !noundef !552
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.o, label %bb.p

end_hunk_0
begin_hunk_1_@_ZN8facebook5velox9functions17MapAppendFunctionINS0_4exec10VectorExecEE4callERNS3_9MapWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENS7_INS8_ILm2EEELb0ELb0EEEEERKNS3_7MapViewILb1ESA_SC_EERKNS3_9ArrayViewILb1ESA_EERKNSJ_ILb1ESC_EE:bb.a
  %.pn65 = phi { ptr, i32 } [ %i.gw, %bb.af ], [ %i.hz, %bb.am ], [ %i.hy, %bb.al ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit277, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp278, %.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  br label %bb.cm

bb.ao:                                            ; preds = %bb.q, %bb.an
  %i.ia = phi i32 [ %i.bq, %bb.q ], [ %.pre314, %bb.an ] ; 3 uses
  %i.ib = phi i32 [ %i.br, %bb.q ], [ %.pre313, %bb.an ] ; 2 uses
  %indvars.iv.next299 = add nsw i64 %indvars.iv298, 1 ; 2 uses
  %i.ic = add nsw i32 %i.ia, %i.ib
  %i.id = trunc nsw i64 %indvars.iv.next299 to i32
  %i.ie = icmp eq i32 %i.ic, %i.id
  br i1 %i.ie, label %._crit_edge287, label %bb.k, !llvm.loop !22467

._crit_edge287:                                   ; preds = %bb.ao, %._crit_edge
  %i.if = phi i32 [ 0, %._crit_edge ], [ %i.ia, %bb.ao ]
  %i.ig = load i32, ptr %i.n, align 8, !tbaa !12060, !noalias !22468 ; 2 uses
  %i.ih = load i32, ptr %i.p, align 4, !tbaa !12061, !noalias !22468 ; 2 uses
  %i.ii = load ptr, ptr %2, align 8, !tbaa !12057, !noalias !22468 ; 2 uses
  %i.ij = load ptr, ptr %i.s, align 8, !tbaa !12059, !noalias !22468 ; 2 uses
  %i.ik = add nsw i32 %i.ih, %i.ig
  %i.il = icmp eq i32 %i.ih, 0
  br i1 %i.il, label %._crit_edge291, label %.lr.ph290

.lr.ph290:                                        ; preds = %._crit_edge287
  %i.im = getelementptr inbounds nuw i8, ptr %i.ii, <2 x i64> <i64 8, i64 56>
  %i.in = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.io = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.ip = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.is = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.it = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.iu = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.iv = sext i32 %i.ig to i64
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph290, %bb.bg
  %indvars.iv301 = phi i64 [ %i.iv, %.lr.ph290 ], [ %indvars.iv.next302, %bb.bg ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !22471)
  call void @llvm.experimental.noalias.scope.decl(metadata !22474)
  call void @llvm.experimental.noalias.scope.decl(metadata !22477)
  call void @llvm.experimental.noalias.scope.decl(metadata !22480)
  %i.iw = load ptr, ptr %i.ii, align 8, !tbaa !8393, !noalias !22483, !nonnull !552, !align !674
  store ptr %i.iw, ptr %13, align 8, !tbaa !1034, !alias.scope !22483
  store <2 x ptr> %i.im, ptr %i.in, align 8, !tbaa !533, !alias.scope !22483
  %i.ix = trunc nsw i64 %indvars.iv301 to i32
  store i32 %i.ix, ptr %i.io, align 8, !tbaa !8646, !alias.scope !22483
  store ptr %i.ij, ptr %i.ip, align 8, !alias.scope !22484
  store i64 %indvars.iv301, ptr %i.iq, align 8, !alias.scope !22484
  %i.iy = load ptr, ptr %i.ij, align 8, !tbaa !11918, !nonnull !552, !align !674 ; 5 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 24
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !2366 ; 4 uses
  %.not.i.i.i104 = icmp eq ptr %i.ja, null
  br i1 %.not.i.i.i104, label %.thread270, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iy, i64 58
  %i.jc = load i8, ptr %i.jb, align 2, !tbaa !2367, !range !551, !noundef !552
  %i.jd = trunc nuw i8 %i.jc to i1
  %i.je = getelementptr inbounds nuw i8, ptr %i.iy, i64 57
  %i.jf = load i8, ptr %i.je, align 1, !range !551
  %i.jg = trunc nuw i8 %i.jf to i1
  %or.cond.i.i.i105 = select i1 %i.jd, i1 true, i1 %i.jg
  br i1 %or.cond.i.i.i105, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.jh = lshr i64 %indvars.iv301, 6
  %i.ji = and i64 %i.jh, 67108863
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %i.ji
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !612
  %i.jl = and i64 %indvars.iv301, 63
  %i.jm = shl nuw i64 1, %i.jl
  %i.jn = and i64 %i.jk, %i.jm
  br label %bb.av

bb.as:                                            ; preds = %bb.aq
  %i.jo = getelementptr inbounds nuw i8, ptr %i.iy, i64 59
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !2373, !range !551, !noundef !552
  %i.jq = trunc nuw i8 %i.jp to i1
  br i1 %i.jq, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.jr = load i64, ptr %i.ja, align 8, !tbaa !612
  %i.js = and i64 %i.jr, 1
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.jt = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !2378
  %i.jv = shl nsw i64 %indvars.iv301, 2
  %i.jw = getelementptr inbounds i8, ptr %i.ju, i64 %i.jv
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !3
  %i.jy = zext i32 %i.jx to i64                   ; 2 uses
  %i.jz = lshr i64 %i.jy, 6
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %i.jz
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !612
  %i.kc = and i64 %i.jy, 63
  %i.kd = shl nuw i64 1, %i.kc
  %i.ke = and i64 %i.kd, %i.kb
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.ar
  %.0.i.i.i108.in = phi i64 [ %i.jn, %bb.ar ], [ %i.js, %bb.at ], [ %i.ke, %bb.au ]
  %.0.i.i.i108.not = icmp eq i64 %.0.i.i.i108.in, 0
  br i1 %.0.i.i.i108.not, label %bb.aw, label %.thread270

bb.aw:                                            ; preds = %bb.av
  %i.kf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENS3_INS4_ILm2EEELb0ELb0EEEE8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.ax unwind label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.kf, ptr noundef nonnull align 8 dereferenceable(28) %13)
          to label %bb.bg unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

.thread270:                                       ; preds = %bb.ap, %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #34
  invoke void @_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENS3_INS4_ILm2EEELb0ELb0EEEE8add_itemEv(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.3444") align 8 %14, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.az unwind label %bb.bc

bb.az:                                            ; preds = %.thread270
  %i.kh = load ptr, ptr %i.ir, align 8, !tbaa !12119, !nonnull !552, !align !674
  %i.ki = load ptr, ptr %14, align 8, !tbaa !8636, !nonnull !552, !align !674
  invoke void @_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.kh, ptr noundef nonnull align 8 dereferenceable(28) %13)
          to label %bb.ba unwind label %bb.bd

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !22485)
  %i.kj = load ptr, ptr %i.ip, align 8, !tbaa !12106, !noalias !22485 ; 3 uses
  %i.kk = load i64, ptr %i.iq, align 8, !tbaa !12108, !noalias !22485
  %i.kl = trunc i64 %i.kk to i32
  call void @llvm.experimental.noalias.scope.decl(metadata !22488)
  %i.km = load ptr, ptr %i.kj, align 8, !tbaa !11918, !noalias !22491, !nonnull !552, !align !674
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kj, i64 56
  store ptr %i.km, ptr %15, align 8, !tbaa !1034, !alias.scope !22491
  store ptr %i.kn, ptr %i.is, align 8, !tbaa !12117, !alias.scope !22491
  store ptr %i.ko, ptr %i.it, align 8, !tbaa !12118, !alias.scope !22491
  store i32 %i.kl, ptr %i.iu, align 8, !tbaa !8646, !alias.scope !22491
  invoke void @_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.ki, ptr noundef nonnull align 8 dereferenceable(28) %15)
          to label %bb.bb unwind label %bb.be

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  br label %bb.bg

bb.bc:                                            ; preds = %.thread270
  %i.kp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.bd:                                            ; preds = %bb.az
  %i.kq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.be:                                            ; preds = %bb.ba
  %i.kr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bd, %bb.be, %bb.bc
  %.pn58.pn = phi { ptr, i32 } [ %i.kp, %bb.bc ], [ %i.kr, %bb.be ], [ %i.kq, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  br label %bb.bh

bb.bg:                                            ; preds = %bb.ax, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  %indvars.iv.next302 = add nsw i64 %indvars.iv301, 1 ; 2 uses
  %i.ks = trunc nsw i64 %indvars.iv.next302 to i32
  %i.kt = icmp eq i32 %i.ik, %i.ks
  br i1 %i.kt, label %._crit_edge291.loopexit, label %bb.ap

bb.bh:                                            ; preds = %bb.bf, %bb.ay
  %.pn58.pn.pn = phi { ptr, i32 } [ %.pn58.pn, %bb.bf ], [ %i.kg, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  br label %bb.cm

._crit_edge291.loopexit:                          ; preds = %bb.bg
  %.pre315 = load i32, ptr %i.a, align 4, !tbaa !12079, !noalias !22492
  br label %._crit_edge291

._crit_edge291:                                   ; preds = %._crit_edge291.loopexit, %._crit_edge287
  %i.ku = phi i32 [ %.pre315, %._crit_edge291.loopexit ], [ %i.if, %._crit_edge287 ]
  %i.kv = load ptr, ptr %3, align 8, !tbaa !12098, !noalias !22495 ; 5 uses
  %i.kw = load ptr, ptr %4, align 8, !tbaa !22498, !noalias !22499 ; 3 uses
  %i.kx = icmp eq i32 %i.ku, 0
  br i1 %i.kx, label %._crit_edge296, label %.lr.ph295

.lr.ph295:                                        ; preds = %._crit_edge291
  %i.ky = load i32, ptr %i.bg, align 8, !tbaa !12102, !noalias !22495
  %i.kz = load i32, ptr %i.bi, align 8, !tbaa !22502, !noalias !22499
  %20 = getelementptr inbounds nuw i8, ptr %i.kv, i64 8 ; 2 uses
  %21 = getelementptr inbounds nuw i8, ptr %i.kv, i64 56 ; 2 uses
  %22 = getelementptr inbounds nuw i8, ptr %16, i64 8
  %23 = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.la = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.lb = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.lc = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ld = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.le = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kw, <2 x i64> <i64 8, i64 56>
  %i.lg = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.lh = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.li = sext i32 %i.ky to i64
  %i.lj = sext i32 %i.kz to i64
  br label %bb.bi

bb.bi:                                            ; preds = %.lr.ph295, %bb.ch
  %indvars.iv306 = phi i64 [ %i.lj, %.lr.ph295 ], [ %indvars.iv.next307, %bb.ch ] ; 5 uses
  %indvars.iv304 = phi i64 [ %i.li, %.lr.ph295 ], [ %indvars.iv.next305, %bb.ch ] ; 6 uses
  %i.lk = load ptr, ptr %i.kv, align 8, !tbaa !8393, !nonnull !552, !align !674 ; 5 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 24
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !2366 ; 4 uses
  %.not.i.i.i113 = icmp eq ptr %i.lm, null
  br i1 %.not.i.i.i113, label %.thread272, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lk, i64 58
  %i.lo = load i8, ptr %i.ln, align 2, !tbaa !2367, !range !551, !noundef !552
  %i.lp = trunc nuw i8 %i.lo to i1
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lk, i64 57
  %i.lr = load i8, ptr %i.lq, align 1, !range !551
  %i.ls = trunc nuw i8 %i.lr to i1
  %or.cond.i.i.i114 = select i1 %i.lp, i1 true, i1 %i.ls
  br i1 %or.cond.i.i.i114, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.lt = lshr i64 %indvars.iv304, 6
  %i.lu = and i64 %i.lt, 67108863
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.lm, i64 %i.lu
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !612
  %i.lx = and i64 %indvars.iv304, 63
  %i.ly = shl nuw i64 1, %i.lx
  %i.lz = and i64 %i.lw, %i.ly
  br label %bb.bo

bb.bl:                                            ; preds = %bb.bj
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lk, i64 59
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !2373, !range !551, !noundef !552
  %i.mc = trunc nuw i8 %i.mb to i1
  br i1 %i.mc, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.md = load i64, ptr %i.lm, align 8, !tbaa !612
  %i.me = and i64 %i.md, 1
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !2378
  %i.mh = shl nsw i64 %indvars.iv304, 2
  %i.mi = getelementptr inbounds i8, ptr %i.mg, i64 %i.mh
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !3
  %i.mk = zext i32 %i.mj to i64                   ; 2 uses
  %i.ml = lshr i64 %i.mk, 6
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.lm, i64 %i.ml
  %i.mn = load i64, ptr %i.mm, align 8, !tbaa !612
  %i.mo = and i64 %i.mk, 63
  %i.mp = shl nuw i64 1, %i.mo
  %i.mq = and i64 %i.mp, %i.mn
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %bb.bk
  %.0.i.i.i117.in = phi i64 [ %i.lz, %bb.bk ], [ %i.me, %bb.bm ], [ %i.mq, %bb.bn ]
  %.0.i.i.i117.not = icmp eq i64 %.0.i.i.i117.in, 0
  br i1 %.0.i.i.i117.not, label %bb.ch, label %.thread272

.thread272:                                       ; preds = %bb.bi, %bb.bo
  %i.mr = load ptr, ptr %i.kw, align 8, !tbaa !11918, !nonnull !552, !align !674 ; 5 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 24
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !2366 ; 4 uses
  %.not.i.i.i123 = icmp eq ptr %i.mt, null
  br i1 %.not.i.i.i123, label %.thread274, label %bb.bp

bb.bp:                                            ; preds = %.thread272
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mr, i64 58
  %i.mv = load i8, ptr %i.mu, align 2, !tbaa !2367, !range !551, !noundef !552
  %i.mw = trunc nuw i8 %i.mv to i1
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mr, i64 57
  %i.my = load i8, ptr %i.mx, align 1, !range !551
  %i.mz = trunc nuw i8 %i.my to i1
  %or.cond.i.i.i124 = select i1 %i.mw, i1 true, i1 %i.mz
  br i1 %or.cond.i.i.i124, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.na = lshr i64 %indvars.iv306, 6
  %i.nb = and i64 %i.na, 67108863
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.mt, i64 %i.nb
  %i.nd = load i64, ptr %i.nc, align 8, !tbaa !612
  %i.ne = and i64 %indvars.iv306, 63
  %i.nf = shl nuw i64 1, %i.ne
  %i.ng = and i64 %i.nd, %i.nf
  br label %bb.bu

bb.br:                                            ; preds = %bb.bp
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mr, i64 59
  %i.ni = load i8, ptr %i.nh, align 1, !tbaa !2373, !range !551, !noundef !552
  %i.nj = trunc nuw i8 %i.ni to i1
  br i1 %i.nj, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.nk = load i64, ptr %i.mt, align 8, !tbaa !612
  %i.nl = and i64 %i.nk, 1
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br
  %i.nm = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !2378
  %i.no = shl nsw i64 %indvars.iv306, 2
  %i.np = getelementptr inbounds i8, ptr %i.nn, i64 %i.no
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !3
  %i.nr = zext i32 %i.nq to i64                   ; 2 uses
  %i.ns = lshr i64 %i.nr, 6
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.mt, i64 %i.ns
  %i.nu = load i64, ptr %i.nt, align 8, !tbaa !612
  %i.nv = and i64 %i.nr, 63
  %i.nw = shl nuw i64 1, %i.nv
  %i.nx = and i64 %i.nw, %i.nu
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs, %bb.bq
  %.0.i.i.i127.in = phi i64 [ %i.ng, %bb.bq ], [ %i.nl, %bb.bs ], [ %i.nx, %bb.bt ]
  %.0.i.i.i127.not = icmp eq i64 %.0.i.i.i127.in, 0
  br i1 %.0.i.i.i127.not, label %bb.bv, label %.thread274

bb.bv:                                            ; preds = %bb.bu
  %i.ny = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENS3_INS4_ILm2EEELb0ELb0EEEE8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.bw unwind label %bb.by

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !22503)
  call void @llvm.experimental.noalias.scope.decl(metadata !22506)
  %i.nz = load ptr, ptr %i.kv, align 8, !tbaa !8393, !noalias !22509, !nonnull !552, !align !674
  store ptr %i.nz, ptr %16, align 8, !tbaa !1034, !alias.scope !22509
  store ptr %20, ptr %22, align 8, !tbaa !12117, !alias.scope !22509
  store ptr %21, ptr %23, align 8, !tbaa !12118, !alias.scope !22509
  %i.oa = trunc nsw i64 %indvars.iv304 to i32
  store i32 %i.oa, ptr %i.la, align 8, !tbaa !8646, !alias.scope !22509
  invoke void @_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.ny, ptr noundef nonnull align 8 dereferenceable(28) %16)
          to label %bb.bx unwind label %bb.bz

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #34
  br label %bb.ch

bb.by:                                            ; preds = %bb.bv
  %i.ob = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.bz:                                            ; preds = %bb.bw
  %i.oc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #34
  br label %bb.cm

.thread274:                                       ; preds = %.thread272, %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #34
  invoke void @_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENS3_INS4_ILm2EEELb0ELb0EEEE8add_itemEv(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.3444") align 8 %17, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.ca unwind label %bb.cd

bb.ca:                                            ; preds = %.thread274
  %i.od = load ptr, ptr %i.lb, align 8, !tbaa !12119, !nonnull !552, !align !674
  %i.oe = load ptr, ptr %17, align 8, !tbaa !8636, !nonnull !552, !align !674
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !22510)
  call void @llvm.experimental.noalias.scope.decl(metadata !22513)
  %i.of = load ptr, ptr %i.kv, align 8, !tbaa !8393, !noalias !22516, !nonnull !552, !align !674
  store ptr %i.of, ptr %18, align 8, !tbaa !1034, !alias.scope !22516
  store ptr %20, ptr %i.lc, align 8, !tbaa !12117, !alias.scope !22516
  store ptr %21, ptr %i.ld, align 8, !tbaa !12118, !alias.scope !22516
  %i.og = trunc nsw i64 %indvars.iv304 to i32
  store i32 %i.og, ptr %i.le, align 8, !tbaa !8646, !alias.scope !22516
  invoke void @_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.od, ptr noundef nonnull align 8 dereferenceable(28) %18)
          to label %bb.cb unwind label %bb.ce

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !22517)
  call void @llvm.experimental.noalias.scope.decl(metadata !22520)
  %i.oh = load ptr, ptr %i.kw, align 8, !tbaa !11918, !noalias !22523, !nonnull !552, !align !674
  store ptr %i.oh, ptr %19, align 8, !tbaa !1034, !alias.scope !22523
  store <2 x ptr> %i.lf, ptr %i.lg, align 8, !tbaa !533, !alias.scope !22523
  %i.oi = trunc nsw i64 %indvars.iv306 to i32
  store i32 %i.oi, ptr %i.lh, align 8, !tbaa !8646, !alias.scope !22523
  invoke void @_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.oe, ptr noundef nonnull align 8 dereferenceable(28) %19)
          to label %bb.cc unwind label %bb.cf

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #34
  br label %bb.ch

bb.cd:                                            ; preds = %.thread274
  %i.oj = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.ce:                                            ; preds = %bb.ca
  %i.ok = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #34
  br label %bb.cg

bb.cf:                                            ; preds = %bb.cb
  %i.ol = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #34
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ce, %bb.cf, %bb.cd
  %.pn.pn = phi { ptr, i32 } [ %i.oj, %bb.cd ], [ %i.ol, %bb.cf ], [ %i.ok, %bb.ce ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #34
  br label %bb.cm

bb.ch:                                            ; preds = %bb.bo, %bb.cc, %bb.bx
  %indvars.iv.next305 = add nsw i64 %indvars.iv304, 1 ; 2 uses
  %indvars.iv.next307 = add nsw i64 %indvars.iv306, 1
  %i.om = load i32, ptr %i.bg, align 8, !tbaa !12102, !noalias !22492
  %i.on = load i32, ptr %i.a, align 4, !tbaa !12079, !noalias !22492
  %i.oo = add nsw i32 %i.on, %i.om
  %i.op = trunc nsw i64 %indvars.iv.next305 to i32
  %i.oq = icmp eq i32 %i.oo, %i.op
  br i1 %i.oq, label %._crit_edge296, label %bb.bi, !llvm.loop !22524

._crit_edge296:                                   ; preds = %bb.ch, %._crit_edge291
  %i.or = load ptr, ptr %i.be, align 8, !tbaa !22409 ; 3 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 15
  %i.ot = load i8, ptr %i.os, align 1, !tbaa !1392
  %i.ou = icmp eq i8 %i.ot, -1
  br i1 %i.ou, label %_ZN5folly3f146detail11F14BasicSetINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapAppendFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEED2Ev.exit, label %bb.ci

bb.ci:                                            ; preds = %._crit_edge296
  %i.ov = load i64, ptr %i.bf, align 8, !tbaa !1395 ; 2 uses
  %i.ow = and i64 %i.ov, 255                      ; 4 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.or, i64 12 ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i16, ptr %i.ox, align 1
  %i.oy = zext i16 %.0.copyload.i.i.i.i.i.i to i64 ; 2 uses
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.ow
  %i.oz = xor i64 %notmask.i.i.i.i.i, -1
  %i.pa = lshr i64 %i.oz, 12
  %i.pb = add nuw nsw i64 %i.pa, 1
  %i.pc = icmp ult i64 %i.ov, 256
  br i1 %i.pc, label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS6_ENS4_9functions32MapAppendFunctionEqualComparatorEvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  store i64 %i.ow, ptr %i.bf, align 8, !tbaa !1395
  %.0.copyload.i.pre.i.i.i.i = load i16, ptr %i.ox, align 1
  %.pre20.i.i.i.i = zext i16 %.0.copyload.i.pre.i.i.i.i to i64
  br label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS6_ENS4_9functions32MapAppendFunctionEqualComparatorEvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i.i

_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS6_ENS4_9functions32MapAppendFunctionEqualComparatorEvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i.i: ; preds = %bb.cj, %bb.ci
  %.pre-phi21.i.i.i.i = phi i64 [ %.pre20.i.i.i.i, %bb.cj ], [ %i.oy, %bb.ci ]
  %i.pd = icmp eq i64 %i.ow, 0
  %i.pe = shl nuw nsw i64 %.pre-phi21.i.i.i.i, 2
  %.neg17.i.i.i.i = sub nuw nsw i64 -16, %i.pe
  %.neg18.i.i.i.i = shl i64 -64, %i.ow
  %.0.i.neg.i.i.i.i = select i1 %i.pd, i64 %.neg17.i.i.i.i, i64 %.neg18.i.i.i.i
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.be, align 8, !tbaa !22409
  store i64 0, ptr %i.bf, align 8, !tbaa !1395
  %i.pf = and i64 %.0.i.neg.i.i.i.i, -8
  %i.pg = shl nuw nsw i64 %i.oy, 5
  %i.ph = mul i64 %i.pg, %i.pb
  %i.pi = sub i64 %i.ph, %i.pf
  call void @_ZdlPvm(ptr noundef nonnull %i.or, i64 noundef %i.pi) #34
  br label %_ZN5folly3f146detail11F14BasicSetINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapAppendFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEED2Ev.exit

_ZN5folly3f146detail11F14BasicSetINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapAppendFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEED2Ev.exit: ; preds = %._crit_edge296, %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS6_ENS4_9functions32MapAppendFunctionEqualComparatorEvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  %i.pj = load ptr, ptr %i.l, align 8, !tbaa !22409 ; 3 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 15
  %i.pl = load i8, ptr %i.pk, align 1, !tbaa !1392
  %i.pm = icmp eq i8 %i.pl, -1
  br i1 %i.pm, label %_ZN5folly3f146detail11F14BasicSetINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapAppendFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEED2Ev.exit146, label %bb.ck

bb.ck:                                            ; preds = %_ZN5folly3f146detail11F14BasicSetINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapAppendFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEED2Ev.exit
  %i.pn = load i64, ptr %i.m, align 8, !tbaa !1395 ; 2 uses
  %i.po = and i64 %i.pn, 255                      ; 4 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pj, i64 12 ; 2 uses
  %.0.copyload.i.i.i.i.i.i137 = load i16, ptr %i.pp, align 1
  %i.pq = zext i16 %.0.copyload.i.i.i.i.i.i137 to i64 ; 2 uses
  %notmask.i.i.i.i.i138 = shl nsw i64 -1, %i.po
  %i.pr = xor i64 %notmask.i.i.i.i.i138, -1
  %i.ps = lshr i64 %i.pr, 12
  %i.pt = add nuw nsw i64 %i.ps, 1
  %i.pu = icmp ult i64 %i.pn, 256
  br i1 %i.pu, label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS6_ENS4_9functions32MapAppendFunctionEqualComparatorEvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i.i141, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  store i64 %i.po, ptr %i.m, align 8, !tbaa !1395
  %.0.copyload.i.pre.i.i.i.i139 = load i16, ptr %i.pp, align 1
  %.pre20.i.i.i.i140 = zext i16 %.0.copyload.i.pre.i.i.i.i139 to i64
  br label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS6_ENS4_9functions32MapAppendFunctionEqualComparatorEvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i.i141

_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS6_ENS4_9functions32MapAppendFunctionEqualComparatorEvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i.i141: ; preds = %bb.cl, %bb.ck
  %.pre-phi21.i.i.i.i142 = phi i64 [ %.pre20.i.i.i.i140, %bb.cl ], [ %i.pq, %bb.ck ]
  %i.pv = icmp eq i64 %i.po, 0
  %i.pw = shl nuw nsw i64 %.pre-phi21.i.i.i.i142, 2
  %.neg17.i.i.i.i143 = sub nuw nsw i64 -16, %i.pw
  %.neg18.i.i.i.i144 = shl i64 -64, %i.po
  %.0.i.neg.i.i.i.i145 = select i1 %i.pv, i64 %.neg17.i.i.i.i143, i64 %.neg18.i.i.i.i144
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.l, align 8, !tbaa !22409
  store i64 0, ptr %i.m, align 8, !tbaa !1395
  %i.px = and i64 %.0.i.neg.i.i.i.i145, -8
  %i.py = shl nuw nsw i64 %i.pq, 5
  %i.pz = mul i64 %i.py, %i.pt
  %i.qa = sub i64 %i.pz, %i.px
  call void @_ZdlPvm(ptr noundef nonnull %i.pj, i64 noundef %i.qa) #34
  br label %_ZN5folly3f146detail11F14BasicSetINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapAppendFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEED2Ev.exit146

_ZN5folly3f146detail11F14BasicSetINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapAppendFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEED2Ev.exit146: ; preds = %_ZN5folly3f146detail11F14BasicSetINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapAppendFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEED2Ev.exit, %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS6_ENS4_9functions32MapAppendFunctionEqualComparatorEvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i.i141
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  ret void

bb.cm:                                            ; preds = %bb.cg, %.loopexit.split-lp, %bb.bz, %bb.by, %bb.bh
  %.pn65.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.cg ], [ %.pn58.pn.pn, %bb.bh ], [ %.pn65, %.loopexit.split-lp ], [ %i.ob, %bb.by ], [ %i.oc, %bb.bz ]
  call void @_ZN5folly3f146detail11F14BasicSetINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapAppendFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  br label %bb.cn

bb.cn:                                            ; preds = %bb.j, %bb.cm
  %.pn70.pn.pn.pn = phi { ptr, i32 } [ %.pn65.pn.pn.pn, %bb.cm ], [ %i.bc, %bb.j ]
  call void @_ZN5folly3f146detail11F14BasicSetINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapAppendFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn75 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn70.pn.pn.pn, %bb.cn ]
  resume { ptr, i32 } %.pn75
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly3f146detail11F14BasicSetINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapAppendFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22409 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  %i.d = load i8, ptr %i.c, align 1, !tbaa !1392
  %i.e = icmp eq i8 %i.d, -1
  br i1 %i.e, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapAppendFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !1395 ; 2 uses
  %i.h = and i64 %i.g, 255                        ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %.0.copyload.i.i.i.i.i = load i16, ptr %i.i, align 1
  %i.j = zext i16 %.0.copyload.i.i.i.i.i to i64   ; 2 uses
  %notmask.i.i.i.i = shl nsw i64 -1, %i.h
  %i.k = xor i64 %notmask.i.i.i.i, -1
  %i.l = lshr i64 %i.k, 12
  %i.m = add nuw nsw i64 %i.l, 1
  %i.n = icmp ult i64 %i.g, 256
  br i1 %i.n, label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS6_ENS4_9functions32MapAppendFunctionEqualComparatorEvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.h, ptr %i.f, align 8, !tbaa !1395
  %.0.copyload.i.pre.i.i.i = load i16, ptr %i.i, align 1
  %.pre20.i.i.i = zext i16 %.0.copyload.i.pre.i.i.i to i64
  br label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS6_ENS4_9functions32MapAppendFunctionEqualComparatorEvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i

_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS6_ENS4_9functions32MapAppendFunctionEqualComparatorEvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i: ; preds = %bb.c, %bb.b
  %.pre-phi21.i.i.i = phi i64 [ %.pre20.i.i.i, %bb.c ], [ %i.j, %bb.b ]
  %i.o = icmp eq i64 %i.h, 0
  %i.p = shl nuw nsw i64 %.pre-phi21.i.i.i, 2
  %.neg17.i.i.i = sub nuw nsw i64 -16, %i.p
  %.neg18.i.i.i = shl i64 -64, %i.h
  %.0.i.neg.i.i.i = select i1 %i.o, i64 %.neg17.i.i.i, i64 %.neg18.i.i.i
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.a, align 8, !tbaa !22409
  store i64 0, ptr %i.f, align 8, !tbaa !1395
end_hunk_1
begin_hunk_2_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17MapUpdateFunctionINS3_10VectorExecEEESB_NS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSE_INSF_ILm2EEELb0ELb0EEEEENS0_15ConstantCheckerIJSK_NS0_5ArrayISH_EENSM_ISJ_EEEEEJSK_SN_SO_EEEE8applyUdfIZNKSR_7iterateIJNS3_12VectorReaderISK_EENSU_ISN_EENSU_ISO_EEEEEvRNSR_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSZ_S13_EUlS13_E_ZNKSS_IS18_EEvSZ_S13_EUlS13_E0_EEvRKS1_S13_S15_EUlS13_E_EEvS13_:bb.a
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !17
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.fa, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  %i.fb = load ptr, ptr %i.ao, align 8, !tbaa !25916, !nonnull !552, !align !674
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !25917, !nonnull !552, !align !674 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !541
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 32
  %i.fg = load ptr, ptr %i.ff, align 8
  invoke void %i.fg(ptr noundef nonnull align 8 dereferenceable(264) %i.fd)
          to label %.noexc46 unwind label %.loopexit56, !inline_history !11884

.loopexit:                                        ; preds = %bb.x, %.lr.ph.i.i.i.preheader.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #42
          to label %bb.am unwind label %.loopexit.split-lp

bb.y:                                             ; preds = %.body
  %i.fh = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #34
  %i.fi = icmp eq i32 %i.ej, %i.fh
  br i1 %i.fi, label %bb.z, label %.loopexit54

bb.z:                                             ; preds = %bb.y
  %i.fj = call ptr @__cxa_begin_catch(ptr %i.ei) #34 ; 0 uses
  %i.fk = load ptr, ptr %i.ao, align 8, !tbaa !25916, !nonnull !552, !align !674
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !25917, !nonnull !552, !align !674 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !541
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  %i.fp = load ptr, ptr %i.fo, align 8
  invoke void %i.fp(ptr noundef nonnull align 8 dereferenceable(264) %i.fm)
          to label %.noexc40 unwind label %bb.ac, !inline_history !11884

.noexc40:                                         ; preds = %bb.z
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fl, i64 80
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !11875 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !954
  %i.fu = load ptr, ptr %i.fr, align 8, !tbaa !541
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 144
  %i.fw = load ptr, ptr %i.fv, align 8
  invoke void %i.fw(ptr noundef nonnull align 8 dereferenceable(94) %i.fr, i32 noundef %i.ft, i1 noundef zeroext true)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17MapUpdateFunctionINS1_10VectorExecEEES7_NS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSA_INSB_ILm2EEELb0ELb0EEEEENS0_15ConstantCheckerIJSG_NS0_5ArrayISD_EENSI_ISF_EEEEEJSG_SJ_SK_EEEE8applyUdfIZNKSN_7iterateIJNS1_12VectorReaderISG_EENSQ_ISJ_EENSQ_ISK_EEEEEvRNSN_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSV_SZ_ENKUlSZ_E0_clIiEEDaSZ_.exit7 unwind label %bb.ac, !inline_history !11884

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17MapUpdateFunctionINS1_10VectorExecEEES7_NS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSA_INSB_ILm2EEELb0ELb0EEEEENS0_15ConstantCheckerIJSG_NS0_5ArrayISD_EENSI_ISF_EEEEEJSG_SJ_SK_EEEE8applyUdfIZNKSN_7iterateIJNS1_12VectorReaderISG_EENSQ_ISJ_EENSQ_ISK_EEEEEvRNSN_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSV_SZ_ENKUlSZ_E0_clIiEEDaSZ_.exit7: ; preds = %.noexc40
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %6) #34
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %.pre, i32 noundef %i.at, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.aa unwind label %bb.ad

bb.aa:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17MapUpdateFunctionINS1_10VectorExecEEES7_NS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSA_INSB_ILm2EEELb0ELb0EEEEENS0_15ConstantCheckerIJSG_NS0_5ArrayISD_EENSI_ISF_EEEEEJSG_SJ_SK_EEEE8applyUdfIZNKSN_7iterateIJNS1_12VectorReaderISG_EENSQ_ISJ_EENSQ_ISK_EEEEEvRNSN_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSV_SZ_ENKUlSZ_E0_clIiEEDaSZ_.exit7
  %i.fx = load ptr, ptr %6, align 8, !tbaa !911
  %.not.i43 = icmp eq ptr %i.fx, null
  br i1 %.not.i43, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #34
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17MapUpdateFunctionINS1_10VectorExecEEES9_NS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSC_INSD_ILm2EEELb0ELb0EEEEENS0_15ConstantCheckerIJSI_NS0_5ArrayISF_EENSK_ISH_EEEEEJSI_SL_SM_EEEE8applyUdfIZNKSP_7iterateIJNS1_12VectorReaderISI_EENSS_ISL_EENSS_ISM_EEEEEvRNSP_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSX_S11_EUlS11_E_ZNKSQ_IS16_EEvSX_S11_EUlS11_E0_EEvRKNS0_17SelectivityVectorES11_S13_ENKUlS11_E_clIiEEDaS11_.exit

bb.ac:                                            ; preds = %.noexc40, %bb.z
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ad:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17MapUpdateFunctionINS1_10VectorExecEEES7_NS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSA_INSB_ILm2EEELb0ELb0EEEEENS0_15ConstantCheckerIJSG_NS0_5ArrayISD_EENSI_ISF_EEEEEJSG_SJ_SK_EEEE8applyUdfIZNKSN_7iterateIJNS1_12VectorReaderISG_EENSQ_ISJ_EENSQ_ISK_EEEEEvRNSN_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSV_SZ_ENKUlSZ_E0_clIiEEDaSZ_.exit7
  %i.fz = landingpad { ptr, i32 }
          cleanup
  %i.ga = load ptr, ptr %6, align 8, !tbaa !911
  %.not.i44 = icmp eq ptr %i.ga, null
  br i1 %.not.i44, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit45, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #34
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit45

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit45: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit45, %bb.ac
  %.pn.i = phi { ptr, i32 } [ %i.fz, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit45 ], [ %i.fy, %bb.ac ]
  invoke void @__cxa_end_catch()
          to label %.loopexit54 unwind label %bb.al

.loopexit56:                                      ; preds = %tailrecurse.i.i.i.i.3, %.noexc46
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit.split-lp:                               ; preds = %.loopexit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.noexc46:                                         ; preds = %tailrecurse.i.i.i.i.3
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fc, i64 80
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !11875 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !954
  %i.gf = load ptr, ptr %i.gc, align 8, !tbaa !541
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 144
  %i.gh = load ptr, ptr %i.gg, align 8
  invoke void %i.gh(ptr noundef nonnull align 8 dereferenceable(94) %i.gc, i32 noundef %i.ge, i1 noundef zeroext true)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17MapUpdateFunctionINS1_10VectorExecEEES7_NS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSA_INSB_ILm2EEELb0ELb0EEEEENS0_15ConstantCheckerIJSG_NS0_5ArrayISD_EENSI_ISF_EEEEEJSG_SJ_SK_EEEE8applyUdfIZNKSN_7iterateIJNS1_12VectorReaderISG_EENSQ_ISJ_EENSQ_ISK_EEEEEvRNSN_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSV_SZ_ENKUlSZ_E0_clIiEEDaSZ_.exit unwind label %.loopexit56, !inline_history !11884

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17MapUpdateFunctionINS1_10VectorExecEEES7_NS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSA_INSB_ILm2EEELb0ELb0EEEEENS0_15ConstantCheckerIJSG_NS0_5ArrayISD_EENSI_ISF_EEEEEJSG_SJ_SK_EEEE8applyUdfIZNKSN_7iterateIJNS1_12VectorReaderISG_EENSQ_ISJ_EENSQ_ISK_EEEEEvRNSN_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSV_SZ_ENKUlSZ_E0_clIiEEDaSZ_.exit: ; preds = %.noexc46
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %7) #34
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %.pre, i32 noundef %i.at, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17MapUpdateFunctionINS1_10VectorExecEEES7_NS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSA_INSB_ILm2EEELb0ELb0EEEEENS0_15ConstantCheckerIJSG_NS0_5ArrayISD_EENSI_ISF_EEEEEJSG_SJ_SK_EEEE8applyUdfIZNKSN_7iterateIJNS1_12VectorReaderISG_EENSQ_ISJ_EENSQ_ISK_EEEEEvRNSN_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSV_SZ_ENKUlSZ_E0_clIiEEDaSZ_.exit
  %i.gi = load ptr, ptr %7, align 8, !tbaa !911
  %.not.i49 = icmp eq ptr %i.gi, null
  br i1 %.not.i49, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit50, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #34
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit50

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit50: ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17MapUpdateFunctionINS1_10VectorExecEEES9_NS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSC_INSD_ILm2EEELb0ELb0EEEEENS0_15ConstantCheckerIJSI_NS0_5ArrayISF_EENSK_ISH_EEEEEJSI_SL_SM_EEEE8applyUdfIZNKSP_7iterateIJNS1_12VectorReaderISI_EENSS_ISL_EENSS_ISM_EEEEEvRNSP_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSX_S11_EUlS11_E_ZNKSQ_IS16_EEvSX_S11_EUlS11_E0_EEvRKNS0_17SelectivityVectorES11_S13_ENKUlS11_E_clIiEEDaS11_.exit

bb.ai:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17MapUpdateFunctionINS1_10VectorExecEEES7_NS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSA_INSB_ILm2EEELb0ELb0EEEEENS0_15ConstantCheckerIJSG_NS0_5ArrayISD_EENSI_ISF_EEEEEJSG_SJ_SK_EEEE8applyUdfIZNKSN_7iterateIJNS1_12VectorReaderISG_EENSQ_ISJ_EENSQ_ISK_EEEEEvRNSN_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSV_SZ_ENKUlSZ_E0_clIiEEDaSZ_.exit
  %i.gj = landingpad { ptr, i32 }
          cleanup
  %i.gk = load ptr, ptr %7, align 8, !tbaa !911
  %.not.i51 = icmp eq ptr %i.gk, null
  br i1 %.not.i51, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #34
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52: ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit56, %.loopexit.split-lp, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52
  %.pn16.i = phi { ptr, i32 } [ %i.gj, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52 ], [ %lpad.loopexit, %.loopexit56 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @__cxa_end_catch()
          to label %.loopexit54 unwind label %bb.al

.loopexit54:                                      ; preds = %bb.y, %bb.ak, %bb.af
  %.merged.i = phi { ptr, i32 } [ %.pn.i, %bb.af ], [ %.pn16.i, %bb.ak ], [ %eh.lpad-body, %bb.y ]
  resume { ptr, i32 } %.merged.i

bb.al:                                            ; preds = %bb.ak, %bb.af
  %i.gl = landingpad { ptr, i32 }
          catch ptr null
  %i.gm = extractvalue { ptr, i32 } %i.gl, 0
  call void @__clang_call_terminate(ptr %i.gm) #43
  unreachable

bb.am:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17MapUpdateFunctionINS1_10VectorExecEEES9_NS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSC_INSD_ILm2EEELb0ELb0EEEEENS0_15ConstantCheckerIJSI_NS0_5ArrayISF_EENSK_ISH_EEEEEJSI_SL_SM_EEEE8applyUdfIZNKSP_7iterateIJNS1_12VectorReaderISI_EENSS_ISL_EENSS_ISM_EEEEEvRNSP_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSX_S11_EUlS11_E_ZNKSQ_IS16_EEvSX_S11_EUlS11_E0_EEvRKNS0_17SelectivityVectorES11_S13_ENKUlS11_E_clIiEEDaS11_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit39, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit50
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit53, label %bb.i, !llvm.loop !25919

bb.an:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.gn = load ptr, ptr %0, align 8, !tbaa !1035
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !1416
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !1418
  tail call void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17MapUpdateFunctionINS3_10VectorExecEEESB_NS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSE_INSF_ILm2EEELb0ELb0EEEEENS0_15ConstantCheckerIJSK_NS0_5ArrayISH_EENSM_ISJ_EEEEEJSK_SN_SO_EEEE8applyUdfIZNKSR_7iterateIJNS3_12VectorReaderISK_EENSU_ISN_EENSU_ISO_EEEEEvRNSR_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSZ_S13_EUlS13_E_ZNKSS_IS18_EEvSZ_S13_EUlS13_E0_EEvRKNS0_17SelectivityVectorES13_S15_EUlS13_E_EEvPKmiibS13_(ptr noundef %i.gn, i32 noundef %i.gp, i32 noundef %i.gr, i1 noundef zeroext true, ptr noundef nonnull byval(%class.anon.8177) align 8 %1)
  br label %.loopexit53

.loopexit53:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17MapUpdateFunctionINS1_10VectorExecEEES9_NS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSC_INSD_ILm2EEELb0ELb0EEEEENS0_15ConstantCheckerIJSI_NS0_5ArrayISF_EENSK_ISH_EEEEEJSI_SL_SM_EEEE8applyUdfIZNKSP_7iterateIJNS1_12VectorReaderISI_EENSS_ISL_EENSS_ISM_EEEEEvRNSP_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSX_S11_EUlS11_E_ZNKSQ_IS16_EEvSX_S11_EUlS11_E0_EEvRKNS0_17SelectivityVectorES11_S13_ENKUlS11_E_clIiEEDaS11_.exit, %bb.h, %bb.an
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox9functions17MapUpdateFunctionINS0_4exec10VectorExecEE4callERNS3_9MapWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENS7_INS8_ILm2EEELb0ELb0EEEEERKNS3_7MapViewILb1ESA_SC_EERKNS3_9ArrayViewILb1ESA_EERKNSJ_ILb1ESC_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::pair.3101", align 8   ; 3 uses
  %6 = alloca %"struct.std::pair.3101", align 8   ; 4 uses
  %7 = alloca %"struct.fmt::v11::detail::format_arg_store.478", align 16 ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.folly::F14FastMap.8178", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 7 uses
  %10 = alloca %"class.facebook::velox::exec::GenericView", align 8 ; 9 uses
  %11 = alloca %"class.folly::F14FastSet.8194", align 8 ; 9 uses
  %12 = alloca %"class.facebook::velox::exec::MapView<true, facebook::velox::Generic<facebook::velox::TypeVariable<1>>, facebook::velox::Generic<facebook::velox::TypeVariable<2>>>::Element", align 8 ; 16 uses
  %13 = alloca %"class.std::tuple.3444", align 8  ; 6 uses
  %14 = alloca %"class.facebook::velox::exec::GenericView", align 8 ; 8 uses
  %15 = alloca %"class.std::tuple.3444", align 8  ; 6 uses
  %16 = alloca %"class.facebook::velox::exec::GenericView", align 8 ; 8 uses
  %17 = alloca %"class.facebook::velox::exec::GenericView", align 8 ; 8 uses
  %18 = alloca %"class.std::tuple.3444", align 8  ; 6 uses
  %19 = alloca %"class.facebook::velox::exec::GenericView", align 8 ; 8 uses
  %20 = alloca %"class.facebook::velox::exec::GenericView", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 4 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !12079 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !22402 ; 2 uses
  %.not = icmp eq i32 %i.c, %i.e
  br i1 %.not, label %bb.e, label %bb.b, !prof !742

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34, !noalias !25920
  store i32 %i.c, ptr %7, align 16, !tbaa !17, !noalias !25920
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %i.e, ptr %i.f, align 16, !tbaa !17, !noalias !25920
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull @.str.266, i64 60, i64 17, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34, !noalias !25920
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions17MapUpdateFunctionINS0_4exec10VectorExecEE4callERNS3_9MapWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENS7_INS8_ILm2EEELb0ELb0EEEEERKNS3_7MapViewILb1ESA_SC_EERKNS3_9ArrayViewILb1ESA_EERKNSJ_ILb1ESC_EEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr nonnull @.str.266) #42
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %8, align 8, !tbaa !7      ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.k = load i64, ptr %i.i, align 8, !tbaa !17
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %bb.dk

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  store ptr null, ptr %9, align 8, !tbaa !25923
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.m, align 8, !tbaa !25926
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  store i64 0, ptr %i.n, align 8, !tbaa !1395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 0, ptr %i.a, align 8, !tbaa !612
  %.not403 = icmp eq i32 %i.c, 0
  br i1 %.not403, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.t
  %i.t = phi i32 [ %i.c, %.lr.ph ], [ %i.ce, %bb.t ]
  %storemerge387 = phi i64 [ 0, %.lr.ph ], [ %i.cg, %bb.t ] ; 2 uses
  %i.u = trunc i64 %storemerge387 to i32
  %i.v = load ptr, ptr %3, align 8, !tbaa !12098  ; 3 uses
  %i.w = load i32, ptr %i.o, align 8, !tbaa !12102
  %i.x = add nsw i32 %i.w, %i.u                   ; 3 uses
  %i.y = sext i32 %i.x to i64                     ; 4 uses
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !8393, !nonnull !552, !align !674 ; 10 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !2366 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.ab, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.z, i64 58
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !tbaa !2367, !range !551 ; 2 uses
  br i1 %.not.i.i.i, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = trunc nuw i8 %.pre to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 57
  %i.ae = load i8, ptr %i.ad, align 1, !range !551
  %i.af = trunc nuw i8 %i.ae to i1
  %or.cond.i.i.i = select i1 %i.ac, i1 true, i1 %i.af
  br i1 %or.cond.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = lshr i64 %i.y, 6
  %i.ah = and i64 %i.ag, 67108863
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ah
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !612
  %i.ak = and i64 %i.y, 63
  %i.al = shl nuw i64 1, %i.ak
  %i.am = and i64 %i.aj, %i.al
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 59
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !2373, !range !551, !noundef !552
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aq = load i64, ptr %i.ab, align 8, !tbaa !612
  %i.ar = and i64 %i.aq, 1
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !2378
  %i.au = shl nsw i64 %i.y, 2
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !3
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  %i.ay = lshr i64 %i.ax, 6
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !612
  %i.bb = and i64 %i.ax, 63
  %i.bc = shl nuw i64 1, %i.bb
  %i.bd = and i64 %i.bc, %i.ba
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h
  %.0.i.i.i.in = phi i64 [ %i.am, %bb.h ], [ %i.ar, %bb.j ], [ %i.bd, %bb.k ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %bb.t, label %.thread

.thread:                                          ; preds = %bb.f, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  %i.be = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  store ptr %i.z, ptr %10, align 8, !tbaa !1034, !alias.scope !25928
  store ptr %i.be, ptr %i.p, align 8, !tbaa !12117, !alias.scope !25928
  store ptr %i.bf, ptr %i.q, align 8, !tbaa !12118, !alias.scope !25928
  store i32 %i.x, ptr %i.r, align 8, !tbaa !8646, !alias.scope !25928
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34, !noalias !25933
  %i.bg = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !8368, !noalias !25936 ; 2 uses
  %i.bi = trunc nuw i8 %.pre to i1
  br i1 %i.bi, label %_ZN5folly6detail20callWithExtractedKeyIN8facebook5velox4exec11GenericViewEmNS_3f146detail11F14BasicMapINS7_21VectorContainerPolicyIS5_mSt4hashIS5_ENS3_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE11UsableAsKeyESaISt4pairIKS5_mEEZNSH_7emplaceIJS5_RmEEESJ_INS7_23VectorContainerIteratorIPSL_EEbEDpOT_EUlSV_E_S5_SO_EEDaRT2_OT3_OT4_OT5_.exit.i, label %bb.m

bb.m:                                             ; preds = %.thread
  %i.bj = getelementptr inbounds nuw i8, ptr %i.z, i64 59
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !2373, !range !551, !noalias !25936, !noundef !552
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !2374, !noalias !25936
  br label %_ZN5folly6detail20callWithExtractedKeyIN8facebook5velox4exec11GenericViewEmNS_3f146detail11F14BasicMapINS7_21VectorContainerPolicyIS5_mSt4hashIS5_ENS3_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE11UsableAsKeyESaISt4pairIKS5_mEEZNSH_7emplaceIJS5_RmEEESJ_INS7_23VectorContainerIteratorIPSL_EEbEDpOT_EUlSV_E_S5_SO_EEDaRT2_OT3_OT4_OT5_.exit.i

bb.o:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !2378, !noalias !25936
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.y
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !3, !noalias !25936
  br label %_ZN5folly6detail20callWithExtractedKeyIN8facebook5velox4exec11GenericViewEmNS_3f146detail11F14BasicMapINS7_21VectorContainerPolicyIS5_mSt4hashIS5_ENS3_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE11UsableAsKeyESaISt4pairIKS5_mEEZNSH_7emplaceIJS5_RmEEESJ_INS7_23VectorContainerIteratorIPSL_EEbEDpOT_EUlSV_E_S5_SO_EEDaRT2_OT3_OT4_OT5_.exit.i

_ZN5folly6detail20callWithExtractedKeyIN8facebook5velox4exec11GenericViewEmNS_3f146detail11F14BasicMapINS7_21VectorContainerPolicyIS5_mSt4hashIS5_ENS3_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE11UsableAsKeyESaISt4pairIKS5_mEEZNSH_7emplaceIJS5_RmEEESJ_INS7_23VectorContainerIteratorIPSL_EEbEDpOT_EUlSV_E_S5_SO_EEDaRT2_OT3_OT4_OT5_.exit.i: ; preds = %bb.o, %bb.n, %.thread
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.br, %bb.o ], [ %i.bn, %bb.n ], [ %i.x, %.thread ]
  %i.bs = load ptr, ptr %i.bh, align 8, !tbaa !541, !noalias !25936
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 104
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !25936
  %i.bv = invoke noundef i64 %i.bu(ptr noundef nonnull align 8 dereferenceable(94) %i.bh, i32 noundef %.0.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc126 unwind label %bb.r, !inline_history !25947 ; 2 uses

.noexc126:                                        ; preds = %_ZN5folly6detail20callWithExtractedKeyIN8facebook5velox4exec11GenericViewEmNS_3f146detail11F14BasicMapINS7_21VectorContainerPolicyIS5_mSt4hashIS5_ENS3_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE11UsableAsKeyESaISt4pairIKS5_mEEZNSH_7emplaceIJS5_RmEEESJ_INS7_23VectorContainerIteratorIPSL_EEbEDpOT_EUlSV_E_S5_SO_EEDaRT2_OT3_OT4_OT5_.exit.i
  %i.bw = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.bv) ; 2 uses
  %i.bx = lshr i64 %i.bw, 24
  %i.by = or i64 %i.bx, 128
  %i.bz = add i64 %i.bw, %i.bv
  invoke void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEmSt4hashIS7_ENS5_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS7_JS7_RmEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESI_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.3101") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 %i.bz, i64 %i.by, ptr noundef nonnull align 8 dereferenceable(28) %10, ptr noundef nonnull align 8 dereferenceable(28) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc127 unwind label %bb.r

.noexc127:                                        ; preds = %.noexc126
  %i.ca = load i8, ptr %i.s, align 8, !tbaa !526, !range !551, !noalias !25948, !noundef !552
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34, !noalias !25933
  %i.cb = trunc nuw i8 %i.ca to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br i1 %i.cb, label %.noexc127._crit_edge, label %bb.p, !prof !742

.noexc127._crit_edge:                             ; preds = %.noexc127
  %.pre417 = load i64, ptr %i.a, align 8, !tbaa !612
  %.pre418 = load i32, ptr %i.b, align 4, !tbaa !12079
  br label %bb.t

bb.p:                                             ; preds = %.noexc127
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions17MapUpdateFunctionINS0_4exec10VectorExecEE4callERNS3_9MapWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENS7_INS8_ILm2EEELb0ELb0EEEEERKNS3_7MapViewILb1ESA_SC_EERKNS3_9ArrayViewILb1ESA_EERKNSJ_ILb1ESC_EEE18veloxCheckFailArgs_1, ptr noundef nonnull @.str.270) #42
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %.noexc126, %_ZN5folly6detail20callWithExtractedKeyIN8facebook5velox4exec11GenericViewEmNS_3f146detail11F14BasicMapINS7_21VectorContainerPolicyIS5_mSt4hashIS5_ENS3_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE11UsableAsKeyESaISt4pairIKS5_mEEZNSH_7emplaceIJS5_RmEEESJ_INS7_23VectorContainerIteratorIPSL_EEbEDpOT_EUlSV_E_S5_SO_EEDaRT2_OT3_OT4_OT5_.exit.i
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %bb.u

bb.s:                                             ; preds = %bb.p
  %i.cd = landingpad { ptr, i32 }
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox9functions17MapUpdateFunctionINS0_4exec10VectorExecEE4callERNS3_9MapWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENS7_INS8_ILm2EEELb0ELb0EEEEERKNS3_7MapViewILb1ESA_SC_EERKNS3_9ArrayViewILb1ESA_EERKNSJ_ILb1ESC_EE:bb.a
  %i.kh = add nsw i32 %i.kg, %i.io
  call void @llvm.experimental.noalias.scope.decl(metadata !25992)
  call void @llvm.experimental.noalias.scope.decl(metadata !25995)
  %i.ki = load ptr, ptr %i.kf, align 8, !tbaa !11918, !noalias !25998, !nonnull !552, !align !674
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kf, i64 56
  store ptr %i.ki, ptr %14, align 8, !tbaa !1034, !alias.scope !25998
  store ptr %i.kj, ptr %i.dc, align 8, !tbaa !12117, !alias.scope !25998
  store ptr %i.kk, ptr %i.dd, align 8, !tbaa !12118, !alias.scope !25998
  store i32 %i.kh, ptr %i.de, align 8, !tbaa !8646, !alias.scope !25998
  invoke void @_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.ke, ptr noundef nonnull align 8 dereferenceable(28) %14)
          to label %bb.ay unwind label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  br label %bb.bt

bb.az:                                            ; preds = %.thread333
  %i.kl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.ba:                                            ; preds = %bb.aw
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.bb:                                            ; preds = %bb.ax
  %i.kn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb, %bb.az
  %.pn72.pn = phi { ptr, i32 } [ %i.kl, %bb.az ], [ %i.kn, %bb.bb ], [ %i.km, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  br label %.loopexit.split-lp379

.noexc.thread.loopexit:                           ; preds = %.noexc94, %bb.ah
  %.pre419 = load ptr, ptr %i.cy, align 8, !tbaa !12106
  %.pre420 = load i64, ptr %i.cz, align 8, !tbaa !12108
  br label %.noexc.thread

.noexc.thread:                                    ; preds = %.noexc.thread.loopexit, %bb.v
  %i.ko = phi i64 [ %.pre420, %.noexc.thread.loopexit ], [ %indvars.iv, %bb.v ] ; 3 uses
  %i.kp = phi ptr [ %.pre419, %.noexc.thread.loopexit ], [ %i.cs, %bb.v ]
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !11918, !nonnull !552, !align !674 ; 5 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 24
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !2366 ; 4 uses
  %.not.i.i.i148 = icmp eq ptr %i.ks, null
  br i1 %.not.i.i.i148, label %.thread335, label %bb.bd

bb.bd:                                            ; preds = %.noexc.thread
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kq, i64 58
  %i.ku = load i8, ptr %i.kt, align 2, !tbaa !2367, !range !551, !noundef !552
  %i.kv = trunc nuw i8 %i.ku to i1
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kq, i64 57
  %i.kx = load i8, ptr %i.kw, align 1, !range !551
  %i.ky = trunc nuw i8 %i.kx to i1
  %or.cond.i.i.i149 = select i1 %i.kv, i1 true, i1 %i.ky
  br i1 %or.cond.i.i.i149, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.kz = lshr i64 %i.ko, 6
  %i.la = and i64 %i.kz, 67108863
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %i.la
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !612
  %i.ld = and i64 %i.ko, 63
  %i.le = shl nuw i64 1, %i.ld
  %i.lf = and i64 %i.lc, %i.le
  br label %bb.bi

bb.bf:                                            ; preds = %bb.bd
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kq, i64 59
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !2373, !range !551, !noundef !552
  %i.li = trunc nuw i8 %i.lh to i1
  br i1 %i.li, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.lj = load i64, ptr %i.ks, align 8, !tbaa !612
  %i.lk = and i64 %i.lj, 1
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  %i.ll = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !2378
  %sext.i150 = shl i64 %i.ko, 32
  %i.ln = ashr exact i64 %sext.i150, 30
  %i.lo = getelementptr inbounds i8, ptr %i.lm, i64 %i.ln
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !3
  %i.lq = zext i32 %i.lp to i64                   ; 2 uses
  %i.lr = lshr i64 %i.lq, 6
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %i.lr
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !612
  %i.lu = and i64 %i.lq, 63
  %i.lv = shl nuw i64 1, %i.lu
  %i.lw = and i64 %i.lv, %i.lt
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %bb.be
  %.0.i.i.i152.in = phi i64 [ %i.lf, %bb.be ], [ %i.lk, %bb.bg ], [ %i.lw, %bb.bh ]
  %.0.i.i.i152.not = icmp eq i64 %.0.i.i.i152.in, 0
  br i1 %.0.i.i.i152.not, label %bb.bj, label %.thread335

bb.bj:                                            ; preds = %bb.bi
  %i.lx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENS3_INS4_ILm2EEELb0ELb0EEEE8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.bk unwind label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.lx, ptr noundef nonnull align 8 dereferenceable(28) %12)
          to label %bb.bt unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp379

.thread335:                                       ; preds = %.noexc.thread, %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #34
  invoke void @_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENS3_INS4_ILm2EEELb0ELb0EEEE8add_itemEv(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.3444") align 8 %15, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.bm unwind label %bb.bp

bb.bm:                                            ; preds = %.thread335
  %i.lz = load ptr, ptr %i.df, align 8, !tbaa !12119, !nonnull !552, !align !674
  %i.ma = load ptr, ptr %15, align 8, !tbaa !8636, !nonnull !552, !align !674
  invoke void @_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.lz, ptr noundef nonnull align 8 dereferenceable(28) %12)
          to label %bb.bn unwind label %bb.bq

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !25999)
  %i.mb = load ptr, ptr %i.cy, align 8, !tbaa !12106, !noalias !25999 ; 3 uses
  %i.mc = load i64, ptr %i.cz, align 8, !tbaa !12108, !noalias !25999
  %i.md = trunc i64 %i.mc to i32
  call void @llvm.experimental.noalias.scope.decl(metadata !26002)
  %i.me = load ptr, ptr %i.mb, align 8, !tbaa !11918, !noalias !26005, !nonnull !552, !align !674
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mb, i64 56
  store ptr %i.me, ptr %16, align 8, !tbaa !1034, !alias.scope !26005
  store ptr %i.mf, ptr %i.dg, align 8, !tbaa !12117, !alias.scope !26005
  store ptr %i.mg, ptr %i.dh, align 8, !tbaa !12118, !alias.scope !26005
  store i32 %i.md, ptr %i.di, align 8, !tbaa !8646, !alias.scope !26005
  invoke void @_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.ma, ptr noundef nonnull align 8 dereferenceable(28) %16)
          to label %bb.bo unwind label %bb.br

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  br label %bb.bt

bb.bp:                                            ; preds = %.thread335
  %i.mh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.bq:                                            ; preds = %bb.bm
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.br:                                            ; preds = %bb.bn
  %i.mj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #34
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bq, %bb.br, %bb.bp
  %.pn69.pn = phi { ptr, i32 } [ %i.mh, %bb.bp ], [ %i.mj, %bb.br ], [ %i.mi, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  br label %.loopexit.split-lp379

bb.bt:                                            ; preds = %bb.bk, %bb.ay, %bb.at, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.mk = trunc nsw i64 %indvars.iv.next to i32
  %i.ml = icmp eq i32 %i.ct, %i.mk
  br i1 %i.ml, label %._crit_edge395.loopexit, label %bb.v

.loopexit.split-lp379:                            ; preds = %.loopexit378, %.loopexit.split-lp379.loopexit.split-lp, %.loopexit.split-lp379.loopexit, %bb.av, %bb.bc, %bb.bs, %bb.bl, %bb.au
  %.pn75.pn = phi { ptr, i32 } [ %.pn72.pn, %bb.bc ], [ %i.kb, %bb.au ], [ %.pn69.pn, %bb.bs ], [ %i.ly, %bb.bl ], [ %i.kc, %bb.av ], [ %lpad.loopexit380, %.loopexit378 ], [ %lpad.loopexit382, %.loopexit.split-lp379.loopexit ], [ %lpad.loopexit.split-lp383, %.loopexit.split-lp379.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  br label %.loopexit.split-lp

._crit_edge395.loopexit:                          ; preds = %bb.bt
  %.pre421 = load i32, ptr %i.b, align 4, !tbaa !12079, !noalias !26006
  br label %._crit_edge395

._crit_edge395:                                   ; preds = %._crit_edge395.loopexit, %._crit_edge
  %i.mm = phi i32 [ %.pre421, %._crit_edge395.loopexit ], [ %i.cj, %._crit_edge ]
  %i.mn = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.mo = load ptr, ptr %3, align 8, !tbaa !12098, !noalias !26009 ; 5 uses
  %i.mp = load ptr, ptr %4, align 8, !tbaa !22498, !noalias !26012 ; 3 uses
  %i.mq = icmp eq i32 %i.mm, 0
  br i1 %i.mq, label %._crit_edge402, label %.lr.ph401

.lr.ph401:                                        ; preds = %._crit_edge395
  %i.mr = load i32, ptr %i.mn, align 8, !tbaa !12102, !noalias !26009
  %i.ms = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.mt = load i32, ptr %i.ms, align 8, !tbaa !22502, !noalias !26012
  %21 = getelementptr inbounds nuw i8, ptr %i.mo, i64 8 ; 2 uses
  %22 = getelementptr inbounds nuw i8, ptr %i.mo, i64 56 ; 2 uses
  %23 = getelementptr inbounds nuw i8, ptr %17, i64 8
  %24 = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.mu = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.mv = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.mw = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.mx = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.my = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mp, <2 x i64> <i64 8, i64 56>
  %i.na = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.nb = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.nc = sext i32 %i.mr to i64
  %i.nd = sext i32 %i.mt to i64
  br label %bb.bu

bb.bu:                                            ; preds = %.lr.ph401, %.critedge
  %indvars.iv412 = phi i64 [ %i.nd, %.lr.ph401 ], [ %indvars.iv.next413, %.critedge ] ; 5 uses
  %indvars.iv410 = phi i64 [ %i.nc, %.lr.ph401 ], [ %indvars.iv.next411, %.critedge ] ; 9 uses
  %i.ne = load ptr, ptr %i.mo, align 8, !tbaa !8393, !nonnull !552, !align !674 ; 13 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 24
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !2366 ; 4 uses
  %.not.i.i.i158 = icmp eq ptr %i.ng, null
  br i1 %.not.i.i.i158, label %.thread337, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ne, i64 58
  %i.ni = load i8, ptr %i.nh, align 2, !tbaa !2367, !range !551, !noundef !552
  %i.nj = trunc nuw i8 %i.ni to i1
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ne, i64 57
  %i.nl = load i8, ptr %i.nk, align 1, !range !551
  %i.nm = trunc nuw i8 %i.nl to i1
  %or.cond.i.i.i159 = select i1 %i.nj, i1 true, i1 %i.nm
  br i1 %or.cond.i.i.i159, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.nn = lshr i64 %indvars.iv410, 6
  %i.no = and i64 %i.nn, 67108863
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.ng, i64 %i.no
  %i.nq = load i64, ptr %i.np, align 8, !tbaa !612
  %i.nr = and i64 %indvars.iv410, 63
  %i.ns = shl nuw i64 1, %i.nr
  %i.nt = and i64 %i.nq, %i.ns
  br label %bb.ca

bb.bx:                                            ; preds = %bb.bv
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ne, i64 59
  %i.nv = load i8, ptr %i.nu, align 1, !tbaa !2373, !range !551, !noundef !552
  %i.nw = trunc nuw i8 %i.nv to i1
  br i1 %i.nw, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.nx = load i64, ptr %i.ng, align 8, !tbaa !612
  %i.ny = and i64 %i.nx, 1
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bx
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !2378
  %i.ob = shl nsw i64 %indvars.iv410, 2
  %i.oc = getelementptr inbounds i8, ptr %i.oa, i64 %i.ob
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !3
  %i.oe = zext i32 %i.od to i64                   ; 2 uses
  %i.of = lshr i64 %i.oe, 6
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.ng, i64 %i.of
  %i.oh = load i64, ptr %i.og, align 8, !tbaa !612
  %i.oi = and i64 %i.oe, 63
  %i.oj = shl nuw i64 1, %i.oi
  %i.ok = and i64 %i.oj, %i.oh
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by, %bb.bw
  %.0.i.i.i162.in = phi i64 [ %i.nt, %bb.bw ], [ %i.ny, %bb.by ], [ %i.ok, %bb.bz ]
  %.0.i.i.i162.not = icmp eq i64 %.0.i.i.i162.in, 0
  br i1 %.0.i.i.i162.not, label %.critedge, label %.thread337

.thread337:                                       ; preds = %bb.bu, %bb.ca
  %i.ol = load i64, ptr %i.cl, align 8, !tbaa !1395
  %i.om = icmp ult i64 %i.ol, 256
  br i1 %i.om, label %.thread355, label %bb.cb

bb.cb:                                            ; preds = %.thread337
  %i.on = getelementptr inbounds nuw i8, ptr %i.ne, i64 48 ; 2 uses
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !8368 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.ne, i64 58 ; 2 uses
  %i.oq = load i8, ptr %i.op, align 2, !tbaa !2367, !range !551, !noundef !552
  %i.or = trunc nuw i8 %i.oq to i1
  %i.os = trunc nsw i64 %indvars.iv410 to i32     ; 2 uses
  br i1 %i.or, label %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS6_ENS4_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEE14computeKeyHashIS6_EEmRKT_.exit.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ot = getelementptr inbounds nuw i8, ptr %i.ne, i64 59
  %i.ou = load i8, ptr %i.ot, align 1, !tbaa !2373, !range !551, !noundef !552
  %i.ov = trunc nuw i8 %i.ou to i1
  br i1 %i.ov, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ne, i64 64
  %i.ox = load i32, ptr %i.ow, align 8, !tbaa !2374
  br label %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS6_ENS4_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEE14computeKeyHashIS6_EEmRKT_.exit.i

bb.ce:                                            ; preds = %bb.cc
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !2378
  %i.pa = getelementptr inbounds [4 x i8], ptr %i.oz, i64 %indvars.iv410
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !3
  br label %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS6_ENS4_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEE14computeKeyHashIS6_EEmRKT_.exit.i

_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS6_ENS4_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEE14computeKeyHashIS6_EEmRKT_.exit.i: ; preds = %bb.ce, %bb.cd, %bb.cb
  %.0.i.i.i.i.i.i168 = phi i32 [ %i.pb, %bb.ce ], [ %i.ox, %bb.cd ], [ %i.os, %bb.cb ]
  %i.pc = load ptr, ptr %i.oo, align 8, !tbaa !541
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 104
  %i.pe = load ptr, ptr %i.pd, align 8
  %i.pf = invoke noundef i64 %i.pe(ptr noundef nonnull align 8 dereferenceable(94) %i.oo, i32 noundef %.0.i.i.i.i.i.i168)
          to label %.noexc115 unwind label %.loopexit.split-lp.loopexit, !inline_history !26015 ; 2 uses

.noexc115:                                        ; preds = %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS6_ENS4_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEE14computeKeyHashIS6_EEmRKT_.exit.i
  %i.pg = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.pf) ; 2 uses
  %i.ph = lshr i64 %i.pg, 24
  %i.pi = or i64 %i.ph, 128                       ; 2 uses
  %i.pj = add i64 %i.pg, %i.pf
  %i.pk = shl nuw nsw i64 %i.pi, 1
  %i.pl = or disjoint i64 %i.pk, 1
  %i.pm = trunc nuw i64 %i.pi to i8
  %i.pn = insertelement <16 x i8> poison, i8 %i.pm, i64 0
  %i.po = shufflevector <16 x i8> %i.pn, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.pp = load i64, ptr %i.cl, align 8, !tbaa !1395
  %i.pq = and i64 %i.pp, 255
  %i.pr = shl nuw i64 1, %i.pq
  %i.ps = getelementptr inbounds nuw i8, ptr %i.ne, i64 59
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %i.pu = getelementptr inbounds nuw i8, ptr %i.ne, i64 64
  br label %.noexc117

.noexc117:                                        ; preds = %.noexc115, %.noexc120
  %.0.i.i96397 = phi i64 [ %i.pj, %.noexc115 ], [ %i.sc, %.noexc120 ] ; 2 uses
  %.022.i.i95396 = phi i64 [ %i.pr, %.noexc115 ], [ %i.sb, %.noexc120 ]
  %i.pv = load ptr, ptr %i.ck, align 8, !tbaa !25954
  %i.pw = load i64, ptr %i.cl, align 8, !tbaa !1395
  %i.px = and i64 %i.pw, 255
  %i.py = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i96397, i64 range(i64 0, 256) %i.px)
  %i.pz = getelementptr inbounds nuw [64 x i8], ptr %i.pv, i64 %i.py ; 4 uses
  %i.qa = load <16 x i8>, ptr %i.pz, align 16, !tbaa !17
  %i.qb = icmp eq <16 x i8> %i.qa, %i.po
  %i.qc = bitcast <16 x i1> %i.qb to i16
  %i.qd = and i16 %i.qc, 4095
  %i.qe = zext nneg i16 %i.qd to i32
  %i.qf = icmp ne ptr %i.pz, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.qg = getelementptr inbounds nuw i8, ptr %i.pz, i64 16
  br label %.critedge.i.i98

.critedge.i.i98:                                  ; preds = %.noexc119, %.noexc117
  %.sroa.0287.0 = phi i32 [ %i.qe, %.noexc117 ], [ %i.qj, %.noexc119 ] ; 4 uses
  %.not374 = icmp eq i32 %.sroa.0287.0, 0
  br i1 %.not374, label %bb.cm, label %.noexc118

.noexc118:                                        ; preds = %.critedge.i.i98
  %i.qh = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0287.0, i1 true)
  %i.qi = add nsw i32 %.sroa.0287.0, -1
  %i.qj = and i32 %i.qi, %.sroa.0287.0
  %i.qk = zext nneg i32 %i.qh to i64
  call void @llvm.assume(i1 %i.qf)
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.qg, i64 %i.qk
  %i.qm = load ptr, ptr %11, align 8, !tbaa !25952
  %i.qn = load i32, ptr %i.ql, align 4, !tbaa !3
  %i.qo = zext i32 %i.qn to i64
  %i.qp = getelementptr inbounds nuw [32 x i8], ptr %i.qm, i64 %i.qo ; 2 uses
  %i.qq = load ptr, ptr %i.on, align 8, !tbaa !8368 ; 2 uses
  %i.qr = load ptr, ptr %i.qp, align 8, !tbaa !12103, !nonnull !552, !align !674 ; 5 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 48
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !8368
  %i.qu = load i8, ptr %i.op, align 2, !tbaa !2367, !range !551, !noundef !552
  %i.qv = trunc nuw i8 %i.qu to i1
  br i1 %i.qv, label %_ZNK8facebook5velox4exec11GenericView12decodedIndexEv.exit.i.i.i172, label %bb.cf

bb.cf:                                            ; preds = %.noexc118
  %i.qw = load i8, ptr %i.ps, align 1, !tbaa !2373, !range !551, !noundef !552
  %i.qx = trunc nuw i8 %i.qw to i1
  br i1 %i.qx, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.qy = load i32, ptr %i.pu, align 8, !tbaa !2374
  br label %_ZNK8facebook5velox4exec11GenericView12decodedIndexEv.exit.i.i.i172

bb.ch:                                            ; preds = %bb.cf
  %i.qz = load ptr, ptr %i.pt, align 8, !tbaa !2378
  %i.ra = getelementptr inbounds [4 x i8], ptr %i.qz, i64 %indvars.iv410
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !3
  br label %_ZNK8facebook5velox4exec11GenericView12decodedIndexEv.exit.i.i.i172

_ZNK8facebook5velox4exec11GenericView12decodedIndexEv.exit.i.i.i172: ; preds = %bb.ch, %bb.cg, %.noexc118
  %.0.i.i.i.i.i173 = phi i32 [ %i.rb, %bb.ch ], [ %i.qy, %bb.cg ], [ %i.os, %.noexc118 ]
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qp, i64 24
  %i.rd = load i32, ptr %i.rc, align 8, !tbaa !8646 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.qr, i64 58
  %i.rf = load i8, ptr %i.re, align 2, !tbaa !2367, !range !551, !noundef !552
  %i.rg = trunc nuw i8 %i.rf to i1
  br i1 %i.rg, label %_ZNK8facebook5velox4exec11GenericView7compareERKS2_NS0_12CompareFlagsE.exit.i.i174, label %bb.ci

bb.ci:                                            ; preds = %_ZNK8facebook5velox4exec11GenericView12decodedIndexEv.exit.i.i.i172
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qr, i64 59
  %i.ri = load i8, ptr %i.rh, align 1, !tbaa !2373, !range !551, !noundef !552
  %i.rj = trunc nuw i8 %i.ri to i1
  br i1 %i.rj, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.rk = getelementptr inbounds nuw i8, ptr %i.qr, i64 64
  %i.rl = load i32, ptr %i.rk, align 8, !tbaa !2374
  br label %_ZNK8facebook5velox4exec11GenericView7compareERKS2_NS0_12CompareFlagsE.exit.i.i174

bb.ck:                                            ; preds = %bb.ci
  %i.rm = getelementptr inbounds nuw i8, ptr %i.qr, i64 8
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !2378
  %i.ro = sext i32 %i.rd to i64
  %i.rp = getelementptr inbounds [4 x i8], ptr %i.rn, i64 %i.ro
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !3
  br label %_ZNK8facebook5velox4exec11GenericView7compareERKS2_NS0_12CompareFlagsE.exit.i.i174

_ZNK8facebook5velox4exec11GenericView7compareERKS2_NS0_12CompareFlagsE.exit.i.i174: ; preds = %bb.ck, %bb.cj, %_ZNK8facebook5velox4exec11GenericView12decodedIndexEv.exit.i.i.i172
  %.0.i.i5.i.i.i175 = phi i32 [ %i.rq, %bb.ck ], [ %i.rl, %bb.cj ], [ %i.rd, %_ZNK8facebook5velox4exec11GenericView12decodedIndexEv.exit.i.i.i172 ]
  %i.rr = load ptr, ptr %i.qq, align 8, !tbaa !541
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 80
  %i.rt = load ptr, ptr %i.rs, align 8
  %i.ru = invoke i64 %i.rt(ptr noundef nonnull align 8 dereferenceable(94) %i.qq, ptr noundef %i.qt, i32 noundef %.0.i.i.i.i.i173, i32 noundef %.0.i.i5.i.i.i175, i64 4295033089)
          to label %.noexc177 unwind label %.loopexit, !inline_history !26016 ; 2 uses

.noexc177:                                        ; preds = %_ZNK8facebook5velox4exec11GenericView7compareERKS2_NS0_12CompareFlagsE.exit.i.i174
  %i.rv = and i64 %i.ru, 4294967296
  %.not.i.i176 = icmp eq i64 %i.rv, 0
  br i1 %.not.i.i176, label %bb.cl, label %.noexc119, !prof !524

bb.cl:                                            ; preds = %.noexc177
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox9functions32MapUpdateFunctionEqualComparatorclERKNS0_4exec11GenericViewES6_E18veloxCheckFailArgs, ptr noundef nonnull @.str.257) #42
          to label %.noexc178 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc178:                                        ; preds = %bb.cl
  unreachable

.noexc119:                                        ; preds = %.noexc177
  %i.rw = and i64 %i.ru, 4294967295
  %i.rx = icmp eq i64 %i.rw, 0
  br i1 %i.rx, label %.critedge, label %.critedge.i.i98, !prof !742, !llvm.loop !26017

bb.cm:                                            ; preds = %.critedge.i.i98
  %i.ry = getelementptr inbounds nuw i8, ptr %i.pz, i64 15
  %i.rz = load i8, ptr %i.ry, align 1, !tbaa !11021
  %i.sa = icmp eq i8 %i.rz, 0
  br i1 %i.sa, label %.thread355, label %.noexc120, !prof !742

.noexc120:                                        ; preds = %bb.cm
  %i.sb = add i64 %.022.i.i95396, -1              ; 2 uses
  %i.sc = add i64 %i.pl, %.0.i.i96397
  %.not.i.i97 = icmp eq i64 %i.sb, 0
  br i1 %.not.i.i97, label %.thread355, label %.noexc117, !llvm.loop !26018

.thread355:                                       ; preds = %bb.cm, %.noexc120, %.thread337
  %i.sd = load ptr, ptr %i.mp, align 8, !tbaa !11918, !nonnull !552, !align !674 ; 5 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 24
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !2366 ; 4 uses
  %.not.i.i.i181 = icmp eq ptr %i.sf, null
  br i1 %.not.i.i.i181, label %.thread371, label %bb.cn

bb.cn:                                            ; preds = %.thread355
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sd, i64 58
  %i.sh = load i8, ptr %i.sg, align 2, !tbaa !2367, !range !551, !noundef !552
  %i.si = trunc nuw i8 %i.sh to i1
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sd, i64 57
  %i.sk = load i8, ptr %i.sj, align 1, !range !551
  %i.sl = trunc nuw i8 %i.sk to i1
  %or.cond.i.i.i182 = select i1 %i.si, i1 true, i1 %i.sl
  br i1 %or.cond.i.i.i182, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.sm = lshr i64 %indvars.iv412, 6
  %i.sn = and i64 %i.sm, 67108863
  %i.so = getelementptr inbounds nuw [8 x i8], ptr %i.sf, i64 %i.sn
  %i.sp = load i64, ptr %i.so, align 8, !tbaa !612
  %i.sq = and i64 %indvars.iv412, 63
  %i.sr = shl nuw i64 1, %i.sq
  %i.ss = and i64 %i.sp, %i.sr
  br label %bb.cs

bb.cp:                                            ; preds = %bb.cn
  %i.st = getelementptr inbounds nuw i8, ptr %i.sd, i64 59
  %i.su = load i8, ptr %i.st, align 1, !tbaa !2373, !range !551, !noundef !552
  %i.sv = trunc nuw i8 %i.su to i1
  br i1 %i.sv, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.sw = load i64, ptr %i.sf, align 8, !tbaa !612
  %i.sx = and i64 %i.sw, 1
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cp
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sd, i64 8
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !2378
  %i.ta = shl nsw i64 %indvars.iv412, 2
  %i.tb = getelementptr inbounds i8, ptr %i.sz, i64 %i.ta
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !3
  %i.td = zext i32 %i.tc to i64                   ; 2 uses
  %i.te = lshr i64 %i.td, 6
  %i.tf = getelementptr inbounds nuw [8 x i8], ptr %i.sf, i64 %i.te
  %i.tg = load i64, ptr %i.tf, align 8, !tbaa !612
  %i.th = and i64 %i.td, 63
  %i.ti = shl nuw i64 1, %i.th
  %i.tj = and i64 %i.ti, %i.tg
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq, %bb.co
  %.0.i.i.i185.in = phi i64 [ %i.ss, %bb.co ], [ %i.sx, %bb.cq ], [ %i.tj, %bb.cr ]
  %.0.i.i.i185.not = icmp eq i64 %.0.i.i.i185.in, 0
  br i1 %.0.i.i.i185.not, label %bb.ct, label %.thread371

bb.ct:                                            ; preds = %bb.cs
  %i.tk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENS3_INS4_ILm2EEELb0ELb0EEEE8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.cu unwind label %bb.cw

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !26019)
  call void @llvm.experimental.noalias.scope.decl(metadata !26022)
  %i.tl = load ptr, ptr %i.mo, align 8, !tbaa !8393, !noalias !26025, !nonnull !552, !align !674
  store ptr %i.tl, ptr %17, align 8, !tbaa !1034, !alias.scope !26025
  store ptr %21, ptr %23, align 8, !tbaa !12117, !alias.scope !26025
  store ptr %22, ptr %24, align 8, !tbaa !12118, !alias.scope !26025
  %i.tm = trunc nsw i64 %indvars.iv410 to i32
  store i32 %i.tm, ptr %i.mu, align 8, !tbaa !8646, !alias.scope !26025
  invoke void @_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.tk, ptr noundef nonnull align 8 dereferenceable(28) %17)
          to label %bb.cv unwind label %bb.cx

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #34
  br label %.critedge

.loopexit:                                        ; preds = %_ZNK8facebook5velox4exec11GenericView7compareERKS2_NS0_12CompareFlagsE.exit.i.i174
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS6_ENS4_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEE14computeKeyHashIS6_EEmRKT_.exit.i
  %lpad.loopexit375 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.cl
  %lpad.loopexit.split-lp376 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.cw:                                            ; preds = %bb.ct
  %i.tn = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.cx:                                            ; preds = %bb.cu
  %i.to = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #34
  br label %.loopexit.split-lp

.thread371:                                       ; preds = %.thread355, %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #34
  invoke void @_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENS3_INS4_ILm2EEELb0ELb0EEEE8add_itemEv(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.3444") align 8 %18, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.cy unwind label %bb.db

bb.cy:                                            ; preds = %.thread371
  %i.tp = load ptr, ptr %i.mv, align 8, !tbaa !12119, !nonnull !552, !align !674
  %i.tq = load ptr, ptr %18, align 8, !tbaa !8636, !nonnull !552, !align !674
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !26026)
  call void @llvm.experimental.noalias.scope.decl(metadata !26029)
  %i.tr = load ptr, ptr %i.mo, align 8, !tbaa !8393, !noalias !26032, !nonnull !552, !align !674
  store ptr %i.tr, ptr %19, align 8, !tbaa !1034, !alias.scope !26032
  store ptr %21, ptr %i.mw, align 8, !tbaa !12117, !alias.scope !26032
  store ptr %22, ptr %i.mx, align 8, !tbaa !12118, !alias.scope !26032
  %i.ts = trunc nsw i64 %indvars.iv410 to i32
  store i32 %i.ts, ptr %i.my, align 8, !tbaa !8646, !alias.scope !26032
  invoke void @_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.tp, ptr noundef nonnull align 8 dereferenceable(28) %19)
          to label %bb.cz unwind label %bb.dc

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !26033)
  call void @llvm.experimental.noalias.scope.decl(metadata !26036)
  %i.tt = load ptr, ptr %i.mp, align 8, !tbaa !11918, !noalias !26039, !nonnull !552, !align !674
  store ptr %i.tt, ptr %20, align 8, !tbaa !1034, !alias.scope !26039
  store <2 x ptr> %i.mz, ptr %i.na, align 8, !tbaa !533, !alias.scope !26039
  %i.tu = trunc nsw i64 %indvars.iv412 to i32
  store i32 %i.tu, ptr %i.nb, align 8, !tbaa !8646, !alias.scope !26039
  invoke void @_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.tq, ptr noundef nonnull align 8 dereferenceable(28) %20)
          to label %bb.da unwind label %bb.dd

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #34
  br label %.critedge

bb.db:                                            ; preds = %.thread371
  %i.tv = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.dc:                                            ; preds = %bb.cy
  %i.tw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #34
  br label %bb.de

bb.dd:                                            ; preds = %bb.cz
  %i.tx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #34
  br label %bb.de

bb.de:                                            ; preds = %bb.dc, %bb.dd, %bb.db
  %.pn62.pn = phi { ptr, i32 } [ %i.tv, %bb.db ], [ %i.tx, %bb.dd ], [ %i.tw, %bb.dc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #34
  br label %.loopexit.split-lp

.critedge:                                        ; preds = %.noexc119, %bb.ca, %bb.da, %bb.cv
  %indvars.iv.next411 = add nsw i64 %indvars.iv410, 1 ; 2 uses
  %indvars.iv.next413 = add nsw i64 %indvars.iv412, 1
  %i.ty = load i32, ptr %i.mn, align 8, !tbaa !12102, !noalias !26006
  %i.tz = load i32, ptr %i.b, align 4, !tbaa !12079, !noalias !26006
  %i.ua = add nsw i32 %i.tz, %i.ty
  %i.ub = trunc nsw i64 %indvars.iv.next411 to i32
  %i.uc = icmp eq i32 %i.ua, %i.ub
  br i1 %i.uc, label %._crit_edge402, label %bb.bu, !llvm.loop !26040

._crit_edge402:                                   ; preds = %.critedge, %._crit_edge395
  %i.ud = load ptr, ptr %i.ck, align 8, !tbaa !25954 ; 3 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 15
  %i.uf = load i8, ptr %i.ue, align 1, !tbaa !1392
  %i.ug = icmp eq i8 %i.uf, -1
  br i1 %i.ug, label %_ZN5folly3f146detail11F14BasicSetINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEED2Ev.exit, label %bb.df

bb.df:                                            ; preds = %._crit_edge402
  %i.uh = load i64, ptr %i.cl, align 8, !tbaa !1395 ; 2 uses
  %i.ui = and i64 %i.uh, 255                      ; 4 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ud, i64 12 ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i16, ptr %i.uj, align 1
  %i.uk = zext i16 %.0.copyload.i.i.i.i.i.i to i64 ; 2 uses
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.ui
  %i.ul = xor i64 %notmask.i.i.i.i.i, -1
  %i.um = lshr i64 %i.ul, 12
  %i.un = add nuw nsw i64 %i.um, 1
  %i.uo = icmp ult i64 %i.uh, 256
  br i1 %i.uo, label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS6_ENS4_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  store i64 %i.ui, ptr %i.cl, align 8, !tbaa !1395
  %.0.copyload.i.pre.i.i.i.i = load i16, ptr %i.uj, align 1
  %.pre20.i.i.i.i = zext i16 %.0.copyload.i.pre.i.i.i.i to i64
  br label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS6_ENS4_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i.i

_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS6_ENS4_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i.i: ; preds = %bb.dg, %bb.df
  %.pre-phi21.i.i.i.i = phi i64 [ %.pre20.i.i.i.i, %bb.dg ], [ %i.uk, %bb.df ]
  %i.up = icmp eq i64 %i.ui, 0
  %i.uq = shl nuw nsw i64 %.pre-phi21.i.i.i.i, 2
  %.neg17.i.i.i.i = sub nuw nsw i64 -16, %i.uq
  %.neg18.i.i.i.i = shl i64 -64, %i.ui
  %.0.i.neg.i.i.i.i = select i1 %i.up, i64 %.neg17.i.i.i.i, i64 %.neg18.i.i.i.i
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.ck, align 8, !tbaa !25954
  store i64 0, ptr %i.cl, align 8, !tbaa !1395
  %i.ur = and i64 %.0.i.neg.i.i.i.i, -8
  %i.us = shl nuw nsw i64 %i.uk, 5
  %i.ut = mul i64 %i.us, %i.un
  %i.uu = sub i64 %i.ut, %i.ur
  call void @_ZdlPvm(ptr noundef nonnull %i.ud, i64 noundef %i.uu) #34
  br label %_ZN5folly3f146detail11F14BasicSetINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEED2Ev.exit

_ZN5folly3f146detail11F14BasicSetINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEED2Ev.exit: ; preds = %._crit_edge402, %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS6_ENS4_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  %i.uv = load ptr, ptr %i.m, align 8, !tbaa !25926 ; 3 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 15
  %i.ux = load i8, ptr %i.uw, align 1, !tbaa !1392
  %i.uy = icmp eq i8 %i.ux, -1
  br i1 %i.uy, label %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEmSt4hashIS7_ENS5_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEED2Ev.exit, label %bb.dh

bb.dh:                                            ; preds = %_ZN5folly3f146detail11F14BasicSetINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEED2Ev.exit
  %i.uz = load i64, ptr %i.n, align 8, !tbaa !1395 ; 2 uses
  %i.va = and i64 %i.uz, 255                      ; 4 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uv, i64 12 ; 2 uses
  %.0.copyload.i.i.i.i.i.i195 = load i16, ptr %i.vb, align 1
  %i.vc = zext i16 %.0.copyload.i.i.i.i.i.i195 to i64 ; 2 uses
  %notmask.i.i.i.i.i196 = shl nsw i64 -1, %i.va
  %i.vd = xor i64 %notmask.i.i.i.i.i196, -1
  %i.ve = lshr i64 %i.vd, 12
  %i.vf = add nuw nsw i64 %i.ve, 1
  %i.vg = icmp ult i64 %i.uz, 256
  br i1 %i.vg, label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEmSt4hashIS6_ENS4_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i.i, label %bb.di

bb.di:                                            ; preds = %bb.dh
  store i64 %i.va, ptr %i.n, align 8, !tbaa !1395
  %.0.copyload.i.pre.i.i.i.i197 = load i16, ptr %i.vb, align 1
  %.pre20.i.i.i.i198 = zext i16 %.0.copyload.i.pre.i.i.i.i197 to i64
  br label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEmSt4hashIS6_ENS4_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i.i

_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEmSt4hashIS6_ENS4_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i.i: ; preds = %bb.di, %bb.dh
  %.pre-phi21.i.i.i.i199 = phi i64 [ %.pre20.i.i.i.i198, %bb.di ], [ %i.vc, %bb.dh ]
  %i.vh = icmp eq i64 %i.va, 0
  %i.vi = shl nuw nsw i64 %.pre-phi21.i.i.i.i199, 2
  %.neg17.i.i.i.i200 = sub nuw nsw i64 -16, %i.vi
  %.neg18.i.i.i.i201 = shl i64 -64, %i.va
  %.0.i.neg.i.i.i.i202 = select i1 %i.vh, i64 %.neg17.i.i.i.i200, i64 %.neg18.i.i.i.i201
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.m, align 8, !tbaa !25926
  store i64 0, ptr %i.n, align 8, !tbaa !1395
  %i.vj = and i64 %.0.i.neg.i.i.i.i202, -8
  %i.vk = mul nuw nsw i64 %i.vc, 40
  %i.vl = mul i64 %i.vk, %i.vf
  %i.vm = sub i64 %i.vl, %i.vj
  call void @_ZdlPvm(ptr noundef nonnull %i.uv, i64 noundef %i.vm) #34
  br label %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEmSt4hashIS7_ENS5_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEED2Ev.exit

_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEmSt4hashIS7_ENS5_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEED2Ev.exit: ; preds = %_ZN5folly3f146detail11F14BasicSetINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEED2Ev.exit, %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEmSt4hashIS6_ENS4_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  ret void

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.cw, %bb.cx, %bb.de, %.loopexit.split-lp379
  %.pn75.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.to, %bb.cx ], [ %.pn62.pn, %bb.de ], [ %i.tn, %bb.cw ], [ %.pn75.pn, %.loopexit.split-lp379 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit375, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp376, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN5folly3f146detail11F14BasicSetINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  br label %bb.dj

bb.dj:                                            ; preds = %.loopexit.split-lp, %bb.u
  %.pn82.pn = phi { ptr, i32 } [ %.pn82, %bb.u ], [ %.pn75.pn.pn.pn.pn.pn, %.loopexit.split-lp ]
  call void @_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEmSt4hashIS7_ENS5_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn85 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn82.pn, %bb.dj ]
  resume { ptr, i32 } %.pn85
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly3f146detail11F14BasicSetINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25954 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  %i.d = load i8, ptr %i.c, align 1, !tbaa !1392
  %i.e = icmp eq i8 %i.d, -1
  br i1 %i.e, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !1395 ; 2 uses
  %i.h = and i64 %i.g, 255                        ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %.0.copyload.i.i.i.i.i = load i16, ptr %i.i, align 1
  %i.j = zext i16 %.0.copyload.i.i.i.i.i to i64   ; 2 uses
  %notmask.i.i.i.i = shl nsw i64 -1, %i.h
  %i.k = xor i64 %notmask.i.i.i.i, -1
  %i.l = lshr i64 %i.k, 12
  %i.m = add nuw nsw i64 %i.l, 1
  %i.n = icmp ult i64 %i.g, 256
  br i1 %i.n, label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS6_ENS4_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.h, ptr %i.f, align 8, !tbaa !1395
  %.0.copyload.i.pre.i.i.i = load i16, ptr %i.i, align 1
  %.pre20.i.i.i = zext i16 %.0.copyload.i.pre.i.i.i to i64
  br label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS6_ENS4_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i

_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS6_ENS4_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i: ; preds = %bb.c, %bb.b
  %.pre-phi21.i.i.i = phi i64 [ %.pre20.i.i.i, %bb.c ], [ %i.j, %bb.b ]
  %i.o = icmp eq i64 %i.h, 0
  %i.p = shl nuw nsw i64 %.pre-phi21.i.i.i, 2
  %.neg17.i.i.i = sub nuw nsw i64 -16, %i.p
  %.neg18.i.i.i = shl i64 -64, %i.h
  %.0.i.neg.i.i.i = select i1 %i.o, i64 %.neg17.i.i.i, i64 %.neg18.i.i.i
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.a, align 8, !tbaa !25954
  store i64 0, ptr %i.f, align 8, !tbaa !1395
end_hunk_3
