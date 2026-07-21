inline.NumInlined: 171859
inline.NumDeleted: 43813
loop-unroll.NumCompletelyUnrolled: 1306
loop-unroll.NumRuntimeUnrolled: 817
loop-unroll.NumUnrolled: 2123
begin_hunk_0_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayRemoveFunctionINS3_10VectorExecEEESB_NS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSI_SH_EEEJSI_SH_EEEE8applyUdfIZNKSM_7iterateIJNS3_12VectorReaderISI_EENSP_ISH_EEEEEvRNSM_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvST_SX_EUlSX_E_ZNKSN_IS12_EEvST_SX_EUlSX_E0_EEvRKS1_SX_SZ_EUlSX_E_EEvSX_:bb.a
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.de = getelementptr inbounds nuw i8, ptr %i.cv, i64 3
  %i.df = load i8, ptr %i.de, align 1, !tbaa !13
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.df, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  %i.dg = load ptr, ptr %i.ar, align 8, !tbaa !23934, !nonnull !797, !align !916 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !78
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.dk = load ptr, ptr %i.dj, align 8
  invoke void %i.dk(ptr noundef nonnull align 8 dereferenceable(184) %i.dh)
          to label %.noexc31 unwind label %.loopexit41, !inline_history !23768

.loopexit:                                        ; preds = %bb.r, %.lr.ph.i.i.i.preheader.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #45
          to label %bb.ag unwind label %.loopexit.split-lp

bb.s:                                             ; preds = %.body
  %i.dl = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #33
  %i.dm = icmp eq i32 %i.co, %i.dl
  br i1 %i.dm, label %bb.t, label %.loopexit39

bb.t:                                             ; preds = %bb.s
  %i.dn = call ptr @__cxa_begin_catch(ptr %i.cn) #33 ; 0 uses
  %i.do = load ptr, ptr %i.ar, align 8, !tbaa !23934, !nonnull !797, !align !916 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !78
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  %i.ds = load ptr, ptr %i.dr, align 8
  invoke void %i.ds(ptr noundef nonnull align 8 dereferenceable(184) %i.dp)
          to label %.noexc25 unwind label %bb.w, !inline_history !23768

.noexc25:                                         ; preds = %bb.t
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !23744 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !1121
  %i.dx = load ptr, ptr %i.du, align 8, !tbaa !78
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 144
  %i.dz = load ptr, ptr %i.dy, align 8
  invoke void %i.dz(ptr noundef nonnull align 8 dereferenceable(94) %i.du, i32 noundef %i.dw, i1 noundef zeroext true)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayRemoveFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSE_SD_EEEJSE_SD_EEEE8applyUdfIZNKSI_7iterateIJNS1_12VectorReaderISE_EENSL_ISD_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_ENKUlST_E0_clIiEEDaST_.exit7 unwind label %bb.w, !inline_history !23768

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayRemoveFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSE_SD_EEEJSE_SD_EEEE8applyUdfIZNKSI_7iterateIJNS1_12VectorReaderISE_EENSL_ISD_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_ENKUlST_E0_clIiEEDaST_.exit7: ; preds = %.noexc25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %5) #33
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.aj, i32 noundef %i.av, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayRemoveFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSE_SD_EEEJSE_SD_EEEE8applyUdfIZNKSI_7iterateIJNS1_12VectorReaderISE_EENSL_ISD_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_ENKUlST_E0_clIiEEDaST_.exit7
  %i.ea = load ptr, ptr %5, align 8, !tbaa !1108
  %.not.i28 = icmp eq ptr %i.ea, null
  br i1 %.not.i28, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #33
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayRemoveFunctionINS1_10VectorExecEEES9_NS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSG_SF_EEEJSG_SF_EEEE8applyUdfIZNKSK_7iterateIJNS1_12VectorReaderISG_EENSN_ISF_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSL_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_ENKUlSV_E_clIiEEDaSV_.exit

bb.w:                                             ; preds = %.noexc25, %bb.t
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.x:                                             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayRemoveFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSE_SD_EEEJSE_SD_EEEE8applyUdfIZNKSI_7iterateIJNS1_12VectorReaderISE_EENSL_ISD_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_ENKUlST_E0_clIiEEDaST_.exit7
  %i.ec = landingpad { ptr, i32 }
          cleanup
  %i.ed = load ptr, ptr %5, align 8, !tbaa !1108
  %.not.i29 = icmp eq ptr %i.ed, null
  br i1 %.not.i29, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit30, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #33
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit30

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit30: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit30, %bb.w
  %.pn.i = phi { ptr, i32 } [ %i.ec, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit30 ], [ %i.eb, %bb.w ]
  invoke void @__cxa_end_catch()
          to label %.loopexit39 unwind label %bb.af

.loopexit41:                                      ; preds = %tailrecurse.i.i.i.i.3, %.noexc31
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.loopexit.split-lp:                               ; preds = %.loopexit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.noexc31:                                         ; preds = %tailrecurse.i.i.i.i.3
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !23744 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !1121
  %i.ei = load ptr, ptr %i.ef, align 8, !tbaa !78
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 144
  %i.ek = load ptr, ptr %i.ej, align 8
  invoke void %i.ek(ptr noundef nonnull align 8 dereferenceable(94) %i.ef, i32 noundef %i.eh, i1 noundef zeroext true)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayRemoveFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSE_SD_EEEJSE_SD_EEEE8applyUdfIZNKSI_7iterateIJNS1_12VectorReaderISE_EENSL_ISD_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_ENKUlST_E0_clIiEEDaST_.exit unwind label %.loopexit41, !inline_history !23768

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayRemoveFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSE_SD_EEEJSE_SD_EEEE8applyUdfIZNKSI_7iterateIJNS1_12VectorReaderISE_EENSL_ISD_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_ENKUlST_E0_clIiEEDaST_.exit: ; preds = %.noexc31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %6) #33
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.aj, i32 noundef %i.av, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayRemoveFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSE_SD_EEEJSE_SD_EEEE8applyUdfIZNKSI_7iterateIJNS1_12VectorReaderISE_EENSL_ISD_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_ENKUlST_E0_clIiEEDaST_.exit
  %i.el = load ptr, ptr %6, align 8, !tbaa !1108
  %.not.i34 = icmp eq ptr %i.el, null
  br i1 %.not.i34, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #33
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35: ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayRemoveFunctionINS1_10VectorExecEEES9_NS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSG_SF_EEEJSG_SF_EEEE8applyUdfIZNKSK_7iterateIJNS1_12VectorReaderISG_EENSN_ISF_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSL_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_ENKUlSV_E_clIiEEDaSV_.exit

bb.ac:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayRemoveFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSE_SD_EEEJSE_SD_EEEE8applyUdfIZNKSI_7iterateIJNS1_12VectorReaderISE_EENSL_ISD_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_ENKUlST_E0_clIiEEDaST_.exit
  %i.em = landingpad { ptr, i32 }
          cleanup
  %i.en = load ptr, ptr %6, align 8, !tbaa !1108
  %.not.i36 = icmp eq ptr %i.en, null
  br i1 %.not.i36, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #33
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37: ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %bb.ae

