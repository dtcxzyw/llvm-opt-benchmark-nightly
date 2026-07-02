inline.NumInlined: 67966
inline.NumDeleted: 17055
loop-unroll.NumCompletelyUnrolled: 130
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 139
begin_hunk_0_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20DistinctFromFunctionINS3_10VectorExecEEESB_bNS0_15ConstantCheckerIJNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEESH_EEEJSH_SH_EEEE7iterateIJNS3_12VectorReaderISH_EESN_EEEvRNSK_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi:bb.a

.loopexit113:                                     ; preds = %bb.an, %.lr.ph.i.i.i.preheader.i77.preheader, %tailrecurse.i.i.i.i80, %tailrecurse.i.i.i.i80.1, %tailrecurse.i.i.i.i80.2
  invoke void @__cxa_rethrow() #31
          to label %bb.bb unwind label %bb.au

bb.ao:                                            ; preds = %.body
  %i.gs = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #28
  %i.gt = icmp eq i32 %i.ga, %i.gs
  br i1 %i.gt, label %bb.ap, label %common.resume

bb.ap:                                            ; preds = %bb.ao
  %i.gu = call ptr @__cxa_begin_catch(ptr %i.fz) #28 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %6) #28
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.do, i32 noundef %i.dn, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.aq unwind label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.gv = load ptr, ptr %6, align 8, !tbaa !495
  %.not.i82 = icmp eq ptr %i.gv, null
  br i1 %.not.i82, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit83, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit83

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit83: ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20DistinctFromFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEESF_EEEJSF_SF_EEEE7iterateIJNS1_12VectorReaderISF_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit

bb.as:                                            ; preds = %bb.ap
  %i.gw = landingpad { ptr, i32 }
          cleanup
  %i.gx = load ptr, ptr %6, align 8, !tbaa !495
  %.not.i84 = icmp eq ptr %i.gx, null
  br i1 %.not.i84, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit85, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit85

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit85: ; preds = %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ba

bb.au:                                            ; preds = %.loopexit113
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.av:                                            ; preds = %tailrecurse.i.i.i.i80.3
  %i.gz = load ptr, ptr %7, align 8, !tbaa !495
  %.not.i86 = icmp eq ptr %i.gz, null
  br i1 %.not.i86, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit87, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit87

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit87: ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20DistinctFromFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEESF_EEEJSF_SF_EEEE7iterateIJNS1_12VectorReaderISF_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit

bb.ax:                                            ; preds = %tailrecurse.i.i.i.i80.3
  %i.ha = landingpad { ptr, i32 }
          cleanup
  %i.hb = load ptr, ptr %7, align 8, !tbaa !495
  %.not.i88 = icmp eq ptr %i.hb, null
  br i1 %.not.i88, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit89, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit89

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit89: ; preds = %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.az

