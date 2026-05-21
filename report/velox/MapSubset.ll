inline.NumInlined: 38214
inline.NumDeleted: 10273
begin_hunk_0_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS3_10VectorExecEbEESB_NS0_3MapIbNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSI_NS0_5ArrayIbEEEEEJSI_SL_EEEE8applyUdfIZNKSO_7iterateIJNS3_12VectorReaderISI_EENSR_ISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSV_SZ_EUlSZ_E_ZNKSP_IS14_EEvSV_SZ_EUlSZ_E0_EEvRKS1_SZ_S11_EUlSZ_E_EEvSZ_:bb.a
          cleanup
  br label %bb.ah

.noexc36:                                         ; preds = %tailrecurse.i.i.i.i.3
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ec, i64 80
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !836 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !790
  %i.fe = load ptr, ptr %i.fb, align 8, !tbaa !46
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 144
  %i.fg = load ptr, ptr %i.ff, align 8
  invoke void %i.fg(ptr noundef nonnull align 8 dereferenceable(94) %i.fb, i32 noundef %i.fd, i1 noundef zeroext true)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecEbEES7_NS0_3MapIbNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSE_NS0_5ArrayIbEEEEEJSE_SH_EEEE8applyUdfIZNKSK_7iterateIJNS1_12VectorReaderISE_EENSN_ISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_ENKUlSV_E0_clIiEEDaSV_.exit unwind label %.loopexit46, !inline_history !863

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecEbEES7_NS0_3MapIbNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSE_NS0_5ArrayIbEEEEEJSE_SH_EEEE8applyUdfIZNKSK_7iterateIJNS1_12VectorReaderISE_EENSN_ISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_ENKUlSV_E0_clIiEEDaSV_.exit: ; preds = %.noexc36
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %6) #35
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.aj, i32 noundef %i.av, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecEbEES7_NS0_3MapIbNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSE_NS0_5ArrayIbEEEEEJSE_SH_EEEE8applyUdfIZNKSK_7iterateIJNS1_12VectorReaderISE_EENSN_ISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_ENKUlSV_E0_clIiEEDaSV_.exit
  %i.fh = load ptr, ptr %6, align 8, !tbaa !410
  %.not.i39 = icmp eq ptr %i.fh, null
  br i1 %.not.i39, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit40, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #35
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit40

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit40: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecEbEES9_NS0_3MapIbNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSG_NS0_5ArrayIbEEEEEJSG_SJ_EEEE8applyUdfIZNKSM_7iterateIJNS1_12VectorReaderISG_EENSP_ISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvST_SX_EUlSX_E_ZNKSN_IS12_EEvST_SX_EUlSX_E0_EEvRKNS0_17SelectivityVectorESX_SZ_ENKUlSX_E_clIiEEDaSX_.exit

bb.af:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecEbEES7_NS0_3MapIbNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSE_NS0_5ArrayIbEEEEEJSE_SH_EEEE8applyUdfIZNKSK_7iterateIJNS1_12VectorReaderISE_EENSN_ISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_ENKUlSV_E0_clIiEEDaSV_.exit
  %i.fi = landingpad { ptr, i32 }
          cleanup
  %i.fj = load ptr, ptr %6, align 8, !tbaa !410
  %.not.i41 = icmp eq ptr %i.fj, null
  br i1 %.not.i41, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit42, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #35
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit42

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit42: ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit46, %.loopexit.split-lp, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit42
  %.pn16.i = phi { ptr, i32 } [ %i.fi, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit42 ], [ %lpad.loopexit, %.loopexit46 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @__cxa_end_catch()
          to label %.loopexit44 unwind label %bb.ai

.loopexit44:                                      ; preds = %bb.v, %bb.ah, %bb.ac
  %.merged.i = phi { ptr, i32 } [ %.pn.i, %bb.ac ], [ %.pn16.i, %bb.ah ], [ %eh.lpad-body, %bb.v ]
  resume { ptr, i32 } %.merged.i

bb.ai:                                            ; preds = %bb.ah, %bb.ac
  %i.fk = landingpad { ptr, i32 }
          catch ptr null
  %i.fl = extractvalue { ptr, i32 } %i.fk, 0
  call void @__clang_call_terminate(ptr %i.fl) #43
  unreachable

bb.aj:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecEbEES9_NS0_3MapIbNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSG_NS0_5ArrayIbEEEEEJSG_SJ_EEEE8applyUdfIZNKSM_7iterateIJNS1_12VectorReaderISG_EENSP_ISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvST_SX_EUlSX_E_ZNKSN_IS12_EEvST_SX_EUlSX_E0_EEvRKNS0_17SelectivityVectorESX_SZ_ENKUlSX_E_clIiEEDaSX_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit29, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit40
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit43, label %bb.i, !llvm.loop !8166

bb.ak:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.fm = load ptr, ptr %0, align 8, !tbaa !421
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !432
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !433
  tail call void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS3_10VectorExecEbEESB_NS0_3MapIbNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSI_NS0_5ArrayIbEEEEEJSI_SL_EEEE8applyUdfIZNKSO_7iterateIJNS3_12VectorReaderISI_EENSR_ISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSV_SZ_EUlSZ_E_ZNKSP_IS14_EEvSV_SZ_EUlSZ_E0_EEvRKNS0_17SelectivityVectorESZ_S11_EUlSZ_E_EEvPKmiibSZ_(ptr noundef %i.fm, i32 noundef %i.fo, i32 noundef %i.fq, i1 noundef zeroext true, ptr noundef nonnull byval(%class.anon.2107) align 8 %1)
  br label %.loopexit43

.loopexit43:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecEbEES9_NS0_3MapIbNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSG_NS0_5ArrayIbEEEEEJSG_SJ_EEEE8applyUdfIZNKSM_7iterateIJNS1_12VectorReaderISG_EENSP_ISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvST_SX_EUlSX_E_ZNKSN_IS12_EEvST_SX_EUlSX_E0_EEvRKNS0_17SelectivityVectorESX_SZ_ENKUlSX_E_clIiEEDaSX_.exit, %bb.h, %bb.ak
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox9functions26MapSubsetPrimitiveFunctionINS0_4exec10VectorExecEbE4callERNS3_9MapWriterIbNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEERKNS3_7MapViewILb1EbSA_EERKNS3_9ArrayViewILb1EbEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #23 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::tuple.2109", align 8   ; 5 uses
  %5 = alloca %"class.facebook::velox::exec::GenericView", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !716
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %0, align 8, !tbaa !537, !range !56, !noundef !57
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !402  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 15
  %i.i = load i8, ptr %i.h, align 1, !tbaa !473
  %i.j = icmp eq i8 %i.i, -1
  br i1 %i.j, label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIbvvvvEEE5clearEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !476  ; 4 uses
  %i.m = and i64 %i.l, 252
  %.not.i.i.i = icmp eq i64 %i.m, 0               ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 14
  %i.o = load i8, ptr %i.n, align 1, !tbaa !16
  %i.p = and i8 %i.o, 15
  %i.q = icmp ult i64 %i.l, 256
  br i1 %i.q, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.e
  %.pre.i.i.i = and i64 %i.l, 255
  br label %bb.g

bb.f:                                             ; preds = %.preheader.i.i.i
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !402  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 14
  store i8 %i.p, ptr %i.s, align 2, !tbaa !750
  br label %bb.g

.preheader.i.i.i:                                 ; preds = %bb.e, %.preheader.i.i.i
  %.017.i.i.i = phi i64 [ %i.v, %.preheader.i.i.i ], [ 0, %bb.e ] ; 2 uses
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !402
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %.017.i.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.u, i8 0, i64 16, i1 false)
  %i.v = add nuw i64 %.017.i.i.i, 1               ; 2 uses
  %i.w = load i64, ptr %i.k, align 8, !tbaa !476
  %i.x = and i64 %i.w, 255                        ; 2 uses
  %.0.highbits.i.i.i = lshr i64 %i.v, %i.x
  %i.y = icmp eq i64 %.0.highbits.i.i.i, 0
  br i1 %i.y, label %.preheader.i.i.i, label %bb.f, !llvm.loop !8167

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.x, %bb.f ] ; 2 uses
  %i.z = phi ptr [ %i.g, %._crit_edge.i.i.i ], [ %i.r, %bb.f ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.aa, align 8, !tbaa !117
  store i64 %.pre-phi.i.i.i, ptr %i.k, align 8, !tbaa !476
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %i.ab = phi i64 [ %.pre-phi.i.i.i, %bb.g ], [ %i.l, %bb.d ] ; 2 uses
  %i.ac = phi ptr [ %i.z, %bb.g ], [ %i.g, %bb.d ] ; 2 uses
  br i1 %.not.i.i.i, label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIbvvvvEEE5clearEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 14
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !16
  %i.af = and i8 %i.ae, 15
  %i.ag = icmp eq i64 %i.ab, 0
  %i.ah = or disjoint i8 %i.af, 16
  %i.ai = zext nneg i8 %i.ah to i64
  %i.aj = shl i64 32, %i.ab
  %.0.i.i.i.i = select i1 %i.ag, i64 %i.ai, i64 %i.aj
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.f, align 8, !tbaa !402
  store i64 0, ptr %i.k, align 8, !tbaa !476
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %.0.i.i.i.i) #35
  br label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIbvvvvEEE5clearEv.exit

_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIbvvvvEEE5clearEv.exit: ; preds = %bb.c, %bb.h, %bb.i
  tail call void @_ZN8facebook5velox9functions26MapSubsetPrimitiveFunctionINS0_4exec10VectorExecEbE20initializeSearchKeysERKNS3_9ArrayViewILb1EbEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIbvvvvEEE5clearEv.exit, %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !476 ; 2 uses
  %i.an = icmp ult i64 %i.am, 256
  br i1 %i.an, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !469, !noalias !8168 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !470, !noalias !8168 ; 2 uses
  %i.as = load ptr, ptr %2, align 8, !tbaa !464, !noalias !8168
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !468, !noalias !8168 ; 3 uses
  %i.av = add nsw i32 %i.ar, %i.ap
  %i.aw = icmp eq i32 %i.ar, 0
  br i1 %i.aw, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.ax = lshr i64 %i.am, 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, <2 x i64> <i64 8, i64 56>
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bd = sext i32 %i.ap to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE4findIbEENS1_11F14ItemIterIPNS1_8F14ChunkIbEEEERKT_.exit.thread
  %indvars.iv = phi i64 [ %i.bd, %.lr.ph ], [ %indvars.iv.next, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE4findIbEENS1_11F14ItemIterIPNS1_8F14ChunkIbEEEERKT_.exit.thread ] ; 6 uses
  %.0106 = phi i64 [ %i.ax, %.lr.ph ], [ %.1.ph, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE4findIbEENS1_11F14ItemIterIPNS1_8F14ChunkIbEEEERKT_.exit.thread ] ; 5 uses
  %i.be = load ptr, ptr %i.as, align 8, !tbaa !727, !noalias !8171, !nonnull !57, !align !179 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !728, !noalias !8171
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 58
  %i.bi = load i8, ptr %i.bh, align 2, !tbaa !458, !range !56, !noalias !8171, !noundef !57
  %i.bj = trunc nuw i8 %i.bi to i1
  %i.bk = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  br i1 %i.bj, label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EbNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 59
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !459, !range !56, !noalias !8171, !noundef !57
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !460, !noalias !8171
  br label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EbNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit

bb.o:                                             ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !461, !noalias !8171
  %i.bs = shl nsw i64 %indvars.iv, 2
  %i.bt = getelementptr inbounds i8, ptr %i.br, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3, !noalias !8171
  br label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EbNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit

_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EbNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit: ; preds = %bb.l, %bb.n, %bb.o
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bu, %bb.o ], [ %i.bp, %bb.n ], [ %i.bk, %bb.l ]
  %i.bv = sext i32 %.0.i.i.i.i.i.i.i to i64       ; 2 uses
  %i.bw = lshr i64 %i.bv, 6
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bw
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !117, !noalias !8171
  %i.bz = and i64 %i.bv, 63
  %i.ca = lshr i64 %i.by, %i.bz                   ; 2 uses
  %i.cb = trunc i64 %i.ca to i8
  %i.cc = and i8 %i.cb, 1                         ; 4 uses
  %i.cd = load i64, ptr %i.al, align 8, !tbaa !476 ; 2 uses
  %i.ce = lshr i64 %i.cd, 8
  switch i64 %i.ce, label %bb.q [
    i64 0, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE4findIbEENS1_11F14ItemIterIPNS1_8F14ChunkIbEEEERKT_.exit.thread
    i64 1, label %bb.p
  ]

bb.p:                                             ; preds = %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EbNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit
  %i.cf = load i64, ptr %i.ay, align 8, !tbaa !751
  %i.cg = inttoptr i64 %i.cf to ptr
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !31, !range !56, !noundef !57
  %i.ci = icmp eq i8 %i.cc, %i.ch
  br i1 %i.ci, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE4findIbEENS1_11F14ItemIterIPNS1_8F14ChunkIbEEEERKT_.exit.thread76, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE4findIbEENS1_11F14ItemIterIPNS1_8F14ChunkIbEEEERKT_.exit.thread

bb.q:                                             ; preds = %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EbNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit
  %i.cj = and i64 %i.ca, 1                        ; 2 uses
  %i.ck = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.cj) ; 2 uses
  %i.cl = lshr i64 %i.ck, 24
  %i.cm = or i64 %i.cl, 128                       ; 2 uses
  %i.cn = add nuw nsw i64 %i.ck, %i.cj
  %i.co = shl nuw nsw i64 %i.cm, 1
  %i.cp = or disjoint i64 %i.co, 1
  %i.cq = trunc nuw i64 %i.cm to i8
  %i.cr = insertelement <16 x i8> poison, i8 %i.cq, i64 0
  %i.cs = shufflevector <16 x i8> %i.cr, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ct = and i64 %i.cd, 255                      ; 2 uses
  %i.cu = shl nuw i64 1, %i.ct
  %i.cv = load ptr, ptr %i.ak, align 8, !tbaa !402
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.u
  %.0.i.i103 = phi i64 [ %i.cn, %bb.q ], [ %i.dp, %bb.u ] ; 2 uses
  %.022.i.i102 = phi i64 [ %i.cu, %bb.q ], [ %i.do, %bb.u ]
  %i.cw = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i103, i64 range(i64 0, 256) %i.ct)
  %i.cx = getelementptr inbounds nuw [32 x i8], ptr %i.cv, i64 %i.cw ; 3 uses
  %i.cy = load <16 x i8>, ptr %i.cx, align 16     ; 2 uses
  %i.cz = icmp eq <16 x i8> %i.cy, %i.cs
  %i.da = bitcast <16 x i1> %i.cz to i16
  %i.db = and i16 %i.da, 16383
  %i.dc = zext nneg i16 %i.db to i32
  %i.dd = icmp ne ptr %i.cx, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.df = extractelement <16 x i8> %i.cy, i64 15
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.s, %bb.r
  %.sroa.048.0 = phi i32 [ %i.dc, %bb.r ], [ %i.di, %bb.s ] ; 4 uses
  %.not = icmp eq i32 %.sroa.048.0, 0
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.critedge.i.i
  %i.dg = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.048.0, i1 true)
  %i.dh = add nsw i32 %.sroa.048.0, -1
  %i.di = and i32 %i.dh, %.sroa.048.0
  %i.dj = zext nneg i32 %i.dg to i64
  call void @llvm.assume(i1 %i.dd)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !31, !range !56, !noundef !57
  %i.dm = icmp eq i8 %i.cc, %i.dl
  br i1 %i.dm, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE4findIbEENS1_11F14ItemIterIPNS1_8F14ChunkIbEEEERKT_.exit.thread76, label %.critedge.i.i, !prof !232, !llvm.loop !743

bb.t:                                             ; preds = %.critedge.i.i
  %i.dn = icmp eq i8 %i.df, 0
  br i1 %i.dn, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE4findIbEENS1_11F14ItemIterIPNS1_8F14ChunkIbEEEERKT_.exit.thread, label %bb.u, !prof !232

bb.u:                                             ; preds = %bb.t
  %i.do = add i64 %.022.i.i102, -1                ; 2 uses
  %i.dp = add i64 %i.cp, %.0.i.i103
  %.not.i.i = icmp eq i64 %i.do, 0
  br i1 %.not.i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE4findIbEENS1_11F14ItemIterIPNS1_8F14ChunkIbEEEERKT_.exit.thread, label %bb.r, !llvm.loop !744

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE4findIbEENS1_11F14ItemIterIPNS1_8F14ChunkIbEEEERKT_.exit.thread76: ; preds = %bb.s, %bb.p
  %i.dq = load ptr, ptr %i.au, align 8, !tbaa !562, !nonnull !57, !align !179 ; 5 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !735 ; 4 uses
  %.not.i.i.i25 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i25, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread, label %bb.v

bb.v:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE4findIbEENS1_11F14ItemIterIPNS1_8F14ChunkIbEEEERKT_.exit.thread76
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 58
  %i.du = load i8, ptr %i.dt, align 2, !tbaa !458, !range !56, !noundef !57
  %i.dv = trunc nuw i8 %i.du to i1
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dq, i64 57
  %i.dx = load i8, ptr %i.dw, align 1, !range !56
  %i.dy = trunc nuw i8 %i.dx to i1
  %or.cond.i.i.i = select i1 %i.dv, i1 true, i1 %i.dy
  br i1 %or.cond.i.i.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dz = lshr i64 %indvars.iv, 6
  %i.ea = and i64 %i.dz, 67108863
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.ea
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !117
  %i.ed = and i64 %indvars.iv, 63
  %i.ee = shl nuw i64 1, %i.ed
  %i.ef = and i64 %i.ec, %i.ee
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit

bb.x:                                             ; preds = %bb.v
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dq, i64 59
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !459, !range !56, !noundef !57
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ej = load i64, ptr %i.ds, align 8, !tbaa !117
  %i.ek = and i64 %i.ej, 1
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit

bb.z:                                             ; preds = %bb.x
  %i.el = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !461
  %i.en = shl nsw i64 %indvars.iv, 2
  %i.eo = getelementptr inbounds i8, ptr %i.em, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !3
  %i.eq = zext i32 %i.ep to i64                   ; 2 uses
  %i.er = lshr i64 %i.eq, 6
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.er
  %i.et = load i64, ptr %i.es, align 8, !tbaa !117
  %i.eu = and i64 %i.eq, 63
  %i.ev = shl nuw i64 1, %i.eu
  %i.ew = and i64 %i.ev, %i.et
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit: ; preds = %bb.w, %bb.y, %bb.z
  %.0.i.i.i.in = phi i64 [ %i.ef, %bb.w ], [ %i.ek, %bb.y ], [ %i.ew, %bb.z ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %bb.aa, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread

bb.aa:                                            ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit
  %i.ex = call noundef nonnull align 1 dereferenceable(1) ptr @_ZN8facebook5velox4exec9MapWriterIbNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
  store i8 %i.cc, ptr %i.ex, align 1, !tbaa !31
  br label %bb.ab

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread: ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE4findIbEENS1_11F14ItemIterIPNS1_8F14ChunkIbEEEERKT_.exit.thread76, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  call void @_ZN8facebook5velox4exec9MapWriterIbNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE8add_itemEv(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.2109") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %1)
  %i.ey = load ptr, ptr %i.az, align 8, !tbaa !8176, !nonnull !57
  %i.ez = load ptr, ptr %4, align 8, !tbaa !8178, !nonnull !57, !align !179
  store i8 %i.cc, ptr %i.ey, align 1, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !8181)
  call void @llvm.experimental.noalias.scope.decl(metadata !8184)
  %i.fa = load ptr, ptr %i.au, align 8, !tbaa !562, !noalias !8187, !nonnull !57, !align !179
  store ptr %i.fa, ptr %5, align 8, !tbaa !509, !alias.scope !8187
  store <2 x ptr> %i.ba, ptr %i.bb, align 8, !tbaa !38, !alias.scope !8187
  store i32 %i.bk, ptr %i.bc, align 8, !tbaa !8188, !alias.scope !8187
  call void @_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.ez, ptr noundef nonnull align 8 dereferenceable(28) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread, %bb.aa
  %i.fb = add nsw i64 %.0106, -1                  ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS3_10VectorExecEaEESB_NS0_3MapIaNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSI_NS0_5ArrayIaEEEEEJSI_SL_EEEE8applyUdfIZNKSO_7iterateIJNS3_12VectorReaderISI_EENSR_ISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSV_SZ_EUlSZ_E_ZNKSP_IS14_EEvSV_SZ_EUlSZ_E0_EEvRKS1_SZ_S11_EUlSZ_E_EEvSZ_:bb.a
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ec, i64 80
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !8448 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !790
  %i.fe = load ptr, ptr %i.fb, align 8, !tbaa !46
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 144
  %i.fg = load ptr, ptr %i.ff, align 8
  invoke void %i.fg(ptr noundef nonnull align 8 dereferenceable(94) %i.fb, i32 noundef %i.fd, i1 noundef zeroext true)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecEaEES7_NS0_3MapIaNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSE_NS0_5ArrayIaEEEEEJSE_SH_EEEE8applyUdfIZNKSK_7iterateIJNS1_12VectorReaderISE_EENSN_ISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_ENKUlSV_E0_clIiEEDaSV_.exit unwind label %.loopexit43, !inline_history !8458

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecEaEES7_NS0_3MapIaNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSE_NS0_5ArrayIaEEEEEJSE_SH_EEEE8applyUdfIZNKSK_7iterateIJNS1_12VectorReaderISE_EENSN_ISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_ENKUlSV_E0_clIiEEDaSV_.exit: ; preds = %.noexc33
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %6) #35
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.aj, i32 noundef %i.av, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecEaEES7_NS0_3MapIaNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSE_NS0_5ArrayIaEEEEEJSE_SH_EEEE8applyUdfIZNKSK_7iterateIJNS1_12VectorReaderISE_EENSN_ISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_ENKUlSV_E0_clIiEEDaSV_.exit
  %i.fh = load ptr, ptr %6, align 8, !tbaa !410
  %.not.i36 = icmp eq ptr %i.fh, null
  br i1 %.not.i36, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #35
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecEaEES9_NS0_3MapIaNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSG_NS0_5ArrayIaEEEEEJSG_SJ_EEEE8applyUdfIZNKSM_7iterateIJNS1_12VectorReaderISG_EENSP_ISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvST_SX_EUlSX_E_ZNKSN_IS12_EEvST_SX_EUlSX_E0_EEvRKNS0_17SelectivityVectorESX_SZ_ENKUlSX_E_clIiEEDaSX_.exit

bb.af:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecEaEES7_NS0_3MapIaNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSE_NS0_5ArrayIaEEEEEJSE_SH_EEEE8applyUdfIZNKSK_7iterateIJNS1_12VectorReaderISE_EENSN_ISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_ENKUlSV_E0_clIiEEDaSV_.exit
  %i.fi = landingpad { ptr, i32 }
          cleanup
  %i.fj = load ptr, ptr %6, align 8, !tbaa !410
  %.not.i38 = icmp eq ptr %i.fj, null
  br i1 %.not.i38, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #35
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39: ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit43, %.loopexit.split-lp, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39
  %.pn16.i = phi { ptr, i32 } [ %i.fi, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39 ], [ %lpad.loopexit, %.loopexit43 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @__cxa_end_catch()
          to label %.loopexit41 unwind label %bb.ai

.loopexit41:                                      ; preds = %bb.v, %bb.ah, %bb.ac
  %.merged.i = phi { ptr, i32 } [ %.pn.i, %bb.ac ], [ %.pn16.i, %bb.ah ], [ %eh.lpad-body, %bb.v ]
  resume { ptr, i32 } %.merged.i

bb.ai:                                            ; preds = %bb.ah, %bb.ac
  %i.fk = landingpad { ptr, i32 }
          catch ptr null
  %i.fl = extractvalue { ptr, i32 } %i.fk, 0
  call void @__clang_call_terminate(ptr %i.fl) #43
  unreachable

bb.aj:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecEaEES9_NS0_3MapIaNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSG_NS0_5ArrayIaEEEEEJSG_SJ_EEEE8applyUdfIZNKSM_7iterateIJNS1_12VectorReaderISG_EENSP_ISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvST_SX_EUlSX_E_ZNKSN_IS12_EEvST_SX_EUlSX_E0_EEvRKNS0_17SelectivityVectorESX_SZ_ENKUlSX_E_clIiEEDaSX_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit26, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit40, label %bb.i, !llvm.loop !8506

bb.ak:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.fm = load ptr, ptr %0, align 8, !tbaa !421
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !432
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !433
  tail call void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS3_10VectorExecEaEESB_NS0_3MapIaNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSI_NS0_5ArrayIaEEEEEJSI_SL_EEEE8applyUdfIZNKSO_7iterateIJNS3_12VectorReaderISI_EENSR_ISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSV_SZ_EUlSZ_E_ZNKSP_IS14_EEvSV_SZ_EUlSZ_E0_EEvRKNS0_17SelectivityVectorESZ_S11_EUlSZ_E_EEvPKmiibSZ_(ptr noundef %i.fm, i32 noundef %i.fo, i32 noundef %i.fq, i1 noundef zeroext true, ptr noundef nonnull byval(%class.anon.2250) align 8 %1)
  br label %.loopexit40

.loopexit40:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecEaEES9_NS0_3MapIaNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSG_NS0_5ArrayIaEEEEEJSG_SJ_EEEE8applyUdfIZNKSM_7iterateIJNS1_12VectorReaderISG_EENSP_ISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvST_SX_EUlSX_E_ZNKSN_IS12_EEvST_SX_EUlSX_E0_EEvRKNS0_17SelectivityVectorESX_SZ_ENKUlSX_E_clIiEEDaSX_.exit, %bb.h, %bb.ak
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox9functions26MapSubsetPrimitiveFunctionINS0_4exec10VectorExecEaE4callERNS3_9MapWriterIaNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEERKNS3_7MapViewILb1EaSA_EERKNS3_9ArrayViewILb1EaEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #23 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.facebook::velox::exec::GenericView", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8384
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %0, align 8, !tbaa !8372, !range !56, !noundef !57
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8337 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 15
  %i.i = load i8, ptr %i.h, align 1, !tbaa !473
  %i.j = icmp eq i8 %i.i, -1
  br i1 %i.j, label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIavvvvEEE5clearEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !476  ; 4 uses
  %i.m = and i64 %i.l, 252
  %.not.i.i.i = icmp eq i64 %i.m, 0               ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 14
  %i.o = load i8, ptr %i.n, align 1, !tbaa !16
  %i.p = and i8 %i.o, 15
  %i.q = icmp ult i64 %i.l, 256
  br i1 %i.q, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.e
  %.pre.i.i.i = and i64 %i.l, 255
  br label %bb.g

bb.f:                                             ; preds = %.preheader.i.i.i
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !8337 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 14
  store i8 %i.p, ptr %i.s, align 2, !tbaa !8414
  br label %bb.g

.preheader.i.i.i:                                 ; preds = %bb.e, %.preheader.i.i.i
  %.017.i.i.i = phi i64 [ %i.v, %.preheader.i.i.i ], [ 0, %bb.e ] ; 2 uses
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !8337
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %.017.i.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.u, i8 0, i64 16, i1 false)
  %i.v = add nuw i64 %.017.i.i.i, 1               ; 2 uses
  %i.w = load i64, ptr %i.k, align 8, !tbaa !476
  %i.x = and i64 %i.w, 255                        ; 2 uses
  %.0.highbits.i.i.i = lshr i64 %i.v, %i.x
  %i.y = icmp eq i64 %.0.highbits.i.i.i, 0
  br i1 %i.y, label %.preheader.i.i.i, label %bb.f, !llvm.loop !8507

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.x, %bb.f ] ; 2 uses
  %i.z = phi ptr [ %i.g, %._crit_edge.i.i.i ], [ %i.r, %bb.f ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.aa, align 8, !tbaa !117
  store i64 %.pre-phi.i.i.i, ptr %i.k, align 8, !tbaa !476
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %i.ab = phi i64 [ %.pre-phi.i.i.i, %bb.g ], [ %i.l, %bb.d ] ; 2 uses
  %i.ac = phi ptr [ %i.z, %bb.g ], [ %i.g, %bb.d ] ; 2 uses
  br i1 %.not.i.i.i, label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIavvvvEEE5clearEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 14
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !16
  %i.af = and i8 %i.ae, 15
  %i.ag = icmp eq i64 %i.ab, 0
  %i.ah = or disjoint i8 %i.af, 16
  %i.ai = zext nneg i8 %i.ah to i64
  %i.aj = shl i64 32, %i.ab
  %.0.i.i.i.i = select i1 %i.ag, i64 %i.ai, i64 %i.aj
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.f, align 8, !tbaa !8337
  store i64 0, ptr %i.k, align 8, !tbaa !476
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %.0.i.i.i.i) #35
  br label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIavvvvEEE5clearEv.exit

