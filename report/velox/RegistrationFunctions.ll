inline.NumInlined: 21036
inline.NumDeleted: 6221
loop-unroll.NumCompletelyUnrolled: 92
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 106
begin_hunk_0_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24IPPrefixCollapseFunctionINS3_10VectorExecEEESB_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSH_EEEJSH_EEEE8applyUdfIZNKSL_7iterateIJNS3_12VectorReaderISH_EEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSM_IS10_EEvSR_SV_EUlSV_E0_EEvRKS1_SV_SX_EUlSV_E_EEvSV_:bb.a
  %i.yv = load ptr, ptr %i.yu, align 8, !tbaa !96
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 32
  %i.yx = load ptr, ptr %i.yw, align 8
  invoke void %i.yx(ptr noundef nonnull align 8 dereferenceable(176) %i.yu)
          to label %.noexc180 unwind label %.loopexit497, !inline_history !5166

.loopexit478:                                     ; preds = %bb.dk, %.lr.ph.i.i.i.i173.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #37
          to label %bb.dz unwind label %.loopexit.split-lp498

bb.dl:                                            ; preds = %.body
  %i.yy = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #34
  %i.yz = icmp eq i32 %i.ya, %i.yy
  br i1 %i.yz, label %bb.dm, label %.loopexit495

bb.dm:                                            ; preds = %bb.dl
  %i.za = call ptr @__cxa_begin_catch(ptr %i.xz) #34 ; 0 uses
  %i.zb = load ptr, ptr %i.as, align 8, !tbaa !5227, !nonnull !107, !align !610
  %i.zc = load ptr, ptr %i.zb, align 8, !tbaa !5228, !nonnull !107, !align !610 ; 3 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 16 ; 2 uses
  %i.ze = load ptr, ptr %i.zd, align 8, !tbaa !96
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 32
  %i.zg = load ptr, ptr %i.zf, align 8
  invoke void %i.zg(ptr noundef nonnull align 8 dereferenceable(176) %i.zd)
          to label %.noexc174 unwind label %bb.dp, !inline_history !5166

.noexc174:                                        ; preds = %bb.dm
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zc, i64 32
  %i.zi = load ptr, ptr %i.zh, align 8, !tbaa !5143 ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zc, i64 24
  %i.zk = load i32, ptr %i.zj, align 8, !tbaa !386
  %i.zl = load ptr, ptr %i.zi, align 8, !tbaa !96
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 144
  %i.zn = load ptr, ptr %i.zm, align 8
  invoke void %i.zn(ptr noundef nonnull align 8 dereferenceable(94) %i.zi, i32 noundef %i.zk, i1 noundef zeroext true)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24IPPrefixCollapseFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSN_SR_ENKUlSR_E0_clIiEEDaSR_.exit7 unwind label %bb.dp, !inline_history !5166

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24IPPrefixCollapseFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSN_SR_ENKUlSR_E0_clIiEEDaSR_.exit7: ; preds = %.noexc174
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %12) #34
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.au, i32 noundef %i.ay, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.dn unwind label %bb.dq

bb.dn:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24IPPrefixCollapseFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSN_SR_ENKUlSR_E0_clIiEEDaSR_.exit7
  %i.zo = load ptr, ptr %12, align 8, !tbaa !371
  %.not.i177 = icmp eq ptr %i.zo, null
  br i1 %.not.i177, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.do

bb.do:                                            ; preds = %bb.dn
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #34
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.dn, %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24IPPrefixCollapseFunctionINS1_10VectorExecEEES9_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSF_EEEJSF_EEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISF_EEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_EUlST_E_ZNKSK_ISY_EEvSP_ST_EUlST_E0_EEvRKNS0_17SelectivityVectorEST_SV_ENKUlST_E_clIiEEDaST_.exit

bb.dp:                                            ; preds = %.noexc174, %bb.dm
  %i.zp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.dq:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24IPPrefixCollapseFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSN_SR_ENKUlSR_E0_clIiEEDaSR_.exit7
  %i.zq = landingpad { ptr, i32 }
          cleanup
  %i.zr = load ptr, ptr %12, align 8, !tbaa !371
  %.not.i178 = icmp eq ptr %i.zr, null
  br i1 %.not.i178, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit179, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #34
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit179

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit179: ; preds = %bb.dq, %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  br label %bb.ds