bb.az:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit89, %bb.au
  %.pn.i = phi { ptr, i32 } [ %i.ha, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit89 ], [ %i.gy, %bb.au ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit85
  %i.hc = landingpad { ptr, i32 }
          catch ptr null
  %i.hd = extractvalue { ptr, i32 } %i.hc, 0
  call void @__clang_call_terminate(ptr %i.hd) #32
  unreachable

bb.bb:                                            ; preds = %.loopexit113
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20DistinctFromFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEESF_EEEJSF_SF_EEEE7iterateIJNS1_12VectorReaderISF_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit76, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit83, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit87
  %i.he = add i64 %.015127, -1
  %i.hf = and i64 %i.he, %.015127                 ; 2 uses
  %.not = icmp eq i64 %i.hf, 0
  br i1 %.not, label %.loopexit111, label %.noexc20, !llvm.loop !15831

.loopexit111:                                     ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20DistinctFromFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEESF_EEEJSF_SF_EEEE7iterateIJNS1_12VectorReaderISF_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_ENKUlSR_E_clImEEDaSR_.exit, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20DistinctFromFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEESF_EEEJSF_SF_EEEE7iterateIJNS1_12VectorReaderISF_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit, %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20DistinctFromFunctionINS3_10VectorExecEEESB_bNS0_15ConstantCheckerIJNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEESH_EEEJSH_SH_EEEE7iterateIJNS3_12VectorReaderISH_EESN_EEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS4_22applyToSelectedNoThrowISU_EEvRKS1_ST_EUlST_E_EEvSX_ST_T0_EUlST_E_EEvST_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef byval(%class.anon.7547) align 8 %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.facebook::velox::Status", align 8 ; 7 uses
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !672, !range !167, !noundef !168
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i:     ; preds = %bb.a
  %.0.in.pre.i = load i8, ptr %i.a, align 4, !tbaa !142, !range !167
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !879
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !880  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !881
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !639    ; 2 uses
  %.not.i.i31 = icmp sgt i32 %i.i, 0
  br i1 %.not.i.i31, label %bb.e, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.i, 2147483584                 ; 3 uses
  %i.o = zext nneg i32 %i.n to i64
  %.not37.i.i.not.i150.not = icmp eq i32 %i.n, 0
  br i1 %.not37.i.i.not.i150.not, label %.critedge.i.i.i, label %.lr.ph152

bb.f:                                             ; preds = %.lr.ph152
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i151, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.o
  br i1 %.not37.i.i.not.i, label %.lr.ph152, label %.critedge.i.i.i, !llvm.loop !882

.lr.ph152:                                        ; preds = %bb.e, %bb.f
  %indvars.iv.i151 = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i151, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !228
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, !llvm.loop !882

.critedge.i.i.i:                                  ; preds = %bb.f, %bb.e
  %.not38.i.i.i = icmp eq i32 %i.i, %i.n
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i
  %i.t = lshr i32 %i.i, 6
  %i.u = and i32 %i.i, 63
  %i.v = zext nneg i32 %i.u to i64
  %notmask.i40.i.i.i = shl nsw i64 -1, %i.v
  %i.w = zext nneg i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !228
  %.demorgan.i = or i64 %i.y, %notmask.i40.i.i.i
  %i.z = icmp eq i64 %.demorgan.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i:   ; preds = %.lr.ph152, %bb.g, %.critedge.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph152 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit: ; preds = %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i
  %.0.in.i = phi i8 [ %.0.in.pre.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i ]
  %.0.i = trunc nuw i8 %.0.in.i to i1
  br i1 %.0.i, label %bb.h, label %bb.ay

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !880 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !879 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %.lr.ph, label %.loopexit116

.lr.ph:                                           ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = sext i32 %i.ag to i64
  %.pre132 = load ptr, ptr %1, align 8, !tbaa !15832
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20DistinctFromFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEESF_EEEJSF_SF_EEEE7iterateIJNS1_12VectorReaderISF_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit
  %5 = phi ptr [ %.pre132, %.lr.ph ], [ %6, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20DistinctFromFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEESF_EEEJSF_SF_EEEE7iterateIJNS1_12VectorReaderISF_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit ] ; 7 uses
  %indvars.iv = phi i64 [ %i.aj, %.lr.ph ], [ %indvars.iv.next, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20DistinctFromFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEESF_EEEJSF_SF_EEEE7iterateIJNS1_12VectorReaderISF_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit ] ; 18 uses
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !15774 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !15833, !nonnull !168, !align !289
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !15835, !nonnull !168, !align !289 ; 2 uses
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !3290, !nonnull !168, !align !289 ; 10 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !15836 ; 4 uses
  %.not.i.i32 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i32, label %.noexc6, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 58
  %i.at = load i8, ptr %i.as, align 2, !tbaa !1168, !range !167, !noundef !168
  %i.au = trunc nuw i8 %i.at to i1
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 57
  %i.aw = load i8, ptr %i.av, align 1, !range !167
  %i.ax = trunc nuw i8 %i.aw to i1
  %or.cond.i.i = select i1 %i.au, i1 true, i1 %i.ax
  br i1 %or.cond.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = lshr i64 %indvars.iv, 6
  %i.az = and i64 %i.ay, 67108863
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.az
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !228
  %i.bc = and i64 %indvars.iv, 63
  %i.bd = shl nuw i64 1, %i.bc
  %i.be = and i64 %i.bb, %i.bd
  br label %.noexc5

bb.l:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ap, i64 59
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !1169, !range !167, !noundef !168
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bi = load i64, ptr %i.ar, align 8, !tbaa !228
  %i.bj = and i64 %i.bi, 1
  br label %.noexc5

bb.n:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1171
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %indvars.iv
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !3
  %i.bo = zext i32 %i.bn to i64                   ; 2 uses
  %i.bp = lshr i64 %i.bo, 6
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.bp
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !228
  %i.bs = and i64 %i.bo, 63
  %i.bt = shl nuw i64 1, %i.bs
  %i.bu = and i64 %i.bt, %i.br
  br label %.noexc5

.noexc5:                                          ; preds = %bb.n, %bb.m, %bb.k
  %.0.i.i.in = phi i64 [ %i.be, %bb.k ], [ %i.bj, %bb.m ], [ %i.bu, %bb.n ]
  %.0.i.i.not = icmp eq i64 %.0.i.i.in, 0
  br i1 %.0.i.i.not, label %bb.aa, label %.noexc6

.noexc6:                                          ; preds = %bb.i, %.noexc5
  %i.bv = load ptr, ptr %i.ao, align 8, !tbaa !3290, !nonnull !168, !align !289 ; 10 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !15836 ; 4 uses
  %.not.i.i33 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i33, label %.noexc9.thread, label %bb.o

bb.o:                                             ; preds = %.noexc6
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 58
  %i.bz = load i8, ptr %i.by, align 2, !tbaa !1168, !range !167, !noundef !168
  %i.ca = trunc nuw i8 %i.bz to i1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 57
  %i.cc = load i8, ptr %i.cb, align 1, !range !167
  %i.cd = trunc nuw i8 %i.cc to i1
  %or.cond.i.i34 = select i1 %i.ca, i1 true, i1 %i.cd
  br i1 %or.cond.i.i34, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ce = lshr i64 %indvars.iv, 6
  %i.cf = and i64 %i.ce, 67108863
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.cf
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !228
  %i.ci = and i64 %indvars.iv, 63
  %i.cj = shl nuw i64 1, %i.ci
  %i.ck = and i64 %i.ch, %i.cj
  br label %.noexc9

bb.q:                                             ; preds = %bb.o
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bv, i64 59
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !1169, !range !167, !noundef !168
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.co = load i64, ptr %i.bx, align 8, !tbaa !228
  %i.cp = and i64 %i.co, 1
  br label %.noexc9

bb.s:                                             ; preds = %bb.q
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !1171
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %indvars.iv
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !3
  %i.cu = zext i32 %i.ct to i64                   ; 2 uses
  %i.cv = lshr i64 %i.cu, 6
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.cv
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !228
  %i.cy = and i64 %i.cu, 63
  %i.cz = shl nuw i64 1, %i.cy
  %i.da = and i64 %i.cz, %i.cx
  br label %.noexc9

.noexc9:                                          ; preds = %bb.s, %bb.r, %bb.p
  %.0.i.i36.in = phi i64 [ %i.ck, %bb.p ], [ %i.cp, %bb.r ], [ %i.da, %bb.s ]
  %.0.i.i36.not = icmp eq i64 %.0.i.i36.in, 0
  br i1 %.0.i.i36.not, label %.sink.split, label %.noexc9.thread

.noexc9.thread:                                   ; preds = %.noexc6, %.noexc9
  %i.db = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !2247 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !2247
  %i.df = getelementptr inbounds nuw i8, ptr %i.ap, i64 58
  %i.dg = load i8, ptr %i.df, align 2, !tbaa !1168, !range !167, !noundef !168
  %i.dh = trunc nuw i8 %i.dg to i1
  %i.di = trunc nsw i64 %indvars.iv to i32        ; 4 uses
  br i1 %i.dh, label %_ZNK8facebook5velox4exec11GenericView12decodedIndexEv.exit.i.i, label %bb.t

bb.t:                                             ; preds = %.noexc9.thread
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ap, i64 59
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !1169, !range !167, !noundef !168
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !1170
  br label %_ZNK8facebook5velox4exec11GenericView12decodedIndexEv.exit.i.i

bb.v:                                             ; preds = %bb.t
  %i.do = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !1171
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.dp, i64 %indvars.iv
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !3
  br label %_ZNK8facebook5velox4exec11GenericView12decodedIndexEv.exit.i.i

_ZNK8facebook5velox4exec11GenericView12decodedIndexEv.exit.i.i: ; preds = %bb.v, %bb.u, %.noexc9.thread
  %.0.i.i.i.i = phi i32 [ %i.dr, %bb.v ], [ %i.dn, %bb.u ], [ %i.di, %.noexc9.thread ]
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bv, i64 58
  %i.dt = load i8, ptr %i.ds, align 2, !tbaa !1168, !range !167, !noundef !168
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %_ZNK8facebook5velox4exec11GenericView7compareERKS2_NS0_12CompareFlagsE.exit.i, label %bb.w

bb.w:                                             ; preds = %_ZNK8facebook5velox4exec11GenericView12decodedIndexEv.exit.i.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bv, i64 59
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !1169, !range !167, !noundef !168
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bv, i64 64
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !1170
  br label %_ZNK8facebook5velox4exec11GenericView7compareERKS2_NS0_12CompareFlagsE.exit.i

bb.y:                                             ; preds = %bb.w
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !1171
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.eb, i64 %indvars.iv
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !3
  br label %_ZNK8facebook5velox4exec11GenericView7compareERKS2_NS0_12CompareFlagsE.exit.i

_ZNK8facebook5velox4exec11GenericView7compareERKS2_NS0_12CompareFlagsE.exit.i: ; preds = %bb.y, %bb.x, %_ZNK8facebook5velox4exec11GenericView12decodedIndexEv.exit.i.i
  %.0.i.i5.i.i = phi i32 [ %i.ed, %bb.y ], [ %i.dz, %bb.x ], [ %i.di, %_ZNK8facebook5velox4exec11GenericView12decodedIndexEv.exit.i.i ]
  %i.ee = load ptr, ptr %i.dc, align 8, !tbaa !157
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 80
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = invoke i64 %i.eg(ptr noundef nonnull align 8 dereferenceable(94) %i.dc, ptr noundef %i.de, i32 noundef %.0.i.i.i.i, i32 noundef %.0.i.i5.i.i, i64 65793)
          to label %.noexc40 unwind label %.body, !inline_history !15787 ; 2 uses

.noexc40:                                         ; preds = %_ZNK8facebook5velox4exec11GenericView7compareERKS2_NS0_12CompareFlagsE.exit.i
  %i.ei = and i64 %i.eh, 4294967296
  %.not.i = icmp eq i64 %i.ei, 0
  br i1 %.not.i, label %bb.z, label %.noexc.thread

bb.z:                                             ; preds = %.noexc40
  invoke void @_ZSt27__throw_bad_optional_accessv() #31
          to label %.noexc41 unwind label %.body

.noexc41:                                         ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %.noexc5
  %i.ej = load ptr, ptr %i.ao, align 8, !tbaa !3290, !nonnull !168, !align !289 ; 5 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !15836 ; 4 uses
  %.not.i.i50 = icmp eq ptr %i.el, null
  br i1 %.not.i.i50, label %.sink.split, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 58
  %i.en = load i8, ptr %i.em, align 2, !tbaa !1168, !range !167, !noundef !168
  %i.eo = trunc nuw i8 %i.en to i1
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ej, i64 57
  %i.eq = load i8, ptr %i.ep, align 1, !range !167
  %i.er = trunc nuw i8 %i.eq to i1
  %or.cond.i.i51 = select i1 %i.eo, i1 true, i1 %i.er
  br i1 %or.cond.i.i51, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.es = lshr i64 %indvars.iv, 6
  %i.et = and i64 %i.es, 67108863
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.et
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !228
  %i.ew = and i64 %indvars.iv, 63
  %i.ex = shl nuw i64 1, %i.ew
  %i.ey = and i64 %i.ev, %i.ex
  br label %.noexc13

bb.ad:                                            ; preds = %bb.ab
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ej, i64 59
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !1169, !range !167, !noundef !168
  %i.fb = trunc nuw i8 %i.fa to i1
  br i1 %i.fb, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fc = load i64, ptr %i.el, align 8, !tbaa !228
  %i.fd = and i64 %i.fc, 1
  br label %.noexc13

bb.af:                                            ; preds = %bb.ad
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !1171
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %indvars.iv
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !3
  %i.fi = zext i32 %i.fh to i64                   ; 2 uses
  %i.fj = lshr i64 %i.fi, 6
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.fj
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !228
  %i.fm = and i64 %i.fi, 63
  %i.fn = shl nuw i64 1, %i.fm
  %i.fo = and i64 %i.fn, %i.fl
  br label %.noexc13

.noexc13:                                         ; preds = %bb.af, %bb.ae, %bb.ac
  %.0.i.i53.in = phi i64 [ %i.ey, %bb.ac ], [ %i.fd, %bb.ae ], [ %i.fo, %bb.af ]
  %.0.i.i53.not = icmp eq i64 %.0.i.i53.in, 0
  br i1 %.0.i.i53.not, label %.noexc.thread.thread111, label %.sink.split

.noexc.thread.thread111:                          ; preds = %.noexc13
  store ptr null, ptr %2, align 8, !tbaa !873, !alias.scope !15837
  %i.fp = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !15840, !nonnull !168, !align !289
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !15792, !nonnull !168, !align !289
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !858
  %i.fu = lshr i64 %indvars.iv, 3
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fu ; 2 uses
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !26
  br label %bb.ah

.noexc.thread:                                    ; preds = %.noexc40
  %i.fx = and i64 %i.eh, 4294967295
  %.not = icmp eq i64 %i.fx, 0
  store ptr null, ptr %2, align 8, !tbaa !873, !alias.scope !15841
  %i.fy = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !15840, !nonnull !168, !align !289
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !15792, !nonnull !168, !align !289
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !858
  %i.gd = lshr i64 %indvars.iv, 3
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gd ; 3 uses
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !26  ; 2 uses
  br i1 %.not, label %bb.ah, label %bb.ag

.sink.split:                                      ; preds = %bb.aa, %.noexc13, %.noexc9
  store ptr null, ptr %2, align 8, !tbaa !873
  %i.gg = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !15840, !nonnull !168, !align !289
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !15792, !nonnull !168, !align !289
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !858
  %i.gl = lshr i64 %indvars.iv, 3
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.gl ; 2 uses
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !26
  br label %bb.ag

bb.ag:                                            ; preds = %.sink.split, %.noexc.thread
  %i.go = phi i8 [ %i.gf, %.noexc.thread ], [ %i.gn, %.sink.split ]
  %i.gp = phi ptr [ %i.ge, %.noexc.thread ], [ %i.gm, %.sink.split ]
  %i.gq = trunc i64 %indvars.iv to i8
  %i.gr = and i8 %i.gq, 7
  %i.gs = shl nuw i8 1, %i.gr
  %i.gt = or i8 %i.gs, %i.go
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20DistinctFromFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEESD_EEEJSD_SD_EEEE7iterateIJNS1_12VectorReaderISD_EESJ_EEEvRNSG_12ApplyContextEDpRT_ENKUlT_E2_clIiEEDaSP_.exit

bb.ah:                                            ; preds = %.noexc.thread.thread111, %.noexc.thread
  %i.gu = phi i8 [ %i.fw, %.noexc.thread.thread111 ], [ %i.gf, %.noexc.thread ]
  %i.gv = phi ptr [ %i.fv, %.noexc.thread.thread111 ], [ %i.ge, %.noexc.thread ]
  %i.gw = and i64 %indvars.iv, 7
  %i.gx = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.gw
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !26
  %i.gz = and i8 %i.gy, %i.gu
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20DistinctFromFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEESD_EEEJSD_SD_EEEE7iterateIJNS1_12VectorReaderISD_EESJ_EEEvRNSG_12ApplyContextEDpRT_ENKUlT_E2_clIiEEDaSP_.exit

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20DistinctFromFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEESD_EEEJSD_SD_EEEE7iterateIJNS1_12VectorReaderISD_EESJ_EEEvRNSG_12ApplyContextEDpRT_ENKUlT_E2_clIiEEDaSP_.exit: ; preds = %bb.ah, %bb.ag
  %i.ha = phi ptr [ %i.gv, %bb.ah ], [ %i.gp, %bb.ag ]
  %.sink.i79 = phi i8 [ %i.gz, %bb.ah ], [ %i.gt, %bb.ag ]
  store i8 %.sink.i79, ptr %i.ha, align 1, !tbaa !26
  %i.hb = load ptr, ptr %2, align 8, !tbaa !873
  %.not.i83 = icmp eq ptr %i.hb, null
  %.pre = load ptr, ptr %1, align 8, !tbaa !15832
  br i1 %.not.i83, label %_ZN8facebook5velox6StatusD2Ev.exit84, label %bb.ai, !prof !319

bb.ai:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20DistinctFromFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEESD_EEEJSD_SD_EEEE7iterateIJNS1_12VectorReaderISD_EESJ_EEEvRNSG_12ApplyContextEDpRT_ENKUlT_E2_clIiEEDaSP_.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %_ZN8facebook5velox6StatusD2Ev.exit84

_ZN8facebook5velox6StatusD2Ev.exit84:             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20DistinctFromFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEESD_EEEJSD_SD_EEEE7iterateIJNS1_12VectorReaderISD_EESJ_EEEvRNSG_12ApplyContextEDpRT_ENKUlT_E2_clIiEEDaSP_.exit, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20DistinctFromFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEESF_EEEJSF_SF_EEEE7iterateIJNS1_12VectorReaderISF_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit

.body:                                            ; preds = %_ZNK8facebook5velox4exec11GenericView7compareERKS2_NS0_12CompareFlagsE.exit.i, %bb.z
  %i.hc = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.hd = extractvalue { ptr, i32 } %i.hc, 0      ; 2 uses
  %i.he = extractvalue { ptr, i32 } %i.hc, 1      ; 2 uses
  %i.hf = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #28
  %i.hg = icmp eq i32 %i.he, %i.hf
  br i1 %i.hg, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.body
  %i.hh = call ptr @__cxa_begin_catch(ptr %i.hd) #28
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !2295 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 144
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !7  ; 4 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 152
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !16
  %i.ho = icmp eq i64 %i.hn, 4
  br i1 %i.ho, label %.lr.ph.i.i.i.preheader.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader.i.preheader:               ; preds = %bb.aj
  %i.hp = load i8, ptr %i.hl, align 1, !tbaa !26
  %or.cond.not.i.i.i = icmp eq i8 %i.hp, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.preheader.i.preheader
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hl, i64 1
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !26
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.hr, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hl, i64 2
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !26
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.ht, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hl, i64 3
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !26
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.hv, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %4) #28
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.ak, i32 noundef %i.di, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.ar unwind label %bb.at