_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIavvvvEEE5clearEv.exit: ; preds = %bb.c, %bb.h, %bb.i
  tail call void @_ZN8facebook5velox9functions26MapSubsetPrimitiveFunctionINS0_4exec10VectorExecEaE20initializeSearchKeysERKNS3_9ArrayViewILb1EaEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIavvvvEEE5clearEv.exit, %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !476 ; 2 uses
  %i.an = icmp ult i64 %i.am, 256
  br i1 %i.an, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !8355, !noalias !8508 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !8356, !noalias !8508 ; 2 uses
  %i.as = load ptr, ptr %2, align 8, !tbaa !8352, !noalias !8508
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !8354, !noalias !8508 ; 3 uses
  %i.av = add nsw i32 %i.ar, %i.ap
  %i.aw = icmp eq i32 %i.ar, 0
  br i1 %i.aw, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.ax = lshr i64 %i.am, 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 37 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, <2 x i64> <i64 8, i64 56>
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bi = sext i32 %i.ap to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE4findIaEENS1_11F14ItemIterIPNS1_8F14ChunkIaEEEERKT_.exit.thread
  %indvars.iv = phi i64 [ %i.bi, %.lr.ph ], [ %indvars.iv.next, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE4findIaEENS1_11F14ItemIterIPNS1_8F14ChunkIaEEEERKT_.exit.thread ] ; 6 uses
  %.0108 = phi i64 [ %i.ax, %.lr.ph ], [ %.1.ph, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE4findIaEENS1_11F14ItemIterIPNS1_8F14ChunkIaEEEERKT_.exit.thread ] ; 5 uses
  %i.bj = load ptr, ptr %i.as, align 8, !tbaa !8395, !noalias !8511, !nonnull !57, !align !179 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !728, !noalias !8511
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 58
  %i.bn = load i8, ptr %i.bm, align 2, !tbaa !458, !range !56, !noalias !8511, !noundef !57
  %i.bo = trunc nuw i8 %i.bn to i1
  %i.bp = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  br i1 %i.bo, label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EaNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 59
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !459, !range !56, !noalias !8511, !noundef !57
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !460, !noalias !8511
  br label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EaNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit

bb.o:                                             ; preds = %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !461, !noalias !8511
  %i.bx = shl nsw i64 %indvars.iv, 2
  %i.by = getelementptr inbounds i8, ptr %i.bw, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !3, !noalias !8511
  br label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EaNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit

_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EaNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit: ; preds = %bb.l, %bb.n, %bb.o
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bz, %bb.o ], [ %i.bu, %bb.n ], [ %i.bp, %bb.l ]
  %i.ca = sext i32 %.0.i.i.i.i.i.i.i to i64
  %i.cb = getelementptr inbounds i8, ptr %i.bl, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !16, !noalias !8511 ; 5 uses
  %i.cd = load i64, ptr %i.al, align 8, !tbaa !476 ; 2 uses
  %i.ce = lshr i64 %i.cd, 8
  switch i64 %i.ce, label %bb.q [
    i64 0, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE4findIaEENS1_11F14ItemIterIPNS1_8F14ChunkIaEEEERKT_.exit.thread
    i64 1, label %bb.p
  ]

bb.p:                                             ; preds = %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EaNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit
  %i.cf = load i64, ptr %i.ay, align 8, !tbaa !8415
  %i.cg = inttoptr i64 %i.cf to ptr
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !16
  %i.ci = icmp eq i8 %i.cc, %i.ch
  br i1 %i.ci, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE4findIaEENS1_11F14ItemIterIPNS1_8F14ChunkIaEEEERKT_.exit.thread78, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE4findIaEENS1_11F14ItemIterIPNS1_8F14ChunkIaEEEERKT_.exit.thread

bb.q:                                             ; preds = %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EaNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit
  %i.cj = sext i8 %i.cc to i64                    ; 2 uses
  %i.ck = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.cj) ; 2 uses
  %i.cl = lshr i64 %i.ck, 24
  %i.cm = or i64 %i.cl, 128                       ; 2 uses
  %i.cn = add nsw i64 %i.ck, %i.cj
  %i.co = shl nuw nsw i64 %i.cm, 1
  %i.cp = or disjoint i64 %i.co, 1
  %i.cq = trunc nuw i64 %i.cm to i8
  %i.cr = insertelement <16 x i8> poison, i8 %i.cq, i64 0
  %i.cs = shufflevector <16 x i8> %i.cr, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ct = and i64 %i.cd, 255                      ; 2 uses
  %i.cu = shl nuw i64 1, %i.ct
  %i.cv = load ptr, ptr %i.ak, align 8, !tbaa !8337
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.u
  %.0.i.i105 = phi i64 [ %i.cn, %bb.q ], [ %i.dp, %bb.u ] ; 2 uses
  %.022.i.i104 = phi i64 [ %i.cu, %bb.q ], [ %i.do, %bb.u ]
  %i.cw = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i105, i64 range(i64 0, 256) %i.ct)
  %i.cx = getelementptr inbounds nuw [32 x i8], ptr %i.cv, i64 %i.cw ; 3 uses
  %i.cy = load <16 x i8>, ptr %i.cx, align 16     ; 2 uses
  %i.cz = icmp eq <16 x i8> %i.cy, %i.cs
  %i.da = bitcast <16 x i1> %i.cz to i16
  %i.db = and i16 %i.da, 16383
  %i.dc = zext nneg i16 %i.db to i32
  %i.dd = icmp ne ptr %i.cx, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.df = extractelement <16 x i8> %i.cy, i64 15
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.s, %bb.r
  %.sroa.050.0 = phi i32 [ %i.dc, %bb.r ], [ %i.di, %bb.s ] ; 4 uses
  %.not = icmp eq i32 %.sroa.050.0, 0
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.critedge.i.i
  %i.dg = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.050.0, i1 true)
  %i.dh = add nsw i32 %.sroa.050.0, -1
  %i.di = and i32 %i.dh, %.sroa.050.0
  %i.dj = zext nneg i32 %i.dg to i64
  call void @llvm.assume(i1 %i.dd)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !16
  %i.dm = icmp eq i8 %i.cc, %i.dl
  br i1 %i.dm, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE4findIaEENS1_11F14ItemIterIPNS1_8F14ChunkIaEEEERKT_.exit.thread78, label %.critedge.i.i, !prof !232, !llvm.loop !8409

bb.t:                                             ; preds = %.critedge.i.i
  %i.dn = icmp eq i8 %i.df, 0
  br i1 %i.dn, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE4findIaEENS1_11F14ItemIterIPNS1_8F14ChunkIaEEEERKT_.exit.thread, label %bb.u, !prof !232

bb.u:                                             ; preds = %bb.t
  %i.do = add i64 %.022.i.i104, -1                ; 2 uses
  %i.dp = add i64 %i.cp, %.0.i.i105
  %.not.i.i = icmp eq i64 %i.do, 0
  br i1 %.not.i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE4findIaEENS1_11F14ItemIterIPNS1_8F14ChunkIaEEEERKT_.exit.thread, label %bb.r, !llvm.loop !8410

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE4findIaEENS1_11F14ItemIterIPNS1_8F14ChunkIaEEEERKT_.exit.thread78: ; preds = %bb.s, %bb.p
  %i.dq = load ptr, ptr %i.au, align 8, !tbaa !562, !nonnull !57, !align !179 ; 5 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !735 ; 4 uses
  %.not.i.i.i25 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i25, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread, label %bb.v

bb.v:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE4findIaEENS1_11F14ItemIterIPNS1_8F14ChunkIaEEEERKT_.exit.thread78
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 58
  %i.du = load i8, ptr %i.dt, align 2, !tbaa !458, !range !56, !noundef !57
  %i.dv = trunc nuw i8 %i.du to i1
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dq, i64 57
  %i.dx = load i8, ptr %i.dw, align 1, !range !56
  %i.dy = trunc nuw i8 %i.dx to i1
  %or.cond.i.i.i = select i1 %i.dv, i1 true, i1 %i.dy
  br i1 %or.cond.i.i.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dz = lshr i64 %indvars.iv, 6
  %i.ea = and i64 %i.dz, 67108863
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.ea
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !117
  %i.ed = and i64 %indvars.iv, 63
  %i.ee = shl nuw i64 1, %i.ed
  %i.ef = and i64 %i.ec, %i.ee
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit

bb.x:                                             ; preds = %bb.v
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dq, i64 59
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !459, !range !56, !noundef !57
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ej = load i64, ptr %i.ds, align 8, !tbaa !117
  %i.ek = and i64 %i.ej, 1
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit

bb.z:                                             ; preds = %bb.x
  %i.el = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !461
  %i.en = shl nsw i64 %indvars.iv, 2
  %i.eo = getelementptr inbounds i8, ptr %i.em, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !3
  %i.eq = zext i32 %i.ep to i64                   ; 2 uses
  %i.er = lshr i64 %i.eq, 6
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.er
  %i.et = load i64, ptr %i.es, align 8, !tbaa !117
  %i.eu = and i64 %i.eq, 63
  %i.ev = shl nuw i64 1, %i.eu
  %i.ew = and i64 %i.ev, %i.et
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit: ; preds = %bb.w, %bb.y, %bb.z
  %.0.i.i.i.in = phi i64 [ %i.ef, %bb.w ], [ %i.ek, %bb.y ], [ %i.ew, %bb.z ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %bb.aa, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread

bb.aa:                                            ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit
  %i.ex = call noundef nonnull align 1 dereferenceable(1) ptr @_ZN8facebook5velox4exec9MapWriterIaNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
  store i8 %i.cc, ptr %i.ex, align 1, !tbaa !16
  br label %bb.ad

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread: ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE4findIaEENS1_11F14ItemIterIPNS1_8F14ChunkIaEEEERKT_.exit.thread78, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit
  %i.ey = load i32, ptr %i.az, align 8, !tbaa !8443, !noalias !8516 ; 2 uses
  %i.ez = add nsw i32 %i.ey, 1                    ; 2 uses
  %i.fa = load i8, ptr %i.ba, align 1, !tbaa !8455, !range !56, !noalias !8516, !noundef !57
  %i.fb = trunc nuw i8 %i.fa to i1
  br i1 %i.fb, label %bb.ab, label %_ZN8facebook5velox4exec9MapWriterIaNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i

bb.ab:                                            ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread
  %i.fc = load ptr, ptr %i.bb, align 8, !tbaa !8456, !noalias !8516 ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !46, !noalias !8516
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !noalias !8516
  call void %i.ff(ptr noundef nonnull align 8 dereferenceable(96) %i.fc, i1 noundef zeroext true), !noalias !8516, !inline_history !8519
  store i8 0, ptr %i.ba, align 1, !tbaa !8455, !noalias !8516
  br label %_ZN8facebook5velox4exec9MapWriterIaNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i

_ZN8facebook5velox4exec9MapWriterIaNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i: ; preds = %bb.ab, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread
  %i.fg = load i32, ptr %i.bc, align 4, !tbaa !8444, !noalias !8516 ; 2 uses
  %i.fh = add nsw i32 %i.fg, %i.ez                ; 2 uses
  %i.fi = load i32, ptr %i.bd, align 8, !tbaa !8467, !noalias !8516
  %i.fj = icmp sgt i32 %i.fh, %i.fi
  br i1 %i.fj, label %bb.ac, label %_ZN8facebook5velox4exec9MapWriterIaNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE8add_itemEv.exit, !prof !15

bb.ac:                                            ; preds = %_ZN8facebook5velox4exec9MapWriterIaNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i
  %i.fk = sitofp i32 %i.fh to double
end_hunk_1
begin_hunk_2_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS3_10VectorExecEsEESB_NS0_3MapIsNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSI_NS0_5ArrayIsEEEEEJSI_SL_EEEE8applyUdfIZNKSO_7iterateIJNS3_12VectorReaderISI_EENSR_ISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSV_SZ_EUlSZ_E_ZNKSP_IS14_EEvSV_SZ_EUlSZ_E0_EEvRKS1_SZ_S11_EUlSZ_E_EEvSZ_:bb.a
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !8780 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !790
  %i.fe = load ptr, ptr %i.fb, align 8, !tbaa !46
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 144
  %i.fg = load ptr, ptr %i.ff, align 8
  invoke void %i.fg(ptr noundef nonnull align 8 dereferenceable(94) %i.fb, i32 noundef %i.fd, i1 noundef zeroext true)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecEsEES7_NS0_3MapIsNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSE_NS0_5ArrayIsEEEEEJSE_SH_EEEE8applyUdfIZNKSK_7iterateIJNS1_12VectorReaderISE_EENSN_ISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_ENKUlSV_E0_clIiEEDaSV_.exit unwind label %.loopexit43, !inline_history !8790

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecEsEES7_NS0_3MapIsNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSE_NS0_5ArrayIsEEEEEJSE_SH_EEEE8applyUdfIZNKSK_7iterateIJNS1_12VectorReaderISE_EENSN_ISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_ENKUlSV_E0_clIiEEDaSV_.exit: ; preds = %.noexc33
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %6) #35
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.aj, i32 noundef %i.av, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecEsEES7_NS0_3MapIsNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSE_NS0_5ArrayIsEEEEEJSE_SH_EEEE8applyUdfIZNKSK_7iterateIJNS1_12VectorReaderISE_EENSN_ISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_ENKUlSV_E0_clIiEEDaSV_.exit
  %i.fh = load ptr, ptr %6, align 8, !tbaa !410
  %.not.i36 = icmp eq ptr %i.fh, null
  br i1 %.not.i36, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #35
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecEsEES9_NS0_3MapIsNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSG_NS0_5ArrayIsEEEEEJSG_SJ_EEEE8applyUdfIZNKSM_7iterateIJNS1_12VectorReaderISG_EENSP_ISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvST_SX_EUlSX_E_ZNKSN_IS12_EEvST_SX_EUlSX_E0_EEvRKNS0_17SelectivityVectorESX_SZ_ENKUlSX_E_clIiEEDaSX_.exit

bb.af:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecEsEES7_NS0_3MapIsNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSE_NS0_5ArrayIsEEEEEJSE_SH_EEEE8applyUdfIZNKSK_7iterateIJNS1_12VectorReaderISE_EENSN_ISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_ENKUlSV_E0_clIiEEDaSV_.exit
  %i.fi = landingpad { ptr, i32 }
          cleanup
  %i.fj = load ptr, ptr %6, align 8, !tbaa !410
  %.not.i38 = icmp eq ptr %i.fj, null
  br i1 %.not.i38, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #35
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39: ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit43, %.loopexit.split-lp, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39
  %.pn16.i = phi { ptr, i32 } [ %i.fi, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39 ], [ %lpad.loopexit, %.loopexit43 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @__cxa_end_catch()
          to label %.loopexit41 unwind label %bb.ai

.loopexit41:                                      ; preds = %bb.v, %bb.ah, %bb.ac
  %.merged.i = phi { ptr, i32 } [ %.pn.i, %bb.ac ], [ %.pn16.i, %bb.ah ], [ %eh.lpad-body, %bb.v ]
  resume { ptr, i32 } %.merged.i

bb.ai:                                            ; preds = %bb.ah, %bb.ac
  %i.fk = landingpad { ptr, i32 }
          catch ptr null
  %i.fl = extractvalue { ptr, i32 } %i.fk, 0
  call void @__clang_call_terminate(ptr %i.fl) #43
  unreachable

bb.aj:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecEsEES9_NS0_3MapIsNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSG_NS0_5ArrayIsEEEEEJSG_SJ_EEEE8applyUdfIZNKSM_7iterateIJNS1_12VectorReaderISG_EENSP_ISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvST_SX_EUlSX_E_ZNKSN_IS12_EEvST_SX_EUlSX_E0_EEvRKNS0_17SelectivityVectorESX_SZ_ENKUlSX_E_clIiEEDaSX_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit26, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit40, label %bb.i, !llvm.loop !8838

bb.ak:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.fm = load ptr, ptr %0, align 8, !tbaa !421
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !432
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !433
  tail call void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS3_10VectorExecEsEESB_NS0_3MapIsNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSI_NS0_5ArrayIsEEEEEJSI_SL_EEEE8applyUdfIZNKSO_7iterateIJNS3_12VectorReaderISI_EENSR_ISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSV_SZ_EUlSZ_E_ZNKSP_IS14_EEvSV_SZ_EUlSZ_E0_EEvRKNS0_17SelectivityVectorESZ_S11_EUlSZ_E_EEvPKmiibSZ_(ptr noundef %i.fm, i32 noundef %i.fo, i32 noundef %i.fq, i1 noundef zeroext true, ptr noundef nonnull byval(%class.anon.2386) align 8 %1)
  br label %.loopexit40

.loopexit40:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecEsEES9_NS0_3MapIsNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSG_NS0_5ArrayIsEEEEEJSG_SJ_EEEE8applyUdfIZNKSM_7iterateIJNS1_12VectorReaderISG_EENSP_ISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvST_SX_EUlSX_E_ZNKSN_IS12_EEvST_SX_EUlSX_E0_EEvRKNS0_17SelectivityVectorESX_SZ_ENKUlSX_E_clIiEEDaSX_.exit, %bb.h, %bb.ak
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox9functions26MapSubsetPrimitiveFunctionINS0_4exec10VectorExecEsE4callERNS3_9MapWriterIsNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEERKNS3_7MapViewILb1EsSA_EERKNS3_9ArrayViewILb1EsEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #23 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.facebook::velox::exec::GenericView", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8715
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %0, align 8, !tbaa !8703, !range !56, !noundef !57
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8668 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 15
  %i.i = load i8, ptr %i.h, align 1, !tbaa !473
  %i.j = icmp eq i8 %i.i, -1
  br i1 %i.j, label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIsvvvvEEE5clearEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !476  ; 4 uses
  %i.m = and i64 %i.l, 252
  %.not.i.i.i = icmp eq i64 %i.m, 0               ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 14
  %i.o = load i8, ptr %i.n, align 1, !tbaa !16
  %i.p = and i8 %i.o, 15
  %i.q = icmp ult i64 %i.l, 256
  br i1 %i.q, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.e
  %.pre.i.i.i = and i64 %i.l, 255
  br label %bb.g

bb.f:                                             ; preds = %.preheader.i.i.i
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !8668 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 14
  store i8 %i.p, ptr %i.s, align 2, !tbaa !8746
  br label %bb.g

.preheader.i.i.i:                                 ; preds = %bb.e, %.preheader.i.i.i
  %.017.i.i.i = phi i64 [ %i.v, %.preheader.i.i.i ], [ 0, %bb.e ] ; 2 uses
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !8668
  %i.u = getelementptr inbounds nuw [48 x i8], ptr %i.t, i64 %.017.i.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.u, i8 0, i64 16, i1 false)
  %i.v = add nuw i64 %.017.i.i.i, 1               ; 2 uses
  %i.w = load i64, ptr %i.k, align 8, !tbaa !476
  %i.x = and i64 %i.w, 255                        ; 2 uses
  %.0.highbits.i.i.i = lshr i64 %i.v, %i.x
  %i.y = icmp eq i64 %.0.highbits.i.i.i, 0
  br i1 %i.y, label %.preheader.i.i.i, label %bb.f, !llvm.loop !8839

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.x, %bb.f ] ; 2 uses
  %i.z = phi ptr [ %i.g, %._crit_edge.i.i.i ], [ %i.r, %bb.f ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.aa, align 8, !tbaa !117
  store i64 %.pre-phi.i.i.i, ptr %i.k, align 8, !tbaa !476
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %i.ab = phi i64 [ %.pre-phi.i.i.i, %bb.g ], [ %i.l, %bb.d ] ; 2 uses
  %i.ac = phi ptr [ %i.z, %bb.g ], [ %i.g, %bb.d ] ; 2 uses
  br i1 %.not.i.i.i, label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIsvvvvEEE5clearEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 14
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !16
  %i.af = icmp eq i64 %i.ab, 0
  %i.ag = shl i8 %i.ae, 1
  %i.ah = and i8 %i.ag, 30
  %narrow.i.i.i = add nuw nsw i8 %i.ah, 16
  %i.ai = zext nneg i8 %narrow.i.i.i to i64
  %i.aj = shl i64 48, %i.ab
  %.0.i.i.i.i = select i1 %i.af, i64 %i.ai, i64 %i.aj
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.f, align 8, !tbaa !8668
  store i64 0, ptr %i.k, align 8, !tbaa !476
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %.0.i.i.i.i) #35
  br label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIsvvvvEEE5clearEv.exit

_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIsvvvvEEE5clearEv.exit: ; preds = %bb.c, %bb.h, %bb.i
  tail call void @_ZN8facebook5velox9functions26MapSubsetPrimitiveFunctionINS0_4exec10VectorExecEsE20initializeSearchKeysERKNS3_9ArrayViewILb1EsEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIsvvvvEEE5clearEv.exit, %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !476 ; 2 uses
  %i.an = icmp ult i64 %i.am, 256
  br i1 %i.an, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !8686, !noalias !8840 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !8687, !noalias !8840 ; 2 uses
  %i.as = load ptr, ptr %2, align 8, !tbaa !8683, !noalias !8840
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !8685, !noalias !8840 ; 3 uses
  %i.av = add nsw i32 %i.ar, %i.ap
  %i.aw = icmp eq i32 %i.ar, 0
  br i1 %i.aw, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.ax = lshr i64 %i.am, 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 37 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, <2 x i64> <i64 8, i64 56>
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bi = sext i32 %i.ap to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE4findIsEENS1_11F14ItemIterIPNS1_8F14ChunkIsEEEERKT_.exit.thread
  %indvars.iv = phi i64 [ %i.bi, %.lr.ph ], [ %indvars.iv.next, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE4findIsEENS1_11F14ItemIterIPNS1_8F14ChunkIsEEEERKT_.exit.thread ] ; 6 uses
  %.0108 = phi i64 [ %i.ax, %.lr.ph ], [ %.1.ph, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE4findIsEENS1_11F14ItemIterIPNS1_8F14ChunkIsEEEERKT_.exit.thread ] ; 5 uses
  %i.bj = load ptr, ptr %i.as, align 8, !tbaa !8726, !noalias !8843, !nonnull !57, !align !179 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !728, !noalias !8843
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 58
  %i.bn = load i8, ptr %i.bm, align 2, !tbaa !458, !range !56, !noalias !8843, !noundef !57
  %i.bo = trunc nuw i8 %i.bn to i1
  %i.bp = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  br i1 %i.bo, label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EsNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 59
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !459, !range !56, !noalias !8843, !noundef !57
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !460, !noalias !8843
  br label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EsNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit

bb.o:                                             ; preds = %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !461, !noalias !8843
  %i.bx = shl nsw i64 %indvars.iv, 2
  %i.by = getelementptr inbounds i8, ptr %i.bw, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !3, !noalias !8843
  br label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EsNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit

_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EsNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit: ; preds = %bb.l, %bb.n, %bb.o
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bz, %bb.o ], [ %i.bu, %bb.n ], [ %i.bp, %bb.l ]
  %i.ca = sext i32 %.0.i.i.i.i.i.i.i to i64
  %i.cb = getelementptr inbounds [2 x i8], ptr %i.bl, i64 %i.ca
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !2235, !noalias !8843 ; 5 uses
  %i.cd = load i64, ptr %i.al, align 8, !tbaa !476 ; 2 uses
  %i.ce = lshr i64 %i.cd, 8
  switch i64 %i.ce, label %bb.q [
    i64 0, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE4findIsEENS1_11F14ItemIterIPNS1_8F14ChunkIsEEEERKT_.exit.thread
    i64 1, label %bb.p
  ]

bb.p:                                             ; preds = %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EsNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit
  %i.cf = load i64, ptr %i.ay, align 8, !tbaa !8747
  %i.cg = and i64 %i.cf, -2
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !2235
  %i.cj = icmp eq i16 %i.cc, %i.ci
  br i1 %i.cj, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE4findIsEENS1_11F14ItemIterIPNS1_8F14ChunkIsEEEERKT_.exit.thread78, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE4findIsEENS1_11F14ItemIterIPNS1_8F14ChunkIsEEEERKT_.exit.thread

bb.q:                                             ; preds = %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EsNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit
  %i.ck = sext i16 %i.cc to i64                   ; 2 uses
  %i.cl = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.ck) ; 2 uses
  %i.cm = lshr i64 %i.cl, 24
  %i.cn = or i64 %i.cm, 128                       ; 2 uses
  %i.co = add nsw i64 %i.cl, %i.ck
  %i.cp = shl nuw nsw i64 %i.cn, 1
  %i.cq = or disjoint i64 %i.cp, 1
  %i.cr = trunc nuw i64 %i.cn to i8
  %i.cs = insertelement <16 x i8> poison, i8 %i.cr, i64 0
  %i.ct = shufflevector <16 x i8> %i.cs, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.cu = and i64 %i.cd, 255                      ; 2 uses
  %i.cv = shl nuw i64 1, %i.cu
  %i.cw = load ptr, ptr %i.ak, align 8, !tbaa !8668
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.u
  %.0.i.i105 = phi i64 [ %i.co, %bb.q ], [ %i.dq, %bb.u ] ; 2 uses
  %.022.i.i104 = phi i64 [ %i.cv, %bb.q ], [ %i.dp, %bb.u ]
  %i.cx = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i105, i64 range(i64 0, 256) %i.cu)
  %i.cy = getelementptr inbounds nuw [48 x i8], ptr %i.cw, i64 %i.cx ; 3 uses
  %i.cz = load <16 x i8>, ptr %i.cy, align 16     ; 2 uses
  %i.da = icmp eq <16 x i8> %i.cz, %i.ct
  %i.db = bitcast <16 x i1> %i.da to i16
  %i.dc = and i16 %i.db, 16383
  %i.dd = zext nneg i16 %i.dc to i32
  %i.de = icmp ne ptr %i.cy, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.df = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.dg = extractelement <16 x i8> %i.cz, i64 15
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.s, %bb.r
  %.sroa.050.0 = phi i32 [ %i.dd, %bb.r ], [ %i.dj, %bb.s ] ; 4 uses
  %.not = icmp eq i32 %.sroa.050.0, 0
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.critedge.i.i
  %i.dh = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.050.0, i1 true)
  %i.di = add nsw i32 %.sroa.050.0, -1
  %i.dj = and i32 %i.di, %.sroa.050.0
  %i.dk = zext nneg i32 %i.dh to i64
  call void @llvm.assume(i1 %i.de)
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.df, i64 %i.dk
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !2235
  %i.dn = icmp eq i16 %i.cc, %i.dm
  br i1 %i.dn, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE4findIsEENS1_11F14ItemIterIPNS1_8F14ChunkIsEEEERKT_.exit.thread78, label %.critedge.i.i, !prof !232, !llvm.loop !8740

bb.t:                                             ; preds = %.critedge.i.i
  %i.do = icmp eq i8 %i.dg, 0
  br i1 %i.do, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE4findIsEENS1_11F14ItemIterIPNS1_8F14ChunkIsEEEERKT_.exit.thread, label %bb.u, !prof !232

bb.u:                                             ; preds = %bb.t
  %i.dp = add i64 %.022.i.i104, -1                ; 2 uses
  %i.dq = add i64 %i.cq, %.0.i.i105
  %.not.i.i = icmp eq i64 %i.dp, 0
  br i1 %.not.i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE4findIsEENS1_11F14ItemIterIPNS1_8F14ChunkIsEEEERKT_.exit.thread, label %bb.r, !llvm.loop !8741

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE4findIsEENS1_11F14ItemIterIPNS1_8F14ChunkIsEEEERKT_.exit.thread78: ; preds = %bb.s, %bb.p
  %i.dr = load ptr, ptr %i.au, align 8, !tbaa !562, !nonnull !57, !align !179 ; 5 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !735 ; 4 uses
  %.not.i.i.i25 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i25, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread, label %bb.v

bb.v:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE4findIsEENS1_11F14ItemIterIPNS1_8F14ChunkIsEEEERKT_.exit.thread78
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 58
  %i.dv = load i8, ptr %i.du, align 2, !tbaa !458, !range !56, !noundef !57
  %i.dw = trunc nuw i8 %i.dv to i1
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dr, i64 57
  %i.dy = load i8, ptr %i.dx, align 1, !range !56
  %i.dz = trunc nuw i8 %i.dy to i1
  %or.cond.i.i.i = select i1 %i.dw, i1 true, i1 %i.dz
  br i1 %or.cond.i.i.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ea = lshr i64 %indvars.iv, 6
  %i.eb = and i64 %i.ea, 67108863
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.eb
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !117
  %i.ee = and i64 %indvars.iv, 63
  %i.ef = shl nuw i64 1, %i.ee
  %i.eg = and i64 %i.ed, %i.ef
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit

bb.x:                                             ; preds = %bb.v
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dr, i64 59
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !459, !range !56, !noundef !57
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ek = load i64, ptr %i.dt, align 8, !tbaa !117
  %i.el = and i64 %i.ek, 1
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit

bb.z:                                             ; preds = %bb.x
  %i.em = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !461
  %i.eo = shl nsw i64 %indvars.iv, 2
  %i.ep = getelementptr inbounds i8, ptr %i.en, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !3
  %i.er = zext i32 %i.eq to i64                   ; 2 uses
  %i.es = lshr i64 %i.er, 6
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.es
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !117
  %i.ev = and i64 %i.er, 63
  %i.ew = shl nuw i64 1, %i.ev
  %i.ex = and i64 %i.ew, %i.eu
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit: ; preds = %bb.w, %bb.y, %bb.z
  %.0.i.i.i.in = phi i64 [ %i.eg, %bb.w ], [ %i.el, %bb.y ], [ %i.ex, %bb.z ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %bb.aa, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread

bb.aa:                                            ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit
  %i.ey = call noundef nonnull align 2 dereferenceable(2) ptr @_ZN8facebook5velox4exec9MapWriterIsNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
  store i16 %i.cc, ptr %i.ey, align 2, !tbaa !2235
  br label %bb.ad

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread: ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE4findIsEENS1_11F14ItemIterIPNS1_8F14ChunkIsEEEERKT_.exit.thread78, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit
  %i.ez = load i32, ptr %i.az, align 8, !tbaa !8775, !noalias !8848 ; 2 uses
  %i.fa = add nsw i32 %i.ez, 1                    ; 2 uses
  %i.fb = load i8, ptr %i.ba, align 1, !tbaa !8787, !range !56, !noalias !8848, !noundef !57
  %i.fc = trunc nuw i8 %i.fb to i1
  br i1 %i.fc, label %bb.ab, label %_ZN8facebook5velox4exec9MapWriterIsNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i

bb.ab:                                            ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread
  %i.fd = load ptr, ptr %i.bb, align 8, !tbaa !8788, !noalias !8848 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !46, !noalias !8848
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !noalias !8848
  call void %i.fg(ptr noundef nonnull align 8 dereferenceable(96) %i.fd, i1 noundef zeroext true), !noalias !8848, !inline_history !8851
  store i8 0, ptr %i.ba, align 1, !tbaa !8787, !noalias !8848
  br label %_ZN8facebook5velox4exec9MapWriterIsNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i

_ZN8facebook5velox4exec9MapWriterIsNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i: ; preds = %bb.ab, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread
  %i.fh = load i32, ptr %i.bc, align 4, !tbaa !8776, !noalias !8848 ; 2 uses
  %i.fi = add nsw i32 %i.fh, %i.fa                ; 2 uses
  %i.fj = load i32, ptr %i.bd, align 8, !tbaa !8799, !noalias !8848
  %i.fk = icmp sgt i32 %i.fi, %i.fj
  br i1 %i.fk, label %bb.ac, label %_ZN8facebook5velox4exec9MapWriterIsNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE8add_itemEv.exit, !prof !15

bb.ac:                                            ; preds = %_ZN8facebook5velox4exec9MapWriterIsNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i
end_hunk_2
begin_hunk_3_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS3_10VectorExecEiEESB_NS0_3MapIiNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSI_NS0_5ArrayIiEEEEEJSI_SL_EEEE8applyUdfIZNKSO_7iterateIJNS3_12VectorReaderISI_EENSR_ISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSV_SZ_EUlSZ_E_ZNKSP_IS14_EEvSV_SZ_EUlSZ_E0_EEvRKS1_SZ_S11_EUlSZ_E_EEvSZ_:bb.a
          cleanup
  br label %bb.ah

.noexc33:                                         ; preds = %tailrecurse.i.i.i.i.3
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ec, i64 80
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !9112 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !790
  %i.fe = load ptr, ptr %i.fb, align 8, !tbaa !46
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 144
  %i.fg = load ptr, ptr %i.ff, align 8
  invoke void %i.fg(ptr noundef nonnull align 8 dereferenceable(94) %i.fb, i32 noundef %i.fd, i1 noundef zeroext true)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecEiEES7_NS0_3MapIiNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSE_NS0_5ArrayIiEEEEEJSE_SH_EEEE8applyUdfIZNKSK_7iterateIJNS1_12VectorReaderISE_EENSN_ISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_ENKUlSV_E0_clIiEEDaSV_.exit unwind label %.loopexit43, !inline_history !9122

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecEiEES7_NS0_3MapIiNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSE_NS0_5ArrayIiEEEEEJSE_SH_EEEE8applyUdfIZNKSK_7iterateIJNS1_12VectorReaderISE_EENSN_ISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_ENKUlSV_E0_clIiEEDaSV_.exit: ; preds = %.noexc33
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %6) #35
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.aj, i32 noundef %i.av, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecEiEES7_NS0_3MapIiNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSE_NS0_5ArrayIiEEEEEJSE_SH_EEEE8applyUdfIZNKSK_7iterateIJNS1_12VectorReaderISE_EENSN_ISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_ENKUlSV_E0_clIiEEDaSV_.exit
  %i.fh = load ptr, ptr %6, align 8, !tbaa !410
  %.not.i36 = icmp eq ptr %i.fh, null
  br i1 %.not.i36, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #35
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecEiEES9_NS0_3MapIiNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSG_NS0_5ArrayIiEEEEEJSG_SJ_EEEE8applyUdfIZNKSM_7iterateIJNS1_12VectorReaderISG_EENSP_ISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvST_SX_EUlSX_E_ZNKSN_IS12_EEvST_SX_EUlSX_E0_EEvRKNS0_17SelectivityVectorESX_SZ_ENKUlSX_E_clIiEEDaSX_.exit

bb.af:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecEiEES7_NS0_3MapIiNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSE_NS0_5ArrayIiEEEEEJSE_SH_EEEE8applyUdfIZNKSK_7iterateIJNS1_12VectorReaderISE_EENSN_ISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_ENKUlSV_E0_clIiEEDaSV_.exit
  %i.fi = landingpad { ptr, i32 }
          cleanup
  %i.fj = load ptr, ptr %6, align 8, !tbaa !410
  %.not.i38 = icmp eq ptr %i.fj, null
  br i1 %.not.i38, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #35
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39: ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit43, %.loopexit.split-lp, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39
  %.pn16.i = phi { ptr, i32 } [ %i.fi, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39 ], [ %lpad.loopexit, %.loopexit43 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @__cxa_end_catch()
          to label %.loopexit41 unwind label %bb.ai

.loopexit41:                                      ; preds = %bb.v, %bb.ah, %bb.ac
  %.merged.i = phi { ptr, i32 } [ %.pn.i, %bb.ac ], [ %.pn16.i, %bb.ah ], [ %eh.lpad-body, %bb.v ]
  resume { ptr, i32 } %.merged.i

bb.ai:                                            ; preds = %bb.ah, %bb.ac
  %i.fk = landingpad { ptr, i32 }
          catch ptr null
  %i.fl = extractvalue { ptr, i32 } %i.fk, 0
  call void @__clang_call_terminate(ptr %i.fl) #43
  unreachable

bb.aj:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecEiEES9_NS0_3MapIiNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSG_NS0_5ArrayIiEEEEEJSG_SJ_EEEE8applyUdfIZNKSM_7iterateIJNS1_12VectorReaderISG_EENSP_ISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvST_SX_EUlSX_E_ZNKSN_IS12_EEvST_SX_EUlSX_E0_EEvRKNS0_17SelectivityVectorESX_SZ_ENKUlSX_E_clIiEEDaSX_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit26, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit40, label %bb.i, !llvm.loop !9170

bb.ak:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.fm = load ptr, ptr %0, align 8, !tbaa !421
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !432
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !433
  tail call void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS3_10VectorExecEiEESB_NS0_3MapIiNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSI_NS0_5ArrayIiEEEEEJSI_SL_EEEE8applyUdfIZNKSO_7iterateIJNS3_12VectorReaderISI_EENSR_ISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSV_SZ_EUlSZ_E_ZNKSP_IS14_EEvSV_SZ_EUlSZ_E0_EEvRKNS0_17SelectivityVectorESZ_S11_EUlSZ_E_EEvPKmiibSZ_(ptr noundef %i.fm, i32 noundef %i.fo, i32 noundef %i.fq, i1 noundef zeroext true, ptr noundef nonnull byval(%class.anon.2519) align 8 %1)
  br label %.loopexit40

.loopexit40:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecEiEES9_NS0_3MapIiNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSG_NS0_5ArrayIiEEEEEJSG_SJ_EEEE8applyUdfIZNKSM_7iterateIJNS1_12VectorReaderISG_EENSP_ISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvST_SX_EUlSX_E_ZNKSN_IS12_EEvST_SX_EUlSX_E0_EEvRKNS0_17SelectivityVectorESX_SZ_ENKUlSX_E_clIiEEDaSX_.exit, %bb.h, %bb.ak
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox9functions26MapSubsetPrimitiveFunctionINS0_4exec10VectorExecEiE4callERNS3_9MapWriterIiNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEERKNS3_7MapViewILb1EiSA_EERKNS3_9ArrayViewILb1EiEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #23 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.facebook::velox::exec::GenericView", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !9047
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %0, align 8, !tbaa !9035, !range !56, !noundef !57
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !9000 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 15
  %i.i = load i8, ptr %i.h, align 1, !tbaa !473
  %i.j = icmp eq i8 %i.i, -1
  br i1 %i.j, label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIivvvvEEE5clearEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !476  ; 4 uses
  %i.m = and i64 %i.l, 252
  %.not.i.i.i = icmp eq i64 %i.m, 0               ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %.0.copyload.i.i.i.i.i = load i16, ptr %i.n, align 1
  %i.o = icmp ult i64 %i.l, 256
  br i1 %i.o, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %bb.g

bb.f:                                             ; preds = %.preheader.i.i.i
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !9000
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i16 %.0.copyload.i.i.i.i.i, ptr %i.q, align 1
  %.pre.i.i.i = load i64, ptr %i.k, align 8, !tbaa !476
  br label %bb.g

.preheader.i.i.i:                                 ; preds = %bb.e, %.preheader.i.i.i
  %.018.i.i.i = phi i64 [ %i.t, %.preheader.i.i.i ], [ 0, %bb.e ] ; 2 uses
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !9000
  %i.s = getelementptr inbounds nuw [64 x i8], ptr %i.r, i64 %.018.i.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.s, i8 0, i64 16, i1 false)
  %i.t = add nuw i64 %.018.i.i.i, 1               ; 2 uses
  %i.u = load i64, ptr %i.k, align 8, !tbaa !476
  %i.v = and i64 %i.u, 255
  %.0.highbits.i.i.i = lshr i64 %i.t, %i.v
  %i.w = icmp eq i64 %.0.highbits.i.i.i, 0
  br i1 %i.w, label %.preheader.i.i.i, label %bb.f, !llvm.loop !9171

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = phi i64 [ %.pre.i.i.i, %bb.f ], [ %i.l, %bb.e ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.y, align 8, !tbaa !117
  %i.z = and i64 %i.x, 255                        ; 2 uses
  store i64 %i.z, ptr %i.k, align 8, !tbaa !476
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %i.aa = phi i64 [ %i.z, %bb.g ], [ %i.l, %bb.d ] ; 2 uses
  br i1 %.not.i.i.i, label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIivvvvEEE5clearEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = load ptr, ptr %i.f, align 8, !tbaa !9000 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %.0.copyload.i17.i.i.i = load i16, ptr %i.ac, align 1
  %i.ad = zext i16 %.0.copyload.i17.i.i.i to i64
  %i.ae = icmp eq i64 %i.aa, 0
  %i.af = shl nuw nsw i64 %i.ad, 2
  %i.ag = add nuw nsw i64 %i.af, 16
  %i.ah = shl i64 64, %i.aa
  %.0.i.i.i.i = select i1 %i.ae, i64 %i.ag, i64 %i.ah
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.f, align 8, !tbaa !9000
  store i64 0, ptr %i.k, align 8, !tbaa !476
  tail call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %.0.i.i.i.i) #35
  br label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIivvvvEEE5clearEv.exit

_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIivvvvEEE5clearEv.exit: ; preds = %bb.c, %bb.h, %bb.i
  tail call void @_ZN8facebook5velox9functions26MapSubsetPrimitiveFunctionINS0_4exec10VectorExecEiE20initializeSearchKeysERKNS3_9ArrayViewILb1EiEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIivvvvEEE5clearEv.exit, %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !476 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 256
  br i1 %i.al, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !9018, !noalias !9172 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !9019, !noalias !9172 ; 2 uses
  %i.aq = load ptr, ptr %2, align 8, !tbaa !9015, !noalias !9172
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !9017, !noalias !9172 ; 3 uses
  %i.at = add nsw i32 %i.ap, %i.an
  %i.au = icmp eq i32 %i.ap, 0
  br i1 %i.au, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.av = lshr i64 %i.ak, 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 37 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.as, <2 x i64> <i64 8, i64 56>
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bg = sext i32 %i.an to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE4findIiEENS1_11F14ItemIterIPNS1_8F14ChunkIiEEEERKT_.exit.thread
  %indvars.iv = phi i64 [ %i.bg, %.lr.ph ], [ %indvars.iv.next, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE4findIiEENS1_11F14ItemIterIPNS1_8F14ChunkIiEEEERKT_.exit.thread ] ; 6 uses
  %.0108 = phi i64 [ %i.av, %.lr.ph ], [ %.1.ph, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE4findIiEENS1_11F14ItemIterIPNS1_8F14ChunkIiEEEERKT_.exit.thread ] ; 5 uses
  %i.bh = load ptr, ptr %i.aq, align 8, !tbaa !9058, !noalias !9175, !nonnull !57, !align !179 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !728, !noalias !9175
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 58
  %i.bl = load i8, ptr %i.bk, align 2, !tbaa !458, !range !56, !noalias !9175, !noundef !57
  %i.bm = trunc nuw i8 %i.bl to i1
  %i.bn = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  br i1 %i.bm, label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EiNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 59
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !459, !range !56, !noalias !9175, !noundef !57
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !460, !noalias !9175
  br label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EiNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit

bb.o:                                             ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !461, !noalias !9175
  %i.bv = shl nsw i64 %indvars.iv, 2
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !3, !noalias !9175
  br label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EiNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit

_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EiNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit: ; preds = %bb.l, %bb.n, %bb.o
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bx, %bb.o ], [ %i.bs, %bb.n ], [ %i.bn, %bb.l ]
  %i.by = sext i32 %.0.i.i.i.i.i.i.i to i64
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !3, !noalias !9175 ; 5 uses
  %i.cb = load i64, ptr %i.aj, align 8, !tbaa !476 ; 2 uses
  %i.cc = lshr i64 %i.cb, 8
  switch i64 %i.cc, label %bb.q [
    i64 0, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE4findIiEENS1_11F14ItemIterIPNS1_8F14ChunkIiEEEERKT_.exit.thread
    i64 1, label %bb.p
  ]

bb.p:                                             ; preds = %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EiNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit
  %i.cd = load i64, ptr %i.aw, align 8, !tbaa !9079
  %i.ce = and i64 %i.cd, -4
  %i.cf = inttoptr i64 %i.ce to ptr
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !3
  %i.ch = icmp eq i32 %i.ca, %i.cg
  br i1 %i.ch, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE4findIiEENS1_11F14ItemIterIPNS1_8F14ChunkIiEEEERKT_.exit.thread78, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE4findIiEENS1_11F14ItemIterIPNS1_8F14ChunkIiEEEERKT_.exit.thread

bb.q:                                             ; preds = %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EiNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit
  %i.ci = sext i32 %i.ca to i64                   ; 2 uses
  %i.cj = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.ci) ; 2 uses
  %i.ck = lshr i64 %i.cj, 24
  %i.cl = or i64 %i.ck, 128                       ; 2 uses
  %i.cm = add nsw i64 %i.cj, %i.ci
  %i.cn = shl nuw nsw i64 %i.cl, 1
  %i.co = or disjoint i64 %i.cn, 1
  %i.cp = trunc nuw i64 %i.cl to i8
  %i.cq = insertelement <16 x i8> poison, i8 %i.cp, i64 0
  %i.cr = shufflevector <16 x i8> %i.cq, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.cs = and i64 %i.cb, 255                      ; 2 uses
  %i.ct = shl nuw i64 1, %i.cs
  %i.cu = load ptr, ptr %i.ai, align 8, !tbaa !9000
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.u
  %.0.i.i105 = phi i64 [ %i.cm, %bb.q ], [ %i.do, %bb.u ] ; 2 uses
  %.022.i.i104 = phi i64 [ %i.ct, %bb.q ], [ %i.dn, %bb.u ]
  %i.cv = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i105, i64 range(i64 0, 256) %i.cs)
  %i.cw = getelementptr inbounds nuw [64 x i8], ptr %i.cu, i64 %i.cv ; 3 uses
  %i.cx = load <16 x i8>, ptr %i.cw, align 16     ; 2 uses
  %i.cy = icmp eq <16 x i8> %i.cx, %i.cr
  %i.cz = bitcast <16 x i1> %i.cy to i16
  %i.da = and i16 %i.cz, 4095
  %i.db = zext nneg i16 %i.da to i32
  %i.dc = icmp ne ptr %i.cw, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.de = extractelement <16 x i8> %i.cx, i64 15
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.s, %bb.r
  %.sroa.050.0 = phi i32 [ %i.db, %bb.r ], [ %i.dh, %bb.s ] ; 4 uses
  %.not = icmp eq i32 %.sroa.050.0, 0
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.critedge.i.i
  %i.df = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.050.0, i1 true)
  %i.dg = add nsw i32 %.sroa.050.0, -1
  %i.dh = and i32 %i.dg, %.sroa.050.0
  %i.di = zext nneg i32 %i.df to i64
  call void @llvm.assume(i1 %i.dc)
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !3
  %i.dl = icmp eq i32 %i.ca, %i.dk
  br i1 %i.dl, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE4findIiEENS1_11F14ItemIterIPNS1_8F14ChunkIiEEEERKT_.exit.thread78, label %.critedge.i.i, !prof !232, !llvm.loop !9072

bb.t:                                             ; preds = %.critedge.i.i
  %i.dm = icmp eq i8 %i.de, 0
  br i1 %i.dm, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE4findIiEENS1_11F14ItemIterIPNS1_8F14ChunkIiEEEERKT_.exit.thread, label %bb.u, !prof !232

bb.u:                                             ; preds = %bb.t
  %i.dn = add i64 %.022.i.i104, -1                ; 2 uses
  %i.do = add i64 %i.co, %.0.i.i105
  %.not.i.i = icmp eq i64 %i.dn, 0
  br i1 %.not.i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE4findIiEENS1_11F14ItemIterIPNS1_8F14ChunkIiEEEERKT_.exit.thread, label %bb.r, !llvm.loop !9073

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE4findIiEENS1_11F14ItemIterIPNS1_8F14ChunkIiEEEERKT_.exit.thread78: ; preds = %bb.s, %bb.p
  %i.dp = load ptr, ptr %i.as, align 8, !tbaa !562, !nonnull !57, !align !179 ; 5 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !735 ; 4 uses
  %.not.i.i.i25 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i25, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread, label %bb.v

bb.v:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE4findIiEENS1_11F14ItemIterIPNS1_8F14ChunkIiEEEERKT_.exit.thread78
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 58
  %i.dt = load i8, ptr %i.ds, align 2, !tbaa !458, !range !56, !noundef !57
  %i.du = trunc nuw i8 %i.dt to i1
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 57
  %i.dw = load i8, ptr %i.dv, align 1, !range !56
  %i.dx = trunc nuw i8 %i.dw to i1
  %or.cond.i.i.i = select i1 %i.du, i1 true, i1 %i.dx
  br i1 %or.cond.i.i.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dy = lshr i64 %indvars.iv, 6
  %i.dz = and i64 %i.dy, 67108863
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.dz
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !117
  %i.ec = and i64 %indvars.iv, 63
  %i.ed = shl nuw i64 1, %i.ec
  %i.ee = and i64 %i.eb, %i.ed
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit

bb.x:                                             ; preds = %bb.v
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dp, i64 59
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !459, !range !56, !noundef !57
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ei = load i64, ptr %i.dr, align 8, !tbaa !117
  %i.ej = and i64 %i.ei, 1
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit

bb.z:                                             ; preds = %bb.x
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !461
  %i.em = shl nsw i64 %indvars.iv, 2
  %i.en = getelementptr inbounds i8, ptr %i.el, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !3
  %i.ep = zext i32 %i.eo to i64                   ; 2 uses
  %i.eq = lshr i64 %i.ep, 6
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.eq
  %i.es = load i64, ptr %i.er, align 8, !tbaa !117
  %i.et = and i64 %i.ep, 63
  %i.eu = shl nuw i64 1, %i.et
  %i.ev = and i64 %i.eu, %i.es
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit: ; preds = %bb.w, %bb.y, %bb.z
  %.0.i.i.i.in = phi i64 [ %i.ee, %bb.w ], [ %i.ej, %bb.y ], [ %i.ev, %bb.z ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %bb.aa, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread

bb.aa:                                            ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit
  %i.ew = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN8facebook5velox4exec9MapWriterIiNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
  store i32 %i.ca, ptr %i.ew, align 4, !tbaa !3
  br label %bb.ad

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread: ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE4findIiEENS1_11F14ItemIterIPNS1_8F14ChunkIiEEEERKT_.exit.thread78, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit
  %i.ex = load i32, ptr %i.ax, align 8, !tbaa !9107, !noalias !9180 ; 2 uses
  %i.ey = add nsw i32 %i.ex, 1                    ; 2 uses
  %i.ez = load i8, ptr %i.ay, align 1, !tbaa !9119, !range !56, !noalias !9180, !noundef !57
  %i.fa = trunc nuw i8 %i.ez to i1
  br i1 %i.fa, label %bb.ab, label %_ZN8facebook5velox4exec9MapWriterIiNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i

bb.ab:                                            ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread
  %i.fb = load ptr, ptr %i.az, align 8, !tbaa !9120, !noalias !9180 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !46, !noalias !9180
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !noalias !9180
  call void %i.fe(ptr noundef nonnull align 8 dereferenceable(96) %i.fb, i1 noundef zeroext true), !noalias !9180, !inline_history !9183
  store i8 0, ptr %i.ay, align 1, !tbaa !9119, !noalias !9180
  br label %_ZN8facebook5velox4exec9MapWriterIiNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i

_ZN8facebook5velox4exec9MapWriterIiNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i: ; preds = %bb.ab, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread
  %i.ff = load i32, ptr %i.ba, align 4, !tbaa !9108, !noalias !9180 ; 2 uses
  %i.fg = add nsw i32 %i.ff, %i.ey                ; 2 uses
  %i.fh = load i32, ptr %i.bb, align 8, !tbaa !9131, !noalias !9180
  %i.fi = icmp sgt i32 %i.fg, %i.fh
  br i1 %i.fi, label %bb.ac, label %_ZN8facebook5velox4exec9MapWriterIiNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE8add_itemEv.exit, !prof !15

bb.ac:                                            ; preds = %_ZN8facebook5velox4exec9MapWriterIiNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i
end_hunk_3
begin_hunk_4_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS3_10VectorExecElEESB_NS0_3MapIlNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSI_NS0_5ArrayIlEEEEEJSI_SL_EEEE8applyUdfIZNKSO_7iterateIJNS3_12VectorReaderISI_EENSR_ISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSV_SZ_EUlSZ_E_ZNKSP_IS14_EEvSV_SZ_EUlSZ_E0_EEvRKS1_SZ_S11_EUlSZ_E_EEvSZ_:bb.a
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !9443 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !790
  %i.fe = load ptr, ptr %i.fb, align 8, !tbaa !46
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 144
  %i.fg = load ptr, ptr %i.ff, align 8
  invoke void %i.fg(ptr noundef nonnull align 8 dereferenceable(94) %i.fb, i32 noundef %i.fd, i1 noundef zeroext true)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecElEES7_NS0_3MapIlNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSE_NS0_5ArrayIlEEEEEJSE_SH_EEEE8applyUdfIZNKSK_7iterateIJNS1_12VectorReaderISE_EENSN_ISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_ENKUlSV_E0_clIiEEDaSV_.exit unwind label %.loopexit43, !inline_history !9453

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecElEES7_NS0_3MapIlNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSE_NS0_5ArrayIlEEEEEJSE_SH_EEEE8applyUdfIZNKSK_7iterateIJNS1_12VectorReaderISE_EENSN_ISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_ENKUlSV_E0_clIiEEDaSV_.exit: ; preds = %.noexc33
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %6) #35
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.aj, i32 noundef %i.av, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecElEES7_NS0_3MapIlNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSE_NS0_5ArrayIlEEEEEJSE_SH_EEEE8applyUdfIZNKSK_7iterateIJNS1_12VectorReaderISE_EENSN_ISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_ENKUlSV_E0_clIiEEDaSV_.exit
  %i.fh = load ptr, ptr %6, align 8, !tbaa !410
  %.not.i36 = icmp eq ptr %i.fh, null
  br i1 %.not.i36, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #35
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecElEES9_NS0_3MapIlNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSG_NS0_5ArrayIlEEEEEJSG_SJ_EEEE8applyUdfIZNKSM_7iterateIJNS1_12VectorReaderISG_EENSP_ISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvST_SX_EUlSX_E_ZNKSN_IS12_EEvST_SX_EUlSX_E0_EEvRKNS0_17SelectivityVectorESX_SZ_ENKUlSX_E_clIiEEDaSX_.exit

bb.af:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecElEES7_NS0_3MapIlNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSE_NS0_5ArrayIlEEEEEJSE_SH_EEEE8applyUdfIZNKSK_7iterateIJNS1_12VectorReaderISE_EENSN_ISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_ENKUlSV_E0_clIiEEDaSV_.exit
  %i.fi = landingpad { ptr, i32 }
          cleanup
  %i.fj = load ptr, ptr %6, align 8, !tbaa !410
  %.not.i38 = icmp eq ptr %i.fj, null
  br i1 %.not.i38, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #35
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39: ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit43, %.loopexit.split-lp, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39
  %.pn16.i = phi { ptr, i32 } [ %i.fi, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39 ], [ %lpad.loopexit, %.loopexit43 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @__cxa_end_catch()
          to label %.loopexit41 unwind label %bb.ai

.loopexit41:                                      ; preds = %bb.v, %bb.ah, %bb.ac
  %.merged.i = phi { ptr, i32 } [ %.pn.i, %bb.ac ], [ %.pn16.i, %bb.ah ], [ %eh.lpad-body, %bb.v ]
  resume { ptr, i32 } %.merged.i

bb.ai:                                            ; preds = %bb.ah, %bb.ac
  %i.fk = landingpad { ptr, i32 }
          catch ptr null
  %i.fl = extractvalue { ptr, i32 } %i.fk, 0
  call void @__clang_call_terminate(ptr %i.fl) #43
  unreachable

bb.aj:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecElEES9_NS0_3MapIlNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSG_NS0_5ArrayIlEEEEEJSG_SJ_EEEE8applyUdfIZNKSM_7iterateIJNS1_12VectorReaderISG_EENSP_ISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvST_SX_EUlSX_E_ZNKSN_IS12_EEvST_SX_EUlSX_E0_EEvRKNS0_17SelectivityVectorESX_SZ_ENKUlSX_E_clIiEEDaSX_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit26, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit40, label %bb.i, !llvm.loop !9501

bb.ak:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.fm = load ptr, ptr %0, align 8, !tbaa !421
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !432
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !433
  tail call void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS3_10VectorExecElEESB_NS0_3MapIlNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSI_NS0_5ArrayIlEEEEEJSI_SL_EEEE8applyUdfIZNKSO_7iterateIJNS3_12VectorReaderISI_EENSR_ISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSV_SZ_EUlSZ_E_ZNKSP_IS14_EEvSV_SZ_EUlSZ_E0_EEvRKNS0_17SelectivityVectorESZ_S11_EUlSZ_E_EEvPKmiibSZ_(ptr noundef %i.fm, i32 noundef %i.fo, i32 noundef %i.fq, i1 noundef zeroext true, ptr noundef nonnull byval(%class.anon.2653) align 8 %1)
  br label %.loopexit40

.loopexit40:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecElEES9_NS0_3MapIlNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSG_NS0_5ArrayIlEEEEEJSG_SJ_EEEE8applyUdfIZNKSM_7iterateIJNS1_12VectorReaderISG_EENSP_ISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvST_SX_EUlSX_E_ZNKSN_IS12_EEvST_SX_EUlSX_E0_EEvRKNS0_17SelectivityVectorESX_SZ_ENKUlSX_E_clIiEEDaSX_.exit, %bb.h, %bb.ak
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox9functions26MapSubsetPrimitiveFunctionINS0_4exec10VectorExecElE4callERNS3_9MapWriterIlNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEERKNS3_7MapViewILb1ElSA_EERKNS3_9ArrayViewILb1ElEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #23 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.facebook::velox::exec::GenericView", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !9379
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %0, align 8, !tbaa !9367, !range !56, !noundef !57
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !9332 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 15
  %i.i = load i8, ptr %i.h, align 1, !tbaa !473
  %i.j = icmp eq i8 %i.i, -1
  br i1 %i.j, label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIlvvvvEEE5clearEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !476  ; 4 uses
  %i.m = and i64 %i.l, 252
  %.not.i.i.i = icmp eq i64 %i.m, 0               ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 14
  %i.o = load i8, ptr %i.n, align 1, !tbaa !16
  %i.p = and i8 %i.o, 15
  %i.q = icmp ult i64 %i.l, 256
  br i1 %i.q, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.e
  %.pre.i.i.i = and i64 %i.l, 255
  br label %bb.g

bb.f:                                             ; preds = %.preheader.i.i.i
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !9332 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 14
  store i8 %i.p, ptr %i.s, align 2, !tbaa !9409
  br label %bb.g

.preheader.i.i.i:                                 ; preds = %bb.e, %.preheader.i.i.i
  %.017.i.i.i = phi i64 [ %i.v, %.preheader.i.i.i ], [ 0, %bb.e ] ; 2 uses
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !9332
  %i.u = getelementptr inbounds nuw [128 x i8], ptr %i.t, i64 %.017.i.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.u, i8 0, i64 16, i1 false)
  %i.v = add nuw i64 %.017.i.i.i, 1               ; 2 uses
  %i.w = load i64, ptr %i.k, align 8, !tbaa !476
  %i.x = and i64 %i.w, 255                        ; 2 uses
  %.0.highbits.i.i.i = lshr i64 %i.v, %i.x
  %i.y = icmp eq i64 %.0.highbits.i.i.i, 0
  br i1 %i.y, label %.preheader.i.i.i, label %bb.f, !llvm.loop !9502

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.x, %bb.f ] ; 2 uses
  %i.z = phi ptr [ %i.g, %._crit_edge.i.i.i ], [ %i.r, %bb.f ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.aa, align 8, !tbaa !117
  store i64 %.pre-phi.i.i.i, ptr %i.k, align 8, !tbaa !476
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %i.ab = phi i64 [ %.pre-phi.i.i.i, %bb.g ], [ %i.l, %bb.d ] ; 2 uses
  %i.ac = phi ptr [ %i.z, %bb.g ], [ %i.g, %bb.d ] ; 2 uses
  br i1 %.not.i.i.i, label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIlvvvvEEE5clearEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 14
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !16
  %i.af = icmp eq i64 %i.ab, 0
  %i.ag = shl i8 %i.ae, 3
  %i.ah = and i8 %i.ag, 120
  %narrow.i.i.i = add nuw i8 %i.ah, 16
  %i.ai = zext i8 %narrow.i.i.i to i64
  %i.aj = shl i64 128, %i.ab
  %.0.i.i.i.i = select i1 %i.af, i64 %i.ai, i64 %i.aj
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.f, align 8, !tbaa !9332
  store i64 0, ptr %i.k, align 8, !tbaa !476
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %.0.i.i.i.i) #35
  br label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIlvvvvEEE5clearEv.exit