bb.ae:                                            ; preds = %.loopexit41, %.loopexit.split-lp, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37
  %.pn16.i = phi { ptr, i32 } [ %i.em, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37 ], [ %lpad.loopexit, %.loopexit41 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @__cxa_end_catch()
          to label %.loopexit39 unwind label %bb.af

.loopexit39:                                      ; preds = %bb.s, %bb.ae, %bb.z
  %.merged.i = phi { ptr, i32 } [ %.pn.i, %bb.z ], [ %.pn16.i, %bb.ae ], [ %eh.lpad-body, %bb.s ]
  resume { ptr, i32 } %.merged.i

bb.af:                                            ; preds = %bb.ae, %bb.z
  %i.eo = landingpad { ptr, i32 }
          catch ptr null
  %i.ep = extractvalue { ptr, i32 } %i.eo, 0
  call void @__clang_call_terminate(ptr %i.ep) #44
  unreachable

bb.ag:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayRemoveFunctionINS1_10VectorExecEEES9_NS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSG_SF_EEEJSG_SF_EEEE8applyUdfIZNKSK_7iterateIJNS1_12VectorReaderISG_EENSN_ISF_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSL_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_ENKUlSV_E_clIiEEDaSV_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit38, label %bb.i, !llvm.loop !23936

bb.ah:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.eq = load ptr, ptr %0, align 8, !tbaa !1234
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.es = load i32, ptr %i.er, align 4, !tbaa !1536
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !1538
  tail call void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayRemoveFunctionINS3_10VectorExecEEESB_NS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSI_SH_EEEJSI_SH_EEEE8applyUdfIZNKSM_7iterateIJNS3_12VectorReaderISI_EENSP_ISH_EEEEEvRNSM_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvST_SX_EUlSX_E_ZNKSN_IS12_EEvST_SX_EUlSX_E0_EEvRKNS0_17SelectivityVectorESX_SZ_EUlSX_E_EEvPKmiibSX_(ptr noundef %i.eq, i32 noundef %i.es, i32 noundef %i.eu, i1 noundef zeroext true, ptr noundef nonnull byval(%class.anon.7876) align 8 %1)
  br label %.loopexit38

.loopexit38:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayRemoveFunctionINS1_10VectorExecEEES9_NS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSG_SF_EEEJSG_SF_EEEE8applyUdfIZNKSK_7iterateIJNS1_12VectorReaderISG_EENSN_ISF_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSL_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_ENKUlSV_E_clIiEEDaSV_.exit, %bb.h, %bb.ah
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox9functions19ArrayRemoveFunctionINS0_4exec10VectorExecEE4callERNS3_11ArrayWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEERKNS3_9ArrayViewILb1ESA_EERKNS3_11GenericViewE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(57) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(28) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23937, !noalias !23939 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !23942, !noalias !23939 ; 2 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !23943, !noalias !23939 ; 4 uses
  %i.f = add nsw i32 %i.d, %i.b
  %i.g = icmp eq i32 %i.d, 0
  br i1 %i.g, label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec11GenericViewEESaIS5_EED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24
  %4 = getelementptr inbounds nuw i8, ptr %i.e, <2 x i64> <i64 8, i64 56>
  %5 = getelementptr inbounds nuw i8, ptr %i.e, <2 x i64> <i64 8, i64 56>
  %i.i = sext i32 %i.b to i64
  br label %bb.b

.preheader:                                       ; preds = %bb.ac
  %i.j = icmp eq ptr %.sroa.0102.2, %.sroa.11107.2
  br i1 %i.j, label %._crit_edge, label %.lr.ph155

bb.b:                                             ; preds = %.lr.ph, %bb.ac
  %indvars.iv = phi i64 [ %i.i, %.lr.ph ], [ %indvars.iv.next, %bb.ac ] ; 6 uses
  %.sroa.0102.0151 = phi ptr [ null, %.lr.ph ], [ %.sroa.0102.2, %bb.ac ] ; 19 uses
  %.sroa.11107.0150 = phi ptr [ null, %.lr.ph ], [ %.sroa.11107.2, %bb.ac ] ; 20 uses
  %.sroa.20.0149 = phi ptr [ null, %.lr.ph ], [ %.sroa.20.2, %bb.ac ] ; 7 uses
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !23791, !nonnull !797, !align !916 ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1530 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 58
  %i.o = load i8, ptr %i.n, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 57
  %i.r = load i8, ptr %i.q, align 1, !range !796
  %i.s = trunc nuw i8 %i.r to i1
  %or.cond.i.i.i = select i1 %i.p, i1 true, i1 %i.s
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = lshr i64 %indvars.iv, 6
  %i.u = and i64 %i.t, 67108863
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8, !tbaa !855
  %i.x = and i64 %indvars.iv, 63
  %i.y = shl nuw i64 1, %i.x
  %i.z = and i64 %i.w, %i.y
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 59
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = load i64, ptr %i.m, align 8, !tbaa !855
  %i.ae = and i64 %i.ad, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1529
  %i.ah = shl nsw i64 %indvars.iv, 2
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = lshr i64 %i.ak, 6
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8, !tbaa !855
  %i.ao = and i64 %i.ak, 63
  %i.ap = shl nuw i64 1, %i.ao
  %i.aq = and i64 %i.ap, %i.an
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %.0.i.i.i.in = phi i64 [ %i.z, %bb.d ], [ %i.ae, %bb.f ], [ %i.aq, %bb.g ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %.not.i.i = icmp eq ptr %.sroa.11107.0150, %.sroa.20.0149
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.11107.0150, i64 32
  store i8 0, ptr %.sroa.579.0..sroa_idx, align 8
  br label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec11GenericViewEESaIS5_EE9push_backEOS5_.exit

bb.k:                                             ; preds = %bb.i
  %i.ar = ptrtoint ptr %.sroa.11107.0150 to i64
  %i.as = ptrtoint ptr %.sroa.0102.0151 to i64
  %i.at = sub i64 %i.ar, %i.as                    ; 4 uses
  %i.au = icmp eq i64 %i.at, 9223372036854775800
  br i1 %i.au, label %bb.l, label %_ZNKSt6vectorISt8optionalIN8facebook5velox4exec11GenericViewEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #45
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.l
  unreachable

_ZNKSt6vectorISt8optionalIN8facebook5velox4exec11GenericViewEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.k
  %i.av = sdiv exact i64 %i.at, 40                ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.av, i64 1)
  %i.aw = add nsw i64 %.sroa.speculated.i.i.i.i, %i.av ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.av
  %i.ay = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 230584300921369395)
  %i.az = select i1 %i.ax, i64 230584300921369395, i64 %i.ay ; 3 uses
  %.not.i.i.i.i25 = icmp ne i64 %i.az, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i25)
  %i.ba = mul nuw nsw i64 %i.az, 40
  %i.bb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #42
          to label %.noexc26 unwind label %.loopexit ; 5 uses

.noexc26:                                         ; preds = %_ZNKSt6vectorISt8optionalIN8facebook5velox4exec11GenericViewEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.at
  %.sroa.579.0..sroa_idx80 = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  store i8 0, ptr %.sroa.579.0..sroa_idx80, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.0102.0151, %.sroa.11107.0150
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec11GenericViewEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc26, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.i ], [ %i.bb, %.noexc26 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0102.0151, %.noexc26 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i.i.i, i64 40, i1 false), !alias.scope !23944
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bd, %.sroa.11107.0150
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec11GenericViewEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !23948

_ZNSt6vectorISt8optionalIN8facebook5velox4exec11GenericViewEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc26
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bb, %.noexc26 ], [ %i.be, %.lr.ph.i.i.i.i.i.i ]
  %.not.i23.i.i.i = icmp eq ptr %.sroa.0102.0151, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec11GenericViewEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt8optionalIN8facebook5velox4exec11GenericViewEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0102.0151, i64 noundef %i.at) #43
  br label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec11GenericViewEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorISt8optionalIN8facebook5velox4exec11GenericViewEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorISt8optionalIN8facebook5velox4exec11GenericViewEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  %i.bf = getelementptr inbounds nuw [40 x i8], ptr %i.bb, i64 %i.az
  br label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec11GenericViewEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt8optionalIN8facebook5velox4exec11GenericViewEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorISt8optionalIN8facebook5velox4exec11GenericViewEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.j
  %.sroa.20.3 = phi ptr [ %i.bf, %_ZNSt6vectorISt8optionalIN8facebook5velox4exec11GenericViewEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %.sroa.20.0149, %bb.j ]
  %.0.lcssa.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorISt8optionalIN8facebook5velox4exec11GenericViewEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %.sroa.11107.0150, %bb.j ]
  %.sroa.0102.3 = phi ptr [ %i.bb, %_ZNSt6vectorISt8optionalIN8facebook5velox4exec11GenericViewEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %.sroa.0102.0151, %bb.j ]
  %.sroa.11107.3 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 40
  br label %bb.ac