.loopexit:                                        ; preds = %bb.aj, %.lr.ph.i.i.i.preheader.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #31
          to label %bb.ax unwind label %bb.aq

bb.ak:                                            ; preds = %.body
  %i.hw = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #28
  %i.hx = icmp eq i32 %i.he, %i.hw
  br i1 %i.hx, label %bb.al, label %.loopexit117

bb.al:                                            ; preds = %bb.ak
  %i.hy = call ptr @__cxa_begin_catch(ptr %i.hd) #28 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %3) #28
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.ak, i32 noundef %i.di, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.hz = load ptr, ptr %3, align 8, !tbaa !495
  %.not.i85 = icmp eq ptr %i.hz, null
  br i1 %.not.i85, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20DistinctFromFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEESF_EEEJSF_SF_EEEE7iterateIJNS1_12VectorReaderISF_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit

bb.ao:                                            ; preds = %bb.al
  %i.ia = landingpad { ptr, i32 }
          cleanup
  %i.ib = load ptr, ptr %3, align 8, !tbaa !495
  %.not.i86 = icmp eq ptr %i.ib, null
  br i1 %.not.i86, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit87, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit87

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit87: ; preds = %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  invoke void @__cxa_end_catch()
          to label %.loopexit117 unwind label %bb.aw

bb.aq:                                            ; preds = %.loopexit
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.ar:                                            ; preds = %tailrecurse.i.i.i.i.3
  %i.id = load ptr, ptr %4, align 8, !tbaa !495
  %.not.i88 = icmp eq ptr %i.id, null
  br i1 %.not.i88, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit89, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit89

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit89: ; preds = %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20DistinctFromFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEESF_EEEJSF_SF_EEEE7iterateIJNS1_12VectorReaderISF_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit

bb.at:                                            ; preds = %tailrecurse.i.i.i.i.3
  %i.ie = landingpad { ptr, i32 }
          cleanup
  %i.if = load ptr, ptr %4, align 8, !tbaa !495
  %.not.i90 = icmp eq ptr %i.if, null
  br i1 %.not.i90, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit91, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit91

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit91: ; preds = %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.av

bb.av:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit91, %bb.aq
  %.pn.i = phi { ptr, i32 } [ %i.ie, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit91 ], [ %i.ic, %bb.aq ]
  invoke void @__cxa_end_catch()
          to label %.loopexit117 unwind label %bb.aw

.loopexit117:                                     ; preds = %bb.ak, %bb.av, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit87
  %.merged.i = phi { ptr, i32 } [ %i.ia, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit87 ], [ %.pn.i, %bb.av ], [ %i.hc, %bb.ak ]
  resume { ptr, i32 } %.merged.i