bb.ds:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit179, %bb.dp
  %.pn.i = phi { ptr, i32 } [ %i.zq, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit179 ], [ %i.zp, %bb.dp ]
  invoke void @__cxa_end_catch()
          to label %.loopexit495 unwind label %bb.dy

.loopexit497:                                     ; preds = %tailrecurse.i.i.i.i.3, %.noexc180
  %lpad.loopexit499 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

.loopexit.split-lp498:                            ; preds = %.loopexit478
  %lpad.loopexit.split-lp500 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

.noexc180:                                        ; preds = %tailrecurse.i.i.i.i.3
  %i.zs = getelementptr inbounds nuw i8, ptr %i.yt, i64 32
  %i.zt = load ptr, ptr %i.zs, align 8, !tbaa !5143 ; 2 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %i.yt, i64 24
  %i.zv = load i32, ptr %i.zu, align 8, !tbaa !386
  %i.zw = load ptr, ptr %i.zt, align 8, !tbaa !96
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 144
  %i.zy = load ptr, ptr %i.zx, align 8
  invoke void %i.zy(ptr noundef nonnull align 8 dereferenceable(94) %i.zt, i32 noundef %i.zv, i1 noundef zeroext true)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24IPPrefixCollapseFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSN_SR_ENKUlSR_E0_clIiEEDaSR_.exit unwind label %.loopexit497, !inline_history !5166

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24IPPrefixCollapseFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSN_SR_ENKUlSR_E0_clIiEEDaSR_.exit: ; preds = %.noexc180
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %13) #34
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.au, i32 noundef %i.ay, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.dt unwind label %bb.dv

bb.dt:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24IPPrefixCollapseFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSN_SR_ENKUlSR_E0_clIiEEDaSR_.exit
  %i.zz = load ptr, ptr %13, align 8, !tbaa !371
  %.not.i183 = icmp eq ptr %i.zz, null
  br i1 %.not.i183, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit184, label %bb.du

bb.du:                                            ; preds = %bb.dt
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #34
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit184

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit184: ; preds = %bb.dt, %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24IPPrefixCollapseFunctionINS1_10VectorExecEEES9_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSF_EEEJSF_EEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISF_EEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_EUlST_E_ZNKSK_ISY_EEvSP_ST_EUlST_E0_EEvRKNS0_17SelectivityVectorEST_SV_ENKUlST_E_clIiEEDaST_.exit

bb.dv:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24IPPrefixCollapseFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSN_SR_ENKUlSR_E0_clIiEEDaSR_.exit
  %i.aaa = landingpad { ptr, i32 }
          cleanup
  %i.aab = load ptr, ptr %13, align 8, !tbaa !371
  %.not.i185 = icmp eq ptr %i.aab, null
  br i1 %.not.i185, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit186, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #34
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit186

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit186: ; preds = %bb.dv, %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  br label %bb.dx

bb.dx:                                            ; preds = %.loopexit497, %.loopexit.split-lp498, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit186
  %.pn16.i = phi { ptr, i32 } [ %i.aaa, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit186 ], [ %lpad.loopexit499, %.loopexit497 ], [ %lpad.loopexit.split-lp500, %.loopexit.split-lp498 ]
  invoke void @__cxa_end_catch()
          to label %.loopexit495 unwind label %bb.dy

.loopexit495:                                     ; preds = %bb.dl, %bb.dx, %bb.ds
  %.merged.i = phi { ptr, i32 } [ %.pn.i, %bb.ds ], [ %.pn16.i, %bb.dx ], [ %eh.lpad-body, %bb.dl ]
  resume { ptr, i32 } %.merged.i

bb.dy:                                            ; preds = %bb.dx, %bb.ds
  %i.aac = landingpad { ptr, i32 }
          catch ptr null
  %i.aad = extractvalue { ptr, i32 } %i.aac, 0
  call void @__clang_call_terminate(ptr %i.aad) #38
  unreachable

bb.dz:                                            ; preds = %.loopexit478
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24IPPrefixCollapseFunctionINS1_10VectorExecEEES9_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSF_EEEJSF_EEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISF_EEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_EUlST_E_ZNKSK_ISY_EEvSP_ST_EUlST_E0_EEvRKNS0_17SelectivityVectorEST_SV_ENKUlST_E_clIiEEDaST_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit172, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit184
  %indvars.iv.next652 = add nsw i64 %indvars.iv651, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next652 to i32
  %exitcond654.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond654.not, label %.loopexit494, label %bb.i, !llvm.loop !5230