.loopexit:                                        ; preds = %_ZNKSt6vectorISt8optionalIN8facebook5velox4exec11GenericViewEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit.split-lp:                               ; preds = %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.thread:                                          ; preds = %bb.b, %bb.h
  %i.bg = load ptr, ptr %3, align 8, !tbaa !23949, !nonnull !797, !align !916 ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !1256 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1256
  %i.bl = load i32, ptr %i.h, align 8, !tbaa !11859 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 58
  %i.bn = load i8, ptr %i.bm, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %_ZNK8facebook5velox4exec11GenericView12decodedIndexEv.exit.i, label %bb.n

bb.n:                                             ; preds = %.thread
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 59
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !1255
  br label %_ZNK8facebook5velox4exec11GenericView12decodedIndexEv.exit.i

bb.p:                                             ; preds = %bb.n
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !1529
  %i.bw = sext i32 %i.bl to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3
  br label %_ZNK8facebook5velox4exec11GenericView12decodedIndexEv.exit.i

_ZNK8facebook5velox4exec11GenericView12decodedIndexEv.exit.i: ; preds = %bb.p, %bb.o, %.thread
  %.0.i.i.i27 = phi i32 [ %i.by, %bb.p ], [ %i.bt, %bb.o ], [ %i.bl, %.thread ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.k, i64 58
  %i.ca = load i8, ptr %i.bz, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.cb = trunc nuw i8 %i.ca to i1
  %i.cc = trunc nsw i64 %indvars.iv to i32        ; 3 uses
  br i1 %i.cb, label %_ZNK8facebook5velox4exec11GenericView12decodedIndexEv.exit6.i, label %bb.q

bb.q:                                             ; preds = %_ZNK8facebook5velox4exec11GenericView12decodedIndexEv.exit.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.k, i64 59
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cg = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !1255
  br label %_ZNK8facebook5velox4exec11GenericView12decodedIndexEv.exit6.i

bb.s:                                             ; preds = %bb.q
  %i.ci = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1529
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %indvars.iv
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !3
  br label %_ZNK8facebook5velox4exec11GenericView12decodedIndexEv.exit6.i

_ZNK8facebook5velox4exec11GenericView12decodedIndexEv.exit6.i: ; preds = %bb.s, %bb.r, %_ZNK8facebook5velox4exec11GenericView12decodedIndexEv.exit.i
  %.0.i.i5.i = phi i32 [ %i.cl, %bb.s ], [ %i.ch, %bb.r ], [ %i.cc, %_ZNK8facebook5velox4exec11GenericView12decodedIndexEv.exit.i ]
  %i.cm = load ptr, ptr %i.bi, align 8, !tbaa !78
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 80
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = invoke i64 %i.co(ptr noundef nonnull align 8 dereferenceable(94) %i.bi, ptr noundef %i.bk, i32 noundef %.0.i.i.i27, i32 noundef %.0.i.i5.i, i64 4295033089)
          to label %_ZNK8facebook5velox4exec11GenericView7compareERKS2_NS0_12CompareFlagsE.exit unwind label %bb.v, !inline_history !23950 ; 2 uses

_ZNK8facebook5velox4exec11GenericView7compareERKS2_NS0_12CompareFlagsE.exit: ; preds = %_ZNK8facebook5velox4exec11GenericView12decodedIndexEv.exit6.i
  %i.cq = and i64 %i.cp, 4294967296
  %.not116 = icmp eq i64 %i.cq, 0
  br i1 %.not116, label %bb.t, label %_ZNRSt8optionalIiE5valueEv.exit, !prof !81

bb.t:                                             ; preds = %_ZNK8facebook5velox4exec11GenericView7compareERKS2_NS0_12CompareFlagsE.exit
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions19ArrayRemoveFunctionINS0_4exec10VectorExecEE4callERNS3_11ArrayWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEERKNS3_9ArrayViewILb1ESA_EERKNS3_11GenericViewEE18veloxCheckFailArgs, ptr noundef nonnull @.str.296) #45
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %_ZNK8facebook5velox4exec11GenericView12decodedIndexEv.exit6.i
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.w:                                             ; preds = %bb.t
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

_ZNRSt8optionalIiE5valueEv.exit:                  ; preds = %_ZNK8facebook5velox4exec11GenericView7compareERKS2_NS0_12CompareFlagsE.exit
  %i.ct = and i64 %i.cp, 4294967295
  %.not = icmp eq i64 %i.ct, 0
  br i1 %.not, label %bb.ac, label %bb.x

bb.x:                                             ; preds = %_ZNRSt8optionalIiE5valueEv.exit
  %i.cu = load ptr, ptr %i.e, align 8, !tbaa !23791, !noalias !23951, !nonnull !797, !align !916 ; 2 uses
  %.not.i.i30 = icmp eq ptr %.sroa.11107.0150, %.sroa.20.0149
  br i1 %.not.i.i30, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store ptr %i.cu, ptr %.sroa.11107.0150, align 8
  %.sroa.655.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.11107.0150, i64 8
  store <2 x ptr> %5, ptr %.sroa.655.0..sroa_idx, align 8
  %.sroa.861.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.11107.0150, i64 24
  store i32 %i.cc, ptr %.sroa.861.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.11107.0150, i64 32
  store i8 1, ptr %.sroa.10.0..sroa_idx, align 8
  br label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec11GenericViewEESaIS5_EE9push_backEOS5_.exit45

bb.z:                                             ; preds = %bb.x
  %i.cv = ptrtoint ptr %.sroa.11107.0150 to i64
  %i.cw = ptrtoint ptr %.sroa.0102.0151 to i64
  %i.cx = sub i64 %i.cv, %i.cw                    ; 4 uses
  %i.cy = icmp eq i64 %i.cx, 9223372036854775800
  br i1 %i.cy, label %bb.aa, label %_ZNKSt6vectorISt8optionalIN8facebook5velox4exec11GenericViewEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i31

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #45
          to label %.noexc43 unwind label %.loopexit.split-lp118

.noexc43:                                         ; preds = %bb.aa
  unreachable

_ZNKSt6vectorISt8optionalIN8facebook5velox4exec11GenericViewEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i31: ; preds = %bb.z
  %i.cz = sdiv exact i64 %i.cx, 40                ; 3 uses
  %.sroa.speculated.i.i.i.i32 = tail call i64 @llvm.umax.i64(i64 %i.cz, i64 1)
  %i.da = add nsw i64 %.sroa.speculated.i.i.i.i32, %i.cz ; 2 uses
  %i.db = icmp ult i64 %i.da, %i.cz
  %i.dc = tail call i64 @llvm.umin.i64(i64 %i.da, i64 230584300921369395)
  %i.dd = select i1 %i.db, i64 230584300921369395, i64 %i.dc ; 3 uses
  %.not.i.i.i.i33 = icmp ne i64 %i.dd, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i33)
  %i.de = mul nuw nsw i64 %i.dd, 40
  %i.df = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.de) #42
          to label %.noexc44 unwind label %.loopexit117 ; 5 uses

.noexc44:                                         ; preds = %_ZNKSt6vectorISt8optionalIN8facebook5velox4exec11GenericViewEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i31
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.cx ; 4 uses
  store ptr %i.cu, ptr %i.dg, align 8
  %.sroa.758.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store <2 x ptr> %4, ptr %.sroa.758.0..sroa_idx59, align 8
  %.sroa.861.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  store i32 %i.cc, ptr %.sroa.861.0..sroa_idx62, align 8
  %.sroa.10.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  store i8 1, ptr %.sroa.10.0..sroa_idx66, align 8
  %.not10.i.i.i.i.i.i34 = icmp eq ptr %.sroa.0102.0151, %.sroa.11107.0150
  br i1 %.not10.i.i.i.i.i.i34, label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec11GenericViewEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i39, label %.lr.ph.i.i.i.i.i.i35