bb.aw:                                            ; preds = %bb.av, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit87
  %i.ig = landingpad { ptr, i32 }
          catch ptr null
  %i.ih = extractvalue { ptr, i32 } %i.ig, 0
  call void @__clang_call_terminate(ptr %i.ih) #32
  unreachable

bb.ax:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20DistinctFromFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEESF_EEEJSF_SF_EEEE7iterateIJNS1_12VectorReaderISF_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit84, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit89
  %6 = phi ptr [ %.pre, %_ZN8facebook5velox6StatusD2Ev.exit84 ], [ %5, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit ], [ %5, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit89 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit116, label %bb.i, !llvm.loop !15844

bb.ay:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ii = load ptr, ptr %0, align 8, !tbaa !639
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !879
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.im = load i32, ptr %i.il, align 8, !tbaa !880
  tail call void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20DistinctFromFunctionINS3_10VectorExecEEESB_bNS0_15ConstantCheckerIJNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEESH_EEEJSH_SH_EEEE7iterateIJNS3_12VectorReaderISH_EESN_EEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS4_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_EUlST_E_EEvPKmiibST_(ptr noundef %i.ii, i32 noundef %i.ik, i32 noundef %i.im, i1 noundef zeroext true, ptr noundef nonnull byval(%class.anon.7547) align 8 %1)
  br label %.loopexit116

.loopexit116:                                     ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20DistinctFromFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEESF_EEEJSF_SF_EEEE7iterateIJNS1_12VectorReaderISF_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit, %bb.h, %bb.ay
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20DistinctFromFunctionINS3_10VectorExecEEESB_bNS0_15ConstantCheckerIJNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEESH_EEEJSH_SH_EEEE7iterateIJNS3_12VectorReaderISH_EESN_EEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS4_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_EUlST_E_EEvPKmiibST_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef byval(%class.anon.7547) align 8 %4) local_unnamed_addr #0 comdat {
bb.a:
  %5 = alloca %class.anon.7549, align 8           ; 6 uses
  %6 = alloca %class.anon.7548, align 8           ; 8 uses
  %i.a = zext i1 %3 to i8                         ; 2 uses
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.39.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  store i8 %i.a, ptr %5, align 8
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %0, ptr %.sroa.25.0..sroa_idx, align 8
  store i8 %i.a, ptr %6, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %.sroa.28.0..sroa_idx, align 8
  %.not.i = icmp slt i32 %1, %2
  br i1 %.not.i, label %bb.b, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20DistinctFromFunctionINS4_10VectorExecEEESC_bNS0_15ConstantCheckerIJNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEESI_EEEJSI_SI_EEEE7iterateIJNS4_12VectorReaderISI_EESO_EEEvRNSL_12ApplyContextEDpRT_EUlT_E2_ZNS5_22applyToSelectedNoThrowISV_EEvRKNS0_17SelectivityVectorESU_EUlSU_E_EEvSZ_SU_T0_EUlSU_E_EEvPKmiibSU_EUlimE_ZNS3_IS12_EEvS14_iibSU_EUliE_EEviiSU_S11_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %1, 63                           ; 2 uses
  %i.c = srem i32 %i.b, 64
  %i.d = sub nsw i32 %i.b, %i.c                   ; 6 uses
  %i.e = and i32 %2, -64                          ; 4 uses
  %i.f = icmp slt i32 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = ashr i32 %2, 6
  %i.h = and i32 %2, 63
  %i.i = zext nneg i32 %i.h to i64
  %notmask.i.i = shl nsw i64 -1, %i.i
  %i.j = xor i64 %notmask.i.i, -1
  %i.k = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.l
  %i.m = xor i64 %notmask.i.i.i, -1
  %i.n = sub nsw i32 64, %i.k
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl i64 %i.m, %i.o
  %i.q = and i64 %i.p, %i.j
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20DistinctFromFunctionINS3_10VectorExecEEESB_bNS0_15ConstantCheckerIJNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEESH_EEEJSH_SH_EEEE7iterateIJNS3_12VectorReaderISH_EESN_EEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS4_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_EUlST_E_EEvPKmiibST_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.g, i64 noundef %i.q)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20DistinctFromFunctionINS4_10VectorExecEEESC_bNS0_15ConstantCheckerIJNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEESI_EEEJSI_SI_EEEE7iterateIJNS4_12VectorReaderISI_EESO_EEEvRNSL_12ApplyContextEDpRT_EUlT_E2_ZNS5_22applyToSelectedNoThrowISV_EEvRKNS0_17SelectivityVectorESU_EUlSU_E_EEvSZ_SU_T0_EUlSU_E_EEvPKmiibSU_EUlimE_ZNS3_IS12_EEvS14_iibSU_EUliE_EEviiSU_S11_.exit

bb.d:                                             ; preds = %bb.b
  %.not32.i = icmp eq i32 %1, %i.d
  br i1 %.not32.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = sdiv i32 %1, 64
  %i.s = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  %notmask.i.i35.i = shl nsw i64 -1, %i.t
  %i.u = xor i64 %notmask.i.i35.i, -1
  %i.v = sub nsw i32 64, %i.s
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl i64 %i.u, %i.w
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20DistinctFromFunctionINS3_10VectorExecEEESB_bNS0_15ConstantCheckerIJNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEESH_EEEJSH_SH_EEEE7iterateIJNS3_12VectorReaderISH_EESN_EEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS4_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_EUlST_E_EEvPKmiibST_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.r, i64 noundef %i.x)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = add nsw i32 %i.d, 64                     ; 2 uses
  %.not3337.i = icmp sgt i32 %i.y, %i.e
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.not34.i = icmp eq i32 %2, %i.e
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20DistinctFromFunctionINS4_10VectorExecEEESC_bNS0_15ConstantCheckerIJNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEESI_EEEJSI_SI_EEEE7iterateIJNS4_12VectorReaderISI_EESO_EEEvRNSL_12ApplyContextEDpRT_EUlT_E2_ZNS5_22applyToSelectedNoThrowISV_EEvRKNS0_17SelectivityVectorESU_EUlSU_E_EEvSZ_SU_T0_EUlSU_E_EEvPKmiibSU_EUlimE_ZNS3_IS12_EEvS14_iibSU_EUliE_EEviiSU_S11_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.z = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.d, %bb.f ]
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20DistinctFromFunctionINS3_10VectorExecEEESB_bNS0_15ConstantCheckerIJNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEESH_EEEJSH_SH_EEEE7iterateIJNS3_12VectorReaderISH_EESN_EEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS4_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !15845

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i36.i = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask.i36.i, -1
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20DistinctFromFunctionINS3_10VectorExecEEESB_bNS0_15ConstantCheckerIJNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEESH_EEEJSH_SH_EEEE7iterateIJNS3_12VectorReaderISH_EESN_EEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS4_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_EUlST_E_EEvPKmiibST_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.ac, i64 noundef %i.af)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20DistinctFromFunctionINS4_10VectorExecEEESC_bNS0_15ConstantCheckerIJNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEESI_EEEJSI_SI_EEEE7iterateIJNS4_12VectorReaderISI_EESO_EEEvRNSL_12ApplyContextEDpRT_EUlT_E2_ZNS5_22applyToSelectedNoThrowISV_EEvRKNS0_17SelectivityVectorESU_EUlSU_E_EEvSZ_SU_T0_EUlSU_E_EEvPKmiibSU_EUlimE_ZNS3_IS12_EEvS14_iibSU_EUliE_EEviiSU_S11_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20DistinctFromFunctionINS4_10VectorExecEEESC_bNS0_15ConstantCheckerIJNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEESI_EEEJSI_SI_EEEE7iterateIJNS4_12VectorReaderISI_EESO_EEEvRNSL_12ApplyContextEDpRT_EUlT_E2_ZNS5_22applyToSelectedNoThrowISV_EEvRKNS0_17SelectivityVectorESU_EUlSU_E_EEvSZ_SU_T0_EUlSU_E_EEvPKmiibSU_EUlimE_ZNS3_IS12_EEvS14_iibSU_EUliE_EEviiSU_S11_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20DistinctFromFunctionINS3_10VectorExecEEESB_bNS0_15ConstantCheckerIJNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEESH_EEEJSH_SH_EEEE7iterateIJNS3_12VectorReaderISH_EESN_EEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS4_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_EUlST_E_EEvPKmiibST_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.facebook::velox::Status", align 8 ; 7 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !15846, !range !167, !noundef !168
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15848
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !228
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit123, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20DistinctFromFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEESF_EEEJSF_SF_EEEE7iterateIJNS1_12VectorReaderISF_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit
  %.0130 = phi i64 [ %i.k, %.preheader ], [ %i.ia, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20DistinctFromFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEESF_EEEJSF_SF_EEEE7iterateIJNS1_12VectorReaderISF_EESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit ] ; 3 uses
  %i.o = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0130, i1 true)
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = or disjoint i32 %i.m, %i.p               ; 15 uses
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !15774 ; 2 uses
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !15832, !nonnull !168, !align !289 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !15833, !nonnull !168, !align !289
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !15835, !nonnull !168, !align !289 ; 2 uses
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !3290, !nonnull !168, !align !289 ; 10 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !15836 ; 4 uses
  %.not.i.i38 = icmp eq ptr %i.z, null
  br i1 %.not.i.i38, label %.noexc13, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 58
  %i.ab = load i8, ptr %i.aa, align 2, !tbaa !1168, !range !167, !noundef !168
  %i.ac = trunc nuw i8 %i.ab to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 57
  %i.ae = load i8, ptr %i.ad, align 1, !range !167
  %i.af = trunc nuw i8 %i.ae to i1
  %or.cond.i.i = select i1 %i.ac, i1 true, i1 %i.af
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ag = zext i32 %i.q to i64                    ; 2 uses
  %i.ah = lshr i64 %i.ag, 6
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ah
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !228
  %i.ak = and i64 %i.ag, 63
  %i.al = shl nuw i64 1, %i.ak
  %i.am = and i64 %i.aj, %i.al
  br label %.noexc12