bb.ea:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.aae = load ptr, ptr %0, align 8, !tbaa !515
  %i.aaf = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.aag = load i32, ptr %i.aaf, align 4, !tbaa !729
  %i.aah = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aai = load i32, ptr %i.aah, align 8, !tbaa !731
  tail call void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24IPPrefixCollapseFunctionINS3_10VectorExecEEESB_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSH_EEEJSH_EEEE8applyUdfIZNKSL_7iterateIJNS3_12VectorReaderISH_EEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSM_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_EUlSV_E_EEvPKmiibSV_(ptr noundef %i.aae, i32 noundef %i.aag, i32 noundef %i.aai, i1 noundef zeroext true, ptr noundef nonnull byval(%class.anon.2698) align 8 %1)
  br label %.loopexit494

.loopexit494:                                     ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24IPPrefixCollapseFunctionINS1_10VectorExecEEES9_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSF_EEEJSF_EEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISF_EEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_EUlST_E_ZNKSK_ISY_EEvSP_ST_EUlST_E0_EEvRKNS0_17SelectivityVectorEST_SV_ENKUlST_E_clIiEEDaST_.exit, %bb.h, %bb.ea
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairInnESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !5231   ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseISt4pairInnESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !5234
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #36
  br label %_ZNSt12_Vector_baseISt4pairInnESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseISt4pairInnESaIS1_EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJnaEESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions24IPPrefixCollapseFunctionINSC_4exec10VectorExecEE4callERNSF_11ArrayWriterINSC_10CustomTypeINSC_9IPPrefixTELb0EEEEERKNSF_9ArrayViewILb1ESL_EEEUlRKT_RKT0_E_EEEvSS_SS_SV_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::tuple.1964", align 16  ; 5 uses
  %.sroa.4.i.i.i = alloca [31 x i8], align 1      ; 3 uses
  %4 = alloca %"class.std::tuple.1964", align 16  ; 5 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 5                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJnaEESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions24IPPrefixCollapseFunctionINSC_4exec10VectorExecEE4callERNSF_11ArrayWriterINSC_10CustomTypeINSC_9IPPrefixTELb0EEEEERKNSF_9ArrayViewILb1ESL_EEEUlRKT_RKT0_E_EEEvSS_SS_SS_SV_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph36

bb.b:                                             ; preds = %.lr.ph36
  %i.h = icmp eq i64 %i.ab, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph36, !llvm.loop !5235

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa = phi i64 [ %i.d, %.lr.ph ], [ %i.ai, %bb.b ] ; 2 uses
  %storemerge22.lcssa = phi ptr [ %1, %.lr.ph ], [ %i.af, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.i = add nsw i64 %.lcssa, -2
  %i.j = lshr i64 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.08.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.o, %bb.c ] ; 4 uses
  %i.l = getelementptr inbounds [32 x i8], ptr %0, i64 %.08.i.i ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !27
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i8 %i.m, ptr %3, align 16, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.k, ptr noundef nonnull align 16 dereferenceable(16) %i.n, i64 16, i1 false)
  call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJnaEESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions24IPPrefixCollapseFunctionINSC_4exec10VectorExecEE4callERNSF_11ArrayWriterINSC_10CustomTypeINSC_9IPPrefixTELb0EEEEERKNSF_9ArrayViewILb1ESL_EEEUlRKT_RKT0_E_EEEvSS_SV_SV_T1_T2_(ptr %0, i64 noundef %.08.i.i, i64 noundef %.lcssa, ptr noundef nonnull align 16 dead_on_return %3)
  %.not.i.i = icmp eq i64 %.08.i.i, 0
  %i.o = add nsw i64 %.08.i.i, -1
  br i1 %.not.i.i, label %.lr.ph.i.i, label %bb.c, !llvm.loop !5236