.lr.ph.i.i.i.i.i.i35:                             ; preds = %.noexc44, %.lr.ph.i.i.i.i.i.i35
  %.012.i.i.i.i.i.i36 = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i.i35 ], [ %i.df, %.noexc44 ] ; 2 uses
  %.0911.i.i.i.i.i.i37 = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i.i35 ], [ %.sroa.0102.0151, %.noexc44 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i.i.i.i36, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i.i.i37, i64 40, i1 false), !alias.scope !23956
  %i.dh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i37, i64 40 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i36, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i38 = icmp eq ptr %i.dh, %.sroa.11107.0150
  br i1 %.not.i.i.i.i.i.i38, label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec11GenericViewEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i39, label %.lr.ph.i.i.i.i.i.i35, !llvm.loop !23948

_ZNSt6vectorISt8optionalIN8facebook5velox4exec11GenericViewEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i39: ; preds = %.lr.ph.i.i.i.i.i.i35, %.noexc44
  %.0.lcssa.i.i.i.i.i.i40 = phi ptr [ %i.df, %.noexc44 ], [ %i.di, %.lr.ph.i.i.i.i.i.i35 ]
  %.not.i23.i.i.i41 = icmp eq ptr %.sroa.0102.0151, null
  br i1 %.not.i23.i.i.i41, label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec11GenericViewEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i42, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorISt8optionalIN8facebook5velox4exec11GenericViewEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i39
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0102.0151, i64 noundef %i.cx) #43
  br label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec11GenericViewEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i42

_ZNSt6vectorISt8optionalIN8facebook5velox4exec11GenericViewEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i42: ; preds = %bb.ab, %_ZNSt6vectorISt8optionalIN8facebook5velox4exec11GenericViewEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i39
  %i.dj = getelementptr inbounds nuw [40 x i8], ptr %i.df, i64 %i.dd
  br label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec11GenericViewEESaIS5_EE9push_backEOS5_.exit45

_ZNSt6vectorISt8optionalIN8facebook5velox4exec11GenericViewEESaIS5_EE9push_backEOS5_.exit45: ; preds = %_ZNSt6vectorISt8optionalIN8facebook5velox4exec11GenericViewEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i42, %bb.y
  %.sroa.20.4 = phi ptr [ %i.dj, %_ZNSt6vectorISt8optionalIN8facebook5velox4exec11GenericViewEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i42 ], [ %.sroa.20.0149, %bb.y ]
  %.0.lcssa.i.i.i.i.i.i40.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i40, %_ZNSt6vectorISt8optionalIN8facebook5velox4exec11GenericViewEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i42 ], [ %.sroa.11107.0150, %bb.y ]
  %.sroa.0102.4 = phi ptr [ %i.df, %_ZNSt6vectorISt8optionalIN8facebook5velox4exec11GenericViewEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i42 ], [ %.sroa.0102.0151, %bb.y ]
  %.sroa.11107.4 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i40.pn, i64 40
  br label %bb.ac

.loopexit117:                                     ; preds = %_ZNKSt6vectorISt8optionalIN8facebook5velox4exec11GenericViewEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i31
  %lpad.loopexit119 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit.split-lp118:                            ; preds = %bb.aa
  %lpad.loopexit.split-lp120 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ac:                                            ; preds = %_ZNRSt8optionalIiE5valueEv.exit, %_ZNSt6vectorISt8optionalIN8facebook5velox4exec11GenericViewEESaIS5_EE9push_backEOS5_.exit45, %_ZNSt6vectorISt8optionalIN8facebook5velox4exec11GenericViewEESaIS5_EE9push_backEOS5_.exit
  %.sroa.20.2 = phi ptr [ %.sroa.20.3, %_ZNSt6vectorISt8optionalIN8facebook5velox4exec11GenericViewEESaIS5_EE9push_backEOS5_.exit ], [ %.sroa.20.0149, %_ZNRSt8optionalIiE5valueEv.exit ], [ %.sroa.20.4, %_ZNSt6vectorISt8optionalIN8facebook5velox4exec11GenericViewEESaIS5_EE9push_backEOS5_.exit45 ] ; 3 uses
  %.sroa.11107.2 = phi ptr [ %.sroa.11107.3, %_ZNSt6vectorISt8optionalIN8facebook5velox4exec11GenericViewEESaIS5_EE9push_backEOS5_.exit ], [ %.sroa.11107.0150, %_ZNRSt8optionalIiE5valueEv.exit ], [ %.sroa.11107.4, %_ZNSt6vectorISt8optionalIN8facebook5velox4exec11GenericViewEESaIS5_EE9push_backEOS5_.exit45 ] ; 3 uses
  %.sroa.0102.2 = phi ptr [ %.sroa.0102.3, %_ZNSt6vectorISt8optionalIN8facebook5velox4exec11GenericViewEESaIS5_EE9push_backEOS5_.exit ], [ %.sroa.0102.0151, %_ZNRSt8optionalIiE5valueEv.exit ], [ %.sroa.0102.4, %_ZNSt6vectorISt8optionalIN8facebook5velox4exec11GenericViewEESaIS5_EE9push_backEOS5_.exit45 ] ; 7 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.dk = trunc nsw i64 %indvars.iv.next to i32
  %i.dl = icmp eq i32 %i.f, %i.dk
  br i1 %i.dl, label %.preheader, label %bb.b

._crit_edge:                                      ; preds = %bb.ae, %.preheader
  %.not.i.i.i46 = icmp eq ptr %.sroa.0102.2, null
  br i1 %.not.i.i.i46, label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec11GenericViewEESaIS5_EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge
  %i.dm = ptrtoint ptr %.sroa.20.2 to i64
  %i.dn = ptrtoint ptr %.sroa.0102.2 to i64
  %i.do = sub i64 %i.dm, %i.dn
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0102.2, i64 noundef %i.do) #43
  br label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec11GenericViewEESaIS5_EED2Ev.exit

_ZNSt6vectorISt8optionalIN8facebook5velox4exec11GenericViewEESaIS5_EED2Ev.exit: ; preds = %bb.a, %._crit_edge, %bb.ad
  ret void

.lr.ph155:                                        ; preds = %.preheader, %bb.ae
  %.sroa.049.0154 = phi ptr [ %i.dp, %bb.ae ], [ %.sroa.0102.2, %.preheader ] ; 2 uses
  invoke void @_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9push_backERKSt8optionalINS1_11GenericViewEE(ptr noundef nonnull align 8 dereferenceable(57) %1, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.049.0154)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %.lr.ph155
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.049.0154, i64 40 ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %.sroa.11107.2
  br i1 %i.dq, label %._crit_edge, label %.lr.ph155

bb.af:                                            ; preds = %.lr.ph155
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit117, %.loopexit.split-lp118, %.loopexit, %.loopexit.split-lp, %bb.w, %bb.v, %bb.af
  %.sroa.20.0144 = phi ptr [ %.sroa.20.2, %bb.af ], [ %.sroa.20.0149, %bb.v ], [ %.sroa.11107.0150, %.loopexit.split-lp ], [ %.sroa.20.0149, %bb.w ], [ %.sroa.11107.0150, %.loopexit ], [ %.sroa.11107.0150, %.loopexit117 ], [ %.sroa.11107.0150, %.loopexit.split-lp118 ]
  %.sroa.0102.0129 = phi ptr [ %.sroa.0102.2, %bb.af ], [ %.sroa.0102.0151, %bb.v ], [ %.sroa.0102.0151, %.loopexit.split-lp ], [ %.sroa.0102.0151, %bb.w ], [ %.sroa.0102.0151, %.loopexit ], [ %.sroa.0102.0151, %.loopexit117 ], [ %.sroa.0102.0151, %.loopexit.split-lp118 ] ; 3 uses
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dr, %bb.af ], [ %i.cr, %bb.v ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.cs, %bb.w ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit119, %.loopexit117 ], [ %lpad.loopexit.split-lp120, %.loopexit.split-lp118 ]
  %.not.i.i.i47 = icmp eq ptr %.sroa.0102.0129, null
  br i1 %.not.i.i.i47, label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec11GenericViewEESaIS5_EED2Ev.exit48, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ds = ptrtoint ptr %.sroa.20.0144 to i64
  %i.dt = ptrtoint ptr %.sroa.0102.0129 to i64
  %i.du = sub i64 %i.ds, %i.dt
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0102.0129, i64 noundef %i.du) #43
  br label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec11GenericViewEESaIS5_EED2Ev.exit48