_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIlvvvvEEE5clearEv.exit: ; preds = %bb.c, %bb.h, %bb.i
  tail call void @_ZN8facebook5velox9functions26MapSubsetPrimitiveFunctionINS0_4exec10VectorExecElE20initializeSearchKeysERKNS3_9ArrayViewILb1ElEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIlvvvvEEE5clearEv.exit, %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !476 ; 2 uses
  %i.an = icmp ult i64 %i.am, 256
  br i1 %i.an, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !9350, !noalias !9503 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !9351, !noalias !9503 ; 2 uses
  %i.as = load ptr, ptr %2, align 8, !tbaa !9347, !noalias !9503
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !9349, !noalias !9503 ; 3 uses
  %i.av = add nsw i32 %i.ar, %i.ap
  %i.aw = icmp eq i32 %i.ar, 0
  br i1 %i.aw, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.ax = lshr i64 %i.am, 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 37 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, <2 x i64> <i64 8, i64 56>
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bi = sext i32 %i.ap to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE4findIlEENS1_11F14ItemIterIPNS1_8F14ChunkIlEEEERKT_.exit.thread
  %indvars.iv = phi i64 [ %i.bi, %.lr.ph ], [ %indvars.iv.next, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE4findIlEENS1_11F14ItemIterIPNS1_8F14ChunkIlEEEERKT_.exit.thread ] ; 6 uses
  %.0107 = phi i64 [ %i.ax, %.lr.ph ], [ %.1.ph, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE4findIlEENS1_11F14ItemIterIPNS1_8F14ChunkIlEEEERKT_.exit.thread ] ; 5 uses
  %i.bj = load ptr, ptr %i.as, align 8, !tbaa !9390, !noalias !9506, !nonnull !57, !align !179 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !728, !noalias !9506
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 58
  %i.bn = load i8, ptr %i.bm, align 2, !tbaa !458, !range !56, !noalias !9506, !noundef !57
  %i.bo = trunc nuw i8 %i.bn to i1
  %i.bp = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  br i1 %i.bo, label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ElNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 59
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !459, !range !56, !noalias !9506, !noundef !57
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !460, !noalias !9506
  br label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ElNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit

bb.o:                                             ; preds = %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !461, !noalias !9506
  %i.bx = shl nsw i64 %indvars.iv, 2
  %i.by = getelementptr inbounds i8, ptr %i.bw, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !3, !noalias !9506
  br label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ElNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit

_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ElNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit: ; preds = %bb.l, %bb.n, %bb.o
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bz, %bb.o ], [ %i.bu, %bb.n ], [ %i.bp, %bb.l ]
  %i.ca = sext i32 %.0.i.i.i.i.i.i.i to i64
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.ca
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !117, !noalias !9506 ; 6 uses
  %i.cd = load i64, ptr %i.al, align 8, !tbaa !476 ; 2 uses
  %i.ce = lshr i64 %i.cd, 8
  switch i64 %i.ce, label %bb.q [
    i64 0, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE4findIlEENS1_11F14ItemIterIPNS1_8F14ChunkIlEEEERKT_.exit.thread
    i64 1, label %bb.p
  ]

bb.p:                                             ; preds = %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ElNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit
  %i.cf = load i64, ptr %i.ay, align 8, !tbaa !9410
  %i.cg = and i64 %i.cf, -8
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !117
  %i.cj = icmp eq i64 %i.cc, %i.ci
  br i1 %i.cj, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE4findIlEENS1_11F14ItemIterIPNS1_8F14ChunkIlEEEERKT_.exit.thread77, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE4findIlEENS1_11F14ItemIterIPNS1_8F14ChunkIlEEEERKT_.exit.thread

bb.q:                                             ; preds = %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ElNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit
  %i.ck = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.cc) ; 2 uses
  %i.cl = lshr i64 %i.ck, 24
  %i.cm = or i64 %i.cl, 128                       ; 2 uses
  %i.cn = add i64 %i.ck, %i.cc
  %i.co = shl nuw nsw i64 %i.cm, 1
  %i.cp = or disjoint i64 %i.co, 1
  %i.cq = trunc nuw i64 %i.cm to i8
  %i.cr = insertelement <16 x i8> poison, i8 %i.cq, i64 0
  %i.cs = shufflevector <16 x i8> %i.cr, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ct = and i64 %i.cd, 255                      ; 2 uses
  %i.cu = shl nuw i64 1, %i.ct
  %i.cv = load ptr, ptr %i.ak, align 8, !tbaa !9332
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.u
  %.0.i.i104 = phi i64 [ %i.cn, %bb.q ], [ %i.dq, %bb.u ] ; 2 uses
  %.023.i.i103 = phi i64 [ %i.cu, %bb.q ], [ %i.dp, %bb.u ]
  %i.cw = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i104, i64 range(i64 0, 256) %i.ct)
  %i.cx = getelementptr inbounds nuw [128 x i8], ptr %i.cv, i64 %i.cw ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 80
  call void @llvm.prefetch.p0(ptr nonnull %i.cz, i32 0, i32 3, i32 1)
  %i.da = load <16 x i8>, ptr %i.cx, align 16     ; 2 uses
  %i.db = icmp eq <16 x i8> %i.da, %i.cs
  %i.dc = bitcast <16 x i1> %i.db to i16
  %i.dd = and i16 %i.dc, 16383
  %i.de = zext nneg i16 %i.dd to i32
  %i.df = icmp ne ptr %i.cx, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.dg = extractelement <16 x i8> %i.da, i64 15
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.s, %bb.r
  %.sroa.049.0 = phi i32 [ %i.de, %bb.r ], [ %i.dj, %bb.s ] ; 4 uses
  %.not = icmp eq i32 %.sroa.049.0, 0
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.critedge.i.i
  %i.dh = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.049.0, i1 true)
  %i.di = add nsw i32 %.sroa.049.0, -1
  %i.dj = and i32 %i.di, %.sroa.049.0
  %i.dk = zext nneg i32 %i.dh to i64
  call void @llvm.assume(i1 %i.df)
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.dk
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !117
  %i.dn = icmp eq i64 %i.cc, %i.dm
  br i1 %i.dn, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE4findIlEENS1_11F14ItemIterIPNS1_8F14ChunkIlEEEERKT_.exit.thread77, label %.critedge.i.i, !prof !232, !llvm.loop !9404

bb.t:                                             ; preds = %.critedge.i.i
  %i.do = icmp eq i8 %i.dg, 0
  br i1 %i.do, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE4findIlEENS1_11F14ItemIterIPNS1_8F14ChunkIlEEEERKT_.exit.thread, label %bb.u, !prof !232

bb.u:                                             ; preds = %bb.t
  %i.dp = add i64 %.023.i.i103, -1                ; 2 uses
  %i.dq = add i64 %i.cp, %.0.i.i104
  %.not.i.i = icmp eq i64 %i.dp, 0
  br i1 %.not.i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE4findIlEENS1_11F14ItemIterIPNS1_8F14ChunkIlEEEERKT_.exit.thread, label %bb.r, !llvm.loop !9405

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE4findIlEENS1_11F14ItemIterIPNS1_8F14ChunkIlEEEERKT_.exit.thread77: ; preds = %bb.s, %bb.p
  %i.dr = load ptr, ptr %i.au, align 8, !tbaa !562, !nonnull !57, !align !179 ; 5 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !735 ; 4 uses
  %.not.i.i.i25 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i25, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread, label %bb.v

bb.v:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE4findIlEENS1_11F14ItemIterIPNS1_8F14ChunkIlEEEERKT_.exit.thread77
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 58
  %i.dv = load i8, ptr %i.du, align 2, !tbaa !458, !range !56, !noundef !57
  %i.dw = trunc nuw i8 %i.dv to i1
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dr, i64 57
  %i.dy = load i8, ptr %i.dx, align 1, !range !56
  %i.dz = trunc nuw i8 %i.dy to i1
  %or.cond.i.i.i = select i1 %i.dw, i1 true, i1 %i.dz
  br i1 %or.cond.i.i.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ea = lshr i64 %indvars.iv, 6
  %i.eb = and i64 %i.ea, 67108863
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.eb
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !117
  %i.ee = and i64 %indvars.iv, 63
  %i.ef = shl nuw i64 1, %i.ee
  %i.eg = and i64 %i.ed, %i.ef
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit

bb.x:                                             ; preds = %bb.v
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dr, i64 59
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !459, !range !56, !noundef !57
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ek = load i64, ptr %i.dt, align 8, !tbaa !117
  %i.el = and i64 %i.ek, 1
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit

bb.z:                                             ; preds = %bb.x
  %i.em = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !461
  %i.eo = shl nsw i64 %indvars.iv, 2
  %i.ep = getelementptr inbounds i8, ptr %i.en, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !3
  %i.er = zext i32 %i.eq to i64                   ; 2 uses
  %i.es = lshr i64 %i.er, 6
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.es
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !117
  %i.ev = and i64 %i.er, 63
  %i.ew = shl nuw i64 1, %i.ev
  %i.ex = and i64 %i.ew, %i.eu
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit: ; preds = %bb.w, %bb.y, %bb.z
  %.0.i.i.i.in = phi i64 [ %i.eg, %bb.w ], [ %i.el, %bb.y ], [ %i.ex, %bb.z ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %bb.aa, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread

bb.aa:                                            ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit
  %i.ey = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN8facebook5velox4exec9MapWriterIlNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
  store i64 %i.cc, ptr %i.ey, align 8, !tbaa !117
  br label %bb.ad

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread: ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE4findIlEENS1_11F14ItemIterIPNS1_8F14ChunkIlEEEERKT_.exit.thread77, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit
  %i.ez = load i32, ptr %i.az, align 8, !tbaa !9438, !noalias !9511 ; 2 uses
  %i.fa = add nsw i32 %i.ez, 1                    ; 2 uses
  %i.fb = load i8, ptr %i.ba, align 1, !tbaa !9450, !range !56, !noalias !9511, !noundef !57
  %i.fc = trunc nuw i8 %i.fb to i1
  br i1 %i.fc, label %bb.ab, label %_ZN8facebook5velox4exec9MapWriterIlNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i

bb.ab:                                            ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread
  %i.fd = load ptr, ptr %i.bb, align 8, !tbaa !9451, !noalias !9511 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !46, !noalias !9511
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !noalias !9511
  call void %i.fg(ptr noundef nonnull align 8 dereferenceable(96) %i.fd, i1 noundef zeroext true), !noalias !9511, !inline_history !9514
  store i8 0, ptr %i.ba, align 1, !tbaa !9450, !noalias !9511
  br label %_ZN8facebook5velox4exec9MapWriterIlNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i

_ZN8facebook5velox4exec9MapWriterIlNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i: ; preds = %bb.ab, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread
  %i.fh = load i32, ptr %i.bc, align 4, !tbaa !9439, !noalias !9511 ; 2 uses
  %i.fi = add nsw i32 %i.fh, %i.fa                ; 2 uses
  %i.fj = load i32, ptr %i.bd, align 8, !tbaa !9462, !noalias !9511
  %i.fk = icmp sgt i32 %i.fi, %i.fj
  br i1 %i.fk, label %bb.ac, label %_ZN8facebook5velox4exec9MapWriterIlNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE8add_itemEv.exit, !prof !15

end_hunk_4
begin_hunk_5_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS3_10VectorExecEfEESB_NS0_3MapIfNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSI_NS0_5ArrayIfEEEEEJSI_SL_EEEE8applyUdfIZNKSO_7iterateIJNS3_12VectorReaderISI_EENSR_ISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSV_SZ_EUlSZ_E_ZNKSP_IS14_EEvSV_SZ_EUlSZ_E0_EEvRKS1_SZ_S11_EUlSZ_E_EEvSZ_:bb.a
          cleanup
  br label %bb.ah

.noexc33:                                         ; preds = %tailrecurse.i.i.i.i.3
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ec, i64 80
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !9781 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !790
  %i.fe = load ptr, ptr %i.fb, align 8, !tbaa !46
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 144
  %i.fg = load ptr, ptr %i.ff, align 8
  invoke void %i.fg(ptr noundef nonnull align 8 dereferenceable(94) %i.fb, i32 noundef %i.fd, i1 noundef zeroext true)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecEfEES7_NS0_3MapIfNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSE_NS0_5ArrayIfEEEEEJSE_SH_EEEE8applyUdfIZNKSK_7iterateIJNS1_12VectorReaderISE_EENSN_ISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_ENKUlSV_E0_clIiEEDaSV_.exit unwind label %.loopexit43, !inline_history !9791

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecEfEES7_NS0_3MapIfNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSE_NS0_5ArrayIfEEEEEJSE_SH_EEEE8applyUdfIZNKSK_7iterateIJNS1_12VectorReaderISE_EENSN_ISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_ENKUlSV_E0_clIiEEDaSV_.exit: ; preds = %.noexc33
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %6) #35
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.aj, i32 noundef %i.av, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecEfEES7_NS0_3MapIfNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSE_NS0_5ArrayIfEEEEEJSE_SH_EEEE8applyUdfIZNKSK_7iterateIJNS1_12VectorReaderISE_EENSN_ISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_ENKUlSV_E0_clIiEEDaSV_.exit
  %i.fh = load ptr, ptr %6, align 8, !tbaa !410
  %.not.i36 = icmp eq ptr %i.fh, null
  br i1 %.not.i36, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #35
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecEfEES9_NS0_3MapIfNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSG_NS0_5ArrayIfEEEEEJSG_SJ_EEEE8applyUdfIZNKSM_7iterateIJNS1_12VectorReaderISG_EENSP_ISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvST_SX_EUlSX_E_ZNKSN_IS12_EEvST_SX_EUlSX_E0_EEvRKNS0_17SelectivityVectorESX_SZ_ENKUlSX_E_clIiEEDaSX_.exit

bb.af:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecEfEES7_NS0_3MapIfNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSE_NS0_5ArrayIfEEEEEJSE_SH_EEEE8applyUdfIZNKSK_7iterateIJNS1_12VectorReaderISE_EENSN_ISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_ENKUlSV_E0_clIiEEDaSV_.exit
  %i.fi = landingpad { ptr, i32 }
          cleanup
  %i.fj = load ptr, ptr %6, align 8, !tbaa !410
  %.not.i38 = icmp eq ptr %i.fj, null
  br i1 %.not.i38, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #35
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39: ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit43, %.loopexit.split-lp, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39
  %.pn16.i = phi { ptr, i32 } [ %i.fi, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39 ], [ %lpad.loopexit, %.loopexit43 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @__cxa_end_catch()
          to label %.loopexit41 unwind label %bb.ai

.loopexit41:                                      ; preds = %bb.v, %bb.ah, %bb.ac
  %.merged.i = phi { ptr, i32 } [ %.pn.i, %bb.ac ], [ %.pn16.i, %bb.ah ], [ %eh.lpad-body, %bb.v ]
  resume { ptr, i32 } %.merged.i

bb.ai:                                            ; preds = %bb.ah, %bb.ac
  %i.fk = landingpad { ptr, i32 }
          catch ptr null
  %i.fl = extractvalue { ptr, i32 } %i.fk, 0
  call void @__clang_call_terminate(ptr %i.fl) #43
  unreachable

bb.aj:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecEfEES9_NS0_3MapIfNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSG_NS0_5ArrayIfEEEEEJSG_SJ_EEEE8applyUdfIZNKSM_7iterateIJNS1_12VectorReaderISG_EENSP_ISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvST_SX_EUlSX_E_ZNKSN_IS12_EEvST_SX_EUlSX_E0_EEvRKNS0_17SelectivityVectorESX_SZ_ENKUlSX_E_clIiEEDaSX_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit26, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit40, label %bb.i, !llvm.loop !9839

bb.ak:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.fm = load ptr, ptr %0, align 8, !tbaa !421
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !432
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !433
  tail call void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS3_10VectorExecEfEESB_NS0_3MapIfNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSI_NS0_5ArrayIfEEEEEJSI_SL_EEEE8applyUdfIZNKSO_7iterateIJNS3_12VectorReaderISI_EENSR_ISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSV_SZ_EUlSZ_E_ZNKSP_IS14_EEvSV_SZ_EUlSZ_E0_EEvRKNS0_17SelectivityVectorESZ_S11_EUlSZ_E_EEvPKmiibSZ_(ptr noundef %i.fm, i32 noundef %i.fo, i32 noundef %i.fq, i1 noundef zeroext true, ptr noundef nonnull byval(%class.anon.2781) align 8 %1)
  br label %.loopexit40

.loopexit40:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecEfEES9_NS0_3MapIfNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSG_NS0_5ArrayIfEEEEEJSG_SJ_EEEE8applyUdfIZNKSM_7iterateIJNS1_12VectorReaderISG_EENSP_ISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvST_SX_EUlSX_E_ZNKSN_IS12_EEvST_SX_EUlSX_E0_EEvRKNS0_17SelectivityVectorESX_SZ_ENKUlSX_E_clIiEEDaSX_.exit, %bb.h, %bb.ak
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox9functions26MapSubsetPrimitiveFunctionINS0_4exec10VectorExecEfE4callERNS3_9MapWriterIfNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEERKNS3_7MapViewILb1EfSA_EERKNS3_9ArrayViewILb1EfEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #23 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.facebook::velox::exec::GenericView", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !9710
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %0, align 8, !tbaa !9698, !range !56, !noundef !57
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !9663 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 15
  %i.i = load i8, ptr %i.h, align 1, !tbaa !473
  %i.j = icmp eq i8 %i.i, -1
  br i1 %i.j, label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE5clearEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !476  ; 4 uses
  %i.m = and i64 %i.l, 252
  %.not.i.i.i = icmp eq i64 %i.m, 0               ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %.0.copyload.i.i.i.i.i = load i16, ptr %i.n, align 1
  %i.o = icmp ult i64 %i.l, 256
  br i1 %i.o, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %bb.g

bb.f:                                             ; preds = %.preheader.i.i.i
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !9663
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i16 %.0.copyload.i.i.i.i.i, ptr %i.q, align 1
  %.pre.i.i.i = load i64, ptr %i.k, align 8, !tbaa !476
  br label %bb.g

.preheader.i.i.i:                                 ; preds = %bb.e, %.preheader.i.i.i
  %.018.i.i.i = phi i64 [ %i.t, %.preheader.i.i.i ], [ 0, %bb.e ] ; 2 uses
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !9663
  %i.s = getelementptr inbounds nuw [64 x i8], ptr %i.r, i64 %.018.i.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.s, i8 0, i64 16, i1 false)
  %i.t = add nuw i64 %.018.i.i.i, 1               ; 2 uses
  %i.u = load i64, ptr %i.k, align 8, !tbaa !476
  %i.v = and i64 %i.u, 255
  %.0.highbits.i.i.i = lshr i64 %i.t, %i.v
  %i.w = icmp eq i64 %.0.highbits.i.i.i, 0
  br i1 %i.w, label %.preheader.i.i.i, label %bb.f, !llvm.loop !9840

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = phi i64 [ %.pre.i.i.i, %bb.f ], [ %i.l, %bb.e ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.y, align 8, !tbaa !117
  %i.z = and i64 %i.x, 255                        ; 2 uses
  store i64 %i.z, ptr %i.k, align 8, !tbaa !476
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %i.aa = phi i64 [ %i.z, %bb.g ], [ %i.l, %bb.d ] ; 2 uses
  br i1 %.not.i.i.i, label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE5clearEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = load ptr, ptr %i.f, align 8, !tbaa !9663 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %.0.copyload.i17.i.i.i = load i16, ptr %i.ac, align 1
  %i.ad = zext i16 %.0.copyload.i17.i.i.i to i64
  %i.ae = icmp eq i64 %i.aa, 0
  %i.af = shl nuw nsw i64 %i.ad, 2
  %i.ag = add nuw nsw i64 %i.af, 16
  %i.ah = shl i64 64, %i.aa
  %.0.i.i.i.i = select i1 %i.ae, i64 %i.ag, i64 %i.ah
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.f, align 8, !tbaa !9663
  store i64 0, ptr %i.k, align 8, !tbaa !476
  tail call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %.0.i.i.i.i) #35
  br label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE5clearEv.exit

_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE5clearEv.exit: ; preds = %bb.c, %bb.h, %bb.i
  tail call void @_ZN8facebook5velox9functions26MapSubsetPrimitiveFunctionINS0_4exec10VectorExecEfE20initializeSearchKeysERKNS3_9ArrayViewILb1EfEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE5clearEv.exit, %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !476 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 256
  br i1 %i.al, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !9681, !noalias !9841 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !9682, !noalias !9841 ; 2 uses
  %i.aq = load ptr, ptr %2, align 8, !tbaa !9678, !noalias !9841
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !9680, !noalias !9841 ; 3 uses
  %i.at = add nsw i32 %i.ap, %i.an
  %i.au = icmp eq i32 %i.ap, 0
  br i1 %i.au, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.av = lshr i64 %i.ak, 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 37 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.as, <2 x i64> <i64 8, i64 56>
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bg = sext i32 %i.an to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE4findIfEENS1_11F14ItemIterIPNS1_8F14ChunkIfEEEERKT_.exit.thread
  %indvars.iv = phi i64 [ %i.bg, %.lr.ph ], [ %indvars.iv.next, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE4findIfEENS1_11F14ItemIterIPNS1_8F14ChunkIfEEEERKT_.exit.thread ] ; 6 uses
  %.0113 = phi i64 [ %i.av, %.lr.ph ], [ %.1.ph, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE4findIfEENS1_11F14ItemIterIPNS1_8F14ChunkIfEEEERKT_.exit.thread ] ; 5 uses
  %i.bh = load ptr, ptr %i.aq, align 8, !tbaa !9721, !noalias !9844, !nonnull !57, !align !179 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !728, !noalias !9844
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 58
  %i.bl = load i8, ptr %i.bk, align 2, !tbaa !458, !range !56, !noalias !9844, !noundef !57
  %i.bm = trunc nuw i8 %i.bl to i1
  %i.bn = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  br i1 %i.bm, label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EfNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 59
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !459, !range !56, !noalias !9844, !noundef !57
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !460, !noalias !9844
  br label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EfNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit

bb.o:                                             ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !461, !noalias !9844
  %i.bv = shl nsw i64 %indvars.iv, 2
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !3, !noalias !9844
  br label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EfNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit

_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EfNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit: ; preds = %bb.l, %bb.n, %bb.o
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bx, %bb.o ], [ %i.bs, %bb.n ], [ %i.bn, %bb.l ]
  %i.by = sext i32 %.0.i.i.i.i.i.i.i to i64
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.by
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !5746, !noalias !9844 ; 8 uses
  %i.cb = load i64, ptr %i.aj, align 8, !tbaa !476
  %i.cc = lshr i64 %i.cb, 8
  switch i64 %i.cc, label %bb.q [
    i64 0, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE4findIfEENS1_11F14ItemIterIPNS1_8F14ChunkIfEEEERKT_.exit.thread
    i64 1, label %bb.p
  ]

bb.p:                                             ; preds = %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EfNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit
  %i.cd = load i64, ptr %i.aw, align 8, !tbaa !9748
  %i.ce = and i64 %i.cd, -4
  %i.cf = inttoptr i64 %i.ce to ptr
  %i.cg = fcmp uno float %i.ca, 0.000000e+00
  %i.ch = load float, ptr %i.cf, align 4          ; 2 uses
  %i.ci = fcmp uno float %i.ch, 0.000000e+00
  %or.cond.i.i = select i1 %i.cg, i1 %i.ci, i1 false
  %i.cj = fcmp oeq float %i.ca, %i.ch
  %.0.i.i25 = select i1 %or.cond.i.i, i1 true, i1 %i.cj
  br i1 %.0.i.i25, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE4findIfEENS1_11F14ItemIterIPNS1_8F14ChunkIfEEEERKT_.exit.thread83, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE4findIfEENS1_11F14ItemIterIPNS1_8F14ChunkIfEEEERKT_.exit.thread

bb.q:                                             ; preds = %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EfNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit
  %i.ck = load atomic i8, ptr @_ZGVZNK8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEclERKfE8kNanHash acquire, align 8
  %i.cl = icmp eq i8 %i.ck, 0
  br i1 %i.cl, label %bb.r, label %bb.s, !prof !33

bb.r:                                             ; preds = %bb.q
  %i.cm = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEclERKfE8kNanHash) #35
  %.not.i.i.i26 = icmp eq i32 %i.cm, 0
  br i1 %.not.i.i.i26, label %bb.s, label %_ZNK5folly6detail12float_hasherIfEclERKf.exit.i.i.i

_ZNK5folly6detail12float_hasherIfEclERKf.exit.i.i.i: ; preds = %bb.r
  store i64 7476675141552221795, ptr @_ZZNK8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEclERKfE8kNanHash, align 8, !tbaa !117
  %i.cn = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZNK8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEclERKfE8kNanHash) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZNK8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEclERKfE8kNanHash) #35
  br label %bb.s

bb.s:                                             ; preds = %_ZNK5folly6detail12float_hasherIfEclERKf.exit.i.i.i, %bb.r, %bb.q
  %i.co = fcmp uno float %i.ca, 0.000000e+00      ; 2 uses
  br i1 %i.co, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cp = load i64, ptr @_ZZNK8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEclERKfE8kNanHash, align 8, !tbaa !117
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE11computeHashIfEESt4pairImmERKT_.exit