.lr.ph.i.i:                                       ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.sroa.4.16..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i, i64 15 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.05.i.i = phi ptr [ %storemerge22.lcssa, %.lr.ph.i.i ], [ %i.r, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
  %i.s = load i8, ptr %i.r, align 1, !tbaa !27
  %i.t = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.4.16..sroa_idx.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %i.t, i64 16, i1 false), !tbaa.struct !5190
  %i.u = load i128, ptr %i.p, align 16, !tbaa !560
  store i128 %i.u, ptr %i.t, align 16, !tbaa !560
  %i.v = load i8, ptr %0, align 16, !tbaa !27
  store i8 %i.v, ptr %i.r, align 16, !tbaa !27
  %i.w = ptrtoint ptr %i.r to i64
  %i.x = sub i64 %i.w, %i.a                       ; 2 uses
  %i.y = ashr exact i64 %i.x, 5
  store i8 %i.s, ptr %4, align 16, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.q, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.4.16..sroa_idx.i.i.i, i64 16, i1 false), !tbaa.struct !5190
  call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJnaEESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions24IPPrefixCollapseFunctionINSC_4exec10VectorExecEE4callERNSF_11ArrayWriterINSC_10CustomTypeINSC_9IPPrefixTELb0EEEEERKNSF_9ArrayViewILb1ESL_EEEUlRKT_RKT0_E_EEEvSS_SV_SV_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.y, ptr noundef nonnull align 16 dead_on_return %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.z = icmp sgt i64 %i.x, 32
  br i1 %i.z, label %bb.d, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJnaEESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions24IPPrefixCollapseFunctionINSC_4exec10VectorExecEE4callERNSF_11ArrayWriterINSC_10CustomTypeINSC_9IPPrefixTELb0EEEEERKNSF_9ArrayViewILb1ESL_EEEUlRKT_RKT0_E_EEEvSS_SS_SS_SV_.exit, !llvm.loop !5237