_ZNSt6vectorISt8optionalIN8facebook5velox4exec11GenericViewEESaIS5_EED2Ev.exit48: ; preds = %bb.ag, %bb.ah
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9push_backERKSt8optionalINS1_11GenericViewEE(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !23960, !range !796, !noundef !797
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !23767 ; 3 uses
  %i.f = add nsw i32 %i.e, 1                      ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !23765, !range !796, !noundef !797
  %i.i = trunc nuw i8 %i.h to i1                  ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.i, label %bb.c, label %_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !23749 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !78
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(96) %i.k, i1 noundef zeroext true), !inline_history !23962
  store i8 0, ptr %i.g, align 8, !tbaa !23765
  br label %_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i.i

_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !23751 ; 2 uses
  %i.q = add nsw i32 %i.p, %i.f                   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !23752
  %i.t = icmp sgt i32 %i.q, %i.s
  br i1 %i.t, label %bb.d, label %_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9push_backERKNS1_11GenericViewE.exit, !prof !81

bb.d:                                             ; preds = %_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i.i
  %i.u = sitofp i32 %i.q to double
  %i.v = tail call noundef double @log2(double noundef %i.u) #33, !tbaa !3
  %i.w = tail call double @llvm.ceil.f64(double %i.v)
  %exp2.i.i.i.i = tail call double @exp2(double %i.w)
  %i.x = fptosi double %exp2.i.i.i.i to i32       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !23749 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !78
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(96) %i.z, i32 noundef %i.x), !inline_history !23963
  store i32 %i.x, ptr %i.r, align 4, !tbaa !23752
  %.pre.i.i = load i32, ptr %i.o, align 8, !tbaa !23751
  br label %_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9push_backERKNS1_11GenericViewE.exit

_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9push_backERKNS1_11GenericViewE.exit: ; preds = %_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i.i, %bb.d
  %i.ad = phi i32 [ %i.p, %_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i.i ], [ %.pre.i.i, %bb.d ]
  store i32 %i.f, ptr %i.d, align 4, !tbaa !23767
  %i.ae = add i32 %i.ad, %i.e
  store i8 1, ptr %i.g, align 8, !tbaa !23765
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !23749 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !78
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(96) %i.ag, i32 noundef %i.ae), !inline_history !23964
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !23749
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  tail call void @_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(28) %1)
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  br i1 %i.i, label %bb.f, label %_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !23749 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !78
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(96) %i.am, i1 noundef zeroext true), !inline_history !23965
  store i8 0, ptr %i.g, align 8, !tbaa !23765
  br label %_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i

_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i: ; preds = %bb.f, %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !23751 ; 2 uses
  %i.as = add nsw i32 %i.ar, %i.f                 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !23752
  %i.av = icmp sgt i32 %i.as, %i.au
  br i1 %i.av, label %bb.g, label %_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE8add_nullEv.exit, !prof !81

bb.g:                                             ; preds = %_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i
  %i.aw = sitofp i32 %i.as to double
  %i.ax = tail call noundef double @log2(double noundef %i.aw) #33, !tbaa !3
  %i.ay = tail call double @llvm.ceil.f64(double %i.ax)
  %exp2.i.i.i = tail call double @exp2(double %i.ay)
  %i.az = fptosi double %exp2.i.i.i to i32        ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !23749 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !78
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18ArrayUnionFunctionINS3_10VectorExecEEESB_NS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSI_SI_EEEJSI_SI_EEEE8applyUdfIZNKSM_7iterateIJNS3_12VectorReaderISI_EESQ_EEEvRNSM_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSS_SW_EUlSW_E_ZNKSN_IS11_EEvSS_SW_EUlSW_E0_EEvRKS1_SW_SY_EUlSW_E_EEvSW_:bb.a
  %i.ex = load ptr, ptr %5, align 8, !tbaa !1108
  %.not.i38 = icmp eq ptr %i.ex, null
  br i1 %.not.i38, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #33
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39: ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39, %bb.z
  %.pn.i = phi { ptr, i32 } [ %i.ew, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39 ], [ %i.ev, %bb.z ]
  invoke void @__cxa_end_catch()
          to label %.loopexit48 unwind label %bb.ai

.loopexit50:                                      ; preds = %tailrecurse.i.i.i.i.3, %.noexc40
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp:                               ; preds = %.loopexit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.noexc40:                                         ; preds = %tailrecurse.i.i.i.i.3
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !23744 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !1121
  %i.fc = load ptr, ptr %i.ez, align 8, !tbaa !78
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 144
  %i.fe = load ptr, ptr %i.fd, align 8
  invoke void %i.fe(ptr noundef nonnull align 8 dereferenceable(94) %i.ez, i32 noundef %i.fb, i1 noundef zeroext true)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18ArrayUnionFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSE_SE_EEEJSE_SE_EEEE8applyUdfIZNKSI_7iterateIJNS1_12VectorReaderISE_EESM_EEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_ENKUlSS_E0_clIiEEDaSS_.exit unwind label %.loopexit50, !inline_history !23768

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18ArrayUnionFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSE_SE_EEEJSE_SE_EEEE8applyUdfIZNKSI_7iterateIJNS1_12VectorReaderISE_EESM_EEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_ENKUlSS_E0_clIiEEDaSS_.exit: ; preds = %.noexc40
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %6) #33
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.aj, i32 noundef %i.at, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18ArrayUnionFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSE_SE_EEEJSE_SE_EEEE8applyUdfIZNKSI_7iterateIJNS1_12VectorReaderISE_EESM_EEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_ENKUlSS_E0_clIiEEDaSS_.exit
  %i.ff = load ptr, ptr %6, align 8, !tbaa !1108
  %.not.i43 = icmp eq ptr %i.ff, null
  br i1 %.not.i43, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit44, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #33
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit44

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit44: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18ArrayUnionFunctionINS1_10VectorExecEEES9_NS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSG_SG_EEEJSG_SG_EEEE8applyUdfIZNKSK_7iterateIJNS1_12VectorReaderISG_EESO_EEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSQ_SU_EUlSU_E_ZNKSL_ISZ_EEvSQ_SU_EUlSU_E0_EEvRKNS0_17SelectivityVectorESU_SW_ENKUlSU_E_clIiEEDaSU_.exit

