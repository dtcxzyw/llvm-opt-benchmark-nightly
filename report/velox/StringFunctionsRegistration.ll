inline.NumInlined: 89673
inline.NumDeleted: 14428
loop-unroll.NumCompletelyUnrolled: 1689
loop-unroll.NumRuntimeUnrolled: 209
loop-unroll.NumUnrolled: 1898
begin_hunk_0_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_20ConstantVectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi:bb.a
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %13) #24
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.fy, i32 noundef %i.fx, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.br unwind label %bb.bt

bb.br:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_20ConstantVectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSJ_SN_ENKUlSN_E0_clIiEEDaSN_.exit
  %i.li = load ptr, ptr %13, align 8, !tbaa !607
  %.not.i147 = icmp eq ptr %i.li, null
  br i1 %.not.i147, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit148, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit148

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit148: ; preds = %bb.br, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_20ConstantVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit

bb.bt:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_20ConstantVectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSJ_SN_ENKUlSN_E0_clIiEEDaSN_.exit
  %i.lj = landingpad { ptr, i32 }
          cleanup
  %i.lk = load ptr, ptr %13, align 8, !tbaa !607
  %.not.i149 = icmp eq ptr %i.lk, null
  br i1 %.not.i149, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit150, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit150

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit150: ; preds = %bb.bt, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %bb.bv

bb.bv:                                            ; preds = %.loopexit173, %.loopexit.split-lp174, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit150
  %.pn16.i = phi { ptr, i32 } [ %i.lj, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit150 ], [ %lpad.loopexit175, %.loopexit173 ], [ %lpad.loopexit.split-lp176, %.loopexit.split-lp174 ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bq
  %i.ll = landingpad { ptr, i32 }
          catch ptr null
  %i.lm = extractvalue { ptr, i32 } %i.ll, 0
  call void @__clang_call_terminate(ptr %i.lm) #51
  unreachable

bb.bx:                                            ; preds = %.loopexit169
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_20ConstantVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit137, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit144, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit148
  %i.ln = add i64 %.015196, -1
  %i.lo = and i64 %i.ln, %.015196                 ; 2 uses
  %.not = icmp eq i64 %i.lo, 0
  br i1 %.not, label %.loopexit166, label %bb.an, !llvm.loop !21859

.loopexit166:                                     ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_20ConstantVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clImEEDaSP_.exit, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_20ConstantVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit, %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_20ConstantVectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKS1_SR_ST_EUlSR_E_EEvSR_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef byval(%class.anon.5073) align 8 %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.474", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.sroa.4 = alloca [12 x i8], align 4            ; 8 uses
  %4 = alloca %"struct.facebook::velox::StringView", align 8 ; 7 uses
  %5 = alloca %"class.facebook::velox::Status", align 8 ; 8 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %7 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !1091, !range !309, !noundef !310
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i:     ; preds = %bb.a
  %.0.in.pre.i = load i8, ptr %i.a, align 4, !tbaa !87, !range !309
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1017
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1018 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !1016
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !745    ; 2 uses
  %.not.i.i51 = icmp sgt i32 %i.i, 0
  br i1 %.not.i.i51, label %bb.e, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.i, 2147483584                 ; 3 uses
  %i.o = zext nneg i32 %i.n to i64
  %.not37.i.i.not.i346.not = icmp eq i32 %i.n, 0
  br i1 %.not37.i.i.not.i346.not, label %.critedge.i.i.i, label %.lr.ph348

bb.f:                                             ; preds = %.lr.ph348
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i347, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.o
  br i1 %.not37.i.i.not.i, label %.lr.ph348, label %.critedge.i.i.i, !llvm.loop !1172

.lr.ph348:                                        ; preds = %bb.e, %bb.f
  %indvars.iv.i347 = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i347, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !370
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, !llvm.loop !1172

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
  %i.y = load i64, ptr %i.x, align 8, !tbaa !370
  %.demorgan.i = or i64 %i.y, %notmask.i40.i.i.i
  %i.z = icmp eq i64 %.demorgan.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i:   ; preds = %.lr.ph348, %bb.g, %.critedge.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph348 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit: ; preds = %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i
  %.0.in.i = phi i8 [ %.0.in.pre.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i ]
  %.0.i50 = trunc nuw i8 %.0.in.i to i1
  br i1 %.0.i50, label %bb.h, label %bb.bv

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1018 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !1017 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %.lr.ph196, label %.loopexit143

.lr.ph196:                                        ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.4.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4
  %.sroa.4.4..sroa_idx354 = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph196, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_20ConstantVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit
  %.0195 = phi i32 [ %i.ag, %.lr.ph196 ], [ %i.kj, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_20ConstantVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit ] ; 4 uses
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !21763 ; 2 uses
  %i.ap = load ptr, ptr %1, align 8, !tbaa !21860, !nonnull !310, !align !416 ; 4 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !21861, !nonnull !310, !align !416
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 88
  store i32 %.0195, ptr %i.ar, align 8, !tbaa !789
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !21863, !nonnull !310, !align !416
  %i.au = load ptr, ptr %i.ap, align 8, !tbaa !21861, !nonnull !310, !align !416 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !21864, !noalias !21866, !nonnull !310, !align !416 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !21869
  %.sroa.0.0.copyload.i = load i64, ptr %i.ax, align 8, !noalias !21869 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !18, !noalias !21869
  store i64 %.sroa.0.0.copyload.i, ptr %4, align 8, !noalias !21869
  store ptr %.sroa.2.0.copyload.i, ptr %i.aj, align 8, !noalias !21869
  %i.ay = trunc i64 %.sroa.0.0.copyload.i to i32  ; 2 uses
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %.invoke, label %.noexc16.preheader

.noexc16.preheader:                               ; preds = %bb.i
  %i.ba = and i64 %.sroa.0.0.copyload.i, 4294967295
  br label %.noexc16

.noexc16:                                         ; preds = %.noexc16.preheader, %bb.z
  %i.bb = phi i64 [ %i.ea, %bb.z ], [ %i.ba, %.noexc16.preheader ]
  %i.bc = phi i32 [ %i.dz, %bb.z ], [ %i.ay, %.noexc16.preheader ]
  %i.bd = phi i64 [ %i.dy, %bb.z ], [ 0, %.noexc16.preheader ] ; 2 uses
  %.036.i155 = phi i32 [ %i.dx, %bb.z ], [ 0, %.noexc16.preheader ] ; 11 uses
  %i.be = icmp ult i32 %i.bc, 13
  %i.bf = load ptr, ptr %i.aj, align 8
  %i.bg = select i1 %i.be, ptr %i.ak, ptr %i.bf
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 %i.bd ; 4 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !18  ; 6 uses
  %i.bj = zext i8 %i.bi to i32                    ; 4 uses
  %i.bk = icmp sgt i8 %i.bi, -1
  br i1 %i.bk, label %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread108, label %bb.j

bb.j:                                             ; preds = %.noexc16
  %gepdiff = sub nsw i64 %i.bb, %i.bd             ; 3 uses
  %i.bl = icmp slt i64 %gepdiff, 2
  br i1 %i.bl, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !18  ; 4 uses
  %i.bo = and i8 %i.bi, -32
  %or.cond.i55 = icmp eq i8 %i.bo, -64
  br i1 %or.cond.i55, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bp = shl nuw nsw i32 %i.bj, 6
  %i.bq = zext i8 %i.bn to i32
  %i.br = add nsw i32 %i.bp, -12416
  %i.bs = add nsw i32 %i.br, %i.bq
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

bb.m:                                             ; preds = %bb.k
  %i.bt = icmp eq i8 %i.bi, -19
  %i.bu = and i8 %i.bn, -96
  %i.bv = icmp eq i8 %i.bu, -96
  %or.cond46.i = select i1 %i.bt, i1 %i.bv, i1 false
  %i.bw = icmp eq i64 %gepdiff, 2
  %or.cond47.i = or i1 %i.bw, %or.cond46.i
  br i1 %or.cond47.i, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !18  ; 2 uses
  %i.bz = and i8 %i.bi, -16
  %or.cond5.i = icmp eq i8 %i.bz, -32
  br i1 %or.cond5.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ca = shl nuw nsw i32 %i.bj, 12
  %i.cb = zext i8 %i.bn to i32
  %i.cc = shl nuw nsw i32 %i.cb, 6
  %i.cd = zext i8 %i.by to i32
  %i.ce = add nsw i32 %i.ca, -925824
  %i.cf = add nsw i32 %i.ce, %i.cc
  %i.cg = add nsw i32 %i.cf, %i.cd
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

bb.p:                                             ; preds = %bb.n
  %i.ch = icmp samesign ugt i64 %gepdiff, 3
  %i.ci = and i8 %i.bi, -8
  %or.cond8.i = icmp eq i8 %i.ci, -16
  %or.cond48.i = and i1 %i.ch, %or.cond8.i
  br i1 %or.cond48.i, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bh, i64 3
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !18
  %i.cl = shl nuw nsw i32 %i.bj, 18
  %i.cm = zext i8 %i.bn to i32
  %i.cn = shl nuw nsw i32 %i.cm, 12
  %i.co = zext i8 %i.by to i32
  %i.cp = shl nuw nsw i32 %i.co, 6
  %i.cq = zext i8 %i.ck to i32
  %i.cr = add nsw i32 %i.cl, -63447168
  %i.cs = add nsw i32 %i.cr, %i.cn
  %i.ct = add nsw i32 %i.cs, %i.cp
  %i.cu = add nsw i32 %i.ct, %i.cq
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

_ZL18utf8proc_codepointPKcS0_Ri.exit:             ; preds = %bb.l, %bb.o, %bb.q
  %.1104 = phi i32 [ 3, %bb.o ], [ 4, %bb.q ], [ 2, %bb.l ]
  %.3.i56 = phi i32 [ %i.cg, %bb.o ], [ %i.cu, %bb.q ], [ %i.bs, %bb.l ] ; 2 uses
  %i.cv = icmp eq i32 %.3.i56, -1
  br i1 %i.cv, label %.thread, label %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread108

_ZL18utf8proc_codepointPKcS0_Ri.exit.thread108:   ; preds = %.noexc16, %_ZL18utf8proc_codepointPKcS0_Ri.exit
  %.3.i56112 = phi i32 [ %.3.i56, %_ZL18utf8proc_codepointPKcS0_Ri.exit ], [ %i.bj, %.noexc16 ] ; 9 uses
  %.1104111 = phi i32 [ %.1104, %_ZL18utf8proc_codepointPKcS0_Ri.exit ], [ 1, %.noexc16 ]
  %i.cw = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes acquire, align 8
  %i.cx = icmp eq i8 %i.cw, 0
  br i1 %i.cx, label %bb.r, label %bb.s, !prof !101

bb.r:                                             ; preds = %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread108
  %i.cy = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes) #24
  %.not.i25 = icmp eq i32 %i.cy, 0
  br i1 %.not.i25, label %bb.s, label %.noexc.i

.noexc.i:                                         ; preds = %bb.r
  store i64 8321515008, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes, align 8, !tbaa !370
  %i.cz = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes) #24
  br label %bb.s

bb.s:                                             ; preds = %.noexc.i, %bb.r, %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread108
  %i.da = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes acquire, align 8
  %i.db = icmp eq i8 %i.da, 0
  br i1 %i.db, label %bb.t, label %bb.u, !prof !101

bb.t:                                             ; preds = %bb.s
  %i.dc = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes) #24
  %.not14.i = icmp eq i32 %i.dc, 0
  br i1 %.not14.i, label %bb.u, label %.noexc48

.noexc48:                                         ; preds = %bb.t
  store i64 3298534885247, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, align 8
  store i64 2147483648, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, i64 8), align 8
  %i.dd = call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes) #24
  br label %bb.u

bb.u:                                             ; preds = %.noexc48, %bb.t, %bb.s
  %i.de = icmp slt i32 %.3.i56112, 0
  br i1 %i.de, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.df = icmp samesign ult i32 %.3.i56112, 5000
  br i1 %i.df, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dg = icmp samesign ugt i32 %.3.i56112, 32
  br i1 %i.dg, label %.thread, label %.split115

.split115:                                        ; preds = %bb.w
  %i.dh = zext nneg i32 %.3.i56112 to i64
  %i.di = load i64, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes, align 8, !tbaa !370
  %i.dj = shl nuw nsw i64 1, %i.dh
  %i.dk = and i64 %i.di, %i.dj
  %.not138 = icmp eq i64 %i.dk, 0
  br i1 %.not138, label %.thread, label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.dl = icmp samesign ugt i32 %.3.i56112, 8191
  br i1 %i.dl, label %bb.y, label %.split

bb.y:                                             ; preds = %bb.x
  %i.dm = icmp samesign ult i32 %.3.i56112, 8288
  br i1 %i.dm, label %.split114, label %.noexc17

.split114:                                        ; preds = %bb.y
  %i.dn = add nsw i32 %.3.i56112, -8192
  %i.do = zext nneg i32 %i.dn to i64              ; 2 uses
  %i.dp = lshr i64 %i.do, 6
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, i64 %i.dp
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !370
  %i.ds = and i64 %i.do, 63
  %i.dt = shl nuw i64 1, %i.ds
  %i.du = and i64 %i.dr, %i.dt
  %.not = icmp eq i64 %i.du, 0
  br i1 %.not, label %.thread, label %bb.z

.split:                                           ; preds = %bb.x
  %i.dv = icmp eq i32 %.3.i56112, 5760
  br i1 %i.dv, label %bb.z, label %.thread

.noexc17:                                         ; preds = %bb.y
  %i.dw = icmp eq i32 %.3.i56112, 12288
  br i1 %i.dw, label %bb.z, label %.thread

bb.z:                                             ; preds = %.noexc17, %.split, %.split114, %.split115
  %i.dx = add nsw i32 %.1104111, %.036.i155       ; 3 uses
  %i.dy = sext i32 %i.dx to i64                   ; 2 uses
  %i.dz = load i32, ptr %4, align 8, !tbaa !824   ; 2 uses
  %i.ea = zext i32 %i.dz to i64                   ; 2 uses
  %i.eb = icmp ugt i64 %i.ea, %i.dy
  br i1 %i.eb, label %.noexc16, label %.thread

.thread:                                          ; preds = %bb.z, %.noexc17, %_ZL18utf8proc_codepointPKcS0_Ri.exit, %.split, %.split114, %.split115, %bb.p, %bb.j, %bb.m, %bb.u, %bb.w
  %.036.i.lcssa.ph = phi i32 [ %i.dx, %bb.z ], [ %.036.i155, %.noexc17 ], [ %.036.i155, %_ZL18utf8proc_codepointPKcS0_Ri.exit ], [ %.036.i155, %.split ], [ %.036.i155, %.split114 ], [ %.036.i155, %.split115 ], [ %.036.i155, %bb.p ], [ %.036.i155, %bb.j ], [ %.036.i155, %bb.m ], [ %.036.i155, %bb.u ], [ %.036.i155, %bb.w ] ; 2 uses
  %.pre = load i32, ptr %4, align 8, !tbaa !824   ; 2 uses
  %.pre316 = zext i32 %.pre to i64                ; 2 uses
  %i.ec = sext i32 %.036.i.lcssa.ph to i64        ; 6 uses
  %.not.i = icmp ugt i64 %.pre316, %i.ec
  br i1 %.not.i, label %.noexc19, label %.invoke

.noexc19:                                         ; preds = %.thread
  %i.ed = icmp ult i32 %.pre, 13
  %i.ee = load ptr, ptr %i.aj, align 8
  %i.ef = select i1 %i.ed, ptr %i.ak, ptr %i.ee   ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ec ; 4 uses
  %i.eh = add nsw i64 %.pre316, -1                ; 3 uses
  %.not44.i174 = icmp samesign ult i64 %i.eh, %i.ec
  br i1 %.not44.i174, label %.noexc20.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.noexc19
  %invariant.op = sub i64 1, %i.ec
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.noexc20
  %.033.i175 = phi i64 [ %i.gp, %.noexc20 ], [ %i.eh, %.lr.ph.preheader ] ; 15 uses
  %.reass.reass.reass = add i64 %.033.i175, %invariant.op ; 3 uses
  %.not.i28 = icmp eq i64 %.reass.reass.reass, 0
  br i1 %.not.i28, label %.noexc20.thread, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph
  %i.ei = getelementptr i8, ptr %i.ef, i64 %.033.i175 ; 2 uses
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !18  ; 2 uses
  %i.ek = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes acquire, align 8
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_20ConstantVectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKS1_SR_ST_EUlSR_E_EEvSR_:bb.a

bb.bt:                                            ; preds = %bb.bs, %bb.bn
  %i.kh = landingpad { ptr, i32 }
          catch ptr null
  %i.ki = extractvalue { ptr, i32 } %i.kh, 0
  call void @__clang_call_terminate(ptr %i.ki) #51
  unreachable

bb.bu:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_20ConstantVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit87, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit92
  %i.kj = add i32 %.0195, 1                       ; 2 uses
  %exitcond.not = icmp eq i32 %i.kj, %i.ae
  br i1 %exitcond.not, label %.loopexit143, label %bb.i, !llvm.loop !21884

bb.bv:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.kk = load ptr, ptr %0, align 8, !tbaa !745
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !1017
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ko = load i32, ptr %i.kn, align 8, !tbaa !1018
  tail call void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_20ConstantVectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_(ptr noundef %i.kk, i32 noundef %i.km, i32 noundef %i.ko, i1 noundef zeroext true, ptr noundef nonnull byval(%class.anon.5073) align 8 %1)
  br label %.loopexit143

.loopexit143:                                     ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_20ConstantVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit, %bb.h, %bb.bv
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_20ConstantVectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef byval(%class.anon.5073) align 8 %4) local_unnamed_addr #0 comdat {
bb.a:
  %5 = alloca %class.anon.5077, align 8           ; 6 uses
  %6 = alloca %class.anon.5076, align 8           ; 8 uses
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
  br i1 %.not.i, label %bb.b, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS4_10VectorExecEEESC_NS0_7VarcharENS0_15ConstantCheckerIJSE_EEEJSE_EEEE8applyUdfIZNKSI_7iterateIJNS4_20ConstantVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSO_SS_EUlSS_E_ZNKSJ_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS13_EEvS15_iibSS_EUliE_EEviiSS_SU_.exit

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
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_20ConstantVectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.g, i64 noundef %i.q)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS4_10VectorExecEEESC_NS0_7VarcharENS0_15ConstantCheckerIJSE_EEEJSE_EEEE8applyUdfIZNKSI_7iterateIJNS4_20ConstantVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSO_SS_EUlSS_E_ZNKSJ_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS13_EEvS15_iibSS_EUliE_EEviiSS_SU_.exit

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
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_20ConstantVectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.r, i64 noundef %i.x)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = add nsw i32 %i.d, 64                     ; 2 uses
  %.not3337.i = icmp sgt i32 %i.y, %i.e
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.not34.i = icmp eq i32 %2, %i.e
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS4_10VectorExecEEESC_NS0_7VarcharENS0_15ConstantCheckerIJSE_EEEJSE_EEEE8applyUdfIZNKSI_7iterateIJNS4_20ConstantVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSO_SS_EUlSS_E_ZNKSJ_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS13_EEvS15_iibSS_EUliE_EEviiSS_SU_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.z = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.d, %bb.f ]
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_20ConstantVectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !21885

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i36.i = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask.i36.i, -1
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_20ConstantVectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.ac, i64 noundef %i.af)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS4_10VectorExecEEESC_NS0_7VarcharENS0_15ConstantCheckerIJSE_EEEJSE_EEEE8applyUdfIZNKSI_7iterateIJNS4_20ConstantVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSO_SS_EUlSS_E_ZNKSJ_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS13_EEvS15_iibSS_EUliE_EEviiSS_SU_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS4_10VectorExecEEESC_NS0_7VarcharENS0_15ConstantCheckerIJSE_EEEJSE_EEEE8applyUdfIZNKSI_7iterateIJNS4_20ConstantVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSO_SS_EUlSS_E_ZNKSJ_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS13_EEvS15_iibSS_EUliE_EEviiSS_SU_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_20ConstantVectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.474", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.sroa.4 = alloca [12 x i8], align 4            ; 8 uses
  %5 = alloca %"struct.facebook::velox::StringView", align 8 ; 7 uses
  %6 = alloca %"class.facebook::velox::Status", align 8 ; 8 uses
  %7 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %8 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !21886, !range !309, !noundef !310
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21888
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !370
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit150, label %.preheader149

.preheader149:                                    ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.4.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4
  %.sroa.4.4..sroa_idx355 = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.preheader149, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_20ConstantVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit
  %.0202 = phi i64 [ %i.k, %.preheader149 ], [ %i.js, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_20ConstantVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit ] ; 3 uses
  %i.t = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0202, i1 true)
  %i.u = trunc nuw nsw i64 %i.t to i32
  %i.v = or disjoint i32 %i.m, %i.u               ; 3 uses
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !21763 ; 2 uses
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !21860, !nonnull !310, !align !416 ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !21861, !nonnull !310, !align !416
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 88
  store i32 %i.v, ptr %i.z, align 8, !tbaa !789
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !21863, !nonnull !310, !align !416
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !21861, !nonnull !310, !align !416 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !21864, !noalias !21889, !nonnull !310, !align !416 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !21892
  %.sroa.0.0.copyload.i = load i64, ptr %i.af, align 8, !noalias !21892 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !18, !noalias !21892
  store i64 %.sroa.0.0.copyload.i, ptr %5, align 8, !noalias !21892
  store ptr %.sroa.2.0.copyload.i, ptr %i.o, align 8, !noalias !21892
  %i.ag = trunc i64 %.sroa.0.0.copyload.i to i32  ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %.invoke, label %.noexc23.preheader

.noexc23.preheader:                               ; preds = %bb.b
  %i.ai = and i64 %.sroa.0.0.copyload.i, 4294967295
  br label %.noexc23

.noexc23:                                         ; preds = %.noexc23.preheader, %bb.s
  %i.aj = phi i64 [ %i.di, %bb.s ], [ %i.ai, %.noexc23.preheader ]
  %i.ak = phi i32 [ %i.dh, %bb.s ], [ %i.ag, %.noexc23.preheader ]
  %i.al = phi i64 [ %i.dg, %bb.s ], [ 0, %.noexc23.preheader ] ; 2 uses
  %.036.i162 = phi i32 [ %i.df, %bb.s ], [ 0, %.noexc23.preheader ] ; 11 uses
  %i.am = icmp ult i32 %i.ak, 13
  %i.an = load ptr, ptr %i.o, align 8
  %i.ao = select i1 %i.am, ptr %i.p, ptr %i.an
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %i.al ; 4 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !18  ; 6 uses
  %i.ar = zext i8 %i.aq to i32                    ; 4 uses
  %i.as = icmp sgt i8 %i.aq, -1
  br i1 %i.as, label %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread113, label %bb.c

bb.c:                                             ; preds = %.noexc23
  %gepdiff = sub nsw i64 %i.aj, %i.al             ; 3 uses
  %i.at = icmp slt i64 %gepdiff, 2
  br i1 %i.at, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !18  ; 4 uses
  %i.aw = and i8 %i.aq, -32
  %or.cond.i60 = icmp eq i8 %i.aw, -64
  br i1 %or.cond.i60, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ax = shl nuw nsw i32 %i.ar, 6
  %i.ay = zext i8 %i.av to i32
  %i.az = add nsw i32 %i.ax, -12416
  %i.ba = add nsw i32 %i.az, %i.ay
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

bb.f:                                             ; preds = %bb.d
  %i.bb = icmp eq i8 %i.aq, -19
  %i.bc = and i8 %i.av, -96
  %i.bd = icmp eq i8 %i.bc, -96
  %or.cond46.i = select i1 %i.bb, i1 %i.bd, i1 false
  %i.be = icmp eq i64 %gepdiff, 2
  %or.cond47.i = or i1 %i.be, %or.cond46.i
  br i1 %or.cond47.i, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !18  ; 2 uses
  %i.bh = and i8 %i.aq, -16
  %or.cond5.i = icmp eq i8 %i.bh, -32
  br i1 %or.cond5.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bi = shl nuw nsw i32 %i.ar, 12
  %i.bj = zext i8 %i.av to i32
  %i.bk = shl nuw nsw i32 %i.bj, 6
  %i.bl = zext i8 %i.bg to i32
  %i.bm = add nsw i32 %i.bi, -925824
  %i.bn = add nsw i32 %i.bm, %i.bk
  %i.bo = add nsw i32 %i.bn, %i.bl
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

bb.i:                                             ; preds = %bb.g
  %i.bp = icmp samesign ugt i64 %gepdiff, 3
  %i.bq = and i8 %i.aq, -8
  %or.cond8.i = icmp eq i8 %i.bq, -16
  %or.cond48.i = and i1 %i.bp, %or.cond8.i
  br i1 %or.cond48.i, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.ap, i64 3
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !18
  %i.bt = shl nuw nsw i32 %i.ar, 18
  %i.bu = zext i8 %i.av to i32
  %i.bv = shl nuw nsw i32 %i.bu, 12
  %i.bw = zext i8 %i.bg to i32
  %i.bx = shl nuw nsw i32 %i.bw, 6
  %i.by = zext i8 %i.bs to i32
  %i.bz = add nsw i32 %i.bt, -63447168
  %i.ca = add nsw i32 %i.bz, %i.bv
  %i.cb = add nsw i32 %i.ca, %i.bx
  %i.cc = add nsw i32 %i.cb, %i.by
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

_ZL18utf8proc_codepointPKcS0_Ri.exit:             ; preds = %bb.e, %bb.h, %bb.j
  %.1109 = phi i32 [ 3, %bb.h ], [ 4, %bb.j ], [ 2, %bb.e ]
  %.3.i61 = phi i32 [ %i.bo, %bb.h ], [ %i.cc, %bb.j ], [ %i.ba, %bb.e ] ; 2 uses
  %i.cd = icmp eq i32 %.3.i61, -1
  br i1 %i.cd, label %.thread, label %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread113

_ZL18utf8proc_codepointPKcS0_Ri.exit.thread113:   ; preds = %.noexc23, %_ZL18utf8proc_codepointPKcS0_Ri.exit
  %.3.i61117 = phi i32 [ %.3.i61, %_ZL18utf8proc_codepointPKcS0_Ri.exit ], [ %i.ar, %.noexc23 ] ; 9 uses
  %.1109116 = phi i32 [ %.1109, %_ZL18utf8proc_codepointPKcS0_Ri.exit ], [ 1, %.noexc23 ]
  %i.ce = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes acquire, align 8
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %bb.k, label %bb.l, !prof !101

bb.k:                                             ; preds = %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread113
  %i.cg = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes) #24
  %.not.i32 = icmp eq i32 %i.cg, 0
  br i1 %.not.i32, label %bb.l, label %.noexc.i

.noexc.i:                                         ; preds = %bb.k
  store i64 8321515008, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes, align 8, !tbaa !370
  %i.ch = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes) #24
  br label %bb.l

bb.l:                                             ; preds = %.noexc.i, %bb.k, %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread113
  %i.ci = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes acquire, align 8
  %i.cj = icmp eq i8 %i.ci, 0
  br i1 %i.cj, label %bb.m, label %bb.n, !prof !101

bb.m:                                             ; preds = %bb.l
  %i.ck = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes) #24
  %.not14.i = icmp eq i32 %i.ck, 0
  br i1 %.not14.i, label %bb.n, label %.noexc55

.noexc55:                                         ; preds = %bb.m
  store i64 3298534885247, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, align 8
  store i64 2147483648, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, i64 8), align 8
  %i.cl = call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes) #24
  br label %bb.n

bb.n:                                             ; preds = %.noexc55, %bb.m, %bb.l
  %i.cm = icmp slt i32 %.3.i61117, 0
  br i1 %i.cm, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cn = icmp samesign ult i32 %.3.i61117, 5000
  br i1 %i.cn, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.co = icmp samesign ugt i32 %.3.i61117, 32
  br i1 %i.co, label %.thread, label %.split120

.split120:                                        ; preds = %bb.p
  %i.cp = zext nneg i32 %.3.i61117 to i64
  %i.cq = load i64, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes, align 8, !tbaa !370
  %i.cr = shl nuw nsw i64 1, %i.cp
  %i.cs = and i64 %i.cq, %i.cr
  %.not144 = icmp eq i64 %i.cs, 0
  br i1 %.not144, label %.thread, label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.ct = icmp samesign ugt i32 %.3.i61117, 8191
  br i1 %i.ct, label %bb.r, label %.split

bb.r:                                             ; preds = %bb.q
  %i.cu = icmp samesign ult i32 %.3.i61117, 8288
  br i1 %i.cu, label %.split119, label %.noexc24

.split119:                                        ; preds = %bb.r
  %i.cv = add nsw i32 %.3.i61117, -8192
  %i.cw = zext nneg i32 %i.cv to i64              ; 2 uses
  %i.cx = lshr i64 %i.cw, 6
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, i64 %i.cx
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !370
  %i.da = and i64 %i.cw, 63
  %i.db = shl nuw i64 1, %i.da
  %i.dc = and i64 %i.cz, %i.db
  %.not143 = icmp eq i64 %i.dc, 0
  br i1 %.not143, label %.thread, label %bb.s

.split:                                           ; preds = %bb.q
  %i.dd = icmp eq i32 %.3.i61117, 5760
  br i1 %i.dd, label %bb.s, label %.thread

.noexc24:                                         ; preds = %bb.r
  %i.de = icmp eq i32 %.3.i61117, 12288
  br i1 %i.de, label %bb.s, label %.thread

bb.s:                                             ; preds = %.noexc24, %.split, %.split119, %.split120
  %i.df = add nsw i32 %.1109116, %.036.i162       ; 3 uses
  %i.dg = sext i32 %i.df to i64                   ; 2 uses
  %i.dh = load i32, ptr %5, align 8, !tbaa !824   ; 2 uses
  %i.di = zext i32 %i.dh to i64                   ; 2 uses
  %i.dj = icmp ugt i64 %i.di, %i.dg
  br i1 %i.dj, label %.noexc23, label %.thread

.thread:                                          ; preds = %bb.s, %.noexc24, %_ZL18utf8proc_codepointPKcS0_Ri.exit, %.split, %.split119, %.split120, %bb.i, %bb.c, %bb.f, %bb.n, %bb.p
  %.036.i.lcssa.ph = phi i32 [ %i.df, %bb.s ], [ %.036.i162, %.noexc24 ], [ %.036.i162, %_ZL18utf8proc_codepointPKcS0_Ri.exit ], [ %.036.i162, %.split ], [ %.036.i162, %.split119 ], [ %.036.i162, %.split120 ], [ %.036.i162, %bb.i ], [ %.036.i162, %bb.c ], [ %.036.i162, %bb.f ], [ %.036.i162, %bb.n ], [ %.036.i162, %bb.p ] ; 2 uses
  %.pre = load i32, ptr %5, align 8, !tbaa !824   ; 2 uses
  %.pre322 = zext i32 %.pre to i64                ; 2 uses
  %i.dk = sext i32 %.036.i.lcssa.ph to i64        ; 6 uses
  %.not.i = icmp ugt i64 %.pre322, %i.dk
  br i1 %.not.i, label %.noexc26, label %.invoke

.noexc26:                                         ; preds = %.thread
  %i.dl = icmp ult i32 %.pre, 13
  %i.dm = load ptr, ptr %i.o, align 8
  %i.dn = select i1 %i.dl, ptr %i.p, ptr %i.dm    ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dk ; 4 uses
  %i.dp = add nsw i64 %.pre322, -1                ; 3 uses
  %.not44.i181 = icmp samesign ult i64 %i.dp, %i.dk
  br i1 %.not44.i181, label %.noexc27.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.noexc26
  %invariant.op = sub i64 1, %i.dk
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.noexc27
  %.033.i182 = phi i64 [ %i.fx, %.noexc27 ], [ %i.dp, %.lr.ph.preheader ] ; 15 uses
  %.reass.reass.reass = add i64 %.033.i182, %invariant.op ; 3 uses
  %.not.i35 = icmp eq i64 %.reass.reass.reass, 0
  br i1 %.not.i35, label %.noexc27.thread, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.dq = getelementptr i8, ptr %i.dn, i64 %.033.i182 ; 2 uses
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !18  ; 2 uses
  %i.ds = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes acquire, align 8
end_hunk_1
begin_hunk_2_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_20ConstantVectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim:bb.a
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.be:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_20ConstantVectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clIiEEDaSN_.exit14
  %i.jk = landingpad { ptr, i32 }
          cleanup
  %i.jl = load ptr, ptr %7, align 8, !tbaa !607
  %.not.i94 = icmp eq ptr %i.jl, null
  br i1 %.not.i94, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit95, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit95

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit95: ; preds = %bb.be, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.bg

bb.bg:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit95, %bb.bd
  %.pn.i = phi { ptr, i32 } [ %i.jk, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit95 ], [ %i.jj, %bb.bd ]
  invoke void @__cxa_end_catch()
          to label %.loopexit151 unwind label %bb.bm

.loopexit153:                                     ; preds = %tailrecurse.i.i.i.i.3
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

.loopexit.split-lp:                               ; preds = %.loopexit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_20ConstantVectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clIiEEDaSN_.exit: ; preds = %tailrecurse.i.i.i.i.3
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %8) #24
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.w, i32 noundef %i.v, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.bh unwind label %bb.bj

bb.bh:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_20ConstantVectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clIiEEDaSN_.exit
  %i.jm = load ptr, ptr %8, align 8, !tbaa !607
  %.not.i96 = icmp eq ptr %i.jm, null
  br i1 %.not.i96, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit97, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit97

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit97: ; preds = %bb.bh, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_20ConstantVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit

bb.bj:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_20ConstantVectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clIiEEDaSN_.exit
  %i.jn = landingpad { ptr, i32 }
          cleanup
  %i.jo = load ptr, ptr %8, align 8, !tbaa !607
  %.not.i98 = icmp eq ptr %i.jo, null
  br i1 %.not.i98, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit99, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit99

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit99: ; preds = %bb.bj, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.bl

bb.bl:                                            ; preds = %.loopexit153, %.loopexit.split-lp, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit99
  %.pn16.i = phi { ptr, i32 } [ %i.jn, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit99 ], [ %lpad.loopexit, %.loopexit153 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @__cxa_end_catch()
          to label %.loopexit151 unwind label %bb.bm

.loopexit151:                                     ; preds = %bb.az, %bb.bl, %bb.bg
  %.merged.i = phi { ptr, i32 } [ %.pn.i, %bb.bg ], [ %.pn16.i, %bb.bl ], [ %eh.lpad-body, %bb.az ]
  resume { ptr, i32 } %.merged.i

bb.bm:                                            ; preds = %bb.bl, %bb.bg
  %i.jp = landingpad { ptr, i32 }
          catch ptr null
  %i.jq = extractvalue { ptr, i32 } %i.jp, 0
  call void @__clang_call_terminate(ptr %i.jq) #51
  unreachable

bb.bn:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_20ConstantVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit92, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit97
  %i.jr = add i64 %.0202, -1
  %i.js = and i64 %i.jr, %.0202                   ; 2 uses
  %.not10 = icmp eq i64 %i.js, 0
  br i1 %.not10, label %.loopexit150, label %bb.b, !llvm.loop !21904

.loopexit150:                                     ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_20ConstantVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_20ConstantVectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.474", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.474", align 16 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.sroa.4223 = alloca [12 x i8], align 4         ; 8 uses
  %6 = alloca %"struct.facebook::velox::StringView", align 8 ; 7 uses
  %7 = alloca %"class.facebook::velox::Status", align 8 ; 8 uses
  %8 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %9 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %.sroa.4 = alloca [12 x i8], align 4            ; 8 uses
  %10 = alloca %"struct.facebook::velox::StringView", align 8 ; 7 uses
  %11 = alloca %"class.facebook::velox::Status", align 8 ; 8 uses
  %12 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %13 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !21905, !range !309, !noundef !310
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21907
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !370
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %.lr.ph400 [
    i64 -1, label %bb.b
    i64 0, label %.loopexit330
  ]

.lr.ph400:                                        ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.4.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4
  %.sroa.4.4..sroa_idx778 = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4
  br label %bb.bp

bb.b:                                             ; preds = %bb.a
  %i.s = shl i32 %1, 6                            ; 3 uses
  %i.t = add i32 %i.s, 64
  %i.u = sext i32 %i.t to i64
  %.not449 = icmp eq i32 %i.s, -64
  br i1 %.not449, label %.loopexit330, label %.lr.ph448

.lr.ph448:                                        ; preds = %bb.b
  %i.v = sext i32 %i.s to i64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.4223.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4223, i64 4
  %.sroa.4223.4..sroa_idx779 = getelementptr inbounds nuw i8, ptr %.sroa.4223, i64 4
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph448, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_20ConstantVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clImEEDaSP_.exit
  %.0447 = phi i64 [ %i.v, %.lr.ph448 ], [ %i.jz, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_20ConstantVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clImEEDaSP_.exit ] ; 2 uses
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !21763 ; 2 uses
  %i.ae = load ptr, ptr %i.w, align 8, !tbaa !21860, !nonnull !310, !align !416 ; 4 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !21861, !nonnull !310, !align !416
  %i.ag = trunc i64 %.0447 to i32                 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 88
  store i32 %i.ag, ptr %i.ah, align 8, !tbaa !789
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !21863, !nonnull !310, !align !416
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !21861, !nonnull !310, !align !416 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !21864, !noalias !21908, !nonnull !310, !align !416 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !21911
  %.sroa.0.0.copyload.i = load i64, ptr %i.an, align 8, !noalias !21911 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !18, !noalias !21911
  store i64 %.sroa.0.0.copyload.i, ptr %6, align 8, !noalias !21911
  store ptr %.sroa.2.0.copyload.i, ptr %i.y, align 8, !noalias !21911
  %i.ao = trunc i64 %.sroa.0.0.copyload.i to i32  ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %.invoke, label %.noexc91.preheader

.noexc91.preheader:                               ; preds = %bb.c
  %i.aq = and i64 %.sroa.0.0.copyload.i, 4294967295
  br label %.noexc91

.noexc91:                                         ; preds = %.noexc91.preheader, %bb.t
  %i.ar = phi i64 [ %i.dq, %bb.t ], [ %i.aq, %.noexc91.preheader ]
  %i.as = phi i32 [ %i.dp, %bb.t ], [ %i.ao, %.noexc91.preheader ]
  %i.at = phi i64 [ %i.do, %bb.t ], [ 0, %.noexc91.preheader ] ; 2 uses
  %.036.i.i403 = phi i32 [ %i.dn, %bb.t ], [ 0, %.noexc91.preheader ] ; 11 uses
  %i.au = icmp ult i32 %i.as, 13
  %i.av = load ptr, ptr %i.y, align 8
  %i.aw = select i1 %i.au, ptr %i.z, ptr %i.av
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.at ; 4 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !18, !noalias !21914 ; 6 uses
  %i.az = zext i8 %i.ay to i32                    ; 4 uses
  %i.ba = icmp sgt i8 %i.ay, -1
  br i1 %i.ba, label %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread250, label %bb.d

bb.d:                                             ; preds = %.noexc91
  %gepdiff322 = sub nsw i64 %i.ar, %i.at          ; 3 uses
  %i.bb = icmp slt i64 %gepdiff322, 2
  br i1 %i.bb, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !18, !noalias !21914 ; 4 uses
  %i.be = and i8 %i.ay, -32
  %or.cond.i102 = icmp eq i8 %i.be, -64
  br i1 %or.cond.i102, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bf = shl nuw nsw i32 %i.az, 6
  %i.bg = zext i8 %i.bd to i32
  %i.bh = add nsw i32 %i.bf, -12416
  %i.bi = add nsw i32 %i.bh, %i.bg
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

bb.g:                                             ; preds = %bb.e
  %i.bj = icmp eq i8 %i.ay, -19
  %i.bk = and i8 %i.bd, -96
  %i.bl = icmp eq i8 %i.bk, -96
  %or.cond46.i = select i1 %i.bj, i1 %i.bl, i1 false
  %i.bm = icmp eq i64 %gepdiff322, 2
  %or.cond47.i = or i1 %i.bm, %or.cond46.i
  br i1 %or.cond47.i, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !18, !noalias !21914 ; 2 uses
  %i.bp = and i8 %i.ay, -16
  %or.cond5.i = icmp eq i8 %i.bp, -32
  br i1 %or.cond5.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bq = shl nuw nsw i32 %i.az, 12
  %i.br = zext i8 %i.bd to i32
  %i.bs = shl nuw nsw i32 %i.br, 6
  %i.bt = zext i8 %i.bo to i32
  %i.bu = add nsw i32 %i.bq, -925824
  %i.bv = add nsw i32 %i.bu, %i.bs
  %i.bw = add nsw i32 %i.bv, %i.bt
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

bb.j:                                             ; preds = %bb.h
  %i.bx = icmp samesign ugt i64 %gepdiff322, 3
  %i.by = and i8 %i.ay, -8
  %or.cond8.i = icmp eq i8 %i.by, -16
  %or.cond48.i = and i1 %i.bx, %or.cond8.i
  br i1 %or.cond48.i, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ax, i64 3
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !18, !noalias !21914
  %i.cb = shl nuw nsw i32 %i.az, 18
  %i.cc = zext i8 %i.bd to i32
  %i.cd = shl nuw nsw i32 %i.cc, 12
  %i.ce = zext i8 %i.bo to i32
  %i.cf = shl nuw nsw i32 %i.ce, 6
  %i.cg = zext i8 %i.ca to i32
  %i.ch = add nsw i32 %i.cb, -63447168
  %i.ci = add nsw i32 %i.ch, %i.cd
  %i.cj = add nsw i32 %i.ci, %i.cf
  %i.ck = add nsw i32 %i.cj, %i.cg
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

_ZL18utf8proc_codepointPKcS0_Ri.exit:             ; preds = %bb.f, %bb.i, %bb.k
  %.1233 = phi i32 [ 3, %bb.i ], [ 4, %bb.k ], [ 2, %bb.f ]
  %.3.i103 = phi i32 [ %i.bw, %bb.i ], [ %i.ck, %bb.k ], [ %i.bi, %bb.f ] ; 2 uses
  %i.cl = icmp eq i32 %.3.i103, -1
  br i1 %i.cl, label %.thread, label %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread250

_ZL18utf8proc_codepointPKcS0_Ri.exit.thread250:   ; preds = %.noexc91, %_ZL18utf8proc_codepointPKcS0_Ri.exit
  %.3.i103254 = phi i32 [ %.3.i103, %_ZL18utf8proc_codepointPKcS0_Ri.exit ], [ %i.az, %.noexc91 ] ; 9 uses
  %.1233253 = phi i32 [ %.1233, %_ZL18utf8proc_codepointPKcS0_Ri.exit ], [ 1, %.noexc91 ]
  %i.cm = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes acquire, align 8, !noalias !21914
  %i.cn = icmp eq i8 %i.cm, 0
  br i1 %i.cn, label %bb.l, label %bb.m, !prof !101

bb.l:                                             ; preds = %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread250
  %i.co = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes) #24, !noalias !21914
  %.not.i3.i = icmp eq i32 %i.co, 0
  br i1 %.not.i3.i, label %bb.m, label %.noexc.i.i86

.noexc.i.i86:                                     ; preds = %bb.l
  store i64 8321515008, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes, align 8, !tbaa !370, !noalias !21914
  %i.cp = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes), !noalias !21914 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes) #24, !noalias !21914
  br label %bb.m

bb.m:                                             ; preds = %.noexc.i.i86, %bb.l, %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread250
  %i.cq = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes acquire, align 8, !noalias !21914
  %i.cr = icmp eq i8 %i.cq, 0
  br i1 %i.cr, label %bb.n, label %bb.o, !prof !101

bb.n:                                             ; preds = %bb.m
  %i.cs = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes) #24, !noalias !21914
  %.not14.i.i81 = icmp eq i32 %i.cs, 0
  br i1 %.not14.i.i81, label %bb.o, label %.noexc21.i

.noexc21.i:                                       ; preds = %bb.n
  store i64 3298534885247, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, align 8, !noalias !21914
  store i64 2147483648, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, i64 8), align 8, !noalias !21914
  %i.ct = call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes), !noalias !21914 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes) #24, !noalias !21914
  br label %bb.o

bb.o:                                             ; preds = %.noexc21.i, %bb.n, %bb.m
  %i.cu = icmp slt i32 %.3.i103254, 0
  br i1 %i.cu, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cv = icmp samesign ult i32 %.3.i103254, 5000
  br i1 %i.cv, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cw = icmp samesign ugt i32 %.3.i103254, 32
  br i1 %i.cw, label %.thread, label %.split257

.split257:                                        ; preds = %bb.q
  %i.cx = zext nneg i32 %.3.i103254 to i64
  %i.cy = load i64, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes, align 8, !tbaa !370, !noalias !21914
  %i.cz = shl nuw nsw i64 1, %i.cx
  %i.da = and i64 %i.cy, %i.cz
  %.not324 = icmp eq i64 %i.da, 0
  br i1 %.not324, label %.thread, label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.db = icmp samesign ugt i32 %.3.i103254, 8191
  br i1 %i.db, label %bb.s, label %.split

bb.s:                                             ; preds = %bb.r
  %i.dc = icmp samesign ult i32 %.3.i103254, 8288
  br i1 %i.dc, label %.split256, label %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i78

.split256:                                        ; preds = %bb.s
  %i.dd = add nsw i32 %.3.i103254, -8192
  %i.de = zext nneg i32 %i.dd to i64              ; 2 uses
  %i.df = lshr i64 %i.de, 6
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, i64 %i.df
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !370, !noalias !21914
  %i.di = and i64 %i.de, 63
  %i.dj = shl nuw i64 1, %i.di
  %i.dk = and i64 %i.dh, %i.dj
  %.not323 = icmp eq i64 %i.dk, 0
  br i1 %.not323, label %.thread, label %bb.t

.split:                                           ; preds = %bb.r
  %i.dl = icmp eq i32 %.3.i103254, 5760
  br i1 %i.dl, label %bb.t, label %.thread

_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i78: ; preds = %bb.s
  %i.dm = icmp eq i32 %.3.i103254, 12288
  br i1 %i.dm, label %bb.t, label %.thread

bb.t:                                             ; preds = %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i78, %.split, %.split256, %.split257
  %i.dn = add nsw i32 %.1233253, %.036.i.i403     ; 3 uses
  %i.do = sext i32 %i.dn to i64                   ; 2 uses
  %i.dp = load i32, ptr %6, align 8, !tbaa !824, !noalias !21914 ; 2 uses
  %i.dq = zext i32 %i.dp to i64                   ; 2 uses
  %i.dr = icmp ugt i64 %i.dq, %i.do
  br i1 %i.dr, label %.noexc91, label %.thread

.thread:                                          ; preds = %bb.t, %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i78, %_ZL18utf8proc_codepointPKcS0_Ri.exit, %.split, %.split256, %.split257, %bb.j, %bb.d, %bb.g, %bb.o, %bb.q
  %.036.i.i.lcssa.ph = phi i32 [ %i.dn, %bb.t ], [ %.036.i.i403, %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i78 ], [ %.036.i.i403, %_ZL18utf8proc_codepointPKcS0_Ri.exit ], [ %.036.i.i403, %.split ], [ %.036.i.i403, %.split256 ], [ %.036.i.i403, %.split257 ], [ %.036.i.i403, %bb.j ], [ %.036.i.i403, %bb.d ], [ %.036.i.i403, %bb.g ], [ %.036.i.i403, %bb.o ], [ %.036.i.i403, %bb.q ] ; 2 uses
  %.pre = load i32, ptr %6, align 8, !tbaa !824, !noalias !21914 ; 2 uses
  %.pre702 = zext i32 %.pre to i64                ; 2 uses
  %i.ds = sext i32 %.036.i.i.lcssa.ph to i64      ; 6 uses
  %.not.i.i73 = icmp ugt i64 %.pre702, %i.ds
  br i1 %.not.i.i73, label %.noexc95, label %.invoke

.noexc95:                                         ; preds = %.thread
  %i.dt = icmp ult i32 %.pre, 13
  %i.du = load ptr, ptr %i.y, align 8
  %i.dv = select i1 %i.dt, ptr %i.z, ptr %i.du    ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.ds ; 4 uses
  %i.dx = add nsw i64 %.pre702, -1                ; 3 uses
  %.not44.i.i425 = icmp samesign ult i64 %i.dx, %i.ds
  br i1 %.not44.i.i425, label %_ZN8facebook5velox9functions10stringImpl25endsWithUnicodeWhiteSpaceEPKcm.exit.i.thread, label %.lr.ph427.preheader

.lr.ph427.preheader:                              ; preds = %.noexc95
  %invariant.op = sub i64 1, %i.ds
  br label %.lr.ph427

.lr.ph427:                                        ; preds = %.lr.ph427.preheader, %_ZN8facebook5velox9functions10stringImpl25endsWithUnicodeWhiteSpaceEPKcm.exit.i
  %.033.i.i426 = phi i64 [ %i.gf, %_ZN8facebook5velox9functions10stringImpl25endsWithUnicodeWhiteSpaceEPKcm.exit.i ], [ %i.dx, %.lr.ph427.preheader ] ; 15 uses
  %.reass424.reass.reass = add i64 %.033.i.i426, %invariant.op ; 3 uses
  %.not.i4.i = icmp eq i64 %.reass424.reass.reass, 0
  br i1 %.not.i4.i, label %_ZN8facebook5velox9functions10stringImpl25endsWithUnicodeWhiteSpaceEPKcm.exit.i.thread, label %bb.u

bb.u:                                             ; preds = %.lr.ph427
  %i.dy = getelementptr i8, ptr %i.dv, i64 %.033.i.i426 ; 2 uses
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !18, !noalias !21914 ; 2 uses
  %i.ea = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes acquire, align 8, !noalias !21914
end_hunk_2
begin_hunk_3_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_20ConstantVectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi:bb.a
.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.az
  %i.ja = load i8, ptr %i.iw, align 1, !tbaa !18
  %or.cond.not.i.i.i = icmp eq i8 %i.ja, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.preheader
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iw, i64 1
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !18
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.jc, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iw, i64 2
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !18
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.je, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iw, i64 3
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !18
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.jg, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  %i.jh = load ptr, ptr %i.ac, align 8, !tbaa !21881, !nonnull !310, !align !416
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !21882, !nonnull !310, !align !416
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  invoke void @_ZN8facebook5velox4exec12VectorWriterINS0_7VarcharEvE10commitNullEv(ptr noundef nonnull align 8 dereferenceable(112) %i.jj)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_20ConstantVectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clImEEDaSN_.exit unwind label %.loopexit332

.loopexit:                                        ; preds = %bb.az, %.lr.ph.i.i.i.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #50
          to label %bb.bo unwind label %.loopexit.split-lp

bb.ba:                                            ; preds = %.body68
  %i.jk = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #24
  %i.jl = icmp eq i32 %i.ip, %i.jk
  br i1 %i.jl, label %bb.bb, label %common.resume

bb.bb:                                            ; preds = %bb.ba
  %i.jm = call ptr @__cxa_begin_catch(ptr %i.io) #24 ; 0 uses
  %i.jn = load ptr, ptr %i.ac, align 8, !tbaa !21881, !nonnull !310, !align !416
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !21882, !nonnull !310, !align !416
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  invoke void @_ZN8facebook5velox4exec12VectorWriterINS0_7VarcharEvE10commitNullEv(ptr noundef nonnull align 8 dereferenceable(112) %i.jp)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_20ConstantVectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clImEEDaSN_.exit72 unwind label %bb.be

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_20ConstantVectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clImEEDaSN_.exit72: ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %8) #24
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.ad, i32 noundef %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.bc unwind label %bb.bf

bb.bc:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_20ConstantVectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clImEEDaSN_.exit72
  %i.jq = load ptr, ptr %8, align 8, !tbaa !607
  %.not.i135 = icmp eq ptr %i.jq, null
  br i1 %.not.i135, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.bc, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_20ConstantVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clImEEDaSP_.exit

bb.be:                                            ; preds = %bb.bb
  %i.jr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bf:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_20ConstantVectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clImEEDaSN_.exit72
  %i.js = landingpad { ptr, i32 }
          cleanup
  %i.jt = load ptr, ptr %8, align 8, !tbaa !607
  %.not.i136 = icmp eq ptr %i.jt, null
  br i1 %.not.i136, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit137, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit137

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit137: ; preds = %bb.bf, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.bh

bb.bh:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit137, %bb.be
  %.pn.i64 = phi { ptr, i32 } [ %i.js, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit137 ], [ %i.jr, %bb.be ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.bn

.loopexit332:                                     ; preds = %tailrecurse.i.i.i.i.3
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

.loopexit.split-lp:                               ; preds = %.loopexit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_20ConstantVectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clImEEDaSN_.exit: ; preds = %tailrecurse.i.i.i.i.3
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %9) #24
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.ad, i32 noundef %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.bi unwind label %bb.bk

bb.bi:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_20ConstantVectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clImEEDaSN_.exit
  %i.ju = load ptr, ptr %9, align 8, !tbaa !607
  %.not.i138 = icmp eq ptr %i.ju, null
  br i1 %.not.i138, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit139, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit139

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit139: ; preds = %bb.bi, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_20ConstantVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clImEEDaSP_.exit

bb.bk:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_20ConstantVectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clImEEDaSN_.exit
  %i.jv = landingpad { ptr, i32 }
          cleanup
  %i.jw = load ptr, ptr %9, align 8, !tbaa !607
  %.not.i140 = icmp eq ptr %i.jw, null
  br i1 %.not.i140, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit141, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit141

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit141: ; preds = %bb.bk, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.bm

bb.bm:                                            ; preds = %.loopexit332, %.loopexit.split-lp, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit141
  %.pn16.i65 = phi { ptr, i32 } [ %i.jv, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit141 ], [ %lpad.loopexit, %.loopexit332 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.bn

common.resume:                                    ; preds = %bb.ba, %bb.dn, %bb.du, %bb.dz, %bb.bh, %bb.bm
  %common.resume.op = phi { ptr, i32 } [ %.pn16.i65, %bb.bm ], [ %.pn.i64, %bb.bh ], [ %.pn16.i, %bb.dz ], [ %.pn.i, %bb.du ], [ %eh.lpad-body, %bb.dn ], [ %eh.lpad-body69, %bb.ba ]
  resume { ptr, i32 } %common.resume.op

bb.bn:                                            ; preds = %bb.bm, %bb.bh
  %i.jx = landingpad { ptr, i32 }
          catch ptr null
  %i.jy = extractvalue { ptr, i32 } %i.jx, 0
  call void @__clang_call_terminate(ptr %i.jy) #51
  unreachable

bb.bo:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_20ConstantVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clImEEDaSP_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit134, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit139
  %i.jz = add nuw i64 %.0447, 1                   ; 2 uses
  %i.ka = icmp ult i64 %i.jz, %i.u
  br i1 %i.ka, label %bb.c, label %.loopexit330, !llvm.loop !21926

bb.bp:                                            ; preds = %.lr.ph400, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_20ConstantVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit
  %.015399 = phi i64 [ %i.j, %.lr.ph400 ], [ %i.ua, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_20ConstantVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit ] ; 3 uses
  %i.kb = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.015399, i1 true)
  %i.kc = trunc nuw nsw i64 %i.kb to i32
  %i.kd = or disjoint i32 %i.l, %i.kc             ; 3 uses
  %i.ke = load ptr, ptr %i.m, align 8, !tbaa !21763 ; 2 uses
  %i.kf = load ptr, ptr %i.k, align 8, !tbaa !21860, !nonnull !310, !align !416 ; 4 uses
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !21861, !nonnull !310, !align !416
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 88
  store i32 %i.kd, ptr %i.kh, align 8, !tbaa !789
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !21863, !nonnull !310, !align !416
  %i.kk = load ptr, ptr %i.kf, align 8, !tbaa !21861, !nonnull !310, !align !416 ; 4 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 32
  %i.km = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !21864, !noalias !21927, !nonnull !310, !align !416 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24, !noalias !21930
  %.sroa.0.0.copyload.i142 = load i64, ptr %i.kn, align 8, !noalias !21930 ; 3 uses
  %.sroa.2.0..sroa_idx.i143 = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %.sroa.2.0.copyload.i144 = load ptr, ptr %.sroa.2.0..sroa_idx.i143, align 8, !tbaa !18, !noalias !21930
  store i64 %.sroa.0.0.copyload.i142, ptr %10, align 8, !noalias !21930
  store ptr %.sroa.2.0.copyload.i144, ptr %i.n, align 8, !noalias !21930
  %i.ko = trunc i64 %.sroa.0.0.copyload.i142 to i32 ; 2 uses
  %i.kp = icmp eq i32 %i.ko, 0
  br i1 %i.kp, label %.invoke752, label %.noexc29.preheader

.noexc29.preheader:                               ; preds = %bb.bp
  %i.kq = and i64 %.sroa.0.0.copyload.i142, 4294967295
  br label %.noexc29

.noexc29:                                         ; preds = %.noexc29.preheader, %bb.cg
  %i.kr = phi i64 [ %i.nq, %bb.cg ], [ %i.kq, %.noexc29.preheader ]
  %i.ks = phi i32 [ %i.np, %bb.cg ], [ %i.ko, %.noexc29.preheader ]
  %i.kt = phi i64 [ %i.no, %bb.cg ], [ 0, %.noexc29.preheader ] ; 2 uses
  %.036.i358 = phi i32 [ %i.nn, %bb.cg ], [ 0, %.noexc29.preheader ] ; 11 uses
  %i.ku = icmp ult i32 %i.ks, 13
  %i.kv = load ptr, ptr %i.n, align 8
  %i.kw = select i1 %i.ku, ptr %i.o, ptr %i.kv
  %i.kx = getelementptr inbounds i8, ptr %i.kw, i64 %i.kt ; 4 uses
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !18  ; 6 uses
  %i.kz = zext i8 %i.ky to i32                    ; 4 uses
  %i.la = icmp sgt i8 %i.ky, -1
  br i1 %i.la, label %_ZL18utf8proc_codepointPKcS0_Ri.exit156.thread283, label %bb.bq

bb.bq:                                            ; preds = %.noexc29
  %gepdiff = sub nsw i64 %i.kr, %i.kt             ; 3 uses
  %i.lb = icmp slt i64 %gepdiff, 2
  br i1 %i.lb, label %.thread293, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kx, i64 1
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !18  ; 4 uses
  %i.le = and i8 %i.ky, -32
  %or.cond.i149 = icmp eq i8 %i.le, -64
  br i1 %or.cond.i149, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.lf = shl nuw nsw i32 %i.kz, 6
  %i.lg = zext i8 %i.ld to i32
  %i.lh = add nsw i32 %i.lf, -12416
  %i.li = add nsw i32 %i.lh, %i.lg
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit156

bb.bt:                                            ; preds = %bb.br
  %i.lj = icmp eq i8 %i.ky, -19
  %i.lk = and i8 %i.ld, -96
  %i.ll = icmp eq i8 %i.lk, -96
  %or.cond46.i150 = select i1 %i.lj, i1 %i.ll, i1 false
  %i.lm = icmp eq i64 %gepdiff, 2
  %or.cond47.i151 = or i1 %i.lm, %or.cond46.i150
  br i1 %or.cond47.i151, label %.thread293, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ln = getelementptr inbounds nuw i8, ptr %i.kx, i64 2
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !18  ; 2 uses
  %i.lp = and i8 %i.ky, -16
  %or.cond5.i152 = icmp eq i8 %i.lp, -32
  br i1 %or.cond5.i152, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.lq = shl nuw nsw i32 %i.kz, 12
  %i.lr = zext i8 %i.ld to i32
  %i.ls = shl nuw nsw i32 %i.lr, 6
  %i.lt = zext i8 %i.lo to i32
  %i.lu = add nsw i32 %i.lq, -925824
  %i.lv = add nsw i32 %i.lu, %i.ls
  %i.lw = add nsw i32 %i.lv, %i.lt
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit156

bb.bw:                                            ; preds = %bb.bu
  %i.lx = icmp samesign ugt i64 %gepdiff, 3
  %i.ly = and i8 %i.ky, -8
  %or.cond8.i153 = icmp eq i8 %i.ly, -16
  %or.cond48.i154 = and i1 %i.lx, %or.cond8.i153
  br i1 %or.cond48.i154, label %bb.bx, label %.thread293

bb.bx:                                            ; preds = %bb.bw
  %i.lz = getelementptr inbounds nuw i8, ptr %i.kx, i64 3
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !18
  %i.mb = shl nuw nsw i32 %i.kz, 18
  %i.mc = zext i8 %i.ld to i32
  %i.md = shl nuw nsw i32 %i.mc, 12
  %i.me = zext i8 %i.lo to i32
  %i.mf = shl nuw nsw i32 %i.me, 6
  %i.mg = zext i8 %i.ma to i32
  %i.mh = add nsw i32 %i.mb, -63447168
  %i.mi = add nsw i32 %i.mh, %i.md
  %i.mj = add nsw i32 %i.mi, %i.mf
  %i.mk = add nsw i32 %i.mj, %i.mg
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit156

_ZL18utf8proc_codepointPKcS0_Ri.exit156:          ; preds = %bb.bs, %bb.bv, %bb.bx
  %.1235 = phi i32 [ 3, %bb.bv ], [ 4, %bb.bx ], [ 2, %bb.bs ]
  %.3.i155 = phi i32 [ %i.lw, %bb.bv ], [ %i.mk, %bb.bx ], [ %i.li, %bb.bs ] ; 2 uses
  %i.ml = icmp eq i32 %.3.i155, -1
  br i1 %i.ml, label %.thread293, label %_ZL18utf8proc_codepointPKcS0_Ri.exit156.thread283

_ZL18utf8proc_codepointPKcS0_Ri.exit156.thread283: ; preds = %.noexc29, %_ZL18utf8proc_codepointPKcS0_Ri.exit156
  %.3.i155287 = phi i32 [ %.3.i155, %_ZL18utf8proc_codepointPKcS0_Ri.exit156 ], [ %i.kz, %.noexc29 ] ; 9 uses
  %.1235286 = phi i32 [ %.1235, %_ZL18utf8proc_codepointPKcS0_Ri.exit156 ], [ 1, %.noexc29 ]
  %i.mm = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes acquire, align 8
  %i.mn = icmp eq i8 %i.mm, 0
  br i1 %i.mn, label %bb.by, label %bb.bz, !prof !101

bb.by:                                            ; preds = %_ZL18utf8proc_codepointPKcS0_Ri.exit156.thread283
  %i.mo = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes) #24
  %.not.i38 = icmp eq i32 %i.mo, 0
  br i1 %.not.i38, label %bb.bz, label %.noexc.i

.noexc.i:                                         ; preds = %bb.by
  store i64 8321515008, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes, align 8, !tbaa !370
  %i.mp = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes) #24
  br label %bb.bz

bb.bz:                                            ; preds = %.noexc.i, %bb.by, %_ZL18utf8proc_codepointPKcS0_Ri.exit156.thread283
  %i.mq = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes acquire, align 8
  %i.mr = icmp eq i8 %i.mq, 0
  br i1 %i.mr, label %bb.ca, label %bb.cb, !prof !101

bb.ca:                                            ; preds = %bb.bz
  %i.ms = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes) #24
  %.not14.i = icmp eq i32 %i.ms, 0
  br i1 %.not14.i, label %bb.cb, label %.noexc61

.noexc61:                                         ; preds = %bb.ca
  store i64 3298534885247, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, align 8
  store i64 2147483648, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, i64 8), align 8
  %i.mt = call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes) #24
  br label %bb.cb

bb.cb:                                            ; preds = %.noexc61, %bb.ca, %bb.bz
  %i.mu = icmp slt i32 %.3.i155287, 0
  br i1 %i.mu, label %.thread293, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.mv = icmp samesign ult i32 %.3.i155287, 5000
  br i1 %i.mv, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.mw = icmp samesign ugt i32 %.3.i155287, 32
  br i1 %i.mw, label %.thread293, label %.split291

.split291:                                        ; preds = %bb.cd
  %i.mx = zext nneg i32 %.3.i155287 to i64
  %i.my = load i64, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes, align 8, !tbaa !370
  %i.mz = shl nuw nsw i64 1, %i.mx
  %i.na = and i64 %i.my, %i.mz
  %.not317 = icmp eq i64 %i.na, 0
  br i1 %.not317, label %.thread293, label %bb.cg

bb.ce:                                            ; preds = %bb.cc
  %i.nb = icmp samesign ugt i32 %.3.i155287, 8191
  br i1 %i.nb, label %bb.cf, label %.split289

bb.cf:                                            ; preds = %bb.ce
  %i.nc = icmp samesign ult i32 %.3.i155287, 8288
  br i1 %i.nc, label %.split290, label %.noexc30

.split290:                                        ; preds = %bb.cf
  %i.nd = add nsw i32 %.3.i155287, -8192
  %i.ne = zext nneg i32 %i.nd to i64              ; 2 uses
  %i.nf = lshr i64 %i.ne, 6
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, i64 %i.nf
  %i.nh = load i64, ptr %i.ng, align 8, !tbaa !370
  %i.ni = and i64 %i.ne, 63
  %i.nj = shl nuw i64 1, %i.ni
  %i.nk = and i64 %i.nh, %i.nj
  %.not316 = icmp eq i64 %i.nk, 0
  br i1 %.not316, label %.thread293, label %bb.cg

.split289:                                        ; preds = %bb.ce
  %i.nl = icmp eq i32 %.3.i155287, 5760
  br i1 %i.nl, label %bb.cg, label %.thread293

.noexc30:                                         ; preds = %bb.cf
  %i.nm = icmp eq i32 %.3.i155287, 12288
  br i1 %i.nm, label %bb.cg, label %.thread293

bb.cg:                                            ; preds = %.noexc30, %.split289, %.split290, %.split291
  %i.nn = add nsw i32 %.1235286, %.036.i358       ; 3 uses
  %i.no = sext i32 %i.nn to i64                   ; 2 uses
  %i.np = load i32, ptr %10, align 8, !tbaa !824  ; 2 uses
  %i.nq = zext i32 %i.np to i64                   ; 2 uses
  %i.nr = icmp ugt i64 %i.nq, %i.no
  br i1 %i.nr, label %.noexc29, label %.thread293

.thread293:                                       ; preds = %bb.cg, %.noexc30, %_ZL18utf8proc_codepointPKcS0_Ri.exit156, %.split289, %.split290, %.split291, %bb.bw, %bb.bq, %bb.bt, %bb.cb, %bb.cd
  %.036.i.lcssa.ph = phi i32 [ %i.nn, %bb.cg ], [ %.036.i358, %.noexc30 ], [ %.036.i358, %_ZL18utf8proc_codepointPKcS0_Ri.exit156 ], [ %.036.i358, %.split289 ], [ %.036.i358, %.split290 ], [ %.036.i358, %.split291 ], [ %.036.i358, %bb.bw ], [ %.036.i358, %bb.bq ], [ %.036.i358, %bb.bt ], [ %.036.i358, %bb.cb ], [ %.036.i358, %bb.cd ] ; 2 uses
  %.pre700 = load i32, ptr %10, align 8, !tbaa !824 ; 2 uses
  %.pre701 = zext i32 %.pre700 to i64             ; 2 uses
  %i.ns = sext i32 %.036.i.lcssa.ph to i64        ; 6 uses
  %.not.i = icmp ugt i64 %.pre701, %i.ns
  br i1 %.not.i, label %.noexc32, label %.invoke752

.noexc32:                                         ; preds = %.thread293
  %i.nt = icmp ult i32 %.pre700, 13
  %i.nu = load ptr, ptr %i.n, align 8
  %i.nv = select i1 %i.nt, ptr %i.o, ptr %i.nu    ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 %i.ns ; 4 uses
  %i.nx = add nsw i64 %.pre701, -1                ; 3 uses
  %.not44.i377 = icmp samesign ult i64 %i.nx, %i.ns
  br i1 %.not44.i377, label %.noexc33.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.noexc32
  %invariant.op790 = sub i64 1, %i.ns
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.noexc33
  %.033.i378 = phi i64 [ %i.qf, %.noexc33 ], [ %i.nx, %.lr.ph.preheader ] ; 15 uses
  %.reass.reass.reass = add i64 %.033.i378, %invariant.op790 ; 3 uses
  %.not.i41 = icmp eq i64 %.reass.reass.reass, 0
  br i1 %.not.i41, label %.noexc33.thread, label %bb.ch

bb.ch:                                            ; preds = %.lr.ph
  %i.ny = getelementptr i8, ptr %i.nv, i64 %.033.i378 ; 2 uses
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !18  ; 2 uses
  %i.oa = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes acquire, align 8
end_hunk_3
begin_hunk_4_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_16FlatVectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi:bb.a
bb.br:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_16FlatVectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSJ_SN_ENKUlSN_E0_clIiEEDaSN_.exit
  %i.lo = load ptr, ptr %13, align 8, !tbaa !607
  %.not.i123 = icmp eq ptr %i.lo, null
  br i1 %.not.i123, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit124, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit124

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit124: ; preds = %bb.br, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_16FlatVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit

bb.bt:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_16FlatVectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSJ_SN_ENKUlSN_E0_clIiEEDaSN_.exit
  %i.lp = landingpad { ptr, i32 }
          cleanup
  %i.lq = load ptr, ptr %13, align 8, !tbaa !607
  %.not.i125 = icmp eq ptr %i.lq, null
  br i1 %.not.i125, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit126, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit126

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit126: ; preds = %bb.bt, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %bb.bv

bb.bv:                                            ; preds = %.loopexit149, %.loopexit.split-lp150, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit126
  %.pn16.i = phi { ptr, i32 } [ %i.lp, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit126 ], [ %lpad.loopexit151, %.loopexit149 ], [ %lpad.loopexit.split-lp152, %.loopexit.split-lp150 ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bq
  %i.lr = landingpad { ptr, i32 }
          catch ptr null
  %i.ls = extractvalue { ptr, i32 } %i.lr, 0
  call void @__clang_call_terminate(ptr %i.ls) #51
  unreachable

bb.bx:                                            ; preds = %.loopexit145
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_16FlatVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit113, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit120, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit124
  %i.lt = add i64 %.015172, -1
  %i.lu = and i64 %i.lt, %.015172                 ; 2 uses
  %.not = icmp eq i64 %i.lu, 0
  br i1 %.not, label %.loopexit142, label %bb.an, !llvm.loop !22034

.loopexit142:                                     ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_16FlatVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clImEEDaSP_.exit, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_16FlatVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit, %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_16FlatVectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKS1_SR_ST_EUlSR_E_EEvSR_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef byval(%class.anon.5105) align 8 %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.474", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.sroa.4 = alloca [12 x i8], align 4            ; 8 uses
  %4 = alloca %"struct.facebook::velox::StringView", align 8 ; 7 uses
  %5 = alloca %"class.facebook::velox::Status", align 8 ; 8 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %7 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !1091, !range !309, !noundef !310
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i:     ; preds = %bb.a
  %.0.in.pre.i = load i8, ptr %i.a, align 4, !tbaa !87, !range !309
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1017
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1018 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !1016
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !745    ; 2 uses
  %.not.i.i19 = icmp sgt i32 %i.i, 0
  br i1 %.not.i.i19, label %bb.e, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.i, 2147483584                 ; 3 uses
  %i.o = zext nneg i32 %i.n to i64
  %.not37.i.i.not.i309.not = icmp eq i32 %i.n, 0
  br i1 %.not37.i.i.not.i309.not, label %.critedge.i.i.i, label %.lr.ph311

bb.f:                                             ; preds = %.lr.ph311
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i310, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.o
  br i1 %.not37.i.i.not.i, label %.lr.ph311, label %.critedge.i.i.i, !llvm.loop !1172

.lr.ph311:                                        ; preds = %bb.e, %bb.f
  %indvars.iv.i310 = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i310, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !370
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, !llvm.loop !1172

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
  %i.y = load i64, ptr %i.x, align 8, !tbaa !370
  %.demorgan.i = or i64 %i.y, %notmask.i40.i.i.i
  %i.z = icmp eq i64 %.demorgan.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i:   ; preds = %.lr.ph311, %bb.g, %.critedge.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph311 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit: ; preds = %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i
  %.0.in.i = phi i8 [ %.0.in.pre.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i ]
  %.0.i = trunc nuw i8 %.0.in.i to i1
  br i1 %.0.i, label %bb.h, label %bb.bv

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1018 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !1017 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %.lr.ph159, label %.loopexit106

.lr.ph159:                                        ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ao = sext i32 %i.ag to i64
  %.sroa.4.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4
  %.sroa.4.4..sroa_idx317 = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph159, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_16FlatVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit
  %indvars.iv = phi i64 [ %i.ao, %.lr.ph159 ], [ %indvars.iv.next, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_16FlatVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit ] ; 3 uses
  %i.ap = load ptr, ptr %i.ai, align 8, !tbaa !21767 ; 2 uses
  %i.aq = load ptr, ptr %1, align 8, !tbaa !22035, !nonnull !310, !align !416 ; 4 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !22036, !nonnull !310, !align !416
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 88
  %i.at = trunc nsw i64 %indvars.iv to i32        ; 3 uses
  store i32 %i.at, ptr %i.as, align 8, !tbaa !789
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !22038, !nonnull !310, !align !416
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !22036, !nonnull !310, !align !416 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !22039, !noalias !22041, !nonnull !310, !align !416
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !22044
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !2669, !noalias !22044
  %i.bb = getelementptr inbounds [16 x i8], ptr %i.ba, i64 %indvars.iv ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.bb, align 8, !noalias !22044 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !18, !noalias !22044
  store i64 %.sroa.0.0.copyload.i, ptr %4, align 8, !noalias !22044
  store ptr %.sroa.2.0.copyload.i, ptr %i.aj, align 8, !noalias !22044
  %i.bc = trunc i64 %.sroa.0.0.copyload.i to i32  ; 2 uses
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %.invoke, label %.noexc11.preheader

.noexc11.preheader:                               ; preds = %bb.i
  %i.be = and i64 %.sroa.0.0.copyload.i, 4294967295
  br label %.noexc11

.noexc11:                                         ; preds = %.noexc11.preheader, %bb.z
  %i.bf = phi i64 [ %i.ee, %bb.z ], [ %i.be, %.noexc11.preheader ]
  %i.bg = phi i32 [ %i.ed, %bb.z ], [ %i.bc, %.noexc11.preheader ]
  %i.bh = phi i64 [ %i.ec, %bb.z ], [ 0, %.noexc11.preheader ] ; 2 uses
  %.036.i.i118 = phi i32 [ %i.eb, %bb.z ], [ 0, %.noexc11.preheader ] ; 11 uses
  %i.bi = icmp ult i32 %i.bg, 13
  %i.bj = load ptr, ptr %i.aj, align 8
  %i.bk = select i1 %i.bi, ptr %i.ak, ptr %i.bj
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 %i.bh ; 4 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !18, !noalias !22047 ; 6 uses
  %i.bn = zext i8 %i.bm to i32                    ; 4 uses
  %i.bo = icmp sgt i8 %i.bm, -1
  br i1 %i.bo, label %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread71, label %bb.j

bb.j:                                             ; preds = %.noexc11
  %gepdiff = sub nsw i64 %i.bf, %i.bh             ; 3 uses
  %i.bp = icmp slt i64 %gepdiff, 2
  br i1 %i.bp, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !18, !noalias !22047 ; 4 uses
  %i.bs = and i8 %i.bm, -32
  %or.cond.i = icmp eq i8 %i.bs, -64
  br i1 %or.cond.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bt = shl nuw nsw i32 %i.bn, 6
  %i.bu = zext i8 %i.br to i32
  %i.bv = add nsw i32 %i.bt, -12416
  %i.bw = add nsw i32 %i.bv, %i.bu
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

bb.m:                                             ; preds = %bb.k
  %i.bx = icmp eq i8 %i.bm, -19
  %i.by = and i8 %i.br, -96
  %i.bz = icmp eq i8 %i.by, -96
  %or.cond46.i = select i1 %i.bx, i1 %i.bz, i1 false
  %i.ca = icmp eq i64 %gepdiff, 2
  %or.cond47.i = or i1 %i.ca, %or.cond46.i
  br i1 %or.cond47.i, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !18, !noalias !22047 ; 2 uses
  %i.cd = and i8 %i.bm, -16
  %or.cond5.i = icmp eq i8 %i.cd, -32
  br i1 %or.cond5.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ce = shl nuw nsw i32 %i.bn, 12
  %i.cf = zext i8 %i.br to i32
  %i.cg = shl nuw nsw i32 %i.cf, 6
  %i.ch = zext i8 %i.cc to i32
  %i.ci = add nsw i32 %i.ce, -925824
  %i.cj = add nsw i32 %i.ci, %i.cg
  %i.ck = add nsw i32 %i.cj, %i.ch
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

bb.p:                                             ; preds = %bb.n
  %i.cl = icmp samesign ugt i64 %gepdiff, 3
  %i.cm = and i8 %i.bm, -8
  %or.cond8.i = icmp eq i8 %i.cm, -16
  %or.cond48.i = and i1 %i.cl, %or.cond8.i
  br i1 %or.cond48.i, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bl, i64 3
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !18, !noalias !22047
  %i.cp = shl nuw nsw i32 %i.bn, 18
  %i.cq = zext i8 %i.br to i32
  %i.cr = shl nuw nsw i32 %i.cq, 12
  %i.cs = zext i8 %i.cc to i32
  %i.ct = shl nuw nsw i32 %i.cs, 6
  %i.cu = zext i8 %i.co to i32
  %i.cv = add nsw i32 %i.cp, -63447168
  %i.cw = add nsw i32 %i.cv, %i.cr
  %i.cx = add nsw i32 %i.cw, %i.ct
  %i.cy = add nsw i32 %i.cx, %i.cu
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

_ZL18utf8proc_codepointPKcS0_Ri.exit:             ; preds = %bb.l, %bb.o, %bb.q
  %.167 = phi i32 [ 3, %bb.o ], [ 4, %bb.q ], [ 2, %bb.l ]
  %.3.i = phi i32 [ %i.ck, %bb.o ], [ %i.cy, %bb.q ], [ %i.bw, %bb.l ] ; 2 uses
  %i.cz = icmp eq i32 %.3.i, -1
  br i1 %i.cz, label %.thread, label %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread71

_ZL18utf8proc_codepointPKcS0_Ri.exit.thread71:    ; preds = %.noexc11, %_ZL18utf8proc_codepointPKcS0_Ri.exit
  %.3.i75 = phi i32 [ %.3.i, %_ZL18utf8proc_codepointPKcS0_Ri.exit ], [ %i.bn, %.noexc11 ] ; 9 uses
  %.16774 = phi i32 [ %.167, %_ZL18utf8proc_codepointPKcS0_Ri.exit ], [ 1, %.noexc11 ]
  %i.da = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes acquire, align 8, !noalias !22047
  %i.db = icmp eq i8 %i.da, 0
  br i1 %i.db, label %bb.r, label %bb.s, !prof !101

bb.r:                                             ; preds = %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread71
  %i.dc = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes) #24, !noalias !22047
  %.not.i5.i = icmp eq i32 %i.dc, 0
  br i1 %.not.i5.i, label %bb.s, label %.noexc.i.i

.noexc.i.i:                                       ; preds = %bb.r
  store i64 8321515008, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes, align 8, !tbaa !370, !noalias !22047
  %i.dd = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes), !noalias !22047 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes) #24, !noalias !22047
  br label %bb.s

bb.s:                                             ; preds = %.noexc.i.i, %bb.r, %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread71
  %i.de = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes acquire, align 8, !noalias !22047
  %i.df = icmp eq i8 %i.de, 0
  br i1 %i.df, label %bb.t, label %bb.u, !prof !101

bb.t:                                             ; preds = %bb.s
  %i.dg = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes) #24, !noalias !22047
  %.not14.i.i = icmp eq i32 %i.dg, 0
  br i1 %.not14.i.i, label %bb.u, label %.noexc23.i

.noexc23.i:                                       ; preds = %bb.t
  store i64 3298534885247, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, align 8, !noalias !22047
  store i64 2147483648, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, i64 8), align 8, !noalias !22047
  %i.dh = call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes), !noalias !22047 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes) #24, !noalias !22047
  br label %bb.u

bb.u:                                             ; preds = %.noexc23.i, %bb.t, %bb.s
  %i.di = icmp slt i32 %.3.i75, 0
  br i1 %i.di, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dj = icmp samesign ult i32 %.3.i75, 5000
  br i1 %i.dj, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dk = icmp samesign ugt i32 %.3.i75, 32
  br i1 %i.dk, label %.thread, label %.split78

.split78:                                         ; preds = %bb.w
  %i.dl = zext nneg i32 %.3.i75 to i64
  %i.dm = load i64, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes, align 8, !tbaa !370, !noalias !22047
  %i.dn = shl nuw nsw i64 1, %i.dl
  %i.do = and i64 %i.dm, %i.dn
  %.not101 = icmp eq i64 %i.do, 0
  br i1 %.not101, label %.thread, label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.dp = icmp samesign ugt i32 %.3.i75, 8191
  br i1 %i.dp, label %bb.y, label %.split

bb.y:                                             ; preds = %bb.x
  %i.dq = icmp samesign ult i32 %.3.i75, 8288
  br i1 %i.dq, label %.split77, label %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i

.split77:                                         ; preds = %bb.y
  %i.dr = add nsw i32 %.3.i75, -8192
  %i.ds = zext nneg i32 %i.dr to i64              ; 2 uses
  %i.dt = lshr i64 %i.ds, 6
  %i.du = getelementptr inbounds nuw [8 x i8], ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, i64 %i.dt
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !370, !noalias !22047
  %i.dw = and i64 %i.ds, 63
  %i.dx = shl nuw i64 1, %i.dw
  %i.dy = and i64 %i.dv, %i.dx
  %.not = icmp eq i64 %i.dy, 0
  br i1 %.not, label %.thread, label %bb.z

.split:                                           ; preds = %bb.x
  %i.dz = icmp eq i32 %.3.i75, 5760
  br i1 %i.dz, label %bb.z, label %.thread

_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i: ; preds = %bb.y
  %i.ea = icmp eq i32 %.3.i75, 12288
  br i1 %i.ea, label %bb.z, label %.thread

bb.z:                                             ; preds = %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i, %.split, %.split77, %.split78
  %i.eb = add nsw i32 %.16774, %.036.i.i118       ; 3 uses
  %i.ec = sext i32 %i.eb to i64                   ; 2 uses
  %i.ed = load i32, ptr %4, align 8, !tbaa !824, !noalias !22047 ; 2 uses
  %i.ee = zext i32 %i.ed to i64                   ; 2 uses
  %i.ef = icmp ugt i64 %i.ee, %i.ec
  br i1 %i.ef, label %.noexc11, label %.thread

.thread:                                          ; preds = %bb.z, %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i, %_ZL18utf8proc_codepointPKcS0_Ri.exit, %.split, %.split77, %.split78, %bb.p, %bb.j, %bb.m, %bb.u, %bb.w
  %.036.i.i.lcssa.ph = phi i32 [ %i.eb, %bb.z ], [ %.036.i.i118, %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i ], [ %.036.i.i118, %_ZL18utf8proc_codepointPKcS0_Ri.exit ], [ %.036.i.i118, %.split ], [ %.036.i.i118, %.split77 ], [ %.036.i.i118, %.split78 ], [ %.036.i.i118, %bb.p ], [ %.036.i.i118, %bb.j ], [ %.036.i.i118, %bb.m ], [ %.036.i.i118, %bb.u ], [ %.036.i.i118, %bb.w ] ; 2 uses
  %.pre = load i32, ptr %4, align 8, !tbaa !824, !noalias !22047 ; 2 uses
  %.pre280 = zext i32 %.pre to i64                ; 2 uses
  %i.eg = sext i32 %.036.i.i.lcssa.ph to i64      ; 6 uses
  %.not.i.i = icmp ugt i64 %.pre280, %i.eg
  br i1 %.not.i.i, label %.noexc15, label %.invoke

.noexc15:                                         ; preds = %.thread
  %i.eh = icmp ult i32 %.pre, 13
  %i.ei = load ptr, ptr %i.aj, align 8
  %i.ej = select i1 %i.eh, ptr %i.ak, ptr %i.ei   ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.eg ; 4 uses
  %i.el = add nsw i64 %.pre280, -1                ; 3 uses
  %.not44.i.i137 = icmp samesign ult i64 %i.el, %i.eg
  br i1 %.not44.i.i137, label %_ZN8facebook5velox9functions10stringImpl25endsWithUnicodeWhiteSpaceEPKcm.exit.i.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.noexc15
  %invariant.op = sub i64 1, %i.eg
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN8facebook5velox9functions10stringImpl25endsWithUnicodeWhiteSpaceEPKcm.exit.i
  %.033.i.i138 = phi i64 [ %i.gt, %_ZN8facebook5velox9functions10stringImpl25endsWithUnicodeWhiteSpaceEPKcm.exit.i ], [ %i.el, %.lr.ph.preheader ] ; 15 uses
  %.reass.reass.reass = add i64 %.033.i.i138, %invariant.op ; 3 uses
  %.not.i6.i = icmp eq i64 %.reass.reass.reass, 0
  br i1 %.not.i6.i, label %_ZN8facebook5velox9functions10stringImpl25endsWithUnicodeWhiteSpaceEPKcm.exit.i.thread, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph
  %i.em = getelementptr i8, ptr %i.ej, i64 %.033.i.i138 ; 2 uses
  %i.en = load i8, ptr %i.em, align 1, !tbaa !18, !noalias !22047 ; 2 uses
  %i.eo = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes acquire, align 8, !noalias !22047
end_hunk_4
begin_hunk_5_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_16FlatVectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKS1_SR_ST_EUlSR_E_EEvSR_:bb.a
  %i.km = extractvalue { ptr, i32 } %i.kl, 0
  call void @__clang_call_terminate(ptr %i.km) #51
  unreachable

bb.bu:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_16FlatVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit50, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit55
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit106, label %bb.i, !llvm.loop !22062

bb.bv:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.kn = load ptr, ptr %0, align 8, !tbaa !745
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !1017
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.kr = load i32, ptr %i.kq, align 8, !tbaa !1018
  tail call void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_16FlatVectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_(ptr noundef %i.kn, i32 noundef %i.kp, i32 noundef %i.kr, i1 noundef zeroext true, ptr noundef nonnull byval(%class.anon.5105) align 8 %1)
  br label %.loopexit106

.loopexit106:                                     ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_16FlatVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit, %bb.h, %bb.bv
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_16FlatVectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef byval(%class.anon.5105) align 8 %4) local_unnamed_addr #0 comdat {
bb.a:
  %5 = alloca %class.anon.5107, align 8           ; 6 uses
  %6 = alloca %class.anon.5106, align 8           ; 8 uses
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
  br i1 %.not.i, label %bb.b, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS4_10VectorExecEEESC_NS0_7VarcharENS0_15ConstantCheckerIJSE_EEEJSE_EEEE8applyUdfIZNKSI_7iterateIJNS4_16FlatVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSO_SS_EUlSS_E_ZNKSJ_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS13_EEvS15_iibSS_EUliE_EEviiSS_SU_.exit

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
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_16FlatVectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.g, i64 noundef %i.q)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS4_10VectorExecEEESC_NS0_7VarcharENS0_15ConstantCheckerIJSE_EEEJSE_EEEE8applyUdfIZNKSI_7iterateIJNS4_16FlatVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSO_SS_EUlSS_E_ZNKSJ_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS13_EEvS15_iibSS_EUliE_EEviiSS_SU_.exit

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
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_16FlatVectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.r, i64 noundef %i.x)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = add nsw i32 %i.d, 64                     ; 2 uses
  %.not3337.i = icmp sgt i32 %i.y, %i.e
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.not34.i = icmp eq i32 %2, %i.e
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS4_10VectorExecEEESC_NS0_7VarcharENS0_15ConstantCheckerIJSE_EEEJSE_EEEE8applyUdfIZNKSI_7iterateIJNS4_16FlatVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSO_SS_EUlSS_E_ZNKSJ_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS13_EEvS15_iibSS_EUliE_EEviiSS_SU_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.z = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.d, %bb.f ]
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_16FlatVectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !22063

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i36.i = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask.i36.i, -1
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_16FlatVectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.ac, i64 noundef %i.af)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS4_10VectorExecEEESC_NS0_7VarcharENS0_15ConstantCheckerIJSE_EEEJSE_EEEE8applyUdfIZNKSI_7iterateIJNS4_16FlatVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSO_SS_EUlSS_E_ZNKSJ_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS13_EEvS15_iibSS_EUliE_EEviiSS_SU_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS4_10VectorExecEEESC_NS0_7VarcharENS0_15ConstantCheckerIJSE_EEEJSE_EEEE8applyUdfIZNKSI_7iterateIJNS4_16FlatVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSO_SS_EUlSS_E_ZNKSJ_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS13_EEvS15_iibSS_EUliE_EEviiSS_SU_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_16FlatVectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.474", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.sroa.4 = alloca [12 x i8], align 4            ; 8 uses
  %5 = alloca %"struct.facebook::velox::StringView", align 8 ; 7 uses
  %6 = alloca %"class.facebook::velox::Status", align 8 ; 8 uses
  %7 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %8 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !22064, !range !309, !noundef !310
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22066
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !370
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit114, label %.preheader113

.preheader113:                                    ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.4.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4
  %.sroa.4.4..sroa_idx319 = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.preheader113, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_16FlatVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit
  %.0166 = phi i64 [ %i.k, %.preheader113 ], [ %i.jv, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_16FlatVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit ] ; 3 uses
  %i.t = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0166, i1 true)
  %i.u = trunc nuw nsw i64 %i.t to i32
  %i.v = or disjoint i32 %i.m, %i.u               ; 4 uses
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !21767 ; 2 uses
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !22035, !nonnull !310, !align !416 ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !22036, !nonnull !310, !align !416
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 88
  store i32 %i.v, ptr %i.z, align 8, !tbaa !789
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !22038, !nonnull !310, !align !416
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !22036, !nonnull !310, !align !416 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !22039, !noalias !22067, !nonnull !310, !align !416
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !22070
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !2669, !noalias !22070
  %i.ah = sext i32 %i.v to i64
  %i.ai = getelementptr inbounds [16 x i8], ptr %i.ag, i64 %i.ah ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.ai, align 8, !noalias !22070 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !18, !noalias !22070
  store i64 %.sroa.0.0.copyload.i, ptr %5, align 8, !noalias !22070
  store ptr %.sroa.2.0.copyload.i, ptr %i.o, align 8, !noalias !22070
  %i.aj = trunc i64 %.sroa.0.0.copyload.i to i32  ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %.invoke, label %.noexc18.preheader

.noexc18.preheader:                               ; preds = %bb.b
  %i.al = and i64 %.sroa.0.0.copyload.i, 4294967295
  br label %.noexc18

.noexc18:                                         ; preds = %.noexc18.preheader, %bb.s
  %i.am = phi i64 [ %i.dl, %bb.s ], [ %i.al, %.noexc18.preheader ]
  %i.an = phi i32 [ %i.dk, %bb.s ], [ %i.aj, %.noexc18.preheader ]
  %i.ao = phi i64 [ %i.dj, %bb.s ], [ 0, %.noexc18.preheader ] ; 2 uses
  %.036.i.i126 = phi i32 [ %i.di, %bb.s ], [ 0, %.noexc18.preheader ] ; 11 uses
  %i.ap = icmp ult i32 %i.an, 13
  %i.aq = load ptr, ptr %i.o, align 8
  %i.ar = select i1 %i.ap, ptr %i.p, ptr %i.aq
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %i.ao ; 4 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !18, !noalias !22073 ; 6 uses
  %i.au = zext i8 %i.at to i32                    ; 4 uses
  %i.av = icmp sgt i8 %i.at, -1
  br i1 %i.av, label %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread77, label %bb.c

bb.c:                                             ; preds = %.noexc18
  %gepdiff = sub nsw i64 %i.am, %i.ao             ; 3 uses
  %i.aw = icmp slt i64 %gepdiff, 2
  br i1 %i.aw, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !18, !noalias !22073 ; 4 uses
  %i.az = and i8 %i.at, -32
  %or.cond.i = icmp eq i8 %i.az, -64
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ba = shl nuw nsw i32 %i.au, 6
  %i.bb = zext i8 %i.ay to i32
  %i.bc = add nsw i32 %i.ba, -12416
  %i.bd = add nsw i32 %i.bc, %i.bb
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

bb.f:                                             ; preds = %bb.d
  %i.be = icmp eq i8 %i.at, -19
  %i.bf = and i8 %i.ay, -96
  %i.bg = icmp eq i8 %i.bf, -96
  %or.cond46.i = select i1 %i.be, i1 %i.bg, i1 false
  %i.bh = icmp eq i64 %gepdiff, 2
  %or.cond47.i = or i1 %i.bh, %or.cond46.i
  br i1 %or.cond47.i, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !18, !noalias !22073 ; 2 uses
  %i.bk = and i8 %i.at, -16
  %or.cond5.i = icmp eq i8 %i.bk, -32
  br i1 %or.cond5.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bl = shl nuw nsw i32 %i.au, 12
  %i.bm = zext i8 %i.ay to i32
  %i.bn = shl nuw nsw i32 %i.bm, 6
  %i.bo = zext i8 %i.bj to i32
  %i.bp = add nsw i32 %i.bl, -925824
  %i.bq = add nsw i32 %i.bp, %i.bn
  %i.br = add nsw i32 %i.bq, %i.bo
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

bb.i:                                             ; preds = %bb.g
  %i.bs = icmp samesign ugt i64 %gepdiff, 3
  %i.bt = and i8 %i.at, -8
  %or.cond8.i = icmp eq i8 %i.bt, -16
  %or.cond48.i = and i1 %i.bs, %or.cond8.i
  br i1 %or.cond48.i, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.as, i64 3
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !18, !noalias !22073
  %i.bw = shl nuw nsw i32 %i.au, 18
  %i.bx = zext i8 %i.ay to i32
  %i.by = shl nuw nsw i32 %i.bx, 12
  %i.bz = zext i8 %i.bj to i32
  %i.ca = shl nuw nsw i32 %i.bz, 6
  %i.cb = zext i8 %i.bv to i32
  %i.cc = add nsw i32 %i.bw, -63447168
  %i.cd = add nsw i32 %i.cc, %i.by
  %i.ce = add nsw i32 %i.cd, %i.ca
  %i.cf = add nsw i32 %i.ce, %i.cb
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

_ZL18utf8proc_codepointPKcS0_Ri.exit:             ; preds = %bb.e, %bb.h, %bb.j
  %.173 = phi i32 [ 3, %bb.h ], [ 4, %bb.j ], [ 2, %bb.e ]
  %.3.i = phi i32 [ %i.br, %bb.h ], [ %i.cf, %bb.j ], [ %i.bd, %bb.e ] ; 2 uses
  %i.cg = icmp eq i32 %.3.i, -1
  br i1 %i.cg, label %.thread, label %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread77

_ZL18utf8proc_codepointPKcS0_Ri.exit.thread77:    ; preds = %.noexc18, %_ZL18utf8proc_codepointPKcS0_Ri.exit
  %.3.i81 = phi i32 [ %.3.i, %_ZL18utf8proc_codepointPKcS0_Ri.exit ], [ %i.au, %.noexc18 ] ; 9 uses
  %.17380 = phi i32 [ %.173, %_ZL18utf8proc_codepointPKcS0_Ri.exit ], [ 1, %.noexc18 ]
  %i.ch = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes acquire, align 8, !noalias !22073
  %i.ci = icmp eq i8 %i.ch, 0
  br i1 %i.ci, label %bb.k, label %bb.l, !prof !101

bb.k:                                             ; preds = %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread77
  %i.cj = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes) #24, !noalias !22073
  %.not.i5.i = icmp eq i32 %i.cj, 0
  br i1 %.not.i5.i, label %bb.l, label %.noexc.i.i

.noexc.i.i:                                       ; preds = %bb.k
  store i64 8321515008, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes, align 8, !tbaa !370, !noalias !22073
  %i.ck = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes), !noalias !22073 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes) #24, !noalias !22073
  br label %bb.l

bb.l:                                             ; preds = %.noexc.i.i, %bb.k, %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread77
  %i.cl = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes acquire, align 8, !noalias !22073
  %i.cm = icmp eq i8 %i.cl, 0
  br i1 %i.cm, label %bb.m, label %bb.n, !prof !101

bb.m:                                             ; preds = %bb.l
  %i.cn = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes) #24, !noalias !22073
  %.not14.i.i = icmp eq i32 %i.cn, 0
  br i1 %.not14.i.i, label %bb.n, label %.noexc23.i

.noexc23.i:                                       ; preds = %bb.m
  store i64 3298534885247, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, align 8, !noalias !22073
  store i64 2147483648, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, i64 8), align 8, !noalias !22073
  %i.co = call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes), !noalias !22073 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes) #24, !noalias !22073
  br label %bb.n

bb.n:                                             ; preds = %.noexc23.i, %bb.m, %bb.l
  %i.cp = icmp slt i32 %.3.i81, 0
  br i1 %i.cp, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cq = icmp samesign ult i32 %.3.i81, 5000
  br i1 %i.cq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cr = icmp samesign ugt i32 %.3.i81, 32
  br i1 %i.cr, label %.thread, label %.split84

.split84:                                         ; preds = %bb.p
  %i.cs = zext nneg i32 %.3.i81 to i64
  %i.ct = load i64, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes, align 8, !tbaa !370, !noalias !22073
  %i.cu = shl nuw nsw i64 1, %i.cs
  %i.cv = and i64 %i.ct, %i.cu
  %.not108 = icmp eq i64 %i.cv, 0
  br i1 %.not108, label %.thread, label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.cw = icmp samesign ugt i32 %.3.i81, 8191
  br i1 %i.cw, label %bb.r, label %.split

bb.r:                                             ; preds = %bb.q
  %i.cx = icmp samesign ult i32 %.3.i81, 8288
  br i1 %i.cx, label %.split83, label %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i

.split83:                                         ; preds = %bb.r
  %i.cy = add nsw i32 %.3.i81, -8192
  %i.cz = zext nneg i32 %i.cy to i64              ; 2 uses
  %i.da = lshr i64 %i.cz, 6
  %i.db = getelementptr inbounds nuw [8 x i8], ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, i64 %i.da
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !370, !noalias !22073
  %i.dd = and i64 %i.cz, 63
  %i.de = shl nuw i64 1, %i.dd
  %i.df = and i64 %i.dc, %i.de
  %.not107 = icmp eq i64 %i.df, 0
  br i1 %.not107, label %.thread, label %bb.s

.split:                                           ; preds = %bb.q
  %i.dg = icmp eq i32 %.3.i81, 5760
  br i1 %i.dg, label %bb.s, label %.thread

_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i: ; preds = %bb.r
  %i.dh = icmp eq i32 %.3.i81, 12288
  br i1 %i.dh, label %bb.s, label %.thread

bb.s:                                             ; preds = %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i, %.split, %.split83, %.split84
  %i.di = add nsw i32 %.17380, %.036.i.i126       ; 3 uses
  %i.dj = sext i32 %i.di to i64                   ; 2 uses
  %i.dk = load i32, ptr %5, align 8, !tbaa !824, !noalias !22073 ; 2 uses
  %i.dl = zext i32 %i.dk to i64                   ; 2 uses
  %i.dm = icmp ugt i64 %i.dl, %i.dj
  br i1 %i.dm, label %.noexc18, label %.thread

.thread:                                          ; preds = %bb.s, %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i, %_ZL18utf8proc_codepointPKcS0_Ri.exit, %.split, %.split83, %.split84, %bb.i, %bb.c, %bb.f, %bb.n, %bb.p
  %.036.i.i.lcssa.ph = phi i32 [ %i.di, %bb.s ], [ %.036.i.i126, %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i ], [ %.036.i.i126, %_ZL18utf8proc_codepointPKcS0_Ri.exit ], [ %.036.i.i126, %.split ], [ %.036.i.i126, %.split83 ], [ %.036.i.i126, %.split84 ], [ %.036.i.i126, %bb.i ], [ %.036.i.i126, %bb.c ], [ %.036.i.i126, %bb.f ], [ %.036.i.i126, %bb.n ], [ %.036.i.i126, %bb.p ] ; 2 uses
  %.pre = load i32, ptr %5, align 8, !tbaa !824, !noalias !22073 ; 2 uses
  %.pre286 = zext i32 %.pre to i64                ; 2 uses
  %i.dn = sext i32 %.036.i.i.lcssa.ph to i64      ; 6 uses
  %.not.i.i = icmp ugt i64 %.pre286, %i.dn
  br i1 %.not.i.i, label %.noexc22, label %.invoke

.noexc22:                                         ; preds = %.thread
  %i.do = icmp ult i32 %.pre, 13
  %i.dp = load ptr, ptr %i.o, align 8
  %i.dq = select i1 %i.do, ptr %i.p, ptr %i.dp    ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dn ; 4 uses
  %i.ds = add nsw i64 %.pre286, -1                ; 3 uses
  %.not44.i.i145 = icmp samesign ult i64 %i.ds, %i.dn
  br i1 %.not44.i.i145, label %_ZN8facebook5velox9functions10stringImpl25endsWithUnicodeWhiteSpaceEPKcm.exit.i.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.noexc22
  %invariant.op = sub i64 1, %i.dn
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN8facebook5velox9functions10stringImpl25endsWithUnicodeWhiteSpaceEPKcm.exit.i
  %.033.i.i146 = phi i64 [ %i.ga, %_ZN8facebook5velox9functions10stringImpl25endsWithUnicodeWhiteSpaceEPKcm.exit.i ], [ %i.ds, %.lr.ph.preheader ] ; 15 uses
  %.reass.reass.reass = add i64 %.033.i.i146, %invariant.op ; 3 uses
  %.not.i6.i = icmp eq i64 %.reass.reass.reass, 0
  br i1 %.not.i6.i, label %_ZN8facebook5velox9functions10stringImpl25endsWithUnicodeWhiteSpaceEPKcm.exit.i.thread, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.dt = getelementptr i8, ptr %i.dq, i64 %.033.i.i146 ; 2 uses
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !18, !noalias !22073 ; 2 uses
  %i.dv = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes acquire, align 8, !noalias !22073
end_hunk_5
begin_hunk_6_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_16FlatVectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim:bb.a
bb.be:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_16FlatVectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clIiEEDaSN_.exit14
  %i.jn = landingpad { ptr, i32 }
          cleanup
  %i.jo = load ptr, ptr %7, align 8, !tbaa !607
  %.not.i58 = icmp eq ptr %i.jo, null
  br i1 %.not.i58, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit59, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit59

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit59: ; preds = %bb.be, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.bg

bb.bg:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit59, %bb.bd
  %.pn.i = phi { ptr, i32 } [ %i.jn, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit59 ], [ %i.jm, %bb.bd ]
  invoke void @__cxa_end_catch()
          to label %.loopexit115 unwind label %bb.bm

.loopexit117:                                     ; preds = %tailrecurse.i.i.i.i.3
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

.loopexit.split-lp:                               ; preds = %.loopexit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_16FlatVectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clIiEEDaSN_.exit: ; preds = %tailrecurse.i.i.i.i.3
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %8) #24
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.w, i32 noundef %i.v, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.bh unwind label %bb.bj

bb.bh:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_16FlatVectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clIiEEDaSN_.exit
  %i.jp = load ptr, ptr %8, align 8, !tbaa !607
  %.not.i60 = icmp eq ptr %i.jp, null
  br i1 %.not.i60, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit61, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit61

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit61: ; preds = %bb.bh, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_16FlatVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit

bb.bj:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_16FlatVectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clIiEEDaSN_.exit
  %i.jq = landingpad { ptr, i32 }
          cleanup
  %i.jr = load ptr, ptr %8, align 8, !tbaa !607
  %.not.i62 = icmp eq ptr %i.jr, null
  br i1 %.not.i62, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63: ; preds = %bb.bj, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.bl

bb.bl:                                            ; preds = %.loopexit117, %.loopexit.split-lp, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63
  %.pn16.i = phi { ptr, i32 } [ %i.jq, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63 ], [ %lpad.loopexit, %.loopexit117 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @__cxa_end_catch()
          to label %.loopexit115 unwind label %bb.bm

.loopexit115:                                     ; preds = %bb.az, %bb.bl, %bb.bg
  %.merged.i = phi { ptr, i32 } [ %.pn.i, %bb.bg ], [ %.pn16.i, %bb.bl ], [ %eh.lpad-body, %bb.az ]
  resume { ptr, i32 } %.merged.i

bb.bm:                                            ; preds = %bb.bl, %bb.bg
  %i.js = landingpad { ptr, i32 }
          catch ptr null
  %i.jt = extractvalue { ptr, i32 } %i.js, 0
  call void @__clang_call_terminate(ptr %i.jt) #51
  unreachable

bb.bn:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_16FlatVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit56, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit61
  %i.ju = add i64 %.0166, -1
  %i.jv = and i64 %i.ju, %.0166                   ; 2 uses
  %.not10 = icmp eq i64 %i.jv, 0
  br i1 %.not10, label %.loopexit114, label %bb.b, !llvm.loop !22085

.loopexit114:                                     ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_16FlatVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_16FlatVectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.474", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.474", align 16 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.sroa.4187 = alloca [12 x i8], align 4         ; 8 uses
  %6 = alloca %"struct.facebook::velox::StringView", align 8 ; 7 uses
  %7 = alloca %"class.facebook::velox::Status", align 8 ; 8 uses
  %8 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %9 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %.sroa.4 = alloca [12 x i8], align 4            ; 8 uses
  %10 = alloca %"struct.facebook::velox::StringView", align 8 ; 7 uses
  %11 = alloca %"class.facebook::velox::Status", align 8 ; 8 uses
  %12 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %13 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !22086, !range !309, !noundef !310
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22088
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !370
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %.lr.ph364 [
    i64 -1, label %bb.b
    i64 0, label %.loopexit294
  ]

.lr.ph364:                                        ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.4.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4
  %.sroa.4.4..sroa_idx743 = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4
  br label %bb.bp

bb.b:                                             ; preds = %bb.a
  %i.s = shl i32 %1, 6                            ; 3 uses
  %i.t = add i32 %i.s, 64
  %i.u = sext i32 %i.t to i64
  %.not413 = icmp eq i32 %i.s, -64
  br i1 %.not413, label %.loopexit294, label %.lr.ph412

.lr.ph412:                                        ; preds = %bb.b
  %i.v = sext i32 %i.s to i64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.4187.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4187, i64 4
  %.sroa.4187.4..sroa_idx744 = getelementptr inbounds nuw i8, ptr %.sroa.4187, i64 4
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph412, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_16FlatVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clImEEDaSP_.exit
  %.0411 = phi i64 [ %i.v, %.lr.ph412 ], [ %i.kc, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_16FlatVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clImEEDaSP_.exit ] ; 3 uses
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !21767 ; 2 uses
  %i.ae = load ptr, ptr %i.w, align 8, !tbaa !22035, !nonnull !310, !align !416 ; 4 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !22036, !nonnull !310, !align !416
  %i.ag = trunc i64 %.0411 to i32                 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 88
  store i32 %i.ag, ptr %i.ah, align 8, !tbaa !789
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !22038, !nonnull !310, !align !416
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !22036, !nonnull !310, !align !416 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !22039, !noalias !22089, !nonnull !310, !align !416
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !22092
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !2669, !noalias !22092
  %sext = shl i64 %.0411, 32
  %i.ap = ashr exact i64 %sext, 28
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 %i.ap ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.aq, align 8, !noalias !22092 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !18, !noalias !22092
  store i64 %.sroa.0.0.copyload.i, ptr %6, align 8, !noalias !22092
  store ptr %.sroa.2.0.copyload.i, ptr %i.y, align 8, !noalias !22092
  %i.ar = trunc i64 %.sroa.0.0.copyload.i to i32  ; 2 uses
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %.invoke, label %.noexc60.preheader

.noexc60.preheader:                               ; preds = %bb.c
  %i.at = and i64 %.sroa.0.0.copyload.i, 4294967295
  br label %.noexc60

.noexc60:                                         ; preds = %.noexc60.preheader, %bb.t
  %i.au = phi i64 [ %i.dt, %bb.t ], [ %i.at, %.noexc60.preheader ]
  %i.av = phi i32 [ %i.ds, %bb.t ], [ %i.ar, %.noexc60.preheader ]
  %i.aw = phi i64 [ %i.dr, %bb.t ], [ 0, %.noexc60.preheader ] ; 2 uses
  %.036.i.i.i367 = phi i32 [ %i.dq, %bb.t ], [ 0, %.noexc60.preheader ] ; 11 uses
  %i.ax = icmp ult i32 %i.av, 13
  %i.ay = load ptr, ptr %i.y, align 8
  %i.az = select i1 %i.ax, ptr %i.z, ptr %i.ay
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 %i.aw ; 4 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !18, !noalias !22095 ; 6 uses
  %i.bc = zext i8 %i.bb to i32                    ; 4 uses
  %i.bd = icmp sgt i8 %i.bb, -1
  br i1 %i.bd, label %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread214, label %bb.d

bb.d:                                             ; preds = %.noexc60
  %gepdiff286 = sub nsw i64 %i.au, %i.aw          ; 3 uses
  %i.be = icmp slt i64 %gepdiff286, 2
  br i1 %i.be, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !18, !noalias !22095 ; 4 uses
  %i.bh = and i8 %i.bb, -32
  %or.cond.i = icmp eq i8 %i.bh, -64
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bi = shl nuw nsw i32 %i.bc, 6
  %i.bj = zext i8 %i.bg to i32
  %i.bk = add nsw i32 %i.bi, -12416
  %i.bl = add nsw i32 %i.bk, %i.bj
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

bb.g:                                             ; preds = %bb.e
  %i.bm = icmp eq i8 %i.bb, -19
  %i.bn = and i8 %i.bg, -96
  %i.bo = icmp eq i8 %i.bn, -96
  %or.cond46.i = select i1 %i.bm, i1 %i.bo, i1 false
  %i.bp = icmp eq i64 %gepdiff286, 2
  %or.cond47.i = or i1 %i.bp, %or.cond46.i
  br i1 %or.cond47.i, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !18, !noalias !22095 ; 2 uses
  %i.bs = and i8 %i.bb, -16
  %or.cond5.i = icmp eq i8 %i.bs, -32
  br i1 %or.cond5.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bt = shl nuw nsw i32 %i.bc, 12
  %i.bu = zext i8 %i.bg to i32
  %i.bv = shl nuw nsw i32 %i.bu, 6
  %i.bw = zext i8 %i.br to i32
  %i.bx = add nsw i32 %i.bt, -925824
  %i.by = add nsw i32 %i.bx, %i.bv
  %i.bz = add nsw i32 %i.by, %i.bw
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

bb.j:                                             ; preds = %bb.h
  %i.ca = icmp samesign ugt i64 %gepdiff286, 3
  %i.cb = and i8 %i.bb, -8
  %or.cond8.i = icmp eq i8 %i.cb, -16
  %or.cond48.i = and i1 %i.ca, %or.cond8.i
  br i1 %or.cond48.i, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ba, i64 3
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !18, !noalias !22095
  %i.ce = shl nuw nsw i32 %i.bc, 18
  %i.cf = zext i8 %i.bg to i32
  %i.cg = shl nuw nsw i32 %i.cf, 12
  %i.ch = zext i8 %i.br to i32
  %i.ci = shl nuw nsw i32 %i.ch, 6
  %i.cj = zext i8 %i.cd to i32
  %i.ck = add nsw i32 %i.ce, -63447168
  %i.cl = add nsw i32 %i.ck, %i.cg
  %i.cm = add nsw i32 %i.cl, %i.ci
  %i.cn = add nsw i32 %i.cm, %i.cj
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

_ZL18utf8proc_codepointPKcS0_Ri.exit:             ; preds = %bb.f, %bb.i, %bb.k
  %.1197 = phi i32 [ 3, %bb.i ], [ 4, %bb.k ], [ 2, %bb.f ]
  %.3.i = phi i32 [ %i.bz, %bb.i ], [ %i.cn, %bb.k ], [ %i.bl, %bb.f ] ; 2 uses
  %i.co = icmp eq i32 %.3.i, -1
  br i1 %i.co, label %.thread, label %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread214

_ZL18utf8proc_codepointPKcS0_Ri.exit.thread214:   ; preds = %.noexc60, %_ZL18utf8proc_codepointPKcS0_Ri.exit
  %.3.i218 = phi i32 [ %.3.i, %_ZL18utf8proc_codepointPKcS0_Ri.exit ], [ %i.bc, %.noexc60 ] ; 9 uses
  %.1197217 = phi i32 [ %.1197, %_ZL18utf8proc_codepointPKcS0_Ri.exit ], [ 1, %.noexc60 ]
  %i.cp = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes acquire, align 8, !noalias !22095
  %i.cq = icmp eq i8 %i.cp, 0
  br i1 %i.cq, label %bb.l, label %bb.m, !prof !101

bb.l:                                             ; preds = %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread214
  %i.cr = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes) #24, !noalias !22095
  %.not.i5.i.i = icmp eq i32 %i.cr, 0
  br i1 %.not.i5.i.i, label %bb.m, label %.noexc.i.i.i55

.noexc.i.i.i55:                                   ; preds = %bb.l
  store i64 8321515008, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes, align 8, !tbaa !370, !noalias !22095
  %i.cs = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes), !noalias !22095 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes) #24, !noalias !22095
  br label %bb.m

bb.m:                                             ; preds = %.noexc.i.i.i55, %bb.l, %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread214
  %i.ct = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes acquire, align 8, !noalias !22095
  %i.cu = icmp eq i8 %i.ct, 0
  br i1 %i.cu, label %bb.n, label %bb.o, !prof !101

bb.n:                                             ; preds = %bb.m
  %i.cv = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes) #24, !noalias !22095
  %.not14.i.i.i50 = icmp eq i32 %i.cv, 0
  br i1 %.not14.i.i.i50, label %bb.o, label %.noexc23.i.i

.noexc23.i.i:                                     ; preds = %bb.n
  store i64 3298534885247, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, align 8, !noalias !22095
  store i64 2147483648, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, i64 8), align 8, !noalias !22095
  %i.cw = call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes), !noalias !22095 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes) #24, !noalias !22095
  br label %bb.o

bb.o:                                             ; preds = %.noexc23.i.i, %bb.n, %bb.m
  %i.cx = icmp slt i32 %.3.i218, 0
  br i1 %i.cx, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cy = icmp samesign ult i32 %.3.i218, 5000
  br i1 %i.cy, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cz = icmp samesign ugt i32 %.3.i218, 32
  br i1 %i.cz, label %.thread, label %.split221

.split221:                                        ; preds = %bb.q
  %i.da = zext nneg i32 %.3.i218 to i64
  %i.db = load i64, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes, align 8, !tbaa !370, !noalias !22095
  %i.dc = shl nuw nsw i64 1, %i.da
  %i.dd = and i64 %i.db, %i.dc
  %.not288 = icmp eq i64 %i.dd, 0
  br i1 %.not288, label %.thread, label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.de = icmp samesign ugt i32 %.3.i218, 8191
  br i1 %i.de, label %bb.s, label %.split

bb.s:                                             ; preds = %bb.r
  %i.df = icmp samesign ult i32 %.3.i218, 8288
  br i1 %i.df, label %.split220, label %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i.i47

.split220:                                        ; preds = %bb.s
  %i.dg = add nsw i32 %.3.i218, -8192
  %i.dh = zext nneg i32 %i.dg to i64              ; 2 uses
  %i.di = lshr i64 %i.dh, 6
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, i64 %i.di
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !370, !noalias !22095
  %i.dl = and i64 %i.dh, 63
  %i.dm = shl nuw i64 1, %i.dl
  %i.dn = and i64 %i.dk, %i.dm
  %.not287 = icmp eq i64 %i.dn, 0
  br i1 %.not287, label %.thread, label %bb.t

.split:                                           ; preds = %bb.r
  %i.do = icmp eq i32 %.3.i218, 5760
  br i1 %i.do, label %bb.t, label %.thread

_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i.i47: ; preds = %bb.s
  %i.dp = icmp eq i32 %.3.i218, 12288
  br i1 %i.dp, label %bb.t, label %.thread

bb.t:                                             ; preds = %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i.i47, %.split, %.split220, %.split221
  %i.dq = add nsw i32 %.1197217, %.036.i.i.i367   ; 3 uses
  %i.dr = sext i32 %i.dq to i64                   ; 2 uses
  %i.ds = load i32, ptr %6, align 8, !tbaa !824, !noalias !22095 ; 2 uses
  %i.dt = zext i32 %i.ds to i64                   ; 2 uses
  %i.du = icmp ugt i64 %i.dt, %i.dr
  br i1 %i.du, label %.noexc60, label %.thread

.thread:                                          ; preds = %bb.t, %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i.i47, %_ZL18utf8proc_codepointPKcS0_Ri.exit, %.split, %.split220, %.split221, %bb.j, %bb.d, %bb.g, %bb.o, %bb.q
  %.036.i.i.i.lcssa.ph = phi i32 [ %i.dq, %bb.t ], [ %.036.i.i.i367, %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i.i47 ], [ %.036.i.i.i367, %_ZL18utf8proc_codepointPKcS0_Ri.exit ], [ %.036.i.i.i367, %.split ], [ %.036.i.i.i367, %.split220 ], [ %.036.i.i.i367, %.split221 ], [ %.036.i.i.i367, %bb.j ], [ %.036.i.i.i367, %bb.d ], [ %.036.i.i.i367, %bb.g ], [ %.036.i.i.i367, %bb.o ], [ %.036.i.i.i367, %bb.q ] ; 2 uses
  %.pre = load i32, ptr %6, align 8, !tbaa !824, !noalias !22095 ; 2 uses
  %.pre666 = zext i32 %.pre to i64                ; 2 uses
  %i.dv = sext i32 %.036.i.i.i.lcssa.ph to i64    ; 6 uses
  %.not.i.i.i42 = icmp ugt i64 %.pre666, %i.dv
  br i1 %.not.i.i.i42, label %.noexc64, label %.invoke

.noexc64:                                         ; preds = %.thread
  %i.dw = icmp ult i32 %.pre, 13
  %i.dx = load ptr, ptr %i.y, align 8
  %i.dy = select i1 %i.dw, ptr %i.z, ptr %i.dx    ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dv ; 4 uses
  %i.ea = add nsw i64 %.pre666, -1                ; 3 uses
  %.not44.i.i.i389 = icmp samesign ult i64 %i.ea, %i.dv
  br i1 %.not44.i.i.i389, label %_ZN8facebook5velox9functions10stringImpl25endsWithUnicodeWhiteSpaceEPKcm.exit.i.i.thread, label %.lr.ph391.preheader

.lr.ph391.preheader:                              ; preds = %.noexc64
  %invariant.op = sub i64 1, %i.dv
  br label %.lr.ph391

.lr.ph391:                                        ; preds = %.lr.ph391.preheader, %_ZN8facebook5velox9functions10stringImpl25endsWithUnicodeWhiteSpaceEPKcm.exit.i.i
  %.033.i.i.i390 = phi i64 [ %i.gi, %_ZN8facebook5velox9functions10stringImpl25endsWithUnicodeWhiteSpaceEPKcm.exit.i.i ], [ %i.ea, %.lr.ph391.preheader ] ; 15 uses
  %.reass388.reass.reass = add i64 %.033.i.i.i390, %invariant.op ; 3 uses
  %.not.i6.i.i = icmp eq i64 %.reass388.reass.reass, 0
  br i1 %.not.i6.i.i, label %_ZN8facebook5velox9functions10stringImpl25endsWithUnicodeWhiteSpaceEPKcm.exit.i.i.thread, label %bb.u

bb.u:                                             ; preds = %.lr.ph391
  %i.eb = getelementptr i8, ptr %i.dy, i64 %.033.i.i.i390 ; 2 uses
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !18, !noalias !22095 ; 2 uses
  %i.ed = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes acquire, align 8, !noalias !22095
end_hunk_6
begin_hunk_7_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_16FlatVectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi:bb.a
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.preheader
  %i.je = getelementptr inbounds nuw i8, ptr %i.iz, i64 1
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !18
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.jf, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iz, i64 2
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !18
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.jh, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.ji = getelementptr inbounds nuw i8, ptr %i.iz, i64 3
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !18
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.jj, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  %i.jk = load ptr, ptr %i.ac, align 8, !tbaa !22059, !nonnull !310, !align !416
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !22060, !nonnull !310, !align !416
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  invoke void @_ZN8facebook5velox4exec12VectorWriterINS0_7VarcharEvE10commitNullEv(ptr noundef nonnull align 8 dereferenceable(112) %i.jm)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_16FlatVectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clImEEDaSN_.exit unwind label %.loopexit296

.loopexit:                                        ; preds = %bb.az, %.lr.ph.i.i.i.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #50
          to label %bb.bo unwind label %.loopexit.split-lp

bb.ba:                                            ; preds = %.body37
  %i.jn = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #24
  %i.jo = icmp eq i32 %i.is, %i.jn
  br i1 %i.jo, label %bb.bb, label %common.resume

bb.bb:                                            ; preds = %bb.ba
  %i.jp = call ptr @__cxa_begin_catch(ptr %i.ir) #24 ; 0 uses
  %i.jq = load ptr, ptr %i.ac, align 8, !tbaa !22059, !nonnull !310, !align !416
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !22060, !nonnull !310, !align !416
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  invoke void @_ZN8facebook5velox4exec12VectorWriterINS0_7VarcharEvE10commitNullEv(ptr noundef nonnull align 8 dereferenceable(112) %i.js)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_16FlatVectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clImEEDaSN_.exit41 unwind label %bb.be

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_16FlatVectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clImEEDaSN_.exit41: ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %8) #24
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.ad, i32 noundef %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.bc unwind label %bb.bf

bb.bc:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_16FlatVectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clImEEDaSN_.exit41
  %i.jt = load ptr, ptr %8, align 8, !tbaa !607
  %.not.i99 = icmp eq ptr %i.jt, null
  br i1 %.not.i99, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.bc, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_16FlatVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clImEEDaSP_.exit

bb.be:                                            ; preds = %bb.bb
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bf:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_16FlatVectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clImEEDaSN_.exit41
  %i.jv = landingpad { ptr, i32 }
          cleanup
  %i.jw = load ptr, ptr %8, align 8, !tbaa !607
  %.not.i100 = icmp eq ptr %i.jw, null
  br i1 %.not.i100, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit101, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit101

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit101: ; preds = %bb.bf, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.bh

bb.bh:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit101, %bb.be
  %.pn.i33 = phi { ptr, i32 } [ %i.jv, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit101 ], [ %i.ju, %bb.be ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.bn

.loopexit296:                                     ; preds = %tailrecurse.i.i.i.i.3
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

.loopexit.split-lp:                               ; preds = %.loopexit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_16FlatVectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clImEEDaSN_.exit: ; preds = %tailrecurse.i.i.i.i.3
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %9) #24
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.ad, i32 noundef %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.bi unwind label %bb.bk

bb.bi:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_16FlatVectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clImEEDaSN_.exit
  %i.jx = load ptr, ptr %9, align 8, !tbaa !607
  %.not.i102 = icmp eq ptr %i.jx, null
  br i1 %.not.i102, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit103, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit103

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit103: ; preds = %bb.bi, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_16FlatVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clImEEDaSP_.exit

bb.bk:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_16FlatVectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clImEEDaSN_.exit
  %i.jy = landingpad { ptr, i32 }
          cleanup
  %i.jz = load ptr, ptr %9, align 8, !tbaa !607
  %.not.i104 = icmp eq ptr %i.jz, null
  br i1 %.not.i104, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit105, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit105

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit105: ; preds = %bb.bk, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.bm

bb.bm:                                            ; preds = %.loopexit296, %.loopexit.split-lp, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit105
  %.pn16.i34 = phi { ptr, i32 } [ %i.jy, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit105 ], [ %lpad.loopexit, %.loopexit296 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.bn

common.resume:                                    ; preds = %bb.ba, %bb.dn, %bb.du, %bb.dz, %bb.bh, %bb.bm
  %common.resume.op = phi { ptr, i32 } [ %.pn16.i34, %bb.bm ], [ %.pn.i33, %bb.bh ], [ %.pn16.i, %bb.dz ], [ %.pn.i, %bb.du ], [ %eh.lpad-body, %bb.dn ], [ %eh.lpad-body38, %bb.ba ]
  resume { ptr, i32 } %common.resume.op

bb.bn:                                            ; preds = %bb.bm, %bb.bh
  %i.ka = landingpad { ptr, i32 }
          catch ptr null
  %i.kb = extractvalue { ptr, i32 } %i.ka, 0
  call void @__clang_call_terminate(ptr %i.kb) #51
  unreachable

bb.bo:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_16FlatVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clImEEDaSP_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit98, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit103
  %i.kc = add nuw i64 %.0411, 1                   ; 2 uses
  %i.kd = icmp ult i64 %i.kc, %i.u
  br i1 %i.kd, label %bb.c, label %.loopexit294, !llvm.loop !22107

bb.bp:                                            ; preds = %.lr.ph364, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_16FlatVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit
  %.015363 = phi i64 [ %i.j, %.lr.ph364 ], [ %i.ug, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_16FlatVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit ] ; 3 uses
  %i.ke = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.015363, i1 true)
  %i.kf = trunc nuw nsw i64 %i.ke to i32
  %i.kg = or disjoint i32 %i.l, %i.kf             ; 4 uses
  %i.kh = load ptr, ptr %i.m, align 8, !tbaa !21767 ; 2 uses
  %i.ki = load ptr, ptr %i.k, align 8, !tbaa !22035, !nonnull !310, !align !416 ; 4 uses
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !22036, !nonnull !310, !align !416
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 88
  store i32 %i.kg, ptr %i.kk, align 8, !tbaa !789
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !22038, !nonnull !310, !align !416
  %i.kn = load ptr, ptr %i.ki, align 8, !tbaa !22036, !nonnull !310, !align !416 ; 4 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 32
  %i.kp = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !22039, !noalias !22108, !nonnull !310, !align !416
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24, !noalias !22111
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !2669, !noalias !22111
  %i.ks = sext i32 %i.kg to i64
  %i.kt = getelementptr inbounds [16 x i8], ptr %i.kr, i64 %i.ks ; 2 uses
  %.sroa.0.0.copyload.i106 = load i64, ptr %i.kt, align 8, !noalias !22111 ; 3 uses
  %.sroa.2.0..sroa_idx.i107 = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %.sroa.2.0.copyload.i108 = load ptr, ptr %.sroa.2.0..sroa_idx.i107, align 8, !tbaa !18, !noalias !22111
  store i64 %.sroa.0.0.copyload.i106, ptr %10, align 8, !noalias !22111
  store ptr %.sroa.2.0.copyload.i108, ptr %i.n, align 8, !noalias !22111
  %i.ku = trunc i64 %.sroa.0.0.copyload.i106 to i32 ; 2 uses
  %i.kv = icmp eq i32 %i.ku, 0
  br i1 %i.kv, label %.invoke716, label %.noexc24.preheader

.noexc24.preheader:                               ; preds = %bb.bp
  %i.kw = and i64 %.sroa.0.0.copyload.i106, 4294967295
  br label %.noexc24

.noexc24:                                         ; preds = %.noexc24.preheader, %bb.cg
  %i.kx = phi i64 [ %i.nw, %bb.cg ], [ %i.kw, %.noexc24.preheader ]
  %i.ky = phi i32 [ %i.nv, %bb.cg ], [ %i.ku, %.noexc24.preheader ]
  %i.kz = phi i64 [ %i.nu, %bb.cg ], [ 0, %.noexc24.preheader ] ; 2 uses
  %.036.i.i322 = phi i32 [ %i.nt, %bb.cg ], [ 0, %.noexc24.preheader ] ; 11 uses
  %i.la = icmp ult i32 %i.ky, 13
  %i.lb = load ptr, ptr %i.n, align 8
  %i.lc = select i1 %i.la, ptr %i.o, ptr %i.lb
  %i.ld = getelementptr inbounds i8, ptr %i.lc, i64 %i.kz ; 4 uses
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !18, !noalias !22114 ; 6 uses
  %i.lf = zext i8 %i.le to i32                    ; 4 uses
  %i.lg = icmp sgt i8 %i.le, -1
  br i1 %i.lg, label %_ZL18utf8proc_codepointPKcS0_Ri.exit120.thread247, label %bb.bq

bb.bq:                                            ; preds = %.noexc24
  %gepdiff = sub nsw i64 %i.kx, %i.kz             ; 3 uses
  %i.lh = icmp slt i64 %gepdiff, 2
  br i1 %i.lh, label %.thread257, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.li = getelementptr inbounds nuw i8, ptr %i.ld, i64 1
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !18, !noalias !22114 ; 4 uses
  %i.lk = and i8 %i.le, -32
  %or.cond.i113 = icmp eq i8 %i.lk, -64
  br i1 %or.cond.i113, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.ll = shl nuw nsw i32 %i.lf, 6
  %i.lm = zext i8 %i.lj to i32
  %i.ln = add nsw i32 %i.ll, -12416
  %i.lo = add nsw i32 %i.ln, %i.lm
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit120

bb.bt:                                            ; preds = %bb.br
  %i.lp = icmp eq i8 %i.le, -19
  %i.lq = and i8 %i.lj, -96
  %i.lr = icmp eq i8 %i.lq, -96
  %or.cond46.i114 = select i1 %i.lp, i1 %i.lr, i1 false
  %i.ls = icmp eq i64 %gepdiff, 2
  %or.cond47.i115 = or i1 %i.ls, %or.cond46.i114
  br i1 %or.cond47.i115, label %.thread257, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ld, i64 2
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !18, !noalias !22114 ; 2 uses
  %i.lv = and i8 %i.le, -16
  %or.cond5.i116 = icmp eq i8 %i.lv, -32
  br i1 %or.cond5.i116, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.lw = shl nuw nsw i32 %i.lf, 12
  %i.lx = zext i8 %i.lj to i32
  %i.ly = shl nuw nsw i32 %i.lx, 6
  %i.lz = zext i8 %i.lu to i32
  %i.ma = add nsw i32 %i.lw, -925824
  %i.mb = add nsw i32 %i.ma, %i.ly
  %i.mc = add nsw i32 %i.mb, %i.lz
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit120

bb.bw:                                            ; preds = %bb.bu
  %i.md = icmp samesign ugt i64 %gepdiff, 3
  %i.me = and i8 %i.le, -8
  %or.cond8.i117 = icmp eq i8 %i.me, -16
  %or.cond48.i118 = and i1 %i.md, %or.cond8.i117
  br i1 %or.cond48.i118, label %bb.bx, label %.thread257

bb.bx:                                            ; preds = %bb.bw
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ld, i64 3
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !18, !noalias !22114
  %i.mh = shl nuw nsw i32 %i.lf, 18
  %i.mi = zext i8 %i.lj to i32
  %i.mj = shl nuw nsw i32 %i.mi, 12
  %i.mk = zext i8 %i.lu to i32
  %i.ml = shl nuw nsw i32 %i.mk, 6
  %i.mm = zext i8 %i.mg to i32
  %i.mn = add nsw i32 %i.mh, -63447168
  %i.mo = add nsw i32 %i.mn, %i.mj
  %i.mp = add nsw i32 %i.mo, %i.ml
  %i.mq = add nsw i32 %i.mp, %i.mm
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit120

_ZL18utf8proc_codepointPKcS0_Ri.exit120:          ; preds = %bb.bs, %bb.bv, %bb.bx
  %.1199 = phi i32 [ 3, %bb.bv ], [ 4, %bb.bx ], [ 2, %bb.bs ]
  %.3.i119 = phi i32 [ %i.mc, %bb.bv ], [ %i.mq, %bb.bx ], [ %i.lo, %bb.bs ] ; 2 uses
  %i.mr = icmp eq i32 %.3.i119, -1
  br i1 %i.mr, label %.thread257, label %_ZL18utf8proc_codepointPKcS0_Ri.exit120.thread247

_ZL18utf8proc_codepointPKcS0_Ri.exit120.thread247: ; preds = %.noexc24, %_ZL18utf8proc_codepointPKcS0_Ri.exit120
  %.3.i119251 = phi i32 [ %.3.i119, %_ZL18utf8proc_codepointPKcS0_Ri.exit120 ], [ %i.lf, %.noexc24 ] ; 9 uses
  %.1199250 = phi i32 [ %.1199, %_ZL18utf8proc_codepointPKcS0_Ri.exit120 ], [ 1, %.noexc24 ]
  %i.ms = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes acquire, align 8, !noalias !22114
  %i.mt = icmp eq i8 %i.ms, 0
  br i1 %i.mt, label %bb.by, label %bb.bz, !prof !101

bb.by:                                            ; preds = %_ZL18utf8proc_codepointPKcS0_Ri.exit120.thread247
  %i.mu = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes) #24, !noalias !22114
  %.not.i5.i = icmp eq i32 %i.mu, 0
  br i1 %.not.i5.i, label %bb.bz, label %.noexc.i.i

.noexc.i.i:                                       ; preds = %bb.by
  store i64 8321515008, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes, align 8, !tbaa !370, !noalias !22114
  %i.mv = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes), !noalias !22114 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes) #24, !noalias !22114
  br label %bb.bz

bb.bz:                                            ; preds = %.noexc.i.i, %bb.by, %_ZL18utf8proc_codepointPKcS0_Ri.exit120.thread247
  %i.mw = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes acquire, align 8, !noalias !22114
  %i.mx = icmp eq i8 %i.mw, 0
  br i1 %i.mx, label %bb.ca, label %bb.cb, !prof !101

bb.ca:                                            ; preds = %bb.bz
  %i.my = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes) #24, !noalias !22114
  %.not14.i.i = icmp eq i32 %i.my, 0
  br i1 %.not14.i.i, label %bb.cb, label %.noexc23.i

.noexc23.i:                                       ; preds = %bb.ca
  store i64 3298534885247, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, align 8, !noalias !22114
  store i64 2147483648, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, i64 8), align 8, !noalias !22114
  %i.mz = call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes), !noalias !22114 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes) #24, !noalias !22114
  br label %bb.cb

bb.cb:                                            ; preds = %.noexc23.i, %bb.ca, %bb.bz
  %i.na = icmp slt i32 %.3.i119251, 0
  br i1 %i.na, label %.thread257, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.nb = icmp samesign ult i32 %.3.i119251, 5000
  br i1 %i.nb, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.nc = icmp samesign ugt i32 %.3.i119251, 32
  br i1 %i.nc, label %.thread257, label %.split255

.split255:                                        ; preds = %bb.cd
  %i.nd = zext nneg i32 %.3.i119251 to i64
  %i.ne = load i64, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes, align 8, !tbaa !370, !noalias !22114
  %i.nf = shl nuw nsw i64 1, %i.nd
  %i.ng = and i64 %i.ne, %i.nf
  %.not281 = icmp eq i64 %i.ng, 0
  br i1 %.not281, label %.thread257, label %bb.cg

bb.ce:                                            ; preds = %bb.cc
  %i.nh = icmp samesign ugt i32 %.3.i119251, 8191
  br i1 %i.nh, label %bb.cf, label %.split253

bb.cf:                                            ; preds = %bb.ce
  %i.ni = icmp samesign ult i32 %.3.i119251, 8288
  br i1 %i.ni, label %.split254, label %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i

.split254:                                        ; preds = %bb.cf
  %i.nj = add nsw i32 %.3.i119251, -8192
  %i.nk = zext nneg i32 %i.nj to i64              ; 2 uses
  %i.nl = lshr i64 %i.nk, 6
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, i64 %i.nl
  %i.nn = load i64, ptr %i.nm, align 8, !tbaa !370, !noalias !22114
  %i.no = and i64 %i.nk, 63
  %i.np = shl nuw i64 1, %i.no
  %i.nq = and i64 %i.nn, %i.np
  %.not280 = icmp eq i64 %i.nq, 0
  br i1 %.not280, label %.thread257, label %bb.cg

.split253:                                        ; preds = %bb.ce
  %i.nr = icmp eq i32 %.3.i119251, 5760
  br i1 %i.nr, label %bb.cg, label %.thread257

_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i: ; preds = %bb.cf
  %i.ns = icmp eq i32 %.3.i119251, 12288
  br i1 %i.ns, label %bb.cg, label %.thread257

bb.cg:                                            ; preds = %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i, %.split253, %.split254, %.split255
  %i.nt = add nsw i32 %.1199250, %.036.i.i322     ; 3 uses
  %i.nu = sext i32 %i.nt to i64                   ; 2 uses
  %i.nv = load i32, ptr %10, align 8, !tbaa !824, !noalias !22114 ; 2 uses
  %i.nw = zext i32 %i.nv to i64                   ; 2 uses
  %i.nx = icmp ugt i64 %i.nw, %i.nu
  br i1 %i.nx, label %.noexc24, label %.thread257

.thread257:                                       ; preds = %bb.cg, %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i, %_ZL18utf8proc_codepointPKcS0_Ri.exit120, %.split253, %.split254, %.split255, %bb.bw, %bb.bq, %bb.bt, %bb.cb, %bb.cd
  %.036.i.i.lcssa.ph = phi i32 [ %i.nt, %bb.cg ], [ %.036.i.i322, %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i ], [ %.036.i.i322, %_ZL18utf8proc_codepointPKcS0_Ri.exit120 ], [ %.036.i.i322, %.split253 ], [ %.036.i.i322, %.split254 ], [ %.036.i.i322, %.split255 ], [ %.036.i.i322, %bb.bw ], [ %.036.i.i322, %bb.bq ], [ %.036.i.i322, %bb.bt ], [ %.036.i.i322, %bb.cb ], [ %.036.i.i322, %bb.cd ] ; 2 uses
  %.pre664 = load i32, ptr %10, align 8, !tbaa !824, !noalias !22114 ; 2 uses
  %.pre665 = zext i32 %.pre664 to i64             ; 2 uses
  %i.ny = sext i32 %.036.i.i.lcssa.ph to i64      ; 6 uses
  %.not.i.i = icmp ugt i64 %.pre665, %i.ny
  br i1 %.not.i.i, label %.noexc28, label %.invoke716

.noexc28:                                         ; preds = %.thread257
  %i.nz = icmp ult i32 %.pre664, 13
  %i.oa = load ptr, ptr %i.n, align 8
  %i.ob = select i1 %i.nz, ptr %i.o, ptr %i.oa    ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 %i.ny ; 4 uses
  %i.od = add nsw i64 %.pre665, -1                ; 3 uses
  %.not44.i.i341 = icmp samesign ult i64 %i.od, %i.ny
  br i1 %.not44.i.i341, label %_ZN8facebook5velox9functions10stringImpl25endsWithUnicodeWhiteSpaceEPKcm.exit.i.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.noexc28
  %invariant.op755 = sub i64 1, %i.ny
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN8facebook5velox9functions10stringImpl25endsWithUnicodeWhiteSpaceEPKcm.exit.i
  %.033.i.i342 = phi i64 [ %i.ql, %_ZN8facebook5velox9functions10stringImpl25endsWithUnicodeWhiteSpaceEPKcm.exit.i ], [ %i.od, %.lr.ph.preheader ] ; 15 uses
  %.reass.reass.reass = add i64 %.033.i.i342, %invariant.op755 ; 3 uses
  %.not.i6.i = icmp eq i64 %.reass.reass.reass, 0
  br i1 %.not.i6.i, label %_ZN8facebook5velox9functions10stringImpl25endsWithUnicodeWhiteSpaceEPKcm.exit.i.thread, label %bb.ch

bb.ch:                                            ; preds = %.lr.ph
  %i.oe = getelementptr i8, ptr %i.ob, i64 %.033.i.i342 ; 2 uses
  %i.of = load i8, ptr %i.oe, align 1, !tbaa !18, !noalias !22114 ; 2 uses
  %i.og = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes acquire, align 8, !noalias !22114
end_hunk_7
begin_hunk_8_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_12VectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi:bb.a
bb.cb:                                            ; preds = %.loopexit153, %.loopexit.split-lp154, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit130
  %.pn16.i = phi { ptr, i32 } [ %i.mu, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit130 ], [ %lpad.loopexit155, %.loopexit153 ], [ %lpad.loopexit.split-lp156, %.loopexit.split-lp154 ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.bw
  %i.mw = landingpad { ptr, i32 }
          catch ptr null
  %i.mx = extractvalue { ptr, i32 } %i.mw, 0
  call void @__clang_call_terminate(ptr %i.mx) #51
  unreachable

bb.cd:                                            ; preds = %.loopexit149
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_12VectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit117, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit124, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit128
  %i.my = add i64 %.015176, -1
  %i.mz = and i64 %i.my, %.015176                 ; 2 uses
  %.not = icmp eq i64 %i.mz, 0
  br i1 %.not, label %.loopexit146, label %bb.aq, !llvm.loop !22218

.loopexit146:                                     ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_12VectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clImEEDaSP_.exit, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_12VectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit, %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_12VectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKS1_SR_ST_EUlSR_E_EEvSR_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef byval(%class.anon.5135) align 8 %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.474", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.sroa.4 = alloca [12 x i8], align 4            ; 8 uses
  %4 = alloca %"struct.facebook::velox::StringView", align 8 ; 7 uses
  %5 = alloca %"class.facebook::velox::Status", align 8 ; 8 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %7 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !1091, !range !309, !noundef !310
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i:     ; preds = %bb.a
  %.0.in.pre.i = load i8, ptr %i.a, align 4, !tbaa !87, !range !309
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1017
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1018 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !1016
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !745    ; 2 uses
  %.not.i.i19 = icmp sgt i32 %i.i, 0
  br i1 %.not.i.i19, label %bb.e, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.i, 2147483584                 ; 3 uses
  %i.o = zext nneg i32 %i.n to i64
  %.not37.i.i.not.i312.not = icmp eq i32 %i.n, 0
  br i1 %.not37.i.i.not.i312.not, label %.critedge.i.i.i, label %.lr.ph314

bb.f:                                             ; preds = %.lr.ph314
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i313, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.o
  br i1 %.not37.i.i.not.i, label %.lr.ph314, label %.critedge.i.i.i, !llvm.loop !1172

.lr.ph314:                                        ; preds = %bb.e, %bb.f
  %indvars.iv.i313 = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i313, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !370
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, !llvm.loop !1172

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
  %i.y = load i64, ptr %i.x, align 8, !tbaa !370
  %.demorgan.i = or i64 %i.y, %notmask.i40.i.i.i
  %i.z = icmp eq i64 %.demorgan.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i:   ; preds = %.lr.ph314, %bb.g, %.critedge.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph314 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit: ; preds = %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i
  %.0.in.i = phi i8 [ %.0.in.pre.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i ]
  %.0.i = trunc nuw i8 %.0.in.i to i1
  br i1 %.0.i, label %bb.h, label %bb.by

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1018 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !1017 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %.lr.ph162, label %.loopexit109

.lr.ph162:                                        ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ao = sext i32 %i.ag to i64
  %.sroa.4.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4
  %.sroa.4.4..sroa_idx320 = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph162, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_12VectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit
  %indvars.iv = phi i64 [ %i.ao, %.lr.ph162 ], [ %indvars.iv.next, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_12VectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit ] ; 3 uses
  %i.ap = load ptr, ptr %i.ai, align 8, !tbaa !21771 ; 2 uses
  %i.aq = load ptr, ptr %1, align 8, !tbaa !22219, !nonnull !310, !align !416 ; 4 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !22220, !nonnull !310, !align !416
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 88
  %i.at = trunc nsw i64 %indvars.iv to i32        ; 4 uses
  store i32 %i.at, ptr %i.as, align 8, !tbaa !789
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !22222, !nonnull !310, !align !416
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !22220, !nonnull !310, !align !416 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !22223, !noalias !22225, !nonnull !310, !align !416
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !22228
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !2890, !noalias !22228, !nonnull !310, !align !416 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1382, !noalias !22228
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 58
  %i.be = load i8, ptr %i.bd, align 2, !tbaa !1383, !range !309, !noalias !22228, !noundef !310
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEEixEm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 59
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !1384, !range !309, !noalias !22228, !noundef !310
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !1385, !noalias !22228
  br label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEEixEm.exit

bb.l:                                             ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1386, !noalias !22228
  %i.bn = shl nsw i64 %indvars.iv, 2
  %i.bo = getelementptr inbounds i8, ptr %i.bm, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !77, !noalias !22228
  br label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEEixEm.exit

_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEEixEm.exit: ; preds = %bb.i, %bb.k, %bb.l
  %.0.i.i.i20 = phi i32 [ %i.bp, %bb.l ], [ %i.bk, %bb.k ], [ %i.at, %bb.i ]
  %i.bq = sext i32 %.0.i.i.i20 to i64
  %i.br = getelementptr inbounds [16 x i8], ptr %i.bc, i64 %i.bq ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.br, align 8, !noalias !22228 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !18, !noalias !22228
  store i64 %.sroa.0.0.copyload.i.i, ptr %4, align 8, !noalias !22228
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.aj, align 8, !noalias !22228
  %i.bs = trunc i64 %.sroa.0.0.copyload.i.i to i32 ; 2 uses
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %.invoke, label %.noexc11.preheader

.noexc11.preheader:                               ; preds = %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEEixEm.exit
  %i.bu = and i64 %.sroa.0.0.copyload.i.i, 4294967295
  br label %.noexc11

.noexc11:                                         ; preds = %.noexc11.preheader, %bb.ac
  %i.bv = phi i64 [ %i.eu, %bb.ac ], [ %i.bu, %.noexc11.preheader ]
  %i.bw = phi i32 [ %i.et, %bb.ac ], [ %i.bs, %.noexc11.preheader ]
  %i.bx = phi i64 [ %i.es, %bb.ac ], [ 0, %.noexc11.preheader ] ; 2 uses
  %.036.i.i121 = phi i32 [ %i.er, %bb.ac ], [ 0, %.noexc11.preheader ] ; 11 uses
  %i.by = icmp ult i32 %i.bw, 13
  %i.bz = load ptr, ptr %i.aj, align 8
  %i.ca = select i1 %i.by, ptr %i.ak, ptr %i.bz
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 %i.bx ; 4 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !18, !noalias !22231 ; 6 uses
  %i.cd = zext i8 %i.cc to i32                    ; 4 uses
  %i.ce = icmp sgt i8 %i.cc, -1
  br i1 %i.ce, label %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread74, label %bb.m

bb.m:                                             ; preds = %.noexc11
  %gepdiff = sub nsw i64 %i.bv, %i.bx             ; 3 uses
  %i.cf = icmp slt i64 %gepdiff, 2
  br i1 %i.cf, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !18, !noalias !22231 ; 4 uses
  %i.ci = and i8 %i.cc, -32
  %or.cond.i = icmp eq i8 %i.ci, -64
  br i1 %or.cond.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cj = shl nuw nsw i32 %i.cd, 6
  %i.ck = zext i8 %i.ch to i32
  %i.cl = add nsw i32 %i.cj, -12416
  %i.cm = add nsw i32 %i.cl, %i.ck
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

bb.p:                                             ; preds = %bb.n
  %i.cn = icmp eq i8 %i.cc, -19
  %i.co = and i8 %i.ch, -96
  %i.cp = icmp eq i8 %i.co, -96
  %or.cond46.i = select i1 %i.cn, i1 %i.cp, i1 false
  %i.cq = icmp eq i64 %gepdiff, 2
  %or.cond47.i = or i1 %i.cq, %or.cond46.i
  br i1 %or.cond47.i, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !18, !noalias !22231 ; 2 uses
  %i.ct = and i8 %i.cc, -16
  %or.cond5.i = icmp eq i8 %i.ct, -32
  br i1 %or.cond5.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cu = shl nuw nsw i32 %i.cd, 12
  %i.cv = zext i8 %i.ch to i32
  %i.cw = shl nuw nsw i32 %i.cv, 6
  %i.cx = zext i8 %i.cs to i32
  %i.cy = add nsw i32 %i.cu, -925824
  %i.cz = add nsw i32 %i.cy, %i.cw
  %i.da = add nsw i32 %i.cz, %i.cx
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

bb.s:                                             ; preds = %bb.q
  %i.db = icmp samesign ugt i64 %gepdiff, 3
  %i.dc = and i8 %i.cc, -8
  %or.cond8.i = icmp eq i8 %i.dc, -16
  %or.cond48.i = and i1 %i.db, %or.cond8.i
  br i1 %or.cond48.i, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cb, i64 3
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !18, !noalias !22231
  %i.df = shl nuw nsw i32 %i.cd, 18
  %i.dg = zext i8 %i.ch to i32
  %i.dh = shl nuw nsw i32 %i.dg, 12
  %i.di = zext i8 %i.cs to i32
  %i.dj = shl nuw nsw i32 %i.di, 6
  %i.dk = zext i8 %i.de to i32
  %i.dl = add nsw i32 %i.df, -63447168
  %i.dm = add nsw i32 %i.dl, %i.dh
  %i.dn = add nsw i32 %i.dm, %i.dj
  %i.do = add nsw i32 %i.dn, %i.dk
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

_ZL18utf8proc_codepointPKcS0_Ri.exit:             ; preds = %bb.o, %bb.r, %bb.t
  %.170 = phi i32 [ 3, %bb.r ], [ 4, %bb.t ], [ 2, %bb.o ]
  %.3.i = phi i32 [ %i.da, %bb.r ], [ %i.do, %bb.t ], [ %i.cm, %bb.o ] ; 2 uses
  %i.dp = icmp eq i32 %.3.i, -1
  br i1 %i.dp, label %.thread, label %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread74

_ZL18utf8proc_codepointPKcS0_Ri.exit.thread74:    ; preds = %.noexc11, %_ZL18utf8proc_codepointPKcS0_Ri.exit
  %.3.i78 = phi i32 [ %.3.i, %_ZL18utf8proc_codepointPKcS0_Ri.exit ], [ %i.cd, %.noexc11 ] ; 9 uses
  %.17077 = phi i32 [ %.170, %_ZL18utf8proc_codepointPKcS0_Ri.exit ], [ 1, %.noexc11 ]
  %i.dq = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes acquire, align 8, !noalias !22231
  %i.dr = icmp eq i8 %i.dq, 0
  br i1 %i.dr, label %bb.u, label %bb.v, !prof !101

bb.u:                                             ; preds = %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread74
  %i.ds = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes) #24, !noalias !22231
  %.not.i5.i = icmp eq i32 %i.ds, 0
  br i1 %.not.i5.i, label %bb.v, label %.noexc.i.i

.noexc.i.i:                                       ; preds = %bb.u
  store i64 8321515008, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes, align 8, !tbaa !370, !noalias !22231
  %i.dt = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes), !noalias !22231 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes) #24, !noalias !22231
  br label %bb.v

bb.v:                                             ; preds = %.noexc.i.i, %bb.u, %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread74
  %i.du = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes acquire, align 8, !noalias !22231
  %i.dv = icmp eq i8 %i.du, 0
  br i1 %i.dv, label %bb.w, label %bb.x, !prof !101

bb.w:                                             ; preds = %bb.v
  %i.dw = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes) #24, !noalias !22231
  %.not14.i.i = icmp eq i32 %i.dw, 0
  br i1 %.not14.i.i, label %bb.x, label %.noexc23.i

.noexc23.i:                                       ; preds = %bb.w
  store i64 3298534885247, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, align 8, !noalias !22231
  store i64 2147483648, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, i64 8), align 8, !noalias !22231
  %i.dx = call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes), !noalias !22231 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes) #24, !noalias !22231
  br label %bb.x

bb.x:                                             ; preds = %.noexc23.i, %bb.w, %bb.v
  %i.dy = icmp slt i32 %.3.i78, 0
  br i1 %i.dy, label %.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dz = icmp samesign ult i32 %.3.i78, 5000
  br i1 %i.dz, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ea = icmp samesign ugt i32 %.3.i78, 32
  br i1 %i.ea, label %.thread, label %.split81

.split81:                                         ; preds = %bb.z
  %i.eb = zext nneg i32 %.3.i78 to i64
  %i.ec = load i64, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes, align 8, !tbaa !370, !noalias !22231
  %i.ed = shl nuw nsw i64 1, %i.eb
  %i.ee = and i64 %i.ec, %i.ed
  %.not104 = icmp eq i64 %i.ee, 0
  br i1 %.not104, label %.thread, label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %i.ef = icmp samesign ugt i32 %.3.i78, 8191
  br i1 %i.ef, label %bb.ab, label %.split

bb.ab:                                            ; preds = %bb.aa
  %i.eg = icmp samesign ult i32 %.3.i78, 8288
  br i1 %i.eg, label %.split80, label %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i

.split80:                                         ; preds = %bb.ab
  %i.eh = add nsw i32 %.3.i78, -8192
  %i.ei = zext nneg i32 %i.eh to i64              ; 2 uses
  %i.ej = lshr i64 %i.ei, 6
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, i64 %i.ej
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !370, !noalias !22231
  %i.em = and i64 %i.ei, 63
  %i.en = shl nuw i64 1, %i.em
  %i.eo = and i64 %i.el, %i.en
  %.not = icmp eq i64 %i.eo, 0
  br i1 %.not, label %.thread, label %bb.ac

.split:                                           ; preds = %bb.aa
  %i.ep = icmp eq i32 %.3.i78, 5760
  br i1 %i.ep, label %bb.ac, label %.thread

_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i: ; preds = %bb.ab
  %i.eq = icmp eq i32 %.3.i78, 12288
  br i1 %i.eq, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i, %.split, %.split80, %.split81
  %i.er = add nsw i32 %.17077, %.036.i.i121       ; 3 uses
  %i.es = sext i32 %i.er to i64                   ; 2 uses
  %i.et = load i32, ptr %4, align 8, !tbaa !824, !noalias !22231 ; 2 uses
  %i.eu = zext i32 %i.et to i64                   ; 2 uses
  %i.ev = icmp ugt i64 %i.eu, %i.es
  br i1 %i.ev, label %.noexc11, label %.thread

.thread:                                          ; preds = %bb.ac, %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i, %_ZL18utf8proc_codepointPKcS0_Ri.exit, %.split, %.split80, %.split81, %bb.s, %bb.m, %bb.p, %bb.x, %bb.z
  %.036.i.i.lcssa.ph = phi i32 [ %i.er, %bb.ac ], [ %.036.i.i121, %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i ], [ %.036.i.i121, %_ZL18utf8proc_codepointPKcS0_Ri.exit ], [ %.036.i.i121, %.split ], [ %.036.i.i121, %.split80 ], [ %.036.i.i121, %.split81 ], [ %.036.i.i121, %bb.s ], [ %.036.i.i121, %bb.m ], [ %.036.i.i121, %bb.p ], [ %.036.i.i121, %bb.x ], [ %.036.i.i121, %bb.z ] ; 2 uses
  %.pre = load i32, ptr %4, align 8, !tbaa !824, !noalias !22231 ; 2 uses
  %.pre283 = zext i32 %.pre to i64                ; 2 uses
  %i.ew = sext i32 %.036.i.i.lcssa.ph to i64      ; 6 uses
  %.not.i.i = icmp ugt i64 %.pre283, %i.ew
  br i1 %.not.i.i, label %.noexc15, label %.invoke

.noexc15:                                         ; preds = %.thread
  %i.ex = icmp ult i32 %.pre, 13
  %i.ey = load ptr, ptr %i.aj, align 8
  %i.ez = select i1 %i.ex, ptr %i.ak, ptr %i.ey   ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.ew ; 4 uses
  %i.fb = add nsw i64 %.pre283, -1                ; 3 uses
  %.not44.i.i140 = icmp samesign ult i64 %i.fb, %i.ew
  br i1 %.not44.i.i140, label %_ZN8facebook5velox9functions10stringImpl25endsWithUnicodeWhiteSpaceEPKcm.exit.i.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.noexc15
  %invariant.op = sub i64 1, %i.ew
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN8facebook5velox9functions10stringImpl25endsWithUnicodeWhiteSpaceEPKcm.exit.i
  %.033.i.i141 = phi i64 [ %i.hj, %_ZN8facebook5velox9functions10stringImpl25endsWithUnicodeWhiteSpaceEPKcm.exit.i ], [ %i.fb, %.lr.ph.preheader ] ; 15 uses
  %.reass.reass.reass = add i64 %.033.i.i141, %invariant.op ; 3 uses
  %.not.i6.i = icmp eq i64 %.reass.reass.reass, 0
  br i1 %.not.i6.i, label %_ZN8facebook5velox9functions10stringImpl25endsWithUnicodeWhiteSpaceEPKcm.exit.i.thread, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph
  %i.fc = getelementptr i8, ptr %i.ez, i64 %.033.i.i141 ; 2 uses
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !18, !noalias !22231 ; 2 uses
  %i.fe = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes acquire, align 8, !noalias !22231
end_hunk_8
begin_hunk_9_@_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_12VectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_:bb.a
  %5 = alloca %class.anon.5137, align 8           ; 6 uses
  %6 = alloca %class.anon.5136, align 8           ; 8 uses
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
  br i1 %.not.i, label %bb.b, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS4_10VectorExecEEESC_NS0_7VarcharENS0_15ConstantCheckerIJSE_EEEJSE_EEEE8applyUdfIZNKSI_7iterateIJNS4_12VectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSO_SS_EUlSS_E_ZNKSJ_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS13_EEvS15_iibSS_EUliE_EEviiSS_SU_.exit

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
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_12VectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.g, i64 noundef %i.q)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS4_10VectorExecEEESC_NS0_7VarcharENS0_15ConstantCheckerIJSE_EEEJSE_EEEE8applyUdfIZNKSI_7iterateIJNS4_12VectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSO_SS_EUlSS_E_ZNKSJ_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS13_EEvS15_iibSS_EUliE_EEviiSS_SU_.exit

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
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_12VectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.r, i64 noundef %i.x)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = add nsw i32 %i.d, 64                     ; 2 uses
  %.not3337.i = icmp sgt i32 %i.y, %i.e
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.not34.i = icmp eq i32 %2, %i.e
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS4_10VectorExecEEESC_NS0_7VarcharENS0_15ConstantCheckerIJSE_EEEJSE_EEEE8applyUdfIZNKSI_7iterateIJNS4_12VectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSO_SS_EUlSS_E_ZNKSJ_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS13_EEvS15_iibSS_EUliE_EEviiSS_SU_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.z = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.d, %bb.f ]
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_12VectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !22247

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i36.i = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask.i36.i, -1
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_12VectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.ac, i64 noundef %i.af)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS4_10VectorExecEEESC_NS0_7VarcharENS0_15ConstantCheckerIJSE_EEEJSE_EEEE8applyUdfIZNKSI_7iterateIJNS4_12VectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSO_SS_EUlSS_E_ZNKSJ_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS13_EEvS15_iibSS_EUliE_EEviiSS_SU_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS4_10VectorExecEEESC_NS0_7VarcharENS0_15ConstantCheckerIJSE_EEEJSE_EEEE8applyUdfIZNKSI_7iterateIJNS4_12VectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSO_SS_EUlSS_E_ZNKSJ_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS13_EEvS15_iibSS_EUliE_EEviiSS_SU_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_12VectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.474", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.sroa.4 = alloca [12 x i8], align 4            ; 8 uses
  %5 = alloca %"struct.facebook::velox::StringView", align 8 ; 7 uses
  %6 = alloca %"class.facebook::velox::Status", align 8 ; 8 uses
  %7 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %8 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !22248, !range !309, !noundef !310
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22250
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !370
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit117, label %.preheader116

.preheader116:                                    ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.4.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4
  %.sroa.4.4..sroa_idx322 = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.preheader116, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_12VectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit
  %.0169 = phi i64 [ %i.k, %.preheader116 ], [ %i.kl, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_12VectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit ] ; 3 uses
  %i.t = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0169, i1 true)
  %i.u = trunc nuw nsw i64 %i.t to i32
  %i.v = or disjoint i32 %i.m, %i.u               ; 5 uses
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !21771 ; 2 uses
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !22219, !nonnull !310, !align !416 ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !22220, !nonnull !310, !align !416
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 88
  store i32 %i.v, ptr %i.z, align 8, !tbaa !789
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !22222, !nonnull !310, !align !416
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !22220, !nonnull !310, !align !416 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = sext i32 %i.v to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !22223, !noalias !22251, !nonnull !310, !align !416
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !22254
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !2890, !noalias !22254, !nonnull !310, !align !416 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1382, !noalias !22254
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 58
  %i.al = load i8, ptr %i.ak, align 2, !tbaa !1383, !range !309, !noalias !22254, !noundef !310
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEEixEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 59
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !1384, !range !309, !noalias !22254, !noundef !310
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !1385, !noalias !22254
  br label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEEixEm.exit

bb.e:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1386, !noalias !22254
  %i.au = shl nsw i64 %i.ae, 2
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !77, !noalias !22254
  br label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEEixEm.exit

_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEEixEm.exit: ; preds = %bb.b, %bb.d, %bb.e
  %.0.i.i.i26 = phi i32 [ %i.aw, %bb.e ], [ %i.ar, %bb.d ], [ %i.v, %bb.b ]
  %i.ax = sext i32 %.0.i.i.i26 to i64
  %i.ay = getelementptr inbounds [16 x i8], ptr %i.aj, i64 %i.ax ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ay, align 8, !noalias !22254 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !18, !noalias !22254
  store i64 %.sroa.0.0.copyload.i.i, ptr %5, align 8, !noalias !22254
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.o, align 8, !noalias !22254
  %i.az = trunc i64 %.sroa.0.0.copyload.i.i to i32 ; 2 uses
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %.invoke, label %.noexc18.preheader

.noexc18.preheader:                               ; preds = %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEEixEm.exit
  %i.bb = and i64 %.sroa.0.0.copyload.i.i, 4294967295
  br label %.noexc18

.noexc18:                                         ; preds = %.noexc18.preheader, %bb.v
  %i.bc = phi i64 [ %i.eb, %bb.v ], [ %i.bb, %.noexc18.preheader ]
  %i.bd = phi i32 [ %i.ea, %bb.v ], [ %i.az, %.noexc18.preheader ]
  %i.be = phi i64 [ %i.dz, %bb.v ], [ 0, %.noexc18.preheader ] ; 2 uses
  %.036.i.i129 = phi i32 [ %i.dy, %bb.v ], [ 0, %.noexc18.preheader ] ; 11 uses
  %i.bf = icmp ult i32 %i.bd, 13
  %i.bg = load ptr, ptr %i.o, align 8
  %i.bh = select i1 %i.bf, ptr %i.p, ptr %i.bg
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 %i.be ; 4 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !18, !noalias !22257 ; 6 uses
  %i.bk = zext i8 %i.bj to i32                    ; 4 uses
  %i.bl = icmp sgt i8 %i.bj, -1
  br i1 %i.bl, label %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread80, label %bb.f

bb.f:                                             ; preds = %.noexc18
  %gepdiff = sub nsw i64 %i.bc, %i.be             ; 3 uses
  %i.bm = icmp slt i64 %gepdiff, 2
  br i1 %i.bm, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !18, !noalias !22257 ; 4 uses
  %i.bp = and i8 %i.bj, -32
  %or.cond.i = icmp eq i8 %i.bp, -64
  br i1 %or.cond.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bq = shl nuw nsw i32 %i.bk, 6
  %i.br = zext i8 %i.bo to i32
  %i.bs = add nsw i32 %i.bq, -12416
  %i.bt = add nsw i32 %i.bs, %i.br
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

bb.i:                                             ; preds = %bb.g
  %i.bu = icmp eq i8 %i.bj, -19
  %i.bv = and i8 %i.bo, -96
  %i.bw = icmp eq i8 %i.bv, -96
  %or.cond46.i = select i1 %i.bu, i1 %i.bw, i1 false
  %i.bx = icmp eq i64 %gepdiff, 2
  %or.cond47.i = or i1 %i.bx, %or.cond46.i
  br i1 %or.cond47.i, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !18, !noalias !22257 ; 2 uses
  %i.ca = and i8 %i.bj, -16
  %or.cond5.i = icmp eq i8 %i.ca, -32
  br i1 %or.cond5.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cb = shl nuw nsw i32 %i.bk, 12
  %i.cc = zext i8 %i.bo to i32
  %i.cd = shl nuw nsw i32 %i.cc, 6
  %i.ce = zext i8 %i.bz to i32
  %i.cf = add nsw i32 %i.cb, -925824
  %i.cg = add nsw i32 %i.cf, %i.cd
  %i.ch = add nsw i32 %i.cg, %i.ce
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

bb.l:                                             ; preds = %bb.j
  %i.ci = icmp samesign ugt i64 %gepdiff, 3
  %i.cj = and i8 %i.bj, -8
  %or.cond8.i = icmp eq i8 %i.cj, -16
  %or.cond48.i = and i1 %i.ci, %or.cond8.i
  br i1 %or.cond48.i, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bi, i64 3
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !18, !noalias !22257
  %i.cm = shl nuw nsw i32 %i.bk, 18
  %i.cn = zext i8 %i.bo to i32
  %i.co = shl nuw nsw i32 %i.cn, 12
  %i.cp = zext i8 %i.bz to i32
  %i.cq = shl nuw nsw i32 %i.cp, 6
  %i.cr = zext i8 %i.cl to i32
  %i.cs = add nsw i32 %i.cm, -63447168
  %i.ct = add nsw i32 %i.cs, %i.co
  %i.cu = add nsw i32 %i.ct, %i.cq
  %i.cv = add nsw i32 %i.cu, %i.cr
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

_ZL18utf8proc_codepointPKcS0_Ri.exit:             ; preds = %bb.h, %bb.k, %bb.m
  %.176 = phi i32 [ 3, %bb.k ], [ 4, %bb.m ], [ 2, %bb.h ]
  %.3.i = phi i32 [ %i.ch, %bb.k ], [ %i.cv, %bb.m ], [ %i.bt, %bb.h ] ; 2 uses
  %i.cw = icmp eq i32 %.3.i, -1
  br i1 %i.cw, label %.thread, label %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread80

_ZL18utf8proc_codepointPKcS0_Ri.exit.thread80:    ; preds = %.noexc18, %_ZL18utf8proc_codepointPKcS0_Ri.exit
  %.3.i84 = phi i32 [ %.3.i, %_ZL18utf8proc_codepointPKcS0_Ri.exit ], [ %i.bk, %.noexc18 ] ; 9 uses
  %.17683 = phi i32 [ %.176, %_ZL18utf8proc_codepointPKcS0_Ri.exit ], [ 1, %.noexc18 ]
  %i.cx = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes acquire, align 8, !noalias !22257
  %i.cy = icmp eq i8 %i.cx, 0
  br i1 %i.cy, label %bb.n, label %bb.o, !prof !101

bb.n:                                             ; preds = %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread80
  %i.cz = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes) #24, !noalias !22257
  %.not.i5.i = icmp eq i32 %i.cz, 0
  br i1 %.not.i5.i, label %bb.o, label %.noexc.i.i

.noexc.i.i:                                       ; preds = %bb.n
  store i64 8321515008, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes, align 8, !tbaa !370, !noalias !22257
  %i.da = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes), !noalias !22257 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes) #24, !noalias !22257
  br label %bb.o

bb.o:                                             ; preds = %.noexc.i.i, %bb.n, %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread80
  %i.db = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes acquire, align 8, !noalias !22257
  %i.dc = icmp eq i8 %i.db, 0
  br i1 %i.dc, label %bb.p, label %bb.q, !prof !101

bb.p:                                             ; preds = %bb.o
  %i.dd = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes) #24, !noalias !22257
  %.not14.i.i = icmp eq i32 %i.dd, 0
  br i1 %.not14.i.i, label %bb.q, label %.noexc23.i

.noexc23.i:                                       ; preds = %bb.p
  store i64 3298534885247, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, align 8, !noalias !22257
  store i64 2147483648, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, i64 8), align 8, !noalias !22257
  %i.de = call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes), !noalias !22257 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes) #24, !noalias !22257
  br label %bb.q

bb.q:                                             ; preds = %.noexc23.i, %bb.p, %bb.o
  %i.df = icmp slt i32 %.3.i84, 0
  br i1 %i.df, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dg = icmp samesign ult i32 %.3.i84, 5000
  br i1 %i.dg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dh = icmp samesign ugt i32 %.3.i84, 32
  br i1 %i.dh, label %.thread, label %.split87

.split87:                                         ; preds = %bb.s
  %i.di = zext nneg i32 %.3.i84 to i64
  %i.dj = load i64, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes, align 8, !tbaa !370, !noalias !22257
  %i.dk = shl nuw nsw i64 1, %i.di
  %i.dl = and i64 %i.dj, %i.dk
  %.not111 = icmp eq i64 %i.dl, 0
  br i1 %.not111, label %.thread, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.dm = icmp samesign ugt i32 %.3.i84, 8191
  br i1 %i.dm, label %bb.u, label %.split

bb.u:                                             ; preds = %bb.t
  %i.dn = icmp samesign ult i32 %.3.i84, 8288
  br i1 %i.dn, label %.split86, label %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i

.split86:                                         ; preds = %bb.u
  %i.do = add nsw i32 %.3.i84, -8192
  %i.dp = zext nneg i32 %i.do to i64              ; 2 uses
  %i.dq = lshr i64 %i.dp, 6
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, i64 %i.dq
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !370, !noalias !22257
  %i.dt = and i64 %i.dp, 63
  %i.du = shl nuw i64 1, %i.dt
  %i.dv = and i64 %i.ds, %i.du
  %.not110 = icmp eq i64 %i.dv, 0
  br i1 %.not110, label %.thread, label %bb.v

.split:                                           ; preds = %bb.t
  %i.dw = icmp eq i32 %.3.i84, 5760
  br i1 %i.dw, label %bb.v, label %.thread

_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i: ; preds = %bb.u
  %i.dx = icmp eq i32 %.3.i84, 12288
  br i1 %i.dx, label %bb.v, label %.thread

bb.v:                                             ; preds = %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i, %.split, %.split86, %.split87
  %i.dy = add nsw i32 %.17683, %.036.i.i129       ; 3 uses
  %i.dz = sext i32 %i.dy to i64                   ; 2 uses
  %i.ea = load i32, ptr %5, align 8, !tbaa !824, !noalias !22257 ; 2 uses
  %i.eb = zext i32 %i.ea to i64                   ; 2 uses
  %i.ec = icmp ugt i64 %i.eb, %i.dz
  br i1 %i.ec, label %.noexc18, label %.thread

.thread:                                          ; preds = %bb.v, %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i, %_ZL18utf8proc_codepointPKcS0_Ri.exit, %.split, %.split86, %.split87, %bb.l, %bb.f, %bb.i, %bb.q, %bb.s
  %.036.i.i.lcssa.ph = phi i32 [ %i.dy, %bb.v ], [ %.036.i.i129, %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i ], [ %.036.i.i129, %_ZL18utf8proc_codepointPKcS0_Ri.exit ], [ %.036.i.i129, %.split ], [ %.036.i.i129, %.split86 ], [ %.036.i.i129, %.split87 ], [ %.036.i.i129, %bb.l ], [ %.036.i.i129, %bb.f ], [ %.036.i.i129, %bb.i ], [ %.036.i.i129, %bb.q ], [ %.036.i.i129, %bb.s ] ; 2 uses
  %.pre = load i32, ptr %5, align 8, !tbaa !824, !noalias !22257 ; 2 uses
  %.pre289 = zext i32 %.pre to i64                ; 2 uses
  %i.ed = sext i32 %.036.i.i.lcssa.ph to i64      ; 6 uses
  %.not.i.i = icmp ugt i64 %.pre289, %i.ed
  br i1 %.not.i.i, label %.noexc22, label %.invoke

.noexc22:                                         ; preds = %.thread
  %i.ee = icmp ult i32 %.pre, 13
  %i.ef = load ptr, ptr %i.o, align 8
  %i.eg = select i1 %i.ee, ptr %i.p, ptr %i.ef    ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ed ; 4 uses
  %i.ei = add nsw i64 %.pre289, -1                ; 3 uses
  %.not44.i.i148 = icmp samesign ult i64 %i.ei, %i.ed
  br i1 %.not44.i.i148, label %_ZN8facebook5velox9functions10stringImpl25endsWithUnicodeWhiteSpaceEPKcm.exit.i.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.noexc22
  %invariant.op = sub i64 1, %i.ed
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN8facebook5velox9functions10stringImpl25endsWithUnicodeWhiteSpaceEPKcm.exit.i
  %.033.i.i149 = phi i64 [ %i.gq, %_ZN8facebook5velox9functions10stringImpl25endsWithUnicodeWhiteSpaceEPKcm.exit.i ], [ %i.ei, %.lr.ph.preheader ] ; 15 uses
  %.reass.reass.reass = add i64 %.033.i.i149, %invariant.op ; 3 uses
  %.not.i6.i = icmp eq i64 %.reass.reass.reass, 0
  br i1 %.not.i6.i, label %_ZN8facebook5velox9functions10stringImpl25endsWithUnicodeWhiteSpaceEPKcm.exit.i.thread, label %bb.w

bb.w:                                             ; preds = %.lr.ph
  %i.ej = getelementptr i8, ptr %i.eg, i64 %.033.i.i149 ; 2 uses
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !18, !noalias !22257 ; 2 uses
  %i.el = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes acquire, align 8, !noalias !22257
end_hunk_9
begin_hunk_10_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_12VectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim:bb.a
  br label %bb.bo

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_12VectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clIiEEDaSN_.exit: ; preds = %tailrecurse.i.i.i.i.3
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %8) #24
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.w, i32 noundef %i.v, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.bk unwind label %bb.bm

bb.bk:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_12VectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clIiEEDaSN_.exit
  %i.kf = load ptr, ptr %8, align 8, !tbaa !607
  %.not.i63 = icmp eq ptr %i.kf, null
  br i1 %.not.i63, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit64, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit64

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit64: ; preds = %bb.bk, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_12VectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit

bb.bm:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_12VectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clIiEEDaSN_.exit
  %i.kg = landingpad { ptr, i32 }
          cleanup
  %i.kh = load ptr, ptr %8, align 8, !tbaa !607
  %.not.i65 = icmp eq ptr %i.kh, null
  br i1 %.not.i65, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66: ; preds = %bb.bm, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.bo

bb.bo:                                            ; preds = %.loopexit120, %.loopexit.split-lp, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66
  %.pn16.i = phi { ptr, i32 } [ %i.kg, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66 ], [ %lpad.loopexit, %.loopexit120 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @__cxa_end_catch()
          to label %.loopexit118 unwind label %bb.bp

.loopexit118:                                     ; preds = %bb.bc, %bb.bo, %bb.bj
  %.merged.i = phi { ptr, i32 } [ %.pn.i, %bb.bj ], [ %.pn16.i, %bb.bo ], [ %eh.lpad-body, %bb.bc ]
  resume { ptr, i32 } %.merged.i

bb.bp:                                            ; preds = %bb.bo, %bb.bj
  %i.ki = landingpad { ptr, i32 }
          catch ptr null
  %i.kj = extractvalue { ptr, i32 } %i.ki, 0
  call void @__clang_call_terminate(ptr %i.kj) #51
  unreachable

bb.bq:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_12VectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit59, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit64
  %i.kk = add i64 %.0169, -1
  %i.kl = and i64 %i.kk, %.0169                   ; 2 uses
  %.not10 = icmp eq i64 %i.kl, 0
  br i1 %.not10, label %.loopexit117, label %bb.b, !llvm.loop !22269

.loopexit117:                                     ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_12VectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_12VectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.474", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.474", align 16 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.sroa.4193 = alloca [12 x i8], align 4         ; 8 uses
  %6 = alloca %"struct.facebook::velox::StringView", align 8 ; 7 uses
  %7 = alloca %"class.facebook::velox::Status", align 8 ; 8 uses
  %8 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %9 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %.sroa.4 = alloca [12 x i8], align 4            ; 8 uses
  %10 = alloca %"struct.facebook::velox::StringView", align 8 ; 7 uses
  %11 = alloca %"class.facebook::velox::Status", align 8 ; 8 uses
  %12 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %13 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !22270, !range !309, !noundef !310
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22272
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !370
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %.lr.ph370 [
    i64 -1, label %bb.b
    i64 0, label %.loopexit300
  ]

.lr.ph370:                                        ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.4.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4
  %.sroa.4.4..sroa_idx748 = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4
  br label %bb.bs

bb.b:                                             ; preds = %bb.a
  %i.s = shl i32 %1, 6                            ; 3 uses
  %i.t = add i32 %i.s, 64
  %i.u = sext i32 %i.t to i64
  %.not419 = icmp eq i32 %i.s, -64
  br i1 %.not419, label %.loopexit300, label %.lr.ph418

.lr.ph418:                                        ; preds = %bb.b
  %i.v = sext i32 %i.s to i64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.4193.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4193, i64 4
  %.sroa.4193.4..sroa_idx749 = getelementptr inbounds nuw i8, ptr %.sroa.4193, i64 4
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph418, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_12VectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clImEEDaSP_.exit
  %.0417 = phi i64 [ %i.v, %.lr.ph418 ], [ %i.kr, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_12VectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clImEEDaSP_.exit ] ; 3 uses
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !21771 ; 2 uses
  %i.ae = load ptr, ptr %i.w, align 8, !tbaa !22219, !nonnull !310, !align !416 ; 4 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !22220, !nonnull !310, !align !416
  %i.ag = trunc i64 %.0417 to i32                 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 88
  store i32 %i.ag, ptr %i.ah, align 8, !tbaa !789
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !22222, !nonnull !310, !align !416
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !22220, !nonnull !310, !align !416 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !22223, !noalias !22273, !nonnull !310, !align !416
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !22276
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !2890, !noalias !22276, !nonnull !310, !align !416 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1382, !noalias !22276
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 58
  %i.as = load i8, ptr %i.ar, align 2, !tbaa !1383, !range !309, !noalias !22276, !noundef !310
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEEixEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 59
  %i.av = load i8, ptr %i.au, align 1, !tbaa !1384, !range !309, !noalias !22276, !noundef !310
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !1385, !noalias !22276
  br label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEEixEm.exit

bb.f:                                             ; preds = %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !1386, !noalias !22276
  %sext.i = shl i64 %.0417, 32
  %i.bb = ashr exact i64 %sext.i, 30
  %i.bc = getelementptr inbounds i8, ptr %i.ba, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !77, !noalias !22276
  br label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEEixEm.exit

_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEEixEm.exit: ; preds = %bb.c, %bb.e, %bb.f
  %.0.i.i.i68 = phi i32 [ %i.bd, %bb.f ], [ %i.ay, %bb.e ], [ %i.ag, %bb.c ]
  %i.be = sext i32 %.0.i.i.i68 to i64
  %i.bf = getelementptr inbounds [16 x i8], ptr %i.aq, i64 %i.be ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.bf, align 8, !noalias !22276 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !18, !noalias !22276
  store i64 %.sroa.0.0.copyload.i.i, ptr %6, align 8, !noalias !22276
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.y, align 8, !noalias !22276
  %i.bg = trunc i64 %.sroa.0.0.copyload.i.i to i32 ; 2 uses
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %.invoke, label %.noexc60.preheader

.noexc60.preheader:                               ; preds = %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEEixEm.exit
  %i.bi = and i64 %.sroa.0.0.copyload.i.i, 4294967295
  br label %.noexc60

.noexc60:                                         ; preds = %.noexc60.preheader, %bb.w
  %i.bj = phi i64 [ %i.ei, %bb.w ], [ %i.bi, %.noexc60.preheader ]
  %i.bk = phi i32 [ %i.eh, %bb.w ], [ %i.bg, %.noexc60.preheader ]
  %i.bl = phi i64 [ %i.eg, %bb.w ], [ 0, %.noexc60.preheader ] ; 2 uses
  %.036.i.i.i373 = phi i32 [ %i.ef, %bb.w ], [ 0, %.noexc60.preheader ] ; 11 uses
  %i.bm = icmp ult i32 %i.bk, 13
  %i.bn = load ptr, ptr %i.y, align 8
  %i.bo = select i1 %i.bm, ptr %i.z, ptr %i.bn
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 %i.bl ; 4 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !18, !noalias !22279 ; 6 uses
  %i.br = zext i8 %i.bq to i32                    ; 4 uses
  %i.bs = icmp sgt i8 %i.bq, -1
  br i1 %i.bs, label %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread220, label %bb.g

bb.g:                                             ; preds = %.noexc60
  %gepdiff292 = sub nsw i64 %i.bj, %i.bl          ; 3 uses
  %i.bt = icmp slt i64 %gepdiff292, 2
  br i1 %i.bt, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !18, !noalias !22279 ; 4 uses
  %i.bw = and i8 %i.bq, -32
  %or.cond.i = icmp eq i8 %i.bw, -64
  br i1 %or.cond.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bx = shl nuw nsw i32 %i.br, 6
  %i.by = zext i8 %i.bv to i32
  %i.bz = add nsw i32 %i.bx, -12416
  %i.ca = add nsw i32 %i.bz, %i.by
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

bb.j:                                             ; preds = %bb.h
  %i.cb = icmp eq i8 %i.bq, -19
  %i.cc = and i8 %i.bv, -96
  %i.cd = icmp eq i8 %i.cc, -96
  %or.cond46.i = select i1 %i.cb, i1 %i.cd, i1 false
  %i.ce = icmp eq i64 %gepdiff292, 2
  %or.cond47.i = or i1 %i.ce, %or.cond46.i
  br i1 %or.cond47.i, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bp, i64 2
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !18, !noalias !22279 ; 2 uses
  %i.ch = and i8 %i.bq, -16
  %or.cond5.i = icmp eq i8 %i.ch, -32
  br i1 %or.cond5.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ci = shl nuw nsw i32 %i.br, 12
  %i.cj = zext i8 %i.bv to i32
  %i.ck = shl nuw nsw i32 %i.cj, 6
  %i.cl = zext i8 %i.cg to i32
  %i.cm = add nsw i32 %i.ci, -925824
  %i.cn = add nsw i32 %i.cm, %i.ck
  %i.co = add nsw i32 %i.cn, %i.cl
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

bb.m:                                             ; preds = %bb.k
  %i.cp = icmp samesign ugt i64 %gepdiff292, 3
  %i.cq = and i8 %i.bq, -8
  %or.cond8.i = icmp eq i8 %i.cq, -16
  %or.cond48.i = and i1 %i.cp, %or.cond8.i
  br i1 %or.cond48.i, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bp, i64 3
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !18, !noalias !22279
  %i.ct = shl nuw nsw i32 %i.br, 18
  %i.cu = zext i8 %i.bv to i32
  %i.cv = shl nuw nsw i32 %i.cu, 12
  %i.cw = zext i8 %i.cg to i32
  %i.cx = shl nuw nsw i32 %i.cw, 6
  %i.cy = zext i8 %i.cs to i32
  %i.cz = add nsw i32 %i.ct, -63447168
  %i.da = add nsw i32 %i.cz, %i.cv
  %i.db = add nsw i32 %i.da, %i.cx
  %i.dc = add nsw i32 %i.db, %i.cy
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

_ZL18utf8proc_codepointPKcS0_Ri.exit:             ; preds = %bb.i, %bb.l, %bb.n
  %.1203 = phi i32 [ 3, %bb.l ], [ 4, %bb.n ], [ 2, %bb.i ]
  %.3.i = phi i32 [ %i.co, %bb.l ], [ %i.dc, %bb.n ], [ %i.ca, %bb.i ] ; 2 uses
  %i.dd = icmp eq i32 %.3.i, -1
  br i1 %i.dd, label %.thread, label %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread220

_ZL18utf8proc_codepointPKcS0_Ri.exit.thread220:   ; preds = %.noexc60, %_ZL18utf8proc_codepointPKcS0_Ri.exit
  %.3.i224 = phi i32 [ %.3.i, %_ZL18utf8proc_codepointPKcS0_Ri.exit ], [ %i.br, %.noexc60 ] ; 9 uses
  %.1203223 = phi i32 [ %.1203, %_ZL18utf8proc_codepointPKcS0_Ri.exit ], [ 1, %.noexc60 ]
  %i.de = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes acquire, align 8, !noalias !22279
  %i.df = icmp eq i8 %i.de, 0
  br i1 %i.df, label %bb.o, label %bb.p, !prof !101

bb.o:                                             ; preds = %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread220
  %i.dg = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes) #24, !noalias !22279
  %.not.i5.i.i = icmp eq i32 %i.dg, 0
  br i1 %.not.i5.i.i, label %bb.p, label %.noexc.i.i.i55

.noexc.i.i.i55:                                   ; preds = %bb.o
  store i64 8321515008, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes, align 8, !tbaa !370, !noalias !22279
  %i.dh = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes), !noalias !22279 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes) #24, !noalias !22279
  br label %bb.p

bb.p:                                             ; preds = %.noexc.i.i.i55, %bb.o, %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread220
  %i.di = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes acquire, align 8, !noalias !22279
  %i.dj = icmp eq i8 %i.di, 0
  br i1 %i.dj, label %bb.q, label %bb.r, !prof !101

bb.q:                                             ; preds = %bb.p
  %i.dk = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes) #24, !noalias !22279
  %.not14.i.i.i50 = icmp eq i32 %i.dk, 0
  br i1 %.not14.i.i.i50, label %bb.r, label %.noexc23.i.i

.noexc23.i.i:                                     ; preds = %bb.q
  store i64 3298534885247, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, align 8, !noalias !22279
  store i64 2147483648, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, i64 8), align 8, !noalias !22279
  %i.dl = call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes), !noalias !22279 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes) #24, !noalias !22279
  br label %bb.r

bb.r:                                             ; preds = %.noexc23.i.i, %bb.q, %bb.p
  %i.dm = icmp slt i32 %.3.i224, 0
  br i1 %i.dm, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dn = icmp samesign ult i32 %.3.i224, 5000
  br i1 %i.dn, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.do = icmp samesign ugt i32 %.3.i224, 32
  br i1 %i.do, label %.thread, label %.split227

.split227:                                        ; preds = %bb.t
  %i.dp = zext nneg i32 %.3.i224 to i64
  %i.dq = load i64, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes, align 8, !tbaa !370, !noalias !22279
  %i.dr = shl nuw nsw i64 1, %i.dp
  %i.ds = and i64 %i.dq, %i.dr
  %.not294 = icmp eq i64 %i.ds, 0
  br i1 %.not294, label %.thread, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.dt = icmp samesign ugt i32 %.3.i224, 8191
  br i1 %i.dt, label %bb.v, label %.split

bb.v:                                             ; preds = %bb.u
  %i.du = icmp samesign ult i32 %.3.i224, 8288
  br i1 %i.du, label %.split226, label %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i.i47

.split226:                                        ; preds = %bb.v
  %i.dv = add nsw i32 %.3.i224, -8192
  %i.dw = zext nneg i32 %i.dv to i64              ; 2 uses
  %i.dx = lshr i64 %i.dw, 6
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, i64 %i.dx
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !370, !noalias !22279
  %i.ea = and i64 %i.dw, 63
  %i.eb = shl nuw i64 1, %i.ea
  %i.ec = and i64 %i.dz, %i.eb
  %.not293 = icmp eq i64 %i.ec, 0
  br i1 %.not293, label %.thread, label %bb.w

.split:                                           ; preds = %bb.u
  %i.ed = icmp eq i32 %.3.i224, 5760
  br i1 %i.ed, label %bb.w, label %.thread

_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i.i47: ; preds = %bb.v
  %i.ee = icmp eq i32 %.3.i224, 12288
  br i1 %i.ee, label %bb.w, label %.thread

bb.w:                                             ; preds = %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i.i47, %.split, %.split226, %.split227
  %i.ef = add nsw i32 %.1203223, %.036.i.i.i373   ; 3 uses
  %i.eg = sext i32 %i.ef to i64                   ; 2 uses
  %i.eh = load i32, ptr %6, align 8, !tbaa !824, !noalias !22279 ; 2 uses
  %i.ei = zext i32 %i.eh to i64                   ; 2 uses
  %i.ej = icmp ugt i64 %i.ei, %i.eg
  br i1 %i.ej, label %.noexc60, label %.thread

.thread:                                          ; preds = %bb.w, %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i.i47, %_ZL18utf8proc_codepointPKcS0_Ri.exit, %.split, %.split226, %.split227, %bb.m, %bb.g, %bb.j, %bb.r, %bb.t
  %.036.i.i.i.lcssa.ph = phi i32 [ %i.ef, %bb.w ], [ %.036.i.i.i373, %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i.i47 ], [ %.036.i.i.i373, %_ZL18utf8proc_codepointPKcS0_Ri.exit ], [ %.036.i.i.i373, %.split ], [ %.036.i.i.i373, %.split226 ], [ %.036.i.i.i373, %.split227 ], [ %.036.i.i.i373, %bb.m ], [ %.036.i.i.i373, %bb.g ], [ %.036.i.i.i373, %bb.j ], [ %.036.i.i.i373, %bb.r ], [ %.036.i.i.i373, %bb.t ] ; 2 uses
  %.pre = load i32, ptr %6, align 8, !tbaa !824, !noalias !22279 ; 2 uses
  %.pre672 = zext i32 %.pre to i64                ; 2 uses
  %i.ek = sext i32 %.036.i.i.i.lcssa.ph to i64    ; 6 uses
  %.not.i.i.i42 = icmp ugt i64 %.pre672, %i.ek
  br i1 %.not.i.i.i42, label %.noexc64, label %.invoke

.noexc64:                                         ; preds = %.thread
  %i.el = icmp ult i32 %.pre, 13
  %i.em = load ptr, ptr %i.y, align 8
  %i.en = select i1 %i.el, ptr %i.z, ptr %i.em    ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.ek ; 4 uses
  %i.ep = add nsw i64 %.pre672, -1                ; 3 uses
  %.not44.i.i.i395 = icmp samesign ult i64 %i.ep, %i.ek
  br i1 %.not44.i.i.i395, label %_ZN8facebook5velox9functions10stringImpl25endsWithUnicodeWhiteSpaceEPKcm.exit.i.i.thread, label %.lr.ph397.preheader

.lr.ph397.preheader:                              ; preds = %.noexc64
  %invariant.op = sub i64 1, %i.ek
  br label %.lr.ph397

.lr.ph397:                                        ; preds = %.lr.ph397.preheader, %_ZN8facebook5velox9functions10stringImpl25endsWithUnicodeWhiteSpaceEPKcm.exit.i.i
  %.033.i.i.i396 = phi i64 [ %i.gx, %_ZN8facebook5velox9functions10stringImpl25endsWithUnicodeWhiteSpaceEPKcm.exit.i.i ], [ %i.ep, %.lr.ph397.preheader ] ; 15 uses
  %.reass394.reass.reass = add i64 %.033.i.i.i396, %invariant.op ; 3 uses
  %.not.i6.i.i = icmp eq i64 %.reass394.reass.reass, 0
  br i1 %.not.i6.i.i, label %_ZN8facebook5velox9functions10stringImpl25endsWithUnicodeWhiteSpaceEPKcm.exit.i.i.thread, label %bb.x

bb.x:                                             ; preds = %.lr.ph397
  %i.eq = getelementptr i8, ptr %i.en, i64 %.033.i.i.i396 ; 2 uses
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !18, !noalias !22279 ; 2 uses
  %i.es = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes acquire, align 8, !noalias !22279
end_hunk_10
begin_hunk_11_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_12VectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi:bb.a
          to label %bb.br unwind label %.loopexit.split-lp

bb.bd:                                            ; preds = %.body37
  %i.kc = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #24
  %i.kd = icmp eq i32 %i.jh, %i.kc
  br i1 %i.kd, label %bb.be, label %common.resume

bb.be:                                            ; preds = %bb.bd
  %i.ke = call ptr @__cxa_begin_catch(ptr %i.jg) #24 ; 0 uses
  %i.kf = load ptr, ptr %i.ac, align 8, !tbaa !22243, !nonnull !310, !align !416
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !22244, !nonnull !310, !align !416
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  invoke void @_ZN8facebook5velox4exec12VectorWriterINS0_7VarcharEvE10commitNullEv(ptr noundef nonnull align 8 dereferenceable(112) %i.kh)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_12VectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clImEEDaSN_.exit41 unwind label %bb.bh

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_12VectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clImEEDaSN_.exit41: ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %8) #24
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.ad, i32 noundef %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.bf unwind label %bb.bi

bb.bf:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_12VectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clImEEDaSN_.exit41
  %i.ki = load ptr, ptr %8, align 8, !tbaa !607
  %.not.i102 = icmp eq ptr %i.ki, null
  br i1 %.not.i102, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.bf, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_12VectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clImEEDaSP_.exit

bb.bh:                                            ; preds = %bb.be
  %i.kj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bi:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_12VectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clImEEDaSN_.exit41
  %i.kk = landingpad { ptr, i32 }
          cleanup
  %i.kl = load ptr, ptr %8, align 8, !tbaa !607
  %.not.i103 = icmp eq ptr %i.kl, null
  br i1 %.not.i103, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit104, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit104

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit104: ; preds = %bb.bi, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.bk

bb.bk:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit104, %bb.bh
  %.pn.i33 = phi { ptr, i32 } [ %i.kk, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit104 ], [ %i.kj, %bb.bh ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.bq

.loopexit302:                                     ; preds = %tailrecurse.i.i.i.i.3
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

.loopexit.split-lp:                               ; preds = %.loopexit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_12VectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clImEEDaSN_.exit: ; preds = %tailrecurse.i.i.i.i.3
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %9) #24
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.ad, i32 noundef %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.bl unwind label %bb.bn

bb.bl:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_12VectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clImEEDaSN_.exit
  %i.km = load ptr, ptr %9, align 8, !tbaa !607
  %.not.i105 = icmp eq ptr %i.km, null
  br i1 %.not.i105, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit106, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit106

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit106: ; preds = %bb.bl, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_12VectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clImEEDaSP_.exit

bb.bn:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_12VectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clImEEDaSN_.exit
  %i.kn = landingpad { ptr, i32 }
          cleanup
  %i.ko = load ptr, ptr %9, align 8, !tbaa !607
  %.not.i107 = icmp eq ptr %i.ko, null
  br i1 %.not.i107, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit108, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit108

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit108: ; preds = %bb.bn, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.bp

bb.bp:                                            ; preds = %.loopexit302, %.loopexit.split-lp, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit108
  %.pn16.i34 = phi { ptr, i32 } [ %i.kn, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit108 ], [ %lpad.loopexit, %.loopexit302 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.bq

common.resume:                                    ; preds = %bb.bd, %bb.dt, %bb.ea, %bb.ef, %bb.bk, %bb.bp
  %common.resume.op = phi { ptr, i32 } [ %.pn16.i34, %bb.bp ], [ %.pn.i33, %bb.bk ], [ %.pn16.i, %bb.ef ], [ %.pn.i, %bb.ea ], [ %eh.lpad-body, %bb.dt ], [ %eh.lpad-body38, %bb.bd ]
  resume { ptr, i32 } %common.resume.op

bb.bq:                                            ; preds = %bb.bp, %bb.bk
  %i.kp = landingpad { ptr, i32 }
          catch ptr null
  %i.kq = extractvalue { ptr, i32 } %i.kp, 0
  call void @__clang_call_terminate(ptr %i.kq) #51
  unreachable

bb.br:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_12VectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clImEEDaSP_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit101, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit106
  %i.kr = add nuw i64 %.0417, 1                   ; 2 uses
  %i.ks = icmp ult i64 %i.kr, %i.u
  br i1 %i.ks, label %bb.c, label %.loopexit300, !llvm.loop !22291

bb.bs:                                            ; preds = %.lr.ph370, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_12VectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit
  %.015369 = phi i64 [ %i.j, %.lr.ph370 ], [ %i.vl, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12TrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_12VectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit ] ; 3 uses
  %i.kt = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.015369, i1 true)
  %i.ku = trunc nuw nsw i64 %i.kt to i32
  %i.kv = or disjoint i32 %i.l, %i.ku             ; 5 uses
  %i.kw = load ptr, ptr %i.m, align 8, !tbaa !21771 ; 2 uses
  %i.kx = load ptr, ptr %i.k, align 8, !tbaa !22219, !nonnull !310, !align !416 ; 4 uses
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !22220, !nonnull !310, !align !416
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 88
  store i32 %i.kv, ptr %i.kz, align 8, !tbaa !789
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.la = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !22222, !nonnull !310, !align !416
  %i.lc = load ptr, ptr %i.kx, align 8, !tbaa !22220, !nonnull !310, !align !416 ; 4 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 32
  %i.le = sext i32 %i.kv to i64
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !22223, !noalias !22292, !nonnull !310, !align !416
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24, !noalias !22295
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !2890, !noalias !22295, !nonnull !310, !align !416 ; 5 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !1382, !noalias !22295
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lh, i64 58
  %i.ll = load i8, ptr %i.lk, align 2, !tbaa !1383, !range !309, !noalias !22295, !noundef !310
  %i.lm = trunc nuw i8 %i.ll to i1
  br i1 %i.lm, label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEEixEm.exit116, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lh, i64 59
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !1384, !range !309, !noalias !22295, !noundef !310
  %i.lp = trunc nuw i8 %i.lo to i1
  br i1 %i.lp, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lh, i64 64
  %i.lr = load i32, ptr %i.lq, align 8, !tbaa !1385, !noalias !22295
  br label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEEixEm.exit116

bb.bv:                                            ; preds = %bb.bt
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !1386, !noalias !22295
  %i.lu = shl nsw i64 %i.le, 2
  %i.lv = getelementptr inbounds i8, ptr %i.lt, i64 %i.lu
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !77, !noalias !22295
  br label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEEixEm.exit116

_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEEixEm.exit116: ; preds = %bb.bs, %bb.bu, %bb.bv
  %.0.i.i.i110 = phi i32 [ %i.lw, %bb.bv ], [ %i.lr, %bb.bu ], [ %i.kv, %bb.bs ]
  %i.lx = sext i32 %.0.i.i.i110 to i64
  %i.ly = getelementptr inbounds [16 x i8], ptr %i.lj, i64 %i.lx ; 2 uses
  %.sroa.0.0.copyload.i.i111 = load i64, ptr %i.ly, align 8, !noalias !22295 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i112 = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  %.sroa.2.0.copyload.i.i113 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i112, align 8, !tbaa !18, !noalias !22295
  store i64 %.sroa.0.0.copyload.i.i111, ptr %10, align 8, !noalias !22295
  store ptr %.sroa.2.0.copyload.i.i113, ptr %i.n, align 8, !noalias !22295
  %i.lz = trunc i64 %.sroa.0.0.copyload.i.i111 to i32 ; 2 uses
  %i.ma = icmp eq i32 %i.lz, 0
  br i1 %i.ma, label %.invoke722, label %.noexc24.preheader

.noexc24.preheader:                               ; preds = %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEEixEm.exit116
  %i.mb = and i64 %.sroa.0.0.copyload.i.i111, 4294967295
  br label %.noexc24

.noexc24:                                         ; preds = %.noexc24.preheader, %bb.cm
  %i.mc = phi i64 [ %i.pb, %bb.cm ], [ %i.mb, %.noexc24.preheader ]
  %i.md = phi i32 [ %i.pa, %bb.cm ], [ %i.lz, %.noexc24.preheader ]
  %i.me = phi i64 [ %i.oz, %bb.cm ], [ 0, %.noexc24.preheader ] ; 2 uses
  %.036.i.i328 = phi i32 [ %i.oy, %bb.cm ], [ 0, %.noexc24.preheader ] ; 11 uses
  %i.mf = icmp ult i32 %i.md, 13
  %i.mg = load ptr, ptr %i.n, align 8
  %i.mh = select i1 %i.mf, ptr %i.o, ptr %i.mg
  %i.mi = getelementptr inbounds i8, ptr %i.mh, i64 %i.me ; 4 uses
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !18, !noalias !22298 ; 6 uses
  %i.mk = zext i8 %i.mj to i32                    ; 4 uses
  %i.ml = icmp sgt i8 %i.mj, -1
  br i1 %i.ml, label %_ZL18utf8proc_codepointPKcS0_Ri.exit126.thread253, label %bb.bw

bb.bw:                                            ; preds = %.noexc24
  %gepdiff = sub nsw i64 %i.mc, %i.me             ; 3 uses
  %i.mm = icmp slt i64 %gepdiff, 2
  br i1 %i.mm, label %.thread263, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mi, i64 1
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !18, !noalias !22298 ; 4 uses
  %i.mp = and i8 %i.mj, -32
  %or.cond.i119 = icmp eq i8 %i.mp, -64
  br i1 %or.cond.i119, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.mq = shl nuw nsw i32 %i.mk, 6
  %i.mr = zext i8 %i.mo to i32
  %i.ms = add nsw i32 %i.mq, -12416
  %i.mt = add nsw i32 %i.ms, %i.mr
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit126

bb.bz:                                            ; preds = %bb.bx
  %i.mu = icmp eq i8 %i.mj, -19
  %i.mv = and i8 %i.mo, -96
  %i.mw = icmp eq i8 %i.mv, -96
  %or.cond46.i120 = select i1 %i.mu, i1 %i.mw, i1 false
  %i.mx = icmp eq i64 %gepdiff, 2
  %or.cond47.i121 = or i1 %i.mx, %or.cond46.i120
  br i1 %or.cond47.i121, label %.thread263, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.my = getelementptr inbounds nuw i8, ptr %i.mi, i64 2
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !18, !noalias !22298 ; 2 uses
  %i.na = and i8 %i.mj, -16
  %or.cond5.i122 = icmp eq i8 %i.na, -32
  br i1 %or.cond5.i122, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.nb = shl nuw nsw i32 %i.mk, 12
  %i.nc = zext i8 %i.mo to i32
  %i.nd = shl nuw nsw i32 %i.nc, 6
  %i.ne = zext i8 %i.mz to i32
  %i.nf = add nsw i32 %i.nb, -925824
  %i.ng = add nsw i32 %i.nf, %i.nd
  %i.nh = add nsw i32 %i.ng, %i.ne
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit126

bb.cc:                                            ; preds = %bb.ca
  %i.ni = icmp samesign ugt i64 %gepdiff, 3
  %i.nj = and i8 %i.mj, -8
  %or.cond8.i123 = icmp eq i8 %i.nj, -16
  %or.cond48.i124 = and i1 %i.ni, %or.cond8.i123
  br i1 %or.cond48.i124, label %bb.cd, label %.thread263

bb.cd:                                            ; preds = %bb.cc
  %i.nk = getelementptr inbounds nuw i8, ptr %i.mi, i64 3
  %i.nl = load i8, ptr %i.nk, align 1, !tbaa !18, !noalias !22298
  %i.nm = shl nuw nsw i32 %i.mk, 18
  %i.nn = zext i8 %i.mo to i32
  %i.no = shl nuw nsw i32 %i.nn, 12
  %i.np = zext i8 %i.mz to i32
  %i.nq = shl nuw nsw i32 %i.np, 6
  %i.nr = zext i8 %i.nl to i32
  %i.ns = add nsw i32 %i.nm, -63447168
  %i.nt = add nsw i32 %i.ns, %i.no
  %i.nu = add nsw i32 %i.nt, %i.nq
  %i.nv = add nsw i32 %i.nu, %i.nr
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit126

_ZL18utf8proc_codepointPKcS0_Ri.exit126:          ; preds = %bb.by, %bb.cb, %bb.cd
  %.1205 = phi i32 [ 3, %bb.cb ], [ 4, %bb.cd ], [ 2, %bb.by ]
  %.3.i125 = phi i32 [ %i.nh, %bb.cb ], [ %i.nv, %bb.cd ], [ %i.mt, %bb.by ] ; 2 uses
  %i.nw = icmp eq i32 %.3.i125, -1
  br i1 %i.nw, label %.thread263, label %_ZL18utf8proc_codepointPKcS0_Ri.exit126.thread253

_ZL18utf8proc_codepointPKcS0_Ri.exit126.thread253: ; preds = %.noexc24, %_ZL18utf8proc_codepointPKcS0_Ri.exit126
  %.3.i125257 = phi i32 [ %.3.i125, %_ZL18utf8proc_codepointPKcS0_Ri.exit126 ], [ %i.mk, %.noexc24 ] ; 9 uses
  %.1205256 = phi i32 [ %.1205, %_ZL18utf8proc_codepointPKcS0_Ri.exit126 ], [ 1, %.noexc24 ]
  %i.nx = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes acquire, align 8, !noalias !22298
  %i.ny = icmp eq i8 %i.nx, 0
  br i1 %i.ny, label %bb.ce, label %bb.cf, !prof !101

bb.ce:                                            ; preds = %_ZL18utf8proc_codepointPKcS0_Ri.exit126.thread253
  %i.nz = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes) #24, !noalias !22298
  %.not.i5.i = icmp eq i32 %i.nz, 0
  br i1 %.not.i5.i, label %bb.cf, label %.noexc.i.i

.noexc.i.i:                                       ; preds = %bb.ce
  store i64 8321515008, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes, align 8, !tbaa !370, !noalias !22298
  %i.oa = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes), !noalias !22298 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes) #24, !noalias !22298
  br label %bb.cf

bb.cf:                                            ; preds = %.noexc.i.i, %bb.ce, %_ZL18utf8proc_codepointPKcS0_Ri.exit126.thread253
  %i.ob = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes acquire, align 8, !noalias !22298
  %i.oc = icmp eq i8 %i.ob, 0
  br i1 %i.oc, label %bb.cg, label %bb.ch, !prof !101

bb.cg:                                            ; preds = %bb.cf
  %i.od = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes) #24, !noalias !22298
  %.not14.i.i = icmp eq i32 %i.od, 0
  br i1 %.not14.i.i, label %bb.ch, label %.noexc23.i

.noexc23.i:                                       ; preds = %bb.cg
  store i64 3298534885247, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, align 8, !noalias !22298
  store i64 2147483648, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, i64 8), align 8, !noalias !22298
  %i.oe = call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes), !noalias !22298 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes) #24, !noalias !22298
  br label %bb.ch

bb.ch:                                            ; preds = %.noexc23.i, %bb.cg, %bb.cf
  %i.of = icmp slt i32 %.3.i125257, 0
  br i1 %i.of, label %.thread263, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.og = icmp samesign ult i32 %.3.i125257, 5000
  br i1 %i.og, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.oh = icmp samesign ugt i32 %.3.i125257, 32
  br i1 %i.oh, label %.thread263, label %.split261

.split261:                                        ; preds = %bb.cj
  %i.oi = zext nneg i32 %.3.i125257 to i64
  %i.oj = load i64, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes, align 8, !tbaa !370, !noalias !22298
  %i.ok = shl nuw nsw i64 1, %i.oi
  %i.ol = and i64 %i.oj, %i.ok
  %.not287 = icmp eq i64 %i.ol, 0
  br i1 %.not287, label %.thread263, label %bb.cm

bb.ck:                                            ; preds = %bb.ci
  %i.om = icmp samesign ugt i32 %.3.i125257, 8191
  br i1 %i.om, label %bb.cl, label %.split259

bb.cl:                                            ; preds = %bb.ck
  %i.on = icmp samesign ult i32 %.3.i125257, 8288
  br i1 %i.on, label %.split260, label %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i

.split260:                                        ; preds = %bb.cl
  %i.oo = add nsw i32 %.3.i125257, -8192
  %i.op = zext nneg i32 %i.oo to i64              ; 2 uses
  %i.oq = lshr i64 %i.op, 6
  %i.or = getelementptr inbounds nuw [8 x i8], ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, i64 %i.oq
  %i.os = load i64, ptr %i.or, align 8, !tbaa !370, !noalias !22298
  %i.ot = and i64 %i.op, 63
  %i.ou = shl nuw i64 1, %i.ot
  %i.ov = and i64 %i.os, %i.ou
  %.not286 = icmp eq i64 %i.ov, 0
  br i1 %.not286, label %.thread263, label %bb.cm

.split259:                                        ; preds = %bb.ck
  %i.ow = icmp eq i32 %.3.i125257, 5760
  br i1 %i.ow, label %bb.cm, label %.thread263

_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i: ; preds = %bb.cl
  %i.ox = icmp eq i32 %.3.i125257, 12288
  br i1 %i.ox, label %bb.cm, label %.thread263

bb.cm:                                            ; preds = %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i, %.split259, %.split260, %.split261
  %i.oy = add nsw i32 %.1205256, %.036.i.i328     ; 3 uses
  %i.oz = sext i32 %i.oy to i64                   ; 2 uses
  %i.pa = load i32, ptr %10, align 8, !tbaa !824, !noalias !22298 ; 2 uses
  %i.pb = zext i32 %i.pa to i64                   ; 2 uses
  %i.pc = icmp ugt i64 %i.pb, %i.oz
  br i1 %i.pc, label %.noexc24, label %.thread263

.thread263:                                       ; preds = %bb.cm, %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i, %_ZL18utf8proc_codepointPKcS0_Ri.exit126, %.split259, %.split260, %.split261, %bb.cc, %bb.bw, %bb.bz, %bb.ch, %bb.cj
  %.036.i.i.lcssa.ph = phi i32 [ %i.oy, %bb.cm ], [ %.036.i.i328, %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i ], [ %.036.i.i328, %_ZL18utf8proc_codepointPKcS0_Ri.exit126 ], [ %.036.i.i328, %.split259 ], [ %.036.i.i328, %.split260 ], [ %.036.i.i328, %.split261 ], [ %.036.i.i328, %bb.cc ], [ %.036.i.i328, %bb.bw ], [ %.036.i.i328, %bb.bz ], [ %.036.i.i328, %bb.ch ], [ %.036.i.i328, %bb.cj ] ; 2 uses
  %.pre670 = load i32, ptr %10, align 8, !tbaa !824, !noalias !22298 ; 2 uses
  %.pre671 = zext i32 %.pre670 to i64             ; 2 uses
  %i.pd = sext i32 %.036.i.i.lcssa.ph to i64      ; 6 uses
  %.not.i.i = icmp ugt i64 %.pre671, %i.pd
  br i1 %.not.i.i, label %.noexc28, label %.invoke722

.noexc28:                                         ; preds = %.thread263
  %i.pe = icmp ult i32 %.pre670, 13
  %i.pf = load ptr, ptr %i.n, align 8
  %i.pg = select i1 %i.pe, ptr %i.o, ptr %i.pf    ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 %i.pd ; 4 uses
  %i.pi = add nsw i64 %.pre671, -1                ; 3 uses
  %.not44.i.i347 = icmp samesign ult i64 %i.pi, %i.pd
  br i1 %.not44.i.i347, label %_ZN8facebook5velox9functions10stringImpl25endsWithUnicodeWhiteSpaceEPKcm.exit.i.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.noexc28
  %invariant.op760 = sub i64 1, %i.pd
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN8facebook5velox9functions10stringImpl25endsWithUnicodeWhiteSpaceEPKcm.exit.i
  %.033.i.i348 = phi i64 [ %i.rq, %_ZN8facebook5velox9functions10stringImpl25endsWithUnicodeWhiteSpaceEPKcm.exit.i ], [ %i.pi, %.lr.ph.preheader ] ; 15 uses
  %.reass.reass.reass = add i64 %.033.i.i348, %invariant.op760 ; 3 uses
  %.not.i6.i = icmp eq i64 %.reass.reass.reass, 0
  br i1 %.not.i6.i, label %_ZN8facebook5velox9functions10stringImpl25endsWithUnicodeWhiteSpaceEPKcm.exit.i.thread, label %bb.cn

bb.cn:                                            ; preds = %.lr.ph
  %i.pj = getelementptr i8, ptr %i.pg, i64 %.033.i.i348 ; 2 uses
  %i.pk = load i8, ptr %i.pj, align 1, !tbaa !18, !noalias !22298 ; 2 uses
  %i.pl = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes acquire, align 8, !noalias !22298
end_hunk_11
begin_hunk_12_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_20ConstantVectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi:bb.a
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %13) #24
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.fp, i32 noundef %i.fo, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.bl unwind label %bb.bn

bb.bl:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_20ConstantVectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSJ_SN_ENKUlSN_E0_clIiEEDaSN_.exit
  %i.kq = load ptr, ptr %13, align 8, !tbaa !607
  %.not.i133 = icmp eq ptr %i.kq, null
  br i1 %.not.i133, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit134, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit134

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit134: ; preds = %bb.bl, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_20ConstantVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit

bb.bn:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_20ConstantVectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSJ_SN_ENKUlSN_E0_clIiEEDaSN_.exit
  %i.kr = landingpad { ptr, i32 }
          cleanup
  %i.ks = load ptr, ptr %13, align 8, !tbaa !607
  %.not.i135 = icmp eq ptr %i.ks, null
  br i1 %.not.i135, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit136, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit136

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit136: ; preds = %bb.bn, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %bb.bp

bb.bp:                                            ; preds = %.loopexit155, %.loopexit.split-lp156, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit136
  %.pn16.i = phi { ptr, i32 } [ %i.kr, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit136 ], [ %lpad.loopexit157, %.loopexit155 ], [ %lpad.loopexit.split-lp158, %.loopexit.split-lp156 ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bk
  %i.kt = landingpad { ptr, i32 }
          catch ptr null
  %i.ku = extractvalue { ptr, i32 } %i.kt, 0
  call void @__clang_call_terminate(ptr %i.ku) #51
  unreachable

bb.br:                                            ; preds = %.loopexit151
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_20ConstantVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit123, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit130, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit134
  %i.kv = add i64 %.015176, -1
  %i.kw = and i64 %i.kv, %.015176                 ; 2 uses
  %.not = icmp eq i64 %i.kw, 0
  br i1 %.not, label %.loopexit148, label %bb.ak, !llvm.loop !23627

.loopexit148:                                     ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_20ConstantVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clImEEDaSP_.exit, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_20ConstantVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit, %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_20ConstantVectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKS1_SR_ST_EUlSR_E_EEvSR_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef byval(%class.anon.5417) align 8 %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.474", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.sroa.4 = alloca [12 x i8], align 4            ; 8 uses
  %4 = alloca %"struct.facebook::velox::StringView", align 8 ; 7 uses
  %5 = alloca %"class.facebook::velox::Status", align 8 ; 8 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %7 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !1091, !range !309, !noundef !310
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i:     ; preds = %bb.a
  %.0.in.pre.i = load i8, ptr %i.a, align 4, !tbaa !87, !range !309
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1017
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1018 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !1016
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !745    ; 2 uses
  %.not.i.i24 = icmp sgt i32 %i.i, 0
  br i1 %.not.i.i24, label %bb.e, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.i, 2147483584                 ; 3 uses
  %i.o = zext nneg i32 %i.n to i64
  %.not37.i.i.not.i178.not = icmp eq i32 %i.n, 0
  br i1 %.not37.i.i.not.i178.not, label %.critedge.i.i.i, label %.lr.ph180

bb.f:                                             ; preds = %.lr.ph180
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i179, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.o
  br i1 %.not37.i.i.not.i, label %.lr.ph180, label %.critedge.i.i.i, !llvm.loop !1172

.lr.ph180:                                        ; preds = %bb.e, %bb.f
  %indvars.iv.i179 = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i179, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !370
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, !llvm.loop !1172

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
  %i.y = load i64, ptr %i.x, align 8, !tbaa !370
  %.demorgan.i = or i64 %i.y, %notmask.i40.i.i.i
  %i.z = icmp eq i64 %.demorgan.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i:   ; preds = %.lr.ph180, %bb.g, %.critedge.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph180 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit: ; preds = %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i
  %.0.in.i = phi i8 [ %.0.in.pre.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i ]
  %.0.i23 = trunc nuw i8 %.0.in.i to i1
  br i1 %.0.i23, label %bb.h, label %bb.bf

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1018 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !1017 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %.lr.ph, label %.loopexit75

.lr.ph:                                           ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.4.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4
  %.sroa.4.4..sroa_idx186 = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_20ConstantVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit
  %.0103 = phi i32 [ %i.ag, %.lr.ph ], [ %i.hx, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_20ConstantVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit ] ; 4 uses
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !23532 ; 2 uses
  %i.ap = load ptr, ptr %1, align 8, !tbaa !23628, !nonnull !310, !align !416 ; 4 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !23629, !nonnull !310, !align !416
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 88
  store i32 %.0103, ptr %i.ar, align 8, !tbaa !789
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !23631, !nonnull !310, !align !416
  %i.au = load ptr, ptr %i.ap, align 8, !tbaa !23629, !nonnull !310, !align !416 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !23632, !noalias !23634, !nonnull !310, !align !416 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !23637
  %.sroa.0.0.copyload.i = load i64, ptr %i.ax, align 8, !noalias !23637 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !18, !noalias !23637
  store i64 %.sroa.0.0.copyload.i, ptr %4, align 8, !noalias !23637
  store ptr %.sroa.2.0.copyload.i, ptr %i.aj, align 8, !noalias !23637
  %i.ay = trunc i64 %.sroa.0.0.copyload.i to i32  ; 2 uses
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %.invoke, label %.noexc16.preheader

.noexc16.preheader:                               ; preds = %bb.i
  %i.ba = and i64 %.sroa.0.0.copyload.i, 4294967295
  br label %.noexc16

.noexc16:                                         ; preds = %.noexc16.preheader, %bb.z
  %i.bb = phi i64 [ %i.ea, %bb.z ], [ %i.ba, %.noexc16.preheader ]
  %i.bc = phi i32 [ %i.dz, %bb.z ], [ %i.ay, %.noexc16.preheader ]
  %i.bd = phi i64 [ %i.dy, %bb.z ], [ 0, %.noexc16.preheader ] ; 2 uses
  %.022.i87 = phi i32 [ %i.dx, %bb.z ], [ 0, %.noexc16.preheader ] ; 11 uses
  %i.be = icmp ult i32 %i.bc, 13
  %i.bf = load ptr, ptr %i.aj, align 8
  %i.bg = select i1 %i.be, ptr %i.ak, ptr %i.bf
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 %i.bd ; 4 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !18  ; 6 uses
  %i.bj = zext i8 %i.bi to i32                    ; 4 uses
  %i.bk = icmp sgt i8 %i.bi, -1
  br i1 %i.bk, label %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread63, label %bb.j

bb.j:                                             ; preds = %.noexc16
  %gepdiff = sub nsw i64 %i.bb, %i.bd             ; 3 uses
  %i.bl = icmp slt i64 %gepdiff, 2
  br i1 %i.bl, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !18  ; 4 uses
  %i.bo = and i8 %i.bi, -32
  %or.cond.i = icmp eq i8 %i.bo, -64
  br i1 %or.cond.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bp = shl nuw nsw i32 %i.bj, 6
  %i.bq = zext i8 %i.bn to i32
  %i.br = add nsw i32 %i.bp, -12416
  %i.bs = add nsw i32 %i.br, %i.bq
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

bb.m:                                             ; preds = %bb.k
  %i.bt = icmp eq i8 %i.bi, -19
  %i.bu = and i8 %i.bn, -96
  %i.bv = icmp eq i8 %i.bu, -96
  %or.cond46.i = select i1 %i.bt, i1 %i.bv, i1 false
  %i.bw = icmp eq i64 %gepdiff, 2
  %or.cond47.i = or i1 %i.bw, %or.cond46.i
  br i1 %or.cond47.i, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !18  ; 2 uses
  %i.bz = and i8 %i.bi, -16
  %or.cond5.i = icmp eq i8 %i.bz, -32
  br i1 %or.cond5.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ca = shl nuw nsw i32 %i.bj, 12
  %i.cb = zext i8 %i.bn to i32
  %i.cc = shl nuw nsw i32 %i.cb, 6
  %i.cd = zext i8 %i.by to i32
  %i.ce = add nsw i32 %i.ca, -925824
  %i.cf = add nsw i32 %i.ce, %i.cc
  %i.cg = add nsw i32 %i.cf, %i.cd
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

bb.p:                                             ; preds = %bb.n
  %i.ch = icmp samesign ugt i64 %gepdiff, 3
  %i.ci = and i8 %i.bi, -8
  %or.cond8.i = icmp eq i8 %i.ci, -16
  %or.cond48.i = and i1 %i.ch, %or.cond8.i
  br i1 %or.cond48.i, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bh, i64 3
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !18
  %i.cl = shl nuw nsw i32 %i.bj, 18
  %i.cm = zext i8 %i.bn to i32
  %i.cn = shl nuw nsw i32 %i.cm, 12
  %i.co = zext i8 %i.by to i32
  %i.cp = shl nuw nsw i32 %i.co, 6
  %i.cq = zext i8 %i.ck to i32
  %i.cr = add nsw i32 %i.cl, -63447168
  %i.cs = add nsw i32 %i.cr, %i.cn
  %i.ct = add nsw i32 %i.cs, %i.cp
  %i.cu = add nsw i32 %i.ct, %i.cq
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

_ZL18utf8proc_codepointPKcS0_Ri.exit:             ; preds = %bb.l, %bb.o, %bb.q
  %.1 = phi i32 [ 3, %bb.o ], [ 4, %bb.q ], [ 2, %bb.l ]
  %.3.i = phi i32 [ %i.cg, %bb.o ], [ %i.cu, %bb.q ], [ %i.bs, %bb.l ] ; 2 uses
  %i.cv = icmp eq i32 %.3.i, -1
  br i1 %i.cv, label %.thread, label %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread63

_ZL18utf8proc_codepointPKcS0_Ri.exit.thread63:    ; preds = %.noexc16, %_ZL18utf8proc_codepointPKcS0_Ri.exit
  %.3.i67 = phi i32 [ %.3.i, %_ZL18utf8proc_codepointPKcS0_Ri.exit ], [ %i.bj, %.noexc16 ] ; 9 uses
  %.166 = phi i32 [ %.1, %_ZL18utf8proc_codepointPKcS0_Ri.exit ], [ 1, %.noexc16 ]
  %i.cw = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes acquire, align 8
  %i.cx = icmp eq i8 %i.cw, 0
  br i1 %i.cx, label %bb.r, label %bb.s, !prof !101

bb.r:                                             ; preds = %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread63
  %i.cy = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes) #24
  %.not.i.i = icmp eq i32 %i.cy, 0
  br i1 %.not.i.i, label %bb.s, label %.noexc.i.i

.noexc.i.i:                                       ; preds = %bb.r
  store i64 8321515008, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes, align 8, !tbaa !370
  %i.cz = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes) #24
  br label %bb.s

bb.s:                                             ; preds = %.noexc.i.i, %bb.r, %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread63
  %i.da = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes acquire, align 8
  %i.db = icmp eq i8 %i.da, 0
  br i1 %i.db, label %bb.t, label %bb.u, !prof !101

bb.t:                                             ; preds = %bb.s
  %i.dc = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes) #24
  %.not14.i.i = icmp eq i32 %i.dc, 0
  br i1 %.not14.i.i, label %bb.u, label %.noexc.i

.noexc.i:                                         ; preds = %bb.t
  store i64 3298534885247, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, align 8
  store i64 2147483648, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, i64 8), align 8
  %i.dd = call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes) #24
  br label %bb.u

bb.u:                                             ; preds = %.noexc.i, %bb.t, %bb.s
  %i.de = icmp slt i32 %.3.i67, 0
  br i1 %i.de, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.df = icmp samesign ult i32 %.3.i67, 5000
  br i1 %i.df, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dg = icmp samesign ugt i32 %.3.i67, 32
  br i1 %i.dg, label %.thread, label %.split70

.split70:                                         ; preds = %bb.w
  %i.dh = zext nneg i32 %.3.i67 to i64
  %i.di = load i64, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes, align 8, !tbaa !370
  %i.dj = shl nuw nsw i64 1, %i.dh
  %i.dk = and i64 %i.di, %i.dj
  %.not74 = icmp eq i64 %i.dk, 0
  br i1 %.not74, label %.thread, label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.dl = icmp samesign ugt i32 %.3.i67, 8191
  br i1 %i.dl, label %bb.y, label %.split

bb.y:                                             ; preds = %bb.x
  %i.dm = icmp samesign ult i32 %.3.i67, 8288
  br i1 %i.dm, label %.split69, label %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i

.split69:                                         ; preds = %bb.y
  %i.dn = add nsw i32 %.3.i67, -8192
  %i.do = zext nneg i32 %i.dn to i64              ; 2 uses
  %i.dp = lshr i64 %i.do, 6
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, i64 %i.dp
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !370
  %i.ds = and i64 %i.do, 63
  %i.dt = shl nuw i64 1, %i.ds
  %i.du = and i64 %i.dr, %i.dt
  %.not = icmp eq i64 %i.du, 0
  br i1 %.not, label %.thread, label %bb.z

.split:                                           ; preds = %bb.x
  %i.dv = icmp eq i32 %.3.i67, 5760
  br i1 %i.dv, label %bb.z, label %.thread

_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i: ; preds = %bb.y
  %i.dw = icmp eq i32 %.3.i67, 12288
  br i1 %i.dw, label %bb.z, label %.thread

bb.z:                                             ; preds = %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i, %.split, %.split69, %.split70
  %i.dx = add nsw i32 %.166, %.022.i87            ; 3 uses
  %i.dy = sext i32 %i.dx to i64                   ; 2 uses
  %i.dz = load i32, ptr %4, align 8, !tbaa !824   ; 2 uses
  %i.ea = zext i32 %i.dz to i64                   ; 2 uses
  %i.eb = icmp ugt i64 %i.ea, %i.dy
  br i1 %i.eb, label %.noexc16, label %.thread

.thread:                                          ; preds = %bb.z, %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i, %_ZL18utf8proc_codepointPKcS0_Ri.exit, %.split, %.split69, %.split70, %bb.p, %bb.j, %bb.m, %bb.u, %bb.w
  %.022.i.lcssa.ph = phi i32 [ %i.dx, %bb.z ], [ %.022.i87, %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i ], [ %.022.i87, %_ZL18utf8proc_codepointPKcS0_Ri.exit ], [ %.022.i87, %.split ], [ %.022.i87, %.split69 ], [ %.022.i87, %.split70 ], [ %.022.i87, %bb.p ], [ %.022.i87, %bb.j ], [ %.022.i87, %bb.m ], [ %.022.i87, %bb.u ], [ %.022.i87, %bb.w ] ; 3 uses
  %.pre = load i32, ptr %4, align 8, !tbaa !824   ; 4 uses
  %.pre154 = zext i32 %.pre to i64
  %i.ec = sext i32 %.022.i.lcssa.ph to i64        ; 2 uses
  %.not.i = icmp ugt i64 %.pre154, %i.ec
  br i1 %.not.i, label %.noexc20, label %.invoke

.invoke:                                          ; preds = %.thread, %bb.i
  invoke void @_ZN8facebook5velox4exec12StringWriter8setEmptyEv(ptr noundef nonnull align 8 dereferenceable(96) %i.av)
          to label %bb.ak unwind label %bb.ao

.noexc20:                                         ; preds = %.thread
  %i.ed = icmp ult i32 %.pre, 13
  %i.ee = load ptr, ptr %i.aj, align 8
  %i.ef = select i1 %i.ed, ptr %i.ak, ptr %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ec ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %i.eh = sub i32 %.pre, %.022.i.lcssa.ph         ; 5 uses
  %i.ei = icmp slt i32 %i.eh, 0
  br i1 %i.ei, label %bb.aa, label %bb.ad, !prof !98

bb.aa:                                            ; preds = %.noexc20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24, !noalias !23640
  store i32 %i.eh, ptr %2, align 16, !tbaa !18, !alias.scope !23643, !noalias !23640
  store i32 0, ptr %i.al, align 16, !tbaa !18, !alias.scope !23643, !noalias !23640
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.78, i64 11, i64 17, ptr nonnull %2)
          to label %.noexc28 unwind label %bb.ao

.noexc28:                                         ; preds = %bb.aa
end_hunk_12
begin_hunk_13_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_20ConstantVectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKS1_SR_ST_EUlSR_E_EEvSR_:bb.a

bb.bd:                                            ; preds = %bb.bc, %bb.ax
  %i.hv = landingpad { ptr, i32 }
          catch ptr null
  %i.hw = extractvalue { ptr, i32 } %i.hv, 0
  call void @__clang_call_terminate(ptr %i.hw) #51
  unreachable

bb.be:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_20ConstantVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit46, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit51
  %i.hx = add i32 %.0103, 1                       ; 2 uses
  %exitcond.not = icmp eq i32 %i.hx, %i.ae
  br i1 %exitcond.not, label %.loopexit75, label %bb.i, !llvm.loop !23652

bb.bf:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.hy = load ptr, ptr %0, align 8, !tbaa !745
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !1017
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !1018
  tail call void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_20ConstantVectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_(ptr noundef %i.hy, i32 noundef %i.ia, i32 noundef %i.ic, i1 noundef zeroext true, ptr noundef nonnull byval(%class.anon.5417) align 8 %1)
  br label %.loopexit75

.loopexit75:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_20ConstantVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit, %bb.h, %bb.bf
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_20ConstantVectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef byval(%class.anon.5417) align 8 %4) local_unnamed_addr #0 comdat {
bb.a:
  %5 = alloca %class.anon.5420, align 8           ; 6 uses
  %6 = alloca %class.anon.5419, align 8           ; 8 uses
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
  br i1 %.not.i, label %bb.b, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS4_10VectorExecEEESC_NS0_7VarcharENS0_15ConstantCheckerIJSE_EEEJSE_EEEE8applyUdfIZNKSI_7iterateIJNS4_20ConstantVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSO_SS_EUlSS_E_ZNKSJ_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS13_EEvS15_iibSS_EUliE_EEviiSS_SU_.exit

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
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_20ConstantVectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.g, i64 noundef %i.q)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS4_10VectorExecEEESC_NS0_7VarcharENS0_15ConstantCheckerIJSE_EEEJSE_EEEE8applyUdfIZNKSI_7iterateIJNS4_20ConstantVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSO_SS_EUlSS_E_ZNKSJ_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS13_EEvS15_iibSS_EUliE_EEviiSS_SU_.exit

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
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_20ConstantVectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.r, i64 noundef %i.x)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = add nsw i32 %i.d, 64                     ; 2 uses
  %.not3337.i = icmp sgt i32 %i.y, %i.e
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.not34.i = icmp eq i32 %2, %i.e
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS4_10VectorExecEEESC_NS0_7VarcharENS0_15ConstantCheckerIJSE_EEEJSE_EEEE8applyUdfIZNKSI_7iterateIJNS4_20ConstantVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSO_SS_EUlSS_E_ZNKSJ_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS13_EEvS15_iibSS_EUliE_EEviiSS_SU_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.z = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.d, %bb.f ]
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_20ConstantVectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !23653

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i36.i = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask.i36.i, -1
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_20ConstantVectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.ac, i64 noundef %i.af)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS4_10VectorExecEEESC_NS0_7VarcharENS0_15ConstantCheckerIJSE_EEEJSE_EEEE8applyUdfIZNKSI_7iterateIJNS4_20ConstantVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSO_SS_EUlSS_E_ZNKSJ_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS13_EEvS15_iibSS_EUliE_EEviiSS_SU_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS4_10VectorExecEEESC_NS0_7VarcharENS0_15ConstantCheckerIJSE_EEEJSE_EEEE8applyUdfIZNKSI_7iterateIJNS4_20ConstantVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSO_SS_EUlSS_E_ZNKSJ_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS13_EEvS15_iibSS_EUliE_EEviiSS_SU_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_20ConstantVectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.474", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.sroa.4 = alloca [12 x i8], align 4            ; 8 uses
  %5 = alloca %"struct.facebook::velox::StringView", align 8 ; 7 uses
  %6 = alloca %"class.facebook::velox::Status", align 8 ; 8 uses
  %7 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %8 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !23654, !range !309, !noundef !310
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23656
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !370
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit82, label %.preheader81

.preheader81:                                     ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.4.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4
  %.sroa.4.4..sroa_idx188 = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.preheader81, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_20ConstantVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit
  %.0110 = phi i64 [ %i.k, %.preheader81 ], [ %i.hg, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_20ConstantVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit ] ; 3 uses
  %i.t = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0110, i1 true)
  %i.u = trunc nuw nsw i64 %i.t to i32
  %i.v = or disjoint i32 %i.m, %i.u               ; 3 uses
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !23532 ; 2 uses
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !23628, !nonnull !310, !align !416 ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !23629, !nonnull !310, !align !416
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 88
  store i32 %i.v, ptr %i.z, align 8, !tbaa !789
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !23631, !nonnull !310, !align !416
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !23629, !nonnull !310, !align !416 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !23632, !noalias !23657, !nonnull !310, !align !416 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !23660
  %.sroa.0.0.copyload.i = load i64, ptr %i.af, align 8, !noalias !23660 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !18, !noalias !23660
  store i64 %.sroa.0.0.copyload.i, ptr %5, align 8, !noalias !23660
  store ptr %.sroa.2.0.copyload.i, ptr %i.o, align 8, !noalias !23660
  %i.ag = trunc i64 %.sroa.0.0.copyload.i to i32  ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %.invoke, label %.noexc23.preheader

.noexc23.preheader:                               ; preds = %bb.b
  %i.ai = and i64 %.sroa.0.0.copyload.i, 4294967295
  br label %.noexc23

.noexc23:                                         ; preds = %.noexc23.preheader, %bb.s
  %i.aj = phi i64 [ %i.di, %bb.s ], [ %i.ai, %.noexc23.preheader ]
  %i.ak = phi i32 [ %i.dh, %bb.s ], [ %i.ag, %.noexc23.preheader ]
  %i.al = phi i64 [ %i.dg, %bb.s ], [ 0, %.noexc23.preheader ] ; 2 uses
  %.022.i94 = phi i32 [ %i.df, %bb.s ], [ 0, %.noexc23.preheader ] ; 11 uses
  %i.am = icmp ult i32 %i.ak, 13
  %i.an = load ptr, ptr %i.o, align 8
  %i.ao = select i1 %i.am, ptr %i.p, ptr %i.an
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %i.al ; 4 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !18  ; 6 uses
  %i.ar = zext i8 %i.aq to i32                    ; 4 uses
  %i.as = icmp sgt i8 %i.aq, -1
  br i1 %i.as, label %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread68, label %bb.c

bb.c:                                             ; preds = %.noexc23
  %gepdiff = sub nsw i64 %i.aj, %i.al             ; 3 uses
  %i.at = icmp slt i64 %gepdiff, 2
  br i1 %i.at, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !18  ; 4 uses
  %i.aw = and i8 %i.aq, -32
  %or.cond.i = icmp eq i8 %i.aw, -64
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ax = shl nuw nsw i32 %i.ar, 6
  %i.ay = zext i8 %i.av to i32
  %i.az = add nsw i32 %i.ax, -12416
  %i.ba = add nsw i32 %i.az, %i.ay
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

bb.f:                                             ; preds = %bb.d
  %i.bb = icmp eq i8 %i.aq, -19
  %i.bc = and i8 %i.av, -96
  %i.bd = icmp eq i8 %i.bc, -96
  %or.cond46.i = select i1 %i.bb, i1 %i.bd, i1 false
  %i.be = icmp eq i64 %gepdiff, 2
  %or.cond47.i = or i1 %i.be, %or.cond46.i
  br i1 %or.cond47.i, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !18  ; 2 uses
  %i.bh = and i8 %i.aq, -16
  %or.cond5.i = icmp eq i8 %i.bh, -32
  br i1 %or.cond5.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bi = shl nuw nsw i32 %i.ar, 12
  %i.bj = zext i8 %i.av to i32
  %i.bk = shl nuw nsw i32 %i.bj, 6
  %i.bl = zext i8 %i.bg to i32
  %i.bm = add nsw i32 %i.bi, -925824
  %i.bn = add nsw i32 %i.bm, %i.bk
  %i.bo = add nsw i32 %i.bn, %i.bl
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

bb.i:                                             ; preds = %bb.g
  %i.bp = icmp samesign ugt i64 %gepdiff, 3
  %i.bq = and i8 %i.aq, -8
  %or.cond8.i = icmp eq i8 %i.bq, -16
  %or.cond48.i = and i1 %i.bp, %or.cond8.i
  br i1 %or.cond48.i, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.ap, i64 3
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !18
  %i.bt = shl nuw nsw i32 %i.ar, 18
  %i.bu = zext i8 %i.av to i32
  %i.bv = shl nuw nsw i32 %i.bu, 12
  %i.bw = zext i8 %i.bg to i32
  %i.bx = shl nuw nsw i32 %i.bw, 6
  %i.by = zext i8 %i.bs to i32
  %i.bz = add nsw i32 %i.bt, -63447168
  %i.ca = add nsw i32 %i.bz, %i.bv
  %i.cb = add nsw i32 %i.ca, %i.bx
  %i.cc = add nsw i32 %i.cb, %i.by
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

_ZL18utf8proc_codepointPKcS0_Ri.exit:             ; preds = %bb.e, %bb.h, %bb.j
  %.1 = phi i32 [ 3, %bb.h ], [ 4, %bb.j ], [ 2, %bb.e ]
  %.3.i = phi i32 [ %i.bo, %bb.h ], [ %i.cc, %bb.j ], [ %i.ba, %bb.e ] ; 2 uses
  %i.cd = icmp eq i32 %.3.i, -1
  br i1 %i.cd, label %.thread, label %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread68

_ZL18utf8proc_codepointPKcS0_Ri.exit.thread68:    ; preds = %.noexc23, %_ZL18utf8proc_codepointPKcS0_Ri.exit
  %.3.i72 = phi i32 [ %.3.i, %_ZL18utf8proc_codepointPKcS0_Ri.exit ], [ %i.ar, %.noexc23 ] ; 9 uses
  %.171 = phi i32 [ %.1, %_ZL18utf8proc_codepointPKcS0_Ri.exit ], [ 1, %.noexc23 ]
  %i.ce = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes acquire, align 8
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %bb.k, label %bb.l, !prof !101

bb.k:                                             ; preds = %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread68
  %i.cg = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes) #24
  %.not.i.i = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i, label %bb.l, label %.noexc.i.i

.noexc.i.i:                                       ; preds = %bb.k
  store i64 8321515008, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes, align 8, !tbaa !370
  %i.ch = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes) #24
  br label %bb.l

bb.l:                                             ; preds = %.noexc.i.i, %bb.k, %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread68
  %i.ci = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes acquire, align 8
  %i.cj = icmp eq i8 %i.ci, 0
  br i1 %i.cj, label %bb.m, label %bb.n, !prof !101

bb.m:                                             ; preds = %bb.l
  %i.ck = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes) #24
  %.not14.i.i = icmp eq i32 %i.ck, 0
  br i1 %.not14.i.i, label %bb.n, label %.noexc.i

.noexc.i:                                         ; preds = %bb.m
  store i64 3298534885247, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, align 8
  store i64 2147483648, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, i64 8), align 8
  %i.cl = call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes) #24
  br label %bb.n

bb.n:                                             ; preds = %.noexc.i, %bb.m, %bb.l
  %i.cm = icmp slt i32 %.3.i72, 0
  br i1 %i.cm, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cn = icmp samesign ult i32 %.3.i72, 5000
  br i1 %i.cn, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.co = icmp samesign ugt i32 %.3.i72, 32
  br i1 %i.co, label %.thread, label %.split75

.split75:                                         ; preds = %bb.p
  %i.cp = zext nneg i32 %.3.i72 to i64
  %i.cq = load i64, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes, align 8, !tbaa !370
  %i.cr = shl nuw nsw i64 1, %i.cp
  %i.cs = and i64 %i.cq, %i.cr
  %.not80 = icmp eq i64 %i.cs, 0
  br i1 %.not80, label %.thread, label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.ct = icmp samesign ugt i32 %.3.i72, 8191
  br i1 %i.ct, label %bb.r, label %.split

bb.r:                                             ; preds = %bb.q
  %i.cu = icmp samesign ult i32 %.3.i72, 8288
  br i1 %i.cu, label %.split74, label %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i

.split74:                                         ; preds = %bb.r
  %i.cv = add nsw i32 %.3.i72, -8192
  %i.cw = zext nneg i32 %i.cv to i64              ; 2 uses
  %i.cx = lshr i64 %i.cw, 6
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, i64 %i.cx
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !370
  %i.da = and i64 %i.cw, 63
  %i.db = shl nuw i64 1, %i.da
  %i.dc = and i64 %i.cz, %i.db
  %.not79 = icmp eq i64 %i.dc, 0
  br i1 %.not79, label %.thread, label %bb.s

.split:                                           ; preds = %bb.q
  %i.dd = icmp eq i32 %.3.i72, 5760
  br i1 %i.dd, label %bb.s, label %.thread

_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i: ; preds = %bb.r
  %i.de = icmp eq i32 %.3.i72, 12288
  br i1 %i.de, label %bb.s, label %.thread

bb.s:                                             ; preds = %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i, %.split, %.split74, %.split75
  %i.df = add nsw i32 %.171, %.022.i94            ; 3 uses
  %i.dg = sext i32 %i.df to i64                   ; 2 uses
  %i.dh = load i32, ptr %5, align 8, !tbaa !824   ; 2 uses
  %i.di = zext i32 %i.dh to i64                   ; 2 uses
  %i.dj = icmp ugt i64 %i.di, %i.dg
  br i1 %i.dj, label %.noexc23, label %.thread

.thread:                                          ; preds = %bb.s, %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i, %_ZL18utf8proc_codepointPKcS0_Ri.exit, %.split, %.split74, %.split75, %bb.i, %bb.c, %bb.f, %bb.n, %bb.p
  %.022.i.lcssa.ph = phi i32 [ %i.df, %bb.s ], [ %.022.i94, %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i ], [ %.022.i94, %_ZL18utf8proc_codepointPKcS0_Ri.exit ], [ %.022.i94, %.split ], [ %.022.i94, %.split74 ], [ %.022.i94, %.split75 ], [ %.022.i94, %bb.i ], [ %.022.i94, %bb.c ], [ %.022.i94, %bb.f ], [ %.022.i94, %bb.n ], [ %.022.i94, %bb.p ] ; 3 uses
  %.pre = load i32, ptr %5, align 8, !tbaa !824   ; 4 uses
  %.pre161 = zext i32 %.pre to i64
  %i.dk = sext i32 %.022.i.lcssa.ph to i64        ; 2 uses
  %.not.i = icmp ugt i64 %.pre161, %i.dk
  br i1 %.not.i, label %.noexc27, label %.invoke

.invoke:                                          ; preds = %.thread, %bb.b
  invoke void @_ZN8facebook5velox4exec12StringWriter8setEmptyEv(ptr noundef nonnull align 8 dereferenceable(96) %i.ad)
          to label %bb.ad unwind label %bb.ah

.noexc27:                                         ; preds = %.thread
  %i.dl = icmp ult i32 %.pre, 13
  %i.dm = load ptr, ptr %i.o, align 8
  %i.dn = select i1 %i.dl, ptr %i.p, ptr %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dk ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %i.dp = sub i32 %.pre, %.022.i.lcssa.ph         ; 5 uses
  %i.dq = icmp slt i32 %i.dp, 0
  br i1 %i.dq, label %bb.t, label %bb.w, !prof !98

bb.t:                                             ; preds = %.noexc27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !23663
  store i32 %i.dp, ptr %3, align 16, !tbaa !18, !alias.scope !23666, !noalias !23663
  store i32 0, ptr %i.q, align 16, !tbaa !18, !alias.scope !23666, !noalias !23663
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.78, i64 11, i64 17, ptr nonnull %3)
          to label %.noexc33 unwind label %bb.ah

.noexc33:                                         ; preds = %bb.t
end_hunk_13
begin_hunk_14_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_20ConstantVectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim:bb.a
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ao:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_20ConstantVectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clIiEEDaSN_.exit14
  %i.gy = landingpad { ptr, i32 }
          cleanup
  %i.gz = load ptr, ptr %7, align 8, !tbaa !607
  %.not.i53 = icmp eq ptr %i.gz, null
  br i1 %.not.i53, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit54, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit54

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit54: ; preds = %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.aq

bb.aq:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit54, %bb.an
  %.pn.i = phi { ptr, i32 } [ %i.gy, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit54 ], [ %i.gx, %bb.an ]
  invoke void @__cxa_end_catch()
          to label %.loopexit83 unwind label %bb.aw

.loopexit85:                                      ; preds = %tailrecurse.i.i.i.i.3
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

.loopexit.split-lp:                               ; preds = %.loopexit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_20ConstantVectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clIiEEDaSN_.exit: ; preds = %tailrecurse.i.i.i.i.3
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %8) #24
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.w, i32 noundef %i.v, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.ar unwind label %bb.at

bb.ar:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_20ConstantVectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clIiEEDaSN_.exit
  %i.ha = load ptr, ptr %8, align 8, !tbaa !607
  %.not.i55 = icmp eq ptr %i.ha, null
  br i1 %.not.i55, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit56, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit56

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit56: ; preds = %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_20ConstantVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit

bb.at:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_20ConstantVectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clIiEEDaSN_.exit
  %i.hb = landingpad { ptr, i32 }
          cleanup
  %i.hc = load ptr, ptr %8, align 8, !tbaa !607
  %.not.i57 = icmp eq ptr %i.hc, null
  br i1 %.not.i57, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit58, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit58

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit58: ; preds = %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.av

bb.av:                                            ; preds = %.loopexit85, %.loopexit.split-lp, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit58
  %.pn16.i = phi { ptr, i32 } [ %i.hb, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit58 ], [ %lpad.loopexit, %.loopexit85 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @__cxa_end_catch()
          to label %.loopexit83 unwind label %bb.aw

.loopexit83:                                      ; preds = %bb.aj, %bb.av, %bb.aq
  %.merged.i = phi { ptr, i32 } [ %.pn.i, %bb.aq ], [ %.pn16.i, %bb.av ], [ %eh.lpad-body, %bb.aj ]
  resume { ptr, i32 } %.merged.i

bb.aw:                                            ; preds = %bb.av, %bb.aq
  %i.hd = landingpad { ptr, i32 }
          catch ptr null
  %i.he = extractvalue { ptr, i32 } %i.hd, 0
  call void @__clang_call_terminate(ptr %i.he) #51
  unreachable

bb.ax:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_20ConstantVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit51, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit56
  %i.hf = add i64 %.0110, -1
  %i.hg = and i64 %i.hf, %.0110                   ; 2 uses
  %.not10 = icmp eq i64 %i.hg, 0
  br i1 %.not10, label %.loopexit82, label %bb.b, !llvm.loop !23672

.loopexit82:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_20ConstantVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_20ConstantVectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.474", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.474", align 16 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.sroa.4159 = alloca [12 x i8], align 4         ; 8 uses
  %6 = alloca %"struct.facebook::velox::StringView", align 8 ; 7 uses
  %7 = alloca %"class.facebook::velox::Status", align 8 ; 8 uses
  %8 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %9 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %.sroa.4 = alloca [12 x i8], align 4            ; 8 uses
  %10 = alloca %"struct.facebook::velox::StringView", align 8 ; 7 uses
  %11 = alloca %"class.facebook::velox::Status", align 8 ; 8 uses
  %12 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %13 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !23673, !range !309, !noundef !310
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23675
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !370
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit204
  ]

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.4.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4
  %.sroa.4.4..sroa_idx446 = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4
  br label %bb.az

bb.b:                                             ; preds = %bb.a
  %i.s = shl i32 %1, 6                            ; 3 uses
  %i.t = add i32 %i.s, 64
  %i.u = sext i32 %i.t to i64
  %.not271 = icmp eq i32 %i.s, -64
  br i1 %.not271, label %.loopexit204, label %.lr.ph270

.lr.ph270:                                        ; preds = %bb.b
  %i.v = sext i32 %i.s to i64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.4159.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4159, i64 4
  %.sroa.4159.4..sroa_idx447 = getelementptr inbounds nuw i8, ptr %.sroa.4159, i64 4
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph270, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_20ConstantVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clImEEDaSP_.exit
  %.0269 = phi i64 [ %i.v, %.lr.ph270 ], [ %i.hn, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_20ConstantVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clImEEDaSP_.exit ] ; 2 uses
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !23532 ; 2 uses
  %i.ae = load ptr, ptr %i.w, align 8, !tbaa !23628, !nonnull !310, !align !416 ; 4 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !23629, !nonnull !310, !align !416
  %i.ag = trunc i64 %.0269 to i32                 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 88
  store i32 %i.ag, ptr %i.ah, align 8, !tbaa !789
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !23631, !nonnull !310, !align !416
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !23629, !nonnull !310, !align !416 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !23632, !noalias !23676, !nonnull !310, !align !416 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !23679
  %.sroa.0.0.copyload.i = load i64, ptr %i.an, align 8, !noalias !23679 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !18, !noalias !23679
  store i64 %.sroa.0.0.copyload.i, ptr %6, align 8, !noalias !23679
  store ptr %.sroa.2.0.copyload.i, ptr %i.y, align 8, !noalias !23679
  %i.ao = trunc i64 %.sroa.0.0.copyload.i to i32  ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %.invoke, label %.noexc54.preheader

.noexc54.preheader:                               ; preds = %bb.c
  %i.aq = and i64 %.sroa.0.0.copyload.i, 4294967295
  br label %.noexc54

.noexc54:                                         ; preds = %.noexc54.preheader, %bb.t
  %i.ar = phi i64 [ %i.dq, %bb.t ], [ %i.aq, %.noexc54.preheader ]
  %i.as = phi i32 [ %i.dp, %bb.t ], [ %i.ao, %.noexc54.preheader ]
  %i.at = phi i64 [ %i.do, %bb.t ], [ 0, %.noexc54.preheader ] ; 2 uses
  %.022.i.i252 = phi i32 [ %i.dn, %bb.t ], [ 0, %.noexc54.preheader ] ; 11 uses
  %i.au = icmp ult i32 %i.as, 13
  %i.av = load ptr, ptr %i.y, align 8
  %i.aw = select i1 %i.au, ptr %i.z, ptr %i.av
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.at ; 4 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !18, !noalias !23682 ; 6 uses
  %i.az = zext i8 %i.ay to i32                    ; 4 uses
  %i.ba = icmp sgt i8 %i.ay, -1
  br i1 %i.ba, label %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread171, label %bb.d

bb.d:                                             ; preds = %.noexc54
  %gepdiff201 = sub nsw i64 %i.ar, %i.at          ; 3 uses
  %i.bb = icmp slt i64 %gepdiff201, 2
  br i1 %i.bb, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !18, !noalias !23682 ; 4 uses
  %i.be = and i8 %i.ay, -32
  %or.cond.i = icmp eq i8 %i.be, -64
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bf = shl nuw nsw i32 %i.az, 6
  %i.bg = zext i8 %i.bd to i32
  %i.bh = add nsw i32 %i.bf, -12416
  %i.bi = add nsw i32 %i.bh, %i.bg
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

bb.g:                                             ; preds = %bb.e
  %i.bj = icmp eq i8 %i.ay, -19
  %i.bk = and i8 %i.bd, -96
  %i.bl = icmp eq i8 %i.bk, -96
  %or.cond46.i = select i1 %i.bj, i1 %i.bl, i1 false
  %i.bm = icmp eq i64 %gepdiff201, 2
  %or.cond47.i = or i1 %i.bm, %or.cond46.i
  br i1 %or.cond47.i, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !18, !noalias !23682 ; 2 uses
  %i.bp = and i8 %i.ay, -16
  %or.cond5.i = icmp eq i8 %i.bp, -32
  br i1 %or.cond5.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bq = shl nuw nsw i32 %i.az, 12
  %i.br = zext i8 %i.bd to i32
  %i.bs = shl nuw nsw i32 %i.br, 6
  %i.bt = zext i8 %i.bo to i32
  %i.bu = add nsw i32 %i.bq, -925824
  %i.bv = add nsw i32 %i.bu, %i.bs
  %i.bw = add nsw i32 %i.bv, %i.bt
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

bb.j:                                             ; preds = %bb.h
  %i.bx = icmp samesign ugt i64 %gepdiff201, 3
  %i.by = and i8 %i.ay, -8
  %or.cond8.i = icmp eq i8 %i.by, -16
  %or.cond48.i = and i1 %i.bx, %or.cond8.i
  br i1 %or.cond48.i, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ax, i64 3
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !18, !noalias !23682
  %i.cb = shl nuw nsw i32 %i.az, 18
  %i.cc = zext i8 %i.bd to i32
  %i.cd = shl nuw nsw i32 %i.cc, 12
  %i.ce = zext i8 %i.bo to i32
  %i.cf = shl nuw nsw i32 %i.ce, 6
  %i.cg = zext i8 %i.ca to i32
  %i.ch = add nsw i32 %i.cb, -63447168
  %i.ci = add nsw i32 %i.ch, %i.cd
  %i.cj = add nsw i32 %i.ci, %i.cf
  %i.ck = add nsw i32 %i.cj, %i.cg
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

_ZL18utf8proc_codepointPKcS0_Ri.exit:             ; preds = %bb.f, %bb.i, %bb.k
  %.1 = phi i32 [ 3, %bb.i ], [ 4, %bb.k ], [ 2, %bb.f ]
  %.3.i = phi i32 [ %i.bw, %bb.i ], [ %i.ck, %bb.k ], [ %i.bi, %bb.f ] ; 2 uses
  %i.cl = icmp eq i32 %.3.i, -1
  br i1 %i.cl, label %.thread, label %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread171

_ZL18utf8proc_codepointPKcS0_Ri.exit.thread171:   ; preds = %.noexc54, %_ZL18utf8proc_codepointPKcS0_Ri.exit
  %.3.i175 = phi i32 [ %.3.i, %_ZL18utf8proc_codepointPKcS0_Ri.exit ], [ %i.az, %.noexc54 ] ; 9 uses
  %.1174 = phi i32 [ %.1, %_ZL18utf8proc_codepointPKcS0_Ri.exit ], [ 1, %.noexc54 ]
  %i.cm = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes acquire, align 8, !noalias !23682
  %i.cn = icmp eq i8 %i.cm, 0
  br i1 %i.cn, label %bb.l, label %bb.m, !prof !101

bb.l:                                             ; preds = %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread171
  %i.co = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes) #24, !noalias !23682
  %.not.i.i.i51 = icmp eq i32 %i.co, 0
  br i1 %.not.i.i.i51, label %bb.m, label %.noexc.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.l
  store i64 8321515008, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes, align 8, !tbaa !370, !noalias !23682
  %i.cp = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes), !noalias !23682 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes) #24, !noalias !23682
  br label %bb.m

bb.m:                                             ; preds = %.noexc.i.i.i, %bb.l, %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread171
  %i.cq = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes acquire, align 8, !noalias !23682
  %i.cr = icmp eq i8 %i.cq, 0
  br i1 %i.cr, label %bb.n, label %bb.o, !prof !101

bb.n:                                             ; preds = %bb.m
  %i.cs = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes) #24, !noalias !23682
  %.not14.i.i.i = icmp eq i32 %i.cs, 0
  br i1 %.not14.i.i.i, label %bb.o, label %.noexc.i.i49

.noexc.i.i49:                                     ; preds = %bb.n
  store i64 3298534885247, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, align 8, !noalias !23682
  store i64 2147483648, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, i64 8), align 8, !noalias !23682
  %i.ct = call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes), !noalias !23682 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes) #24, !noalias !23682
  br label %bb.o

bb.o:                                             ; preds = %.noexc.i.i49, %bb.n, %bb.m
  %i.cu = icmp slt i32 %.3.i175, 0
  br i1 %i.cu, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cv = icmp samesign ult i32 %.3.i175, 5000
  br i1 %i.cv, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cw = icmp samesign ugt i32 %.3.i175, 32
  br i1 %i.cw, label %.thread, label %.split178

.split178:                                        ; preds = %bb.q
  %i.cx = zext nneg i32 %.3.i175 to i64
  %i.cy = load i64, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes, align 8, !tbaa !370, !noalias !23682
  %i.cz = shl nuw nsw i64 1, %i.cx
  %i.da = and i64 %i.cy, %i.cz
  %.not203 = icmp eq i64 %i.da, 0
  br i1 %.not203, label %.thread, label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.db = icmp samesign ugt i32 %.3.i175, 8191
  br i1 %i.db, label %bb.s, label %.split

bb.s:                                             ; preds = %bb.r
  %i.dc = icmp samesign ult i32 %.3.i175, 8288
  br i1 %i.dc, label %.split177, label %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i.i

.split177:                                        ; preds = %bb.s
  %i.dd = add nsw i32 %.3.i175, -8192
  %i.de = zext nneg i32 %i.dd to i64              ; 2 uses
  %i.df = lshr i64 %i.de, 6
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, i64 %i.df
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !370, !noalias !23682
  %i.di = and i64 %i.de, 63
  %i.dj = shl nuw i64 1, %i.di
  %i.dk = and i64 %i.dh, %i.dj
  %.not202 = icmp eq i64 %i.dk, 0
  br i1 %.not202, label %.thread, label %bb.t

.split:                                           ; preds = %bb.r
  %i.dl = icmp eq i32 %.3.i175, 5760
  br i1 %i.dl, label %bb.t, label %.thread

_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i.i: ; preds = %bb.s
  %i.dm = icmp eq i32 %.3.i175, 12288
  br i1 %i.dm, label %bb.t, label %.thread

bb.t:                                             ; preds = %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i.i, %.split, %.split177, %.split178
  %i.dn = add nsw i32 %.1174, %.022.i.i252        ; 3 uses
  %i.do = sext i32 %i.dn to i64                   ; 2 uses
  %i.dp = load i32, ptr %6, align 8, !tbaa !824, !noalias !23682 ; 2 uses
  %i.dq = zext i32 %i.dp to i64                   ; 2 uses
  %i.dr = icmp ugt i64 %i.dq, %i.do
  br i1 %i.dr, label %.noexc54, label %.thread

.thread:                                          ; preds = %bb.t, %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i.i, %_ZL18utf8proc_codepointPKcS0_Ri.exit, %.split, %.split177, %.split178, %bb.j, %bb.d, %bb.g, %bb.o, %bb.q
  %.022.i.i.lcssa.ph = phi i32 [ %i.dn, %bb.t ], [ %.022.i.i252, %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i.i ], [ %.022.i.i252, %_ZL18utf8proc_codepointPKcS0_Ri.exit ], [ %.022.i.i252, %.split ], [ %.022.i.i252, %.split177 ], [ %.022.i.i252, %.split178 ], [ %.022.i.i252, %bb.j ], [ %.022.i.i252, %bb.d ], [ %.022.i.i252, %bb.g ], [ %.022.i.i252, %bb.o ], [ %.022.i.i252, %bb.q ] ; 3 uses
  %.pre = load i32, ptr %6, align 8, !tbaa !824, !noalias !23682 ; 4 uses
  %.pre385 = zext i32 %.pre to i64
  %i.ds = sext i32 %.022.i.i.lcssa.ph to i64      ; 2 uses
  %.not.i.i46 = icmp ugt i64 %.pre385, %i.ds
  br i1 %.not.i.i46, label %.noexc58, label %.invoke

.invoke:                                          ; preds = %.thread, %bb.c
  invoke void @_ZN8facebook5velox4exec12StringWriter8setEmptyEv(ptr noundef nonnull align 8 dereferenceable(96) %i.al)
          to label %bb.ae unwind label %bb.ai

.noexc58:                                         ; preds = %.thread
  %i.dt = icmp ult i32 %.pre, 13
  %i.du = load ptr, ptr %i.y, align 8
  %i.dv = select i1 %i.dt, ptr %i.z, ptr %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.ds ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4159)
  %i.dx = sub i32 %.pre, %.022.i.i.lcssa.ph       ; 5 uses
  %i.dy = icmp slt i32 %i.dx, 0
  br i1 %i.dy, label %bb.u, label %bb.x, !prof !98

bb.u:                                             ; preds = %.noexc58
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !23685
  store i32 %i.dx, ptr %4, align 16, !tbaa !18, !alias.scope !23688, !noalias !23685
  store i32 0, ptr %i.aa, align 16, !tbaa !18, !alias.scope !23688, !noalias !23685
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.78, i64 11, i64 17, ptr nonnull %4)
          to label %.noexc64 unwind label %bb.ai

.noexc64:                                         ; preds = %bb.u
end_hunk_14
begin_hunk_15_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_20ConstantVectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi:bb.a
.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.aj
  %i.go = load i8, ptr %i.gk, align 1, !tbaa !18
  %or.cond.not.i.i.i = icmp eq i8 %i.go, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.preheader
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gk, i64 1
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !18
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.gq, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gk, i64 2
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !18
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.gs, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gk, i64 3
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !18
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.gu, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  %i.gv = load ptr, ptr %i.ac, align 8, !tbaa !23649, !nonnull !310, !align !416
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !23650, !nonnull !310, !align !416
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  invoke void @_ZN8facebook5velox4exec12VectorWriterINS0_7VarcharEvE10commitNullEv(ptr noundef nonnull align 8 dereferenceable(112) %i.gx)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_20ConstantVectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clImEEDaSN_.exit unwind label %.loopexit206

.loopexit:                                        ; preds = %bb.aj, %.lr.ph.i.i.i.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #50
          to label %bb.ay unwind label %.loopexit.split-lp

bb.ak:                                            ; preds = %.body41
  %i.gy = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #24
  %i.gz = icmp eq i32 %i.gd, %i.gy
  br i1 %i.gz, label %bb.al, label %common.resume

bb.al:                                            ; preds = %bb.ak
  %i.ha = call ptr @__cxa_begin_catch(ptr %i.gc) #24 ; 0 uses
  %i.hb = load ptr, ptr %i.ac, align 8, !tbaa !23649, !nonnull !310, !align !416
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !23650, !nonnull !310, !align !416
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  invoke void @_ZN8facebook5velox4exec12VectorWriterINS0_7VarcharEvE10commitNullEv(ptr noundef nonnull align 8 dereferenceable(112) %i.hd)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_20ConstantVectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clImEEDaSN_.exit45 unwind label %bb.ao

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_20ConstantVectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clImEEDaSN_.exit45: ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %8) #24
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.ad, i32 noundef %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.am unwind label %bb.ap

bb.am:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_20ConstantVectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clImEEDaSN_.exit45
  %i.he = load ptr, ptr %8, align 8, !tbaa !607
  %.not.i83 = icmp eq ptr %i.he, null
  br i1 %.not.i83, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_20ConstantVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clImEEDaSP_.exit

bb.ao:                                            ; preds = %bb.al
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ap:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_20ConstantVectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clImEEDaSN_.exit45
  %i.hg = landingpad { ptr, i32 }
          cleanup
  %i.hh = load ptr, ptr %8, align 8, !tbaa !607
  %.not.i84 = icmp eq ptr %i.hh, null
  br i1 %.not.i84, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit85, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit85

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit85: ; preds = %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit85, %bb.ao
  %.pn.i37 = phi { ptr, i32 } [ %i.hg, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit85 ], [ %i.hf, %bb.ao ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ax

.loopexit206:                                     ; preds = %tailrecurse.i.i.i.i.3
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

.loopexit.split-lp:                               ; preds = %.loopexit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_20ConstantVectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clImEEDaSN_.exit: ; preds = %tailrecurse.i.i.i.i.3
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %9) #24
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.ad, i32 noundef %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.as unwind label %bb.au

bb.as:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_20ConstantVectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clImEEDaSN_.exit
  %i.hi = load ptr, ptr %9, align 8, !tbaa !607
  %.not.i86 = icmp eq ptr %i.hi, null
  br i1 %.not.i86, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit87, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit87

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit87: ; preds = %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_20ConstantVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clImEEDaSP_.exit

bb.au:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_20ConstantVectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clImEEDaSN_.exit
  %i.hj = landingpad { ptr, i32 }
          cleanup
  %i.hk = load ptr, ptr %9, align 8, !tbaa !607
  %.not.i88 = icmp eq ptr %i.hk, null
  br i1 %.not.i88, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit89, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit89

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit89: ; preds = %bb.au, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.aw

bb.aw:                                            ; preds = %.loopexit206, %.loopexit.split-lp, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit89
  %.pn16.i38 = phi { ptr, i32 } [ %i.hj, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit89 ], [ %lpad.loopexit, %.loopexit206 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ax

common.resume:                                    ; preds = %bb.ak, %bb.ch, %bb.co, %bb.ct, %bb.ar, %bb.aw
  %common.resume.op = phi { ptr, i32 } [ %.pn16.i38, %bb.aw ], [ %.pn.i37, %bb.ar ], [ %.pn16.i, %bb.ct ], [ %.pn.i, %bb.co ], [ %eh.lpad-body, %bb.ch ], [ %eh.lpad-body42, %bb.ak ]
  resume { ptr, i32 } %common.resume.op

bb.ax:                                            ; preds = %bb.aw, %bb.ar
  %i.hl = landingpad { ptr, i32 }
          catch ptr null
  %i.hm = extractvalue { ptr, i32 } %i.hl, 0
  call void @__clang_call_terminate(ptr %i.hm) #51
  unreachable

bb.ay:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_20ConstantVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clImEEDaSP_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit82, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit87
  %i.hn = add nuw i64 %.0269, 1                   ; 2 uses
  %i.ho = icmp ult i64 %i.hn, %i.u
  br i1 %i.ho, label %bb.c, label %.loopexit204, !llvm.loop !23694

bb.az:                                            ; preds = %.lr.ph, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_20ConstantVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit
  %.015249 = phi i64 [ %i.j, %.lr.ph ], [ %i.pc, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_20ConstantVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit ] ; 3 uses
  %i.hp = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.015249, i1 true)
  %i.hq = trunc nuw nsw i64 %i.hp to i32
  %i.hr = or disjoint i32 %i.l, %i.hq             ; 3 uses
  %i.hs = load ptr, ptr %i.m, align 8, !tbaa !23532 ; 2 uses
  %i.ht = load ptr, ptr %i.k, align 8, !tbaa !23628, !nonnull !310, !align !416 ; 4 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !23629, !nonnull !310, !align !416
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 88
  store i32 %i.hr, ptr %i.hv, align 8, !tbaa !789
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !23631, !nonnull !310, !align !416
  %i.hy = load ptr, ptr %i.ht, align 8, !tbaa !23629, !nonnull !310, !align !416 ; 4 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 32
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !23632, !noalias !23695, !nonnull !310, !align !416 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24, !noalias !23698
  %.sroa.0.0.copyload.i90 = load i64, ptr %i.ib, align 8, !noalias !23698 ; 3 uses
  %.sroa.2.0..sroa_idx.i91 = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %.sroa.2.0.copyload.i92 = load ptr, ptr %.sroa.2.0..sroa_idx.i91, align 8, !tbaa !18, !noalias !23698
  store i64 %.sroa.0.0.copyload.i90, ptr %10, align 8, !noalias !23698
  store ptr %.sroa.2.0.copyload.i92, ptr %i.n, align 8, !noalias !23698
  %i.ic = trunc i64 %.sroa.0.0.copyload.i90 to i32 ; 2 uses
  %i.id = icmp eq i32 %i.ic, 0
  br i1 %i.id, label %.invoke421, label %.noexc29.preheader

.noexc29.preheader:                               ; preds = %bb.az
  %i.ie = and i64 %.sroa.0.0.copyload.i90, 4294967295
  br label %.noexc29

.noexc29:                                         ; preds = %.noexc29.preheader, %bb.bq
  %i.if = phi i64 [ %i.le, %bb.bq ], [ %i.ie, %.noexc29.preheader ]
  %i.ig = phi i32 [ %i.ld, %bb.bq ], [ %i.ic, %.noexc29.preheader ]
  %i.ih = phi i64 [ %i.lc, %bb.bq ], [ 0, %.noexc29.preheader ] ; 2 uses
  %.022.i232 = phi i32 [ %i.lb, %bb.bq ], [ 0, %.noexc29.preheader ] ; 11 uses
  %i.ii = icmp ult i32 %i.ig, 13
  %i.ij = load ptr, ptr %i.n, align 8
  %i.ik = select i1 %i.ii, ptr %i.o, ptr %i.ij
  %i.il = getelementptr inbounds i8, ptr %i.ik, i64 %i.ih ; 4 uses
  %i.im = load i8, ptr %i.il, align 1, !tbaa !18  ; 6 uses
  %i.in = zext i8 %i.im to i32                    ; 4 uses
  %i.io = icmp sgt i8 %i.im, -1
  br i1 %i.io, label %_ZL18utf8proc_codepointPKcS0_Ri.exit104.thread185, label %bb.ba

bb.ba:                                            ; preds = %.noexc29
  %gepdiff = sub nsw i64 %i.if, %i.ih             ; 3 uses
  %i.ip = icmp slt i64 %gepdiff, 2
  br i1 %i.ip, label %.thread195, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.iq = getelementptr inbounds nuw i8, ptr %i.il, i64 1
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !18  ; 4 uses
  %i.is = and i8 %i.im, -32
  %or.cond.i97 = icmp eq i8 %i.is, -64
  br i1 %or.cond.i97, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.it = shl nuw nsw i32 %i.in, 6
  %i.iu = zext i8 %i.ir to i32
  %i.iv = add nsw i32 %i.it, -12416
  %i.iw = add nsw i32 %i.iv, %i.iu
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit104

bb.bd:                                            ; preds = %bb.bb
  %i.ix = icmp eq i8 %i.im, -19
  %i.iy = and i8 %i.ir, -96
  %i.iz = icmp eq i8 %i.iy, -96
  %or.cond46.i98 = select i1 %i.ix, i1 %i.iz, i1 false
  %i.ja = icmp eq i64 %gepdiff, 2
  %or.cond47.i99 = or i1 %i.ja, %or.cond46.i98
  br i1 %or.cond47.i99, label %.thread195, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.jb = getelementptr inbounds nuw i8, ptr %i.il, i64 2
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !18  ; 2 uses
  %i.jd = and i8 %i.im, -16
  %or.cond5.i100 = icmp eq i8 %i.jd, -32
  br i1 %or.cond5.i100, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.je = shl nuw nsw i32 %i.in, 12
  %i.jf = zext i8 %i.ir to i32
  %i.jg = shl nuw nsw i32 %i.jf, 6
  %i.jh = zext i8 %i.jc to i32
  %i.ji = add nsw i32 %i.je, -925824
  %i.jj = add nsw i32 %i.ji, %i.jg
  %i.jk = add nsw i32 %i.jj, %i.jh
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit104

bb.bg:                                            ; preds = %bb.be
  %i.jl = icmp samesign ugt i64 %gepdiff, 3
  %i.jm = and i8 %i.im, -8
  %or.cond8.i101 = icmp eq i8 %i.jm, -16
  %or.cond48.i102 = and i1 %i.jl, %or.cond8.i101
  br i1 %or.cond48.i102, label %bb.bh, label %.thread195

bb.bh:                                            ; preds = %bb.bg
  %i.jn = getelementptr inbounds nuw i8, ptr %i.il, i64 3
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !18
  %i.jp = shl nuw nsw i32 %i.in, 18
  %i.jq = zext i8 %i.ir to i32
  %i.jr = shl nuw nsw i32 %i.jq, 12
  %i.js = zext i8 %i.jc to i32
  %i.jt = shl nuw nsw i32 %i.js, 6
  %i.ju = zext i8 %i.jo to i32
  %i.jv = add nsw i32 %i.jp, -63447168
  %i.jw = add nsw i32 %i.jv, %i.jr
  %i.jx = add nsw i32 %i.jw, %i.jt
  %i.jy = add nsw i32 %i.jx, %i.ju
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit104

_ZL18utf8proc_codepointPKcS0_Ri.exit104:          ; preds = %bb.bc, %bb.bf, %bb.bh
  %.1167 = phi i32 [ 3, %bb.bf ], [ 4, %bb.bh ], [ 2, %bb.bc ]
  %.3.i103 = phi i32 [ %i.jk, %bb.bf ], [ %i.jy, %bb.bh ], [ %i.iw, %bb.bc ] ; 2 uses
  %i.jz = icmp eq i32 %.3.i103, -1
  br i1 %i.jz, label %.thread195, label %_ZL18utf8proc_codepointPKcS0_Ri.exit104.thread185

_ZL18utf8proc_codepointPKcS0_Ri.exit104.thread185: ; preds = %.noexc29, %_ZL18utf8proc_codepointPKcS0_Ri.exit104
  %.3.i103189 = phi i32 [ %.3.i103, %_ZL18utf8proc_codepointPKcS0_Ri.exit104 ], [ %i.in, %.noexc29 ] ; 9 uses
  %.1167188 = phi i32 [ %.1167, %_ZL18utf8proc_codepointPKcS0_Ri.exit104 ], [ 1, %.noexc29 ]
  %i.ka = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes acquire, align 8
  %i.kb = icmp eq i8 %i.ka, 0
  br i1 %i.kb, label %bb.bi, label %bb.bj, !prof !101

bb.bi:                                            ; preds = %_ZL18utf8proc_codepointPKcS0_Ri.exit104.thread185
  %i.kc = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes) #24
  %.not.i.i = icmp eq i32 %i.kc, 0
  br i1 %.not.i.i, label %bb.bj, label %.noexc.i.i

.noexc.i.i:                                       ; preds = %bb.bi
  store i64 8321515008, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes, align 8, !tbaa !370
  %i.kd = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes) #24
  br label %bb.bj

bb.bj:                                            ; preds = %.noexc.i.i, %bb.bi, %_ZL18utf8proc_codepointPKcS0_Ri.exit104.thread185
  %i.ke = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes acquire, align 8
  %i.kf = icmp eq i8 %i.ke, 0
  br i1 %i.kf, label %bb.bk, label %bb.bl, !prof !101

bb.bk:                                            ; preds = %bb.bj
  %i.kg = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes) #24
  %.not14.i.i = icmp eq i32 %i.kg, 0
  br i1 %.not14.i.i, label %bb.bl, label %.noexc.i

.noexc.i:                                         ; preds = %bb.bk
  store i64 3298534885247, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, align 8
  store i64 2147483648, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, i64 8), align 8
  %i.kh = call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes) #24
  br label %bb.bl

bb.bl:                                            ; preds = %.noexc.i, %bb.bk, %bb.bj
  %i.ki = icmp slt i32 %.3.i103189, 0
  br i1 %i.ki, label %.thread195, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.kj = icmp samesign ult i32 %.3.i103189, 5000
  br i1 %i.kj, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.kk = icmp samesign ugt i32 %.3.i103189, 32
  br i1 %i.kk, label %.thread195, label %.split193

.split193:                                        ; preds = %bb.bn
  %i.kl = zext nneg i32 %.3.i103189 to i64
  %i.km = load i64, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes, align 8, !tbaa !370
  %i.kn = shl nuw nsw i64 1, %i.kl
  %i.ko = and i64 %i.km, %i.kn
  %.not200 = icmp eq i64 %i.ko, 0
  br i1 %.not200, label %.thread195, label %bb.bq

bb.bo:                                            ; preds = %bb.bm
  %i.kp = icmp samesign ugt i32 %.3.i103189, 8191
  br i1 %i.kp, label %bb.bp, label %.split191

bb.bp:                                            ; preds = %bb.bo
  %i.kq = icmp samesign ult i32 %.3.i103189, 8288
  br i1 %i.kq, label %.split192, label %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i

.split192:                                        ; preds = %bb.bp
  %i.kr = add nsw i32 %.3.i103189, -8192
  %i.ks = zext nneg i32 %i.kr to i64              ; 2 uses
  %i.kt = lshr i64 %i.ks, 6
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, i64 %i.kt
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !370
  %i.kw = and i64 %i.ks, 63
  %i.kx = shl nuw i64 1, %i.kw
  %i.ky = and i64 %i.kv, %i.kx
  %.not199 = icmp eq i64 %i.ky, 0
  br i1 %.not199, label %.thread195, label %bb.bq

.split191:                                        ; preds = %bb.bo
  %i.kz = icmp eq i32 %.3.i103189, 5760
  br i1 %i.kz, label %bb.bq, label %.thread195

_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i: ; preds = %bb.bp
  %i.la = icmp eq i32 %.3.i103189, 12288
  br i1 %i.la, label %bb.bq, label %.thread195

bb.bq:                                            ; preds = %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i, %.split191, %.split192, %.split193
  %i.lb = add nsw i32 %.1167188, %.022.i232       ; 3 uses
  %i.lc = sext i32 %i.lb to i64                   ; 2 uses
  %i.ld = load i32, ptr %10, align 8, !tbaa !824  ; 2 uses
  %i.le = zext i32 %i.ld to i64                   ; 2 uses
  %i.lf = icmp ugt i64 %i.le, %i.lc
  br i1 %i.lf, label %.noexc29, label %.thread195

.thread195:                                       ; preds = %bb.bq, %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i, %_ZL18utf8proc_codepointPKcS0_Ri.exit104, %.split191, %.split192, %.split193, %bb.bg, %bb.ba, %bb.bd, %bb.bl, %bb.bn
  %.022.i.lcssa.ph = phi i32 [ %i.lb, %bb.bq ], [ %.022.i232, %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i ], [ %.022.i232, %_ZL18utf8proc_codepointPKcS0_Ri.exit104 ], [ %.022.i232, %.split191 ], [ %.022.i232, %.split192 ], [ %.022.i232, %.split193 ], [ %.022.i232, %bb.bg ], [ %.022.i232, %bb.ba ], [ %.022.i232, %bb.bd ], [ %.022.i232, %bb.bl ], [ %.022.i232, %bb.bn ] ; 3 uses
  %.pre383 = load i32, ptr %10, align 8, !tbaa !824 ; 4 uses
  %.pre384 = zext i32 %.pre383 to i64
  %i.lg = sext i32 %.022.i.lcssa.ph to i64        ; 2 uses
  %.not.i = icmp ugt i64 %.pre384, %i.lg
  br i1 %.not.i, label %.noexc33, label %.invoke421

.invoke421:                                       ; preds = %.thread195, %bb.az
  invoke void @_ZN8facebook5velox4exec12StringWriter8setEmptyEv(ptr noundef nonnull align 8 dereferenceable(96) %i.hz)
          to label %bb.cb unwind label %bb.cf

.noexc33:                                         ; preds = %.thread195
  %i.lh = icmp ult i32 %.pre383, 13
  %i.li = load ptr, ptr %i.n, align 8
  %i.lj = select i1 %i.lh, ptr %i.o, ptr %i.li
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 %i.lg ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %i.ll = sub i32 %.pre383, %.022.i.lcssa.ph      ; 5 uses
  %i.lm = icmp slt i32 %i.ll, 0
  br i1 %i.lm, label %bb.br, label %bb.bu, !prof !98

bb.br:                                            ; preds = %.noexc33
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24, !noalias !23701
  store i32 %i.ll, ptr %2, align 16, !tbaa !18, !alias.scope !23704, !noalias !23701
  store i32 0, ptr %i.p, align 16, !tbaa !18, !alias.scope !23704, !noalias !23701
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.78, i64 11, i64 17, ptr nonnull %2)
          to label %.noexc110 unwind label %bb.cf

.noexc110:                                        ; preds = %bb.br
end_hunk_15
begin_hunk_16_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_16FlatVectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi:bb.a
bb.bl:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_16FlatVectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSJ_SN_ENKUlSN_E0_clIiEEDaSN_.exit
  %i.kw = load ptr, ptr %13, align 8, !tbaa !607
  %.not.i126 = icmp eq ptr %i.kw, null
  br i1 %.not.i126, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit127, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit127

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit127: ; preds = %bb.bl, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_16FlatVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit

bb.bn:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_16FlatVectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSJ_SN_ENKUlSN_E0_clIiEEDaSN_.exit
  %i.kx = landingpad { ptr, i32 }
          cleanup
  %i.ky = load ptr, ptr %13, align 8, !tbaa !607
  %.not.i128 = icmp eq ptr %i.ky, null
  br i1 %.not.i128, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit129, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit129

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit129: ; preds = %bb.bn, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %bb.bp

bb.bp:                                            ; preds = %.loopexit148, %.loopexit.split-lp149, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit129
  %.pn16.i = phi { ptr, i32 } [ %i.kx, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit129 ], [ %lpad.loopexit150, %.loopexit148 ], [ %lpad.loopexit.split-lp151, %.loopexit.split-lp149 ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bk
  %i.kz = landingpad { ptr, i32 }
          catch ptr null
  %i.la = extractvalue { ptr, i32 } %i.kz, 0
  call void @__clang_call_terminate(ptr %i.la) #51
  unreachable

bb.br:                                            ; preds = %.loopexit144
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_16FlatVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit116, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit123, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit127
  %i.lb = add i64 %.015169, -1
  %i.lc = and i64 %i.lb, %.015169                 ; 2 uses
  %.not = icmp eq i64 %i.lc, 0
  br i1 %.not, label %.loopexit141, label %bb.ak, !llvm.loop !23802

.loopexit141:                                     ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_16FlatVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clImEEDaSP_.exit, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_16FlatVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit, %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_16FlatVectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKS1_SR_ST_EUlSR_E_EEvSR_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef byval(%class.anon.5448) align 8 %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.474", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.sroa.4 = alloca [12 x i8], align 4            ; 8 uses
  %4 = alloca %"struct.facebook::velox::StringView", align 8 ; 7 uses
  %5 = alloca %"class.facebook::velox::Status", align 8 ; 8 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %7 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !1091, !range !309, !noundef !310
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i:     ; preds = %bb.a
  %.0.in.pre.i = load i8, ptr %i.a, align 4, !tbaa !87, !range !309
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1017
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1018 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !1016
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !745    ; 2 uses
  %.not.i.i18 = icmp sgt i32 %i.i, 0
  br i1 %.not.i.i18, label %bb.e, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.i, 2147483584                 ; 3 uses
  %i.o = zext nneg i32 %i.n to i64
  %.not37.i.i.not.i171.not = icmp eq i32 %i.n, 0
  br i1 %.not37.i.i.not.i171.not, label %.critedge.i.i.i, label %.lr.ph173

bb.f:                                             ; preds = %.lr.ph173
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i172, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.o
  br i1 %.not37.i.i.not.i, label %.lr.ph173, label %.critedge.i.i.i, !llvm.loop !1172

.lr.ph173:                                        ; preds = %bb.e, %bb.f
  %indvars.iv.i172 = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i172, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !370
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, !llvm.loop !1172

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
  %i.y = load i64, ptr %i.x, align 8, !tbaa !370
  %.demorgan.i = or i64 %i.y, %notmask.i40.i.i.i
  %i.z = icmp eq i64 %.demorgan.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i:   ; preds = %.lr.ph173, %bb.g, %.critedge.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph173 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit: ; preds = %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i
  %.0.in.i = phi i8 [ %.0.in.pre.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i ]
  %.0.i = trunc nuw i8 %.0.in.i to i1
  br i1 %.0.i, label %bb.h, label %bb.bf

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1018 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !1017 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %.lr.ph, label %.loopexit68

.lr.ph:                                           ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ao = sext i32 %i.ag to i64
  %.sroa.4.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4
  %.sroa.4.4..sroa_idx179 = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_16FlatVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit
  %indvars.iv = phi i64 [ %i.ao, %.lr.ph ], [ %indvars.iv.next, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_16FlatVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit ] ; 3 uses
  %i.ap = load ptr, ptr %i.ai, align 8, !tbaa !23536 ; 2 uses
  %i.aq = load ptr, ptr %1, align 8, !tbaa !23803, !nonnull !310, !align !416 ; 4 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !23804, !nonnull !310, !align !416
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 88
  %i.at = trunc nsw i64 %indvars.iv to i32        ; 3 uses
  store i32 %i.at, ptr %i.as, align 8, !tbaa !789
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !23806, !nonnull !310, !align !416
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !23804, !nonnull !310, !align !416 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !23807, !noalias !23809, !nonnull !310, !align !416
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !23812
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !2669, !noalias !23812
  %i.bb = getelementptr inbounds [16 x i8], ptr %i.ba, i64 %indvars.iv ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.bb, align 8, !noalias !23812 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !18, !noalias !23812
  store i64 %.sroa.0.0.copyload.i, ptr %4, align 8, !noalias !23812
  store ptr %.sroa.2.0.copyload.i, ptr %i.aj, align 8, !noalias !23812
  %i.bc = trunc i64 %.sroa.0.0.copyload.i to i32  ; 2 uses
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %.invoke, label %.noexc11.preheader

.noexc11.preheader:                               ; preds = %bb.i
  %i.be = and i64 %.sroa.0.0.copyload.i, 4294967295
  br label %.noexc11

.noexc11:                                         ; preds = %.noexc11.preheader, %bb.z
  %i.bf = phi i64 [ %i.ee, %bb.z ], [ %i.be, %.noexc11.preheader ]
  %i.bg = phi i32 [ %i.ed, %bb.z ], [ %i.bc, %.noexc11.preheader ]
  %i.bh = phi i64 [ %i.ec, %bb.z ], [ 0, %.noexc11.preheader ] ; 2 uses
  %.022.i.i80 = phi i32 [ %i.eb, %bb.z ], [ 0, %.noexc11.preheader ] ; 11 uses
  %i.bi = icmp ult i32 %i.bg, 13
  %i.bj = load ptr, ptr %i.aj, align 8
  %i.bk = select i1 %i.bi, ptr %i.ak, ptr %i.bj
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 %i.bh ; 4 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !18, !noalias !23815 ; 6 uses
  %i.bn = zext i8 %i.bm to i32                    ; 4 uses
  %i.bo = icmp sgt i8 %i.bm, -1
  br i1 %i.bo, label %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread56, label %bb.j

bb.j:                                             ; preds = %.noexc11
  %gepdiff = sub nsw i64 %i.bf, %i.bh             ; 3 uses
  %i.bp = icmp slt i64 %gepdiff, 2
  br i1 %i.bp, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !18, !noalias !23815 ; 4 uses
  %i.bs = and i8 %i.bm, -32
  %or.cond.i = icmp eq i8 %i.bs, -64
  br i1 %or.cond.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bt = shl nuw nsw i32 %i.bn, 6
  %i.bu = zext i8 %i.br to i32
  %i.bv = add nsw i32 %i.bt, -12416
  %i.bw = add nsw i32 %i.bv, %i.bu
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

bb.m:                                             ; preds = %bb.k
  %i.bx = icmp eq i8 %i.bm, -19
  %i.by = and i8 %i.br, -96
  %i.bz = icmp eq i8 %i.by, -96
  %or.cond46.i = select i1 %i.bx, i1 %i.bz, i1 false
  %i.ca = icmp eq i64 %gepdiff, 2
  %or.cond47.i = or i1 %i.ca, %or.cond46.i
  br i1 %or.cond47.i, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !18, !noalias !23815 ; 2 uses
  %i.cd = and i8 %i.bm, -16
  %or.cond5.i = icmp eq i8 %i.cd, -32
  br i1 %or.cond5.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ce = shl nuw nsw i32 %i.bn, 12
  %i.cf = zext i8 %i.br to i32
  %i.cg = shl nuw nsw i32 %i.cf, 6
  %i.ch = zext i8 %i.cc to i32
  %i.ci = add nsw i32 %i.ce, -925824
  %i.cj = add nsw i32 %i.ci, %i.cg
  %i.ck = add nsw i32 %i.cj, %i.ch
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

bb.p:                                             ; preds = %bb.n
  %i.cl = icmp samesign ugt i64 %gepdiff, 3
  %i.cm = and i8 %i.bm, -8
  %or.cond8.i = icmp eq i8 %i.cm, -16
  %or.cond48.i = and i1 %i.cl, %or.cond8.i
  br i1 %or.cond48.i, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bl, i64 3
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !18, !noalias !23815
  %i.cp = shl nuw nsw i32 %i.bn, 18
  %i.cq = zext i8 %i.br to i32
  %i.cr = shl nuw nsw i32 %i.cq, 12
  %i.cs = zext i8 %i.cc to i32
  %i.ct = shl nuw nsw i32 %i.cs, 6
  %i.cu = zext i8 %i.co to i32
  %i.cv = add nsw i32 %i.cp, -63447168
  %i.cw = add nsw i32 %i.cv, %i.cr
  %i.cx = add nsw i32 %i.cw, %i.ct
  %i.cy = add nsw i32 %i.cx, %i.cu
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

_ZL18utf8proc_codepointPKcS0_Ri.exit:             ; preds = %bb.l, %bb.o, %bb.q
  %.1 = phi i32 [ 3, %bb.o ], [ 4, %bb.q ], [ 2, %bb.l ]
  %.3.i = phi i32 [ %i.ck, %bb.o ], [ %i.cy, %bb.q ], [ %i.bw, %bb.l ] ; 2 uses
  %i.cz = icmp eq i32 %.3.i, -1
  br i1 %i.cz, label %.thread, label %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread56

_ZL18utf8proc_codepointPKcS0_Ri.exit.thread56:    ; preds = %.noexc11, %_ZL18utf8proc_codepointPKcS0_Ri.exit
  %.3.i60 = phi i32 [ %.3.i, %_ZL18utf8proc_codepointPKcS0_Ri.exit ], [ %i.bn, %.noexc11 ] ; 9 uses
  %.159 = phi i32 [ %.1, %_ZL18utf8proc_codepointPKcS0_Ri.exit ], [ 1, %.noexc11 ]
  %i.da = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes acquire, align 8, !noalias !23815
  %i.db = icmp eq i8 %i.da, 0
  br i1 %i.db, label %bb.r, label %bb.s, !prof !101

bb.r:                                             ; preds = %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread56
  %i.dc = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes) #24, !noalias !23815
  %.not.i.i.i = icmp eq i32 %i.dc, 0
  br i1 %.not.i.i.i, label %bb.s, label %.noexc.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.r
  store i64 8321515008, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes, align 8, !tbaa !370, !noalias !23815
  %i.dd = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes), !noalias !23815 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes) #24, !noalias !23815
  br label %bb.s

bb.s:                                             ; preds = %.noexc.i.i.i, %bb.r, %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread56
  %i.de = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes acquire, align 8, !noalias !23815
  %i.df = icmp eq i8 %i.de, 0
  br i1 %i.df, label %bb.t, label %bb.u, !prof !101

bb.t:                                             ; preds = %bb.s
  %i.dg = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes) #24, !noalias !23815
  %.not14.i.i.i = icmp eq i32 %i.dg, 0
  br i1 %.not14.i.i.i, label %bb.u, label %.noexc.i.i

.noexc.i.i:                                       ; preds = %bb.t
  store i64 3298534885247, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, align 8, !noalias !23815
  store i64 2147483648, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, i64 8), align 8, !noalias !23815
  %i.dh = call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes), !noalias !23815 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes) #24, !noalias !23815
  br label %bb.u

bb.u:                                             ; preds = %.noexc.i.i, %bb.t, %bb.s
  %i.di = icmp slt i32 %.3.i60, 0
  br i1 %i.di, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dj = icmp samesign ult i32 %.3.i60, 5000
  br i1 %i.dj, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dk = icmp samesign ugt i32 %.3.i60, 32
  br i1 %i.dk, label %.thread, label %.split63

.split63:                                         ; preds = %bb.w
  %i.dl = zext nneg i32 %.3.i60 to i64
  %i.dm = load i64, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes, align 8, !tbaa !370, !noalias !23815
  %i.dn = shl nuw nsw i64 1, %i.dl
  %i.do = and i64 %i.dm, %i.dn
  %.not67 = icmp eq i64 %i.do, 0
  br i1 %.not67, label %.thread, label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.dp = icmp samesign ugt i32 %.3.i60, 8191
  br i1 %i.dp, label %bb.y, label %.split

bb.y:                                             ; preds = %bb.x
  %i.dq = icmp samesign ult i32 %.3.i60, 8288
  br i1 %i.dq, label %.split62, label %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i.i

.split62:                                         ; preds = %bb.y
  %i.dr = add nsw i32 %.3.i60, -8192
  %i.ds = zext nneg i32 %i.dr to i64              ; 2 uses
  %i.dt = lshr i64 %i.ds, 6
  %i.du = getelementptr inbounds nuw [8 x i8], ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, i64 %i.dt
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !370, !noalias !23815
  %i.dw = and i64 %i.ds, 63
  %i.dx = shl nuw i64 1, %i.dw
  %i.dy = and i64 %i.dv, %i.dx
  %.not = icmp eq i64 %i.dy, 0
  br i1 %.not, label %.thread, label %bb.z

.split:                                           ; preds = %bb.x
  %i.dz = icmp eq i32 %.3.i60, 5760
  br i1 %i.dz, label %bb.z, label %.thread

_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i.i: ; preds = %bb.y
  %i.ea = icmp eq i32 %.3.i60, 12288
  br i1 %i.ea, label %bb.z, label %.thread

bb.z:                                             ; preds = %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i.i, %.split, %.split62, %.split63
  %i.eb = add nsw i32 %.159, %.022.i.i80          ; 3 uses
  %i.ec = sext i32 %i.eb to i64                   ; 2 uses
  %i.ed = load i32, ptr %4, align 8, !tbaa !824, !noalias !23815 ; 2 uses
  %i.ee = zext i32 %i.ed to i64                   ; 2 uses
  %i.ef = icmp ugt i64 %i.ee, %i.ec
  br i1 %i.ef, label %.noexc11, label %.thread

.thread:                                          ; preds = %bb.z, %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i.i, %_ZL18utf8proc_codepointPKcS0_Ri.exit, %.split, %.split62, %.split63, %bb.p, %bb.j, %bb.m, %bb.u, %bb.w
  %.022.i.i.lcssa.ph = phi i32 [ %i.eb, %bb.z ], [ %.022.i.i80, %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i.i ], [ %.022.i.i80, %_ZL18utf8proc_codepointPKcS0_Ri.exit ], [ %.022.i.i80, %.split ], [ %.022.i.i80, %.split62 ], [ %.022.i.i80, %.split63 ], [ %.022.i.i80, %bb.p ], [ %.022.i.i80, %bb.j ], [ %.022.i.i80, %bb.m ], [ %.022.i.i80, %bb.u ], [ %.022.i.i80, %bb.w ] ; 3 uses
  %.pre = load i32, ptr %4, align 8, !tbaa !824, !noalias !23815 ; 4 uses
  %.pre148 = zext i32 %.pre to i64
  %i.eg = sext i32 %.022.i.i.lcssa.ph to i64      ; 2 uses
  %.not.i.i = icmp ugt i64 %.pre148, %i.eg
  br i1 %.not.i.i, label %.noexc15, label %.invoke

.invoke:                                          ; preds = %.thread, %bb.i
  invoke void @_ZN8facebook5velox4exec12StringWriter8setEmptyEv(ptr noundef nonnull align 8 dereferenceable(96) %i.ax)
          to label %bb.ak unwind label %bb.ao

.noexc15:                                         ; preds = %.thread
  %i.eh = icmp ult i32 %.pre, 13
  %i.ei = load ptr, ptr %i.aj, align 8
  %i.ej = select i1 %i.eh, ptr %i.ak, ptr %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.eg ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %i.el = sub i32 %.pre, %.022.i.i.lcssa.ph       ; 5 uses
  %i.em = icmp slt i32 %i.el, 0
  br i1 %i.em, label %bb.aa, label %bb.ad, !prof !98

bb.aa:                                            ; preds = %.noexc15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24, !noalias !23818
  store i32 %i.el, ptr %2, align 16, !tbaa !18, !alias.scope !23821, !noalias !23818
  store i32 0, ptr %i.al, align 16, !tbaa !18, !alias.scope !23821, !noalias !23818
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.78, i64 11, i64 17, ptr nonnull %2)
          to label %.noexc22 unwind label %bb.ao

.noexc22:                                         ; preds = %bb.aa
end_hunk_16
begin_hunk_17_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_16FlatVectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKS1_SR_ST_EUlSR_E_EEvSR_:bb.a
  %i.ia = extractvalue { ptr, i32 } %i.hz, 0
  call void @__clang_call_terminate(ptr %i.ia) #51
  unreachable

bb.be:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_16FlatVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit39, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit44
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit68, label %bb.i, !llvm.loop !23830

bb.bf:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ib = load ptr, ptr %0, align 8, !tbaa !745
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !1017
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !1018
  tail call void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_16FlatVectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_(ptr noundef %i.ib, i32 noundef %i.id, i32 noundef %i.if, i1 noundef zeroext true, ptr noundef nonnull byval(%class.anon.5448) align 8 %1)
  br label %.loopexit68

.loopexit68:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_16FlatVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit, %bb.h, %bb.bf
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_16FlatVectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef byval(%class.anon.5448) align 8 %4) local_unnamed_addr #0 comdat {
bb.a:
  %5 = alloca %class.anon.5450, align 8           ; 6 uses
  %6 = alloca %class.anon.5449, align 8           ; 8 uses
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
  br i1 %.not.i, label %bb.b, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS4_10VectorExecEEESC_NS0_7VarcharENS0_15ConstantCheckerIJSE_EEEJSE_EEEE8applyUdfIZNKSI_7iterateIJNS4_16FlatVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSO_SS_EUlSS_E_ZNKSJ_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS13_EEvS15_iibSS_EUliE_EEviiSS_SU_.exit

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
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_16FlatVectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.g, i64 noundef %i.q)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS4_10VectorExecEEESC_NS0_7VarcharENS0_15ConstantCheckerIJSE_EEEJSE_EEEE8applyUdfIZNKSI_7iterateIJNS4_16FlatVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSO_SS_EUlSS_E_ZNKSJ_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS13_EEvS15_iibSS_EUliE_EEviiSS_SU_.exit

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
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_16FlatVectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.r, i64 noundef %i.x)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = add nsw i32 %i.d, 64                     ; 2 uses
  %.not3337.i = icmp sgt i32 %i.y, %i.e
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.not34.i = icmp eq i32 %2, %i.e
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS4_10VectorExecEEESC_NS0_7VarcharENS0_15ConstantCheckerIJSE_EEEJSE_EEEE8applyUdfIZNKSI_7iterateIJNS4_16FlatVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSO_SS_EUlSS_E_ZNKSJ_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS13_EEvS15_iibSS_EUliE_EEviiSS_SU_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.z = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.d, %bb.f ]
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_16FlatVectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !23831

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i36.i = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask.i36.i, -1
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_16FlatVectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.ac, i64 noundef %i.af)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS4_10VectorExecEEESC_NS0_7VarcharENS0_15ConstantCheckerIJSE_EEEJSE_EEEE8applyUdfIZNKSI_7iterateIJNS4_16FlatVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSO_SS_EUlSS_E_ZNKSJ_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS13_EEvS15_iibSS_EUliE_EEviiSS_SU_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS4_10VectorExecEEESC_NS0_7VarcharENS0_15ConstantCheckerIJSE_EEEJSE_EEEE8applyUdfIZNKSI_7iterateIJNS4_16FlatVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSO_SS_EUlSS_E_ZNKSJ_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS13_EEvS15_iibSS_EUliE_EEviiSS_SU_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_16FlatVectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.474", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.sroa.4 = alloca [12 x i8], align 4            ; 8 uses
  %5 = alloca %"struct.facebook::velox::StringView", align 8 ; 7 uses
  %6 = alloca %"class.facebook::velox::Status", align 8 ; 8 uses
  %7 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %8 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !23832, !range !309, !noundef !310
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23834
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !370
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit76, label %.preheader75

.preheader75:                                     ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.4.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4
  %.sroa.4.4..sroa_idx182 = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.preheader75, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_16FlatVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit
  %.0104 = phi i64 [ %i.k, %.preheader75 ], [ %i.hj, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_16FlatVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit ] ; 3 uses
  %i.t = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0104, i1 true)
  %i.u = trunc nuw nsw i64 %i.t to i32
  %i.v = or disjoint i32 %i.m, %i.u               ; 4 uses
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !23536 ; 2 uses
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !23803, !nonnull !310, !align !416 ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !23804, !nonnull !310, !align !416
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 88
  store i32 %i.v, ptr %i.z, align 8, !tbaa !789
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !23806, !nonnull !310, !align !416
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !23804, !nonnull !310, !align !416 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !23807, !noalias !23835, !nonnull !310, !align !416
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !23838
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !2669, !noalias !23838
  %i.ah = sext i32 %i.v to i64
  %i.ai = getelementptr inbounds [16 x i8], ptr %i.ag, i64 %i.ah ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.ai, align 8, !noalias !23838 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !18, !noalias !23838
  store i64 %.sroa.0.0.copyload.i, ptr %5, align 8, !noalias !23838
  store ptr %.sroa.2.0.copyload.i, ptr %i.o, align 8, !noalias !23838
  %i.aj = trunc i64 %.sroa.0.0.copyload.i to i32  ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %.invoke, label %.noexc18.preheader

.noexc18.preheader:                               ; preds = %bb.b
  %i.al = and i64 %.sroa.0.0.copyload.i, 4294967295
  br label %.noexc18

.noexc18:                                         ; preds = %.noexc18.preheader, %bb.s
  %i.am = phi i64 [ %i.dl, %bb.s ], [ %i.al, %.noexc18.preheader ]
  %i.an = phi i32 [ %i.dk, %bb.s ], [ %i.aj, %.noexc18.preheader ]
  %i.ao = phi i64 [ %i.dj, %bb.s ], [ 0, %.noexc18.preheader ] ; 2 uses
  %.022.i.i88 = phi i32 [ %i.di, %bb.s ], [ 0, %.noexc18.preheader ] ; 11 uses
  %i.ap = icmp ult i32 %i.an, 13
  %i.aq = load ptr, ptr %i.o, align 8
  %i.ar = select i1 %i.ap, ptr %i.p, ptr %i.aq
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %i.ao ; 4 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !18, !noalias !23841 ; 6 uses
  %i.au = zext i8 %i.at to i32                    ; 4 uses
  %i.av = icmp sgt i8 %i.at, -1
  br i1 %i.av, label %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread62, label %bb.c

bb.c:                                             ; preds = %.noexc18
  %gepdiff = sub nsw i64 %i.am, %i.ao             ; 3 uses
  %i.aw = icmp slt i64 %gepdiff, 2
  br i1 %i.aw, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !18, !noalias !23841 ; 4 uses
  %i.az = and i8 %i.at, -32
  %or.cond.i = icmp eq i8 %i.az, -64
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ba = shl nuw nsw i32 %i.au, 6
  %i.bb = zext i8 %i.ay to i32
  %i.bc = add nsw i32 %i.ba, -12416
  %i.bd = add nsw i32 %i.bc, %i.bb
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

bb.f:                                             ; preds = %bb.d
  %i.be = icmp eq i8 %i.at, -19
  %i.bf = and i8 %i.ay, -96
  %i.bg = icmp eq i8 %i.bf, -96
  %or.cond46.i = select i1 %i.be, i1 %i.bg, i1 false
  %i.bh = icmp eq i64 %gepdiff, 2
  %or.cond47.i = or i1 %i.bh, %or.cond46.i
  br i1 %or.cond47.i, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !18, !noalias !23841 ; 2 uses
  %i.bk = and i8 %i.at, -16
  %or.cond5.i = icmp eq i8 %i.bk, -32
  br i1 %or.cond5.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bl = shl nuw nsw i32 %i.au, 12
  %i.bm = zext i8 %i.ay to i32
  %i.bn = shl nuw nsw i32 %i.bm, 6
  %i.bo = zext i8 %i.bj to i32
  %i.bp = add nsw i32 %i.bl, -925824
  %i.bq = add nsw i32 %i.bp, %i.bn
  %i.br = add nsw i32 %i.bq, %i.bo
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

bb.i:                                             ; preds = %bb.g
  %i.bs = icmp samesign ugt i64 %gepdiff, 3
  %i.bt = and i8 %i.at, -8
  %or.cond8.i = icmp eq i8 %i.bt, -16
  %or.cond48.i = and i1 %i.bs, %or.cond8.i
  br i1 %or.cond48.i, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.as, i64 3
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !18, !noalias !23841
  %i.bw = shl nuw nsw i32 %i.au, 18
  %i.bx = zext i8 %i.ay to i32
  %i.by = shl nuw nsw i32 %i.bx, 12
  %i.bz = zext i8 %i.bj to i32
  %i.ca = shl nuw nsw i32 %i.bz, 6
  %i.cb = zext i8 %i.bv to i32
  %i.cc = add nsw i32 %i.bw, -63447168
  %i.cd = add nsw i32 %i.cc, %i.by
  %i.ce = add nsw i32 %i.cd, %i.ca
  %i.cf = add nsw i32 %i.ce, %i.cb
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

_ZL18utf8proc_codepointPKcS0_Ri.exit:             ; preds = %bb.e, %bb.h, %bb.j
  %.1 = phi i32 [ 3, %bb.h ], [ 4, %bb.j ], [ 2, %bb.e ]
  %.3.i = phi i32 [ %i.br, %bb.h ], [ %i.cf, %bb.j ], [ %i.bd, %bb.e ] ; 2 uses
  %i.cg = icmp eq i32 %.3.i, -1
  br i1 %i.cg, label %.thread, label %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread62

_ZL18utf8proc_codepointPKcS0_Ri.exit.thread62:    ; preds = %.noexc18, %_ZL18utf8proc_codepointPKcS0_Ri.exit
  %.3.i66 = phi i32 [ %.3.i, %_ZL18utf8proc_codepointPKcS0_Ri.exit ], [ %i.au, %.noexc18 ] ; 9 uses
  %.165 = phi i32 [ %.1, %_ZL18utf8proc_codepointPKcS0_Ri.exit ], [ 1, %.noexc18 ]
  %i.ch = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes acquire, align 8, !noalias !23841
  %i.ci = icmp eq i8 %i.ch, 0
  br i1 %i.ci, label %bb.k, label %bb.l, !prof !101

bb.k:                                             ; preds = %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread62
  %i.cj = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes) #24, !noalias !23841
  %.not.i.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not.i.i.i, label %bb.l, label %.noexc.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.k
  store i64 8321515008, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes, align 8, !tbaa !370, !noalias !23841
  %i.ck = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes), !noalias !23841 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes) #24, !noalias !23841
  br label %bb.l

bb.l:                                             ; preds = %.noexc.i.i.i, %bb.k, %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread62
  %i.cl = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes acquire, align 8, !noalias !23841
  %i.cm = icmp eq i8 %i.cl, 0
  br i1 %i.cm, label %bb.m, label %bb.n, !prof !101

bb.m:                                             ; preds = %bb.l
  %i.cn = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes) #24, !noalias !23841
  %.not14.i.i.i = icmp eq i32 %i.cn, 0
  br i1 %.not14.i.i.i, label %bb.n, label %.noexc.i.i

.noexc.i.i:                                       ; preds = %bb.m
  store i64 3298534885247, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, align 8, !noalias !23841
  store i64 2147483648, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, i64 8), align 8, !noalias !23841
  %i.co = call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes), !noalias !23841 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes) #24, !noalias !23841
  br label %bb.n

bb.n:                                             ; preds = %.noexc.i.i, %bb.m, %bb.l
  %i.cp = icmp slt i32 %.3.i66, 0
  br i1 %i.cp, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cq = icmp samesign ult i32 %.3.i66, 5000
  br i1 %i.cq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cr = icmp samesign ugt i32 %.3.i66, 32
  br i1 %i.cr, label %.thread, label %.split69

.split69:                                         ; preds = %bb.p
  %i.cs = zext nneg i32 %.3.i66 to i64
  %i.ct = load i64, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes, align 8, !tbaa !370, !noalias !23841
  %i.cu = shl nuw nsw i64 1, %i.cs
  %i.cv = and i64 %i.ct, %i.cu
  %.not74 = icmp eq i64 %i.cv, 0
  br i1 %.not74, label %.thread, label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.cw = icmp samesign ugt i32 %.3.i66, 8191
  br i1 %i.cw, label %bb.r, label %.split

bb.r:                                             ; preds = %bb.q
  %i.cx = icmp samesign ult i32 %.3.i66, 8288
  br i1 %i.cx, label %.split68, label %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i.i

.split68:                                         ; preds = %bb.r
  %i.cy = add nsw i32 %.3.i66, -8192
  %i.cz = zext nneg i32 %i.cy to i64              ; 2 uses
  %i.da = lshr i64 %i.cz, 6
  %i.db = getelementptr inbounds nuw [8 x i8], ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, i64 %i.da
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !370, !noalias !23841
  %i.dd = and i64 %i.cz, 63
  %i.de = shl nuw i64 1, %i.dd
  %i.df = and i64 %i.dc, %i.de
  %.not73 = icmp eq i64 %i.df, 0
  br i1 %.not73, label %.thread, label %bb.s

.split:                                           ; preds = %bb.q
  %i.dg = icmp eq i32 %.3.i66, 5760
  br i1 %i.dg, label %bb.s, label %.thread

_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i.i: ; preds = %bb.r
  %i.dh = icmp eq i32 %.3.i66, 12288
  br i1 %i.dh, label %bb.s, label %.thread

bb.s:                                             ; preds = %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i.i, %.split, %.split68, %.split69
  %i.di = add nsw i32 %.165, %.022.i.i88          ; 3 uses
  %i.dj = sext i32 %i.di to i64                   ; 2 uses
  %i.dk = load i32, ptr %5, align 8, !tbaa !824, !noalias !23841 ; 2 uses
  %i.dl = zext i32 %i.dk to i64                   ; 2 uses
  %i.dm = icmp ugt i64 %i.dl, %i.dj
  br i1 %i.dm, label %.noexc18, label %.thread

.thread:                                          ; preds = %bb.s, %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i.i, %_ZL18utf8proc_codepointPKcS0_Ri.exit, %.split, %.split68, %.split69, %bb.i, %bb.c, %bb.f, %bb.n, %bb.p
  %.022.i.i.lcssa.ph = phi i32 [ %i.di, %bb.s ], [ %.022.i.i88, %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i.i ], [ %.022.i.i88, %_ZL18utf8proc_codepointPKcS0_Ri.exit ], [ %.022.i.i88, %.split ], [ %.022.i.i88, %.split68 ], [ %.022.i.i88, %.split69 ], [ %.022.i.i88, %bb.i ], [ %.022.i.i88, %bb.c ], [ %.022.i.i88, %bb.f ], [ %.022.i.i88, %bb.n ], [ %.022.i.i88, %bb.p ] ; 3 uses
  %.pre = load i32, ptr %5, align 8, !tbaa !824, !noalias !23841 ; 4 uses
  %.pre155 = zext i32 %.pre to i64
  %i.dn = sext i32 %.022.i.i.lcssa.ph to i64      ; 2 uses
  %.not.i.i = icmp ugt i64 %.pre155, %i.dn
  br i1 %.not.i.i, label %.noexc22, label %.invoke

.invoke:                                          ; preds = %.thread, %bb.b
  invoke void @_ZN8facebook5velox4exec12StringWriter8setEmptyEv(ptr noundef nonnull align 8 dereferenceable(96) %i.ad)
          to label %bb.ad unwind label %bb.ah

.noexc22:                                         ; preds = %.thread
  %i.do = icmp ult i32 %.pre, 13
  %i.dp = load ptr, ptr %i.o, align 8
  %i.dq = select i1 %i.do, ptr %i.p, ptr %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dn ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %i.ds = sub i32 %.pre, %.022.i.i.lcssa.ph       ; 5 uses
  %i.dt = icmp slt i32 %i.ds, 0
  br i1 %i.dt, label %bb.t, label %bb.w, !prof !98

bb.t:                                             ; preds = %.noexc22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !23844
  store i32 %i.ds, ptr %3, align 16, !tbaa !18, !alias.scope !23847, !noalias !23844
  store i32 0, ptr %i.q, align 16, !tbaa !18, !alias.scope !23847, !noalias !23844
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.78, i64 11, i64 17, ptr nonnull %3)
          to label %.noexc28 unwind label %bb.ah

.noexc28:                                         ; preds = %bb.t
end_hunk_17
begin_hunk_18_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_16FlatVectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim:bb.a
bb.ao:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_16FlatVectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clIiEEDaSN_.exit14
  %i.hb = landingpad { ptr, i32 }
          cleanup
  %i.hc = load ptr, ptr %7, align 8, !tbaa !607
  %.not.i47 = icmp eq ptr %i.hc, null
  br i1 %.not.i47, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit48, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit48

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit48: ; preds = %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.aq

bb.aq:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit48, %bb.an
  %.pn.i = phi { ptr, i32 } [ %i.hb, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit48 ], [ %i.ha, %bb.an ]
  invoke void @__cxa_end_catch()
          to label %.loopexit77 unwind label %bb.aw

.loopexit79:                                      ; preds = %tailrecurse.i.i.i.i.3
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

.loopexit.split-lp:                               ; preds = %.loopexit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_16FlatVectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clIiEEDaSN_.exit: ; preds = %tailrecurse.i.i.i.i.3
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %8) #24
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.w, i32 noundef %i.v, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.ar unwind label %bb.at

bb.ar:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_16FlatVectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clIiEEDaSN_.exit
  %i.hd = load ptr, ptr %8, align 8, !tbaa !607
  %.not.i49 = icmp eq ptr %i.hd, null
  br i1 %.not.i49, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit50, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit50

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit50: ; preds = %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_16FlatVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit

bb.at:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_16FlatVectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clIiEEDaSN_.exit
  %i.he = landingpad { ptr, i32 }
          cleanup
  %i.hf = load ptr, ptr %8, align 8, !tbaa !607
  %.not.i51 = icmp eq ptr %i.hf, null
  br i1 %.not.i51, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52: ; preds = %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.av

bb.av:                                            ; preds = %.loopexit79, %.loopexit.split-lp, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52
  %.pn16.i = phi { ptr, i32 } [ %i.he, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52 ], [ %lpad.loopexit, %.loopexit79 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @__cxa_end_catch()
          to label %.loopexit77 unwind label %bb.aw

.loopexit77:                                      ; preds = %bb.aj, %bb.av, %bb.aq
  %.merged.i = phi { ptr, i32 } [ %.pn.i, %bb.aq ], [ %.pn16.i, %bb.av ], [ %eh.lpad-body, %bb.aj ]
  resume { ptr, i32 } %.merged.i

bb.aw:                                            ; preds = %bb.av, %bb.aq
  %i.hg = landingpad { ptr, i32 }
          catch ptr null
  %i.hh = extractvalue { ptr, i32 } %i.hg, 0
  call void @__clang_call_terminate(ptr %i.hh) #51
  unreachable

bb.ax:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_16FlatVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit45, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit50
  %i.hi = add i64 %.0104, -1
  %i.hj = and i64 %i.hi, %.0104                   ; 2 uses
  %.not10 = icmp eq i64 %i.hj, 0
  br i1 %.not10, label %.loopexit76, label %bb.b, !llvm.loop !23853

.loopexit76:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_16FlatVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_16FlatVectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.474", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.474", align 16 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.sroa.4153 = alloca [12 x i8], align 4         ; 8 uses
  %6 = alloca %"struct.facebook::velox::StringView", align 8 ; 7 uses
  %7 = alloca %"class.facebook::velox::Status", align 8 ; 8 uses
  %8 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %9 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %.sroa.4 = alloca [12 x i8], align 4            ; 8 uses
  %10 = alloca %"struct.facebook::velox::StringView", align 8 ; 7 uses
  %11 = alloca %"class.facebook::velox::Status", align 8 ; 8 uses
  %12 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %13 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !23854, !range !309, !noundef !310
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23856
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !370
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit198
  ]

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.4.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4
  %.sroa.4.4..sroa_idx441 = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4
  br label %bb.az

bb.b:                                             ; preds = %bb.a
  %i.s = shl i32 %1, 6                            ; 3 uses
  %i.t = add i32 %i.s, 64
  %i.u = sext i32 %i.t to i64
  %.not265 = icmp eq i32 %i.s, -64
  br i1 %.not265, label %.loopexit198, label %.lr.ph264

.lr.ph264:                                        ; preds = %bb.b
  %i.v = sext i32 %i.s to i64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.4153.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4153, i64 4
  %.sroa.4153.4..sroa_idx442 = getelementptr inbounds nuw i8, ptr %.sroa.4153, i64 4
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph264, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_16FlatVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clImEEDaSP_.exit
  %.0263 = phi i64 [ %i.v, %.lr.ph264 ], [ %i.hq, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_16FlatVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clImEEDaSP_.exit ] ; 3 uses
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !23536 ; 2 uses
  %i.ae = load ptr, ptr %i.w, align 8, !tbaa !23803, !nonnull !310, !align !416 ; 4 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !23804, !nonnull !310, !align !416
  %i.ag = trunc i64 %.0263 to i32                 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 88
  store i32 %i.ag, ptr %i.ah, align 8, !tbaa !789
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !23806, !nonnull !310, !align !416
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !23804, !nonnull !310, !align !416 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !23807, !noalias !23857, !nonnull !310, !align !416
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !23860
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !2669, !noalias !23860
  %sext = shl i64 %.0263, 32
  %i.ap = ashr exact i64 %sext, 28
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 %i.ap ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.aq, align 8, !noalias !23860 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !18, !noalias !23860
  store i64 %.sroa.0.0.copyload.i, ptr %6, align 8, !noalias !23860
  store ptr %.sroa.2.0.copyload.i, ptr %i.y, align 8, !noalias !23860
  %i.ar = trunc i64 %.sroa.0.0.copyload.i to i32  ; 2 uses
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %.invoke, label %.noexc49.preheader

.noexc49.preheader:                               ; preds = %bb.c
  %i.at = and i64 %.sroa.0.0.copyload.i, 4294967295
  br label %.noexc49

.noexc49:                                         ; preds = %.noexc49.preheader, %bb.t
  %i.au = phi i64 [ %i.dt, %bb.t ], [ %i.at, %.noexc49.preheader ]
  %i.av = phi i32 [ %i.ds, %bb.t ], [ %i.ar, %.noexc49.preheader ]
  %i.aw = phi i64 [ %i.dr, %bb.t ], [ 0, %.noexc49.preheader ] ; 2 uses
  %.022.i.i.i246 = phi i32 [ %i.dq, %bb.t ], [ 0, %.noexc49.preheader ] ; 11 uses
  %i.ax = icmp ult i32 %i.av, 13
  %i.ay = load ptr, ptr %i.y, align 8
  %i.az = select i1 %i.ax, ptr %i.z, ptr %i.ay
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 %i.aw ; 4 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !18, !noalias !23863 ; 6 uses
  %i.bc = zext i8 %i.bb to i32                    ; 4 uses
  %i.bd = icmp sgt i8 %i.bb, -1
  br i1 %i.bd, label %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread165, label %bb.d

bb.d:                                             ; preds = %.noexc49
  %gepdiff195 = sub nsw i64 %i.au, %i.aw          ; 3 uses
  %i.be = icmp slt i64 %gepdiff195, 2
  br i1 %i.be, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !18, !noalias !23863 ; 4 uses
  %i.bh = and i8 %i.bb, -32
  %or.cond.i = icmp eq i8 %i.bh, -64
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bi = shl nuw nsw i32 %i.bc, 6
  %i.bj = zext i8 %i.bg to i32
  %i.bk = add nsw i32 %i.bi, -12416
  %i.bl = add nsw i32 %i.bk, %i.bj
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

bb.g:                                             ; preds = %bb.e
  %i.bm = icmp eq i8 %i.bb, -19
  %i.bn = and i8 %i.bg, -96
  %i.bo = icmp eq i8 %i.bn, -96
  %or.cond46.i = select i1 %i.bm, i1 %i.bo, i1 false
  %i.bp = icmp eq i64 %gepdiff195, 2
  %or.cond47.i = or i1 %i.bp, %or.cond46.i
  br i1 %or.cond47.i, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !18, !noalias !23863 ; 2 uses
  %i.bs = and i8 %i.bb, -16
  %or.cond5.i = icmp eq i8 %i.bs, -32
  br i1 %or.cond5.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bt = shl nuw nsw i32 %i.bc, 12
  %i.bu = zext i8 %i.bg to i32
  %i.bv = shl nuw nsw i32 %i.bu, 6
  %i.bw = zext i8 %i.br to i32
  %i.bx = add nsw i32 %i.bt, -925824
  %i.by = add nsw i32 %i.bx, %i.bv
  %i.bz = add nsw i32 %i.by, %i.bw
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

bb.j:                                             ; preds = %bb.h
  %i.ca = icmp samesign ugt i64 %gepdiff195, 3
  %i.cb = and i8 %i.bb, -8
  %or.cond8.i = icmp eq i8 %i.cb, -16
  %or.cond48.i = and i1 %i.ca, %or.cond8.i
  br i1 %or.cond48.i, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ba, i64 3
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !18, !noalias !23863
  %i.ce = shl nuw nsw i32 %i.bc, 18
  %i.cf = zext i8 %i.bg to i32
  %i.cg = shl nuw nsw i32 %i.cf, 12
  %i.ch = zext i8 %i.br to i32
  %i.ci = shl nuw nsw i32 %i.ch, 6
  %i.cj = zext i8 %i.cd to i32
  %i.ck = add nsw i32 %i.ce, -63447168
  %i.cl = add nsw i32 %i.ck, %i.cg
  %i.cm = add nsw i32 %i.cl, %i.ci
  %i.cn = add nsw i32 %i.cm, %i.cj
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

_ZL18utf8proc_codepointPKcS0_Ri.exit:             ; preds = %bb.f, %bb.i, %bb.k
  %.1 = phi i32 [ 3, %bb.i ], [ 4, %bb.k ], [ 2, %bb.f ]
  %.3.i = phi i32 [ %i.bz, %bb.i ], [ %i.cn, %bb.k ], [ %i.bl, %bb.f ] ; 2 uses
  %i.co = icmp eq i32 %.3.i, -1
  br i1 %i.co, label %.thread, label %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread165

_ZL18utf8proc_codepointPKcS0_Ri.exit.thread165:   ; preds = %.noexc49, %_ZL18utf8proc_codepointPKcS0_Ri.exit
  %.3.i169 = phi i32 [ %.3.i, %_ZL18utf8proc_codepointPKcS0_Ri.exit ], [ %i.bc, %.noexc49 ] ; 9 uses
  %.1168 = phi i32 [ %.1, %_ZL18utf8proc_codepointPKcS0_Ri.exit ], [ 1, %.noexc49 ]
  %i.cp = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes acquire, align 8, !noalias !23863
  %i.cq = icmp eq i8 %i.cp, 0
  br i1 %i.cq, label %bb.l, label %bb.m, !prof !101

bb.l:                                             ; preds = %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread165
  %i.cr = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes) #24, !noalias !23863
  %.not.i.i.i.i46 = icmp eq i32 %i.cr, 0
  br i1 %.not.i.i.i.i46, label %bb.m, label %.noexc.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.l
  store i64 8321515008, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes, align 8, !tbaa !370, !noalias !23863
  %i.cs = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes), !noalias !23863 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes) #24, !noalias !23863
  br label %bb.m

bb.m:                                             ; preds = %.noexc.i.i.i.i, %bb.l, %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread165
  %i.ct = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes acquire, align 8, !noalias !23863
  %i.cu = icmp eq i8 %i.ct, 0
  br i1 %i.cu, label %bb.n, label %bb.o, !prof !101

bb.n:                                             ; preds = %bb.m
  %i.cv = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes) #24, !noalias !23863
  %.not14.i.i.i.i = icmp eq i32 %i.cv, 0
  br i1 %.not14.i.i.i.i, label %bb.o, label %.noexc.i.i.i44

.noexc.i.i.i44:                                   ; preds = %bb.n
  store i64 3298534885247, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, align 8, !noalias !23863
  store i64 2147483648, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, i64 8), align 8, !noalias !23863
  %i.cw = call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes), !noalias !23863 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes) #24, !noalias !23863
  br label %bb.o

bb.o:                                             ; preds = %.noexc.i.i.i44, %bb.n, %bb.m
  %i.cx = icmp slt i32 %.3.i169, 0
  br i1 %i.cx, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cy = icmp samesign ult i32 %.3.i169, 5000
  br i1 %i.cy, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cz = icmp samesign ugt i32 %.3.i169, 32
  br i1 %i.cz, label %.thread, label %.split172

.split172:                                        ; preds = %bb.q
  %i.da = zext nneg i32 %.3.i169 to i64
  %i.db = load i64, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes, align 8, !tbaa !370, !noalias !23863
  %i.dc = shl nuw nsw i64 1, %i.da
  %i.dd = and i64 %i.db, %i.dc
  %.not197 = icmp eq i64 %i.dd, 0
  br i1 %.not197, label %.thread, label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.de = icmp samesign ugt i32 %.3.i169, 8191
  br i1 %i.de, label %bb.s, label %.split

bb.s:                                             ; preds = %bb.r
  %i.df = icmp samesign ult i32 %.3.i169, 8288
  br i1 %i.df, label %.split171, label %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i.i.i

.split171:                                        ; preds = %bb.s
  %i.dg = add nsw i32 %.3.i169, -8192
  %i.dh = zext nneg i32 %i.dg to i64              ; 2 uses
  %i.di = lshr i64 %i.dh, 6
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, i64 %i.di
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !370, !noalias !23863
  %i.dl = and i64 %i.dh, 63
  %i.dm = shl nuw i64 1, %i.dl
  %i.dn = and i64 %i.dk, %i.dm
  %.not196 = icmp eq i64 %i.dn, 0
  br i1 %.not196, label %.thread, label %bb.t

.split:                                           ; preds = %bb.r
  %i.do = icmp eq i32 %.3.i169, 5760
  br i1 %i.do, label %bb.t, label %.thread

_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i.i.i: ; preds = %bb.s
  %i.dp = icmp eq i32 %.3.i169, 12288
  br i1 %i.dp, label %bb.t, label %.thread

bb.t:                                             ; preds = %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i.i.i, %.split, %.split171, %.split172
  %i.dq = add nsw i32 %.1168, %.022.i.i.i246      ; 3 uses
  %i.dr = sext i32 %i.dq to i64                   ; 2 uses
  %i.ds = load i32, ptr %6, align 8, !tbaa !824, !noalias !23863 ; 2 uses
  %i.dt = zext i32 %i.ds to i64                   ; 2 uses
  %i.du = icmp ugt i64 %i.dt, %i.dr
  br i1 %i.du, label %.noexc49, label %.thread

.thread:                                          ; preds = %bb.t, %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i.i.i, %_ZL18utf8proc_codepointPKcS0_Ri.exit, %.split, %.split171, %.split172, %bb.j, %bb.d, %bb.g, %bb.o, %bb.q
  %.022.i.i.i.lcssa.ph = phi i32 [ %i.dq, %bb.t ], [ %.022.i.i.i246, %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i.i.i ], [ %.022.i.i.i246, %_ZL18utf8proc_codepointPKcS0_Ri.exit ], [ %.022.i.i.i246, %.split ], [ %.022.i.i.i246, %.split171 ], [ %.022.i.i.i246, %.split172 ], [ %.022.i.i.i246, %bb.j ], [ %.022.i.i.i246, %bb.d ], [ %.022.i.i.i246, %bb.g ], [ %.022.i.i.i246, %bb.o ], [ %.022.i.i.i246, %bb.q ] ; 3 uses
  %.pre = load i32, ptr %6, align 8, !tbaa !824, !noalias !23863 ; 4 uses
  %.pre379 = zext i32 %.pre to i64
  %i.dv = sext i32 %.022.i.i.i.lcssa.ph to i64    ; 2 uses
  %.not.i.i.i41 = icmp ugt i64 %.pre379, %i.dv
  br i1 %.not.i.i.i41, label %.noexc53, label %.invoke

.invoke:                                          ; preds = %.thread, %bb.c
  invoke void @_ZN8facebook5velox4exec12StringWriter8setEmptyEv(ptr noundef nonnull align 8 dereferenceable(96) %i.al)
          to label %bb.ae unwind label %bb.ai

.noexc53:                                         ; preds = %.thread
  %i.dw = icmp ult i32 %.pre, 13
  %i.dx = load ptr, ptr %i.y, align 8
  %i.dy = select i1 %i.dw, ptr %i.z, ptr %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dv ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4153)
  %i.ea = sub i32 %.pre, %.022.i.i.i.lcssa.ph     ; 5 uses
  %i.eb = icmp slt i32 %i.ea, 0
  br i1 %i.eb, label %bb.u, label %bb.x, !prof !98

bb.u:                                             ; preds = %.noexc53
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !23866
  store i32 %i.ea, ptr %4, align 16, !tbaa !18, !alias.scope !23869, !noalias !23866
  store i32 0, ptr %i.aa, align 16, !tbaa !18, !alias.scope !23869, !noalias !23866
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.78, i64 11, i64 17, ptr nonnull %4)
          to label %.noexc59 unwind label %bb.ai

.noexc59:                                         ; preds = %bb.u
end_hunk_18
begin_hunk_19_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_16FlatVectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi:bb.a
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.preheader
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gn, i64 1
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !18
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.gt, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gn, i64 2
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !18
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.gv, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gn, i64 3
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !18
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.gx, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  %i.gy = load ptr, ptr %i.ac, align 8, !tbaa !23827, !nonnull !310, !align !416
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !23828, !nonnull !310, !align !416
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  invoke void @_ZN8facebook5velox4exec12VectorWriterINS0_7VarcharEvE10commitNullEv(ptr noundef nonnull align 8 dereferenceable(112) %i.ha)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_16FlatVectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clImEEDaSN_.exit unwind label %.loopexit200

.loopexit:                                        ; preds = %bb.aj, %.lr.ph.i.i.i.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #50
          to label %bb.ay unwind label %.loopexit.split-lp

bb.ak:                                            ; preds = %.body36
  %i.hb = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #24
  %i.hc = icmp eq i32 %i.gg, %i.hb
  br i1 %i.hc, label %bb.al, label %common.resume

bb.al:                                            ; preds = %bb.ak
  %i.hd = call ptr @__cxa_begin_catch(ptr %i.gf) #24 ; 0 uses
  %i.he = load ptr, ptr %i.ac, align 8, !tbaa !23827, !nonnull !310, !align !416
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !23828, !nonnull !310, !align !416
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  invoke void @_ZN8facebook5velox4exec12VectorWriterINS0_7VarcharEvE10commitNullEv(ptr noundef nonnull align 8 dereferenceable(112) %i.hg)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_16FlatVectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clImEEDaSN_.exit40 unwind label %bb.ao

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_16FlatVectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clImEEDaSN_.exit40: ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %8) #24
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.ad, i32 noundef %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.am unwind label %bb.ap

bb.am:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_16FlatVectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clImEEDaSN_.exit40
  %i.hh = load ptr, ptr %8, align 8, !tbaa !607
  %.not.i77 = icmp eq ptr %i.hh, null
  br i1 %.not.i77, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_16FlatVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clImEEDaSP_.exit

bb.ao:                                            ; preds = %bb.al
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ap:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_16FlatVectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clImEEDaSN_.exit40
  %i.hj = landingpad { ptr, i32 }
          cleanup
  %i.hk = load ptr, ptr %8, align 8, !tbaa !607
  %.not.i78 = icmp eq ptr %i.hk, null
  br i1 %.not.i78, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit79, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit79

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit79: ; preds = %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit79, %bb.ao
  %.pn.i32 = phi { ptr, i32 } [ %i.hj, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit79 ], [ %i.hi, %bb.ao ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ax

.loopexit200:                                     ; preds = %tailrecurse.i.i.i.i.3
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

.loopexit.split-lp:                               ; preds = %.loopexit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_16FlatVectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clImEEDaSN_.exit: ; preds = %tailrecurse.i.i.i.i.3
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %9) #24
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.ad, i32 noundef %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.as unwind label %bb.au

bb.as:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_16FlatVectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clImEEDaSN_.exit
  %i.hl = load ptr, ptr %9, align 8, !tbaa !607
  %.not.i80 = icmp eq ptr %i.hl, null
  br i1 %.not.i80, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit81, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit81

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit81: ; preds = %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_16FlatVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clImEEDaSP_.exit

bb.au:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_16FlatVectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clImEEDaSN_.exit
  %i.hm = landingpad { ptr, i32 }
          cleanup
  %i.hn = load ptr, ptr %9, align 8, !tbaa !607
  %.not.i82 = icmp eq ptr %i.hn, null
  br i1 %.not.i82, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit83, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit83

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit83: ; preds = %bb.au, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.aw

bb.aw:                                            ; preds = %.loopexit200, %.loopexit.split-lp, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit83
  %.pn16.i33 = phi { ptr, i32 } [ %i.hm, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit83 ], [ %lpad.loopexit, %.loopexit200 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ax

common.resume:                                    ; preds = %bb.ak, %bb.ch, %bb.co, %bb.ct, %bb.ar, %bb.aw
  %common.resume.op = phi { ptr, i32 } [ %.pn16.i33, %bb.aw ], [ %.pn.i32, %bb.ar ], [ %.pn16.i, %bb.ct ], [ %.pn.i, %bb.co ], [ %eh.lpad-body, %bb.ch ], [ %eh.lpad-body37, %bb.ak ]
  resume { ptr, i32 } %common.resume.op

bb.ax:                                            ; preds = %bb.aw, %bb.ar
  %i.ho = landingpad { ptr, i32 }
          catch ptr null
  %i.hp = extractvalue { ptr, i32 } %i.ho, 0
  call void @__clang_call_terminate(ptr %i.hp) #51
  unreachable

bb.ay:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_16FlatVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clImEEDaSP_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit76, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit81
  %i.hq = add nuw i64 %.0263, 1                   ; 2 uses
  %i.hr = icmp ult i64 %i.hq, %i.u
  br i1 %i.hr, label %bb.c, label %.loopexit198, !llvm.loop !23875

bb.az:                                            ; preds = %.lr.ph, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_16FlatVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit
  %.015243 = phi i64 [ %i.j, %.lr.ph ], [ %i.pi, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_16FlatVectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit ] ; 3 uses
  %i.hs = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.015243, i1 true)
  %i.ht = trunc nuw nsw i64 %i.hs to i32
  %i.hu = or disjoint i32 %i.l, %i.ht             ; 4 uses
  %i.hv = load ptr, ptr %i.m, align 8, !tbaa !23536 ; 2 uses
  %i.hw = load ptr, ptr %i.k, align 8, !tbaa !23803, !nonnull !310, !align !416 ; 4 uses
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !23804, !nonnull !310, !align !416
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 88
  store i32 %i.hu, ptr %i.hy, align 8, !tbaa !789
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !23806, !nonnull !310, !align !416
  %i.ib = load ptr, ptr %i.hw, align 8, !tbaa !23804, !nonnull !310, !align !416 ; 4 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 32
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !23807, !noalias !23876, !nonnull !310, !align !416
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24, !noalias !23879
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !2669, !noalias !23879
  %i.ig = sext i32 %i.hu to i64
  %i.ih = getelementptr inbounds [16 x i8], ptr %i.if, i64 %i.ig ; 2 uses
  %.sroa.0.0.copyload.i84 = load i64, ptr %i.ih, align 8, !noalias !23879 ; 3 uses
  %.sroa.2.0..sroa_idx.i85 = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %.sroa.2.0.copyload.i86 = load ptr, ptr %.sroa.2.0..sroa_idx.i85, align 8, !tbaa !18, !noalias !23879
  store i64 %.sroa.0.0.copyload.i84, ptr %10, align 8, !noalias !23879
  store ptr %.sroa.2.0.copyload.i86, ptr %i.n, align 8, !noalias !23879
  %i.ii = trunc i64 %.sroa.0.0.copyload.i84 to i32 ; 2 uses
  %i.ij = icmp eq i32 %i.ii, 0
  br i1 %i.ij, label %.invoke415, label %.noexc24.preheader

.noexc24.preheader:                               ; preds = %bb.az
  %i.ik = and i64 %.sroa.0.0.copyload.i84, 4294967295
  br label %.noexc24

.noexc24:                                         ; preds = %.noexc24.preheader, %bb.bq
  %i.il = phi i64 [ %i.lk, %bb.bq ], [ %i.ik, %.noexc24.preheader ]
  %i.im = phi i32 [ %i.lj, %bb.bq ], [ %i.ii, %.noexc24.preheader ]
  %i.in = phi i64 [ %i.li, %bb.bq ], [ 0, %.noexc24.preheader ] ; 2 uses
  %.022.i.i226 = phi i32 [ %i.lh, %bb.bq ], [ 0, %.noexc24.preheader ] ; 11 uses
  %i.io = icmp ult i32 %i.im, 13
  %i.ip = load ptr, ptr %i.n, align 8
  %i.iq = select i1 %i.io, ptr %i.o, ptr %i.ip
  %i.ir = getelementptr inbounds i8, ptr %i.iq, i64 %i.in ; 4 uses
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !18, !noalias !23882 ; 6 uses
  %i.it = zext i8 %i.is to i32                    ; 4 uses
  %i.iu = icmp sgt i8 %i.is, -1
  br i1 %i.iu, label %_ZL18utf8proc_codepointPKcS0_Ri.exit98.thread179, label %bb.ba

bb.ba:                                            ; preds = %.noexc24
  %gepdiff = sub nsw i64 %i.il, %i.in             ; 3 uses
  %i.iv = icmp slt i64 %gepdiff, 2
  br i1 %i.iv, label %.thread189, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ir, i64 1
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !18, !noalias !23882 ; 4 uses
  %i.iy = and i8 %i.is, -32
  %or.cond.i91 = icmp eq i8 %i.iy, -64
  br i1 %or.cond.i91, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.iz = shl nuw nsw i32 %i.it, 6
  %i.ja = zext i8 %i.ix to i32
  %i.jb = add nsw i32 %i.iz, -12416
  %i.jc = add nsw i32 %i.jb, %i.ja
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit98

bb.bd:                                            ; preds = %bb.bb
  %i.jd = icmp eq i8 %i.is, -19
  %i.je = and i8 %i.ix, -96
  %i.jf = icmp eq i8 %i.je, -96
  %or.cond46.i92 = select i1 %i.jd, i1 %i.jf, i1 false
  %i.jg = icmp eq i64 %gepdiff, 2
  %or.cond47.i93 = or i1 %i.jg, %or.cond46.i92
  br i1 %or.cond47.i93, label %.thread189, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ir, i64 2
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !18, !noalias !23882 ; 2 uses
  %i.jj = and i8 %i.is, -16
  %or.cond5.i94 = icmp eq i8 %i.jj, -32
  br i1 %or.cond5.i94, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.jk = shl nuw nsw i32 %i.it, 12
  %i.jl = zext i8 %i.ix to i32
  %i.jm = shl nuw nsw i32 %i.jl, 6
  %i.jn = zext i8 %i.ji to i32
  %i.jo = add nsw i32 %i.jk, -925824
  %i.jp = add nsw i32 %i.jo, %i.jm
  %i.jq = add nsw i32 %i.jp, %i.jn
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit98

bb.bg:                                            ; preds = %bb.be
  %i.jr = icmp samesign ugt i64 %gepdiff, 3
  %i.js = and i8 %i.is, -8
  %or.cond8.i95 = icmp eq i8 %i.js, -16
  %or.cond48.i96 = and i1 %i.jr, %or.cond8.i95
  br i1 %or.cond48.i96, label %bb.bh, label %.thread189

bb.bh:                                            ; preds = %bb.bg
  %i.jt = getelementptr inbounds nuw i8, ptr %i.ir, i64 3
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !18, !noalias !23882
  %i.jv = shl nuw nsw i32 %i.it, 18
  %i.jw = zext i8 %i.ix to i32
  %i.jx = shl nuw nsw i32 %i.jw, 12
  %i.jy = zext i8 %i.ji to i32
  %i.jz = shl nuw nsw i32 %i.jy, 6
  %i.ka = zext i8 %i.ju to i32
  %i.kb = add nsw i32 %i.jv, -63447168
  %i.kc = add nsw i32 %i.kb, %i.jx
  %i.kd = add nsw i32 %i.kc, %i.jz
  %i.ke = add nsw i32 %i.kd, %i.ka
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit98

_ZL18utf8proc_codepointPKcS0_Ri.exit98:           ; preds = %bb.bc, %bb.bf, %bb.bh
  %.1161 = phi i32 [ 3, %bb.bf ], [ 4, %bb.bh ], [ 2, %bb.bc ]
  %.3.i97 = phi i32 [ %i.jq, %bb.bf ], [ %i.ke, %bb.bh ], [ %i.jc, %bb.bc ] ; 2 uses
  %i.kf = icmp eq i32 %.3.i97, -1
  br i1 %i.kf, label %.thread189, label %_ZL18utf8proc_codepointPKcS0_Ri.exit98.thread179

_ZL18utf8proc_codepointPKcS0_Ri.exit98.thread179: ; preds = %.noexc24, %_ZL18utf8proc_codepointPKcS0_Ri.exit98
  %.3.i97183 = phi i32 [ %.3.i97, %_ZL18utf8proc_codepointPKcS0_Ri.exit98 ], [ %i.it, %.noexc24 ] ; 9 uses
  %.1161182 = phi i32 [ %.1161, %_ZL18utf8proc_codepointPKcS0_Ri.exit98 ], [ 1, %.noexc24 ]
  %i.kg = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes acquire, align 8, !noalias !23882
  %i.kh = icmp eq i8 %i.kg, 0
  br i1 %i.kh, label %bb.bi, label %bb.bj, !prof !101

bb.bi:                                            ; preds = %_ZL18utf8proc_codepointPKcS0_Ri.exit98.thread179
  %i.ki = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes) #24, !noalias !23882
  %.not.i.i.i = icmp eq i32 %i.ki, 0
  br i1 %.not.i.i.i, label %bb.bj, label %.noexc.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.bi
  store i64 8321515008, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes, align 8, !tbaa !370, !noalias !23882
  %i.kj = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes), !noalias !23882 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes) #24, !noalias !23882
  br label %bb.bj

bb.bj:                                            ; preds = %.noexc.i.i.i, %bb.bi, %_ZL18utf8proc_codepointPKcS0_Ri.exit98.thread179
  %i.kk = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes acquire, align 8, !noalias !23882
  %i.kl = icmp eq i8 %i.kk, 0
  br i1 %i.kl, label %bb.bk, label %bb.bl, !prof !101

bb.bk:                                            ; preds = %bb.bj
  %i.km = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes) #24, !noalias !23882
  %.not14.i.i.i = icmp eq i32 %i.km, 0
  br i1 %.not14.i.i.i, label %bb.bl, label %.noexc.i.i

.noexc.i.i:                                       ; preds = %bb.bk
  store i64 3298534885247, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, align 8, !noalias !23882
  store i64 2147483648, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, i64 8), align 8, !noalias !23882
  %i.kn = call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes), !noalias !23882 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes) #24, !noalias !23882
  br label %bb.bl

bb.bl:                                            ; preds = %.noexc.i.i, %bb.bk, %bb.bj
  %i.ko = icmp slt i32 %.3.i97183, 0
  br i1 %i.ko, label %.thread189, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.kp = icmp samesign ult i32 %.3.i97183, 5000
  br i1 %i.kp, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.kq = icmp samesign ugt i32 %.3.i97183, 32
  br i1 %i.kq, label %.thread189, label %.split187

.split187:                                        ; preds = %bb.bn
  %i.kr = zext nneg i32 %.3.i97183 to i64
  %i.ks = load i64, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes, align 8, !tbaa !370, !noalias !23882
  %i.kt = shl nuw nsw i64 1, %i.kr
  %i.ku = and i64 %i.ks, %i.kt
  %.not194 = icmp eq i64 %i.ku, 0
  br i1 %.not194, label %.thread189, label %bb.bq

bb.bo:                                            ; preds = %bb.bm
  %i.kv = icmp samesign ugt i32 %.3.i97183, 8191
  br i1 %i.kv, label %bb.bp, label %.split185

bb.bp:                                            ; preds = %bb.bo
  %i.kw = icmp samesign ult i32 %.3.i97183, 8288
  br i1 %i.kw, label %.split186, label %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i.i

.split186:                                        ; preds = %bb.bp
  %i.kx = add nsw i32 %.3.i97183, -8192
  %i.ky = zext nneg i32 %i.kx to i64              ; 2 uses
  %i.kz = lshr i64 %i.ky, 6
  %i.la = getelementptr inbounds nuw [8 x i8], ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, i64 %i.kz
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !370, !noalias !23882
  %i.lc = and i64 %i.ky, 63
  %i.ld = shl nuw i64 1, %i.lc
  %i.le = and i64 %i.lb, %i.ld
  %.not193 = icmp eq i64 %i.le, 0
  br i1 %.not193, label %.thread189, label %bb.bq

.split185:                                        ; preds = %bb.bo
  %i.lf = icmp eq i32 %.3.i97183, 5760
  br i1 %i.lf, label %bb.bq, label %.thread189

_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i.i: ; preds = %bb.bp
  %i.lg = icmp eq i32 %.3.i97183, 12288
  br i1 %i.lg, label %bb.bq, label %.thread189

bb.bq:                                            ; preds = %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i.i, %.split185, %.split186, %.split187
  %i.lh = add nsw i32 %.1161182, %.022.i.i226     ; 3 uses
  %i.li = sext i32 %i.lh to i64                   ; 2 uses
  %i.lj = load i32, ptr %10, align 8, !tbaa !824, !noalias !23882 ; 2 uses
  %i.lk = zext i32 %i.lj to i64                   ; 2 uses
  %i.ll = icmp ugt i64 %i.lk, %i.li
  br i1 %i.ll, label %.noexc24, label %.thread189

.thread189:                                       ; preds = %bb.bq, %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i.i, %_ZL18utf8proc_codepointPKcS0_Ri.exit98, %.split185, %.split186, %.split187, %bb.bg, %bb.ba, %bb.bd, %bb.bl, %bb.bn
  %.022.i.i.lcssa.ph = phi i32 [ %i.lh, %bb.bq ], [ %.022.i.i226, %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i.i ], [ %.022.i.i226, %_ZL18utf8proc_codepointPKcS0_Ri.exit98 ], [ %.022.i.i226, %.split185 ], [ %.022.i.i226, %.split186 ], [ %.022.i.i226, %.split187 ], [ %.022.i.i226, %bb.bg ], [ %.022.i.i226, %bb.ba ], [ %.022.i.i226, %bb.bd ], [ %.022.i.i226, %bb.bl ], [ %.022.i.i226, %bb.bn ] ; 3 uses
  %.pre377 = load i32, ptr %10, align 8, !tbaa !824, !noalias !23882 ; 4 uses
  %.pre378 = zext i32 %.pre377 to i64
  %i.lm = sext i32 %.022.i.i.lcssa.ph to i64      ; 2 uses
  %.not.i.i = icmp ugt i64 %.pre378, %i.lm
  br i1 %.not.i.i, label %.noexc28, label %.invoke415

.invoke415:                                       ; preds = %.thread189, %bb.az
  invoke void @_ZN8facebook5velox4exec12StringWriter8setEmptyEv(ptr noundef nonnull align 8 dereferenceable(96) %i.ic)
          to label %bb.cb unwind label %bb.cf

.noexc28:                                         ; preds = %.thread189
  %i.ln = icmp ult i32 %.pre377, 13
  %i.lo = load ptr, ptr %i.n, align 8
  %i.lp = select i1 %i.ln, ptr %i.o, ptr %i.lo
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.lm ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %i.lr = sub i32 %.pre377, %.022.i.i.lcssa.ph    ; 5 uses
  %i.ls = icmp slt i32 %i.lr, 0
  br i1 %i.ls, label %bb.br, label %bb.bu, !prof !98

bb.br:                                            ; preds = %.noexc28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24, !noalias !23885
  store i32 %i.lr, ptr %2, align 16, !tbaa !18, !alias.scope !23888, !noalias !23885
  store i32 0, ptr %i.p, align 16, !tbaa !18, !alias.scope !23888, !noalias !23885
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.78, i64 11, i64 17, ptr nonnull %2)
          to label %.noexc104 unwind label %bb.cf

.noexc104:                                        ; preds = %bb.br
end_hunk_19
begin_hunk_20_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_12VectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi:bb.a
bb.bv:                                            ; preds = %.loopexit152, %.loopexit.split-lp153, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit133
  %.pn16.i = phi { ptr, i32 } [ %i.mc, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit133 ], [ %lpad.loopexit154, %.loopexit152 ], [ %lpad.loopexit.split-lp155, %.loopexit.split-lp153 ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bq
  %i.me = landingpad { ptr, i32 }
          catch ptr null
  %i.mf = extractvalue { ptr, i32 } %i.me, 0
  call void @__clang_call_terminate(ptr %i.mf) #51
  unreachable

bb.bx:                                            ; preds = %.loopexit148
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_12VectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit120, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit127, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit131
  %i.mg = add i64 %.015173, -1
  %i.mh = and i64 %i.mg, %.015173                 ; 2 uses
  %.not = icmp eq i64 %i.mh, 0
  br i1 %.not, label %.loopexit145, label %bb.an, !llvm.loop !23986

.loopexit145:                                     ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_12VectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clImEEDaSP_.exit, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_12VectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit, %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_12VectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKS1_SR_ST_EUlSR_E_EEvSR_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef byval(%class.anon.5478) align 8 %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.474", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.sroa.4 = alloca [12 x i8], align 4            ; 8 uses
  %4 = alloca %"struct.facebook::velox::StringView", align 8 ; 7 uses
  %5 = alloca %"class.facebook::velox::Status", align 8 ; 8 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %7 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !1091, !range !309, !noundef !310
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i:     ; preds = %bb.a
  %.0.in.pre.i = load i8, ptr %i.a, align 4, !tbaa !87, !range !309
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1017
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1018 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !1016
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !745    ; 2 uses
  %.not.i.i18 = icmp sgt i32 %i.i, 0
  br i1 %.not.i.i18, label %bb.e, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.i, 2147483584                 ; 3 uses
  %i.o = zext nneg i32 %i.n to i64
  %.not37.i.i.not.i171.not = icmp eq i32 %i.n, 0
  br i1 %.not37.i.i.not.i171.not, label %.critedge.i.i.i, label %.lr.ph173

bb.f:                                             ; preds = %.lr.ph173
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i172, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.o
  br i1 %.not37.i.i.not.i, label %.lr.ph173, label %.critedge.i.i.i, !llvm.loop !1172

.lr.ph173:                                        ; preds = %bb.e, %bb.f
  %indvars.iv.i172 = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i172, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !370
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, !llvm.loop !1172

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
  %i.y = load i64, ptr %i.x, align 8, !tbaa !370
  %.demorgan.i = or i64 %i.y, %notmask.i40.i.i.i
  %i.z = icmp eq i64 %.demorgan.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i:   ; preds = %.lr.ph173, %bb.g, %.critedge.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph173 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit: ; preds = %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i
  %.0.in.i = phi i8 [ %.0.in.pre.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i ]
  %.0.i = trunc nuw i8 %.0.in.i to i1
  br i1 %.0.i, label %bb.h, label %bb.bi

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1018 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !1017 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %.lr.ph, label %.loopexit68

.lr.ph:                                           ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ao = sext i32 %i.ag to i64
  %.sroa.4.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4
  %.sroa.4.4..sroa_idx179 = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_12VectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit
  %indvars.iv = phi i64 [ %i.ao, %.lr.ph ], [ %indvars.iv.next, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_12VectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit ] ; 3 uses
  %i.ap = load ptr, ptr %i.ai, align 8, !tbaa !23540 ; 2 uses
  %i.aq = load ptr, ptr %1, align 8, !tbaa !23987, !nonnull !310, !align !416 ; 4 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !23988, !nonnull !310, !align !416
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 88
  %i.at = trunc nsw i64 %indvars.iv to i32        ; 4 uses
  store i32 %i.at, ptr %i.as, align 8, !tbaa !789
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !23990, !nonnull !310, !align !416
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !23988, !nonnull !310, !align !416 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !23991, !noalias !23993, !nonnull !310, !align !416
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !23996
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !2890, !noalias !23996, !nonnull !310, !align !416 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1382, !noalias !23996
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 58
  %i.be = load i8, ptr %i.bd, align 2, !tbaa !1383, !range !309, !noalias !23996, !noundef !310
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEEixEm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 59
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !1384, !range !309, !noalias !23996, !noundef !310
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !1385, !noalias !23996
  br label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEEixEm.exit

bb.l:                                             ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1386, !noalias !23996
  %i.bn = shl nsw i64 %indvars.iv, 2
  %i.bo = getelementptr inbounds i8, ptr %i.bm, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !77, !noalias !23996
  br label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEEixEm.exit

_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEEixEm.exit: ; preds = %bb.i, %bb.k, %bb.l
  %.0.i.i.i = phi i32 [ %i.bp, %bb.l ], [ %i.bk, %bb.k ], [ %i.at, %bb.i ]
  %i.bq = sext i32 %.0.i.i.i to i64
  %i.br = getelementptr inbounds [16 x i8], ptr %i.bc, i64 %i.bq ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.br, align 8, !noalias !23996 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !18, !noalias !23996
  store i64 %.sroa.0.0.copyload.i.i, ptr %4, align 8, !noalias !23996
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.aj, align 8, !noalias !23996
  %i.bs = trunc i64 %.sroa.0.0.copyload.i.i to i32 ; 2 uses
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %.invoke, label %.noexc11.preheader

.noexc11.preheader:                               ; preds = %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEEixEm.exit
  %i.bu = and i64 %.sroa.0.0.copyload.i.i, 4294967295
  br label %.noexc11

.noexc11:                                         ; preds = %.noexc11.preheader, %bb.ac
  %i.bv = phi i64 [ %i.eu, %bb.ac ], [ %i.bu, %.noexc11.preheader ]
  %i.bw = phi i32 [ %i.et, %bb.ac ], [ %i.bs, %.noexc11.preheader ]
  %i.bx = phi i64 [ %i.es, %bb.ac ], [ 0, %.noexc11.preheader ] ; 2 uses
  %.022.i.i80 = phi i32 [ %i.er, %bb.ac ], [ 0, %.noexc11.preheader ] ; 11 uses
  %i.by = icmp ult i32 %i.bw, 13
  %i.bz = load ptr, ptr %i.aj, align 8
  %i.ca = select i1 %i.by, ptr %i.ak, ptr %i.bz
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 %i.bx ; 4 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !18, !noalias !23999 ; 6 uses
  %i.cd = zext i8 %i.cc to i32                    ; 4 uses
  %i.ce = icmp sgt i8 %i.cc, -1
  br i1 %i.ce, label %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread56, label %bb.m

bb.m:                                             ; preds = %.noexc11
  %gepdiff = sub nsw i64 %i.bv, %i.bx             ; 3 uses
  %i.cf = icmp slt i64 %gepdiff, 2
  br i1 %i.cf, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !18, !noalias !23999 ; 4 uses
  %i.ci = and i8 %i.cc, -32
  %or.cond.i = icmp eq i8 %i.ci, -64
  br i1 %or.cond.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cj = shl nuw nsw i32 %i.cd, 6
  %i.ck = zext i8 %i.ch to i32
  %i.cl = add nsw i32 %i.cj, -12416
  %i.cm = add nsw i32 %i.cl, %i.ck
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

bb.p:                                             ; preds = %bb.n
  %i.cn = icmp eq i8 %i.cc, -19
  %i.co = and i8 %i.ch, -96
  %i.cp = icmp eq i8 %i.co, -96
  %or.cond46.i = select i1 %i.cn, i1 %i.cp, i1 false
  %i.cq = icmp eq i64 %gepdiff, 2
  %or.cond47.i = or i1 %i.cq, %or.cond46.i
  br i1 %or.cond47.i, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !18, !noalias !23999 ; 2 uses
  %i.ct = and i8 %i.cc, -16
  %or.cond5.i = icmp eq i8 %i.ct, -32
  br i1 %or.cond5.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cu = shl nuw nsw i32 %i.cd, 12
  %i.cv = zext i8 %i.ch to i32
  %i.cw = shl nuw nsw i32 %i.cv, 6
  %i.cx = zext i8 %i.cs to i32
  %i.cy = add nsw i32 %i.cu, -925824
  %i.cz = add nsw i32 %i.cy, %i.cw
  %i.da = add nsw i32 %i.cz, %i.cx
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

bb.s:                                             ; preds = %bb.q
  %i.db = icmp samesign ugt i64 %gepdiff, 3
  %i.dc = and i8 %i.cc, -8
  %or.cond8.i = icmp eq i8 %i.dc, -16
  %or.cond48.i = and i1 %i.db, %or.cond8.i
  br i1 %or.cond48.i, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cb, i64 3
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !18, !noalias !23999
  %i.df = shl nuw nsw i32 %i.cd, 18
  %i.dg = zext i8 %i.ch to i32
  %i.dh = shl nuw nsw i32 %i.dg, 12
  %i.di = zext i8 %i.cs to i32
  %i.dj = shl nuw nsw i32 %i.di, 6
  %i.dk = zext i8 %i.de to i32
  %i.dl = add nsw i32 %i.df, -63447168
  %i.dm = add nsw i32 %i.dl, %i.dh
  %i.dn = add nsw i32 %i.dm, %i.dj
  %i.do = add nsw i32 %i.dn, %i.dk
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

_ZL18utf8proc_codepointPKcS0_Ri.exit:             ; preds = %bb.o, %bb.r, %bb.t
  %.1 = phi i32 [ 3, %bb.r ], [ 4, %bb.t ], [ 2, %bb.o ]
  %.3.i = phi i32 [ %i.da, %bb.r ], [ %i.do, %bb.t ], [ %i.cm, %bb.o ] ; 2 uses
  %i.dp = icmp eq i32 %.3.i, -1
  br i1 %i.dp, label %.thread, label %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread56

_ZL18utf8proc_codepointPKcS0_Ri.exit.thread56:    ; preds = %.noexc11, %_ZL18utf8proc_codepointPKcS0_Ri.exit
  %.3.i60 = phi i32 [ %.3.i, %_ZL18utf8proc_codepointPKcS0_Ri.exit ], [ %i.cd, %.noexc11 ] ; 9 uses
  %.159 = phi i32 [ %.1, %_ZL18utf8proc_codepointPKcS0_Ri.exit ], [ 1, %.noexc11 ]
  %i.dq = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes acquire, align 8, !noalias !23999
  %i.dr = icmp eq i8 %i.dq, 0
  br i1 %i.dr, label %bb.u, label %bb.v, !prof !101

bb.u:                                             ; preds = %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread56
  %i.ds = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes) #24, !noalias !23999
  %.not.i.i.i = icmp eq i32 %i.ds, 0
  br i1 %.not.i.i.i, label %bb.v, label %.noexc.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.u
  store i64 8321515008, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes, align 8, !tbaa !370, !noalias !23999
  %i.dt = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes), !noalias !23999 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes) #24, !noalias !23999
  br label %bb.v

bb.v:                                             ; preds = %.noexc.i.i.i, %bb.u, %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread56
  %i.du = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes acquire, align 8, !noalias !23999
  %i.dv = icmp eq i8 %i.du, 0
  br i1 %i.dv, label %bb.w, label %bb.x, !prof !101

bb.w:                                             ; preds = %bb.v
  %i.dw = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes) #24, !noalias !23999
  %.not14.i.i.i = icmp eq i32 %i.dw, 0
  br i1 %.not14.i.i.i, label %bb.x, label %.noexc.i.i

.noexc.i.i:                                       ; preds = %bb.w
  store i64 3298534885247, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, align 8, !noalias !23999
  store i64 2147483648, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, i64 8), align 8, !noalias !23999
  %i.dx = call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes), !noalias !23999 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes) #24, !noalias !23999
  br label %bb.x

bb.x:                                             ; preds = %.noexc.i.i, %bb.w, %bb.v
  %i.dy = icmp slt i32 %.3.i60, 0
  br i1 %i.dy, label %.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dz = icmp samesign ult i32 %.3.i60, 5000
  br i1 %i.dz, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ea = icmp samesign ugt i32 %.3.i60, 32
  br i1 %i.ea, label %.thread, label %.split63

.split63:                                         ; preds = %bb.z
  %i.eb = zext nneg i32 %.3.i60 to i64
  %i.ec = load i64, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes, align 8, !tbaa !370, !noalias !23999
  %i.ed = shl nuw nsw i64 1, %i.eb
  %i.ee = and i64 %i.ec, %i.ed
  %.not67 = icmp eq i64 %i.ee, 0
  br i1 %.not67, label %.thread, label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %i.ef = icmp samesign ugt i32 %.3.i60, 8191
  br i1 %i.ef, label %bb.ab, label %.split

bb.ab:                                            ; preds = %bb.aa
  %i.eg = icmp samesign ult i32 %.3.i60, 8288
  br i1 %i.eg, label %.split62, label %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i.i

.split62:                                         ; preds = %bb.ab
  %i.eh = add nsw i32 %.3.i60, -8192
  %i.ei = zext nneg i32 %i.eh to i64              ; 2 uses
  %i.ej = lshr i64 %i.ei, 6
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, i64 %i.ej
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !370, !noalias !23999
  %i.em = and i64 %i.ei, 63
  %i.en = shl nuw i64 1, %i.em
  %i.eo = and i64 %i.el, %i.en
  %.not = icmp eq i64 %i.eo, 0
  br i1 %.not, label %.thread, label %bb.ac

.split:                                           ; preds = %bb.aa
  %i.ep = icmp eq i32 %.3.i60, 5760
  br i1 %i.ep, label %bb.ac, label %.thread

_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i.i: ; preds = %bb.ab
  %i.eq = icmp eq i32 %.3.i60, 12288
  br i1 %i.eq, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i.i, %.split, %.split62, %.split63
  %i.er = add nsw i32 %.159, %.022.i.i80          ; 3 uses
  %i.es = sext i32 %i.er to i64                   ; 2 uses
  %i.et = load i32, ptr %4, align 8, !tbaa !824, !noalias !23999 ; 2 uses
  %i.eu = zext i32 %i.et to i64                   ; 2 uses
  %i.ev = icmp ugt i64 %i.eu, %i.es
  br i1 %i.ev, label %.noexc11, label %.thread

.thread:                                          ; preds = %bb.ac, %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i.i, %_ZL18utf8proc_codepointPKcS0_Ri.exit, %.split, %.split62, %.split63, %bb.s, %bb.m, %bb.p, %bb.x, %bb.z
  %.022.i.i.lcssa.ph = phi i32 [ %i.er, %bb.ac ], [ %.022.i.i80, %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i.i ], [ %.022.i.i80, %_ZL18utf8proc_codepointPKcS0_Ri.exit ], [ %.022.i.i80, %.split ], [ %.022.i.i80, %.split62 ], [ %.022.i.i80, %.split63 ], [ %.022.i.i80, %bb.s ], [ %.022.i.i80, %bb.m ], [ %.022.i.i80, %bb.p ], [ %.022.i.i80, %bb.x ], [ %.022.i.i80, %bb.z ] ; 3 uses
  %.pre = load i32, ptr %4, align 8, !tbaa !824, !noalias !23999 ; 4 uses
  %.pre148 = zext i32 %.pre to i64
  %i.ew = sext i32 %.022.i.i.lcssa.ph to i64      ; 2 uses
  %.not.i.i = icmp ugt i64 %.pre148, %i.ew
  br i1 %.not.i.i, label %.noexc15, label %.invoke

.invoke:                                          ; preds = %.thread, %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEEixEm.exit
  invoke void @_ZN8facebook5velox4exec12StringWriter8setEmptyEv(ptr noundef nonnull align 8 dereferenceable(96) %i.ax)
          to label %bb.an unwind label %bb.ar

.noexc15:                                         ; preds = %.thread
  %i.ex = icmp ult i32 %.pre, 13
  %i.ey = load ptr, ptr %i.aj, align 8
  %i.ez = select i1 %i.ex, ptr %i.ak, ptr %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.ew ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %i.fb = sub i32 %.pre, %.022.i.i.lcssa.ph       ; 5 uses
  %i.fc = icmp slt i32 %i.fb, 0
  br i1 %i.fc, label %bb.ad, label %bb.ag, !prof !98

bb.ad:                                            ; preds = %.noexc15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24, !noalias !24002
  store i32 %i.fb, ptr %2, align 16, !tbaa !18, !alias.scope !24005, !noalias !24002
  store i32 0, ptr %i.al, align 16, !tbaa !18, !alias.scope !24005, !noalias !24002
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.78, i64 11, i64 17, ptr nonnull %2)
          to label %.noexc22 unwind label %bb.ar

.noexc22:                                         ; preds = %bb.ad
end_hunk_20
begin_hunk_21_@_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_12VectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_:bb.a
  %5 = alloca %class.anon.5480, align 8           ; 6 uses
  %6 = alloca %class.anon.5479, align 8           ; 8 uses
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
  br i1 %.not.i, label %bb.b, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS4_10VectorExecEEESC_NS0_7VarcharENS0_15ConstantCheckerIJSE_EEEJSE_EEEE8applyUdfIZNKSI_7iterateIJNS4_12VectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSO_SS_EUlSS_E_ZNKSJ_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS13_EEvS15_iibSS_EUliE_EEviiSS_SU_.exit

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
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_12VectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.g, i64 noundef %i.q)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS4_10VectorExecEEESC_NS0_7VarcharENS0_15ConstantCheckerIJSE_EEEJSE_EEEE8applyUdfIZNKSI_7iterateIJNS4_12VectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSO_SS_EUlSS_E_ZNKSJ_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS13_EEvS15_iibSS_EUliE_EEviiSS_SU_.exit

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
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_12VectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.r, i64 noundef %i.x)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = add nsw i32 %i.d, 64                     ; 2 uses
  %.not3337.i = icmp sgt i32 %i.y, %i.e
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.not34.i = icmp eq i32 %2, %i.e
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS4_10VectorExecEEESC_NS0_7VarcharENS0_15ConstantCheckerIJSE_EEEJSE_EEEE8applyUdfIZNKSI_7iterateIJNS4_12VectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSO_SS_EUlSS_E_ZNKSJ_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS13_EEvS15_iibSS_EUliE_EEviiSS_SU_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.z = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.d, %bb.f ]
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_12VectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !24015

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i36.i = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask.i36.i, -1
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_12VectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.ac, i64 noundef %i.af)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS4_10VectorExecEEESC_NS0_7VarcharENS0_15ConstantCheckerIJSE_EEEJSE_EEEE8applyUdfIZNKSI_7iterateIJNS4_12VectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSO_SS_EUlSS_E_ZNKSJ_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS13_EEvS15_iibSS_EUliE_EEviiSS_SU_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS4_10VectorExecEEESC_NS0_7VarcharENS0_15ConstantCheckerIJSE_EEEJSE_EEEE8applyUdfIZNKSI_7iterateIJNS4_12VectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSO_SS_EUlSS_E_ZNKSJ_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS13_EEvS15_iibSS_EUliE_EEviiSS_SU_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_12VectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.474", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.sroa.4 = alloca [12 x i8], align 4            ; 8 uses
  %5 = alloca %"struct.facebook::velox::StringView", align 8 ; 7 uses
  %6 = alloca %"class.facebook::velox::Status", align 8 ; 8 uses
  %7 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %8 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !24016, !range !309, !noundef !310
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24018
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !370
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit76, label %.preheader75

.preheader75:                                     ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.4.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4
  %.sroa.4.4..sroa_idx182 = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.preheader75, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_12VectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit
  %.0104 = phi i64 [ %i.k, %.preheader75 ], [ %i.hz, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_12VectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit ] ; 3 uses
  %i.t = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0104, i1 true)
  %i.u = trunc nuw nsw i64 %i.t to i32
  %i.v = or disjoint i32 %i.m, %i.u               ; 5 uses
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !23540 ; 2 uses
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !23987, !nonnull !310, !align !416 ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !23988, !nonnull !310, !align !416
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 88
  store i32 %i.v, ptr %i.z, align 8, !tbaa !789
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !23990, !nonnull !310, !align !416
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !23988, !nonnull !310, !align !416 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = sext i32 %i.v to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !23991, !noalias !24019, !nonnull !310, !align !416
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !24022
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !2890, !noalias !24022, !nonnull !310, !align !416 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1382, !noalias !24022
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 58
  %i.al = load i8, ptr %i.ak, align 2, !tbaa !1383, !range !309, !noalias !24022, !noundef !310
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEEixEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 59
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !1384, !range !309, !noalias !24022, !noundef !310
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !1385, !noalias !24022
  br label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEEixEm.exit

bb.e:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1386, !noalias !24022
  %i.au = shl nsw i64 %i.ae, 2
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !77, !noalias !24022
  br label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEEixEm.exit

_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEEixEm.exit: ; preds = %bb.b, %bb.d, %bb.e
  %.0.i.i.i = phi i32 [ %i.aw, %bb.e ], [ %i.ar, %bb.d ], [ %i.v, %bb.b ]
  %i.ax = sext i32 %.0.i.i.i to i64
  %i.ay = getelementptr inbounds [16 x i8], ptr %i.aj, i64 %i.ax ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ay, align 8, !noalias !24022 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !18, !noalias !24022
  store i64 %.sroa.0.0.copyload.i.i, ptr %5, align 8, !noalias !24022
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.o, align 8, !noalias !24022
  %i.az = trunc i64 %.sroa.0.0.copyload.i.i to i32 ; 2 uses
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %.invoke, label %.noexc18.preheader

.noexc18.preheader:                               ; preds = %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEEixEm.exit
  %i.bb = and i64 %.sroa.0.0.copyload.i.i, 4294967295
  br label %.noexc18

.noexc18:                                         ; preds = %.noexc18.preheader, %bb.v
  %i.bc = phi i64 [ %i.eb, %bb.v ], [ %i.bb, %.noexc18.preheader ]
  %i.bd = phi i32 [ %i.ea, %bb.v ], [ %i.az, %.noexc18.preheader ]
  %i.be = phi i64 [ %i.dz, %bb.v ], [ 0, %.noexc18.preheader ] ; 2 uses
  %.022.i.i88 = phi i32 [ %i.dy, %bb.v ], [ 0, %.noexc18.preheader ] ; 11 uses
  %i.bf = icmp ult i32 %i.bd, 13
  %i.bg = load ptr, ptr %i.o, align 8
  %i.bh = select i1 %i.bf, ptr %i.p, ptr %i.bg
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 %i.be ; 4 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !18, !noalias !24025 ; 6 uses
  %i.bk = zext i8 %i.bj to i32                    ; 4 uses
  %i.bl = icmp sgt i8 %i.bj, -1
  br i1 %i.bl, label %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread62, label %bb.f

bb.f:                                             ; preds = %.noexc18
  %gepdiff = sub nsw i64 %i.bc, %i.be             ; 3 uses
  %i.bm = icmp slt i64 %gepdiff, 2
  br i1 %i.bm, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !18, !noalias !24025 ; 4 uses
  %i.bp = and i8 %i.bj, -32
  %or.cond.i = icmp eq i8 %i.bp, -64
  br i1 %or.cond.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bq = shl nuw nsw i32 %i.bk, 6
  %i.br = zext i8 %i.bo to i32
  %i.bs = add nsw i32 %i.bq, -12416
  %i.bt = add nsw i32 %i.bs, %i.br
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

bb.i:                                             ; preds = %bb.g
  %i.bu = icmp eq i8 %i.bj, -19
  %i.bv = and i8 %i.bo, -96
  %i.bw = icmp eq i8 %i.bv, -96
  %or.cond46.i = select i1 %i.bu, i1 %i.bw, i1 false
  %i.bx = icmp eq i64 %gepdiff, 2
  %or.cond47.i = or i1 %i.bx, %or.cond46.i
  br i1 %or.cond47.i, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !18, !noalias !24025 ; 2 uses
  %i.ca = and i8 %i.bj, -16
  %or.cond5.i = icmp eq i8 %i.ca, -32
  br i1 %or.cond5.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cb = shl nuw nsw i32 %i.bk, 12
  %i.cc = zext i8 %i.bo to i32
  %i.cd = shl nuw nsw i32 %i.cc, 6
  %i.ce = zext i8 %i.bz to i32
  %i.cf = add nsw i32 %i.cb, -925824
  %i.cg = add nsw i32 %i.cf, %i.cd
  %i.ch = add nsw i32 %i.cg, %i.ce
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

bb.l:                                             ; preds = %bb.j
  %i.ci = icmp samesign ugt i64 %gepdiff, 3
  %i.cj = and i8 %i.bj, -8
  %or.cond8.i = icmp eq i8 %i.cj, -16
  %or.cond48.i = and i1 %i.ci, %or.cond8.i
  br i1 %or.cond48.i, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bi, i64 3
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !18, !noalias !24025
  %i.cm = shl nuw nsw i32 %i.bk, 18
  %i.cn = zext i8 %i.bo to i32
  %i.co = shl nuw nsw i32 %i.cn, 12
  %i.cp = zext i8 %i.bz to i32
  %i.cq = shl nuw nsw i32 %i.cp, 6
  %i.cr = zext i8 %i.cl to i32
  %i.cs = add nsw i32 %i.cm, -63447168
  %i.ct = add nsw i32 %i.cs, %i.co
  %i.cu = add nsw i32 %i.ct, %i.cq
  %i.cv = add nsw i32 %i.cu, %i.cr
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

_ZL18utf8proc_codepointPKcS0_Ri.exit:             ; preds = %bb.h, %bb.k, %bb.m
  %.1 = phi i32 [ 3, %bb.k ], [ 4, %bb.m ], [ 2, %bb.h ]
  %.3.i = phi i32 [ %i.ch, %bb.k ], [ %i.cv, %bb.m ], [ %i.bt, %bb.h ] ; 2 uses
  %i.cw = icmp eq i32 %.3.i, -1
  br i1 %i.cw, label %.thread, label %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread62

_ZL18utf8proc_codepointPKcS0_Ri.exit.thread62:    ; preds = %.noexc18, %_ZL18utf8proc_codepointPKcS0_Ri.exit
  %.3.i66 = phi i32 [ %.3.i, %_ZL18utf8proc_codepointPKcS0_Ri.exit ], [ %i.bk, %.noexc18 ] ; 9 uses
  %.165 = phi i32 [ %.1, %_ZL18utf8proc_codepointPKcS0_Ri.exit ], [ 1, %.noexc18 ]
  %i.cx = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes acquire, align 8, !noalias !24025
  %i.cy = icmp eq i8 %i.cx, 0
  br i1 %i.cy, label %bb.n, label %bb.o, !prof !101

bb.n:                                             ; preds = %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread62
  %i.cz = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes) #24, !noalias !24025
  %.not.i.i.i = icmp eq i32 %i.cz, 0
  br i1 %.not.i.i.i, label %bb.o, label %.noexc.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.n
  store i64 8321515008, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes, align 8, !tbaa !370, !noalias !24025
  %i.da = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes), !noalias !24025 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes) #24, !noalias !24025
  br label %bb.o

bb.o:                                             ; preds = %.noexc.i.i.i, %bb.n, %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread62
  %i.db = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes acquire, align 8, !noalias !24025
  %i.dc = icmp eq i8 %i.db, 0
  br i1 %i.dc, label %bb.p, label %bb.q, !prof !101

bb.p:                                             ; preds = %bb.o
  %i.dd = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes) #24, !noalias !24025
  %.not14.i.i.i = icmp eq i32 %i.dd, 0
  br i1 %.not14.i.i.i, label %bb.q, label %.noexc.i.i

.noexc.i.i:                                       ; preds = %bb.p
  store i64 3298534885247, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, align 8, !noalias !24025
  store i64 2147483648, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, i64 8), align 8, !noalias !24025
  %i.de = call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes), !noalias !24025 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes) #24, !noalias !24025
  br label %bb.q

bb.q:                                             ; preds = %.noexc.i.i, %bb.p, %bb.o
  %i.df = icmp slt i32 %.3.i66, 0
  br i1 %i.df, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dg = icmp samesign ult i32 %.3.i66, 5000
  br i1 %i.dg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dh = icmp samesign ugt i32 %.3.i66, 32
  br i1 %i.dh, label %.thread, label %.split69

.split69:                                         ; preds = %bb.s
  %i.di = zext nneg i32 %.3.i66 to i64
  %i.dj = load i64, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes, align 8, !tbaa !370, !noalias !24025
  %i.dk = shl nuw nsw i64 1, %i.di
  %i.dl = and i64 %i.dj, %i.dk
  %.not74 = icmp eq i64 %i.dl, 0
  br i1 %.not74, label %.thread, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.dm = icmp samesign ugt i32 %.3.i66, 8191
  br i1 %i.dm, label %bb.u, label %.split

bb.u:                                             ; preds = %bb.t
  %i.dn = icmp samesign ult i32 %.3.i66, 8288
  br i1 %i.dn, label %.split68, label %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i.i

.split68:                                         ; preds = %bb.u
  %i.do = add nsw i32 %.3.i66, -8192
  %i.dp = zext nneg i32 %i.do to i64              ; 2 uses
  %i.dq = lshr i64 %i.dp, 6
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, i64 %i.dq
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !370, !noalias !24025
  %i.dt = and i64 %i.dp, 63
  %i.du = shl nuw i64 1, %i.dt
  %i.dv = and i64 %i.ds, %i.du
  %.not73 = icmp eq i64 %i.dv, 0
  br i1 %.not73, label %.thread, label %bb.v

.split:                                           ; preds = %bb.t
  %i.dw = icmp eq i32 %.3.i66, 5760
  br i1 %i.dw, label %bb.v, label %.thread

_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i.i: ; preds = %bb.u
  %i.dx = icmp eq i32 %.3.i66, 12288
  br i1 %i.dx, label %bb.v, label %.thread

bb.v:                                             ; preds = %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i.i, %.split, %.split68, %.split69
  %i.dy = add nsw i32 %.165, %.022.i.i88          ; 3 uses
  %i.dz = sext i32 %i.dy to i64                   ; 2 uses
  %i.ea = load i32, ptr %5, align 8, !tbaa !824, !noalias !24025 ; 2 uses
  %i.eb = zext i32 %i.ea to i64                   ; 2 uses
  %i.ec = icmp ugt i64 %i.eb, %i.dz
  br i1 %i.ec, label %.noexc18, label %.thread

.thread:                                          ; preds = %bb.v, %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i.i, %_ZL18utf8proc_codepointPKcS0_Ri.exit, %.split, %.split68, %.split69, %bb.l, %bb.f, %bb.i, %bb.q, %bb.s
  %.022.i.i.lcssa.ph = phi i32 [ %i.dy, %bb.v ], [ %.022.i.i88, %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i.i ], [ %.022.i.i88, %_ZL18utf8proc_codepointPKcS0_Ri.exit ], [ %.022.i.i88, %.split ], [ %.022.i.i88, %.split68 ], [ %.022.i.i88, %.split69 ], [ %.022.i.i88, %bb.l ], [ %.022.i.i88, %bb.f ], [ %.022.i.i88, %bb.i ], [ %.022.i.i88, %bb.q ], [ %.022.i.i88, %bb.s ] ; 3 uses
  %.pre = load i32, ptr %5, align 8, !tbaa !824, !noalias !24025 ; 4 uses
  %.pre155 = zext i32 %.pre to i64
  %i.ed = sext i32 %.022.i.i.lcssa.ph to i64      ; 2 uses
  %.not.i.i = icmp ugt i64 %.pre155, %i.ed
  br i1 %.not.i.i, label %.noexc22, label %.invoke

.invoke:                                          ; preds = %.thread, %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEEixEm.exit
  invoke void @_ZN8facebook5velox4exec12StringWriter8setEmptyEv(ptr noundef nonnull align 8 dereferenceable(96) %i.ad)
          to label %bb.ag unwind label %bb.ak

.noexc22:                                         ; preds = %.thread
  %i.ee = icmp ult i32 %.pre, 13
  %i.ef = load ptr, ptr %i.o, align 8
  %i.eg = select i1 %i.ee, ptr %i.p, ptr %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ed ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %i.ei = sub i32 %.pre, %.022.i.i.lcssa.ph       ; 5 uses
  %i.ej = icmp slt i32 %i.ei, 0
  br i1 %i.ej, label %bb.w, label %bb.z, !prof !98

bb.w:                                             ; preds = %.noexc22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !24028
  store i32 %i.ei, ptr %3, align 16, !tbaa !18, !alias.scope !24031, !noalias !24028
  store i32 0, ptr %i.q, align 16, !tbaa !18, !alias.scope !24031, !noalias !24028
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.78, i64 11, i64 17, ptr nonnull %3)
          to label %.noexc28 unwind label %bb.ak

.noexc28:                                         ; preds = %bb.w
end_hunk_21
begin_hunk_22_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_12VectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim:bb.a
  br label %bb.ay

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_12VectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clIiEEDaSN_.exit: ; preds = %tailrecurse.i.i.i.i.3
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %8) #24
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.w, i32 noundef %i.v, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.au unwind label %bb.aw

bb.au:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_12VectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clIiEEDaSN_.exit
  %i.ht = load ptr, ptr %8, align 8, !tbaa !607
  %.not.i49 = icmp eq ptr %i.ht, null
  br i1 %.not.i49, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit50, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit50

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit50: ; preds = %bb.au, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_12VectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit

bb.aw:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_12VectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clIiEEDaSN_.exit
  %i.hu = landingpad { ptr, i32 }
          cleanup
  %i.hv = load ptr, ptr %8, align 8, !tbaa !607
  %.not.i51 = icmp eq ptr %i.hv, null
  br i1 %.not.i51, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52: ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.ay

bb.ay:                                            ; preds = %.loopexit79, %.loopexit.split-lp, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52
  %.pn16.i = phi { ptr, i32 } [ %i.hu, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52 ], [ %lpad.loopexit, %.loopexit79 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @__cxa_end_catch()
          to label %.loopexit77 unwind label %bb.az

.loopexit77:                                      ; preds = %bb.am, %bb.ay, %bb.at
  %.merged.i = phi { ptr, i32 } [ %.pn.i, %bb.at ], [ %.pn16.i, %bb.ay ], [ %eh.lpad-body, %bb.am ]
  resume { ptr, i32 } %.merged.i

bb.az:                                            ; preds = %bb.ay, %bb.at
  %i.hw = landingpad { ptr, i32 }
          catch ptr null
  %i.hx = extractvalue { ptr, i32 } %i.hw, 0
  call void @__clang_call_terminate(ptr %i.hx) #51
  unreachable

bb.ba:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_12VectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit45, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit50
  %i.hy = add i64 %.0104, -1
  %i.hz = and i64 %i.hy, %.0104                   ; 2 uses
  %.not10 = icmp eq i64 %i.hz, 0
  br i1 %.not10, label %.loopexit76, label %bb.b, !llvm.loop !24037

.loopexit76:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_12VectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_12VectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.474", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.474", align 16 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.sroa.4157 = alloca [12 x i8], align 4         ; 8 uses
  %6 = alloca %"struct.facebook::velox::StringView", align 8 ; 7 uses
  %7 = alloca %"class.facebook::velox::Status", align 8 ; 8 uses
  %8 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %9 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %.sroa.4 = alloca [12 x i8], align 4            ; 8 uses
  %10 = alloca %"struct.facebook::velox::StringView", align 8 ; 7 uses
  %11 = alloca %"class.facebook::velox::Status", align 8 ; 8 uses
  %12 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %13 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !24038, !range !309, !noundef !310
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24040
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !370
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit202
  ]

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.4.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4
  %.sroa.4.4..sroa_idx444 = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4
  br label %bb.bc

bb.b:                                             ; preds = %bb.a
  %i.s = shl i32 %1, 6                            ; 3 uses
  %i.t = add i32 %i.s, 64
  %i.u = sext i32 %i.t to i64
  %.not269 = icmp eq i32 %i.s, -64
  br i1 %.not269, label %.loopexit202, label %.lr.ph268

.lr.ph268:                                        ; preds = %bb.b
  %i.v = sext i32 %i.s to i64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.4157.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4157, i64 4
  %.sroa.4157.4..sroa_idx445 = getelementptr inbounds nuw i8, ptr %.sroa.4157, i64 4
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph268, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_12VectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clImEEDaSP_.exit
  %.0267 = phi i64 [ %i.v, %.lr.ph268 ], [ %i.if, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_12VectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clImEEDaSP_.exit ] ; 3 uses
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !23540 ; 2 uses
  %i.ae = load ptr, ptr %i.w, align 8, !tbaa !23987, !nonnull !310, !align !416 ; 4 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !23988, !nonnull !310, !align !416
  %i.ag = trunc i64 %.0267 to i32                 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 88
  store i32 %i.ag, ptr %i.ah, align 8, !tbaa !789
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !23990, !nonnull !310, !align !416
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !23988, !nonnull !310, !align !416 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !23991, !noalias !24041, !nonnull !310, !align !416
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !24044
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !2890, !noalias !24044, !nonnull !310, !align !416 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1382, !noalias !24044
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 58
  %i.as = load i8, ptr %i.ar, align 2, !tbaa !1383, !range !309, !noalias !24044, !noundef !310
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEEixEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 59
  %i.av = load i8, ptr %i.au, align 1, !tbaa !1384, !range !309, !noalias !24044, !noundef !310
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !1385, !noalias !24044
  br label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEEixEm.exit

bb.f:                                             ; preds = %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !1386, !noalias !24044
  %sext.i = shl i64 %.0267, 32
  %i.bb = ashr exact i64 %sext.i, 30
  %i.bc = getelementptr inbounds i8, ptr %i.ba, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !77, !noalias !24044
  br label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEEixEm.exit

_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEEixEm.exit: ; preds = %bb.c, %bb.e, %bb.f
  %.0.i.i.i56 = phi i32 [ %i.bd, %bb.f ], [ %i.ay, %bb.e ], [ %i.ag, %bb.c ]
  %i.be = sext i32 %.0.i.i.i56 to i64
  %i.bf = getelementptr inbounds [16 x i8], ptr %i.aq, i64 %i.be ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.bf, align 8, !noalias !24044 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !18, !noalias !24044
  store i64 %.sroa.0.0.copyload.i.i, ptr %6, align 8, !noalias !24044
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.y, align 8, !noalias !24044
  %i.bg = trunc i64 %.sroa.0.0.copyload.i.i to i32 ; 2 uses
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %.invoke, label %.noexc49.preheader

.noexc49.preheader:                               ; preds = %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEEixEm.exit
  %i.bi = and i64 %.sroa.0.0.copyload.i.i, 4294967295
  br label %.noexc49

.noexc49:                                         ; preds = %.noexc49.preheader, %bb.w
  %i.bj = phi i64 [ %i.ei, %bb.w ], [ %i.bi, %.noexc49.preheader ]
  %i.bk = phi i32 [ %i.eh, %bb.w ], [ %i.bg, %.noexc49.preheader ]
  %i.bl = phi i64 [ %i.eg, %bb.w ], [ 0, %.noexc49.preheader ] ; 2 uses
  %.022.i.i.i250 = phi i32 [ %i.ef, %bb.w ], [ 0, %.noexc49.preheader ] ; 11 uses
  %i.bm = icmp ult i32 %i.bk, 13
  %i.bn = load ptr, ptr %i.y, align 8
  %i.bo = select i1 %i.bm, ptr %i.z, ptr %i.bn
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 %i.bl ; 4 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !18, !noalias !24047 ; 6 uses
  %i.br = zext i8 %i.bq to i32                    ; 4 uses
  %i.bs = icmp sgt i8 %i.bq, -1
  br i1 %i.bs, label %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread169, label %bb.g

bb.g:                                             ; preds = %.noexc49
  %gepdiff199 = sub nsw i64 %i.bj, %i.bl          ; 3 uses
  %i.bt = icmp slt i64 %gepdiff199, 2
  br i1 %i.bt, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !18, !noalias !24047 ; 4 uses
  %i.bw = and i8 %i.bq, -32
  %or.cond.i = icmp eq i8 %i.bw, -64
  br i1 %or.cond.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bx = shl nuw nsw i32 %i.br, 6
  %i.by = zext i8 %i.bv to i32
  %i.bz = add nsw i32 %i.bx, -12416
  %i.ca = add nsw i32 %i.bz, %i.by
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

bb.j:                                             ; preds = %bb.h
  %i.cb = icmp eq i8 %i.bq, -19
  %i.cc = and i8 %i.bv, -96
  %i.cd = icmp eq i8 %i.cc, -96
  %or.cond46.i = select i1 %i.cb, i1 %i.cd, i1 false
  %i.ce = icmp eq i64 %gepdiff199, 2
  %or.cond47.i = or i1 %i.ce, %or.cond46.i
  br i1 %or.cond47.i, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bp, i64 2
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !18, !noalias !24047 ; 2 uses
  %i.ch = and i8 %i.bq, -16
  %or.cond5.i = icmp eq i8 %i.ch, -32
  br i1 %or.cond5.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ci = shl nuw nsw i32 %i.br, 12
  %i.cj = zext i8 %i.bv to i32
  %i.ck = shl nuw nsw i32 %i.cj, 6
  %i.cl = zext i8 %i.cg to i32
  %i.cm = add nsw i32 %i.ci, -925824
  %i.cn = add nsw i32 %i.cm, %i.ck
  %i.co = add nsw i32 %i.cn, %i.cl
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

bb.m:                                             ; preds = %bb.k
  %i.cp = icmp samesign ugt i64 %gepdiff199, 3
  %i.cq = and i8 %i.bq, -8
  %or.cond8.i = icmp eq i8 %i.cq, -16
  %or.cond48.i = and i1 %i.cp, %or.cond8.i
  br i1 %or.cond48.i, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bp, i64 3
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !18, !noalias !24047
  %i.ct = shl nuw nsw i32 %i.br, 18
  %i.cu = zext i8 %i.bv to i32
  %i.cv = shl nuw nsw i32 %i.cu, 12
  %i.cw = zext i8 %i.cg to i32
  %i.cx = shl nuw nsw i32 %i.cw, 6
  %i.cy = zext i8 %i.cs to i32
  %i.cz = add nsw i32 %i.ct, -63447168
  %i.da = add nsw i32 %i.cz, %i.cv
  %i.db = add nsw i32 %i.da, %i.cx
  %i.dc = add nsw i32 %i.db, %i.cy
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

_ZL18utf8proc_codepointPKcS0_Ri.exit:             ; preds = %bb.i, %bb.l, %bb.n
  %.1 = phi i32 [ 3, %bb.l ], [ 4, %bb.n ], [ 2, %bb.i ]
  %.3.i = phi i32 [ %i.co, %bb.l ], [ %i.dc, %bb.n ], [ %i.ca, %bb.i ] ; 2 uses
  %i.dd = icmp eq i32 %.3.i, -1
  br i1 %i.dd, label %.thread, label %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread169

_ZL18utf8proc_codepointPKcS0_Ri.exit.thread169:   ; preds = %.noexc49, %_ZL18utf8proc_codepointPKcS0_Ri.exit
  %.3.i173 = phi i32 [ %.3.i, %_ZL18utf8proc_codepointPKcS0_Ri.exit ], [ %i.br, %.noexc49 ] ; 9 uses
  %.1172 = phi i32 [ %.1, %_ZL18utf8proc_codepointPKcS0_Ri.exit ], [ 1, %.noexc49 ]
  %i.de = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes acquire, align 8, !noalias !24047
  %i.df = icmp eq i8 %i.de, 0
  br i1 %i.df, label %bb.o, label %bb.p, !prof !101

bb.o:                                             ; preds = %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread169
  %i.dg = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes) #24, !noalias !24047
  %.not.i.i.i.i46 = icmp eq i32 %i.dg, 0
  br i1 %.not.i.i.i.i46, label %bb.p, label %.noexc.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.o
  store i64 8321515008, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes, align 8, !tbaa !370, !noalias !24047
  %i.dh = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes), !noalias !24047 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes) #24, !noalias !24047
  br label %bb.p

bb.p:                                             ; preds = %.noexc.i.i.i.i, %bb.o, %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread169
  %i.di = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes acquire, align 8, !noalias !24047
  %i.dj = icmp eq i8 %i.di, 0
  br i1 %i.dj, label %bb.q, label %bb.r, !prof !101

bb.q:                                             ; preds = %bb.p
  %i.dk = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes) #24, !noalias !24047
  %.not14.i.i.i.i = icmp eq i32 %i.dk, 0
  br i1 %.not14.i.i.i.i, label %bb.r, label %.noexc.i.i.i44

.noexc.i.i.i44:                                   ; preds = %bb.q
  store i64 3298534885247, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, align 8, !noalias !24047
  store i64 2147483648, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, i64 8), align 8, !noalias !24047
  %i.dl = call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes), !noalias !24047 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes) #24, !noalias !24047
  br label %bb.r

bb.r:                                             ; preds = %.noexc.i.i.i44, %bb.q, %bb.p
  %i.dm = icmp slt i32 %.3.i173, 0
  br i1 %i.dm, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dn = icmp samesign ult i32 %.3.i173, 5000
  br i1 %i.dn, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.do = icmp samesign ugt i32 %.3.i173, 32
  br i1 %i.do, label %.thread, label %.split176

.split176:                                        ; preds = %bb.t
  %i.dp = zext nneg i32 %.3.i173 to i64
  %i.dq = load i64, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes, align 8, !tbaa !370, !noalias !24047
  %i.dr = shl nuw nsw i64 1, %i.dp
  %i.ds = and i64 %i.dq, %i.dr
  %.not201 = icmp eq i64 %i.ds, 0
  br i1 %.not201, label %.thread, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.dt = icmp samesign ugt i32 %.3.i173, 8191
  br i1 %i.dt, label %bb.v, label %.split

bb.v:                                             ; preds = %bb.u
  %i.du = icmp samesign ult i32 %.3.i173, 8288
  br i1 %i.du, label %.split175, label %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i.i.i

.split175:                                        ; preds = %bb.v
  %i.dv = add nsw i32 %.3.i173, -8192
  %i.dw = zext nneg i32 %i.dv to i64              ; 2 uses
  %i.dx = lshr i64 %i.dw, 6
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, i64 %i.dx
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !370, !noalias !24047
  %i.ea = and i64 %i.dw, 63
  %i.eb = shl nuw i64 1, %i.ea
  %i.ec = and i64 %i.dz, %i.eb
  %.not200 = icmp eq i64 %i.ec, 0
  br i1 %.not200, label %.thread, label %bb.w

.split:                                           ; preds = %bb.u
  %i.ed = icmp eq i32 %.3.i173, 5760
  br i1 %i.ed, label %bb.w, label %.thread

_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i.i.i: ; preds = %bb.v
  %i.ee = icmp eq i32 %.3.i173, 12288
  br i1 %i.ee, label %bb.w, label %.thread

bb.w:                                             ; preds = %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i.i.i, %.split, %.split175, %.split176
  %i.ef = add nsw i32 %.1172, %.022.i.i.i250      ; 3 uses
  %i.eg = sext i32 %i.ef to i64                   ; 2 uses
  %i.eh = load i32, ptr %6, align 8, !tbaa !824, !noalias !24047 ; 2 uses
  %i.ei = zext i32 %i.eh to i64                   ; 2 uses
  %i.ej = icmp ugt i64 %i.ei, %i.eg
  br i1 %i.ej, label %.noexc49, label %.thread

.thread:                                          ; preds = %bb.w, %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i.i.i, %_ZL18utf8proc_codepointPKcS0_Ri.exit, %.split, %.split175, %.split176, %bb.m, %bb.g, %bb.j, %bb.r, %bb.t
  %.022.i.i.i.lcssa.ph = phi i32 [ %i.ef, %bb.w ], [ %.022.i.i.i250, %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i.i.i ], [ %.022.i.i.i250, %_ZL18utf8proc_codepointPKcS0_Ri.exit ], [ %.022.i.i.i250, %.split ], [ %.022.i.i.i250, %.split175 ], [ %.022.i.i.i250, %.split176 ], [ %.022.i.i.i250, %bb.m ], [ %.022.i.i.i250, %bb.g ], [ %.022.i.i.i250, %bb.j ], [ %.022.i.i.i250, %bb.r ], [ %.022.i.i.i250, %bb.t ] ; 3 uses
  %.pre = load i32, ptr %6, align 8, !tbaa !824, !noalias !24047 ; 4 uses
  %.pre383 = zext i32 %.pre to i64
  %i.ek = sext i32 %.022.i.i.i.lcssa.ph to i64    ; 2 uses
  %.not.i.i.i41 = icmp ugt i64 %.pre383, %i.ek
  br i1 %.not.i.i.i41, label %.noexc53, label %.invoke

.invoke:                                          ; preds = %.thread, %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEEixEm.exit
  invoke void @_ZN8facebook5velox4exec12StringWriter8setEmptyEv(ptr noundef nonnull align 8 dereferenceable(96) %i.al)
          to label %bb.ah unwind label %bb.al

.noexc53:                                         ; preds = %.thread
  %i.el = icmp ult i32 %.pre, 13
  %i.em = load ptr, ptr %i.y, align 8
  %i.en = select i1 %i.el, ptr %i.z, ptr %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.ek ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4157)
  %i.ep = sub i32 %.pre, %.022.i.i.i.lcssa.ph     ; 5 uses
  %i.eq = icmp slt i32 %i.ep, 0
  br i1 %i.eq, label %bb.x, label %bb.aa, !prof !98

bb.x:                                             ; preds = %.noexc53
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !24050
  store i32 %i.ep, ptr %4, align 16, !tbaa !18, !alias.scope !24053, !noalias !24050
  store i32 0, ptr %i.aa, align 16, !tbaa !18, !alias.scope !24053, !noalias !24050
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.78, i64 11, i64 17, ptr nonnull %4)
          to label %.noexc60 unwind label %bb.al

.noexc60:                                         ; preds = %bb.x
end_hunk_22
begin_hunk_23_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_EEEJSD_EEEE8applyUdfIZNKSH_7iterateIJNS3_12VectorReaderISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSN_SR_EUlSR_E_ZNKSI_ISW_EEvSN_SR_EUlSR_E0_EEvRKNS0_17SelectivityVectorESR_ST_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi:bb.a
          to label %bb.bb unwind label %.loopexit.split-lp

bb.an:                                            ; preds = %.body36
  %i.hq = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #24
  %i.hr = icmp eq i32 %i.gv, %i.hq
  br i1 %i.hr, label %bb.ao, label %common.resume

bb.ao:                                            ; preds = %bb.an
  %i.hs = call ptr @__cxa_begin_catch(ptr %i.gu) #24 ; 0 uses
  %i.ht = load ptr, ptr %i.ac, align 8, !tbaa !24011, !nonnull !310, !align !416
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !24012, !nonnull !310, !align !416
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  invoke void @_ZN8facebook5velox4exec12VectorWriterINS0_7VarcharEvE10commitNullEv(ptr noundef nonnull align 8 dereferenceable(112) %i.hv)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_12VectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clImEEDaSN_.exit40 unwind label %bb.ar

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_12VectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clImEEDaSN_.exit40: ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %8) #24
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.ad, i32 noundef %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.ap unwind label %bb.as

bb.ap:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_12VectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clImEEDaSN_.exit40
  %i.hw = load ptr, ptr %8, align 8, !tbaa !607
  %.not.i78 = icmp eq ptr %i.hw, null
  br i1 %.not.i78, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_12VectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clImEEDaSP_.exit

bb.ar:                                            ; preds = %bb.ao
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.as:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_12VectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clImEEDaSN_.exit40
  %i.hy = landingpad { ptr, i32 }
          cleanup
  %i.hz = load ptr, ptr %8, align 8, !tbaa !607
  %.not.i79 = icmp eq ptr %i.hz, null
  br i1 %.not.i79, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit80, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit80

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit80: ; preds = %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.au

bb.au:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit80, %bb.ar
  %.pn.i32 = phi { ptr, i32 } [ %i.hy, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit80 ], [ %i.hx, %bb.ar ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ba

.loopexit204:                                     ; preds = %tailrecurse.i.i.i.i.3
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

.loopexit.split-lp:                               ; preds = %.loopexit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_12VectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clImEEDaSN_.exit: ; preds = %tailrecurse.i.i.i.i.3
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %9) #24
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.ad, i32 noundef %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_12VectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clImEEDaSN_.exit
  %i.ia = load ptr, ptr %9, align 8, !tbaa !607
  %.not.i81 = icmp eq ptr %i.ia, null
  br i1 %.not.i81, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit82, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit82

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit82: ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_12VectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clImEEDaSP_.exit

bb.ax:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_EEEJS9_EEEE8applyUdfIZNKSD_7iterateIJNS1_12VectorReaderIS9_EEEEEvRNSD_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSJ_SN_ENKUlSN_E0_clImEEDaSN_.exit
  %i.ib = landingpad { ptr, i32 }
          cleanup
  %i.ic = load ptr, ptr %9, align 8, !tbaa !607
  %.not.i83 = icmp eq ptr %i.ic, null
  br i1 %.not.i83, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit84, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit84

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit84: ; preds = %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.az

bb.az:                                            ; preds = %.loopexit204, %.loopexit.split-lp, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit84
  %.pn16.i33 = phi { ptr, i32 } [ %i.ib, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit84 ], [ %lpad.loopexit, %.loopexit204 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ba

common.resume:                                    ; preds = %bb.an, %bb.cn, %bb.cu, %bb.cz, %bb.au, %bb.az
  %common.resume.op = phi { ptr, i32 } [ %.pn16.i33, %bb.az ], [ %.pn.i32, %bb.au ], [ %.pn16.i, %bb.cz ], [ %.pn.i, %bb.cu ], [ %eh.lpad-body, %bb.cn ], [ %eh.lpad-body37, %bb.an ]
  resume { ptr, i32 } %common.resume.op

bb.ba:                                            ; preds = %bb.az, %bb.au
  %i.id = landingpad { ptr, i32 }
          catch ptr null
  %i.ie = extractvalue { ptr, i32 } %i.id, 0
  call void @__clang_call_terminate(ptr %i.ie) #51
  unreachable

bb.bb:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_12VectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clImEEDaSP_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit77, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit82
  %i.if = add nuw i64 %.0267, 1                   ; 2 uses
  %i.ig = icmp ult i64 %i.if, %i.u
  br i1 %i.ig, label %bb.c, label %.loopexit202, !llvm.loop !24059

bb.bc:                                            ; preds = %.lr.ph, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_12VectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit
  %.015247 = phi i64 [ %i.j, %.lr.ph ], [ %i.qn, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13LTrimFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_EEEJSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_12VectorReaderISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E2_EEvSL_SP_EUlSP_E_ZNKSG_ISU_EEvSL_SP_EUlSP_E0_EEvRKNS0_17SelectivityVectorESP_SR_ENKUlSP_E_clIiEEDaSP_.exit ] ; 3 uses
  %i.ih = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.015247, i1 true)
  %i.ii = trunc nuw nsw i64 %i.ih to i32
  %i.ij = or disjoint i32 %i.l, %i.ii             ; 5 uses
  %i.ik = load ptr, ptr %i.m, align 8, !tbaa !23540 ; 2 uses
  %i.il = load ptr, ptr %i.k, align 8, !tbaa !23987, !nonnull !310, !align !416 ; 4 uses
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !23988, !nonnull !310, !align !416
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 88
  store i32 %i.ij, ptr %i.in, align 8, !tbaa !789
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.io = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !23990, !nonnull !310, !align !416
  %i.iq = load ptr, ptr %i.il, align 8, !tbaa !23988, !nonnull !310, !align !416 ; 4 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 32
  %i.is = sext i32 %i.ij to i64
  %i.it = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !23991, !noalias !24060, !nonnull !310, !align !416
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24, !noalias !24063
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !2890, !noalias !24063, !nonnull !310, !align !416 ; 5 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !1382, !noalias !24063
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iv, i64 58
  %i.iz = load i8, ptr %i.iy, align 2, !tbaa !1383, !range !309, !noalias !24063, !noundef !310
  %i.ja = trunc nuw i8 %i.iz to i1
  br i1 %i.ja, label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEEixEm.exit92, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iv, i64 59
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !1384, !range !309, !noalias !24063, !noundef !310
  %i.jd = trunc nuw i8 %i.jc to i1
  br i1 %i.jd, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.je = getelementptr inbounds nuw i8, ptr %i.iv, i64 64
  %i.jf = load i32, ptr %i.je, align 8, !tbaa !1385, !noalias !24063
  br label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEEixEm.exit92

bb.bf:                                            ; preds = %bb.bd
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !1386, !noalias !24063
  %i.ji = shl nsw i64 %i.is, 2
  %i.jj = getelementptr inbounds i8, ptr %i.jh, i64 %i.ji
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !77, !noalias !24063
  br label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEEixEm.exit92

_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEEixEm.exit92: ; preds = %bb.bc, %bb.be, %bb.bf
  %.0.i.i.i86 = phi i32 [ %i.jk, %bb.bf ], [ %i.jf, %bb.be ], [ %i.ij, %bb.bc ]
  %i.jl = sext i32 %.0.i.i.i86 to i64
  %i.jm = getelementptr inbounds [16 x i8], ptr %i.ix, i64 %i.jl ; 2 uses
  %.sroa.0.0.copyload.i.i87 = load i64, ptr %i.jm, align 8, !noalias !24063 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i88 = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %.sroa.2.0.copyload.i.i89 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i88, align 8, !tbaa !18, !noalias !24063
  store i64 %.sroa.0.0.copyload.i.i87, ptr %10, align 8, !noalias !24063
  store ptr %.sroa.2.0.copyload.i.i89, ptr %i.n, align 8, !noalias !24063
  %i.jn = trunc i64 %.sroa.0.0.copyload.i.i87 to i32 ; 2 uses
  %i.jo = icmp eq i32 %i.jn, 0
  br i1 %i.jo, label %.invoke419, label %.noexc24.preheader

.noexc24.preheader:                               ; preds = %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEEixEm.exit92
  %i.jp = and i64 %.sroa.0.0.copyload.i.i87, 4294967295
  br label %.noexc24

.noexc24:                                         ; preds = %.noexc24.preheader, %bb.bw
  %i.jq = phi i64 [ %i.mp, %bb.bw ], [ %i.jp, %.noexc24.preheader ]
  %i.jr = phi i32 [ %i.mo, %bb.bw ], [ %i.jn, %.noexc24.preheader ]
  %i.js = phi i64 [ %i.mn, %bb.bw ], [ 0, %.noexc24.preheader ] ; 2 uses
  %.022.i.i230 = phi i32 [ %i.mm, %bb.bw ], [ 0, %.noexc24.preheader ] ; 11 uses
  %i.jt = icmp ult i32 %i.jr, 13
  %i.ju = load ptr, ptr %i.n, align 8
  %i.jv = select i1 %i.jt, ptr %i.o, ptr %i.ju
  %i.jw = getelementptr inbounds i8, ptr %i.jv, i64 %i.js ; 4 uses
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !18, !noalias !24066 ; 6 uses
  %i.jy = zext i8 %i.jx to i32                    ; 4 uses
  %i.jz = icmp sgt i8 %i.jx, -1
  br i1 %i.jz, label %_ZL18utf8proc_codepointPKcS0_Ri.exit102.thread183, label %bb.bg

bb.bg:                                            ; preds = %.noexc24
  %gepdiff = sub nsw i64 %i.jq, %i.js             ; 3 uses
  %i.ka = icmp slt i64 %gepdiff, 2
  br i1 %i.ka, label %.thread193, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jw, i64 1
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !18, !noalias !24066 ; 4 uses
  %i.kd = and i8 %i.jx, -32
  %or.cond.i95 = icmp eq i8 %i.kd, -64
  br i1 %or.cond.i95, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.ke = shl nuw nsw i32 %i.jy, 6
  %i.kf = zext i8 %i.kc to i32
  %i.kg = add nsw i32 %i.ke, -12416
  %i.kh = add nsw i32 %i.kg, %i.kf
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit102

bb.bj:                                            ; preds = %bb.bh
  %i.ki = icmp eq i8 %i.jx, -19
  %i.kj = and i8 %i.kc, -96
  %i.kk = icmp eq i8 %i.kj, -96
  %or.cond46.i96 = select i1 %i.ki, i1 %i.kk, i1 false
  %i.kl = icmp eq i64 %gepdiff, 2
  %or.cond47.i97 = or i1 %i.kl, %or.cond46.i96
  br i1 %or.cond47.i97, label %.thread193, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.km = getelementptr inbounds nuw i8, ptr %i.jw, i64 2
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !18, !noalias !24066 ; 2 uses
  %i.ko = and i8 %i.jx, -16
  %or.cond5.i98 = icmp eq i8 %i.ko, -32
  br i1 %or.cond5.i98, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.kp = shl nuw nsw i32 %i.jy, 12
  %i.kq = zext i8 %i.kc to i32
  %i.kr = shl nuw nsw i32 %i.kq, 6
  %i.ks = zext i8 %i.kn to i32
  %i.kt = add nsw i32 %i.kp, -925824
  %i.ku = add nsw i32 %i.kt, %i.kr
  %i.kv = add nsw i32 %i.ku, %i.ks
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit102

bb.bm:                                            ; preds = %bb.bk
  %i.kw = icmp samesign ugt i64 %gepdiff, 3
  %i.kx = and i8 %i.jx, -8
  %or.cond8.i99 = icmp eq i8 %i.kx, -16
  %or.cond48.i100 = and i1 %i.kw, %or.cond8.i99
  br i1 %or.cond48.i100, label %bb.bn, label %.thread193

bb.bn:                                            ; preds = %bb.bm
  %i.ky = getelementptr inbounds nuw i8, ptr %i.jw, i64 3
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !18, !noalias !24066
  %i.la = shl nuw nsw i32 %i.jy, 18
  %i.lb = zext i8 %i.kc to i32
  %i.lc = shl nuw nsw i32 %i.lb, 12
  %i.ld = zext i8 %i.kn to i32
  %i.le = shl nuw nsw i32 %i.ld, 6
  %i.lf = zext i8 %i.kz to i32
  %i.lg = add nsw i32 %i.la, -63447168
  %i.lh = add nsw i32 %i.lg, %i.lc
  %i.li = add nsw i32 %i.lh, %i.le
  %i.lj = add nsw i32 %i.li, %i.lf
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit102

_ZL18utf8proc_codepointPKcS0_Ri.exit102:          ; preds = %bb.bi, %bb.bl, %bb.bn
  %.1165 = phi i32 [ 3, %bb.bl ], [ 4, %bb.bn ], [ 2, %bb.bi ]
  %.3.i101 = phi i32 [ %i.kv, %bb.bl ], [ %i.lj, %bb.bn ], [ %i.kh, %bb.bi ] ; 2 uses
  %i.lk = icmp eq i32 %.3.i101, -1
  br i1 %i.lk, label %.thread193, label %_ZL18utf8proc_codepointPKcS0_Ri.exit102.thread183

_ZL18utf8proc_codepointPKcS0_Ri.exit102.thread183: ; preds = %.noexc24, %_ZL18utf8proc_codepointPKcS0_Ri.exit102
  %.3.i101187 = phi i32 [ %.3.i101, %_ZL18utf8proc_codepointPKcS0_Ri.exit102 ], [ %i.jy, %.noexc24 ] ; 9 uses
  %.1165186 = phi i32 [ %.1165, %_ZL18utf8proc_codepointPKcS0_Ri.exit102 ], [ 1, %.noexc24 ]
  %i.ll = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes acquire, align 8, !noalias !24066
  %i.lm = icmp eq i8 %i.ll, 0
  br i1 %i.lm, label %bb.bo, label %bb.bp, !prof !101

bb.bo:                                            ; preds = %_ZL18utf8proc_codepointPKcS0_Ri.exit102.thread183
  %i.ln = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes) #24, !noalias !24066
  %.not.i.i.i = icmp eq i32 %i.ln, 0
  br i1 %.not.i.i.i, label %bb.bp, label %.noexc.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.bo
  store i64 8321515008, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes, align 8, !tbaa !370, !noalias !24066
  %i.lo = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes), !noalias !24066 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes) #24, !noalias !24066
  br label %bb.bp

bb.bp:                                            ; preds = %.noexc.i.i.i, %bb.bo, %_ZL18utf8proc_codepointPKcS0_Ri.exit102.thread183
  %i.lp = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes acquire, align 8, !noalias !24066
  %i.lq = icmp eq i8 %i.lp, 0
  br i1 %i.lq, label %bb.bq, label %bb.br, !prof !101

bb.bq:                                            ; preds = %bb.bp
  %i.lr = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes) #24, !noalias !24066
  %.not14.i.i.i = icmp eq i32 %i.lr, 0
  br i1 %.not14.i.i.i, label %bb.br, label %.noexc.i.i

.noexc.i.i:                                       ; preds = %bb.bq
  store i64 3298534885247, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, align 8, !noalias !24066
  store i64 2147483648, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, i64 8), align 8, !noalias !24066
  %i.ls = call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes), !noalias !24066 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes) #24, !noalias !24066
  br label %bb.br

bb.br:                                            ; preds = %.noexc.i.i, %bb.bq, %bb.bp
  %i.lt = icmp slt i32 %.3.i101187, 0
  br i1 %i.lt, label %.thread193, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.lu = icmp samesign ult i32 %.3.i101187, 5000
  br i1 %i.lu, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.lv = icmp samesign ugt i32 %.3.i101187, 32
  br i1 %i.lv, label %.thread193, label %.split191

.split191:                                        ; preds = %bb.bt
  %i.lw = zext nneg i32 %.3.i101187 to i64
  %i.lx = load i64, ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE11kAsciiCodes, align 8, !tbaa !370, !noalias !24066
  %i.ly = shl nuw nsw i64 1, %i.lw
  %i.lz = and i64 %i.lx, %i.ly
  %.not198 = icmp eq i64 %i.lz, 0
  br i1 %.not198, label %.thread193, label %bb.bw

bb.bu:                                            ; preds = %bb.bs
  %i.ma = icmp samesign ugt i32 %.3.i101187, 8191
  br i1 %i.ma, label %bb.bv, label %.split189

bb.bv:                                            ; preds = %bb.bu
  %i.mb = icmp samesign ult i32 %.3.i101187, 8288
  br i1 %i.mb, label %.split190, label %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i.i

.split190:                                        ; preds = %bb.bv
  %i.mc = add nsw i32 %.3.i101187, -8192
  %i.md = zext nneg i32 %i.mc to i64              ; 2 uses
  %i.me = lshr i64 %i.md, 6
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr @_ZZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEiE13kUnicodeCodes, i64 %i.me
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !370, !noalias !24066
  %i.mh = and i64 %i.md, 63
  %i.mi = shl nuw i64 1, %i.mh
  %i.mj = and i64 %i.mg, %i.mi
  %.not197 = icmp eq i64 %i.mj, 0
  br i1 %.not197, label %.thread193, label %bb.bw

.split189:                                        ; preds = %bb.bu
  %i.mk = icmp eq i32 %.3.i101187, 5760
  br i1 %i.mk, label %bb.bw, label %.thread193

_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i.i: ; preds = %bb.bv
  %i.ml = icmp eq i32 %.3.i101187, 12288
  br i1 %i.ml, label %bb.bw, label %.thread193

bb.bw:                                            ; preds = %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i.i, %.split189, %.split190, %.split191
  %i.mm = add nsw i32 %.1165186, %.022.i.i230     ; 3 uses
  %i.mn = sext i32 %i.mm to i64                   ; 2 uses
  %i.mo = load i32, ptr %10, align 8, !tbaa !824, !noalias !24066 ; 2 uses
  %i.mp = zext i32 %i.mo to i64                   ; 2 uses
  %i.mq = icmp ugt i64 %i.mp, %i.mn
  br i1 %i.mq, label %.noexc24, label %.thread193

.thread193:                                       ; preds = %bb.bw, %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i.i, %_ZL18utf8proc_codepointPKcS0_Ri.exit102, %.split189, %.split190, %.split191, %bb.bm, %bb.bg, %bb.bj, %bb.br, %bb.bt
  %.022.i.i.lcssa.ph = phi i32 [ %i.mm, %bb.bw ], [ %.022.i.i230, %_ZN8facebook5velox9functions10stringImpl19isUnicodeWhiteSpaceEi.exit.i.i ], [ %.022.i.i230, %_ZL18utf8proc_codepointPKcS0_Ri.exit102 ], [ %.022.i.i230, %.split189 ], [ %.022.i.i230, %.split190 ], [ %.022.i.i230, %.split191 ], [ %.022.i.i230, %bb.bm ], [ %.022.i.i230, %bb.bg ], [ %.022.i.i230, %bb.bj ], [ %.022.i.i230, %bb.br ], [ %.022.i.i230, %bb.bt ] ; 3 uses
  %.pre381 = load i32, ptr %10, align 8, !tbaa !824, !noalias !24066 ; 4 uses
  %.pre382 = zext i32 %.pre381 to i64
  %i.mr = sext i32 %.022.i.i.lcssa.ph to i64      ; 2 uses
  %.not.i.i = icmp ugt i64 %.pre382, %i.mr
  br i1 %.not.i.i, label %.noexc28, label %.invoke419

.invoke419:                                       ; preds = %.thread193, %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEEixEm.exit92
  invoke void @_ZN8facebook5velox4exec12StringWriter8setEmptyEv(ptr noundef nonnull align 8 dereferenceable(96) %i.ir)
          to label %bb.ch unwind label %bb.cl

.noexc28:                                         ; preds = %.thread193
  %i.ms = icmp ult i32 %.pre381, 13
  %i.mt = load ptr, ptr %i.n, align 8
  %i.mu = select i1 %i.ms, ptr %i.o, ptr %i.mt
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 %i.mr ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %i.mw = sub i32 %.pre381, %.022.i.i.lcssa.ph    ; 5 uses
  %i.mx = icmp slt i32 %i.mw, 0
  br i1 %i.mx, label %bb.bx, label %bb.ca, !prof !98

bb.bx:                                            ; preds = %.noexc28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24, !noalias !24069
  store i32 %i.mw, ptr %2, align 16, !tbaa !18, !alias.scope !24072, !noalias !24069
  store i32 0, ptr %i.p, align 16, !tbaa !18, !alias.scope !24072, !noalias !24069
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.78, i64 11, i64 17, ptr nonnull %2)
          to label %.noexc108 unwind label %bb.cl

.noexc108:                                        ; preds = %bb.bx
end_hunk_23