.lr.ph36:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2235 = phi ptr [ %i.af, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02334 = phi i64 [ %i.ab, %bb.b ], [ %2, %.lr.ph ]
  %i.aa = phi i64 [ %i.ai, %bb.b ], [ %i.d, %.lr.ph ]
  %i.ab = add nsw i64 %.02334, -1                 ; 3 uses
  %i.ac = lshr i64 %i.aa, 1
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.ac
  %i.ae = getelementptr inbounds i8, ptr %storemerge2235, i64 -32
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJnaEESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions24IPPrefixCollapseFunctionINSC_4exec10VectorExecEE4callERNSF_11ArrayWriterINSC_10CustomTypeINSC_9IPPrefixTELb0EEEEERKNSF_9ArrayViewILb1ESL_EEEUlRKT_RKT0_E_EEEvSS_SS_SS_SS_SV_(ptr %0, ptr nonnull %i.f, ptr %i.ad, ptr nonnull %i.ae)
  %i.af = tail call ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJnaEESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions24IPPrefixCollapseFunctionINSC_4exec10VectorExecEE4callERNSF_11ArrayWriterINSC_10CustomTypeINSC_9IPPrefixTELb0EEEEERKNSF_9ArrayViewILb1ESL_EEEUlRKT_RKT0_E_EEESS_SS_SS_SS_SV_(ptr nonnull %i.f, ptr %storemerge2235, ptr %0) ; 4 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJnaEESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions24IPPrefixCollapseFunctionINSC_4exec10VectorExecEE4callERNSF_11ArrayWriterINSC_10CustomTypeINSC_9IPPrefixTELb0EEEEERKNSF_9ArrayViewILb1ESL_EEEUlRKT_RKT0_E_EEEvSS_SS_SV_T1_(ptr %i.af, ptr %storemerge2235, i64 noundef %i.ab)
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.ag, %i.a
  %i.ai = ashr exact i64 %i.ah, 5                 ; 3 uses
  %i.aj = icmp sgt i64 %i.ai, 16
  br i1 %i.aj, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJnaEESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions24IPPrefixCollapseFunctionINSC_4exec10VectorExecEE4callERNSF_11ArrayWriterINSC_10CustomTypeINSC_9IPPrefixTELb0EEEEERKNSF_9ArrayViewILb1ESL_EEEUlRKT_RKT0_E_EEEvSS_SS_SS_SV_.exit, !llvm.loop !5235

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJnaEESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions24IPPrefixCollapseFunctionINSC_4exec10VectorExecEE4callERNSF_11ArrayWriterINSC_10CustomTypeINSC_9IPPrefixTELb0EEEEERKNSF_9ArrayViewILb1ESL_EEEUlRKT_RKT0_E_EEEvSS_SS_SS_SV_.exit: ; preds = %.lr.ph36, %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJnaEESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions24IPPrefixCollapseFunctionINSC_4exec10VectorExecEE4callERNSF_11ArrayWriterINSC_10CustomTypeINSC_9IPPrefixTELb0EEEEERKNSF_9ArrayViewILb1ESL_EEEUlRKT_RKT0_E_EEEvSS_SS_SV_(ptr %0, ptr %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::array.1963", align 16 ; 5 uses
  %3 = alloca %"struct.std::array.1963", align 16 ; 5 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 512
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJnaEESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions24IPPrefixCollapseFunctionINSC_4exec10VectorExecEE4callERNSF_11ArrayWriterINSC_10CustomTypeINSC_9IPPrefixTELb0EEEEERKNSF_9ArrayViewILb1ESL_EEEUlRKT_RKT0_E_EEEvSS_SS_SV_(ptr %0, ptr nonnull %i.e)
  %i.f = icmp eq ptr %i.e, %1
  br i1 %i.f, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJnaEESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions24IPPrefixCollapseFunctionINSC_4exec10VectorExecEE4callERNSF_11ArrayWriterINSC_10CustomTypeINSC_9IPPrefixTELb0EEEEERKNSF_9ArrayViewILb1ESL_EEEUlRKT_RKT0_E_EEEvSS_SS_SV_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJnaEESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox9functions24IPPrefixCollapseFunctionINSC_4exec10VectorExecEE4callERNSF_11ArrayWriterINSC_10CustomTypeINSC_9IPPrefixTELb0EEEEERKNSF_9ArrayViewILb1ESL_EEEUlRKT_RKT0_E_EEEvSS_SV_.exit.i
  %.sroa.0.06.i = phi ptr [ %i.ak, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJnaEESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox9functions24IPPrefixCollapseFunctionINSC_4exec10VectorExecEE4callERNSF_11ArrayWriterINSC_10CustomTypeINSC_9IPPrefixTELb0EEEEERKNSF_9ArrayViewILb1ESL_EEEUlRKT_RKT0_E_EEEvSS_SV_.exit.i ], [ %i.e, %bb.b ] ; 4 uses
  %i.g = load i8, ptr %.sroa.0.06.i, align 1, !tbaa !27 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i, i64 16
  %.sroa.55.16.copyload.i.i = load i128, ptr %i.h, align 16, !tbaa !560 ; 3 uses
  %.sroa.55.24.extract.shift.i.i = lshr i128 %.sroa.55.16.copyload.i.i, 64
  %i.i = insertelement <2 x i128> poison, i128 %.sroa.55.24.extract.shift.i.i, i64 0
  %i.j = insertelement <2 x i128> %i.i, i128 %.sroa.55.16.copyload.i.i, i64 1
  %i.k = trunc <2 x i128> %i.j to <2 x i64>
  %i.l = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %i.k)
  br label %loadbb

loadbb:                                           ; preds = %bb.c, %.lr.ph.i
  %.sroa.07.0.i.i = phi ptr [ %.sroa.0.06.i, %.lr.ph.i ], [ %.sroa.0.0.i.i, %bb.c ] ; 6 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.07.0.i.i, i64 -32 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %.sroa.07.0.i.i, i64 -16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  store <2 x i64> %i.l, ptr %2, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.n = load <2 x i64>, ptr %i.m, align 16
  %i.o = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %i.n)
  %i.p = shufflevector <2 x i64> %i.o, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.p, ptr %3, align 16
  %i.q = load i64, ptr %2, align 16
  %i.r = load i64, ptr %3, align 16
  %i.s = tail call i64 @llvm.bswap.i64(i64 %i.q)  ; 2 uses
  %i.t = tail call i64 @llvm.bswap.i64(i64 %i.r)  ; 2 uses
  %i.u = icmp eq i64 %i.s, %i.t
  br i1 %i.u, label %loadbb17, label %res_block

res_block:                                        ; preds = %loadbb17, %loadbb
  %phi.src1 = phi i64 [ %i.s, %loadbb ], [ %i.ab, %loadbb17 ]
  %phi.src2 = phi i64 [ %i.t, %loadbb ], [ %i.ac, %loadbb17 ]
  %i.v = icmp ult i64 %phi.src1, %phi.src2
  %i.w = select i1 %i.v, i32 -1, i32 1
  br label %endblock