bb.af:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18ArrayUnionFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSE_SE_EEEJSE_SE_EEEE8applyUdfIZNKSI_7iterateIJNS1_12VectorReaderISE_EESM_EEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_ENKUlSS_E0_clIiEEDaSS_.exit
  %i.fg = landingpad { ptr, i32 }
          cleanup
  %i.fh = load ptr, ptr %6, align 8, !tbaa !1108
  %.not.i45 = icmp eq ptr %i.fh, null
  br i1 %.not.i45, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit46, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #33
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit46

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit46: ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit50, %.loopexit.split-lp, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit46
  %.pn16.i = phi { ptr, i32 } [ %i.fg, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit46 ], [ %lpad.loopexit, %.loopexit50 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @__cxa_end_catch()
          to label %.loopexit48 unwind label %bb.ai

.loopexit48:                                      ; preds = %bb.v, %bb.ah, %bb.ac
  %.merged.i = phi { ptr, i32 } [ %.pn.i, %bb.ac ], [ %.pn16.i, %bb.ah ], [ %eh.lpad-body, %bb.v ]
  resume { ptr, i32 } %.merged.i

bb.ai:                                            ; preds = %bb.ah, %bb.ac
  %i.fi = landingpad { ptr, i32 }
          catch ptr null
  %i.fj = extractvalue { ptr, i32 } %i.fi, 0
  call void @__clang_call_terminate(ptr %i.fj) #44
  unreachable

bb.aj:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18ArrayUnionFunctionINS1_10VectorExecEEES9_NS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSG_SG_EEEJSG_SG_EEEE8applyUdfIZNKSK_7iterateIJNS1_12VectorReaderISG_EESO_EEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSQ_SU_EUlSU_E_ZNKSL_ISZ_EEvSQ_SU_EUlSU_E0_EEvRKNS0_17SelectivityVectorESU_SW_ENKUlSU_E_clIiEEDaSU_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit33, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit44
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit47, label %bb.i, !llvm.loop !35431

bb.ak:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.fk = load ptr, ptr %0, align 8, !tbaa !1234
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !1536
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !1538
  tail call void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18ArrayUnionFunctionINS3_10VectorExecEEESB_NS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSI_SI_EEEJSI_SI_EEEE8applyUdfIZNKSM_7iterateIJNS3_12VectorReaderISI_EESQ_EEEvRNSM_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSS_SW_EUlSW_E_ZNKSN_IS11_EEvSS_SW_EUlSW_E0_EEvRKNS0_17SelectivityVectorESW_SY_EUlSW_E_EEvPKmiibSW_(ptr noundef %i.fk, i32 noundef %i.fm, i32 noundef %i.fo, i1 noundef zeroext true, ptr noundef nonnull byval(%class.anon.12722) align 8 %1)
  br label %.loopexit47

.loopexit47:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18ArrayUnionFunctionINS1_10VectorExecEEES9_NS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSG_SG_EEEJSG_SG_EEEE8applyUdfIZNKSK_7iterateIJNS1_12VectorReaderISG_EESO_EEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSQ_SU_EUlSU_E_ZNKSL_ISZ_EEvSQ_SU_EUlSU_E0_EEvRKNS0_17SelectivityVectorESU_SW_ENKUlSU_E_clIiEEDaSU_.exit, %bb.h, %bb.ak
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox9functions18ArrayUnionFunctionINS0_4exec10VectorExecEE4callINS3_11ArrayWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS3_9ArrayViewILb1ESB_EEEEvRT_RKT0_SJ_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(57) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.facebook::velox::util::floating_point::HashSetNaNAware.12723", align 8 ; 8 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %5 = alloca %class.anon.12740, align 8          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  store ptr null, ptr %4, align 8, !tbaa !35432
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.b, align 8, !tbaa !35435
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store i64 0, ptr %i.c, align 8, !tbaa !1619
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i8 0, ptr %i.a, align 1, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  store ptr %4, ptr %5, align 8, !tbaa !35439
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.d, align 8, !tbaa !35441
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.a, ptr %i.e, align 8, !tbaa !2319
  invoke void @_ZZN8facebook5velox9functions18ArrayUnionFunctionINS0_4exec10VectorExecEE4callINS3_11ArrayWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS3_9ArrayViewILb1ESB_EEEEvRT_RKT0_SJ_ENKUlSG_E_clIKSE_EEDaSG_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  invoke void @_ZZN8facebook5velox9functions18ArrayUnionFunctionINS0_4exec10VectorExecEE4callINS3_11ArrayWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS3_9ArrayViewILb1ESB_EEEEvRT_RKT0_SJ_ENKUlSG_E_clIKSE_EEDaSG_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !35435 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 15
  %i.h = load i8, ptr %i.g, align 1, !tbaa !1616
  %i.i = icmp eq i8 %i.h, -1
  br i1 %i.i, label %_ZN5folly3f146detail11F14BasicSetINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvvvvSt17integral_constantIbLb1EEEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr %i.c, align 8, !tbaa !1619 ; 2 uses
  %i.k = and i64 %i.j, 255                        ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 12 ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i16, ptr %i.l, align 1
  %i.m = zext i16 %.0.copyload.i.i.i.i.i.i to i64 ; 2 uses
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.k
  %i.n = xor i64 %notmask.i.i.i.i.i, -1
  %i.o = lshr i64 %i.n, 12
  %i.p = add nuw nsw i64 %i.o, 1
  %i.q = icmp ult i64 %i.j, 256
  br i1 %i.q, label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %i.k, ptr %i.c, align 8, !tbaa !1619
  %.0.copyload.i.pre.i.i.i.i = load i16, ptr %i.l, align 1
  %.pre20.i.i.i.i = zext i16 %.0.copyload.i.pre.i.i.i.i to i64
  br label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i.i

_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %.pre-phi21.i.i.i.i = phi i64 [ %i.m, %bb.d ], [ %.pre20.i.i.i.i, %bb.e ]
  %i.r = icmp eq i64 %i.k, 0
  %i.s = shl nuw nsw i64 %.pre-phi21.i.i.i.i, 2
  %.neg17.i.i.i.i = sub nuw nsw i64 -16, %i.s
  %.neg18.i.i.i.i = shl i64 -64, %i.k
  %.0.i.neg.i.i.i.i = select i1 %i.r, i64 %.neg17.i.i.i.i, i64 %.neg18.i.i.i.i
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.b, align 8, !tbaa !35435
  store i64 0, ptr %i.c, align 8, !tbaa !1619
  %i.t = and i64 %.0.i.neg.i.i.i.i, -8
  %i.u = shl nuw nsw i64 %i.m, 5
  %i.v = mul i64 %i.u, %i.p
  %i.w = sub i64 %i.v, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.w) #33
  br label %_ZN5folly3f146detail11F14BasicSetINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvvvvSt17integral_constantIbLb1EEEEED2Ev.exit

_ZN5folly3f146detail11F14BasicSetINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvvvvSt17integral_constantIbLb1EEEEED2Ev.exit: ; preds = %bb.c, %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  call void @_ZN5folly3f146detail11F14BasicSetINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvvvvSt17integral_constantIbLb1EEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  resume { ptr, i32 } %i.x
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox9functions18ArrayUnionFunctionINS0_4exec10VectorExecEE4callINS3_11ArrayWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS3_9ArrayViewILb1ESB_EEEEvRT_RKT0_SJ_ENKUlSG_E_clIKSE_EEDaSG_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::pair.12745", align 8  ; 4 uses
  %3 = alloca %"class.facebook::velox::exec::GenericView", align 8 ; 7 uses
  %4 = alloca %"class.facebook::velox::exec::GenericView", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23937, !noalias !35443 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !23942, !noalias !35443 ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !23943, !noalias !35443 ; 4 uses
  %i.f = add nsw i32 %i.d, %i.b
  %i.g = icmp eq i32 %i.d, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.e, <2 x i64> <i64 8, i64 56>
  %6 = getelementptr inbounds nuw i8, ptr %i.e, <2 x i64> <i64 8, i64 56>
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.o = sext i32 %i.b to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.r, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.r
  %indvars.iv = phi i64 [ %i.o, %.lr.ph ], [ %indvars.iv.next, %bb.r ] ; 6 uses
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !23791, !nonnull !797, !align !916 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1530 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.p, i64 58
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !tbaa !1527, !range !796 ; 2 uses
  br i1 %.not.i.i.i, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = trunc nuw i8 %.pre to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 57
  %i.u = load i8, ptr %i.t, align 1, !range !796
  %i.v = trunc nuw i8 %i.u to i1
  %or.cond.i.i.i = select i1 %i.s, i1 true, i1 %i.v
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = lshr i64 %indvars.iv, 6
  %i.x = and i64 %i.w, 67108863
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.x
  %i.z = load i64, ptr %i.y, align 8, !tbaa !855
  %i.aa = and i64 %indvars.iv, 63
  %i.ab = shl nuw i64 1, %i.aa
  %i.ac = and i64 %i.z, %i.ab
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit

bb.e:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 59
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ag = load i64, ptr %i.r, align 8, !tbaa !855
  %i.ah = and i64 %i.ag, 1
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit

bb.g:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1529
  %i.ak = shl nsw i64 %indvars.iv, 2
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3
  %i.an = zext i32 %i.am to i64                   ; 2 uses
  %i.ao = lshr i64 %i.an, 6
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !855
  %i.ar = and i64 %i.an, 63
  %i.as = shl nuw i64 1, %i.ar
  %i.at = and i64 %i.as, %i.aq
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit: ; preds = %bb.d, %bb.f, %bb.g
  %.0.i.i.i.in = phi i64 [ %i.ac, %bb.d ], [ %i.ah, %bb.f ], [ %i.at, %bb.g ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %bb.n, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread: ; preds = %bb.b, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit
  %i.au = load ptr, ptr %0, align 8, !tbaa !35446, !nonnull !797, !align !916
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  store ptr %i.p, ptr %3, align 8, !tbaa !1233, !alias.scope !35448
  store <2 x ptr> %6, ptr %i.j, align 8, !tbaa !63, !alias.scope !35448
  %i.av = trunc nsw i64 %indvars.iv to i32        ; 3 uses
  store i32 %i.av, ptr %i.k, align 8, !tbaa !11859, !alias.scope !35448
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33, !noalias !35453
  %i.aw = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1256, !noalias !35458 ; 2 uses
  %i.ay = trunc nuw i8 %.pre to i1
  br i1 %i.ay, label %_ZN5folly6detail22callWithConstructedKeyIN8facebook5velox4exec11GenericViewENS_3f146detail11F14BasicSetINS7_21VectorContainerPolicyIS5_vvvvSt17integral_constantIbLb1EEEEE11UsableAsKeyESaIS5_EZNSD_7emplaceIJS5_EEESt4pairINS7_23VectorContainerIteratorIPKS5_EEbEDpOT_EUlSP_E_S5_TnNSt9enable_ifIXoosr3std7is_sameINS_12remove_cvrefIT3_E4typeET_EE5valuesrT0_ISV_E5valueEiE4typeELi0EEEDaRT1_OT2_OST_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread
  %i.az = getelementptr inbounds nuw i8, ptr %i.p, i64 59
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !1528, !range !796, !noalias !35458, !noundef !797
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !1255, !noalias !35458
  br label %_ZN5folly6detail22callWithConstructedKeyIN8facebook5velox4exec11GenericViewENS_3f146detail11F14BasicSetINS7_21VectorContainerPolicyIS5_vvvvSt17integral_constantIbLb1EEEEE11UsableAsKeyESaIS5_EZNSD_7emplaceIJS5_EEESt4pairINS7_23VectorContainerIteratorIPKS5_EEbEDpOT_EUlSP_E_S5_TnNSt9enable_ifIXoosr3std7is_sameINS_12remove_cvrefIT3_E4typeET_EE5valuesrT0_ISV_E5valueEiE4typeELi0EEEDaRT1_OT2_OST_.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !1529, !noalias !35458
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %indvars.iv
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !3, !noalias !35458
  br label %_ZN5folly6detail22callWithConstructedKeyIN8facebook5velox4exec11GenericViewENS_3f146detail11F14BasicSetINS7_21VectorContainerPolicyIS5_vvvvSt17integral_constantIbLb1EEEEE11UsableAsKeyESaIS5_EZNSD_7emplaceIJS5_EEESt4pairINS7_23VectorContainerIteratorIPKS5_EEbEDpOT_EUlSP_E_S5_TnNSt9enable_ifIXoosr3std7is_sameINS_12remove_cvrefIT3_E4typeET_EE5valuesrT0_ISV_E5valueEiE4typeELi0EEEDaRT1_OT2_OST_.exit.i.i

_ZN5folly6detail22callWithConstructedKeyIN8facebook5velox4exec11GenericViewENS_3f146detail11F14BasicSetINS7_21VectorContainerPolicyIS5_vvvvSt17integral_constantIbLb1EEEEE11UsableAsKeyESaIS5_EZNSD_7emplaceIJS5_EEESt4pairINS7_23VectorContainerIteratorIPKS5_EEbEDpOT_EUlSP_E_S5_TnNSt9enable_ifIXoosr3std7is_sameINS_12remove_cvrefIT3_E4typeET_EE5valuesrT0_ISV_E5valueEiE4typeELi0EEEDaRT1_OT2_OST_.exit.i.i: ; preds = %bb.j, %bb.i, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bh, %bb.j ], [ %i.bd, %bb.i ], [ %i.av, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread ]
  %i.bi = load ptr, ptr %i.ax, align 8, !tbaa !78, !noalias !35458
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 104
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !35458
  %i.bl = call noundef i64 %i.bk(ptr noundef nonnull align 8 dereferenceable(94) %i.ax, i32 noundef %.0.i.i.i.i.i.i.i.i.i.i.i), !noalias !35458, !inline_history !35465 ; 2 uses
  %i.bm = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.bl) ; 2 uses
  %i.bn = lshr i64 %i.bm, 24
  %i.bo = or i64 %i.bn, 128
  %i.bp = add i64 %i.bm, %i.bl
  call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS7_JS7_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESD_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.12745") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 %i.bp, i64 %i.bo, ptr noundef nonnull align 8 dereferenceable(28) %3, ptr noundef nonnull align 8 dereferenceable(28) %3), !noalias !35453
  %i.bq = load i8, ptr %i.l, align 8, !tbaa !88, !range !796, !noalias !35466, !noundef !797
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33, !noalias !35453
  %i.br = trunc nuw i8 %i.bq to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br i1 %i.br, label %bb.k, label %bb.r

bb.k:                                             ; preds = %_ZN5folly6detail22callWithConstructedKeyIN8facebook5velox4exec11GenericViewENS_3f146detail11F14BasicSetINS7_21VectorContainerPolicyIS5_vvvvSt17integral_constantIbLb1EEEEE11UsableAsKeyESaIS5_EZNSD_7emplaceIJS5_EEESt4pairINS7_23VectorContainerIteratorIPKS5_EEbEDpOT_EUlSP_E_S5_TnNSt9enable_ifIXoosr3std7is_sameINS_12remove_cvrefIT3_E4typeET_EE5valuesrT0_ISV_E5valueEiE4typeELi0EEEDaRT1_OT2_OST_.exit.i.i
  %i.bs = load ptr, ptr %i.i, align 8, !tbaa !35469, !nonnull !797, !align !916 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !35470)
  call void @llvm.experimental.noalias.scope.decl(metadata !35473)
  %i.bt = load ptr, ptr %i.e, align 8, !tbaa !23791, !noalias !35476, !nonnull !797, !align !916
  store ptr %i.bt, ptr %4, align 8, !tbaa !1233, !alias.scope !35476
  store <2 x ptr> %5, ptr %i.m, align 8, !tbaa !63, !alias.scope !35476
  store i32 %i.av, ptr %i.n, align 8, !tbaa !11859, !alias.scope !35476
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 20 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !23767 ; 2 uses
  %i.bw = add nsw i32 %i.bv, 1                    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 3 uses
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !23765, !range !796, !noundef !797
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.l, label %_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !23749 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !78
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(96) %i.cb, i1 noundef zeroext true), !inline_history !23962
  store i8 0, ptr %i.bx, align 8, !tbaa !23765
  br label %_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i.i

_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i.i: ; preds = %bb.l, %bb.k
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bs, i64 24 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !23751 ; 2 uses
  %i.ch = add nsw i32 %i.cg, %i.bw                ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bs, i64 28 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !23752
  %i.ck = icmp sgt i32 %i.ch, %i.cj
  br i1 %i.ck, label %bb.m, label %_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9push_backERKNS1_11GenericViewE.exit, !prof !81