bb.e:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 59
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !1169, !range !167, !noundef !168
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aq = load i64, ptr %i.z, align 8, !tbaa !228
  %i.ar = and i64 %i.aq, 1
  br label %.noexc12

bb.g:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1171
  %i.au = sext i32 %i.q to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !3
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  %i.ay = lshr i64 %i.ax, 6
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !228
  %i.bb = and i64 %i.ax, 63
  %i.bc = shl nuw i64 1, %i.bb
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15BetweenFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEESC_SC_EEEJSC_SC_SC_EEEE6unpackILi2ELb1EJNS1_12VectorReaderISC_EESI_EEEvRNSF_12ApplyContextERSt6vectorISt8optionalINS1_18LocalDecodedVectorEESaISO_EERKSL_ISt10shared_ptrINS0_10BaseVectorEESaISU_EEDpRT1_:bb.a
bb.k:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.bg = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !3376 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_Head_baseILm0ESt10unique_ptrIN8facebook5velox4exec12VectorReaderInEESt14default_deleteIS5_EELb0EED2Ev.exit.i.i, label %_ZNKSt14default_deleteIN8facebook5velox4exec12VectorReaderInEEEclEPS4_.exit.i.i.i.i

_ZNKSt14default_deleteIN8facebook5velox4exec12VectorReaderInEEEclEPS4_.exit.i.i.i.i: ; preds = %bb.k
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef 8) #30
  br label %_ZNSt10_Head_baseILm0ESt10unique_ptrIN8facebook5velox4exec12VectorReaderInEESt14default_deleteIS5_EELb0EED2Ev.exit.i.i

_ZNSt10_Head_baseILm0ESt10unique_ptrIN8facebook5velox4exec12VectorReaderInEESt14default_deleteIS5_EELb0EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN8facebook5velox4exec12VectorReaderInEEEclEPS4_.exit.i.i.i.i, %bb.k
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !3343 ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i1.i.i, label %_ZNSt11_Tuple_implILm0EJSt10unique_ptrIN8facebook5velox4exec12VectorReaderInEESt14default_deleteIS5_EES0_INS4_IaEES6_IS9_EEEED2Ev.exit.i, label %_ZNKSt14default_deleteIN8facebook5velox4exec12VectorReaderIaEEEclEPS4_.exit.i.i.i.i

_ZNKSt14default_deleteIN8facebook5velox4exec12VectorReaderIaEEEclEPS4_.exit.i.i.i.i: ; preds = %_ZNSt10_Head_baseILm0ESt10unique_ptrIN8facebook5velox4exec12VectorReaderInEESt14default_deleteIS5_EELb0EED2Ev.exit.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef 8) #30
  br label %_ZNSt11_Tuple_implILm0EJSt10unique_ptrIN8facebook5velox4exec12VectorReaderInEESt14default_deleteIS5_EES0_INS4_IaEES6_IS9_EEEED2Ev.exit.i

_ZNSt11_Tuple_implILm0EJSt10unique_ptrIN8facebook5velox4exec12VectorReaderInEESt14default_deleteIS5_EES0_INS4_IaEES6_IS9_EEEED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN8facebook5velox4exec12VectorReaderIaEEEclEPS4_.exit.i.i.i.i, %_ZNSt10_Head_baseILm0ESt10unique_ptrIN8facebook5velox4exec12VectorReaderInEESt14default_deleteIS5_EELb0EED2Ev.exit.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !29672 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !29674 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.bk, %i.bm
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN8facebook5velox13DecodedVectorES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt11_Tuple_implILm0EJSt10unique_ptrIN8facebook5velox4exec12VectorReaderInEESt14default_deleteIS5_EES0_INS4_IaEES6_IS9_EEEED2Ev.exit.i, %_ZSt8_DestroyIN8facebook5velox13DecodedVectorEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cb, %_ZSt8_DestroyIN8facebook5velox13DecodedVectorEEvPT_.exit.i.i.i.i ], [ %i.bk, %_ZNSt11_Tuple_implILm0EJSt10unique_ptrIN8facebook5velox4exec12VectorReaderInEESt14default_deleteIS5_EES0_INS4_IaEES6_IS9_EEEED2Ev.exit.i ] ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 96
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !639 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 112
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !640
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #30
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i:      ; preds = %bb.l, %.lr.ph.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 72
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !641 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN8facebook5velox13DecodedVectorEEvPT_.exit.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 88
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !644
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.bv to i64
  %i.ca = sub i64 %i.by, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef %i.ca) #30
  br label %_ZSt8_DestroyIN8facebook5velox13DecodedVectorEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN8facebook5velox13DecodedVectorEEvPT_.exit.i.i.i.i: ; preds = %bb.m, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 120 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.cb, %i.bm
  br i1 %.not.i.i.i1.i, label %_ZSt8_DestroyIPN8facebook5velox13DecodedVectorES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !29675

_ZSt8_DestroyIPN8facebook5velox13DecodedVectorES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN8facebook5velox13DecodedVectorEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.bj, align 8, !tbaa !29672
  br label %_ZSt8_DestroyIPN8facebook5velox13DecodedVectorES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN8facebook5velox13DecodedVectorES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN8facebook5velox13DecodedVectorES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt11_Tuple_implILm0EJSt10unique_ptrIN8facebook5velox4exec12VectorReaderInEESt14default_deleteIS5_EES0_INS4_IaEES6_IS9_EEEED2Ev.exit.i
  %i.cc = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN8facebook5velox13DecodedVectorES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.bk, %_ZNSt11_Tuple_implILm0EJSt10unique_ptrIN8facebook5velox4exec12VectorReaderInEESt14default_deleteIS5_EES0_INS4_IaEES6_IS9_EEEED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i2.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i1.i2.i, label %_ZN8facebook5velox4exec12VectorReaderINS0_3RowIJnaEEEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPN8facebook5velox13DecodedVectorES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !29676
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = ptrtoint ptr %i.cc to i64
  %i.ch = sub i64 %i.cf, %i.cg
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %i.ch) #30
  br label %_ZN8facebook5velox4exec12VectorReaderINS0_3RowIJnaEEEED2Ev.exit

_ZN8facebook5velox4exec12VectorReaderINS0_3RowIJnaEEEED2Ev.exit: ; preds = %_ZSt8_DestroyIPN8facebook5velox13DecodedVectorES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  ret void