loadbb17:                                         ; preds = %loadbb
  %i.x = getelementptr i8, ptr %2, i64 8
  %i.y = getelementptr i8, ptr %3, i64 8
  %i.z = load i64, ptr %i.x, align 8
  %i.aa = load i64, ptr %i.y, align 8
  %i.ab = tail call i64 @llvm.bswap.i64(i64 %i.z) ; 2 uses
  %i.ac = tail call i64 @llvm.bswap.i64(i64 %i.aa) ; 2 uses
  %i.ad = icmp eq i64 %i.ab, %i.ac
  br i1 %i.ad, label %endblock, label %res_block

endblock:                                         ; preds = %res_block, %loadbb17
  %phi.res = phi i32 [ 0, %loadbb17 ], [ %i.w, %res_block ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  %.not.i.i.i.i = icmp eq i32 %phi.res, 0
  %i.ae = icmp slt i32 %phi.res, 0
  %i.af = load i8, ptr %.sroa.0.0.i.i, align 16   ; 2 uses
  %i.ag = icmp slt i8 %i.g, %i.af
  %.0.i.i.i.i = select i1 %.not.i.i.i.i, i1 %i.ag, i1 %i.ae
  br i1 %.0.i.i.i.i, label %bb.c, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJnaEESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox9functions24IPPrefixCollapseFunctionINSC_4exec10VectorExecEE4callERNSF_11ArrayWriterINSC_10CustomTypeINSC_9IPPrefixTELb0EEEEERKNSF_9ArrayViewILb1ESL_EEEUlRKT_RKT0_E_EEEvSS_SV_.exit.i

bb.c:                                             ; preds = %endblock
  %i.ah = load i128, ptr %i.m, align 16, !tbaa !560
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i, i64 16
  store i128 %i.ah, ptr %i.ai, align 16, !tbaa !560
  store i8 %i.af, ptr %.sroa.07.0.i.i, align 16, !tbaa !27
  br label %loadbb, !llvm.loop !5238

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJnaEESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox9functions24IPPrefixCollapseFunctionINSC_4exec10VectorExecEE4callERNSF_11ArrayWriterINSC_10CustomTypeINSC_9IPPrefixTELb0EEEEERKNSF_9ArrayViewILb1ESL_EEEUlRKT_RKT0_E_EEEvSS_SV_.exit.i: ; preds = %endblock
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i, i64 16
  store i128 %.sroa.55.16.copyload.i.i, ptr %i.aj, align 16, !tbaa !560
  store i8 %i.g, ptr %.sroa.07.0.i.i, align 16, !tbaa !27
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i, i64 32 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %1
  br i1 %i.al, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJnaEESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions24IPPrefixCollapseFunctionINSC_4exec10VectorExecEE4callERNSF_11ArrayWriterINSC_10CustomTypeINSC_9IPPrefixTELb0EEEEERKNSF_9ArrayViewILb1ESL_EEEUlRKT_RKT0_E_EEEvSS_SS_SV_.exit, label %.lr.ph.i, !llvm.loop !5239

bb.d:                                             ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJnaEESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions24IPPrefixCollapseFunctionINSC_4exec10VectorExecEE4callERNSF_11ArrayWriterINSC_10CustomTypeINSC_9IPPrefixTELb0EEEEERKNSF_9ArrayViewILb1ESL_EEEUlRKT_RKT0_E_EEEvSS_SS_SV_(ptr %0, ptr %1)
  br label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJnaEESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions24IPPrefixCollapseFunctionINSC_4exec10VectorExecEE4callERNSF_11ArrayWriterINSC_10CustomTypeINSC_9IPPrefixTELb0EEEEERKNSF_9ArrayViewILb1ESL_EEEUlRKT_RKT0_E_EEEvSS_SS_SV_.exit

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJnaEESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions24IPPrefixCollapseFunctionINSC_4exec10VectorExecEE4callERNSF_11ArrayWriterINSC_10CustomTypeINSC_9IPPrefixTELb0EEEEERKNSF_9ArrayViewILb1ESL_EEEUlRKT_RKT0_E_EEEvSS_SS_SV_.exit: ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJnaEESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox9functions24IPPrefixCollapseFunctionINSC_4exec10VectorExecEE4callERNSF_11ArrayWriterINSC_10CustomTypeINSC_9IPPrefixTELb0EEEEERKNSF_9ArrayViewILb1ESL_EEEUlRKT_RKT0_E_EEEvSS_SV_.exit.i, %bb.b, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJnaEESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions24IPPrefixCollapseFunctionINSC_4exec10VectorExecEE4callERNSF_11ArrayWriterINSC_10CustomTypeINSC_9IPPrefixTELb0EEEEERKNSF_9ArrayViewILb1ESL_EEEUlRKT_RKT0_E_EEEvSS_SV_SV_T1_T2_(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef align 16 dead_on_return %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::array.1963", align 16 ; 5 uses
  %5 = alloca %"struct.std::array.1963", align 8  ; 6 uses
  %6 = alloca %"struct.std::array.1963", align 16 ; 5 uses
  %7 = alloca %"struct.std::array.1963", align 16 ; 5 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %endblock
  %.036 = phi i64 [ %spec.select, %endblock ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.036, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds [32 x i8], ptr %0, i64 %i.e ; 2 uses
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [32 x i8], ptr %0, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.k = load <2 x i64>, ptr %i.i, align 16
  %i.l = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %i.k)
  %i.m = shufflevector <2 x i64> %i.l, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.m, ptr %6, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.n = load <2 x i64>, ptr %i.j, align 16
  %i.o = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %i.n)
  %i.p = shufflevector <2 x i64> %i.o, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.p, ptr %7, align 16
  %i.q = load i64, ptr %6, align 16
  %i.r = load i64, ptr %7, align 16
  %i.s = tail call i64 @llvm.bswap.i64(i64 %i.q)  ; 2 uses
  %i.t = tail call i64 @llvm.bswap.i64(i64 %i.r)  ; 2 uses
  %i.u = icmp eq i64 %i.s, %i.t
  br i1 %i.u, label %loadbb39, label %res_block

res_block:                                        ; preds = %loadbb39, %.lr.ph
  %phi.src1 = phi i64 [ %i.s, %.lr.ph ], [ %i.ab, %loadbb39 ]
  %phi.src2 = phi i64 [ %i.t, %.lr.ph ], [ %i.ac, %loadbb39 ]
  %i.v = icmp ult i64 %phi.src1, %phi.src2
  %i.w = select i1 %i.v, i32 -1, i32 1
  br label %endblock

loadbb39:                                         ; preds = %.lr.ph
  %i.x = getelementptr i8, ptr %6, i64 8
  %i.y = getelementptr i8, ptr %7, i64 8
  %i.z = load i64, ptr %i.x, align 8
  %i.aa = load i64, ptr %i.y, align 8
  %i.ab = tail call i64 @llvm.bswap.i64(i64 %i.z) ; 2 uses
  %i.ac = tail call i64 @llvm.bswap.i64(i64 %i.aa) ; 2 uses
  %i.ad = icmp eq i64 %i.ab, %i.ac
  br i1 %i.ad, label %endblock, label %res_block

endblock:                                         ; preds = %res_block, %loadbb39
  %phi.res = phi i32 [ 0, %loadbb39 ], [ %i.w, %res_block ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %.not.i.i = icmp eq i32 %phi.res, 0
  %i.ae = icmp slt i32 %phi.res, 0
  %i.af = load i8, ptr %i.f, align 16
  %i.ag = load i8, ptr %i.h, align 16
  %i.ah = icmp slt i8 %i.af, %i.ag
  %.0.i.i = select i1 %.not.i.i, i1 %i.ah, i1 %i.ae
  %spec.select = select i1 %.0.i.i, i64 %i.g, i64 %i.e ; 4 uses
  %i.ai = getelementptr inbounds [32 x i8], ptr %0, i64 %spec.select ; 2 uses
  %i.aj = getelementptr inbounds [32 x i8], ptr %0, i64 %.036 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.al = load i128, ptr %i.ak, align 16, !tbaa !560
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i128 %i.al, ptr %i.am, align 16, !tbaa !560
  %i.an = load i8, ptr %i.ai, align 16, !tbaa !27
  store i8 %i.an, ptr %i.aj, align 16, !tbaa !27
  %i.ao = icmp slt i64 %spec.select, %i.b
  br i1 %i.ao, label %.lr.ph, label %._crit_edge, !llvm.loop !5240

end_hunk_0