bb.u:                                             ; preds = %bb.s
  %i.cq = fcmp oeq float %i.ca, 0.000000e+00
  br i1 %i.cq, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE11computeHashIfEESt4pairImmERKT_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cr = bitcast float %i.ca to i32
  %.0.insert.ext.i2.i.i.i = zext i32 %i.cr to i64 ; 2 uses
  %i.cs = xor i64 %.0.insert.ext.i2.i.i.i, -1
  %i.ct = shl nuw nsw i64 %.0.insert.ext.i2.i.i.i, 21
  %i.cu = add nsw i64 %i.ct, %i.cs                ; 2 uses
  %i.cv = lshr i64 %i.cu, 24
  %i.cw = xor i64 %i.cv, %i.cu
  %i.cx = mul nsw i64 %i.cw, 265                  ; 2 uses
  %i.cy = lshr i64 %i.cx, 14
  %i.cz = xor i64 %i.cy, %i.cx
  %i.da = mul i64 %i.cz, 21                       ; 2 uses
  %i.db = lshr i64 %i.da, 28
  %i.dc = xor i64 %i.db, %i.da
  %i.dd = mul i64 %i.dc, 2147483649
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE11computeHashIfEESt4pairImmERKT_.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE11computeHashIfEESt4pairImmERKT_.exit: ; preds = %bb.t, %bb.u, %bb.v
  %.0.i.i.i = phi i64 [ %i.cp, %bb.t ], [ %i.dd, %bb.v ], [ 0, %bb.u ] ; 2 uses
  %i.de = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %.0.i.i.i) ; 2 uses
  %i.df = lshr i64 %i.de, 24
  %i.dg = or i64 %i.df, 128                       ; 2 uses
  %i.dh = add i64 %i.de, %.0.i.i.i
  %i.di = shl nuw nsw i64 %i.dg, 1
  %i.dj = or disjoint i64 %i.di, 1
  %i.dk = trunc nuw i64 %i.dg to i8
  %i.dl = insertelement <16 x i8> poison, i8 %i.dk, i64 0
  %i.dm = shufflevector <16 x i8> %i.dl, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.dn = load i64, ptr %i.aj, align 8, !tbaa !476
  %i.do = and i64 %i.dn, 255                      ; 2 uses
  %i.dp = shl nuw i64 1, %i.do
  %i.dq = load ptr, ptr %i.ai, align 8, !tbaa !9663
  br label %bb.w

bb.w:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE11computeHashIfEESt4pairImmERKT_.exit, %bb.z
  %.0.i.i110 = phi i64 [ %i.dh, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE11computeHashIfEESt4pairImmERKT_.exit ], [ %i.el, %bb.z ] ; 2 uses
  %.022.i.i109 = phi i64 [ %i.dp, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE11computeHashIfEESt4pairImmERKT_.exit ], [ %i.ek, %bb.z ]
  %i.dr = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i110, i64 range(i64 0, 256) %i.do)
  %i.ds = getelementptr inbounds nuw [64 x i8], ptr %i.dq, i64 %i.dr ; 3 uses
  %i.dt = load <16 x i8>, ptr %i.ds, align 16     ; 2 uses
  %i.du = icmp eq <16 x i8> %i.dt, %i.dm
  %i.dv = bitcast <16 x i1> %i.du to i16
  %i.dw = and i16 %i.dv, 4095
  %i.dx = zext nneg i16 %i.dw to i32
  %i.dy = icmp ne ptr %i.ds, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.ea = extractelement <16 x i8> %i.dt, i64 15
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.x, %bb.w
  %.sroa.055.0 = phi i32 [ %i.dx, %bb.w ], [ %i.ed, %bb.x ] ; 4 uses
  %.not = icmp eq i32 %.sroa.055.0, 0
  br i1 %.not, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.critedge.i.i
  %i.eb = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.055.0, i1 true)
  %i.ec = add nsw i32 %.sroa.055.0, -1
  %i.ed = and i32 %i.ec, %.sroa.055.0
  %i.ee = zext nneg i32 %i.eb to i64
  call void @llvm.assume(i1 %i.dy)
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.ee
  %i.eg = load float, ptr %i.ef, align 4          ; 2 uses
  %i.eh = fcmp uno float %i.eg, 0.000000e+00
  %or.cond.i.i27 = select i1 %i.co, i1 %i.eh, i1 false
  %i.ei = fcmp oeq float %i.ca, %i.eg
  %.0.i.i28 = select i1 %or.cond.i.i27, i1 true, i1 %i.ei
  br i1 %.0.i.i28, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE4findIfEENS1_11F14ItemIterIPNS1_8F14ChunkIfEEEERKT_.exit.thread83, label %.critedge.i.i, !prof !232, !llvm.loop !9742

bb.y:                                             ; preds = %.critedge.i.i
  %i.ej = icmp eq i8 %i.ea, 0
  br i1 %i.ej, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE4findIfEENS1_11F14ItemIterIPNS1_8F14ChunkIfEEEERKT_.exit.thread, label %bb.z, !prof !232

bb.z:                                             ; preds = %bb.y
  %i.ek = add i64 %.022.i.i109, -1                ; 2 uses
  %i.el = add i64 %i.dj, %.0.i.i110
  %.not.i.i = icmp eq i64 %i.ek, 0
  br i1 %.not.i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE4findIfEENS1_11F14ItemIterIPNS1_8F14ChunkIfEEEERKT_.exit.thread, label %bb.w, !llvm.loop !9743

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE4findIfEENS1_11F14ItemIterIPNS1_8F14ChunkIfEEEERKT_.exit.thread83: ; preds = %bb.x, %bb.p
  %i.em = load ptr, ptr %i.as, align 8, !tbaa !562, !nonnull !57, !align !179 ; 5 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !735 ; 4 uses
  %.not.i.i.i29 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i29, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE4findIfEENS1_11F14ItemIterIPNS1_8F14ChunkIfEEEERKT_.exit.thread83
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 58
  %i.eq = load i8, ptr %i.ep, align 2, !tbaa !458, !range !56, !noundef !57
  %i.er = trunc nuw i8 %i.eq to i1
  %i.es = getelementptr inbounds nuw i8, ptr %i.em, i64 57
  %i.et = load i8, ptr %i.es, align 1, !range !56
  %i.eu = trunc nuw i8 %i.et to i1
  %or.cond.i.i.i = select i1 %i.er, i1 true, i1 %i.eu
  br i1 %or.cond.i.i.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ev = lshr i64 %indvars.iv, 6
  %i.ew = and i64 %i.ev, 67108863
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.ew
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !117
  %i.ez = and i64 %indvars.iv, 63
  %i.fa = shl nuw i64 1, %i.ez
  %i.fb = and i64 %i.ey, %i.fa
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit

bb.ac:                                            ; preds = %bb.aa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.em, i64 59
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !459, !range !56, !noundef !57
  %i.fe = trunc nuw i8 %i.fd to i1
  br i1 %i.fe, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
end_hunk_5
begin_hunk_6_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS3_10VectorExecEdEESB_NS0_3MapIdNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSI_NS0_5ArrayIdEEEEEJSI_SL_EEEE8applyUdfIZNKSO_7iterateIJNS3_12VectorReaderISI_EENSR_ISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSV_SZ_EUlSZ_E_ZNKSP_IS14_EEvSV_SZ_EUlSZ_E0_EEvRKS1_SZ_S11_EUlSZ_E_EEvSZ_:bb.a
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !10119 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !790
  %i.fe = load ptr, ptr %i.fb, align 8, !tbaa !46
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 144
  %i.fg = load ptr, ptr %i.ff, align 8
  invoke void %i.fg(ptr noundef nonnull align 8 dereferenceable(94) %i.fb, i32 noundef %i.fd, i1 noundef zeroext true)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecEdEES7_NS0_3MapIdNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSE_NS0_5ArrayIdEEEEEJSE_SH_EEEE8applyUdfIZNKSK_7iterateIJNS1_12VectorReaderISE_EENSN_ISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_ENKUlSV_E0_clIiEEDaSV_.exit unwind label %.loopexit43, !inline_history !10129

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecEdEES7_NS0_3MapIdNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSE_NS0_5ArrayIdEEEEEJSE_SH_EEEE8applyUdfIZNKSK_7iterateIJNS1_12VectorReaderISE_EENSN_ISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_ENKUlSV_E0_clIiEEDaSV_.exit: ; preds = %.noexc33
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %6) #35
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.aj, i32 noundef %i.av, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecEdEES7_NS0_3MapIdNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSE_NS0_5ArrayIdEEEEEJSE_SH_EEEE8applyUdfIZNKSK_7iterateIJNS1_12VectorReaderISE_EENSN_ISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_ENKUlSV_E0_clIiEEDaSV_.exit
  %i.fh = load ptr, ptr %6, align 8, !tbaa !410
  %.not.i36 = icmp eq ptr %i.fh, null
  br i1 %.not.i36, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #35
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecEdEES9_NS0_3MapIdNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSG_NS0_5ArrayIdEEEEEJSG_SJ_EEEE8applyUdfIZNKSM_7iterateIJNS1_12VectorReaderISG_EENSP_ISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvST_SX_EUlSX_E_ZNKSN_IS12_EEvST_SX_EUlSX_E0_EEvRKNS0_17SelectivityVectorESX_SZ_ENKUlSX_E_clIiEEDaSX_.exit

bb.af:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecEdEES7_NS0_3MapIdNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSE_NS0_5ArrayIdEEEEEJSE_SH_EEEE8applyUdfIZNKSK_7iterateIJNS1_12VectorReaderISE_EENSN_ISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_ENKUlSV_E0_clIiEEDaSV_.exit
  %i.fi = landingpad { ptr, i32 }
          cleanup
  %i.fj = load ptr, ptr %6, align 8, !tbaa !410
  %.not.i38 = icmp eq ptr %i.fj, null
  br i1 %.not.i38, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #35
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39: ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit43, %.loopexit.split-lp, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39
  %.pn16.i = phi { ptr, i32 } [ %i.fi, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39 ], [ %lpad.loopexit, %.loopexit43 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @__cxa_end_catch()
          to label %.loopexit41 unwind label %bb.ai

.loopexit41:                                      ; preds = %bb.v, %bb.ah, %bb.ac
  %.merged.i = phi { ptr, i32 } [ %.pn.i, %bb.ac ], [ %.pn16.i, %bb.ah ], [ %eh.lpad-body, %bb.v ]
  resume { ptr, i32 } %.merged.i

bb.ai:                                            ; preds = %bb.ah, %bb.ac
  %i.fk = landingpad { ptr, i32 }
          catch ptr null
  %i.fl = extractvalue { ptr, i32 } %i.fk, 0
  call void @__clang_call_terminate(ptr %i.fl) #43
  unreachable

bb.aj:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecEdEES9_NS0_3MapIdNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSG_NS0_5ArrayIdEEEEEJSG_SJ_EEEE8applyUdfIZNKSM_7iterateIJNS1_12VectorReaderISG_EENSP_ISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvST_SX_EUlSX_E_ZNKSN_IS12_EEvST_SX_EUlSX_E0_EEvRKNS0_17SelectivityVectorESX_SZ_ENKUlSX_E_clIiEEDaSX_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit26, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit40, label %bb.i, !llvm.loop !10177

bb.ak:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.fm = load ptr, ptr %0, align 8, !tbaa !421
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !432
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !433
  tail call void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS3_10VectorExecEdEESB_NS0_3MapIdNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSI_NS0_5ArrayIdEEEEEJSI_SL_EEEE8applyUdfIZNKSO_7iterateIJNS3_12VectorReaderISI_EENSR_ISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSV_SZ_EUlSZ_E_ZNKSP_IS14_EEvSV_SZ_EUlSZ_E0_EEvRKNS0_17SelectivityVectorESZ_S11_EUlSZ_E_EEvPKmiibSZ_(ptr noundef %i.fm, i32 noundef %i.fo, i32 noundef %i.fq, i1 noundef zeroext true, ptr noundef nonnull byval(%class.anon.2910) align 8 %1)
  br label %.loopexit40

.loopexit40:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecEdEES9_NS0_3MapIdNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSG_NS0_5ArrayIdEEEEEJSG_SJ_EEEE8applyUdfIZNKSM_7iterateIJNS1_12VectorReaderISG_EENSP_ISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvST_SX_EUlSX_E_ZNKSN_IS12_EEvST_SX_EUlSX_E0_EEvRKNS0_17SelectivityVectorESX_SZ_ENKUlSX_E_clIiEEDaSX_.exit, %bb.h, %bb.ak
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox9functions26MapSubsetPrimitiveFunctionINS0_4exec10VectorExecEdE4callERNS3_9MapWriterIdNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEERKNS3_7MapViewILb1EdSA_EERKNS3_9ArrayViewILb1EdEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #23 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.facebook::velox::exec::GenericView", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !10048
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %0, align 8, !tbaa !10036, !range !56, !noundef !57
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !10001 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 15
  %i.i = load i8, ptr %i.h, align 1, !tbaa !473
  %i.j = icmp eq i8 %i.i, -1
  br i1 %i.j, label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE5clearEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !476  ; 4 uses
  %i.m = and i64 %i.l, 252
  %.not.i.i.i = icmp eq i64 %i.m, 0               ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 14
  %i.o = load i8, ptr %i.n, align 1, !tbaa !16
  %i.p = and i8 %i.o, 15
  %i.q = icmp ult i64 %i.l, 256
  br i1 %i.q, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.e
  %.pre.i.i.i = and i64 %i.l, 255
  br label %bb.g

bb.f:                                             ; preds = %.preheader.i.i.i
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !10001 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 14
  store i8 %i.p, ptr %i.s, align 2, !tbaa !10085
  br label %bb.g

.preheader.i.i.i:                                 ; preds = %bb.e, %.preheader.i.i.i
  %.017.i.i.i = phi i64 [ %i.v, %.preheader.i.i.i ], [ 0, %bb.e ] ; 2 uses
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !10001
  %i.u = getelementptr inbounds nuw [128 x i8], ptr %i.t, i64 %.017.i.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.u, i8 0, i64 16, i1 false)
  %i.v = add nuw i64 %.017.i.i.i, 1               ; 2 uses
  %i.w = load i64, ptr %i.k, align 8, !tbaa !476
  %i.x = and i64 %i.w, 255                        ; 2 uses
  %.0.highbits.i.i.i = lshr i64 %i.v, %i.x
  %i.y = icmp eq i64 %.0.highbits.i.i.i, 0
  br i1 %i.y, label %.preheader.i.i.i, label %bb.f, !llvm.loop !10178

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.x, %bb.f ] ; 2 uses
  %i.z = phi ptr [ %i.g, %._crit_edge.i.i.i ], [ %i.r, %bb.f ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.aa, align 8, !tbaa !117
  store i64 %.pre-phi.i.i.i, ptr %i.k, align 8, !tbaa !476
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %i.ab = phi i64 [ %.pre-phi.i.i.i, %bb.g ], [ %i.l, %bb.d ] ; 2 uses
  %i.ac = phi ptr [ %i.z, %bb.g ], [ %i.g, %bb.d ] ; 2 uses
  br i1 %.not.i.i.i, label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE5clearEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 14
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !16
  %i.af = icmp eq i64 %i.ab, 0
  %i.ag = shl i8 %i.ae, 3
  %i.ah = and i8 %i.ag, 120
  %narrow.i.i.i = add nuw i8 %i.ah, 16
  %i.ai = zext i8 %narrow.i.i.i to i64
  %i.aj = shl i64 128, %i.ab
  %.0.i.i.i.i = select i1 %i.af, i64 %i.ai, i64 %i.aj
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.f, align 8, !tbaa !10001
  store i64 0, ptr %i.k, align 8, !tbaa !476
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %.0.i.i.i.i) #35
  br label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE5clearEv.exit

_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE5clearEv.exit: ; preds = %bb.c, %bb.h, %bb.i
  tail call void @_ZN8facebook5velox9functions26MapSubsetPrimitiveFunctionINS0_4exec10VectorExecEdE20initializeSearchKeysERKNS3_9ArrayViewILb1EdEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE5clearEv.exit, %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !476 ; 2 uses
  %i.an = icmp ult i64 %i.am, 256
  br i1 %i.an, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !10019, !noalias !10179 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !10020, !noalias !10179 ; 2 uses
  %i.as = load ptr, ptr %2, align 8, !tbaa !10016, !noalias !10179
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !10018, !noalias !10179 ; 3 uses
  %i.av = add nsw i32 %i.ar, %i.ap
  %i.aw = icmp eq i32 %i.ar, 0
  br i1 %i.aw, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.ax = lshr i64 %i.am, 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 37 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, <2 x i64> <i64 8, i64 56>
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bi = sext i32 %i.ap to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE4findIdEENS1_11F14ItemIterIPNS1_8F14ChunkIdEEEERKT_.exit.thread
  %indvars.iv = phi i64 [ %i.bi, %.lr.ph ], [ %indvars.iv.next, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE4findIdEENS1_11F14ItemIterIPNS1_8F14ChunkIdEEEERKT_.exit.thread ] ; 6 uses
  %.0112 = phi i64 [ %i.ax, %.lr.ph ], [ %.1.ph, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE4findIdEENS1_11F14ItemIterIPNS1_8F14ChunkIdEEEERKT_.exit.thread ] ; 5 uses
  %i.bj = load ptr, ptr %i.as, align 8, !tbaa !10059, !noalias !10182, !nonnull !57, !align !179 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !728, !noalias !10182
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 58
  %i.bn = load i8, ptr %i.bm, align 2, !tbaa !458, !range !56, !noalias !10182, !noundef !57
  %i.bo = trunc nuw i8 %i.bn to i1
  %i.bp = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  br i1 %i.bo, label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EdNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 59
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !459, !range !56, !noalias !10182, !noundef !57
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !460, !noalias !10182
  br label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EdNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit

bb.o:                                             ; preds = %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !461, !noalias !10182
  %i.bx = shl nsw i64 %indvars.iv, 2
  %i.by = getelementptr inbounds i8, ptr %i.bw, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !3, !noalias !10182
  br label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EdNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit

_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EdNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit: ; preds = %bb.l, %bb.n, %bb.o
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bz, %bb.o ], [ %i.bu, %bb.n ], [ %i.bp, %bb.l ]
  %i.ca = sext i32 %.0.i.i.i.i.i.i.i to i64
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.ca
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !6352, !noalias !10182 ; 8 uses
  %i.cd = load i64, ptr %i.al, align 8, !tbaa !476
  %i.ce = lshr i64 %i.cd, 8
  switch i64 %i.ce, label %bb.q [
    i64 0, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE4findIdEENS1_11F14ItemIterIPNS1_8F14ChunkIdEEEERKT_.exit.thread
    i64 1, label %bb.p
  ]

bb.p:                                             ; preds = %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EdNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit
  %i.cf = load i64, ptr %i.ay, align 8, !tbaa !10086
  %i.cg = and i64 %i.cf, -8
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = fcmp uno double %i.cc, 0.000000e+00
  %i.cj = load double, ptr %i.ch, align 8         ; 2 uses
  %i.ck = fcmp uno double %i.cj, 0.000000e+00
  %or.cond.i.i = select i1 %i.ci, i1 %i.ck, i1 false
  %i.cl = fcmp oeq double %i.cc, %i.cj
  %.0.i.i25 = select i1 %or.cond.i.i, i1 true, i1 %i.cl
  br i1 %.0.i.i25, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE4findIdEENS1_11F14ItemIterIPNS1_8F14ChunkIdEEEERKT_.exit.thread82, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE4findIdEENS1_11F14ItemIterIPNS1_8F14ChunkIdEEEERKT_.exit.thread

bb.q:                                             ; preds = %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EdNS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit
  %i.cm = load atomic i8, ptr @_ZGVZNK8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEclERKdE8kNanHash acquire, align 8
  %i.cn = icmp eq i8 %i.cm, 0
  br i1 %i.cn, label %bb.r, label %bb.s, !prof !33

bb.r:                                             ; preds = %bb.q
  %i.co = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEclERKdE8kNanHash) #35
  %.not.i.i.i26 = icmp eq i32 %i.co, 0
  br i1 %.not.i.i.i26, label %bb.s, label %_ZNK5folly6detail12float_hasherIdEclERKd.exit.i.i.i

_ZNK5folly6detail12float_hasherIdEclERKd.exit.i.i.i: ; preds = %bb.r
  store i64 1573955859343395728, ptr @_ZZNK8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEclERKdE8kNanHash, align 8, !tbaa !117
  %i.cp = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZNK8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEclERKdE8kNanHash) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZNK8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEclERKdE8kNanHash) #35
  br label %bb.s

bb.s:                                             ; preds = %_ZNK5folly6detail12float_hasherIdEclERKd.exit.i.i.i, %bb.r, %bb.q
  %i.cq = fcmp uno double %i.cc, 0.000000e+00     ; 2 uses
  br i1 %i.cq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cr = load i64, ptr @_ZZNK8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEclERKdE8kNanHash, align 8, !tbaa !117
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE11computeHashIdEESt4pairImmERKT_.exit

bb.u:                                             ; preds = %bb.s
  %i.cs = fcmp oeq double %i.cc, 0.000000e+00
  br i1 %i.cs, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE11computeHashIdEESt4pairImmERKT_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ct = bitcast double %i.cc to i64             ; 2 uses
  %i.cu = xor i64 %i.ct, -1
  %i.cv = shl i64 %i.ct, 21
  %i.cw = add i64 %i.cv, %i.cu                    ; 2 uses
  %i.cx = lshr i64 %i.cw, 24
  %i.cy = xor i64 %i.cx, %i.cw
  %i.cz = mul i64 %i.cy, 265                      ; 2 uses
  %i.da = lshr i64 %i.cz, 14
  %i.db = xor i64 %i.da, %i.cz
  %i.dc = mul i64 %i.db, 21                       ; 2 uses
  %i.dd = lshr i64 %i.dc, 28
  %i.de = xor i64 %i.dd, %i.dc
  %i.df = mul i64 %i.de, 2147483649
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE11computeHashIdEESt4pairImmERKT_.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE11computeHashIdEESt4pairImmERKT_.exit: ; preds = %bb.t, %bb.u, %bb.v
  %.0.i.i.i = phi i64 [ %i.cr, %bb.t ], [ %i.df, %bb.v ], [ 0, %bb.u ] ; 2 uses
  %i.dg = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %.0.i.i.i) ; 2 uses
  %i.dh = lshr i64 %i.dg, 24
  %i.di = or i64 %i.dh, 128                       ; 2 uses
  %i.dj = add i64 %i.dg, %.0.i.i.i
  %i.dk = shl nuw nsw i64 %i.di, 1
  %i.dl = or disjoint i64 %i.dk, 1
  %i.dm = trunc nuw i64 %i.di to i8
  %i.dn = insertelement <16 x i8> poison, i8 %i.dm, i64 0
  %i.do = shufflevector <16 x i8> %i.dn, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.dp = load i64, ptr %i.al, align 8, !tbaa !476
  %i.dq = and i64 %i.dp, 255                      ; 2 uses
  %i.dr = shl nuw i64 1, %i.dq
  %i.ds = load ptr, ptr %i.ak, align 8, !tbaa !10001
  br label %bb.w

bb.w:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE11computeHashIdEESt4pairImmERKT_.exit, %bb.z
  %.0.i.i109 = phi i64 [ %i.dj, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE11computeHashIdEESt4pairImmERKT_.exit ], [ %i.eo, %bb.z ] ; 2 uses
  %.023.i.i108 = phi i64 [ %i.dr, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE11computeHashIdEESt4pairImmERKT_.exit ], [ %i.en, %bb.z ]
  %i.dt = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i109, i64 range(i64 0, 256) %i.dq)
  %i.du = getelementptr inbounds nuw [128 x i8], ptr %i.ds, i64 %i.dt ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 80
  call void @llvm.prefetch.p0(ptr nonnull %i.dw, i32 0, i32 3, i32 1)
  %i.dx = load <16 x i8>, ptr %i.du, align 16     ; 2 uses
  %i.dy = icmp eq <16 x i8> %i.dx, %i.do
  %i.dz = bitcast <16 x i1> %i.dy to i16
  %i.ea = and i16 %i.dz, 16383
  %i.eb = zext nneg i16 %i.ea to i32
  %i.ec = icmp ne ptr %i.du, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.ed = extractelement <16 x i8> %i.dx, i64 15
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.x, %bb.w
  %.sroa.054.0 = phi i32 [ %i.eb, %bb.w ], [ %i.eg, %bb.x ] ; 4 uses
  %.not = icmp eq i32 %.sroa.054.0, 0
  br i1 %.not, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.critedge.i.i
  %i.ee = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.054.0, i1 true)
  %i.ef = add nsw i32 %.sroa.054.0, -1
  %i.eg = and i32 %i.ef, %.sroa.054.0
  %i.eh = zext nneg i32 %i.ee to i64
  call void @llvm.assume(i1 %i.ec)
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.eh
  %i.ej = load double, ptr %i.ei, align 8         ; 2 uses
  %i.ek = fcmp uno double %i.ej, 0.000000e+00
  %or.cond.i.i27 = select i1 %i.cq, i1 %i.ek, i1 false
  %i.el = fcmp oeq double %i.cc, %i.ej
  %.0.i.i28 = select i1 %or.cond.i.i27, i1 true, i1 %i.el
  br i1 %.0.i.i28, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE4findIdEENS1_11F14ItemIterIPNS1_8F14ChunkIdEEEERKT_.exit.thread82, label %.critedge.i.i, !prof !232, !llvm.loop !10080

bb.y:                                             ; preds = %.critedge.i.i
  %i.em = icmp eq i8 %i.ed, 0
  br i1 %i.em, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE4findIdEENS1_11F14ItemIterIPNS1_8F14ChunkIdEEEERKT_.exit.thread, label %bb.z, !prof !232

bb.z:                                             ; preds = %bb.y
  %i.en = add i64 %.023.i.i108, -1                ; 2 uses
  %i.eo = add i64 %i.dl, %.0.i.i109
  %.not.i.i = icmp eq i64 %i.en, 0
  br i1 %.not.i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE4findIdEENS1_11F14ItemIterIPNS1_8F14ChunkIdEEEERKT_.exit.thread, label %bb.w, !llvm.loop !10081

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE4findIdEENS1_11F14ItemIterIPNS1_8F14ChunkIdEEEERKT_.exit.thread82: ; preds = %bb.x, %bb.p
  %i.ep = load ptr, ptr %i.au, align 8, !tbaa !562, !nonnull !57, !align !179 ; 5 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !735 ; 4 uses
  %.not.i.i.i29 = icmp eq ptr %i.er, null
  br i1 %.not.i.i.i29, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE4findIdEENS1_11F14ItemIterIPNS1_8F14ChunkIdEEEERKT_.exit.thread82
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 58
  %i.et = load i8, ptr %i.es, align 2, !tbaa !458, !range !56, !noundef !57
  %i.eu = trunc nuw i8 %i.et to i1
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ep, i64 57
  %i.ew = load i8, ptr %i.ev, align 1, !range !56
  %i.ex = trunc nuw i8 %i.ew to i1
  %or.cond.i.i.i = select i1 %i.eu, i1 true, i1 %i.ex
  br i1 %or.cond.i.i.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ey = lshr i64 %indvars.iv, 6
  %i.ez = and i64 %i.ey, 67108863
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.ez
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !117
  %i.fc = and i64 %indvars.iv, 63
  %i.fd = shl nuw i64 1, %i.fc
  %i.fe = and i64 %i.fb, %i.fd
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit

bb.ac:                                            ; preds = %bb.aa
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ep, i64 59
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !459, !range !56, !noundef !57
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %bb.ad, label %bb.ae

end_hunk_6
begin_hunk_7_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS3_10VectorExecENS0_9TimestampEEESB_NS0_3MapISC_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSJ_NS0_5ArrayISC_EEEEEJSJ_SM_EEEE8applyUdfIZNKSP_7iterateIJNS3_12VectorReaderISJ_EENSS_ISM_EEEEEvRNSP_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSW_S10_EUlS10_E_ZNKSQ_IS15_EEvSW_S10_EUlS10_E0_EEvRKS1_S10_S12_EUlS10_E_EEvS10_:bb.a
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ec, i64 80
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !10451 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !790
  %i.fe = load ptr, ptr %i.fb, align 8, !tbaa !46
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 144
  %i.fg = load ptr, ptr %i.ff, align 8
  invoke void %i.fg(ptr noundef nonnull align 8 dereferenceable(94) %i.fb, i32 noundef %i.fd, i1 noundef zeroext true)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecENS0_9TimestampEEES7_NS0_3MapIS8_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSF_NS0_5ArrayIS8_EEEEEJSF_SI_EEEE8applyUdfIZNKSL_7iterateIJNS1_12VectorReaderISF_EENSO_ISI_EEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSS_SW_ENKUlSW_E0_clIiEEDaSW_.exit unwind label %.loopexit43, !inline_history !10461

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecENS0_9TimestampEEES7_NS0_3MapIS8_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSF_NS0_5ArrayIS8_EEEEEJSF_SI_EEEE8applyUdfIZNKSL_7iterateIJNS1_12VectorReaderISF_EENSO_ISI_EEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSS_SW_ENKUlSW_E0_clIiEEDaSW_.exit: ; preds = %.noexc33
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %6) #35
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.aj, i32 noundef %i.av, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecENS0_9TimestampEEES7_NS0_3MapIS8_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSF_NS0_5ArrayIS8_EEEEEJSF_SI_EEEE8applyUdfIZNKSL_7iterateIJNS1_12VectorReaderISF_EENSO_ISI_EEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSS_SW_ENKUlSW_E0_clIiEEDaSW_.exit
  %i.fh = load ptr, ptr %6, align 8, !tbaa !410
  %.not.i36 = icmp eq ptr %i.fh, null
  br i1 %.not.i36, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #35
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecENS0_9TimestampEEES9_NS0_3MapISA_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSH_NS0_5ArrayISA_EEEEEJSH_SK_EEEE8applyUdfIZNKSN_7iterateIJNS1_12VectorReaderISH_EENSQ_ISK_EEEEEvRNSN_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSU_SY_EUlSY_E_ZNKSO_IS13_EEvSU_SY_EUlSY_E0_EEvRKNS0_17SelectivityVectorESY_S10_ENKUlSY_E_clIiEEDaSY_.exit