bb.o:                                             ; preds = %.noexc, %_ZNRSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEE5valueEv.exit
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8facebook5velox4exec12VectorReaderINS0_3RowIJnaEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15BetweenFunctionINS3_10VectorExecEEESB_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEESG_SG_EEEJSG_SG_SG_EEEE7iterateIJNS3_12VectorReaderISG_EESM_SM_EEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKS1_SS_EUlSS_E_EEvSW_SS_T0_EUlSS_E_EEvSS_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef byval(%class.anon.11996) align 8 %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.facebook::velox::exec::RowView.11997", align 8 ; 6 uses
  %3 = alloca %"class.facebook::velox::exec::RowView.11997", align 8 ; 6 uses
  %4 = alloca %"class.facebook::velox::exec::RowView.11997", align 8 ; 7 uses
  %5 = alloca %"class.facebook::velox::Status", align 8 ; 6 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %7 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !672, !range !167, !noundef !168
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i:     ; preds = %bb.a
  %.0.in.pre.i = load i8, ptr %i.a, align 4, !tbaa !142, !range !167
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !879
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !880  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !881
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !639    ; 2 uses
  %.not.i.i22 = icmp sgt i32 %i.i, 0
  br i1 %.not.i.i22, label %bb.e, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.i, 2147483584                 ; 3 uses
  %i.o = zext nneg i32 %i.n to i64
  %.not37.i.i.not.i84.not = icmp eq i32 %i.n, 0
  br i1 %.not37.i.i.not.i84.not, label %.critedge.i.i.i, label %.lr.ph86

bb.f:                                             ; preds = %.lr.ph86
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i85, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.o
  br i1 %.not37.i.i.not.i, label %.lr.ph86, label %.critedge.i.i.i, !llvm.loop !882

.lr.ph86:                                         ; preds = %bb.e, %bb.f
  %indvars.iv.i85 = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i85, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !228
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, !llvm.loop !882

.critedge.i.i.i:                                  ; preds = %bb.f, %bb.e
  %.not38.i.i.i = icmp eq i32 %i.i, %i.n
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i
  %i.t = lshr i32 %i.i, 6
  %i.u = and i32 %i.i, 63
  %i.v = zext nneg i32 %i.u to i64
  %notmask.i40.i.i.i = shl nsw i64 -1, %i.v
  %i.w = zext nneg i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !228
  %.demorgan.i = or i64 %i.y, %notmask.i40.i.i.i
  %i.z = icmp eq i64 %.demorgan.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i:   ; preds = %.lr.ph86, %bb.g, %.critedge.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph86 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit: ; preds = %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i
  %.0.in.i = phi i8 [ %.0.in.pre.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i ]
  %.0.i = trunc nuw i8 %.0.in.i to i1
  br i1 %.0.i, label %bb.h, label %bb.am

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !880 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !879 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %.lr.ph, label %.loopexit58

.lr.ph:                                           ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2.0..sroa_idx.i9 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0..sroa_idx.i14 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = sext i32 %i.ag to i64
  %.pre74 = load ptr, ptr %1, align 8, !tbaa !29721
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15BetweenFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEESE_SE_EEEJSE_SE_SE_EEEE7iterateIJNS1_12VectorReaderISE_EESK_SK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit
  %8 = phi ptr [ %.pre74, %.lr.ph ], [ %9, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15BetweenFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEESE_SE_EEEJSE_SE_SE_EEEE7iterateIJNS1_12VectorReaderISE_EESK_SK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit ] ; 7 uses
  %indvars.iv = phi i64 [ %i.aj, %.lr.ph ], [ %indvars.iv.next, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15BetweenFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEESE_SE_EEEJSE_SE_SE_EEEE7iterateIJNS1_12VectorReaderISE_EESK_SK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit ] ; 9 uses
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !29719 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !29722, !nonnull !168, !align !289 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !29726, !nonnull !168, !align !289 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !29727, !nonnull !168, !align !289 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !29728
  %i.ar = load ptr, ptr %i.am, align 8, !tbaa !29731, !nonnull !168, !align !289 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 58
  %i.at = load i8, ptr %i.as, align 2, !tbaa !1168, !range !167, !noundef !168
  %i.au = trunc nuw i8 %i.at to i1
  %i.av = trunc nsw i64 %indvars.iv to i32        ; 5 uses
  br i1 %i.au, label %.noexc5, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 59
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !1169, !range !167, !noundef !168
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !1170
  br label %.noexc5

bb.l:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1171
  %i.bd = shl nsw i64 %indvars.iv, 2
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !3
  br label %.noexc5