bb.m:                                             ; preds = %_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i.i
  %i.cl = sitofp i32 %i.ch to double
  %i.cm = call noundef double @log2(double noundef %i.cl) #33, !tbaa !3
  %i.cn = call double @llvm.ceil.f64(double %i.cm)
  %exp2.i.i.i.i = call double @exp2(double %i.cn)
  %i.co = fptosi double %exp2.i.i.i.i to i32      ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !23749 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !78
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(96) %i.cq, i32 noundef %i.co), !inline_history !23963
  store i32 %i.co, ptr %i.ci, align 4, !tbaa !23752
  %.pre.i.i = load i32, ptr %i.cf, align 8, !tbaa !23751
  br label %_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9push_backERKNS1_11GenericViewE.exit

_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9push_backERKNS1_11GenericViewE.exit: ; preds = %_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i.i, %bb.m
  %i.cu = phi i32 [ %i.cg, %_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i.i ], [ %.pre.i.i, %bb.m ]
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !23767
  %i.cv = add i32 %i.cu, %i.bv
  store i8 1, ptr %i.bx, align 8, !tbaa !23765
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !23749 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !78
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(96) %i.cx, i32 noundef %i.cv), !inline_history !23964
  %i.da = load ptr, ptr %i.cw, align 8, !tbaa !23749
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  call void @_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.db, ptr noundef nonnull align 8 dereferenceable(28) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.r

bb.n:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit
  %i.dc = load ptr, ptr %i.h, align 8, !tbaa !35477, !nonnull !797 ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !88, !range !796, !noundef !797
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i8 1, ptr %i.dc, align 1, !tbaa !88
  %i.df = load ptr, ptr %i.i, align 8, !tbaa !35469, !nonnull !797, !align !916 ; 7 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 20 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !23767 ; 2 uses
  %i.di = add nsw i32 %i.dh, 1                    ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 16 ; 2 uses
  %i.dk = load i8, ptr %i.dj, align 8, !tbaa !23765, !range !796, !noundef !797
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %bb.p, label %_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i

bb.p:                                             ; preds = %bb.o
  %i.dm = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !23749 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !78
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(96) %i.dn, i1 noundef zeroext true), !inline_history !23965
  store i8 0, ptr %i.dj, align 8, !tbaa !23765
  br label %_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i

_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i: ; preds = %bb.p, %bb.o
  %i.dr = getelementptr inbounds nuw i8, ptr %i.df, i64 24 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !23751 ; 2 uses
  %i.dt = add nsw i32 %i.ds, %i.di                ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.df, i64 28 ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !23752
  %i.dw = icmp sgt i32 %i.dt, %i.dv
  br i1 %i.dw, label %bb.q, label %_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE8add_nullEv.exit, !prof !81

bb.q:                                             ; preds = %_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i
  %i.dx = sitofp i32 %i.dt to double
  %i.dy = call noundef double @log2(double noundef %i.dx) #33, !tbaa !3
  %i.dz = call double @llvm.ceil.f64(double %i.dy)
  %exp2.i.i.i = call double @exp2(double %i.dz)
  %i.ea = fptosi double %exp2.i.i.i to i32        ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !23749 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !78
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(96) %i.ec, i32 noundef %i.ea), !inline_history !23966
  store i32 %i.ea, ptr %i.du, align 4, !tbaa !23752
  %.pre.i = load i32, ptr %i.dr, align 8, !tbaa !23751
  br label %_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE8add_nullEv.exit

_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE8add_nullEv.exit: ; preds = %_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i, %bb.q
  %i.eg = phi i32 [ %i.ds, %_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i ], [ %.pre.i, %bb.q ]
  store i32 %i.di, ptr %i.dg, align 4, !tbaa !23767
  %i.eh = add i32 %i.eg, %i.dh
  %i.ei = load ptr, ptr %i.df, align 8, !tbaa !23750 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !78
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 144
  %i.el = load ptr, ptr %i.ek, align 8
  call void %i.el(ptr noundef nonnull align 8 dereferenceable(94) %i.ei, i32 noundef %i.eh, i1 noundef zeroext true), !inline_history !23967
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE8add_nullEv.exit, %_ZN5folly6detail22callWithConstructedKeyIN8facebook5velox4exec11GenericViewENS_3f146detail11F14BasicSetINS7_21VectorContainerPolicyIS5_vvvvSt17integral_constantIbLb1EEEEE11UsableAsKeyESaIS5_EZNSD_7emplaceIJS5_EEESt4pairINS7_23VectorContainerIteratorIPKS5_EEbEDpOT_EUlSP_E_S5_TnNSt9enable_ifIXoosr3std7is_sameINS_12remove_cvrefIT3_E4typeET_EE5valuesrT0_ISV_E5valueEiE4typeELi0EEEDaRT1_OT2_OST_.exit.i.i, %_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9push_backERKNS1_11GenericViewE.exit
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.em = trunc nsw i64 %indvars.iv.next to i32
  %i.en = icmp eq i32 %i.f, %i.em
  br i1 %i.en, label %._crit_edge, label %bb.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly3f146detail11F14BasicSetINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvvvvSt17integral_constantIbLb1EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35435 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  %i.d = load i8, ptr %i.c, align 1, !tbaa !1616
  %i.e = icmp eq i8 %i.d, -1
  br i1 %i.e, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvvvvSt17integral_constantIbLb1EEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !1619 ; 2 uses
  %i.h = and i64 %i.g, 255                        ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %.0.copyload.i.i.i.i.i = load i16, ptr %i.i, align 1
  %i.j = zext i16 %.0.copyload.i.i.i.i.i to i64   ; 2 uses
  %notmask.i.i.i.i = shl nsw i64 -1, %i.h
  %i.k = xor i64 %notmask.i.i.i.i, -1
  %i.l = lshr i64 %i.k, 12
  %i.m = add nuw nsw i64 %i.l, 1
  %i.n = icmp ult i64 %i.g, 256
  br i1 %i.n, label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.h, ptr %i.f, align 8, !tbaa !1619
  %.0.copyload.i.pre.i.i.i = load i16, ptr %i.i, align 1
  %.pre20.i.i.i = zext i16 %.0.copyload.i.pre.i.i.i to i64
  br label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i

_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i: ; preds = %bb.c, %bb.b
  %.pre-phi21.i.i.i = phi i64 [ %i.j, %bb.b ], [ %.pre20.i.i.i, %bb.c ]
  %i.o = icmp eq i64 %i.h, 0
  %i.p = shl nuw nsw i64 %.pre-phi21.i.i.i, 2
  %.neg17.i.i.i = sub nuw nsw i64 -16, %i.p
  %.neg18.i.i.i = shl i64 -64, %i.h
  %.0.i.neg.i.i.i = select i1 %i.o, i64 %.neg17.i.i.i, i64 %.neg18.i.i.i
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.a, align 8, !tbaa !35435
  store i64 0, ptr %i.f, align 8, !tbaa !1619
  %i.q = and i64 %.0.i.neg.i.i.i, -8
  %i.r = shl nuw nsw i64 %i.j, 5
  %i.s = mul i64 %i.r, %i.m
  %i.t = sub i64 %i.s, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.t) #33
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvvvvSt17integral_constantIbLb1EEEEED2Ev.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvvvvSt17integral_constantIbLb1EEEEED2Ev.exit: ; preds = %bb.a, %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS7_JS7_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESD_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.12745") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(28) %4, ptr noundef nonnull align 8 dereferenceable(28) %5) local_unnamed_addr #29 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1619 ; 3 uses
  %.not = icmp ult i64 %i.b, 256
  br i1 %.not, label %.thread64, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = shl i64 %3, 1
  %i.d = or disjoint i64 %i.c, 1
  %i.e = trunc i64 %3 to i8
  %i.f = insertelement <16 x i8> poison, i8 %i.e, i64 0
  %i.g = shufflevector <16 x i8> %i.f, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.h = and i64 %i.b, 255
  %i.i = shl nuw i64 1, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24
  br label %bb.c

end_hunk_1