bb.af:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecENS0_9TimestampEEES7_NS0_3MapIS8_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSF_NS0_5ArrayIS8_EEEEEJSF_SI_EEEE8applyUdfIZNKSL_7iterateIJNS1_12VectorReaderISF_EENSO_ISI_EEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSS_SW_ENKUlSW_E0_clIiEEDaSW_.exit
  %i.fi = landingpad { ptr, i32 }
          cleanup
  %i.fj = load ptr, ptr %6, align 8, !tbaa !410
  %.not.i38 = icmp eq ptr %i.fj, null
  br i1 %.not.i38, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #35
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39: ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit43, %.loopexit.split-lp, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39
  %.pn16.i = phi { ptr, i32 } [ %i.fi, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39 ], [ %lpad.loopexit, %.loopexit43 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @__cxa_end_catch()
          to label %.loopexit41 unwind label %bb.ai

.loopexit41:                                      ; preds = %bb.v, %bb.ah, %bb.ac
  %.merged.i = phi { ptr, i32 } [ %.pn.i, %bb.ac ], [ %.pn16.i, %bb.ah ], [ %eh.lpad-body, %bb.v ]
  resume { ptr, i32 } %.merged.i

bb.ai:                                            ; preds = %bb.ah, %bb.ac
  %i.fk = landingpad { ptr, i32 }
          catch ptr null
  %i.fl = extractvalue { ptr, i32 } %i.fk, 0
  call void @__clang_call_terminate(ptr %i.fl) #43
  unreachable

bb.aj:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecENS0_9TimestampEEES9_NS0_3MapISA_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSH_NS0_5ArrayISA_EEEEEJSH_SK_EEEE8applyUdfIZNKSN_7iterateIJNS1_12VectorReaderISH_EENSQ_ISK_EEEEEvRNSN_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSU_SY_EUlSY_E_ZNKSO_IS13_EEvSU_SY_EUlSY_E0_EEvRKNS0_17SelectivityVectorESY_S10_ENKUlSY_E_clIiEEDaSY_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit26, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit40, label %bb.i, !llvm.loop !10509

bb.ak:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.fm = load ptr, ptr %0, align 8, !tbaa !421
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !432
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !433
  tail call void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS3_10VectorExecENS0_9TimestampEEESB_NS0_3MapISC_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSJ_NS0_5ArrayISC_EEEEEJSJ_SM_EEEE8applyUdfIZNKSP_7iterateIJNS3_12VectorReaderISJ_EENSS_ISM_EEEEEvRNSP_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSW_S10_EUlS10_E_ZNKSQ_IS15_EEvSW_S10_EUlS10_E0_EEvRKNS0_17SelectivityVectorES10_S12_EUlS10_E_EEvPKmiibS10_(ptr noundef %i.fm, i32 noundef %i.fo, i32 noundef %i.fq, i1 noundef zeroext true, ptr noundef nonnull byval(%class.anon.3045) align 8 %1)
  br label %.loopexit40

.loopexit40:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecENS0_9TimestampEEES9_NS0_3MapISA_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSH_NS0_5ArrayISA_EEEEEJSH_SK_EEEE8applyUdfIZNKSN_7iterateIJNS1_12VectorReaderISH_EENSQ_ISK_EEEEEvRNSN_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSU_SY_EUlSY_E_ZNKSO_IS13_EEvSU_SY_EUlSY_E0_EEvRKNS0_17SelectivityVectorESY_S10_ENKUlSY_E_clIiEEDaSY_.exit, %bb.h, %bb.ak
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox9functions26MapSubsetPrimitiveFunctionINS0_4exec10VectorExecENS0_9TimestampEE4callERNS3_9MapWriterIS5_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEERKNS3_7MapViewILb1ES5_SB_EERKNS3_9ArrayViewILb1ES5_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #23 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.facebook::velox::exec::GenericView", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !10386
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %0, align 8, !tbaa !10374, !range !56, !noundef !57
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !10339 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 15
  %i.i = load i8, ptr %i.h, align 1, !tbaa !473
  %i.j = icmp eq i8 %i.i, -1
  br i1 %i.j, label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE5clearEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !476  ; 4 uses
  %i.m = and i64 %i.l, 252
  %.not.i.i.i = icmp eq i64 %i.m, 0               ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 14
  %i.o = load i8, ptr %i.n, align 1, !tbaa !16
  %i.p = and i8 %i.o, 15
  %i.q = icmp ult i64 %i.l, 256
  br i1 %i.q, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.e
  %.pre.i.i.i = and i64 %i.l, 255
  br label %bb.g

bb.f:                                             ; preds = %.preheader.i.i.i
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !10339 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 14
  store i8 %i.p, ptr %i.s, align 2, !tbaa !10417
  br label %bb.g

.preheader.i.i.i:                                 ; preds = %bb.e, %.preheader.i.i.i
  %.017.i.i.i = phi i64 [ %i.v, %.preheader.i.i.i ], [ 0, %bb.e ] ; 2 uses
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !10339
  %i.u = getelementptr inbounds nuw [256 x i8], ptr %i.t, i64 %.017.i.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.u, i8 0, i64 16, i1 false)
  %i.v = add nuw i64 %.017.i.i.i, 1               ; 2 uses
  %i.w = load i64, ptr %i.k, align 8, !tbaa !476
  %i.x = and i64 %i.w, 255                        ; 2 uses
  %.0.highbits.i.i.i = lshr i64 %i.v, %i.x
  %i.y = icmp eq i64 %.0.highbits.i.i.i, 0
  br i1 %i.y, label %.preheader.i.i.i, label %bb.f, !llvm.loop !10510

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.x, %bb.f ] ; 2 uses
  %i.z = phi ptr [ %i.g, %._crit_edge.i.i.i ], [ %i.r, %bb.f ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.aa, align 8, !tbaa !117
  store i64 %.pre-phi.i.i.i, ptr %i.k, align 8, !tbaa !476
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %i.ab = phi i64 [ %.pre-phi.i.i.i, %bb.g ], [ %i.l, %bb.d ] ; 2 uses
  %i.ac = phi ptr [ %i.z, %bb.g ], [ %i.g, %bb.d ] ; 2 uses
  br i1 %.not.i.i.i, label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE5clearEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 14
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !16
  %i.af = icmp eq i64 %i.ab, 0
  %i.ag = shl i8 %i.ae, 4
  %i.ah = zext i8 %i.ag to i64
  %i.ai = add nuw nsw i64 %i.ah, 16
  %i.aj = shl i64 256, %i.ab
  %.0.i.i.i.i = select i1 %i.af, i64 %i.ai, i64 %i.aj
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.f, align 8, !tbaa !10339
  store i64 0, ptr %i.k, align 8, !tbaa !476
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %.0.i.i.i.i) #35
  br label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE5clearEv.exit

_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE5clearEv.exit: ; preds = %bb.c, %bb.h, %bb.i
  tail call void @_ZN8facebook5velox9functions26MapSubsetPrimitiveFunctionINS0_4exec10VectorExecENS0_9TimestampEE20initializeSearchKeysERKNS3_9ArrayViewILb1ES5_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE5clearEv.exit, %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !476 ; 2 uses
  %i.an = icmp ult i64 %i.am, 256
  br i1 %i.an, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !10357, !noalias !10511 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !10358, !noalias !10511 ; 2 uses
  %i.as = load ptr, ptr %2, align 8, !tbaa !10354, !noalias !10511
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !10356, !noalias !10511 ; 3 uses
  %i.av = add nsw i32 %i.ar, %i.ap
  %i.aw = icmp eq i32 %i.ar, 0
  br i1 %i.aw, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.ax = lshr i64 %i.am, 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 37 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, <2 x i64> <i64 8, i64 56>
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bi = sext i32 %i.ap to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread
  %indvars.iv = phi i64 [ %i.bi, %.lr.ph ], [ %indvars.iv.next, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread ] ; 6 uses
  %.0107 = phi i64 [ %i.ax, %.lr.ph ], [ %.1.ph, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread ] ; 5 uses
  %i.bj = load ptr, ptr %i.as, align 8, !tbaa !10397, !noalias !10514, !nonnull !57, !align !179 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !728, !noalias !10514
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 58
  %i.bn = load i8, ptr %i.bm, align 2, !tbaa !458, !range !56, !noalias !10514, !noundef !57
  %i.bo = trunc nuw i8 %i.bn to i1
  %i.bp = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  br i1 %i.bo, label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 59
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !459, !range !56, !noalias !10514, !noundef !57
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !460, !noalias !10514
  br label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit

bb.o:                                             ; preds = %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !461, !noalias !10514
  %i.bx = shl nsw i64 %indvars.iv, 2
  %i.by = getelementptr inbounds i8, ptr %i.bw, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !3, !noalias !10514
  br label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit

_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit: ; preds = %bb.l, %bb.n, %bb.o
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bz, %bb.o ], [ %i.bu, %bb.n ], [ %i.bp, %bb.l ]
  %i.ca = sext i32 %.0.i.i.i.i.i.i.i to i64
  %i.cb = getelementptr inbounds [16 x i8], ptr %i.bl, i64 %i.ca ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.cb, align 8, !tbaa !117, !noalias !10514 ; 6 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !117, !noalias !10514 ; 5 uses
  %i.cc = load i64, ptr %i.al, align 8, !tbaa !476 ; 2 uses
  %i.cd = lshr i64 %i.cc, 8
  switch i64 %i.cd, label %bb.q [
    i64 0, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread
    i64 1, label %bb.p
  ]

bb.p:                                             ; preds = %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit
  %i.ce = load i64, ptr %i.ay, align 8, !tbaa !10418
  %i.cf = and i64 %i.ce, -16
  %i.cg = inttoptr i64 %i.cf to ptr               ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 16, !tbaa !7646
  %i.ci = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ck = load i64, ptr %i.cj, align 8
  %i.cl = icmp eq i64 %.sroa.2.0.copyload.i.i.i.i.i.i, %i.ck
  %i.cm = select i1 %i.ci, i1 %i.cl, i1 false
  br i1 %i.cm, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread77, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread

bb.q:                                             ; preds = %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit
  %i.cn = xor i64 %.sroa.2.0.copyload.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i
  %i.co = mul i64 %i.cn, -7070675565921424023     ; 2 uses
  %i.cp = lshr i64 %i.co, 47
  %i.cq = xor i64 %.sroa.0.0.copyload.i.i.i.i.i.i, %i.cp
  %i.cr = xor i64 %i.cq, %i.co
  %i.cs = mul i64 %i.cr, -7070675565921424023     ; 2 uses
  %i.ct = lshr i64 %i.cs, 47
  %i.cu = xor i64 %i.ct, %i.cs
  %i.cv = mul i64 %i.cu, -7070675565921424023     ; 2 uses
  %i.cw = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.cv) ; 2 uses
  %i.cx = lshr i64 %i.cw, 24
  %i.cy = or i64 %i.cx, 128                       ; 2 uses
  %i.cz = add i64 %i.cw, %i.cv
  %i.da = shl nuw nsw i64 %i.cy, 1
  %i.db = or disjoint i64 %i.da, 1
  %i.dc = trunc nuw i64 %i.cy to i8
  %i.dd = insertelement <16 x i8> poison, i8 %i.dc, i64 0
  %i.de = shufflevector <16 x i8> %i.dd, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.df = and i64 %i.cc, 255                      ; 2 uses
  %i.dg = shl nuw i64 1, %i.df
  %i.dh = load ptr, ptr %i.ak, align 8, !tbaa !10339
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.u
  %.0.i.i104 = phi i64 [ %i.cz, %bb.q ], [ %i.eg, %bb.u ] ; 2 uses
  %.023.i.i103 = phi i64 [ %i.dg, %bb.q ], [ %i.ef, %bb.u ]
  %i.di = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i104, i64 range(i64 0, 256) %i.df)
  %i.dj = getelementptr inbounds nuw [256 x i8], ptr %i.dh, i64 %i.di ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 144
  call void @llvm.prefetch.p0(ptr nonnull %i.dl, i32 0, i32 3, i32 1)
  %i.dm = load <16 x i8>, ptr %i.dj, align 16     ; 2 uses
  %i.dn = icmp eq <16 x i8> %i.dm, %i.de
  %i.do = bitcast <16 x i1> %i.dn to i16
  %i.dp = and i16 %i.do, 16383
  %i.dq = zext nneg i16 %i.dp to i32
  %i.dr = icmp ne ptr %i.dj, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.ds = extractelement <16 x i8> %i.dm, i64 15
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.s, %bb.r
  %.sroa.049.0 = phi i32 [ %i.dq, %bb.r ], [ %i.dv, %bb.s ] ; 4 uses
  %.not = icmp eq i32 %.sroa.049.0, 0
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.critedge.i.i
  %i.dt = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.049.0, i1 true)
  %i.du = add nsw i32 %.sroa.049.0, -1
  %i.dv = and i32 %i.du, %.sroa.049.0
  %i.dw = zext nneg i32 %i.dt to i64
  call void @llvm.assume(i1 %i.dr)
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.dk, i64 %i.dw ; 2 uses
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !7646
  %i.dz = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i, %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.eb = load i64, ptr %i.ea, align 8
  %i.ec = icmp eq i64 %.sroa.2.0.copyload.i.i.i.i.i.i, %i.eb
  %i.ed = select i1 %i.dz, i1 %i.ec, i1 false
  br i1 %i.ed, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread77, label %.critedge.i.i, !prof !232, !llvm.loop !10411

bb.t:                                             ; preds = %.critedge.i.i
  %i.ee = icmp eq i8 %i.ds, 0
  br i1 %i.ee, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread, label %bb.u, !prof !232

bb.u:                                             ; preds = %bb.t
  %i.ef = add i64 %.023.i.i103, -1                ; 2 uses
  %i.eg = add i64 %i.db, %.0.i.i104
  %.not.i.i = icmp eq i64 %i.ef, 0
  br i1 %.not.i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread, label %bb.r, !llvm.loop !10412

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread77: ; preds = %bb.s, %bb.p
  %i.eh = load ptr, ptr %i.au, align 8, !tbaa !562, !nonnull !57, !align !179 ; 5 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !735 ; 4 uses
  %.not.i.i.i25 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i25, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread, label %bb.v

bb.v:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread77
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 58
  %i.el = load i8, ptr %i.ek, align 2, !tbaa !458, !range !56, !noundef !57
  %i.em = trunc nuw i8 %i.el to i1
  %i.en = getelementptr inbounds nuw i8, ptr %i.eh, i64 57
  %i.eo = load i8, ptr %i.en, align 1, !range !56
  %i.ep = trunc nuw i8 %i.eo to i1
  %or.cond.i.i.i = select i1 %i.em, i1 true, i1 %i.ep
  br i1 %or.cond.i.i.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.eq = lshr i64 %indvars.iv, 6
  %i.er = and i64 %i.eq, 67108863
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.er
  %i.et = load i64, ptr %i.es, align 8, !tbaa !117
  %i.eu = and i64 %indvars.iv, 63
  %i.ev = shl nuw i64 1, %i.eu
  %i.ew = and i64 %i.et, %i.ev
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit

bb.x:                                             ; preds = %bb.v
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eh, i64 59
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !459, !range !56, !noundef !57
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fa = load i64, ptr %i.ej, align 8, !tbaa !117
  %i.fb = and i64 %i.fa, 1
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit

bb.z:                                             ; preds = %bb.x
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !461
  %i.fe = shl nsw i64 %indvars.iv, 2
  %i.ff = getelementptr inbounds i8, ptr %i.fd, i64 %i.fe
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !3
  %i.fh = zext i32 %i.fg to i64                   ; 2 uses
  %i.fi = lshr i64 %i.fh, 6
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.fi
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !117
  %i.fl = and i64 %i.fh, 63
  %i.fm = shl nuw i64 1, %i.fl
  %i.fn = and i64 %i.fm, %i.fk
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit: ; preds = %bb.w, %bb.y, %bb.z
  %.0.i.i.i.in = phi i64 [ %i.ew, %bb.w ], [ %i.fb, %bb.y ], [ %i.fn, %bb.z ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %bb.aa, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread

bb.aa:                                            ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit
  %i.fo = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %1) ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i, ptr %i.fo, align 8, !tbaa !117
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  store i64 %.sroa.2.0.copyload.i.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !117
  br label %bb.ad

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread: ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread77, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit
  %i.fp = load i32, ptr %i.az, align 8, !tbaa !10446, !noalias !10519 ; 2 uses
end_hunk_7
begin_hunk_8_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS3_10VectorExecENS0_4DateEEESB_NS0_3MapISC_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSJ_NS0_5ArrayISC_EEEEEJSJ_SM_EEEE8applyUdfIZNKSP_7iterateIJNS3_12VectorReaderISJ_EENSS_ISM_EEEEEvRNSP_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSW_S10_EUlS10_E_ZNKSQ_IS15_EEvSW_S10_EUlS10_E0_EEvRKS1_S10_S12_EUlS10_E_EEvS10_:bb.a
          cleanup
  br label %bb.ah

.noexc33:                                         ; preds = %tailrecurse.i.i.i.i.3
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ec, i64 80
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !10742 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !790
  %i.fe = load ptr, ptr %i.fb, align 8, !tbaa !46
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 144
  %i.fg = load ptr, ptr %i.ff, align 8
  invoke void %i.fg(ptr noundef nonnull align 8 dereferenceable(94) %i.fb, i32 noundef %i.fd, i1 noundef zeroext true)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecENS0_4DateEEES7_NS0_3MapIS8_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSF_NS0_5ArrayIS8_EEEEEJSF_SI_EEEE8applyUdfIZNKSL_7iterateIJNS1_12VectorReaderISF_EENSO_ISI_EEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSS_SW_ENKUlSW_E0_clIiEEDaSW_.exit unwind label %.loopexit43, !inline_history !10754

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecENS0_4DateEEES7_NS0_3MapIS8_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSF_NS0_5ArrayIS8_EEEEEJSF_SI_EEEE8applyUdfIZNKSL_7iterateIJNS1_12VectorReaderISF_EENSO_ISI_EEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSS_SW_ENKUlSW_E0_clIiEEDaSW_.exit: ; preds = %.noexc33
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %6) #35
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.aj, i32 noundef %i.av, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecENS0_4DateEEES7_NS0_3MapIS8_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSF_NS0_5ArrayIS8_EEEEEJSF_SI_EEEE8applyUdfIZNKSL_7iterateIJNS1_12VectorReaderISF_EENSO_ISI_EEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSS_SW_ENKUlSW_E0_clIiEEDaSW_.exit
  %i.fh = load ptr, ptr %6, align 8, !tbaa !410
  %.not.i36 = icmp eq ptr %i.fh, null
  br i1 %.not.i36, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #35
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecENS0_4DateEEES9_NS0_3MapISA_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSH_NS0_5ArrayISA_EEEEEJSH_SK_EEEE8applyUdfIZNKSN_7iterateIJNS1_12VectorReaderISH_EENSQ_ISK_EEEEEvRNSN_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSU_SY_EUlSY_E_ZNKSO_IS13_EEvSU_SY_EUlSY_E0_EEvRKNS0_17SelectivityVectorESY_S10_ENKUlSY_E_clIiEEDaSY_.exit

bb.af:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecENS0_4DateEEES7_NS0_3MapIS8_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSF_NS0_5ArrayIS8_EEEEEJSF_SI_EEEE8applyUdfIZNKSL_7iterateIJNS1_12VectorReaderISF_EENSO_ISI_EEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSS_SW_ENKUlSW_E0_clIiEEDaSW_.exit
  %i.fi = landingpad { ptr, i32 }
          cleanup
  %i.fj = load ptr, ptr %6, align 8, !tbaa !410
  %.not.i38 = icmp eq ptr %i.fj, null
  br i1 %.not.i38, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #35
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39: ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit43, %.loopexit.split-lp, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39
  %.pn16.i = phi { ptr, i32 } [ %i.fi, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39 ], [ %lpad.loopexit, %.loopexit43 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @__cxa_end_catch()
          to label %.loopexit41 unwind label %bb.ai

.loopexit41:                                      ; preds = %bb.v, %bb.ah, %bb.ac
  %.merged.i = phi { ptr, i32 } [ %.pn.i, %bb.ac ], [ %.pn16.i, %bb.ah ], [ %eh.lpad-body, %bb.v ]
  resume { ptr, i32 } %.merged.i

bb.ai:                                            ; preds = %bb.ah, %bb.ac
  %i.fk = landingpad { ptr, i32 }
          catch ptr null
  %i.fl = extractvalue { ptr, i32 } %i.fk, 0
  call void @__clang_call_terminate(ptr %i.fl) #43
  unreachable

bb.aj:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecENS0_4DateEEES9_NS0_3MapISA_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSH_NS0_5ArrayISA_EEEEEJSH_SK_EEEE8applyUdfIZNKSN_7iterateIJNS1_12VectorReaderISH_EENSQ_ISK_EEEEEvRNSN_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSU_SY_EUlSY_E_ZNKSO_IS13_EEvSU_SY_EUlSY_E0_EEvRKNS0_17SelectivityVectorESY_S10_ENKUlSY_E_clIiEEDaSY_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit26, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit40, label %bb.i, !llvm.loop !10805

bb.ak:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.fm = load ptr, ptr %0, align 8, !tbaa !421
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !432
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !433
  tail call void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS3_10VectorExecENS0_4DateEEESB_NS0_3MapISC_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSJ_NS0_5ArrayISC_EEEEEJSJ_SM_EEEE8applyUdfIZNKSP_7iterateIJNS3_12VectorReaderISJ_EENSS_ISM_EEEEEvRNSP_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSW_S10_EUlS10_E_ZNKSQ_IS15_EEvSW_S10_EUlS10_E0_EEvRKNS0_17SelectivityVectorES10_S12_EUlS10_E_EEvPKmiibS10_(ptr noundef %i.fm, i32 noundef %i.fo, i32 noundef %i.fq, i1 noundef zeroext true, ptr noundef nonnull byval(%class.anon.3142) align 8 %1)
  br label %.loopexit40

.loopexit40:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS1_10VectorExecENS0_4DateEEES9_NS0_3MapISA_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSH_NS0_5ArrayISA_EEEEEJSH_SK_EEEE8applyUdfIZNKSN_7iterateIJNS1_12VectorReaderISH_EENSQ_ISK_EEEEEvRNSN_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSU_SY_EUlSY_E_ZNKSO_IS13_EEvSU_SY_EUlSY_E0_EEvRKNS0_17SelectivityVectorESY_S10_ENKUlSY_E_clIiEEDaSY_.exit, %bb.h, %bb.ak
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox9functions26MapSubsetPrimitiveFunctionINS0_4exec10VectorExecENS0_4DateEE4callERNS3_9MapWriterIS5_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEERKNS3_7MapViewILb1ES5_SB_EERKNS3_9ArrayViewILb1ES5_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #23 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.facebook::velox::exec::GenericView", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !10711
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %0, align 8, !tbaa !10703, !range !56, !noundef !57
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !9000 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 15
  %i.i = load i8, ptr %i.h, align 1, !tbaa !473
  %i.j = icmp eq i8 %i.i, -1
  br i1 %i.j, label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIivvvvEEE5clearEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !476  ; 4 uses
  %i.m = and i64 %i.l, 252
  %.not.i.i.i = icmp eq i64 %i.m, 0               ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %.0.copyload.i.i.i.i.i = load i16, ptr %i.n, align 1
  %i.o = icmp ult i64 %i.l, 256
  br i1 %i.o, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %bb.g

bb.f:                                             ; preds = %.preheader.i.i.i
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !9000
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i16 %.0.copyload.i.i.i.i.i, ptr %i.q, align 1
  %.pre.i.i.i = load i64, ptr %i.k, align 8, !tbaa !476
  br label %bb.g

.preheader.i.i.i:                                 ; preds = %bb.e, %.preheader.i.i.i
  %.018.i.i.i = phi i64 [ %i.t, %.preheader.i.i.i ], [ 0, %bb.e ] ; 2 uses
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !9000
  %i.s = getelementptr inbounds nuw [64 x i8], ptr %i.r, i64 %.018.i.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.s, i8 0, i64 16, i1 false)
  %i.t = add nuw i64 %.018.i.i.i, 1               ; 2 uses
  %i.u = load i64, ptr %i.k, align 8, !tbaa !476
  %i.v = and i64 %i.u, 255
  %.0.highbits.i.i.i = lshr i64 %i.t, %i.v
  %i.w = icmp eq i64 %.0.highbits.i.i.i, 0
  br i1 %i.w, label %.preheader.i.i.i, label %bb.f, !llvm.loop !9171

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = phi i64 [ %.pre.i.i.i, %bb.f ], [ %i.l, %bb.e ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.y, align 8, !tbaa !117
  %i.z = and i64 %i.x, 255                        ; 2 uses
  store i64 %i.z, ptr %i.k, align 8, !tbaa !476
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %i.aa = phi i64 [ %i.z, %bb.g ], [ %i.l, %bb.d ] ; 2 uses
  br i1 %.not.i.i.i, label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIivvvvEEE5clearEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = load ptr, ptr %i.f, align 8, !tbaa !9000 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %.0.copyload.i17.i.i.i = load i16, ptr %i.ac, align 1
  %i.ad = zext i16 %.0.copyload.i17.i.i.i to i64
  %i.ae = icmp eq i64 %i.aa, 0
  %i.af = shl nuw nsw i64 %i.ad, 2
  %i.ag = add nuw nsw i64 %i.af, 16
  %i.ah = shl i64 64, %i.aa
  %.0.i.i.i.i = select i1 %i.ae, i64 %i.ag, i64 %i.ah
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.f, align 8, !tbaa !9000
  store i64 0, ptr %i.k, align 8, !tbaa !476
  tail call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %.0.i.i.i.i) #35
  br label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIivvvvEEE5clearEv.exit

_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIivvvvEEE5clearEv.exit: ; preds = %bb.c, %bb.h, %bb.i
  tail call void @_ZN8facebook5velox9functions26MapSubsetPrimitiveFunctionINS0_4exec10VectorExecENS0_4DateEE20initializeSearchKeysERKNS3_9ArrayViewILb1ES5_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIivvvvEEE5clearEv.exit, %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !476 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 256
  br i1 %i.al, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !10685, !noalias !10806 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !10686, !noalias !10806 ; 2 uses
  %i.aq = load ptr, ptr %2, align 8, !tbaa !10681, !noalias !10806
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !10684, !noalias !10806 ; 3 uses
  %i.at = add nsw i32 %i.ap, %i.an
  %i.au = icmp eq i32 %i.ap, 0
  br i1 %i.au, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.av = lshr i64 %i.ak, 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 37 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.as, <2 x i64> <i64 8, i64 56>
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bg = sext i32 %i.an to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE4findIiEENS1_11F14ItemIterIPNS1_8F14ChunkIiEEEERKT_.exit.thread
  %indvars.iv = phi i64 [ %i.bg, %.lr.ph ], [ %indvars.iv.next, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE4findIiEENS1_11F14ItemIterIPNS1_8F14ChunkIiEEEERKT_.exit.thread ] ; 6 uses
  %.0108 = phi i64 [ %i.av, %.lr.ph ], [ %.1.ph, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE4findIiEENS1_11F14ItemIterIPNS1_8F14ChunkIiEEEERKT_.exit.thread ] ; 5 uses
  %i.bh = load ptr, ptr %i.aq, align 8, !tbaa !10723, !noalias !10809, !nonnull !57, !align !179 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !728, !noalias !10809
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 58
  %i.bl = load i8, ptr %i.bk, align 2, !tbaa !458, !range !56, !noalias !10809, !noundef !57
  %i.bm = trunc nuw i8 %i.bl to i1
  %i.bn = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  br i1 %i.bm, label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_4DateENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 59
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !459, !range !56, !noalias !10809, !noundef !57
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !460, !noalias !10809
  br label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_4DateENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit

bb.o:                                             ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !461, !noalias !10809
  %i.bv = shl nsw i64 %indvars.iv, 2
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !3, !noalias !10809
  br label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_4DateENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit

_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_4DateENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit: ; preds = %bb.l, %bb.n, %bb.o
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bx, %bb.o ], [ %i.bs, %bb.n ], [ %i.bn, %bb.l ]
  %i.by = sext i32 %.0.i.i.i.i.i.i.i to i64
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !3, !noalias !10809 ; 5 uses
  %i.cb = load i64, ptr %i.aj, align 8, !tbaa !476 ; 2 uses
  %i.cc = lshr i64 %i.cb, 8
  switch i64 %i.cc, label %bb.q [
    i64 0, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE4findIiEENS1_11F14ItemIterIPNS1_8F14ChunkIiEEEERKT_.exit.thread
    i64 1, label %bb.p
  ]

bb.p:                                             ; preds = %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_4DateENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit
  %i.cd = load i64, ptr %i.aw, align 8, !tbaa !9079
  %i.ce = and i64 %i.cd, -4
  %i.cf = inttoptr i64 %i.ce to ptr
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !3
  %i.ch = icmp eq i32 %i.ca, %i.cg
  br i1 %i.ch, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE4findIiEENS1_11F14ItemIterIPNS1_8F14ChunkIiEEEERKT_.exit.thread78, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE4findIiEENS1_11F14ItemIterIPNS1_8F14ChunkIiEEEERKT_.exit.thread

bb.q:                                             ; preds = %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_4DateENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit
  %i.ci = sext i32 %i.ca to i64                   ; 2 uses
  %i.cj = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.ci) ; 2 uses
  %i.ck = lshr i64 %i.cj, 24
  %i.cl = or i64 %i.ck, 128                       ; 2 uses
  %i.cm = add nsw i64 %i.cj, %i.ci
  %i.cn = shl nuw nsw i64 %i.cl, 1
  %i.co = or disjoint i64 %i.cn, 1
  %i.cp = trunc nuw i64 %i.cl to i8
  %i.cq = insertelement <16 x i8> poison, i8 %i.cp, i64 0
  %i.cr = shufflevector <16 x i8> %i.cq, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.cs = and i64 %i.cb, 255                      ; 2 uses
  %i.ct = shl nuw i64 1, %i.cs
  %i.cu = load ptr, ptr %i.ai, align 8, !tbaa !9000
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.u
  %.0.i.i105 = phi i64 [ %i.cm, %bb.q ], [ %i.do, %bb.u ] ; 2 uses
  %.022.i.i104 = phi i64 [ %i.ct, %bb.q ], [ %i.dn, %bb.u ]
  %i.cv = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i105, i64 range(i64 0, 256) %i.cs)
  %i.cw = getelementptr inbounds nuw [64 x i8], ptr %i.cu, i64 %i.cv ; 3 uses
  %i.cx = load <16 x i8>, ptr %i.cw, align 16     ; 2 uses
  %i.cy = icmp eq <16 x i8> %i.cx, %i.cr
  %i.cz = bitcast <16 x i1> %i.cy to i16
  %i.da = and i16 %i.cz, 4095
  %i.db = zext nneg i16 %i.da to i32
  %i.dc = icmp ne ptr %i.cw, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.de = extractelement <16 x i8> %i.cx, i64 15
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.s, %bb.r
  %.sroa.050.0 = phi i32 [ %i.db, %bb.r ], [ %i.dh, %bb.s ] ; 4 uses
  %.not = icmp eq i32 %.sroa.050.0, 0
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.critedge.i.i
  %i.df = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.050.0, i1 true)
  %i.dg = add nsw i32 %.sroa.050.0, -1
  %i.dh = and i32 %i.dg, %.sroa.050.0
  %i.di = zext nneg i32 %i.df to i64
  call void @llvm.assume(i1 %i.dc)
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !3
  %i.dl = icmp eq i32 %i.ca, %i.dk
  br i1 %i.dl, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE4findIiEENS1_11F14ItemIterIPNS1_8F14ChunkIiEEEERKT_.exit.thread78, label %.critedge.i.i, !prof !232, !llvm.loop !9072

bb.t:                                             ; preds = %.critedge.i.i
  %i.dm = icmp eq i8 %i.de, 0
  br i1 %i.dm, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE4findIiEENS1_11F14ItemIterIPNS1_8F14ChunkIiEEEERKT_.exit.thread, label %bb.u, !prof !232

bb.u:                                             ; preds = %bb.t
  %i.dn = add i64 %.022.i.i104, -1                ; 2 uses
  %i.do = add i64 %i.co, %.0.i.i105
  %.not.i.i = icmp eq i64 %i.dn, 0
  br i1 %.not.i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE4findIiEENS1_11F14ItemIterIPNS1_8F14ChunkIiEEEERKT_.exit.thread, label %bb.r, !llvm.loop !9073

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE4findIiEENS1_11F14ItemIterIPNS1_8F14ChunkIiEEEERKT_.exit.thread78: ; preds = %bb.s, %bb.p
  %i.dp = load ptr, ptr %i.as, align 8, !tbaa !562, !nonnull !57, !align !179 ; 5 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !735 ; 4 uses
  %.not.i.i.i25 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i25, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread, label %bb.v

bb.v:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE4findIiEENS1_11F14ItemIterIPNS1_8F14ChunkIiEEEERKT_.exit.thread78
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 58
  %i.dt = load i8, ptr %i.ds, align 2, !tbaa !458, !range !56, !noundef !57
  %i.du = trunc nuw i8 %i.dt to i1
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 57
  %i.dw = load i8, ptr %i.dv, align 1, !range !56
  %i.dx = trunc nuw i8 %i.dw to i1
  %or.cond.i.i.i = select i1 %i.du, i1 true, i1 %i.dx
  br i1 %or.cond.i.i.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dy = lshr i64 %indvars.iv, 6
  %i.dz = and i64 %i.dy, 67108863
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.dz
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !117
  %i.ec = and i64 %indvars.iv, 63
  %i.ed = shl nuw i64 1, %i.ec
  %i.ee = and i64 %i.eb, %i.ed
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit

bb.x:                                             ; preds = %bb.v
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dp, i64 59
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !459, !range !56, !noundef !57
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ei = load i64, ptr %i.dr, align 8, !tbaa !117
  %i.ej = and i64 %i.ei, 1
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit

bb.z:                                             ; preds = %bb.x
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !461
  %i.em = shl nsw i64 %indvars.iv, 2
  %i.en = getelementptr inbounds i8, ptr %i.el, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !3
  %i.ep = zext i32 %i.eo to i64                   ; 2 uses
  %i.eq = lshr i64 %i.ep, 6
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.eq
  %i.es = load i64, ptr %i.er, align 8, !tbaa !117
  %i.et = and i64 %i.ep, 63
  %i.eu = shl nuw i64 1, %i.et
  %i.ev = and i64 %i.eu, %i.es
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit: ; preds = %bb.w, %bb.y, %bb.z
  %.0.i.i.i.in = phi i64 [ %i.ee, %bb.w ], [ %i.ej, %bb.y ], [ %i.ev, %bb.z ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %bb.aa, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread

bb.aa:                                            ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit
  %i.ew = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN8facebook5velox4exec9MapWriterINS0_4DateENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
  store i32 %i.ca, ptr %i.ew, align 4, !tbaa !3
  br label %bb.ad

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread: ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE4findIiEENS1_11F14ItemIterIPNS1_8F14ChunkIiEEEERKT_.exit.thread78, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit
  %i.ex = load i32, ptr %i.ax, align 8, !tbaa !10737, !noalias !10814 ; 2 uses
  %i.ey = add nsw i32 %i.ex, 1                    ; 2 uses
  %i.ez = load i8, ptr %i.ay, align 1, !tbaa !10751, !range !56, !noalias !10814, !noundef !57
  %i.fa = trunc nuw i8 %i.ez to i1
  br i1 %i.fa, label %bb.ab, label %_ZN8facebook5velox4exec9MapWriterINS0_4DateENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i

bb.ab:                                            ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread
  %i.fb = load ptr, ptr %i.az, align 8, !tbaa !10752, !noalias !10814 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !46, !noalias !10814
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !noalias !10814
  call void %i.fe(ptr noundef nonnull align 8 dereferenceable(96) %i.fb, i1 noundef zeroext true), !noalias !10814, !inline_history !10817
  store i8 0, ptr %i.ay, align 1, !tbaa !10751, !noalias !10814
  br label %_ZN8facebook5velox4exec9MapWriterINS0_4DateENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i

_ZN8facebook5velox4exec9MapWriterINS0_4DateENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i: ; preds = %bb.ab, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread
  %i.ff = load i32, ptr %i.ba, align 4, !tbaa !10738, !noalias !10814 ; 2 uses
  %i.fg = add nsw i32 %i.ff, %i.ey                ; 2 uses
  %i.fh = load i32, ptr %i.bb, align 8, !tbaa !10766, !noalias !10814
  %i.fi = icmp sgt i32 %i.fg, %i.fh
  br i1 %i.fi, label %bb.ac, label %_ZN8facebook5velox4exec9MapWriterINS0_4DateENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE8add_itemEv.exit, !prof !15

bb.ac:                                            ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_4DateENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i
end_hunk_8
begin_hunk_9_@_ZN8facebook5velox9functions24MapSubsetVarcharFunctionINS0_4exec10VectorExecEE4callERNS3_9MapWriterINS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEERKNS3_7MapViewILb1ES7_SB_EERKNS3_9ArrayViewILb1ES7_EE:bb.a
  store ptr %i.ak, ptr %i.ax, align 8, !tbaa !11022, !noalias !11166
  call void @_ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEE10initializeERKS7_SA_(ptr dead_on_unwind nonnull writable sret(%"class.facebook::velox::exec::SkipNullsIterator.3229") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35, !noalias !11166
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35, !noalias !11166
  %i.ay = load i32, ptr %i.al, align 8, !tbaa !11016, !noalias !11169
  %i.az = load i32, ptr %i.a, align 4, !tbaa !11010, !noalias !11169
  %i.ba = add nsw i32 %i.az, %i.ay                ; 2 uses
  %i.bb = load i32, ptr %9, align 8, !tbaa !11017 ; 2 uses
  %i.bc = icmp eq i32 %i.bb, %i.ba
  br i1 %i.bc, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE5clearEv.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 32
  %.pre = load ptr, ptr %i.bd, align 8, !tbaa !11022
  br label %bb.j

._crit_edge:                                      ; preds = %_ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEppEv.exit, %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE5clearEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  br label %bb.t

bb.j:                                             ; preds = %.lr.ph, %_ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEppEv.exit
  %i.bi = phi ptr [ %.pre, %.lr.ph ], [ %i.co, %_ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEppEv.exit ]
  %i.bj = phi i32 [ %i.bb, %.lr.ph ], [ %.lcssa, %_ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEppEv.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #35
  %i.bk = sext i32 %i.bj to i64
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !11027, !nonnull !57, !align !179 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !728
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 58
  %i.bp = load i8, ptr %i.bo, align 2, !tbaa !458, !range !56, !noundef !57
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %_ZNK8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEdeEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 59
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !459, !range !56, !noundef !57
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 64
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !460
  br label %_ZNK8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEdeEv.exit

bb.m:                                             ; preds = %bb.k
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !461
  %i.by = shl nsw i64 %i.bk, 2
  %i.bz = getelementptr inbounds i8, ptr %i.bx, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !3
  br label %_ZNK8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEdeEv.exit

_ZNK8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEdeEv.exit: ; preds = %bb.j, %bb.l, %bb.m
  %.0.i.i.i.i.i = phi i32 [ %i.ca, %bb.m ], [ %i.bv, %bb.l ], [ %i.bj, %bb.j ]
  %i.cb = sext i32 %.0.i.i.i.i.i to i64
  %i.cc = getelementptr inbounds [16 x i8], ptr %i.bn, i64 %i.cb ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.cc, align 8 ; 4 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !16 ; 3 uses
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %10, align 8
  store ptr %.sroa.2.0.copyload.i.i.i.i, ptr %i.be, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35, !noalias !11172
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !11175
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %5, align 8, !noalias !11175
  store ptr %.sroa.2.0.copyload.i.i.i.i, ptr %i.bf, align 8, !noalias !11175
  %i.cd = trunc i64 %.sroa.0.0.copyload.i.i.i.i to i32
  %i.ce = icmp ult i32 %i.cd, 13
  %i.cf = select i1 %i.ce, ptr %i.bg, ptr %.sroa.2.0.copyload.i.i.i.i
  %i.cg = and i64 %.sroa.0.0.copyload.i.i.i.i, 4294967295
  %i.ch = call noundef i64 @_ZN8facebook5velox4bits9hashBytesEmPKcm(i64 noundef 1, ptr noundef %i.cf, i64 noundef %i.cg), !noalias !11175 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !11175
  %i.ci = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.ch) ; 2 uses
  %i.cj = lshr i64 %i.ci, 24
  %i.ck = or i64 %i.cj, 128
  %i.cl = add i64 %i.ci, %i.ch
  call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE19tryEmplaceValueImplIS6_JRKS6_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEEbESC_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.3236") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 %i.cl, i64 %i.ck, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %10), !noalias !11172
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35, !noalias !11172
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  %i.cm = load i32, ptr %9, align 8, !tbaa !11017, !noalias !11182
  %i.cn = load i32, ptr %i.bh, align 8, !tbaa !11017
  %i.co = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.cp = sext i32 %i.cm to i64
  %sext.i = sext i32 %i.cn to i64                 ; 2 uses
  %indvars.iv.next.i193 = add nsw i64 %i.cp, 1    ; 3 uses
  %i.cq = trunc nsw i64 %indvars.iv.next.i193 to i32 ; 3 uses
  store i32 %i.cq, ptr %9, align 8, !tbaa !11017, !noalias !57
  %i.cr = icmp eq i64 %indvars.iv.next.i193, %sext.i
  br i1 %i.cr, label %_ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEppEv.exit, label %.lr.ph195.preheader

.lr.ph195.preheader:                              ; preds = %_ZNK8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEdeEv.exit
  %i.cs = load ptr, ptr %i.co, align 8, !tbaa !11027, !nonnull !57, !align !179 ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !735 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.cu, null
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 58
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 57
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 59
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  br label %.lr.ph195

bb.n:                                             ; preds = %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.next.i194, 1 ; 3 uses
  %i.cz = trunc nsw i64 %indvars.iv.next.i to i32 ; 3 uses
  store i32 %i.cz, ptr %9, align 8, !tbaa !11017, !noalias !57
  %i.da = icmp eq i64 %indvars.iv.next.i, %sext.i
  br i1 %i.da, label %_ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEppEv.exit, label %.lr.ph195, !llvm.loop !11061

.lr.ph195:                                        ; preds = %.lr.ph195.preheader, %bb.n
  %i.db = phi i32 [ %i.cz, %bb.n ], [ %i.cq, %.lr.ph195.preheader ] ; 2 uses
  %indvars.iv.next.i194 = phi i64 [ %indvars.iv.next.i, %bb.n ], [ %indvars.iv.next.i193, %.lr.ph195.preheader ] ; 4 uses
  br i1 %.not.i.i.i.i, label %_ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEppEv.exit, label %bb.o

bb.o:                                             ; preds = %.lr.ph195
  %i.dc = load i8, ptr %i.cv, align 2, !tbaa !458, !range !56, !noundef !57
  %i.dd = trunc nuw i8 %i.dc to i1
  %i.de = load i8, ptr %i.cw, align 1, !range !56
  %i.df = trunc nuw i8 %i.de to i1
  %or.cond.i.i.i.i = select i1 %i.dd, i1 true, i1 %i.df
  br i1 %or.cond.i.i.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dg = lshr i64 %indvars.iv.next.i194, 6
  %i.dh = and i64 %i.dg, 67108863
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.dh
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !117
  %i.dk = and i64 %indvars.iv.next.i194, 63
  %i.dl = shl nuw i64 1, %i.dk
  %i.dm = and i64 %i.dj, %i.dl
  br label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i

bb.q:                                             ; preds = %bb.o
  %i.dn = load i8, ptr %i.cx, align 1, !tbaa !459, !range !56, !noundef !57
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dp = load i64, ptr %i.cu, align 8, !tbaa !117
  %i.dq = and i64 %i.dp, 1
  br label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i

bb.s:                                             ; preds = %bb.q
  %i.dr = load ptr, ptr %i.cy, align 8, !tbaa !461
  %i.ds = shl nsw i64 %indvars.iv.next.i194, 2
  %i.dt = getelementptr inbounds i8, ptr %i.dr, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !3
  %i.dv = zext i32 %i.du to i64                   ; 2 uses
  %i.dw = lshr i64 %i.dv, 6
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.dw
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !117
  %i.dz = and i64 %i.dv, 63
  %i.ea = shl nuw i64 1, %i.dz
  %i.eb = and i64 %i.ea, %i.dy
  br label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i

_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i: ; preds = %bb.s, %bb.r, %bb.p
  %.0.i.i.i.in.i = phi i64 [ %i.dm, %bb.p ], [ %i.dq, %bb.r ], [ %i.eb, %bb.s ]
  %.0.i.i.i.not.i = icmp eq i64 %.0.i.i.i.in.i, 0
  br i1 %.0.i.i.i.not.i, label %bb.n, label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i._ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEppEv.exit_crit_edge, !llvm.loop !11061

_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i._ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEppEv.exit_crit_edge: ; preds = %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i
  br label %_ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEppEv.exit, !llvm.loop !11061

_ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEppEv.exit: ; preds = %.lr.ph195, %bb.n, %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i._ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEppEv.exit_crit_edge, %_ZNK8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEdeEv.exit
  %.lcssa = phi i32 [ %i.cq, %_ZNK8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEdeEv.exit ], [ %i.db, %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i._ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIteratorEEppEv.exit_crit_edge ], [ %i.db, %.lr.ph195 ], [ %i.cz, %bb.n ] ; 2 uses
  %i.ec = icmp eq i32 %i.ba, %.lcssa
  br i1 %i.ec, label %._crit_edge, label %bb.j

bb.t:                                             ; preds = %._crit_edge, %bb.b
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !476 ; 2 uses
  %i.eg = icmp ult i64 %i.ef, 256
  br i1 %i.eg, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !10984, !noalias !11185 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !10985, !noalias !11185 ; 2 uses
  %i.el = load ptr, ptr %2, align 8, !tbaa !10981, !noalias !11185
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !10983, !noalias !11185 ; 4 uses
  %i.eo = add nsw i32 %i.ek, %i.ei
  %i.ep = icmp eq i32 %i.ek, 0
  br i1 %i.ep, label %.loopexit, label %.lr.ph156

.lr.ph156:                                        ; preds = %bb.u
  %i.eq = lshr i64 %i.ef, 8
  %i.er = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.et = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ew = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ex = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.en, <2 x i64> <i64 8, i64 56>
  %i.fa = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.fc = sext i32 %i.ei to i64
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph156, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread112
  %i.fd = phi i64 [ %i.fc, %.lr.ph156 ], [ %indvars.iv.next, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread112 ] ; 7 uses
  %.0152 = phi i64 [ %i.eq, %.lr.ph156 ], [ %.1.ph, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread112 ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !11188)
  call void @llvm.experimental.noalias.scope.decl(metadata !11191)
  %i.fe = load ptr, ptr %i.el, align 8, !tbaa !11027, !noalias !11194, !nonnull !57, !align !179 ; 5 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !728, !noalias !11194
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 58
  %i.fi = load i8, ptr %i.fh, align 2, !tbaa !458, !range !56, !noalias !11194, !noundef !57
  %i.fj = trunc nuw i8 %i.fi to i1
  %i.fk = trunc i64 %i.fd to i32                  ; 2 uses
  br i1 %i.fj, label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fe, i64 59
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !459, !range !56, !noalias !11194, !noundef !57
  %i.fn = trunc nuw i8 %i.fm to i1
  br i1 %i.fn, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fe, i64 64
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !460, !noalias !11194
  br label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit

bb.y:                                             ; preds = %bb.w
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !461, !noalias !11194
  %i.fs = shl nsw i64 %i.fd, 2
  %i.ft = getelementptr inbounds i8, ptr %i.fr, i64 %i.fs
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !3, !noalias !11194
  br label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit

_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit: ; preds = %bb.v, %bb.x, %bb.y
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.fu, %bb.y ], [ %i.fp, %bb.x ], [ %i.fk, %bb.v ]
  %i.fv = sext i32 %.0.i.i.i.i.i.i.i to i64
  %i.fw = getelementptr inbounds [16 x i8], ptr %i.fg, i64 %i.fv ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i28 = load i64, ptr %i.fw, align 8, !noalias !11194
  %.sroa.0.0.copyload.i.i.i.i.i.i28.fr = freeze i64 %.sroa.0.0.copyload.i.i.i.i.i.i28 ; 11 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i29 = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i30 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i29, align 8, !tbaa !16, !noalias !11194 ; 8 uses
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i28.fr, ptr %11, align 8, !alias.scope !11194
  store ptr %.sroa.2.0.copyload.i.i.i.i.i.i30, ptr %i.er, align 8, !alias.scope !11194
  store ptr %i.en, ptr %i.es, align 8, !alias.scope !11194
  store i64 %i.fd, ptr %i.et, align 8, !alias.scope !11194
  %i.fx = load i64, ptr %i.ee, align 8, !tbaa !476
  %i.fy = lshr i64 %i.fx, 8
  %i.fz = ptrtoint ptr %.sroa.2.0.copyload.i.i.i.i.i.i30 to i64 ; 2 uses
  %i.ga = trunc i64 %.sroa.0.0.copyload.i.i.i.i.i.i28.fr to i32 ; 8 uses
  switch i64 %i.fy, label %bb.ad [
    i64 0, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread112
    i64 1, label %bb.z
  ]

bb.z:                                             ; preds = %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit
  %i.gb = load i64, ptr %i.eu, align 8, !tbaa !11038
  %i.gc = and i64 %i.gb, -16
  %i.gd = inttoptr i64 %i.gc to ptr               ; 3 uses
  %i.ge = load i64, ptr %i.gd, align 16, !tbaa !117
  %.not.i.i.i33 = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i28.fr, %i.ge
  br i1 %.not.i.i.i33, label %bb.aa, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread112

bb.aa:                                            ; preds = %bb.z
  %i.gf = icmp ult i32 %i.ga, 13
  br i1 %i.gf, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gg = icmp samesign ult i32 %i.ga, 5
  br i1 %i.gg, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread, label %_ZNK5folly3f146detail20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvE14keyMatchesItemIS5_EEbRKT_RKS5_.exit

bb.ac:                                            ; preds = %bb.aa
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i30, i64 4
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !16
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  %i.gl = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i28.fr, 4294967295
  %i.gm = add nsw i64 %i.gl, -4
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull %i.gh, ptr nonnull %i.gk, i64 %i.gm)
  %i.gn = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.gn, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread112

_ZNK5folly3f146detail20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvE14keyMatchesItemIS5_EEbRKT_RKS5_.exit: ; preds = %bb.ab
  %i.go = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !117
  %i.gq = icmp eq i64 %i.gp, %i.fz
  br i1 %i.gq, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread112

bb.ad:                                            ; preds = %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_7VarcharENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i28.fr, ptr %4, align 8
  store ptr %.sroa.2.0.copyload.i.i.i.i.i.i30, ptr %i.ev, align 8
  %i.gr = icmp ult i32 %i.ga, 13                  ; 2 uses
  %i.gs = select i1 %i.gr, ptr %i.ew, ptr %.sroa.2.0.copyload.i.i.i.i.i.i30
  %i.gt = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i28.fr, 4294967295 ; 2 uses
  %i.gu = call noundef i64 @_ZN8facebook5velox4bits9hashBytesEmPKcm(i64 noundef 1, ptr noundef %i.gs, i64 noundef %i.gt) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.gv = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.gu) ; 2 uses
  %i.gw = lshr i64 %i.gv, 24
  %i.gx = or i64 %i.gw, 128                       ; 2 uses
  %i.gy = add i64 %i.gv, %i.gu                    ; 3 uses
  %i.gz = shl nuw nsw i64 %i.gx, 1
  %i.ha = or disjoint i64 %i.gz, 1                ; 3 uses
  %i.hb = trunc nuw i64 %i.gx to i8
  %i.hc = insertelement <16 x i8> poison, i8 %i.hb, i64 0
  %i.hd = shufflevector <16 x i8> %i.hc, <16 x i8> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.he = load i64, ptr %i.ee, align 8, !tbaa !476
  %i.hf = and i64 %i.he, 255                      ; 4 uses
  %i.hg = shl nuw i64 1, %i.hf                    ; 3 uses
  %i.hh = load ptr, ptr %i.ed, align 8, !tbaa !10966 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i30, i64 4
  %i.hj = add nsw i64 %i.gt, -4
  br i1 %i.gr, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.ad
  %i.hk = icmp samesign ult i32 %i.ga, 5
  br i1 %i.hk, label %.split.us.split.us, label %.split.us.split, !llvm.loop !11040

.split.us.split.us:                               ; preds = %.split.us, %bb.ae
  %.0.i.i142.us.us = phi i64 [ %i.hw, %bb.ae ], [ %i.gy, %.split.us ] ; 2 uses
  %.023.i.i141.us.us = phi i64 [ %i.hv, %bb.ae ], [ %i.hg, %.split.us ]
  %i.hl = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i142.us.us, i64 range(i64 0, 256) %i.hf)
  %i.hm = getelementptr inbounds nuw [256 x i8], ptr %i.hh, i64 %i.hl ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 144
  call void @llvm.prefetch.p0(ptr nonnull %i.ho, i32 0, i32 3, i32 1)
  %i.hp = load <16 x i8>, ptr %i.hm, align 16     ; 2 uses
  %i.hq = icmp eq <16 x i8> %i.hp, %i.hd
  %i.hr = bitcast <16 x i1> %i.hq to i16
  %i.hs = and i16 %i.hr, 16383                    ; 2 uses
  %.not136.us.us = icmp eq i16 %i.hs, 0
  %i.ht = extractelement <16 x i8> %i.hp, i64 15
  br i1 %.not136.us.us, label %.critedge.i.i._crit_edge.split.us.split.us.us.us, label %.lr.ph139.us.us

.critedge.i.i._crit_edge.split.us.split.us.us.us: ; preds = %.critedge.i.i.backedge.us.us.us.us, %.split.us.split.us
  %i.hu = icmp eq i8 %i.ht, 0
  br i1 %i.hu, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread112, label %bb.ae, !prof !232

bb.ae:                                            ; preds = %.critedge.i.i._crit_edge.split.us.split.us.us.us
  %i.hv = add i64 %.023.i.i141.us.us, -1          ; 2 uses
  %i.hw = add i64 %i.ha, %.0.i.i142.us.us
  %.not.i.i.us.us = icmp eq i64 %i.hv, 0
  br i1 %.not.i.i.us.us, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread112, label %.split.us.split.us, !llvm.loop !11039

.lr.ph139.us.us:                                  ; preds = %.split.us.split.us
  %i.hx = zext nneg i16 %i.hs to i32
  %i.hy = icmp ne ptr %i.hm, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.hy)
  br label %bb.af

bb.af:                                            ; preds = %.critedge.i.i.backedge.us.us.us.us, %.lr.ph139.us.us
  %.sroa.076.0137.us.us.us.us = phi i32 [ %i.hx, %.lr.ph139.us.us ], [ %i.ie, %.critedge.i.i.backedge.us.us.us.us ] ; 3 uses
  %i.hz = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.076.0137.us.us.us.us, i1 true)
  %i.ia = zext nneg i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw [16 x i8], ptr %i.hn, i64 %i.ia
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !117
  %.not.i.i.i36.us.us.us.us = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i28.fr, %i.ic
  br i1 %.not.i.i.i36.us.us.us.us, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread, label %.critedge.i.i.backedge.us.us.us.us, !prof !220

.critedge.i.i.backedge.us.us.us.us:               ; preds = %bb.af
  %i.id = add nsw i32 %.sroa.076.0137.us.us.us.us, -1
  %i.ie = and i32 %i.id, %.sroa.076.0137.us.us.us.us ; 2 uses
  %.not.us.us.us.us = icmp eq i32 %i.ie, 0
  br i1 %.not.us.us.us.us, label %.critedge.i.i._crit_edge.split.us.split.us.us.us, label %bb.af, !llvm.loop !11040