.noexc5:                                          ; preds = %bb.l, %bb.k, %bb.i
  %.0.i.i = phi i32 [ %i.bf, %bb.l ], [ %i.ba, %bb.k ], [ %i.av, %bb.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  store ptr %i.bg, ptr %4, align 8, !noalias !29728
  store i32 %.0.i.i, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !29728
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !29732
  %i.bh = load ptr, ptr %i.ao, align 8, !tbaa !29731, !nonnull !168, !align !289 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 58
  %i.bj = load i8, ptr %i.bi, align 2, !tbaa !1168, !range !167, !noundef !168
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %.noexc10, label %bb.m

bb.m:                                             ; preds = %.noexc5
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 59
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !1169, !range !167, !noundef !168
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !1170
  br label %.noexc10

bb.o:                                             ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1171
  %i.bs = shl nsw i64 %indvars.iv, 2
  %i.bt = getelementptr inbounds i8, ptr %i.br, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3
  br label %.noexc10

.noexc10:                                         ; preds = %bb.o, %bb.n, %.noexc5
  %.0.i.i24 = phi i32 [ %i.bu, %bb.o ], [ %i.bp, %bb.n ], [ %i.av, %.noexc5 ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  store ptr %i.bv, ptr %3, align 8, !noalias !29732
  store i32 %.0.i.i24, ptr %.sroa.2.0..sroa_idx.i9, align 8, !noalias !29732
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !29735
  %i.bw = load ptr, ptr %i.aq, align 8, !tbaa !29731, !nonnull !168, !align !289 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 58
  %i.by = load i8, ptr %i.bx, align 2, !tbaa !1168, !range !167, !noundef !168
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %.noexc15, label %bb.p

bb.p:                                             ; preds = %.noexc10
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 59
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !1169, !range !167, !noundef !168
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 64
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !1170
  br label %.noexc15

bb.r:                                             ; preds = %bb.p
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1171
  %i.ch = shl nsw i64 %indvars.iv, 2
  %i.ci = getelementptr inbounds i8, ptr %i.cg, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3
  br label %.noexc15

.noexc15:                                         ; preds = %bb.r, %bb.q, %.noexc10
  %.0.i.i29 = phi i32 [ %i.cj, %bb.r ], [ %i.ce, %bb.q ], [ %i.av, %.noexc10 ]
  %i.ck = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  store ptr %i.ck, ptr %2, align 8, !noalias !29735
  store i32 %.0.i.i29, ptr %.sroa.2.0..sroa_idx.i14, align 8, !noalias !29735
  %i.cl = invoke i64 @_ZNK8facebook5velox4exec7RowViewILb1EJnaEE11compareImplILm0EEESt8optionalIiERKS3_NS0_12CompareFlagsE(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %3, i64 4294967553)
          to label %.noexc34 unwind label %.body  ; 2 uses

.noexc34:                                         ; preds = %.noexc15
  %i.cm = and i64 %i.cl, 4294967296
  %.not.i.i33 = icmp eq i64 %i.cm, 0
  br i1 %.not.i.i33, label %.invoke, label %.noexc20

.invoke:                                          ; preds = %.noexc39, %.noexc34
  invoke void @_ZSt27__throw_bad_optional_accessv() #31
          to label %.cont unwind label %.body

.cont:                                            ; preds = %.invoke
  unreachable

.noexc20:                                         ; preds = %.noexc34
  %i.cn = and i64 %i.cl, 2147483648
  %i.co = icmp eq i64 %i.cn, 0
  br i1 %i.co, label %bb.s, label %.thread

.thread:                                          ; preds = %.noexc20
  store ptr null, ptr %5, align 8, !tbaa !873, !alias.scope !29738
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !29735
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !29732
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !29728
  %i.cp = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !29741, !nonnull !168, !align !289
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !29742, !nonnull !168, !align !289
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !858
  %i.cu = lshr i64 %indvars.iv, 3
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cu ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !26
  br label %bb.v

bb.s:                                             ; preds = %.noexc20
  %i.cx = invoke i64 @_ZNK8facebook5velox4exec7RowViewILb1EJnaEE11compareImplILm0EEESt8optionalIiERKS3_NS0_12CompareFlagsE(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %2, i64 4294967553)
          to label %.noexc39 unwind label %.body  ; 2 uses

.noexc39:                                         ; preds = %bb.s
  %i.cy = and i64 %i.cx, 4294967296
  %.not.i.i36 = icmp eq i64 %i.cy, 0
  br i1 %.not.i.i36, label %.invoke, label %bb.t

bb.t:                                             ; preds = %.noexc39
  %.sroa.0.0.extract.trunc.i.i37 = trunc i64 %i.cx to i32
  %i.cz = icmp slt i32 %.sroa.0.0.extract.trunc.i.i37, 1
  store ptr null, ptr %5, align 8, !tbaa !873, !alias.scope !29744
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !29735
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !29732
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !29728
  %i.da = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !29741, !nonnull !168, !align !289
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !29742, !nonnull !168, !align !289
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !858
  %i.df = lshr i64 %indvars.iv, 3
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.df ; 3 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !26  ; 2 uses
  br i1 %i.cz, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.di = trunc i64 %indvars.iv to i8
  %i.dj = and i8 %i.di, 7
  %i.dk = shl nuw i8 1, %i.dj
  %i.dl = or i8 %i.dh, %i.dk
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15BetweenFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEESC_SC_EEEJSC_SC_SC_EEEE7iterateIJNS1_12VectorReaderISC_EESI_SI_EEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit

bb.v:                                             ; preds = %.thread, %bb.t
  %i.dm = phi i8 [ %i.cw, %.thread ], [ %i.dh, %bb.t ]
  %i.dn = phi ptr [ %i.cv, %.thread ], [ %i.dg, %bb.t ]
  %i.do = and i64 %indvars.iv, 7
  %i.dp = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !26
  %i.dr = and i8 %i.dq, %i.dm
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15BetweenFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEESC_SC_EEEJSC_SC_SC_EEEE7iterateIJNS1_12VectorReaderISC_EESI_SI_EEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15BetweenFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEESC_SC_EEEJSC_SC_SC_EEEE7iterateIJNS1_12VectorReaderISC_EESI_SI_EEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit: ; preds = %bb.v, %bb.u
  %i.ds = phi ptr [ %i.dn, %bb.v ], [ %i.dg, %bb.u ]
  %.sink.i = phi i8 [ %i.dr, %bb.v ], [ %i.dl, %bb.u ]
  store i8 %.sink.i, ptr %i.ds, align 1, !tbaa !26
  %i.dt = load ptr, ptr %5, align 8, !tbaa !873
  %.not.i48 = icmp eq ptr %i.dt, null
  %.pre = load ptr, ptr %1, align 8, !tbaa !29721
  br i1 %.not.i48, label %_ZN8facebook5velox6StatusD2Ev.exit49, label %bb.w, !prof !319

bb.w:                                             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15BetweenFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEESC_SC_EEEJSC_SC_SC_EEEE7iterateIJNS1_12VectorReaderISC_EESI_SI_EEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %_ZN8facebook5velox6StatusD2Ev.exit49

_ZN8facebook5velox6StatusD2Ev.exit49:             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15BetweenFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEESC_SC_EEEJSC_SC_SC_EEEE7iterateIJNS1_12VectorReaderISC_EESI_SI_EEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15BetweenFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEESE_SE_EEEJSE_SE_SE_EEEE7iterateIJNS1_12VectorReaderISE_EESK_SK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit

.body:                                            ; preds = %.invoke, %.noexc15, %bb.s
  %i.du = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.dv = extractvalue { ptr, i32 } %i.du, 0      ; 2 uses
  %i.dw = extractvalue { ptr, i32 } %i.du, 1      ; 2 uses
  %i.dx = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #28
  %i.dy = icmp eq i32 %i.dw, %i.dx
  br i1 %i.dy, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.body
  %i.dz = call ptr @__cxa_begin_catch(ptr %i.dv) #28
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !2295 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 144
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !7  ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 152
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !16
  %i.eg = icmp eq i64 %i.ef, 4
  br i1 %i.eg, label %.lr.ph.i.i.i.preheader.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader.i.preheader:               ; preds = %bb.x
  %i.eh = load i8, ptr %i.ed, align 1, !tbaa !26
  %or.cond.not.i.i.i = icmp eq i8 %i.eh, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.preheader.i.preheader
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 1
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !26
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.ej, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ed, i64 2
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !26
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.el, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.em = getelementptr inbounds nuw i8, ptr %i.ed, i64 3
  %i.en = load i8, ptr %i.em, align 1, !tbaa !26
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.en, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %7) #28
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.ak, i32 noundef %i.av, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.af unwind label %bb.ah

.loopexit:                                        ; preds = %bb.x, %.lr.ph.i.i.i.preheader.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #31
          to label %bb.al unwind label %bb.ae

bb.y:                                             ; preds = %.body
  %i.eo = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #28
  %i.ep = icmp eq i32 %i.dw, %i.eo
  br i1 %i.ep, label %bb.z, label %.loopexit59

bb.z:                                             ; preds = %bb.y
  %i.eq = call ptr @__cxa_begin_catch(ptr %i.dv) #28 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %6) #28
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.ak, i32 noundef %i.av, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.er = load ptr, ptr %6, align 8, !tbaa !495
  %.not.i50 = icmp eq ptr %i.er, null
  br i1 %.not.i50, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15BetweenFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEESE_SE_EEEJSE_SE_SE_EEEE7iterateIJNS1_12VectorReaderISE_EESK_SK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit

bb.ac:                                            ; preds = %bb.z
  %i.es = landingpad { ptr, i32 }
          cleanup
  %i.et = load ptr, ptr %6, align 8, !tbaa !495
  %.not.i51 = icmp eq ptr %i.et, null
  br i1 %.not.i51, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52: ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  invoke void @__cxa_end_catch()
          to label %.loopexit59 unwind label %bb.ak

bb.ae:                                            ; preds = %.loopexit
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.af:                                            ; preds = %tailrecurse.i.i.i.i.3
  %i.ev = load ptr, ptr %7, align 8, !tbaa !495
  %.not.i53 = icmp eq ptr %i.ev, null
  br i1 %.not.i53, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit54, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit54

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit54: ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15BetweenFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEESE_SE_EEEJSE_SE_SE_EEEE7iterateIJNS1_12VectorReaderISE_EESK_SK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit

bb.ah:                                            ; preds = %tailrecurse.i.i.i.i.3
  %i.ew = landingpad { ptr, i32 }
          cleanup
  %i.ex = load ptr, ptr %7, align 8, !tbaa !495
  %.not.i55 = icmp eq ptr %i.ex, null
  br i1 %.not.i55, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit56, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit56

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit56: ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit56, %bb.ae
  %.pn.i = phi { ptr, i32 } [ %i.ew, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit56 ], [ %i.eu, %bb.ae ]
  invoke void @__cxa_end_catch()
          to label %.loopexit59 unwind label %bb.ak

.loopexit59:                                      ; preds = %bb.y, %bb.aj, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52
  %.merged.i = phi { ptr, i32 } [ %i.es, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52 ], [ %.pn.i, %bb.aj ], [ %i.du, %bb.y ]
  resume { ptr, i32 } %.merged.i

bb.ak:                                            ; preds = %bb.aj, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52
  %i.ey = landingpad { ptr, i32 }
          catch ptr null
  %i.ez = extractvalue { ptr, i32 } %i.ey, 0
  call void @__clang_call_terminate(ptr %i.ez) #32
  unreachable

bb.al:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15BetweenFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEESE_SE_EEEJSE_SE_SE_EEEE7iterateIJNS1_12VectorReaderISE_EESK_SK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit49, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit54
  %9 = phi ptr [ %.pre, %_ZN8facebook5velox6StatusD2Ev.exit49 ], [ %8, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit ], [ %8, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit54 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit58, label %bb.i, !llvm.loop !29746

bb.am:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.fa = load ptr, ptr %0, align 8, !tbaa !639
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !879
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !880
  tail call void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15BetweenFunctionINS3_10VectorExecEEESB_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEESG_SG_EEEJSG_SG_SG_EEEE7iterateIJNS3_12VectorReaderISG_EESM_SM_EEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_(ptr noundef %i.fa, i32 noundef %i.fc, i32 noundef %i.fe, i1 noundef zeroext true, ptr noundef nonnull byval(%class.anon.11996) align 8 %1)
  br label %.loopexit58

.loopexit58:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15BetweenFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEESE_SE_EEEJSE_SE_SE_EEEE7iterateIJNS1_12VectorReaderISE_EESK_SK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit, %bb.h, %bb.am
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr i64 @_ZNK8facebook5velox4exec7RowViewILb1EJnaEE11compareImplILm0EEESt8optionalIiERKS3_NS0_12CompareFlagsE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, i64 %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !29747
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3376
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29750, !nonnull !168, !align !289 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2247 ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !29747
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !3376
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !29750, !nonnull !168, !align !289 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2247
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !29752 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 58
  %i.p = load i8, ptr %i.o, align 2, !tbaa !1168, !range !167, !noundef !168
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZNK8facebook5velox4exec12VectorReaderInE5indexEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 59
  %i.s = load i8, ptr %i.r, align 1, !tbaa !1169, !range !167, !noundef !168
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.v = load i32, ptr %i.u, align 8, !tbaa !1170
  br label %_ZNK8facebook5velox4exec12VectorReaderInE5indexEi.exit

bb.d:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1171
  %i.y = sext i32 %i.n to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3
  br label %_ZNK8facebook5velox4exec12VectorReaderInE5indexEi.exit

_ZNK8facebook5velox4exec12VectorReaderInE5indexEi.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.0.i.i = phi i32 [ %i.aa, %bb.d ], [ %i.v, %bb.c ], [ %i.n, %bb.a ]
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !29752 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 58
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !1168, !range !167, !noundef !168
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %_ZNK8facebook5velox4exec12VectorReaderInE5indexEi.exit9, label %bb.e

bb.e:                                             ; preds = %_ZNK8facebook5velox4exec12VectorReaderInE5indexEi.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 59
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !1169, !range !167, !noundef !168
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !1170
  br label %_ZNK8facebook5velox4exec12VectorReaderInE5indexEi.exit9

bb.g:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1171
  %i.an = sext i32 %i.ac to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !3
  br label %_ZNK8facebook5velox4exec12VectorReaderInE5indexEi.exit9

_ZNK8facebook5velox4exec12VectorReaderInE5indexEi.exit9: ; preds = %_ZNK8facebook5velox4exec12VectorReaderInE5indexEi.exit, %bb.f, %bb.g
  %.0.i.i8 = phi i32 [ %i.ap, %bb.g ], [ %i.ak, %bb.f ], [ %i.ac, %_ZNK8facebook5velox4exec12VectorReaderInE5indexEi.exit ]
  %i.aq = load ptr, ptr %i.f, align 8, !tbaa !157
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 80
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call i64 %i.as(ptr noundef nonnull align 8 dereferenceable(94) %i.f, ptr noundef %i.l, i32 noundef %.0.i.i, i32 noundef %.0.i.i8, i64 %2) ; 4 uses
  %i.au = and i64 %i.at, 4294967296
  %.not18 = icmp eq i64 %i.au, 0
  br i1 %.not18, label %bb.p, label %_ZNRSt8optionalIiE5valueEv.exit

_ZNRSt8optionalIiE5valueEv.exit:                  ; preds = %_ZNK8facebook5velox4exec12VectorReaderInE5indexEi.exit9
  %i.av = and i64 %i.at, 4294967295
  %.not = icmp eq i64 %i.av, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNRSt8optionalIiE5valueEv.exit
  %.sroa.4.0.extract.shift16 = and i64 %i.at, -1099511627776
  br label %bb.p

bb.i:                                             ; preds = %_ZNRSt8optionalIiE5valueEv.exit
  %i.aw = load ptr, ptr %0, align 8, !tbaa !29747
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !3343
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !16739, !nonnull !168, !align !289 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !2247 ; 2 uses
  %i.bb = load ptr, ptr %1, align 8, !tbaa !29747
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !3343
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !16739, !nonnull !168, !align !289 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !2247
  %i.bg = load i32, ptr %i.m, align 8, !tbaa !29752 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 58
  %i.bi = load i8, ptr %i.bh, align 2, !tbaa !1168, !range !167, !noundef !168
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %_ZNK8facebook5velox4exec12VectorReaderIaE5indexEi.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ay, i64 59
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !1169, !range !167, !noundef !168
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !1170
  br label %_ZNK8facebook5velox4exec12VectorReaderIaE5indexEi.exit.i

bb.l:                                             ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1171
  %i.br = sext i32 %i.bg to i64
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !3
  br label %_ZNK8facebook5velox4exec12VectorReaderIaE5indexEi.exit.i

_ZNK8facebook5velox4exec12VectorReaderIaE5indexEi.exit.i: ; preds = %bb.l, %bb.k, %bb.i
  %.0.i.i.i = phi i32 [ %i.bt, %bb.l ], [ %i.bo, %bb.k ], [ %i.bg, %bb.i ]
  %i.bu = load i32, ptr %i.ab, align 8, !tbaa !29752 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bd, i64 58
  %i.bw = load i8, ptr %i.bv, align 2, !tbaa !1168, !range !167, !noundef !168
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %_ZNK8facebook5velox4exec7RowViewILb1EJnaEE11compareImplILm1EEESt8optionalIiERKS3_NS0_12CompareFlagsE.exit, label %bb.m

bb.m:                                             ; preds = %_ZNK8facebook5velox4exec12VectorReaderIaE5indexEi.exit.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bd, i64 59
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !1169, !range !167, !noundef !168
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !1170
  br label %_ZNK8facebook5velox4exec7RowViewILb1EJnaEE11compareImplILm1EEESt8optionalIiERKS3_NS0_12CompareFlagsE.exit

bb.o:                                             ; preds = %bb.m
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !1171
  %i.cf = sext i32 %i.bu to i64
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !3
  br label %_ZNK8facebook5velox4exec7RowViewILb1EJnaEE11compareImplILm1EEESt8optionalIiERKS3_NS0_12CompareFlagsE.exit

_ZNK8facebook5velox4exec7RowViewILb1EJnaEE11compareImplILm1EEESt8optionalIiERKS3_NS0_12CompareFlagsE.exit: ; preds = %_ZNK8facebook5velox4exec12VectorReaderIaE5indexEi.exit.i, %bb.n, %bb.o
  %.0.i.i8.i = phi i32 [ %i.ch, %bb.o ], [ %i.cc, %bb.n ], [ %i.bu, %_ZNK8facebook5velox4exec12VectorReaderIaE5indexEi.exit.i ]
  %i.ci = load ptr, ptr %i.ba, align 8, !tbaa !157
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 80
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = tail call i64 %i.ck(ptr noundef nonnull align 8 dereferenceable(94) %i.ba, ptr noundef %i.bf, i32 noundef %.0.i.i.i, i32 noundef %.0.i.i8.i, i64 %2), !inline_history !29753 ; 3 uses
  %i.cm = and i64 %i.cl, 4294967296
  %.not13.i = icmp eq i64 %i.cm, 0
  %i.cn = and i64 %i.cl, 4294967295
  %.not.i = icmp eq i64 %i.cn, 0
  %spec.select.i = select i1 %.not.i, i64 4294967296, i64 %i.cl
  %.sroa.4.sroa.0.0.i = select i1 %.not13.i, i64 0, i64 %spec.select.i ; 2 uses
  %.sroa.4.0.extract.shift = and i64 %.sroa.4.sroa.0.0.i, -1099511627776
  br label %bb.p

bb.p:                                             ; preds = %_ZNK8facebook5velox4exec12VectorReaderInE5indexEi.exit9, %_ZNK8facebook5velox4exec7RowViewILb1EJnaEE11compareImplILm1EEESt8optionalIiERKS3_NS0_12CompareFlagsE.exit, %bb.h
  %.sroa.3.0 = phi i64 [ %.sroa.4.sroa.0.0.i, %_ZNK8facebook5velox4exec7RowViewILb1EJnaEE11compareImplILm1EEESt8optionalIiERKS3_NS0_12CompareFlagsE.exit ], [ %i.at, %bb.h ], [ 0, %_ZNK8facebook5velox4exec12VectorReaderInE5indexEi.exit9 ]
  %.sroa.4.sroa.0.0 = phi i64 [ %.sroa.4.0.extract.shift, %_ZNK8facebook5velox4exec7RowViewILb1EJnaEE11compareImplILm1EEESt8optionalIiERKS3_NS0_12CompareFlagsE.exit ], [ %.sroa.4.0.extract.shift16, %bb.h ], [ 0, %_ZNK8facebook5velox4exec12VectorReaderInE5indexEi.exit9 ]
  %.sroa.3.0.insert.insert = and i64 %.sroa.3.0, 1099511627775
  %.sroa.012.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.insert, %.sroa.4.sroa.0.0
  ret i64 %.sroa.012.0.insert.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15BetweenFunctionINS3_10VectorExecEEESB_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEESG_SG_EEEJSG_SG_SG_EEEE7iterateIJNS3_12VectorReaderISG_EESM_SM_EEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef byval(%class.anon.11996) align 8 %4) local_unnamed_addr #0 comdat {
bb.a:
  %5 = alloca %class.anon.12001, align 8          ; 6 uses
  %6 = alloca %class.anon.12000, align 8          ; 8 uses
  %i.a = zext i1 %3 to i8                         ; 2 uses
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
end_hunk_1