.split.us.split:                                  ; preds = %.split.us, %bb.ag
  %.0.i.i142.us = phi i64 [ %i.iq, %bb.ag ], [ %i.gy, %.split.us ] ; 2 uses
  %.023.i.i141.us = phi i64 [ %i.ip, %bb.ag ], [ %i.hg, %.split.us ]
  %i.if = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i142.us, i64 range(i64 0, 256) %i.hf)
  %i.ig = getelementptr inbounds nuw [256 x i8], ptr %i.hh, i64 %i.if ; 4 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 144
  call void @llvm.prefetch.p0(ptr nonnull %i.ii, i32 0, i32 3, i32 1)
  %i.ij = load <16 x i8>, ptr %i.ig, align 16     ; 2 uses
  %i.ik = icmp eq <16 x i8> %i.ij, %i.hd
  %i.il = bitcast <16 x i1> %i.ik to i16
  %i.im = and i16 %i.il, 16383                    ; 2 uses
  %.not136.us = icmp eq i16 %i.im, 0
  %i.in = extractelement <16 x i8> %i.ij, i64 15
  br i1 %.not136.us, label %.critedge.i.i._crit_edge.split.us.split.us147, label %.lr.ph139.us

.critedge.i.i._crit_edge.split.us.split.us147:    ; preds = %.critedge.i.i.backedge.us.us145, %.split.us.split
  %i.io = icmp eq i8 %i.in, 0
  br i1 %i.io, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread112, label %bb.ag, !prof !232

bb.ag:                                            ; preds = %.critedge.i.i._crit_edge.split.us.split.us147
  %i.ip = add i64 %.023.i.i141.us, -1             ; 2 uses
  %i.iq = add i64 %i.ha, %.0.i.i142.us
  %.not.i.i.us = icmp eq i64 %i.ip, 0
  br i1 %.not.i.i.us, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread112, label %.split.us.split, !llvm.loop !11039

.lr.ph139.us:                                     ; preds = %.split.us.split
  %i.ir = zext nneg i16 %i.im to i32
  %i.is = icmp ne ptr %i.ig, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.is)
end_hunk_9
begin_hunk_10_@_ZN8facebook5velox9functions17MapSubsetFunctionINS0_4exec10VectorExecEE4callERNS3_9MapWriterINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENS7_INS8_ILm2EEELb0ELb0EEEEERKNS3_7MapViewILb1ESA_SC_EERKNS3_9ArrayViewILb1ESA_EE:bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.am, ptr %i.ap, align 4, !tbaa !11588, !noalias !11580
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.ao, ptr %i.aq, align 8, !tbaa !11589, !noalias !11580
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.as = ptrtoint ptr %i.ak to i64               ; 2 uses
  store i64 %i.as, ptr %i.ar, align 8, !tbaa !11590, !noalias !11580
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.ak, ptr %i.at, align 8, !tbaa !11591, !noalias !11580
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35, !noalias !11580
  store i32 %i.ao, ptr %6, align 8, !tbaa !11585, !noalias !11580
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %i.am, ptr %i.au, align 4, !tbaa !11588, !noalias !11580
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.ao, ptr %i.av, align 8, !tbaa !11589, !noalias !11580
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.as, ptr %i.aw, align 8, !tbaa !11590, !noalias !11580
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.ak, ptr %i.ax, align 8, !tbaa !11591, !noalias !11580
  call void @_ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE18SkipNullsContainer21SkipNullsBaseIteratorEE10initializeERKSA_SD_(ptr dead_on_unwind nonnull writable sret(%"class.facebook::velox::exec::SkipNullsIterator.3384") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35, !noalias !11580
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35, !noalias !11580
  %i.ay = load i32, ptr %i.al, align 8, !tbaa !11584, !noalias !11593
  %i.az = load i32, ptr %i.a, align 4, !tbaa !11576, !noalias !11593
  %i.ba = add nsw i32 %i.az, %i.ay                ; 2 uses
  %i.bb = load i32, ptr %7, align 8, !tbaa !11585 ; 2 uses
  %i.bc = icmp eq i32 %i.bb, %i.ba
  br i1 %i.bc, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5folly3f146detail11F14BasicSetINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapSubsetFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE5clearEv.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 32
  %.pre = load ptr, ptr %i.bd, align 8, !tbaa !11591, !noalias !11596
  br label %bb.h

._crit_edge:                                      ; preds = %_ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE18SkipNullsContainer21SkipNullsBaseIteratorEEppEv.exit, %_ZN5folly3f146detail11F14BasicSetINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapSubsetFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE5clearEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !476 ; 2 uses
  %i.bk = icmp ult i64 %i.bj, 256
  br i1 %i.bk, label %.loopexit, label %bb.r

bb.h:                                             ; preds = %.lr.ph, %_ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE18SkipNullsContainer21SkipNullsBaseIteratorEEppEv.exit
  %i.bl = phi ptr [ %.pre, %.lr.ph ], [ %i.cp, %_ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE18SkipNullsContainer21SkipNullsBaseIteratorEEppEv.exit ] ; 3 uses
  %i.bm = phi i32 [ %i.bb, %.lr.ph ], [ %.lcssa, %_ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE18SkipNullsContainer21SkipNullsBaseIteratorEEppEv.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !11601)
  call void @llvm.experimental.noalias.scope.decl(metadata !11602)
  call void @llvm.experimental.noalias.scope.decl(metadata !11603)
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !562, !noalias !11606, !nonnull !57, !align !179 ; 6 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  store ptr %i.bn, ptr %8, align 8, !tbaa !509, !alias.scope !11606
  store ptr %i.bo, ptr %i.be, align 8, !tbaa !11607, !alias.scope !11606
  store ptr %i.bp, ptr %i.bf, align 8, !tbaa !11608, !alias.scope !11606
  store i32 %i.bm, ptr %i.bg, align 8, !tbaa !8188, !alias.scope !11606
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35, !noalias !11609
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !510, !noalias !11612 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 58
  %i.bt = load i8, ptr %i.bs, align 2, !tbaa !458, !range !56, !noalias !11612, !noundef !57
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %_ZN5folly6detail22callWithConstructedKeyIN8facebook5velox4exec11GenericViewENS_3f146detail11F14BasicSetINS7_21VectorContainerPolicyIS5_vSt4hashIS5_ENS3_9functions32MapSubsetFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE11UsableAsKeyESaIS5_EZNSH_7emplaceIJRKS5_EEESt4pairINS7_23VectorContainerIteratorIPSL_EEbEDpOT_EUlSU_E_SM_TnNSt9enable_ifIXoosr3std7is_sameINS_12remove_cvrefIT3_E4typeET_EE5valuesrT0_IS10_E5valueEiE4typeELi0EEEDaRT1_OT2_OSY_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 59
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !459, !range !56, !noalias !11612, !noundef !57
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !460, !noalias !11612
  br label %_ZN5folly6detail22callWithConstructedKeyIN8facebook5velox4exec11GenericViewENS_3f146detail11F14BasicSetINS7_21VectorContainerPolicyIS5_vSt4hashIS5_ENS3_9functions32MapSubsetFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE11UsableAsKeyESaIS5_EZNSH_7emplaceIJRKS5_EEESt4pairINS7_23VectorContainerIteratorIPSL_EEbEDpOT_EUlSU_E_SM_TnNSt9enable_ifIXoosr3std7is_sameINS_12remove_cvrefIT3_E4typeET_EE5valuesrT0_IS10_E5valueEiE4typeELi0EEEDaRT1_OT2_OSY_.exit.i

bb.k:                                             ; preds = %bb.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !461, !noalias !11612
  %i.cc = sext i32 %i.bm to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3, !noalias !11612
  br label %_ZN5folly6detail22callWithConstructedKeyIN8facebook5velox4exec11GenericViewENS_3f146detail11F14BasicSetINS7_21VectorContainerPolicyIS5_vSt4hashIS5_ENS3_9functions32MapSubsetFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE11UsableAsKeyESaIS5_EZNSH_7emplaceIJRKS5_EEESt4pairINS7_23VectorContainerIteratorIPSL_EEbEDpOT_EUlSU_E_SM_TnNSt9enable_ifIXoosr3std7is_sameINS_12remove_cvrefIT3_E4typeET_EE5valuesrT0_IS10_E5valueEiE4typeELi0EEEDaRT1_OT2_OSY_.exit.i

_ZN5folly6detail22callWithConstructedKeyIN8facebook5velox4exec11GenericViewENS_3f146detail11F14BasicSetINS7_21VectorContainerPolicyIS5_vSt4hashIS5_ENS3_9functions32MapSubsetFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE11UsableAsKeyESaIS5_EZNSH_7emplaceIJRKS5_EEESt4pairINS7_23VectorContainerIteratorIPSL_EEbEDpOT_EUlSU_E_SM_TnNSt9enable_ifIXoosr3std7is_sameINS_12remove_cvrefIT3_E4typeET_EE5valuesrT0_IS10_E5valueEiE4typeELi0EEEDaRT1_OT2_OSY_.exit.i: ; preds = %bb.k, %bb.j, %bb.h
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ce, %bb.k ], [ %i.bz, %bb.j ], [ %i.bm, %bb.h ]
  %i.cf = load ptr, ptr %i.br, align 8, !tbaa !46, !noalias !11612
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 104
  %i.ch = load ptr, ptr %i.cg, align 8, !noalias !11612
  %i.ci = call noundef i64 %i.ch(ptr noundef nonnull align 8 dereferenceable(94) %i.br, i32 noundef %.0.i.i.i.i.i.i.i.i.i.i), !noalias !11612, !inline_history !11619 ; 2 uses
  %i.cj = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.ci) ; 2 uses
  %i.ck = lshr i64 %i.cj, 24
  %i.cl = or i64 %i.ck, 128
  %i.cm = add i64 %i.cj, %i.ci
  call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapSubsetFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS7_JRKS7_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESJ_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.3395") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 %i.cm, i64 %i.cl, ptr noundef nonnull align 8 dereferenceable(28) %8, ptr noundef nonnull align 8 dereferenceable(28) %8), !noalias !11609
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35, !noalias !11609
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  %i.cn = load i32, ptr %7, align 8, !tbaa !11585, !noalias !11620
  %i.co = load i32, ptr %i.bh, align 8, !tbaa !11585
  %i.cp = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.cq = sext i32 %i.cn to i64
  %sext.i = sext i32 %i.co to i64                 ; 2 uses
  %indvars.iv.next.i120 = add nsw i64 %i.cq, 1    ; 3 uses
  %i.cr = trunc nsw i64 %indvars.iv.next.i120 to i32 ; 3 uses
  store i32 %i.cr, ptr %7, align 8, !tbaa !11585, !noalias !57
  %i.cs = icmp eq i64 %indvars.iv.next.i120, %sext.i
  br i1 %i.cs, label %_ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE18SkipNullsContainer21SkipNullsBaseIteratorEEppEv.exit, label %.lr.ph122.preheader

.lr.ph122.preheader:                              ; preds = %_ZN5folly6detail22callWithConstructedKeyIN8facebook5velox4exec11GenericViewENS_3f146detail11F14BasicSetINS7_21VectorContainerPolicyIS5_vSt4hashIS5_ENS3_9functions32MapSubsetFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE11UsableAsKeyESaIS5_EZNSH_7emplaceIJRKS5_EEESt4pairINS7_23VectorContainerIteratorIPSL_EEbEDpOT_EUlSU_E_SM_TnNSt9enable_ifIXoosr3std7is_sameINS_12remove_cvrefIT3_E4typeET_EE5valuesrT0_IS10_E5valueEiE4typeELi0EEEDaRT1_OT2_OSY_.exit.i
  %i.ct = load ptr, ptr %i.cp, align 8, !tbaa !562, !nonnull !57, !align !179 ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !735 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.cv, null
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 58
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 57
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 59
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  br label %.lr.ph122

bb.l:                                             ; preds = %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.next.i121, 1 ; 3 uses
  %i.da = trunc nsw i64 %indvars.iv.next.i to i32 ; 3 uses
  store i32 %i.da, ptr %7, align 8, !tbaa !11585, !noalias !57
  %i.db = icmp eq i64 %indvars.iv.next.i, %sext.i
  br i1 %i.db, label %_ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE18SkipNullsContainer21SkipNullsBaseIteratorEEppEv.exit, label %.lr.ph122, !llvm.loop !11623

.lr.ph122:                                        ; preds = %.lr.ph122.preheader, %bb.l
  %i.dc = phi i32 [ %i.da, %bb.l ], [ %i.cr, %.lr.ph122.preheader ] ; 2 uses
  %indvars.iv.next.i121 = phi i64 [ %indvars.iv.next.i, %bb.l ], [ %indvars.iv.next.i120, %.lr.ph122.preheader ] ; 4 uses
  br i1 %.not.i.i.i.i, label %_ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE18SkipNullsContainer21SkipNullsBaseIteratorEEppEv.exit, label %bb.m

bb.m:                                             ; preds = %.lr.ph122
  %i.dd = load i8, ptr %i.cw, align 2, !tbaa !458, !range !56, !noundef !57
  %i.de = trunc nuw i8 %i.dd to i1
  %i.df = load i8, ptr %i.cx, align 1, !range !56
  %i.dg = trunc nuw i8 %i.df to i1
  %or.cond.i.i.i.i = select i1 %i.de, i1 true, i1 %i.dg
  br i1 %or.cond.i.i.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dh = lshr i64 %indvars.iv.next.i121, 6
  %i.di = and i64 %i.dh, 67108863
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.di
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !117
  %i.dl = and i64 %indvars.iv.next.i121, 63
  %i.dm = shl nuw i64 1, %i.dl
  %i.dn = and i64 %i.dk, %i.dm
  br label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i

bb.o:                                             ; preds = %bb.m
  %i.do = load i8, ptr %i.cy, align 1, !tbaa !459, !range !56, !noundef !57
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dq = load i64, ptr %i.cv, align 8, !tbaa !117
  %i.dr = and i64 %i.dq, 1
  br label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i

bb.q:                                             ; preds = %bb.o
  %i.ds = load ptr, ptr %i.cz, align 8, !tbaa !461
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.ds, i64 %indvars.iv.next.i121
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !3
  %i.dv = zext i32 %i.du to i64                   ; 2 uses
  %i.dw = lshr i64 %i.dv, 6
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.dw
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !117
  %i.dz = and i64 %i.dv, 63
  %i.ea = shl nuw i64 1, %i.dz
  %i.eb = and i64 %i.ea, %i.dy
  br label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i

_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i: ; preds = %bb.q, %bb.p, %bb.n
  %.0.i.i.i.in.i = phi i64 [ %i.dn, %bb.n ], [ %i.dr, %bb.p ], [ %i.eb, %bb.q ]
  %.0.i.i.i.not.i = icmp eq i64 %.0.i.i.i.in.i, 0
  br i1 %.0.i.i.i.not.i, label %bb.l, label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i._ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE18SkipNullsContainer21SkipNullsBaseIteratorEEppEv.exit_crit_edge, !llvm.loop !11623

_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i._ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE18SkipNullsContainer21SkipNullsBaseIteratorEEppEv.exit_crit_edge: ; preds = %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i
  br label %_ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE18SkipNullsContainer21SkipNullsBaseIteratorEEppEv.exit, !llvm.loop !11623

_ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE18SkipNullsContainer21SkipNullsBaseIteratorEEppEv.exit: ; preds = %.lr.ph122, %bb.l, %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i._ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE18SkipNullsContainer21SkipNullsBaseIteratorEEppEv.exit_crit_edge, %_ZN5folly6detail22callWithConstructedKeyIN8facebook5velox4exec11GenericViewENS_3f146detail11F14BasicSetINS7_21VectorContainerPolicyIS5_vSt4hashIS5_ENS3_9functions32MapSubsetFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE11UsableAsKeyESaIS5_EZNSH_7emplaceIJRKS5_EEESt4pairINS7_23VectorContainerIteratorIPSL_EEbEDpOT_EUlSU_E_SM_TnNSt9enable_ifIXoosr3std7is_sameINS_12remove_cvrefIT3_E4typeET_EE5valuesrT0_IS10_E5valueEiE4typeELi0EEEDaRT1_OT2_OSY_.exit.i
  %.lcssa = phi i32 [ %i.cr, %_ZN5folly6detail22callWithConstructedKeyIN8facebook5velox4exec11GenericViewENS_3f146detail11F14BasicSetINS7_21VectorContainerPolicyIS5_vSt4hashIS5_ENS3_9functions32MapSubsetFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE11UsableAsKeyESaIS5_EZNSH_7emplaceIJRKS5_EEESt4pairINS7_23VectorContainerIteratorIPSL_EEbEDpOT_EUlSU_E_SM_TnNSt9enable_ifIXoosr3std7is_sameINS_12remove_cvrefIT3_E4typeET_EE5valuesrT0_IS10_E5valueEiE4typeELi0EEEDaRT1_OT2_OSY_.exit.i ], [ %i.dc, %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i._ZN8facebook5velox4exec17SkipNullsIteratorINS1_9ArrayViewILb1ENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE18SkipNullsContainer21SkipNullsBaseIteratorEEppEv.exit_crit_edge ], [ %i.dc, %.lr.ph122 ], [ %i.da, %bb.l ] ; 2 uses
  %i.ec = icmp eq i32 %i.ba, %.lcssa
  br i1 %i.ec, label %._crit_edge, label %bb.h

bb.r:                                             ; preds = %._crit_edge
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !11561, !noalias !11624 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !11562, !noalias !11624 ; 2 uses
  %i.eh = load ptr, ptr %2, align 8, !tbaa !11558, !noalias !11624 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !11560, !noalias !11624
  %i.ek = add nsw i32 %i.eg, %i.ee
  %i.el = icmp eq i32 %i.eg, 0
  br i1 %i.el, label %.loopexit, label %.lr.ph105.split.preheader

.lr.ph105.split.preheader:                        ; preds = %bb.r
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, <2 x i64> <i64 8, i64 56>
  %i.en = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.et = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.eu = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ev = lshr i64 %i.bj, 8
  %i.ew = sext i32 %i.ee to i64
  br label %.lr.ph105.split

.lr.ph105.split:                                  ; preds = %.lr.ph105.split.preheader, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapSubsetFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread
  %indvars.iv = phi i64 [ %i.ew, %.lr.ph105.split.preheader ], [ %indvars.iv.next, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapSubsetFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread ] ; 4 uses
  %.0103 = phi i64 [ %i.ev, %.lr.ph105.split.preheader ], [ %.1.ph, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapSubsetFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !11627)
  call void @llvm.experimental.noalias.scope.decl(metadata !11630)
  call void @llvm.experimental.noalias.scope.decl(metadata !11633)
  call void @llvm.experimental.noalias.scope.decl(metadata !11636)
  %i.ex = load ptr, ptr %i.eh, align 8, !tbaa !562, !noalias !11639, !nonnull !57, !align !179 ; 6 uses
  store ptr %i.ex, ptr %9, align 8, !tbaa !509, !alias.scope !11639
  store <2 x ptr> %i.em, ptr %i.en, align 8, !tbaa !38, !alias.scope !11639
  %i.ey = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  store i32 %i.ey, ptr %i.eo, align 8, !tbaa !8188, !alias.scope !11639
  store ptr %i.ej, ptr %i.ep, align 8, !alias.scope !11640
  store i64 %indvars.iv, ptr %i.eq, align 8, !alias.scope !11640
  %i.ez = load i64, ptr %i.bi, align 8, !tbaa !476
  %i.fa = icmp ult i64 %i.ez, 256
  br i1 %i.fa, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapSubsetFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.s

bb.s:                                             ; preds = %.lr.ph105.split
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 48
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !510 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ex, i64 58
  %i.fe = load i8, ptr %i.fd, align 2, !tbaa !458, !range !56, !noundef !57
  %i.ff = trunc nuw i8 %i.fe to i1
  br i1 %i.ff, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapSubsetFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE11computeHashIS7_EESt4pairImmERKT_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ex, i64 59
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !459, !range !56, !noundef !57
  %i.fi = trunc nuw i8 %i.fh to i1
  br i1 %i.fi, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ex, i64 64
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !460
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapSubsetFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE11computeHashIS7_EESt4pairImmERKT_.exit

bb.v:                                             ; preds = %bb.t
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !461
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.fm, i64 %indvars.iv
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !3
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapSubsetFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE11computeHashIS7_EESt4pairImmERKT_.exit

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapSubsetFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE11computeHashIS7_EESt4pairImmERKT_.exit: ; preds = %bb.s, %bb.u, %bb.v
  %.0.i.i.i.i.i.i = phi i32 [ %i.fo, %bb.v ], [ %i.fk, %bb.u ], [ %i.ey, %bb.s ]
  %i.fp = load ptr, ptr %i.fc, align 8, !tbaa !46
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 104
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = call noundef i64 %i.fr(ptr noundef nonnull align 8 dereferenceable(94) %i.fc, i32 noundef %.0.i.i.i.i.i.i), !inline_history !11641 ; 2 uses
  %i.ft = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.fs) ; 2 uses
  %i.fu = lshr i64 %i.ft, 24
  %i.fv = or i64 %i.fu, 128                       ; 2 uses
  %i.fw = add i64 %i.ft, %i.fs
  %i.fx = shl nuw nsw i64 %i.fv, 1
  %i.fy = or disjoint i64 %i.fx, 1
  %i.fz = trunc nuw i64 %i.fv to i8
  %i.ga = insertelement <16 x i8> poison, i8 %i.fz, i64 0
  %i.gb = shufflevector <16 x i8> %i.ga, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.gc = load i64, ptr %i.bi, align 8, !tbaa !476
  %i.gd = and i64 %i.gc, 255
  %i.ge = shl nuw i64 1, %i.gd
  br label %bb.w

bb.w:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapSubsetFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE11computeHashIS7_EESt4pairImmERKT_.exit, %bb.ag
  %.0.i.i101 = phi i64 [ %i.fw, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapSubsetFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE11computeHashIS7_EESt4pairImmERKT_.exit ], [ %i.iu, %bb.ag ] ; 2 uses
  %.022.i.i100 = phi i64 [ %i.ge, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapSubsetFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE11computeHashIS7_EESt4pairImmERKT_.exit ], [ %i.it, %bb.ag ]
  %i.gf = load ptr, ptr %i.d, align 8, !tbaa !11355
  %i.gg = load i64, ptr %i.bi, align 8, !tbaa !476
  %i.gh = and i64 %i.gg, 255
  %i.gi = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i101, i64 range(i64 0, 256) %i.gh)
  %i.gj = getelementptr inbounds nuw [64 x i8], ptr %i.gf, i64 %i.gi ; 4 uses
  %i.gk = load <16 x i8>, ptr %i.gj, align 16, !tbaa !16
  %i.gl = icmp eq <16 x i8> %i.gk, %i.gb
  %i.gm = bitcast <16 x i1> %i.gl to i16
  %i.gn = and i16 %i.gm, 4095
  %i.go = zext nneg i16 %i.gn to i32
  %i.gp = icmp ne ptr %i.gj, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS6_ENS4_9functions32MapSubsetFunctionEqualComparatorEvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit, %bb.w
  %.sroa.056.0 = phi i32 [ %i.go, %bb.w ], [ %i.gt, %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS6_ENS4_9functions32MapSubsetFunctionEqualComparatorEvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit ] ; 4 uses
  %.not = icmp eq i32 %.sroa.056.0, 0
  br i1 %.not, label %bb.af, label %bb.x

bb.x:                                             ; preds = %.critedge.i.i
  %i.gr = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.056.0, i1 true)
  %i.gs = add nsw i32 %.sroa.056.0, -1
  %i.gt = and i32 %i.gs, %.sroa.056.0
  %i.gu = zext nneg i32 %i.gr to i64
  call void @llvm.assume(i1 %i.gp)
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %i.gu
  %i.gw = load ptr, ptr %0, align 8, !tbaa !11579
  %i.gx = load i32, ptr %i.gv, align 4, !tbaa !3
  %i.gy = zext i32 %i.gx to i64
  %i.gz = getelementptr inbounds nuw [32 x i8], ptr %i.gw, i64 %i.gy ; 2 uses
  %i.ha = load ptr, ptr %9, align 8, !tbaa !11642, !nonnull !57, !align !179 ; 5 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 48
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !510 ; 2 uses
  %i.hd = load ptr, ptr %i.gz, align 8, !tbaa !11642, !nonnull !57, !align !179 ; 5 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 48
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !510
  %i.hg = load i32, ptr %i.eo, align 8, !tbaa !8188 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ha, i64 58
  %i.hi = load i8, ptr %i.hh, align 2, !tbaa !458, !range !56, !noundef !57
  %i.hj = trunc nuw i8 %i.hi to i1
  br i1 %i.hj, label %_ZNK8facebook5velox4exec11GenericView12decodedIndexEv.exit.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ha, i64 59
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !459, !range !56, !noundef !57
  %i.hm = trunc nuw i8 %i.hl to i1
  br i1 %i.hm, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ha, i64 64
  %i.ho = load i32, ptr %i.hn, align 8, !tbaa !460
  br label %_ZNK8facebook5velox4exec11GenericView12decodedIndexEv.exit.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !461
  %i.hr = sext i32 %i.hg to i64
  %i.hs = getelementptr inbounds [4 x i8], ptr %i.hq, i64 %i.hr
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !3
  br label %_ZNK8facebook5velox4exec11GenericView12decodedIndexEv.exit.i.i.i

_ZNK8facebook5velox4exec11GenericView12decodedIndexEv.exit.i.i.i: ; preds = %bb.aa, %bb.z, %bb.x
  %.0.i.i.i.i.i = phi i32 [ %i.ht, %bb.aa ], [ %i.ho, %bb.z ], [ %i.hg, %bb.x ]
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !8188 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hd, i64 58
  %i.hx = load i8, ptr %i.hw, align 2, !tbaa !458, !range !56, !noundef !57
  %i.hy = trunc nuw i8 %i.hx to i1
  br i1 %i.hy, label %_ZNK8facebook5velox4exec11GenericView7compareERKS2_NS0_12CompareFlagsE.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNK8facebook5velox4exec11GenericView12decodedIndexEv.exit.i.i.i
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hd, i64 59
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !459, !range !56, !noundef !57
  %i.ib = trunc nuw i8 %i.ia to i1
  br i1 %i.ib, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hd, i64 64
  %i.id = load i32, ptr %i.ic, align 8, !tbaa !460
  br label %_ZNK8facebook5velox4exec11GenericView7compareERKS2_NS0_12CompareFlagsE.exit.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !461
  %i.ig = sext i32 %i.hv to i64
  %i.ih = getelementptr inbounds [4 x i8], ptr %i.if, i64 %i.ig
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !3
  br label %_ZNK8facebook5velox4exec11GenericView7compareERKS2_NS0_12CompareFlagsE.exit.i.i

_ZNK8facebook5velox4exec11GenericView7compareERKS2_NS0_12CompareFlagsE.exit.i.i: ; preds = %bb.ad, %bb.ac, %_ZNK8facebook5velox4exec11GenericView12decodedIndexEv.exit.i.i.i
  %.0.i.i5.i.i.i = phi i32 [ %i.ii, %bb.ad ], [ %i.id, %bb.ac ], [ %i.hv, %_ZNK8facebook5velox4exec11GenericView12decodedIndexEv.exit.i.i.i ]
  %i.ij = load ptr, ptr %i.hc, align 8, !tbaa !46
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 80
  %i.il = load ptr, ptr %i.ik, align 8
  %i.im = call i64 %i.il(ptr noundef nonnull align 8 dereferenceable(94) %i.hc, ptr noundef %i.hf, i32 noundef %.0.i.i.i.i.i, i32 noundef %.0.i.i5.i.i.i, i64 4295033089), !inline_history !11643 ; 2 uses
  %i.in = and i64 %i.im, 4294967296
  %.not.i.i28 = icmp eq i64 %i.in, 0
  br i1 %.not.i.i28, label %bb.ae, label %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS6_ENS4_9functions32MapSubsetFunctionEqualComparatorEvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit, !prof !15

bb.ae:                                            ; preds = %_ZNK8facebook5velox4exec11GenericView7compareERKS2_NS0_12CompareFlagsE.exit.i.i
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox9functions32MapSubsetFunctionEqualComparatorclERKNS0_4exec11GenericViewES6_E18veloxCheckFailArgs, ptr noundef nonnull @.str.233) #40
  unreachable

_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS6_ENS4_9functions32MapSubsetFunctionEqualComparatorEvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit: ; preds = %_ZNK8facebook5velox4exec11GenericView7compareERKS2_NS0_12CompareFlagsE.exit.i.i
  %i.io = and i64 %i.im, 4294967295
  %i.ip = icmp eq i64 %i.io, 0
  br i1 %i.ip, label %bb.ah, label %.critedge.i.i, !prof !232, !llvm.loop !11644

bb.af:                                            ; preds = %.critedge.i.i
  %i.iq = getelementptr inbounds nuw i8, ptr %i.gj, i64 15
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !11645
  %i.is = icmp eq i8 %i.ir, 0
  br i1 %i.is, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapSubsetFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.ag, !prof !232

bb.ag:                                            ; preds = %bb.af
  %i.it = add i64 %.022.i.i100, -1                ; 2 uses
  %i.iu = add i64 %i.fy, %.0.i.i101
  %.not.i.i = icmp eq i64 %i.it, 0
  br i1 %.not.i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapSubsetFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE4findIS7_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.w, !llvm.loop !11647

end_hunk_10
