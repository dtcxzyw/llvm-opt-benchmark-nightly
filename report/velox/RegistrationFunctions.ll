inline.NumInlined: 21036
inline.NumDeleted: 6221
loop-unroll.NumCompletelyUnrolled: 92
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 106
begin_hunk_0_@_ZN8facebook5velox4exec12VectorReaderINS0_10CustomTypeINS0_10IPAddressTELb1EEEED2Ev:bb.a

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !91
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !93
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !94
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34, !inline_history !3650
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !94
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34, !inline_history !3650
  br label %_ZNSt12__shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE10EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE10EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !77

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34
  br label %_ZNSt12__shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE10EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE10EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox4exec34CustomTypeWithCustomComparisonViewInED2Ev(ptr noundef nonnull align 16 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !83   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE10EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !91
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !93
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !94
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34, !inline_history !3650
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !94
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34, !inline_history !3650
  br label %_ZNSt12__shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE10EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE10EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !77

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34
  br label %_ZNSt12__shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE10EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE10EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS3_10VectorExecEEESB_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNSD_INS0_10IPAddressTELb1EEElEEEJSI_lEEEE8applyUdfIZNKSL_7iterateIJNS3_12VectorReaderISI_EENS3_24ConstantFlatVectorReaderIlEEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvST_SX_EUlSX_E_ZNKSM_IS12_EEvST_SX_EUlSX_E0_EEvRKS1_SX_SZ_EUlSX_E_EEvSX_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef byval(%class.anon.1962) align 8 %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::array.1963", align 16 ; 6 uses
  %3 = alloca %"class.std::tuple.1964", align 16  ; 4 uses
  %4 = alloca %"class.folly::IPAddressV6", align 4 ; 4 uses
  %5 = alloca %"class.facebook::velox::exec::CustomTypeWithCustomComparisonView", align 16 ; 9 uses
  %6 = alloca %"class.facebook::velox::Status", align 8 ; 10 uses
  %7 = alloca %"class.facebook::velox::Status", align 8 ; 8 uses
  %8 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %9 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !726, !range !104, !noundef !105
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i:     ; preds = %bb.a
  %.0.in.pre.i = load i8, ptr %i.a, align 4, !tbaa !79, !range !104
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !727
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !729  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !730
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !513    ; 2 uses
  %.not.i.i = icmp sgt i32 %i.i, 0
  br i1 %.not.i.i, label %bb.e, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.i, 2147483584                 ; 3 uses
  %i.o = zext nneg i32 %i.n to i64
  %.not37.i.i.not.i85.not = icmp eq i32 %i.n, 0
  br i1 %.not37.i.i.not.i85.not, label %.critedge.i.i.i, label %.lr.ph87

bb.f:                                             ; preds = %.lr.ph87
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i86, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.o
  br i1 %.not37.i.i.not.i, label %.lr.ph87, label %.critedge.i.i.i, !llvm.loop !731

.lr.ph87:                                         ; preds = %bb.e, %bb.f
  %indvars.iv.i86 = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i86, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !159
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, !llvm.loop !731

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
  %i.y = load i64, ptr %i.x, align 8, !tbaa !159
  %.demorgan.i = or i64 %i.y, %notmask.i40.i.i.i
  %i.z = icmp eq i64 %.demorgan.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i:   ; preds = %.lr.ph87, %bb.g, %.critedge.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph87 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit: ; preds = %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i
  %.0.in.i = phi i8 [ %.0.in.pre.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i ]
  %.0.i = trunc nuw i8 %.0.in.i to i1
  br i1 %.0.i, label %bb.h, label %bb.av

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !729 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !727 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %.lr.ph, label %.loopexit46

.lr.ph:                                           ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.am = sext i32 %i.ag to i64
  %.pre69 = load ptr, ptr %1, align 8, !tbaa !3651
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES9_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNSB_INS0_10IPAddressTELb1EEElEEEJSG_lEEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISG_EENS1_24ConstantFlatVectorReaderIlEEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSK_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_ENKUlSV_E_clIiEEDaSV_.exit
  %10 = phi ptr [ %.pre69, %.lr.ph ], [ %16, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES9_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNSB_INS0_10IPAddressTELb1EEElEEEJSG_lEEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISG_EENS1_24ConstantFlatVectorReaderIlEEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSK_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_ENKUlSV_E_clIiEEDaSV_.exit ] ; 7 uses
  %indvars.iv = phi i64 [ %i.am, %.lr.ph ], [ %indvars.iv.next, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES9_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNSB_INS0_10IPAddressTELb1EEElEEEJSG_lEEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISG_EENS1_24ConstantFlatVectorReaderIlEEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSK_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_ENKUlSV_E_clIiEEDaSV_.exit ] ; 4 uses
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !3590 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.ao = load ptr, ptr %10, align 8, !tbaa !3652, !nonnull !105, !align !608 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 116
  %i.aq = trunc nsw i64 %indvars.iv to i32        ; 5 uses
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !3597
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !3655, !nonnull !105, !align !608 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !3656, !noalias !3661, !nonnull !105, !align !608 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !3664, !noalias !3661, !nonnull !105, !align !608 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34, !noalias !3665
  call void @llvm.experimental.noalias.scope.decl(metadata !3668)
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !3671, !noalias !3668, !nonnull !105, !align !608 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !1305, !noalias !3668
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 58
  %i.bc = load i8, ptr %i.bb, align 2, !tbaa !1306, !range !104, !noalias !3668, !noundef !105
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 59
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !1307, !range !104, !noalias !3668, !noundef !105
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !1308, !noalias !3668
  br label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i

bb.l:                                             ; preds = %bb.j
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1309, !noalias !3668
  %i.bl = shl nsw i64 %indvars.iv, 2
  %i.bm = getelementptr inbounds i8, ptr %i.bk, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !3, !noalias !3668
  br label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i

_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i: ; preds = %bb.l, %bb.k, %bb.i
  %.0.i.i.i = phi i32 [ %i.bn, %bb.l ], [ %i.bi, %bb.k ], [ %i.aq, %bb.i ]
  %i.bo = sext i32 %.0.i.i.i to i64
  %i.bp = shl nsw i64 %i.bo, 4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bp
  %.0.copyload.i.i.i = load i128, ptr %i.bq, align 1, !noalias !3668
  %i.br = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i128 %.0.copyload.i.i.i, ptr %5, align 16, !tbaa !3674, !alias.scope !3668
  %i.bs = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !83, !noalias !3668 ; 2 uses
  %i.bu = load <2 x ptr>, ptr %i.br, align 8, !tbaa !86, !noalias !3668
  store <2 x ptr> %i.bu, ptr %i.aj, align 16, !tbaa !86, !alias.scope !3668
  %.not.i.i.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i.i, label %.noexc9, label %bb.m

bb.m:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 3 uses
  %i.bw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26, !noalias !3668
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bw, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = load i32, ptr %i.bv, align 4, !tbaa !3, !noalias !3668
  %i.by = add nsw i32 %i.bx, 1
  store i32 %i.by, ptr %i.bv, align 4, !tbaa !3, !noalias !3668
  br label %.noexc9

bb.o:                                             ; preds = %bb.m
  %i.bz = atomicrmw volatile add ptr %i.bv, i32 1 acq_rel, align 4, !noalias !3668 ; 0 uses
  br label %.noexc9

.noexc9:                                          ; preds = %bb.o, %bb.n, %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i
  %i.ca = load ptr, ptr %i.ax, align 8, !tbaa !3586, !noalias !3676
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !3589, !noalias !3676
  %i.cd = sext i32 %i.cc to i64
  %i.ce = mul nsw i64 %indvars.iv, %i.cd
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !159, !noalias !3676
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(32) %5, i64 16, i1 false)
  %i.ch = load <16 x i8>, ptr %2, align 16, !tbaa !26
  %i.ci = shufflevector <16 x i8> %i.ch, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %i.ci, ptr %2, align 16, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @_ZN5folly11IPAddressV6C1ERKSt5arrayIhLm16EE(ptr noundef nonnull align 4 dereferenceable(18) %4, ptr noundef nonnull align 1 dereferenceable(16) %2) #34
  invoke void @_ZN8facebook5velox9functions16IPPrefixFunctionINS0_4exec10VectorExecEE12makeIPPrefixERKN5folly11IPAddressV6El(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.1964") align 16 %3, ptr noundef nonnull align 4 dereferenceable(18) %4, i64 noundef %i.cg)
          to label %.noexc17 unwind label %bb.p

.noexc17:                                         ; preds = %.noexc9
  invoke void @_ZN8facebook5velox4exec9RowWriterIJnaEE10assignImplIJLm0ELm1EEEEvRKSt5tupleIJnaEESt16integer_sequenceImJXspT_EEE(ptr noundef nonnull align 8 dereferenceable(88) %i.at, ptr noundef nonnull align 16 dereferenceable(32) %3)
          to label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE14doApplyNotNullILm0ENS1_12VectorReaderISE_EEJNS1_24ConstantFlatVectorReaderIlEEETnNSt9enable_ifIXneT_L_ZNSG_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_9RowWriterIJnaEEERbRT0_DpRKT1_.exit unwind label %bb.p

bb.p:                                             ; preds = %.noexc17, %.noexc9
  %i.cj = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @_ZN8facebook5velox4exec34CustomTypeWithCustomComparisonViewInED2Ev(ptr noundef nonnull align 16 dead_on_return(32) dereferenceable(32) %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34, !noalias !3665
  br label %.body

_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE14doApplyNotNullILm0ENS1_12VectorReaderISE_EEJNS1_24ConstantFlatVectorReaderIlEEETnNSt9enable_ifIXneT_L_ZNSG_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_9RowWriterIJnaEEERbRT0_DpRKT1_.exit: ; preds = %.noexc17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  store ptr null, ptr %6, align 8, !tbaa !720, !alias.scope !3679
  %i.ck = load ptr, ptr %i.ak, align 8, !tbaa !83 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i, label %.noexc.thread, label %bb.q

.noexc.thread:                                    ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE14doApplyNotNullILm0ENS1_12VectorReaderISE_EEJNS1_24ConstantFlatVectorReaderIlEEETnNSt9enable_ifIXneT_L_ZNSG_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_9RowWriterIJnaEEERbRT0_DpRKT1_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34, !noalias !3665
  br label %bb.ac

bb.q:                                             ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE14doApplyNotNullILm0ENS1_12VectorReaderISE_EEJNS1_24ConstantFlatVectorReaderIlEEETnNSt9enable_ifIXneT_L_ZNSG_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_9RowWriterIJnaEEERbRT0_DpRKT1_.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 4 uses
  %i.cm = load atomic i64, ptr %i.cl acquire, align 8 ; 2 uses
  %i.cn = icmp eq i64 %i.cm, 4294967297
  %i.co = trunc i64 %i.cm to i32                  ; 2 uses
  %.pre = load ptr, ptr %1, align 8, !tbaa !3651  ; 7 uses
  br i1 %i.cn, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.cl, align 8, !tbaa !91
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  store i32 0, ptr %i.cp, align 4, !tbaa !93
  %i.cq = load ptr, ptr %i.ck, align 8, !tbaa !94
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(16) %i.ck) #34, !inline_history !3682
  %i.ct = load ptr, ptr %i.ck, align 8, !tbaa !94
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(16) %i.ck) #34, !inline_history !3682
  br label %.noexc

bb.s:                                             ; preds = %bb.q
  %i.cw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i.i = icmp eq i8 %i.cw, 0
  br i1 %.not.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cx = add nsw i32 %i.co, -1
  store i32 %i.cx, ptr %i.cl, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.cy = atomicrmw volatile add ptr %i.cl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i = phi i32 [ %i.co, %bb.t ], [ %i.cy, %bb.u ]
  %i.cz = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.cz, label %bb.v, label %.noexc, !prof !77

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ck) #34
  br label %.noexc

.noexc:                                           ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.v
  %.pr = load ptr, ptr %6, align 8, !tbaa !720
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34, !noalias !3665
  %i.da = icmp eq ptr %.pr, null
  br i1 %i.da, label %bb.ac, label %bb.w, !prof !3683

bb.w:                                             ; preds = %.noexc
  %i.db = load ptr, ptr %10, align 8, !tbaa !3652, !nonnull !105, !align !608
  invoke void @_ZN8facebook5velox6StatusC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 128
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !3567, !nonnull !105, !align !608
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %i.dd, i32 noundef %i.aq, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE12ApplyContext8setErrorEiNS0_6StatusE.exit unwind label %bb.aa

_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE12ApplyContext8setErrorEiNS0_6StatusE.exit: ; preds = %bb.x
  %i.de = load ptr, ptr %7, align 8, !tbaa !720
  %.not.i = icmp eq ptr %i.de, null
  br i1 %.not.i, label %_ZN8facebook5velox6StatusD2Ev.exit, label %bb.y, !prof !221

bb.y:                                             ; preds = %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE12ApplyContext8setErrorEiNS0_6StatusE.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
  br label %_ZN8facebook5velox6StatusD2Ev.exit

_ZN8facebook5velox6StatusD2Ev.exit:               ; preds = %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE12ApplyContext8setErrorEiNS0_6StatusE.exit, %bb.y
  %i.df = load ptr, ptr %10, align 8, !tbaa !3652, !nonnull !105, !align !608 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 120
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !3561 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 116
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !3597
  %i.dk = load ptr, ptr %i.dh, align 8, !tbaa !94
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 144
  %i.dm = load ptr, ptr %i.dl, align 8
  invoke void %i.dm(ptr noundef nonnull align 8 dereferenceable(94) %i.dh, i32 noundef %i.dj, i1 noundef zeroext true)
          to label %.noexc21 unwind label %bb.z, !inline_history !3598

.noexc21:                                         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %i.df, i64 16 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !94
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  %i.dq = load ptr, ptr %i.dp, align 8
  invoke void %i.dq(ptr noundef nonnull align 8 dereferenceable(112) %i.dn)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EENS1_24ConstantFlatVectorReaderIlEEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_ENKUlST_E_clIiEEDaST_.exit unwind label %bb.z, !inline_history !3598

bb.z:                                             ; preds = %bb.ac, %.noexc21, %_ZN8facebook5velox6StatusD2Ev.exit, %bb.w
  %11 = phi ptr [ %12, %bb.ac ], [ %.pre, %.noexc21 ], [ %.pre, %_ZN8facebook5velox6StatusD2Ev.exit ], [ %.pre, %bb.w ]
  %i.dr = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook5velox6StatusD2Ev.exit24

bb.aa:                                            ; preds = %bb.x
  %i.ds = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.dt = load ptr, ptr %7, align 8, !tbaa !720
  %.not.i23 = icmp eq ptr %i.dt, null
  br i1 %.not.i23, label %_ZN8facebook5velox6StatusD2Ev.exit24, label %bb.ab, !prof !221

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
  br label %_ZN8facebook5velox6StatusD2Ev.exit24

bb.ac:                                            ; preds = %.noexc, %.noexc.thread
  %12 = phi ptr [ %.pre, %.noexc ], [ %10, %.noexc.thread ] ; 2 uses
  %i.du = load ptr, ptr %10, align 8, !tbaa !3652, !nonnull !105, !align !608 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 120
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !3561 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 116
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !3597
  %i.dz = load ptr, ptr %i.dw, align 8, !tbaa !94
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 144
  %i.eb = load ptr, ptr %i.ea, align 8
  invoke void %i.eb(ptr noundef nonnull align 8 dereferenceable(94) %i.dw, i32 noundef %i.dy, i1 noundef zeroext false)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EENS1_24ConstantFlatVectorReaderIlEEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_ENKUlST_E_clIiEEDaST_.exit unwind label %bb.z, !inline_history !3684

_ZN8facebook5velox6StatusD2Ev.exit24:             ; preds = %bb.ab, %bb.aa, %bb.z
  %13 = phi ptr [ %11, %bb.z ], [ %.pre, %bb.aa ], [ %.pre, %bb.ab ]
  %.pn.i4 = phi { ptr, i32 } [ %i.dr, %bb.z ], [ %i.ds, %bb.aa ], [ %i.ds, %bb.ab ]
  %i.ec = load ptr, ptr %6, align 8, !tbaa !720
  %.not.i28 = icmp eq ptr %i.ec, null
  br i1 %.not.i28, label %_ZN8facebook5velox6StatusD2Ev.exit29, label %bb.ad, !prof !221

bb.ad:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
  br label %_ZN8facebook5velox6StatusD2Ev.exit29

_ZN8facebook5velox6StatusD2Ev.exit29:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %.body

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EENS1_24ConstantFlatVectorReaderIlEEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_ENKUlST_E_clIiEEDaST_.exit: ; preds = %bb.ac, %.noexc21
  %14 = phi ptr [ %12, %bb.ac ], [ %.pre, %.noexc21 ]
  %i.ed = load ptr, ptr %6, align 8, !tbaa !720
  %.not.i30 = icmp eq ptr %i.ed, null
  br i1 %.not.i30, label %_ZN8facebook5velox6StatusD2Ev.exit31, label %bb.ae, !prof !221

bb.ae:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EENS1_24ConstantFlatVectorReaderIlEEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_ENKUlST_E_clIiEEDaST_.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
  br label %_ZN8facebook5velox6StatusD2Ev.exit31

_ZN8facebook5velox6StatusD2Ev.exit31:             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EENS1_24ConstantFlatVectorReaderIlEEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_ENKUlST_E_clIiEEDaST_.exit, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES9_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNSB_INS0_10IPAddressTELb1EEElEEEJSG_lEEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISG_EENS1_24ConstantFlatVectorReaderIlEEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSK_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_ENKUlSV_E_clIiEEDaSV_.exit

.body:                                            ; preds = %bb.p, %_ZN8facebook5velox6StatusD2Ev.exit29
  %15 = phi ptr [ %13, %_ZN8facebook5velox6StatusD2Ev.exit29 ], [ %10, %bb.p ] ; 2 uses
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i4, %_ZN8facebook5velox6StatusD2Ev.exit29 ], [ %i.cj, %bb.p ] ; 3 uses
  %i.ee = extractvalue { ptr, i32 } %eh.lpad-body, 0 ; 2 uses
  %i.ef = extractvalue { ptr, i32 } %eh.lpad-body, 1 ; 2 uses
  %i.eg = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #34
  %i.eh = icmp eq i32 %i.ef, %i.eg
  br i1 %i.eh, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.body
  %i.ei = call ptr @__cxa_begin_catch(ptr %i.ee) #34
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !742 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 144
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !7  ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 152
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !16
  %i.ep = icmp eq i64 %i.eo, 4
  br i1 %i.ep, label %.lr.ph.i.i.i.preheader.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader.i.preheader:               ; preds = %bb.af
  %i.eq = load i8, ptr %i.em, align 1, !tbaa !26
  %or.cond.not.i.i.i = icmp eq i8 %i.eq, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.preheader.i.preheader
  %i.er = getelementptr inbounds nuw i8, ptr %i.em, i64 1
  %i.es = load i8, ptr %i.er, align 1, !tbaa !26
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.es, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.em, i64 2
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !26
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.eu, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.ev = getelementptr inbounds nuw i8, ptr %i.em, i64 3
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !26
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.ew, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  %i.ex = load ptr, ptr %i.al, align 8, !tbaa !3685, !nonnull !105, !align !608
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !3686, !nonnull !105, !align !608 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 120
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !3561 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 116
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !3597
  %i.fd = load ptr, ptr %i.fa, align 8, !tbaa !94
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 144
  %i.ff = load ptr, ptr %i.fe, align 8
  invoke void %i.ff(ptr noundef nonnull align 8 dereferenceable(94) %i.fa, i32 noundef %i.fc, i1 noundef zeroext true)
          to label %.noexc38 unwind label %.loopexit49, !inline_history !3598

.loopexit:                                        ; preds = %bb.af, %.lr.ph.i.i.i.preheader.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #37
          to label %bb.au unwind label %.loopexit.split-lp

bb.ag:                                            ; preds = %.body
  %i.fg = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #34
  %i.fh = icmp eq i32 %i.ef, %i.fg
  br i1 %i.fh, label %bb.ah, label %.loopexit47

bb.ah:                                            ; preds = %bb.ag
  %i.fi = call ptr @__cxa_begin_catch(ptr %i.ee) #34 ; 0 uses
  %i.fj = load ptr, ptr %i.al, align 8, !tbaa !3685, !nonnull !105, !align !608
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !3686, !nonnull !105, !align !608 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 120
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !3561 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 116
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !3597
  %i.fp = load ptr, ptr %i.fm, align 8, !tbaa !94
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 144
  %i.fr = load ptr, ptr %i.fq, align 8
  invoke void %i.fr(ptr noundef nonnull align 8 dereferenceable(94) %i.fm, i32 noundef %i.fo, i1 noundef zeroext true)
          to label %.noexc32 unwind label %bb.ak, !inline_history !3598

.noexc32:                                         ; preds = %bb.ah
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fk, i64 16 ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !94
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 32
  %i.fv = load ptr, ptr %i.fu, align 8
  invoke void %i.fv(ptr noundef nonnull align 8 dereferenceable(112) %i.fs)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EENS1_24ConstantFlatVectorReaderIlEEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_ENKUlST_E0_clIiEEDaST_.exit7 unwind label %bb.ak, !inline_history !3598

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EENS1_24ConstantFlatVectorReaderIlEEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_ENKUlST_E0_clIiEEDaST_.exit7: ; preds = %.noexc32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %8) #34
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.an, i32 noundef %i.aq, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.ai unwind label %bb.al

bb.ai:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EENS1_24ConstantFlatVectorReaderIlEEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_ENKUlST_E0_clIiEEDaST_.exit7
  %i.fw = load ptr, ptr %8, align 8, !tbaa !369
  %.not.i35 = icmp eq ptr %i.fw, null
  br i1 %.not.i35, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #34
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES9_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNSB_INS0_10IPAddressTELb1EEElEEEJSG_lEEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISG_EENS1_24ConstantFlatVectorReaderIlEEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSK_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_ENKUlSV_E_clIiEEDaSV_.exit

bb.ak:                                            ; preds = %.noexc32, %bb.ah
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.al:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EENS1_24ConstantFlatVectorReaderIlEEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_ENKUlST_E0_clIiEEDaST_.exit7
  %i.fy = landingpad { ptr, i32 }
          cleanup
  %i.fz = load ptr, ptr %8, align 8, !tbaa !369
  %.not.i36 = icmp eq ptr %i.fz, null
  br i1 %.not.i36, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #34
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37: ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %bb.an

bb.an:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37, %bb.ak
  %.pn.i = phi { ptr, i32 } [ %i.fy, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37 ], [ %i.fx, %bb.ak ]
  invoke void @__cxa_end_catch()
          to label %.loopexit47 unwind label %bb.at

.loopexit49:                                      ; preds = %tailrecurse.i.i.i.i.3, %.noexc38
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.loopexit.split-lp:                               ; preds = %.loopexit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.noexc38:                                         ; preds = %tailrecurse.i.i.i.i.3
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ey, i64 16 ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !94
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 32
  %i.gd = load ptr, ptr %i.gc, align 8
  invoke void %i.gd(ptr noundef nonnull align 8 dereferenceable(112) %i.ga)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EENS1_24ConstantFlatVectorReaderIlEEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_ENKUlST_E0_clIiEEDaST_.exit unwind label %.loopexit49, !inline_history !3598

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EENS1_24ConstantFlatVectorReaderIlEEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_ENKUlST_E0_clIiEEDaST_.exit: ; preds = %.noexc38
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %9) #34
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.an, i32 noundef %i.aq, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.ao unwind label %bb.aq

bb.ao:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EENS1_24ConstantFlatVectorReaderIlEEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_ENKUlST_E0_clIiEEDaST_.exit
  %i.ge = load ptr, ptr %9, align 8, !tbaa !369
  %.not.i41 = icmp eq ptr %i.ge, null
  br i1 %.not.i41, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit42, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #34
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit42

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit42: ; preds = %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES9_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNSB_INS0_10IPAddressTELb1EEElEEEJSG_lEEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISG_EENS1_24ConstantFlatVectorReaderIlEEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSK_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_ENKUlSV_E_clIiEEDaSV_.exit

bb.aq:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EENS1_24ConstantFlatVectorReaderIlEEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_ENKUlST_E0_clIiEEDaST_.exit
  %i.gf = landingpad { ptr, i32 }
          cleanup
  %i.gg = load ptr, ptr %9, align 8, !tbaa !369
  %.not.i43 = icmp eq ptr %i.gg, null
  br i1 %.not.i43, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit44, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #34
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit44

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit44: ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %bb.as

bb.as:                                            ; preds = %.loopexit49, %.loopexit.split-lp, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit44
  %.pn16.i = phi { ptr, i32 } [ %i.gf, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit44 ], [ %lpad.loopexit, %.loopexit49 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @__cxa_end_catch()
          to label %.loopexit47 unwind label %bb.at

.loopexit47:                                      ; preds = %bb.ag, %bb.as, %bb.an
  %.merged.i = phi { ptr, i32 } [ %.pn.i, %bb.an ], [ %.pn16.i, %bb.as ], [ %eh.lpad-body, %bb.ag ]
  resume { ptr, i32 } %.merged.i

bb.at:                                            ; preds = %bb.as, %bb.an
  %i.gh = landingpad { ptr, i32 }
          catch ptr null
  %i.gi = extractvalue { ptr, i32 } %i.gh, 0
  call void @__clang_call_terminate(ptr %i.gi) #38
  unreachable

bb.au:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES9_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNSB_INS0_10IPAddressTELb1EEElEEEJSG_lEEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISG_EENS1_24ConstantFlatVectorReaderIlEEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSK_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_ENKUlSV_E_clIiEEDaSV_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit31, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit42
  %16 = phi ptr [ %14, %_ZN8facebook5velox6StatusD2Ev.exit31 ], [ %15, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit ], [ %15, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit42 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit46, label %bb.i, !llvm.loop !3688

bb.av:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.gj = load ptr, ptr %0, align 8, !tbaa !513
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !727
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !729
  tail call void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS3_10VectorExecEEESB_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNSD_INS0_10IPAddressTELb1EEElEEEJSI_lEEEE8applyUdfIZNKSL_7iterateIJNS3_12VectorReaderISI_EENS3_24ConstantFlatVectorReaderIlEEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvST_SX_EUlSX_E_ZNKSM_IS12_EEvST_SX_EUlSX_E0_EEvRKNS0_17SelectivityVectorESX_SZ_EUlSX_E_EEvPKmiibSX_(ptr noundef %i.gj, i32 noundef %i.gl, i32 noundef %i.gn, i1 noundef zeroext true, ptr noundef nonnull byval(%class.anon.1962) align 8 %1)
  br label %.loopexit46

.loopexit46:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES9_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNSB_INS0_10IPAddressTELb1EEElEEEJSG_lEEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISG_EENS1_24ConstantFlatVectorReaderIlEEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSK_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_ENKUlSV_E_clIiEEDaSV_.exit, %bb.h, %bb.av
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox9functions16IPPrefixFunctionINS0_4exec10VectorExecEE12makeIPPrefixERKN5folly11IPAddressV6El(ptr dead_on_unwind noalias writable sret(%"class.std::tuple.1964") align 16 %0, ptr noundef nonnull align 4 dereferenceable(18) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.folly::IPAddressV6", align 4 ; 5 uses
  %4 = alloca %"class.folly::IPAddressV4", align 4 ; 4 uses
  %5 = alloca %"class.folly::IPAddressV4", align 4 ; 4 uses
  %6 = alloca %"class.folly::IPAddressV6", align 4 ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZNK5folly11IPAddressV612isIPv4MappedEv(ptr noundef nonnull align 4 dereferenceable(18) %1)
  %.sink.sroa.gep = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sink.sroa.gep62 = getelementptr inbounds nuw i8, ptr %3, i64 8
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %2, 32
  br i1 %i.b, label %bb.c, label %bb.f, !prof !77

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions16IPPrefixFunctionINS0_4exec10VectorExecEE12makeIPPrefixERKN5folly11IPAddressV6ElE18veloxCheckFailArgs, ptr noundef nonnull @.str.203) #37
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %2, 128
  br i1 %i.c, label %bb.e, label %bb.f, !prof !77

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions16IPPrefixFunctionINS0_4exec10VectorExecEE12makeIPPrefixERKN5folly11IPAddressV6ElE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.205) #37
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.d = tail call noundef zeroext i1 @_ZNK5folly11IPAddressV612isIPv4MappedEv(ptr noundef nonnull align 4 dereferenceable(18) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  br i1 %i.d, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.e = tail call i32 @_ZNK5folly11IPAddressV610createIPv4Ev(ptr noundef nonnull align 4 dereferenceable(18) %1)
  store i32 %i.e, ptr %5, align 4
  %i.f = call i32 @_ZNK5folly11IPAddressV44maskEm(ptr noundef nonnull align 4 dereferenceable(4) %5, i64 noundef %2)
  store i32 %i.f, ptr %4, align 4
  call void @_ZNK5folly11IPAddressV410createIPv6Ev(ptr dead_on_unwind nonnull writable sret(%"class.folly::IPAddressV6") align 4 %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
  br label %.lr.ph.i.i

bb.h:                                             ; preds = %bb.f
  call void @_ZNK5folly11IPAddressV64maskEm(ptr dead_on_unwind nonnull writable sret(%"class.folly::IPAddressV6") align 4 %6, ptr noundef nonnull align 4 dereferenceable(18) %1, i64 noundef %2)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.g
  %.sink.sroa.phi = phi ptr [ %.sink.sroa.gep, %bb.h ], [ %.sink.sroa.gep62, %bb.g ]
  %.sink = phi ptr [ %6, %bb.h ], [ %3, %bb.g ]
  %.sroa.3.0.copyload.i14 = load i64, ptr %.sink.sroa.phi, align 4
  %.sroa.0.sroa.19.0.in.in = load i64, ptr %.sink, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.g = zext i64 %.sroa.0.sroa.19.0.in.in to i128
  %i.h = zext i64 %.sroa.3.0.copyload.i14 to i128
  %i.i = shl nuw i128 %i.h, 64
  %i.j = or disjoint i128 %i.i, %i.g
  %.sroa.0.0.insert.insert = call i128 @llvm.bswap.i128(i128 %i.j)
  %i.k = trunc nuw i64 %2 to i8
  store i8 %i.k, ptr %0, align 16, !tbaa !3689, !alias.scope !3691
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i128 %.sroa.0.0.insert.insert, ptr %i.l, align 16, !tbaa !3694, !alias.scope !3691
  ret void
}

; Function Attrs: nounwind
declare void @_ZN5folly11IPAddressV6C1ERKSt5arrayIhLm16EE(ptr noundef nonnull align 4 dereferenceable(18), ptr noundef nonnull align 1 dereferenceable(16)) unnamed_addr #15

declare noundef zeroext i1 @_ZNK5folly11IPAddressV612isIPv4MappedEv(ptr noundef nonnull align 4 dereferenceable(18)) local_unnamed_addr #1

declare i32 @_ZNK5folly11IPAddressV610createIPv4Ev(ptr noundef nonnull align 4 dereferenceable(18)) local_unnamed_addr #1

declare i32 @_ZNK5folly11IPAddressV44maskEm(ptr noundef nonnull align 4 dereferenceable(4), i64 noundef) local_unnamed_addr #1

declare void @_ZNK5folly11IPAddressV410createIPv6Ev(ptr dead_on_unwind writable sret(%"class.folly::IPAddressV6") align 4, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare void @_ZNK5folly11IPAddressV64maskEm(ptr dead_on_unwind writable sret(%"class.folly::IPAddressV6") align 4, ptr noundef nonnull align 4 dereferenceable(18), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4exec9RowWriterIJnaEE10assignImplIJLm0ELm1EEEEvRKSt5tupleIJnaEESt16integer_sequenceImJXspT_EEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 16 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3565 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3696 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i128, ptr %i.f, align 16, !tbaa !558
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 184 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !431  ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.b, label %_ZN8facebook5velox10FlatVectorInE12ensureValuesEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.k = tail call noundef ptr @_ZN8facebook5velox10FlatVectorInE16mutableRawValuesEv(ptr noundef nonnull align 16 dereferenceable(240) %i.c) ; 0 uses
  %.pre.i = load ptr, ptr %i.h, align 8, !tbaa !431
  br label %_ZN8facebook5velox10FlatVectorInE12ensureValuesEv.exit.i

_ZN8facebook5velox10FlatVectorInE12ensureValuesEv.exit.i: ; preds = %bb.b, %bb.a
  %i.l = phi ptr [ %i.i, %bb.a ], [ %.pre.i, %bb.b ]
  %i.m = sext i32 %i.e to i64
  %i.n = getelementptr inbounds [16 x i8], ptr %i.l, i64 %i.m
  store i128 %i.g, ptr %i.n, align 16, !tbaa !558
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !526
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_ZN8facebook5velox10FlatVectorInE3setEin.exit, label %bb.c

bb.c:                                             ; preds = %_ZN8facebook5velox10FlatVectorInE12ensureValuesEv.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.r = load i32, ptr %i.q, align 8, !tbaa !525
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 16 dereferenceable(240) %i.c, i32 noundef %i.r, i1 noundef zeroext true)
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !526  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 44
  %i.u = load i8, ptr %i.t, align 4, !tbaa !527
  %i.v = and i8 %i.u, 2
  %.not.i3.i = icmp eq i8 %i.v, 0
  br i1 %.not.i3.i, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, label %bb.d, !prof !221

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #37
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i: ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !532
  %i.y = lshr i32 %i.e, 3
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.z ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !26
  %i.ac = trunc i32 %i.e to i8
  %i.ad = and i8 %i.ac, 7
  %i.ae = shl nuw i8 1, %i.ad
  %i.af = or i8 %i.ab, %i.ae
  store i8 %i.af, ptr %i.aa, align 1, !tbaa !26
  br label %_ZN8facebook5velox10FlatVectorInE3setEin.exit

_ZN8facebook5velox10FlatVectorInE3setEin.exit:    ; preds = %_ZN8facebook5velox10FlatVectorInE12ensureValuesEv.exit.i, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !3566 ; 5 uses
  %i.ah = load i32, ptr %i.d, align 4, !tbaa !3696 ; 3 uses
  %i.ai = load i8, ptr %1, align 16, !tbaa !26
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 120 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !3610 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.e, label %_ZN8facebook5velox10FlatVectorIaE12ensureValuesEv.exit.i

bb.e:                                             ; preds = %_ZN8facebook5velox10FlatVectorInE3setEin.exit
  %i.am = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIaE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(176) %i.ag) ; 0 uses
  %.pre.i6 = load ptr, ptr %i.aj, align 8, !tbaa !3610
  br label %_ZN8facebook5velox10FlatVectorIaE12ensureValuesEv.exit.i

_ZN8facebook5velox10FlatVectorIaE12ensureValuesEv.exit.i: ; preds = %bb.e, %_ZN8facebook5velox10FlatVectorInE3setEin.exit
  %i.an = phi ptr [ %i.ak, %_ZN8facebook5velox10FlatVectorInE3setEin.exit ], [ %.pre.i6, %bb.e ]
  %i.ao = sext i32 %i.ah to i64
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 %i.ao
  store i8 %i.ai, ptr %i.ap, align 1, !tbaa !26
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !526
  %.not.i3 = icmp eq ptr %i.ar, null
  br i1 %.not.i3, label %_ZN8facebook5velox10FlatVectorIaE3setEia.exit, label %bb.f

bb.f:                                             ; preds = %_ZN8facebook5velox10FlatVectorIaE12ensureValuesEv.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.at = load i32, ptr %i.as, align 8, !tbaa !525
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(176) %i.ag, i32 noundef %i.at, i1 noundef zeroext true)
  %i.au = load ptr, ptr %i.aq, align 8, !tbaa !526 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 44
  %i.aw = load i8, ptr %i.av, align 4, !tbaa !527
  %i.ax = and i8 %i.aw, 2
  %.not.i3.i4 = icmp eq i8 %i.ax, 0
  br i1 %.not.i3.i4, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i5, label %bb.g, !prof !221

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #37
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i5: ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 16
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE6unpackILi1ELb0EJNS1_12VectorReaderISE_EEEEEvRNSH_12ApplyContextERSt6vectorISt8optionalINS1_18LocalDecodedVectorEESaISQ_EERKSN_ISt10shared_ptrINS0_10BaseVectorEESaISW_EEDpRT1_:bb.a

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i:    ; preds = %bb.f, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !515 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 88
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !516
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #36
  br label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i: ; preds = %bb.g, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 120) #36
  br label %_ZNSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit

bb.h:                                             ; preds = %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit
  %i.ah = load i64, ptr %i.h, align 8, !tbaa !481
  store i64 %i.ah, ptr %i.q, align 8, !tbaa !481
  store ptr null, ptr %i.h, align 8, !tbaa !481
  store i8 1, ptr %i.m, align 8, !tbaa !521
  br label %_ZNSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit

_ZNSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit: ; preds = %bb.d, %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i, %bb.h
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !520
  %i.ak = load ptr, ptr %2, align 8, !tbaa !517   ; 3 uses
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = sdiv exact i64 %i.an, 24                ; 2 uses
  %.not.i.i = icmp ugt i64 %i.ao, 1
  br i1 %.not.i.i, label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EE2atEm.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.106, i64 noundef 1, i64 noundef %i.ao) #37
  unreachable

_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EE2atEm.exit: ; preds = %_ZNSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !521, !range !104, !noundef !105
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %_ZNRSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEE5valueEv.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EE2atEm.exit
  call void @_ZSt27__throw_bad_optional_accessv() #37
  unreachable

_ZNRSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEE5valueEv.exit: ; preds = %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EE2atEm.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.at = call noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  store ptr %i.at, ptr %10, align 8, !tbaa !481
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %0, ptr %8, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %4, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %10, ptr %.sroa.3.0..sroa_idx.i.i, align 8
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !3567, !nonnull !105, !align !608
  %i.av = load ptr, ptr %1, align 8, !tbaa !3536
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %1, ptr %5, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %8, ptr %i.aw, align 8
  store ptr %1, ptr %6, align 8
  store ptr %5, ptr %7, align 8, !tbaa !86
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %6, ptr %i.ax, align 8, !tbaa !86
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.au, ptr %i.ay, align 8, !tbaa !3753
  call void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS3_10VectorExecEEESB_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNSD_INS0_10IPAddressTELb1EEElEEEJSI_lEEEE8applyUdfIZNKSL_7iterateIJNS3_12VectorReaderISI_EENSO_IlEEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSS_SW_EUlSW_E_ZNKSM_IS11_EEvSS_SW_EUlSW_E0_EEvRKS1_SW_SY_EUlSW_E_EEvSW_(ptr noundef nonnull align 8 dereferenceable(38) %i.av, ptr noundef nonnull byval(%class.anon.1995) align 8 %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !94
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(12) %i.ba), !inline_history !3755
  %i.be = load ptr, ptr %i.az, align 8, !tbaa !94
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(12) %i.az), !inline_history !3755
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS3_10VectorExecEEESB_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNSD_INS0_10IPAddressTELb1EEElEEEJSI_lEEEE8applyUdfIZNKSL_7iterateIJNS3_12VectorReaderISI_EENSO_IlEEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSS_SW_EUlSW_E_ZNKSM_IS11_EEvSS_SW_EUlSW_E0_EEvRKS1_SW_SY_EUlSW_E_EEvSW_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef byval(%class.anon.1995) align 8 %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::array.1963", align 16 ; 6 uses
  %3 = alloca %"class.std::tuple.1964", align 16  ; 4 uses
  %4 = alloca %"class.folly::IPAddressV6", align 4 ; 4 uses
  %5 = alloca %"class.facebook::velox::exec::CustomTypeWithCustomComparisonView", align 16 ; 9 uses
  %6 = alloca %"class.facebook::velox::Status", align 8 ; 10 uses
  %7 = alloca %"class.facebook::velox::Status", align 8 ; 8 uses
  %8 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %9 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !726, !range !104, !noundef !105
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i:     ; preds = %bb.a
  %.0.in.pre.i = load i8, ptr %i.a, align 4, !tbaa !79, !range !104
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !727
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !729  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !730
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !513    ; 2 uses
  %.not.i.i = icmp sgt i32 %i.i, 0
  br i1 %.not.i.i, label %bb.e, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.i, 2147483584                 ; 3 uses
  %i.o = zext nneg i32 %i.n to i64
  %.not37.i.i.not.i83.not = icmp eq i32 %i.n, 0
  br i1 %.not37.i.i.not.i83.not, label %.critedge.i.i.i, label %.lr.ph85

bb.f:                                             ; preds = %.lr.ph85
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i84, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.o
  br i1 %.not37.i.i.not.i, label %.lr.ph85, label %.critedge.i.i.i, !llvm.loop !731

.lr.ph85:                                         ; preds = %bb.e, %bb.f
  %indvars.iv.i84 = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i84, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !159
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, !llvm.loop !731

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
  %i.y = load i64, ptr %i.x, align 8, !tbaa !159
  %.demorgan.i = or i64 %i.y, %notmask.i40.i.i.i
  %i.z = icmp eq i64 %.demorgan.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i:   ; preds = %.lr.ph85, %bb.g, %.critedge.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph85 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit: ; preds = %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i
  %.0.in.i = phi i8 [ %.0.in.pre.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i ]
  %.0.i = trunc nuw i8 %.0.in.i to i1
  br i1 %.0.i, label %bb.h, label %bb.ay

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !729 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !727 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %.lr.ph, label %.loopexit44

.lr.ph:                                           ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.am = sext i32 %i.ag to i64
  %.pre67 = load ptr, ptr %1, align 8, !tbaa !3756
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES9_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNSB_INS0_10IPAddressTELb1EEElEEEJSG_lEEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISG_EENSM_IlEEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSQ_SU_EUlSU_E_ZNKSK_ISZ_EEvSQ_SU_EUlSU_E0_EEvRKNS0_17SelectivityVectorESU_SW_ENKUlSU_E_clIiEEDaSU_.exit
  %10 = phi ptr [ %.pre67, %.lr.ph ], [ %16, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES9_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNSB_INS0_10IPAddressTELb1EEElEEEJSG_lEEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISG_EENSM_IlEEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSQ_SU_EUlSU_E_ZNKSK_ISZ_EEvSQ_SU_EUlSU_E0_EEvRKNS0_17SelectivityVectorESU_SW_ENKUlSU_E_clIiEEDaSU_.exit ] ; 7 uses
  %indvars.iv = phi i64 [ %i.am, %.lr.ph ], [ %indvars.iv.next, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES9_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNSB_INS0_10IPAddressTELb1EEElEEEJSG_lEEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISG_EENSM_IlEEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSQ_SU_EUlSU_E_ZNKSK_ISZ_EEvSQ_SU_EUlSU_E0_EEvRKNS0_17SelectivityVectorESU_SW_ENKUlSU_E_clIiEEDaSU_.exit ] ; 4 uses
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !3753 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.ao = load ptr, ptr %10, align 8, !tbaa !3757, !nonnull !105, !align !608 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 116
  %i.aq = trunc nsw i64 %indvars.iv to i32        ; 6 uses
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !3597
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !3759, !nonnull !105, !align !608 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !3760, !noalias !3763, !nonnull !105, !align !608 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !3766, !noalias !3763, !nonnull !105, !align !608
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34, !noalias !3767
  call void @llvm.experimental.noalias.scope.decl(metadata !3770)
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !3671, !noalias !3770, !nonnull !105, !align !608 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !1305, !noalias !3770
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 58
  %i.bc = load i8, ptr %i.bb, align 2, !tbaa !1306, !range !104, !noalias !3770, !noundef !105
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 59
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !1307, !range !104, !noalias !3770, !noundef !105
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !1308, !noalias !3770
  br label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i

bb.l:                                             ; preds = %bb.j
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1309, !noalias !3770
  %i.bl = shl nsw i64 %indvars.iv, 2
  %i.bm = getelementptr inbounds i8, ptr %i.bk, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !3, !noalias !3770
  br label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i

_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i: ; preds = %bb.l, %bb.k, %bb.i
  %.0.i.i.i = phi i32 [ %i.bn, %bb.l ], [ %i.bi, %bb.k ], [ %i.aq, %bb.i ]
  %i.bo = sext i32 %.0.i.i.i to i64
  %i.bp = shl nsw i64 %i.bo, 4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bp
  %.0.copyload.i.i.i = load i128, ptr %i.bq, align 1, !noalias !3770
  %i.br = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i128 %.0.copyload.i.i.i, ptr %5, align 16, !tbaa !3674, !alias.scope !3770
  %i.bs = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !83, !noalias !3770 ; 2 uses
  %i.bu = load <2 x ptr>, ptr %i.br, align 8, !tbaa !86, !noalias !3770
  store <2 x ptr> %i.bu, ptr %i.aj, align 16, !tbaa !86, !alias.scope !3770
  %.not.i.i.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i.i, label %.noexc9, label %bb.m

bb.m:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 3 uses
  %i.bw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26, !noalias !3770
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bw, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = load i32, ptr %i.bv, align 4, !tbaa !3, !noalias !3770
  %i.by = add nsw i32 %i.bx, 1
  store i32 %i.by, ptr %i.bv, align 4, !tbaa !3, !noalias !3770
  br label %.noexc9

bb.o:                                             ; preds = %bb.m
  %i.bz = atomicrmw volatile add ptr %i.bv, i32 1 acq_rel, align 4, !noalias !3770 ; 0 uses
  br label %.noexc9

.noexc9:                                          ; preds = %bb.o, %bb.n, %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i
  %i.ca = load ptr, ptr %i.ax, align 8, !tbaa !3773, !noalias !3775, !nonnull !105, !align !608 ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !1305, !noalias !3775
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 58
  %i.ce = load i8, ptr %i.cd, align 2, !tbaa !1306, !range !104, !noalias !3775, !noundef !105
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit, label %bb.p

bb.p:                                             ; preds = %.noexc9
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 59
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !1307, !range !104, !noalias !3775, !noundef !105
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 64
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !1308, !noalias !3775
  br label %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit

bb.r:                                             ; preds = %bb.p
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !1309, !noalias !3775
  %i.cn = shl nsw i64 %indvars.iv, 2
  %i.co = getelementptr inbounds i8, ptr %i.cm, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !3, !noalias !3775
  br label %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit

_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit: ; preds = %.noexc9, %bb.q, %bb.r
  %.0.i.i.i16 = phi i32 [ %i.cp, %bb.r ], [ %i.ck, %bb.q ], [ %i.aq, %.noexc9 ]
  %i.cq = sext i32 %.0.i.i.i16 to i64
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.cq
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !159, !noalias !3775
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34, !noalias !3778
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(32) %5, i64 16, i1 false), !noalias !3778
  %i.ct = load <16 x i8>, ptr %2, align 16, !tbaa !26
  %i.cu = shufflevector <16 x i8> %i.ct, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %i.cu, ptr %2, align 16, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34, !noalias !3778
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34, !noalias !3778
  call void @_ZN5folly11IPAddressV6C1ERKSt5arrayIhLm16EE(ptr noundef nonnull align 4 dereferenceable(18) %4, ptr noundef nonnull align 1 dereferenceable(16) %2) #34, !noalias !3778
  invoke void @_ZN8facebook5velox9functions16IPPrefixFunctionINS0_4exec10VectorExecEE12makeIPPrefixERKN5folly11IPAddressV6El(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.1964") align 16 %3, ptr noundef nonnull align 4 dereferenceable(18) %4, i64 noundef %i.cs)
          to label %.noexc13 unwind label %bb.s

.noexc13:                                         ; preds = %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit
  invoke void @_ZN8facebook5velox4exec9RowWriterIJnaEE10assignImplIJLm0ELm1EEEEvRKSt5tupleIJnaEESt16integer_sequenceImJXspT_EEE(ptr noundef nonnull align 8 dereferenceable(88) %i.at, ptr noundef nonnull align 16 dereferenceable(32) %3)
          to label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE14doApplyNotNullILm0ENS1_12VectorReaderISE_EEJNSJ_IlEEETnNSt9enable_ifIXneT_L_ZNSG_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_9RowWriterIJnaEEERbRT0_DpRKT1_.exit unwind label %bb.s

bb.s:                                             ; preds = %.noexc13, %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit
  %i.cv = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @_ZN8facebook5velox4exec34CustomTypeWithCustomComparisonViewInED2Ev(ptr noundef nonnull align 16 dead_on_return(32) dereferenceable(32) %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34, !noalias !3767
  br label %.body

_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE14doApplyNotNullILm0ENS1_12VectorReaderISE_EEJNSJ_IlEEETnNSt9enable_ifIXneT_L_ZNSG_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_9RowWriterIJnaEEERbRT0_DpRKT1_.exit: ; preds = %.noexc13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34, !noalias !3778
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34, !noalias !3778
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34, !noalias !3778
  store ptr null, ptr %6, align 8, !tbaa !720, !alias.scope !3781
  %i.cw = load ptr, ptr %i.ak, align 8, !tbaa !83 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i, label %.noexc.thread, label %bb.t

.noexc.thread:                                    ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE14doApplyNotNullILm0ENS1_12VectorReaderISE_EEJNSJ_IlEEETnNSt9enable_ifIXneT_L_ZNSG_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_9RowWriterIJnaEEERbRT0_DpRKT1_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34, !noalias !3767
  br label %bb.af

bb.t:                                             ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE14doApplyNotNullILm0ENS1_12VectorReaderISE_EEJNSJ_IlEEETnNSt9enable_ifIXneT_L_ZNSG_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRNS1_9RowWriterIJnaEEERbRT0_DpRKT1_.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 4 uses
  %i.cy = load atomic i64, ptr %i.cx acquire, align 8 ; 2 uses
  %i.cz = icmp eq i64 %i.cy, 4294967297
  %i.da = trunc i64 %i.cy to i32                  ; 2 uses
  %.pre = load ptr, ptr %1, align 8, !tbaa !3756  ; 7 uses
  br i1 %i.cz, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.cx, align 8, !tbaa !91
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  store i32 0, ptr %i.db, align 4, !tbaa !93
  %i.dc = load ptr, ptr %i.cw, align 8, !tbaa !94
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(16) %i.cw) #34, !inline_history !3682
  %i.df = load ptr, ptr %i.cw, align 8, !tbaa !94
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8
  call void %i.dh(ptr noundef nonnull align 8 dereferenceable(16) %i.cw) #34, !inline_history !3682
  br label %.noexc

bb.v:                                             ; preds = %bb.t
  %i.di = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i.i = icmp eq i8 %i.di, 0
  br i1 %.not.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dj = add nsw i32 %i.da, -1
  store i32 %i.dj, ptr %i.cx, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.dk = atomicrmw volatile add ptr %i.cx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i = phi i32 [ %i.da, %bb.w ], [ %i.dk, %bb.x ]
  %i.dl = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.dl, label %bb.y, label %.noexc, !prof !77

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cw) #34
  br label %.noexc

.noexc:                                           ; preds = %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.y
  %.pr = load ptr, ptr %6, align 8, !tbaa !720
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34, !noalias !3767
  %i.dm = icmp eq ptr %.pr, null
  br i1 %i.dm, label %bb.af, label %bb.z, !prof !3683

bb.z:                                             ; preds = %.noexc
  %i.dn = load ptr, ptr %10, align 8, !tbaa !3757, !nonnull !105, !align !608
  invoke void @_ZN8facebook5velox6StatusC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 128
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !3567, !nonnull !105, !align !608
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %i.dp, i32 noundef %i.aq, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE12ApplyContext8setErrorEiNS0_6StatusE.exit unwind label %bb.ad

_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE12ApplyContext8setErrorEiNS0_6StatusE.exit: ; preds = %bb.aa
  %i.dq = load ptr, ptr %7, align 8, !tbaa !720
  %.not.i = icmp eq ptr %i.dq, null
  br i1 %.not.i, label %_ZN8facebook5velox6StatusD2Ev.exit, label %bb.ab, !prof !221

bb.ab:                                            ; preds = %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE12ApplyContext8setErrorEiNS0_6StatusE.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
  br label %_ZN8facebook5velox6StatusD2Ev.exit

_ZN8facebook5velox6StatusD2Ev.exit:               ; preds = %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE12ApplyContext8setErrorEiNS0_6StatusE.exit, %bb.ab
  %i.dr = load ptr, ptr %10, align 8, !tbaa !3757, !nonnull !105, !align !608 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 120
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !3561 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 116
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !3597
  %i.dw = load ptr, ptr %i.dt, align 8, !tbaa !94
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 144
  %i.dy = load ptr, ptr %i.dx, align 8
  invoke void %i.dy(ptr noundef nonnull align 8 dereferenceable(94) %i.dt, i32 noundef %i.dv, i1 noundef zeroext true)
          to label %.noexc19 unwind label %bb.ac, !inline_history !3598

.noexc19:                                         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dr, i64 16 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !94
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %i.ec = load ptr, ptr %i.eb, align 8
  invoke void %i.ec(ptr noundef nonnull align 8 dereferenceable(112) %i.dz)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EENSK_IlEEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_ENKUlSS_E_clIiEEDaSS_.exit unwind label %bb.ac, !inline_history !3598

bb.ac:                                            ; preds = %bb.af, %.noexc19, %_ZN8facebook5velox6StatusD2Ev.exit, %bb.z
  %11 = phi ptr [ %12, %bb.af ], [ %.pre, %.noexc19 ], [ %.pre, %_ZN8facebook5velox6StatusD2Ev.exit ], [ %.pre, %bb.z ]
  %i.ed = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook5velox6StatusD2Ev.exit22

bb.ad:                                            ; preds = %bb.aa
  %i.ee = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.ef = load ptr, ptr %7, align 8, !tbaa !720
  %.not.i21 = icmp eq ptr %i.ef, null
  br i1 %.not.i21, label %_ZN8facebook5velox6StatusD2Ev.exit22, label %bb.ae, !prof !221

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
  br label %_ZN8facebook5velox6StatusD2Ev.exit22

bb.af:                                            ; preds = %.noexc, %.noexc.thread
  %12 = phi ptr [ %.pre, %.noexc ], [ %10, %.noexc.thread ] ; 2 uses
  %i.eg = load ptr, ptr %10, align 8, !tbaa !3757, !nonnull !105, !align !608 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 120
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !3561 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 116
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !3597
  %i.el = load ptr, ptr %i.ei, align 8, !tbaa !94
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 144
  %i.en = load ptr, ptr %i.em, align 8
  invoke void %i.en(ptr noundef nonnull align 8 dereferenceable(94) %i.ei, i32 noundef %i.ek, i1 noundef zeroext false)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EENSK_IlEEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_ENKUlSS_E_clIiEEDaSS_.exit unwind label %bb.ac, !inline_history !3684

_ZN8facebook5velox6StatusD2Ev.exit22:             ; preds = %bb.ae, %bb.ad, %bb.ac
  %13 = phi ptr [ %11, %bb.ac ], [ %.pre, %bb.ad ], [ %.pre, %bb.ae ]
  %.pn.i4 = phi { ptr, i32 } [ %i.ed, %bb.ac ], [ %i.ee, %bb.ad ], [ %i.ee, %bb.ae ]
  %i.eo = load ptr, ptr %6, align 8, !tbaa !720
  %.not.i26 = icmp eq ptr %i.eo, null
  br i1 %.not.i26, label %_ZN8facebook5velox6StatusD2Ev.exit27, label %bb.ag, !prof !221

bb.ag:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit22
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
  br label %_ZN8facebook5velox6StatusD2Ev.exit27

_ZN8facebook5velox6StatusD2Ev.exit27:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit22, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %.body

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EENSK_IlEEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_ENKUlSS_E_clIiEEDaSS_.exit: ; preds = %bb.af, %.noexc19
  %14 = phi ptr [ %12, %bb.af ], [ %.pre, %.noexc19 ]
  %i.ep = load ptr, ptr %6, align 8, !tbaa !720
  %.not.i28 = icmp eq ptr %i.ep, null
  br i1 %.not.i28, label %_ZN8facebook5velox6StatusD2Ev.exit29, label %bb.ah, !prof !221

bb.ah:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EENSK_IlEEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_ENKUlSS_E_clIiEEDaSS_.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
  br label %_ZN8facebook5velox6StatusD2Ev.exit29

_ZN8facebook5velox6StatusD2Ev.exit29:             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EENSK_IlEEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_ENKUlSS_E_clIiEEDaSS_.exit, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES9_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNSB_INS0_10IPAddressTELb1EEElEEEJSG_lEEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISG_EENSM_IlEEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSQ_SU_EUlSU_E_ZNKSK_ISZ_EEvSQ_SU_EUlSU_E0_EEvRKNS0_17SelectivityVectorESU_SW_ENKUlSU_E_clIiEEDaSU_.exit

.body:                                            ; preds = %bb.s, %_ZN8facebook5velox6StatusD2Ev.exit27
  %15 = phi ptr [ %13, %_ZN8facebook5velox6StatusD2Ev.exit27 ], [ %10, %bb.s ] ; 2 uses
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i4, %_ZN8facebook5velox6StatusD2Ev.exit27 ], [ %i.cv, %bb.s ] ; 3 uses
  %i.eq = extractvalue { ptr, i32 } %eh.lpad-body, 0 ; 2 uses
  %i.er = extractvalue { ptr, i32 } %eh.lpad-body, 1 ; 2 uses
  %i.es = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #34
  %i.et = icmp eq i32 %i.er, %i.es
  br i1 %i.et, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.body
  %i.eu = call ptr @__cxa_begin_catch(ptr %i.eq) #34
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !742 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 144
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !7  ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 152
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !16
  %i.fb = icmp eq i64 %i.fa, 4
  br i1 %i.fb, label %.lr.ph.i.i.i.preheader.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader.i.preheader:               ; preds = %bb.ai
  %i.fc = load i8, ptr %i.ey, align 1, !tbaa !26
  %or.cond.not.i.i.i = icmp eq i8 %i.fc, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.preheader.i.preheader
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 1
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !26
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.fe, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ey, i64 2
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !26
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.fg, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ey, i64 3
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !26
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.fi, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  %i.fj = load ptr, ptr %i.al, align 8, !tbaa !3784, !nonnull !105, !align !608
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !3785, !nonnull !105, !align !608 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 120
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !3561 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 116
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !3597
  %i.fp = load ptr, ptr %i.fm, align 8, !tbaa !94
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 144
  %i.fr = load ptr, ptr %i.fq, align 8
  invoke void %i.fr(ptr noundef nonnull align 8 dereferenceable(94) %i.fm, i32 noundef %i.fo, i1 noundef zeroext true)
          to label %.noexc36 unwind label %.loopexit47, !inline_history !3598

.loopexit:                                        ; preds = %bb.ai, %.lr.ph.i.i.i.preheader.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #37
          to label %bb.ax unwind label %.loopexit.split-lp

bb.aj:                                            ; preds = %.body
  %i.fs = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #34
  %i.ft = icmp eq i32 %i.er, %i.fs
  br i1 %i.ft, label %bb.ak, label %.loopexit45

bb.ak:                                            ; preds = %bb.aj
  %i.fu = call ptr @__cxa_begin_catch(ptr %i.eq) #34 ; 0 uses
  %i.fv = load ptr, ptr %i.al, align 8, !tbaa !3784, !nonnull !105, !align !608
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !3785, !nonnull !105, !align !608 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 120
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !3561 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 116
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !3597
  %i.gb = load ptr, ptr %i.fy, align 8, !tbaa !94
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 144
  %i.gd = load ptr, ptr %i.gc, align 8
  invoke void %i.gd(ptr noundef nonnull align 8 dereferenceable(94) %i.fy, i32 noundef %i.ga, i1 noundef zeroext true)
          to label %.noexc30 unwind label %bb.an, !inline_history !3598

.noexc30:                                         ; preds = %bb.ak
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fw, i64 16 ; 2 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !94
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 32
  %i.gh = load ptr, ptr %i.gg, align 8
  invoke void %i.gh(ptr noundef nonnull align 8 dereferenceable(112) %i.ge)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EENSK_IlEEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_ENKUlSS_E0_clIiEEDaSS_.exit7 unwind label %bb.an, !inline_history !3598

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EENSK_IlEEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_ENKUlSS_E0_clIiEEDaSS_.exit7: ; preds = %.noexc30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %8) #34
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.an, i32 noundef %i.aq, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.al unwind label %bb.ao

bb.al:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EENSK_IlEEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_ENKUlSS_E0_clIiEEDaSS_.exit7
  %i.gi = load ptr, ptr %8, align 8, !tbaa !369
  %.not.i33 = icmp eq ptr %i.gi, null
  br i1 %.not.i33, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #34
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES9_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNSB_INS0_10IPAddressTELb1EEElEEEJSG_lEEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISG_EENSM_IlEEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSQ_SU_EUlSU_E_ZNKSK_ISZ_EEvSQ_SU_EUlSU_E0_EEvRKNS0_17SelectivityVectorESU_SW_ENKUlSU_E_clIiEEDaSU_.exit

bb.an:                                            ; preds = %.noexc30, %bb.ak
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ao:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EENSK_IlEEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_ENKUlSS_E0_clIiEEDaSS_.exit7
  %i.gk = landingpad { ptr, i32 }
          cleanup
  %i.gl = load ptr, ptr %8, align 8, !tbaa !369
  %.not.i34 = icmp eq ptr %i.gl, null
  br i1 %.not.i34, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #34
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35: ; preds = %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %bb.aq

bb.aq:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35, %bb.an
  %.pn.i = phi { ptr, i32 } [ %i.gk, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35 ], [ %i.gj, %bb.an ]
  invoke void @__cxa_end_catch()
          to label %.loopexit45 unwind label %bb.aw

.loopexit47:                                      ; preds = %tailrecurse.i.i.i.i.3, %.noexc36
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

.loopexit.split-lp:                               ; preds = %.loopexit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

.noexc36:                                         ; preds = %tailrecurse.i.i.i.i.3
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fk, i64 16 ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !94
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 32
  %i.gp = load ptr, ptr %i.go, align 8
  invoke void %i.gp(ptr noundef nonnull align 8 dereferenceable(112) %i.gm)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EENSK_IlEEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_ENKUlSS_E0_clIiEEDaSS_.exit unwind label %.loopexit47, !inline_history !3598

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EENSK_IlEEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_ENKUlSS_E0_clIiEEDaSS_.exit: ; preds = %.noexc36
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %9) #34
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.an, i32 noundef %i.aq, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.ar unwind label %bb.at

bb.ar:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EENSK_IlEEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_ENKUlSS_E0_clIiEEDaSS_.exit
  %i.gq = load ptr, ptr %9, align 8, !tbaa !369
  %.not.i39 = icmp eq ptr %i.gq, null
  br i1 %.not.i39, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit40, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #34
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit40

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit40: ; preds = %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES9_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNSB_INS0_10IPAddressTELb1EEElEEEJSG_lEEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISG_EENSM_IlEEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSQ_SU_EUlSU_E_ZNKSK_ISZ_EEvSQ_SU_EUlSU_E0_EEvRKNS0_17SelectivityVectorESU_SW_ENKUlSU_E_clIiEEDaSU_.exit

bb.at:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EENSK_IlEEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_ENKUlSS_E0_clIiEEDaSS_.exit
  %i.gr = landingpad { ptr, i32 }
          cleanup
  %i.gs = load ptr, ptr %9, align 8, !tbaa !369
  %.not.i41 = icmp eq ptr %i.gs, null
  br i1 %.not.i41, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit42, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #34
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit42

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit42: ; preds = %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %bb.av

bb.av:                                            ; preds = %.loopexit47, %.loopexit.split-lp, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit42
  %.pn16.i = phi { ptr, i32 } [ %i.gr, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit42 ], [ %lpad.loopexit, %.loopexit47 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @__cxa_end_catch()
          to label %.loopexit45 unwind label %bb.aw

.loopexit45:                                      ; preds = %bb.aj, %bb.av, %bb.aq
  %.merged.i = phi { ptr, i32 } [ %.pn.i, %bb.aq ], [ %.pn16.i, %bb.av ], [ %eh.lpad-body, %bb.aj ]
  resume { ptr, i32 } %.merged.i

bb.aw:                                            ; preds = %bb.av, %bb.aq
  %i.gt = landingpad { ptr, i32 }
          catch ptr null
  %i.gu = extractvalue { ptr, i32 } %i.gt, 0
  call void @__clang_call_terminate(ptr %i.gu) #38
  unreachable

bb.ax:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES9_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNSB_INS0_10IPAddressTELb1EEElEEEJSG_lEEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISG_EENSM_IlEEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSQ_SU_EUlSU_E_ZNKSK_ISZ_EEvSQ_SU_EUlSU_E0_EEvRKNS0_17SelectivityVectorESU_SW_ENKUlSU_E_clIiEEDaSU_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit29, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit40
  %16 = phi ptr [ %14, %_ZN8facebook5velox6StatusD2Ev.exit29 ], [ %15, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit ], [ %15, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit40 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit44, label %bb.i, !llvm.loop !3787

bb.ay:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.gv = load ptr, ptr %0, align 8, !tbaa !513
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !727
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !729
  tail call void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS3_10VectorExecEEESB_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNSD_INS0_10IPAddressTELb1EEElEEEJSI_lEEEE8applyUdfIZNKSL_7iterateIJNS3_12VectorReaderISI_EENSO_IlEEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSS_SW_EUlSW_E_ZNKSM_IS11_EEvSS_SW_EUlSW_E0_EEvRKNS0_17SelectivityVectorESW_SY_EUlSW_E_EEvPKmiibSW_(ptr noundef %i.gv, i32 noundef %i.gx, i32 noundef %i.gz, i1 noundef zeroext true, ptr noundef nonnull byval(%class.anon.1995) align 8 %1)
  br label %.loopexit44

.loopexit44:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES9_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNSB_INS0_10IPAddressTELb1EEElEEEJSG_lEEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISG_EENSM_IlEEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSQ_SU_EUlSU_E_ZNKSK_ISZ_EEvSQ_SU_EUlSU_E0_EEvRKNS0_17SelectivityVectorESU_SW_ENKUlSU_E_clIiEEDaSU_.exit, %bb.h, %bb.ay
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS3_10VectorExecEEESB_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNSD_INS0_10IPAddressTELb1EEElEEEJSI_lEEEE8applyUdfIZNKSL_7iterateIJNS3_12VectorReaderISI_EENSO_IlEEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSS_SW_EUlSW_E_ZNKSM_IS11_EEvSS_SW_EUlSW_E0_EEvRKNS0_17SelectivityVectorESW_SY_EUlSW_E_EEvPKmiibSW_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef byval(%class.anon.1995) align 8 %4) local_unnamed_addr #0 comdat {
bb.a:
  %5 = alloca %class.anon.1997, align 8           ; 6 uses
  %6 = alloca %class.anon.1996, align 8           ; 8 uses
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
  br i1 %.not.i, label %bb.b, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS4_10VectorExecEEESC_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNSE_INS0_10IPAddressTELb1EEElEEEJSJ_lEEEE8applyUdfIZNKSM_7iterateIJNS4_12VectorReaderISJ_EENSP_IlEEEEEvRNSM_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvST_SX_EUlSX_E_ZNKSN_IS12_EEvST_SX_EUlSX_E0_EEvRKNS0_17SelectivityVectorESX_SZ_EUlSX_E_EEvPKmiibSX_EUlimE_ZNS3_IS18_EEvS1A_iibSX_EUliE_EEviiSX_SZ_.exit

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
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS3_10VectorExecEEESB_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNSD_INS0_10IPAddressTELb1EEElEEEJSI_lEEEE8applyUdfIZNKSL_7iterateIJNS3_12VectorReaderISI_EENSO_IlEEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSS_SW_EUlSW_E_ZNKSM_IS11_EEvSS_SW_EUlSW_E0_EEvRKNS0_17SelectivityVectorESW_SY_EUlSW_E_EEvPKmiibSW_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.g, i64 noundef %i.q)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS4_10VectorExecEEESC_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNSE_INS0_10IPAddressTELb1EEElEEEJSJ_lEEEE8applyUdfIZNKSM_7iterateIJNS4_12VectorReaderISJ_EENSP_IlEEEEEvRNSM_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvST_SX_EUlSX_E_ZNKSN_IS12_EEvST_SX_EUlSX_E0_EEvRKNS0_17SelectivityVectorESX_SZ_EUlSX_E_EEvPKmiibSX_EUlimE_ZNS3_IS18_EEvS1A_iibSX_EUliE_EEviiSX_SZ_.exit

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
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS3_10VectorExecEEESB_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNSD_INS0_10IPAddressTELb1EEElEEEJSI_lEEEE8applyUdfIZNKSL_7iterateIJNS3_12VectorReaderISI_EENSO_IlEEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSS_SW_EUlSW_E_ZNKSM_IS11_EEvSS_SW_EUlSW_E0_EEvRKNS0_17SelectivityVectorESW_SY_EUlSW_E_EEvPKmiibSW_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.r, i64 noundef %i.x)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = add nsw i32 %i.d, 64                     ; 2 uses
  %.not3337.i = icmp sgt i32 %i.y, %i.e
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.not34.i = icmp eq i32 %2, %i.e
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS4_10VectorExecEEESC_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNSE_INS0_10IPAddressTELb1EEElEEEJSJ_lEEEE8applyUdfIZNKSM_7iterateIJNS4_12VectorReaderISJ_EENSP_IlEEEEEvRNSM_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvST_SX_EUlSX_E_ZNKSN_IS12_EEvST_SX_EUlSX_E0_EEvRKNS0_17SelectivityVectorESX_SZ_EUlSX_E_EEvPKmiibSX_EUlimE_ZNS3_IS18_EEvS1A_iibSX_EUliE_EEviiSX_SZ_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.z = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.d, %bb.f ]
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS3_10VectorExecEEESB_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNSD_INS0_10IPAddressTELb1EEElEEEJSI_lEEEE8applyUdfIZNKSL_7iterateIJNS3_12VectorReaderISI_EENSO_IlEEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSS_SW_EUlSW_E_ZNKSM_IS11_EEvSS_SW_EUlSW_E0_EEvRKNS0_17SelectivityVectorESW_SY_EUlSW_E_EEvPKmiibSW_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !3788

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i36.i = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask.i36.i, -1
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS3_10VectorExecEEESB_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNSD_INS0_10IPAddressTELb1EEElEEEJSI_lEEEE8applyUdfIZNKSL_7iterateIJNS3_12VectorReaderISI_EENSO_IlEEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSS_SW_EUlSW_E_ZNKSM_IS11_EEvSS_SW_EUlSW_E0_EEvRKNS0_17SelectivityVectorESW_SY_EUlSW_E_EEvPKmiibSW_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.ac, i64 noundef %i.af)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS4_10VectorExecEEESC_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNSE_INS0_10IPAddressTELb1EEElEEEJSJ_lEEEE8applyUdfIZNKSM_7iterateIJNS4_12VectorReaderISJ_EENSP_IlEEEEEvRNSM_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvST_SX_EUlSX_E_ZNKSN_IS12_EEvST_SX_EUlSX_E0_EEvRKNS0_17SelectivityVectorESX_SZ_EUlSX_E_EEvPKmiibSX_EUlimE_ZNS3_IS18_EEvS1A_iibSX_EUliE_EEviiSX_SZ_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS4_10VectorExecEEESC_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNSE_INS0_10IPAddressTELb1EEElEEEJSJ_lEEEE8applyUdfIZNKSM_7iterateIJNS4_12VectorReaderISJ_EENSP_IlEEEEEvRNSM_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvST_SX_EUlSX_E_ZNKSN_IS12_EEvST_SX_EUlSX_E0_EEvRKNS0_17SelectivityVectorESX_SZ_EUlSX_E_EEvPKmiibSX_EUlimE_ZNS3_IS18_EEvS1A_iibSX_EUliE_EEviiSX_SZ_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS3_10VectorExecEEESB_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNSD_INS0_10IPAddressTELb1EEElEEEJSI_lEEEE8applyUdfIZNKSL_7iterateIJNS3_12VectorReaderISI_EENSO_IlEEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSS_SW_EUlSW_E_ZNKSM_IS11_EEvSS_SW_EUlSW_E0_EEvRKNS0_17SelectivityVectorESW_SY_EUlSW_E_EEvPKmiibSW_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::array.1963", align 16 ; 6 uses
  %4 = alloca %"class.std::tuple.1964", align 16  ; 4 uses
  %5 = alloca %"class.folly::IPAddressV6", align 4 ; 4 uses
  %6 = alloca %"class.facebook::velox::exec::CustomTypeWithCustomComparisonView", align 16 ; 9 uses
  %7 = alloca %"class.facebook::velox::Status", align 8 ; 10 uses
  %8 = alloca %"class.facebook::velox::Status", align 8 ; 8 uses
  %9 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %10 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !3789, !range !104, !noundef !105
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3791
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !159
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit51, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES9_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNSB_INS0_10IPAddressTELb1EEElEEEJSG_lEEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISG_EENSM_IlEEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSQ_SU_EUlSU_E_ZNKSK_ISZ_EEvSQ_SU_EUlSU_E0_EEvRKNS0_17SelectivityVectorESU_SW_ENKUlSU_E_clIiEEDaSU_.exit
  %.061 = phi i64 [ %i.k, %.preheader ], [ %i.ge, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES9_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNSB_INS0_10IPAddressTELb1EEElEEEJSG_lEEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISG_EENSM_IlEEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSQ_SU_EUlSU_E_ZNKSK_ISZ_EEvSQ_SU_EUlSU_E0_EEvRKNS0_17SelectivityVectorESU_SW_ENKUlSU_E_clIiEEDaSU_.exit ] ; 3 uses
  %i.r = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.061, i1 true)
  %i.s = trunc nuw nsw i64 %i.r to i32
  %i.t = or disjoint i32 %i.m, %i.s               ; 7 uses
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !3753 ; 2 uses
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !3756, !nonnull !105, !align !608 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !3757, !nonnull !105, !align !608 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 116
  store i32 %i.t, ptr %i.x, align 4, !tbaa !3597
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !3759, !nonnull !105, !align !608 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.ab = sext i32 %i.t to i64                    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !3760, !noalias !3792, !nonnull !105, !align !608 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !3766, !noalias !3792, !nonnull !105, !align !608
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34, !noalias !3795
  call void @llvm.experimental.noalias.scope.decl(metadata !3798)
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !3671, !noalias !3798, !nonnull !105, !align !608 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1305, !noalias !3798
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 58
  %i.ak = load i8, ptr %i.aj, align 2, !tbaa !1306, !range !104, !noalias !3798, !noundef !105
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 59
  %i.an = load i8, ptr %i.am, align 1, !tbaa !1307, !range !104, !noalias !3798, !noundef !105
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !1308, !noalias !3798
  br label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i

bb.e:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1309, !noalias !3798
  %i.at = shl nsw i64 %i.ab, 2
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3, !noalias !3798
  br label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i

_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i: ; preds = %bb.e, %bb.d, %bb.b
  %.0.i.i.i = phi i32 [ %i.av, %bb.e ], [ %i.aq, %bb.d ], [ %i.t, %bb.b ]
  %i.aw = sext i32 %.0.i.i.i to i64
  %i.ax = shl nsw i64 %i.aw, 4
end_hunk_1
begin_hunk_2_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18IPSubnetOfFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEENSA_INS0_10IPAddressTELb1EEEEEEJSC_SE_EEEE6unpackILi1ELb1EJNS1_12VectorReaderISC_EEEEEvRNSH_12ApplyContextERSt6vectorISt8optionalINS1_18LocalDecodedVectorEESaISQ_EERKSN_ISt10shared_ptrINS0_10BaseVectorEESaISW_EEDpRT1_:bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !469
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !4892
  %i.bn = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIbE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(176) %i.bm)
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %_ZN8facebook5velox4exec12VectorReaderINS0_10CustomTypeINS0_10IPAddressTELb1EEEEC2EPKNS0_13DecodedVectorE.exit
  store ptr %i.bn, ptr %i.b, align 8, !tbaa !991
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  store ptr %1, ptr %8, align 8, !tbaa !4897
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.a, ptr %i.bo, align 8, !tbaa !473
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.b, ptr %i.bp, align 8, !tbaa !994
  %i.bq = load ptr, ptr %i.c, align 8, !tbaa !4893, !nonnull !105, !align !608
  %i.br = load ptr, ptr %1, align 8, !tbaa !4888
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %0, ptr %7, align 8
  %.sroa.423.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %4, ptr %.sroa.423.0..sroa_idx.i.i, align 8
  %.sroa.524.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %10, ptr %.sroa.524.0..sroa_idx.i.i, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %1, ptr %.sroa.6.0..sroa_idx.i.i, align 8
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %8, ptr %.sroa.7.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %7, ptr %6, align 8, !tbaa !86
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %5, ptr %i.bs, align 8, !tbaa !86
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.bq, ptr %i.bt, align 8, !tbaa !4899
  invoke void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18IPSubnetOfFunctionINS3_10VectorExecEEESB_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEENSE_INS0_10IPAddressTELb1EEEEEEJSG_SI_EEEE7iterateIJNS3_12VectorReaderISG_EENSN_ISI_EEEEEvRNSL_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKS1_SV_EUlSV_E_EEvSZ_SV_T0_EUlSV_E_EEvSV_(ptr noundef nonnull align 8 dereferenceable(38) %i.br, ptr noundef nonnull byval(%class.anon.2544) align 8 %6)
          to label %bb.p unwind label %bb.w

bb.p:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.bu = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !83 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i, label %_ZN8facebook5velox4exec12VectorReaderINS0_10CustomTypeINS0_10IPAddressTELb1EEEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 4 uses
  %i.bx = load atomic i64, ptr %i.bw acquire, align 8 ; 2 uses
  %i.by = icmp eq i64 %i.bx, 4294967297
  %i.bz = trunc i64 %i.bx to i32                  ; 2 uses
  br i1 %i.by, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bw, align 8, !tbaa !91
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  store i32 0, ptr %i.ca, align 4, !tbaa !93
  %i.cb = load ptr, ptr %i.bv, align 8, !tbaa !94
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #34, !inline_history !3593
  %i.ce = load ptr, ptr %i.bv, align 8, !tbaa !94
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #34, !inline_history !3593
  br label %_ZN8facebook5velox4exec12VectorReaderINS0_10CustomTypeINS0_10IPAddressTELb1EEEED2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.ch = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i.i = icmp eq i8 %i.ch, 0
  br i1 %.not.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ci = add nsw i32 %i.bz, -1
  store i32 %i.ci, ptr %i.bw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.cj = atomicrmw volatile add ptr %i.bw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i = phi i32 [ %i.bz, %bb.t ], [ %i.cj, %bb.u ]
  %i.ck = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ck, label %bb.v, label %_ZN8facebook5velox4exec12VectorReaderINS0_10CustomTypeINS0_10IPAddressTELb1EEEED2Ev.exit, !prof !77

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #34
  br label %_ZN8facebook5velox4exec12VectorReaderINS0_10CustomTypeINS0_10IPAddressTELb1EEEED2Ev.exit

_ZN8facebook5velox4exec12VectorReaderINS0_10CustomTypeINS0_10IPAddressTELb1EEEED2Ev.exit: ; preds = %bb.p, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  ret void

bb.w:                                             ; preds = %.noexc, %_ZN8facebook5velox4exec12VectorReaderINS0_10CustomTypeINS0_10IPAddressTELb1EEEEC2EPKNS0_13DecodedVectorE.exit
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8facebook5velox4exec12VectorReaderINS0_10CustomTypeINS0_10IPAddressTELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18IPSubnetOfFunctionINS3_10VectorExecEEESB_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEENSE_INS0_10IPAddressTELb1EEEEEEJSG_SI_EEEE7iterateIJNS3_12VectorReaderISG_EENSN_ISI_EEEEEvRNSL_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKS1_SV_EUlSV_E_EEvSZ_SV_T0_EUlSV_E_EEvSV_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef byval(%class.anon.2544) align 8 %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.facebook::velox::Status", align 8 ; 10 uses
  %3 = alloca %"class.facebook::velox::Status", align 8 ; 8 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !726, !range !104, !noundef !105
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i:     ; preds = %bb.a
  %.0.in.pre.i = load i8, ptr %i.a, align 4, !tbaa !79, !range !104
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !727
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !729  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !730
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !513    ; 2 uses
  %.not.i.i14 = icmp sgt i32 %i.i, 0
  br i1 %.not.i.i14, label %bb.e, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.i, 2147483584                 ; 3 uses
  %i.o = zext nneg i32 %i.n to i64
  %.not37.i.i.not.i61.not = icmp eq i32 %i.n, 0
  br i1 %.not37.i.i.not.i61.not, label %.critedge.i.i.i, label %.lr.ph63

bb.f:                                             ; preds = %.lr.ph63
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i62, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.o
  br i1 %.not37.i.i.not.i, label %.lr.ph63, label %.critedge.i.i.i, !llvm.loop !731

.lr.ph63:                                         ; preds = %bb.e, %bb.f
  %indvars.iv.i62 = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i62, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !159
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, !llvm.loop !731

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
  %i.y = load i64, ptr %i.x, align 8, !tbaa !159
  %.demorgan.i = or i64 %i.y, %notmask.i40.i.i.i
  %i.z = icmp eq i64 %.demorgan.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i:   ; preds = %.lr.ph63, %bb.g, %.critedge.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph63 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit: ; preds = %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i
  %.0.in.i = phi i8 [ %.0.in.pre.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i ]
  %.0.i = trunc nuw i8 %.0.in.i to i1
  br i1 %.0.i, label %bb.h, label %bb.bk

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !729 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !727 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %.lr.ph, label %.loopexit33

.lr.ph:                                           ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = sext i32 %i.ag to i64
  %.pre49 = load ptr, ptr %1, align 8, !tbaa !4901
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18IPSubnetOfFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEENSC_INS0_10IPAddressTELb1EEEEEEJSE_SG_EEEE7iterateIJNS1_12VectorReaderISE_EENSL_ISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit
  %6 = phi ptr [ %.pre49, %.lr.ph ], [ %9, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18IPSubnetOfFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEENSC_INS0_10IPAddressTELb1EEEEEEJSE_SG_EEEE7iterateIJNS1_12VectorReaderISE_EENSL_ISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit ] ; 5 uses
  %indvars.iv = phi i64 [ %i.aj, %.lr.ph ], [ %indvars.iv.next, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18IPSubnetOfFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEENSC_INS0_10IPAddressTELb1EEEEEEJSE_SG_EEEE7iterateIJNS1_12VectorReaderISE_EENSL_ISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit ] ; 7 uses
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !4899 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !4902, !nonnull !105, !align !608 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !4905, !nonnull !105, !align !608 ; 2 uses
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !4572, !nonnull !105, !align !608 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 58
  %i.ar = load i8, ptr %i.aq, align 2, !tbaa !1306, !range !104, !noundef !105
  %i.as = trunc nuw i8 %i.ar to i1
  %i.at = trunc nsw i64 %indvars.iv to i32        ; 5 uses
  br i1 %i.as, label %.noexc5, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 59
  %i.av = load i8, ptr %i.au, align 1, !tbaa !1307, !range !104, !noundef !105
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !1308
  br label %.noexc5

bb.l:                                             ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !1309
  %i.bb = shl nsw i64 %indvars.iv, 2
  %i.bc = getelementptr inbounds i8, ptr %i.ba, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3
  br label %.noexc5

.noexc5:                                          ; preds = %bb.l, %bb.k, %bb.i
  %.0.i.i = phi i32 [ %i.bd, %bb.l ], [ %i.ay, %bb.k ], [ %i.at, %bb.i ] ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.bf = load ptr, ptr %i.ao, align 8, !tbaa !3671, !noalias !4906, !nonnull !105, !align !608 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1305, !noalias !4906
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 58
  %i.bj = load i8, ptr %i.bi, align 2, !tbaa !1306, !range !104, !noalias !4906, !noundef !105
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i, label %bb.m

bb.m:                                             ; preds = %.noexc5
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 59
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !1307, !range !104, !noalias !4906, !noundef !105
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !1308, !noalias !4906
  br label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i

bb.o:                                             ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1309, !noalias !4906
  %i.bs = shl nsw i64 %indvars.iv, 2
  %i.bt = getelementptr inbounds i8, ptr %i.br, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3, !noalias !4906
  br label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i

_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i: ; preds = %bb.o, %bb.n, %.noexc5
  %.0.i.i.i = phi i32 [ %i.bu, %bb.o ], [ %i.bp, %bb.n ], [ %i.at, %.noexc5 ]
  %i.bv = sext i32 %.0.i.i.i to i64
  %i.bw = shl nsw i64 %i.bv, 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bw
  %.0.copyload.i.i.i = load i128, ptr %i.bx, align 1, !noalias !4906 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !83, !noalias !4906 ; 9 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bz, null       ; 2 uses
  br i1 %.not.i.i.i.i.i, label %.noexc7, label %bb.p

bb.p:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 3 uses
  %i.cb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26, !noalias !4906
  %.not.i.i.i.i.i.i = icmp eq i8 %i.cb, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cc = load i32, ptr %i.ca, align 4, !tbaa !3, !noalias !4906
  %i.cd = add nsw i32 %i.cc, 1
  store i32 %i.cd, ptr %i.ca, align 4, !tbaa !3, !noalias !4906
  br label %.noexc7

bb.r:                                             ; preds = %bb.p
  %i.ce = atomicrmw volatile add ptr %i.ca, i32 1 acq_rel, align 4, !noalias !4906 ; 0 uses
  br label %.noexc7

.noexc7:                                          ; preds = %bb.r, %bb.q, %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i
  %i.cf = load ptr, ptr %i.be, align 8, !tbaa !4522
  %i.cg = sext i32 %.0.i.i to i64                 ; 3 uses
  %i.ch = load ptr, ptr %i.cf, align 8, !tbaa !4662, !nonnull !105, !align !608 ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1305
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 58
  %i.cl = load i8, ptr %i.ck, align 2, !tbaa !1306, !range !104, !noundef !105
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %_ZNK8facebook5velox4exec16OptionalAccessorIaEdeEv.exit.i, label %bb.s

bb.s:                                             ; preds = %.noexc7
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 59
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !1307, !range !104, !noundef !105
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ch, i64 64
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !1308
  br label %_ZNK8facebook5velox4exec16OptionalAccessorIaEdeEv.exit.i

bb.u:                                             ; preds = %bb.s
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !1309
  %i.cu = shl nsw i64 %i.cg, 2
  %i.cv = getelementptr inbounds i8, ptr %i.ct, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3
  br label %_ZNK8facebook5velox4exec16OptionalAccessorIaEdeEv.exit.i

_ZNK8facebook5velox4exec16OptionalAccessorIaEdeEv.exit.i: ; preds = %bb.u, %bb.t, %.noexc7
  %.0.i.i.i.i.i.i = phi i32 [ %i.cw, %bb.u ], [ %i.cr, %bb.t ], [ %.0.i.i, %.noexc7 ]
  %i.cx = sext i32 %.0.i.i.i.i.i.i to i64
  %i.cy = getelementptr inbounds i8, ptr %i.cj, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !26  ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !4520
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !1303, !nonnull !105, !align !608 ; 8 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !1305 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 58
  %i.dg = load i8, ptr %i.df, align 2, !tbaa !1306, !range !104, !noundef !105
  %i.dh = trunc nuw i8 %i.dg to i1                ; 2 uses
  br i1 %i.dh, label %_ZNK8facebook5velox4exec16OptionalAccessorInEdeEv.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorIaEdeEv.exit.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.dc, i64 59
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !1307, !range !104, !noundef !105
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !1308
  br label %_ZNK8facebook5velox4exec16OptionalAccessorInEdeEv.exit.i

bb.x:                                             ; preds = %bb.v
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !1309
  %i.dp = shl nsw i64 %i.cg, 2
  %i.dq = getelementptr inbounds i8, ptr %i.do, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !3
  br label %_ZNK8facebook5velox4exec16OptionalAccessorInEdeEv.exit.i

_ZNK8facebook5velox4exec16OptionalAccessorInEdeEv.exit.i: ; preds = %bb.x, %bb.w, %_ZNK8facebook5velox4exec16OptionalAccessorIaEdeEv.exit.i
  %.0.i.i.i.i.i15.i = phi i32 [ %i.dr, %bb.x ], [ %i.dm, %bb.w ], [ %.0.i.i, %_ZNK8facebook5velox4exec16OptionalAccessorIaEdeEv.exit.i ]
  %i.ds = sext i32 %.0.i.i.i.i.i15.i to i64
  %i.dt = shl nsw i64 %i.ds, 4
  %i.du = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dt
  %.0.copyload.i.i.i.i.i.i = load i128, ptr %i.du, align 1
  %i.dv = and i128 %.0.copyload.i.i.i.i.i.i, -4294967296
  %i.dw = icmp eq i128 %i.dv, 281470681743360
  br i1 %i.dw, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorInEdeEv.exit.i
  %i.dx = zext i8 %i.cz to i32
  %i.dy = sub nsw i32 32, %i.dx
  %i.dz = zext nneg i32 %i.dy to i128
  %notmask11.i = shl nsw i128 -1, %i.dz
  %i.ea = and i128 %notmask11.i, %.0.copyload.i.i.i
  br label %bb.ab

bb.z:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorInEdeEv.exit.i
  %i.eb = icmp eq i8 %i.cz, 0
  br i1 %i.eb, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ec = zext i8 %i.cz to i32
  %i.ed = sub nsw i32 128, %i.ec
  %i.ee = zext nneg i32 %i.ed to i128
  %notmask.i = shl nsw i128 -1, %i.ee
  %i.ef = and i128 %notmask.i, %.0.copyload.i.i.i
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %.0.i16 = phi i128 [ %i.ea, %bb.y ], [ %i.ef, %bb.aa ], [ 0, %bb.z ]
  br i1 %i.dh, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18IPSubnetOfFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEENSA_INS0_10IPAddressTELb1EEEEEEJSC_SE_EEEE14doApplyNotNullILm1EKNS1_12VectorReaderISE_EEJNS1_7RowViewILb1EJnaEEEETnNSt9enable_ifIXneT_L_ZNSG_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSS_RT0_DpRKT1_.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dc, i64 59
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !1307, !range !104, !noundef !105
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !1308
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18IPSubnetOfFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEENSA_INS0_10IPAddressTELb1EEEEEEJSC_SE_EEEE14doApplyNotNullILm1EKNS1_12VectorReaderISE_EEJNS1_7RowViewILb1EJnaEEEETnNSt9enable_ifIXneT_L_ZNSG_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSS_RT0_DpRKT1_.exit

bb.ae:                                            ; preds = %bb.ac
  %i.el = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !1309
  %i.en = shl nsw i64 %i.cg, 2
  %i.eo = getelementptr inbounds i8, ptr %i.em, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !3
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18IPSubnetOfFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEENSA_INS0_10IPAddressTELb1EEEEEEJSC_SE_EEEE14doApplyNotNullILm1EKNS1_12VectorReaderISE_EEJNS1_7RowViewILb1EJnaEEEETnNSt9enable_ifIXneT_L_ZNSG_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSS_RT0_DpRKT1_.exit

_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18IPSubnetOfFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEENSA_INS0_10IPAddressTELb1EEEEEEJSC_SE_EEEE14doApplyNotNullILm1EKNS1_12VectorReaderISE_EEJNS1_7RowViewILb1EJnaEEEETnNSt9enable_ifIXneT_L_ZNSG_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSS_RT0_DpRKT1_.exit: ; preds = %bb.ae, %bb.ad, %bb.ab
  %.0.i.i.i.i.i19.i = phi i32 [ %i.ep, %bb.ae ], [ %i.ek, %bb.ad ], [ %.0.i.i, %bb.ab ]
  %i.eq = sext i32 %.0.i.i.i.i.i19.i to i64
  %i.er = shl nsw i64 %i.eq, 4
  %i.es = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.er
  %.0.copyload.i.i.i.i.i20.i = load i128, ptr %i.es, align 1
  %i.et = icmp eq i128 %.0.copyload.i.i.i.i.i20.i, %.0.i16
  store ptr null, ptr %2, align 8, !tbaa !720, !alias.scope !4909
  br i1 %.not.i.i.i.i.i, label %.noexc.thread, label %bb.af

bb.af:                                            ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18IPSubnetOfFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEENSA_INS0_10IPAddressTELb1EEEEEEJSC_SE_EEEE14doApplyNotNullILm1EKNS1_12VectorReaderISE_EEJNS1_7RowViewILb1EJnaEEEETnNSt9enable_ifIXneT_L_ZNSG_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSS_RT0_DpRKT1_.exit
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 4 uses
  %i.ev = load atomic i64, ptr %i.eu acquire, align 8 ; 2 uses
  %i.ew = icmp eq i64 %i.ev, 4294967297
  %i.ex = trunc i64 %i.ev to i32                  ; 2 uses
  %.pre = load ptr, ptr %1, align 8, !tbaa !4901  ; 5 uses
  br i1 %i.ew, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.eu, align 8, !tbaa !91
  %i.ey = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  store i32 0, ptr %i.ey, align 4, !tbaa !93
  %i.ez = load ptr, ptr %i.bz, align 8, !tbaa !94
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8
  call void %i.fb(ptr noundef nonnull align 8 dereferenceable(16) %i.bz) #34, !inline_history !3682
  %i.fc = load ptr, ptr %i.bz, align 8, !tbaa !94
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  %i.fe = load ptr, ptr %i.fd, align 8
  call void %i.fe(ptr noundef nonnull align 8 dereferenceable(16) %i.bz) #34, !inline_history !3682
  br label %.noexc

bb.ah:                                            ; preds = %bb.af
  %i.ff = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i.i = icmp eq i8 %i.ff, 0
  br i1 %.not.i.i.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fg = add nsw i32 %i.ex, -1
  store i32 %i.fg, ptr %i.eu, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.fh = atomicrmw volatile add ptr %i.eu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i.i = phi i32 [ %i.ex, %bb.ai ], [ %i.fh, %bb.aj ]
  %i.fi = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.fi, label %bb.ak, label %.noexc, !prof !77

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bz) #34
  br label %.noexc

.noexc:                                           ; preds = %bb.ag, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ak
  %.pr = load ptr, ptr %2, align 8, !tbaa !720
  %i.fj = icmp eq ptr %.pr, null
  br i1 %i.fj, label %.noexc.thread, label %bb.al, !prof !3735

bb.al:                                            ; preds = %.noexc
  %i.fk = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !4912, !nonnull !105, !align !608
  invoke void @_ZN8facebook5velox6StatusC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 40
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !4893, !nonnull !105, !align !608
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %i.fn, i32 noundef %i.at, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18IPSubnetOfFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEENSA_INS0_10IPAddressTELb1EEEEEEJSC_SE_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit unwind label %bb.ap

_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18IPSubnetOfFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEENSA_INS0_10IPAddressTELb1EEEEEEJSC_SE_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit: ; preds = %bb.am
  %i.fo = load ptr, ptr %3, align 8, !tbaa !720
  %.not.i = icmp eq ptr %i.fo, null
  br i1 %.not.i, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18IPSubnetOfFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEENSA_INS0_10IPAddressTELb1EEEEEEJSC_SE_EEEE7iterateIJNS1_12VectorReaderISC_EENSJ_ISE_EEEEEvRNSH_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSR_.exit, label %bb.an, !prof !221

bb.an:                                            ; preds = %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18IPSubnetOfFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEENSA_INS0_10IPAddressTELb1EEEEEEJSC_SE_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18IPSubnetOfFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEENSA_INS0_10IPAddressTELb1EEEEEEJSC_SE_EEEE7iterateIJNS1_12VectorReaderISC_EENSJ_ISE_EEEEEvRNSH_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSR_.exit

bb.ao:                                            ; preds = %bb.al
  %i.fp = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook5velox6StatusD2Ev.exit19

bb.ap:                                            ; preds = %bb.am
  %i.fq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.fr = load ptr, ptr %3, align 8, !tbaa !720
  %.not.i18 = icmp eq ptr %i.fr, null
  br i1 %.not.i18, label %_ZN8facebook5velox6StatusD2Ev.exit19, label %bb.aq, !prof !221

bb.aq:                                            ; preds = %bb.ap
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZN8facebook5velox6StatusD2Ev.exit19

.noexc.thread:                                    ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18IPSubnetOfFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEENSA_INS0_10IPAddressTELb1EEEEEEJSC_SE_EEEE14doApplyNotNullILm1EKNS1_12VectorReaderISE_EEJNS1_7RowViewILb1EJnaEEEETnNSt9enable_ifIXneT_L_ZNSG_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSS_RT0_DpRKT1_.exit, %.noexc
  %7 = phi ptr [ %.pre, %.noexc ], [ %6, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18IPSubnetOfFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEENSA_INS0_10IPAddressTELb1EEEEEEJSC_SE_EEEE14doApplyNotNullILm1EKNS1_12VectorReaderISE_EEJNS1_7RowViewILb1EJnaEEEETnNSt9enable_ifIXneT_L_ZNSG_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRbSS_RT0_DpRKT1_.exit ]
  %i.fs = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !4913, !nonnull !105, !align !608
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !4914, !nonnull !105, !align !608
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !991
  %i.fx = lshr i64 %indvars.iv, 3
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.fx ; 2 uses
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !26  ; 2 uses
  br i1 %i.et, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.noexc.thread
  %i.ga = trunc i64 %indvars.iv to i8
  %i.gb = and i8 %i.ga, 7
  %i.gc = shl nuw i8 1, %i.gb
  %i.gd = or i8 %i.fz, %i.gc
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18IPSubnetOfFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEENSA_INS0_10IPAddressTELb1EEEEEEJSC_SE_EEEE7iterateIJNS1_12VectorReaderISC_EENSJ_ISE_EEEEEvRNSH_12ApplyContextEDpRT_ENKUlT_bT0_E_clIibEEDaSR_bSS_.exit.i

bb.as:                                            ; preds = %.noexc.thread
  %i.ge = and i64 %indvars.iv, 7
  %i.gf = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ge
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !26
  %i.gh = and i8 %i.gg, %i.fz
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18IPSubnetOfFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEENSA_INS0_10IPAddressTELb1EEEEEEJSC_SE_EEEE7iterateIJNS1_12VectorReaderISC_EENSJ_ISE_EEEEEvRNSH_12ApplyContextEDpRT_ENKUlT_bT0_E_clIibEEDaSR_bSS_.exit.i

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18IPSubnetOfFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEENSA_INS0_10IPAddressTELb1EEEEEEJSC_SE_EEEE7iterateIJNS1_12VectorReaderISC_EENSJ_ISE_EEEEEvRNSH_12ApplyContextEDpRT_ENKUlT_bT0_E_clIibEEDaSR_bSS_.exit.i: ; preds = %bb.ar, %bb.as
  %.sink.i = phi i8 [ %i.gh, %bb.as ], [ %i.gd, %bb.ar ]
  store i8 %.sink.i, ptr %i.fy, align 1, !tbaa !26
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18IPSubnetOfFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEENSA_INS0_10IPAddressTELb1EEEEEEJSC_SE_EEEE7iterateIJNS1_12VectorReaderISC_EENSJ_ISE_EEEEEvRNSH_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSR_.exit

_ZN8facebook5velox6StatusD2Ev.exit19:             ; preds = %bb.aq, %bb.ap, %bb.ao
  %.pn.i4 = phi { ptr, i32 } [ %i.fp, %bb.ao ], [ %i.fq, %bb.ap ], [ %i.fq, %bb.aq ] ; 3 uses
  %i.gi = load ptr, ptr %2, align 8, !tbaa !720
  %.not.i21 = icmp eq ptr %i.gi, null
  br i1 %.not.i21, label %_ZN8facebook5velox6StatusD2Ev.exit22, label %bb.at, !prof !221

bb.at:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %_ZN8facebook5velox6StatusD2Ev.exit22

_ZN8facebook5velox6StatusD2Ev.exit22:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  %i.gj = extractvalue { ptr, i32 } %.pn.i4, 0    ; 2 uses
  %i.gk = extractvalue { ptr, i32 } %.pn.i4, 1    ; 2 uses
  %i.gl = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #34
  %i.gm = icmp eq i32 %i.gk, %i.gl
  br i1 %i.gm, label %bb.av, label %bb.aw

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18IPSubnetOfFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEENSA_INS0_10IPAddressTELb1EEEEEEJSC_SE_EEEE7iterateIJNS1_12VectorReaderISC_EENSJ_ISE_EEEEEvRNSH_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSR_.exit: ; preds = %bb.an, %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18IPSubnetOfFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEENSA_INS0_10IPAddressTELb1EEEEEEJSC_SE_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18IPSubnetOfFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEENSA_INS0_10IPAddressTELb1EEEEEEJSC_SE_EEEE7iterateIJNS1_12VectorReaderISC_EENSJ_ISE_EEEEEvRNSH_12ApplyContextEDpRT_ENKUlT_bT0_E_clIibEEDaSR_bSS_.exit.i
  %8 = phi ptr [ %.pre, %bb.an ], [ %.pre, %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18IPSubnetOfFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEENSA_INS0_10IPAddressTELb1EEEEEEJSC_SE_EEEE12ApplyContext8setErrorEiNS0_6StatusE.exit ], [ %7, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18IPSubnetOfFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEENSA_INS0_10IPAddressTELb1EEEEEEJSC_SE_EEEE7iterateIJNS1_12VectorReaderISC_EENSJ_ISE_EEEEEvRNSH_12ApplyContextEDpRT_ENKUlT_bT0_E_clIibEEDaSR_bSS_.exit.i ]
  %i.gn = load ptr, ptr %2, align 8, !tbaa !720
  %.not.i23 = icmp eq ptr %i.gn, null
  br i1 %.not.i23, label %_ZN8facebook5velox6StatusD2Ev.exit24, label %bb.au, !prof !221

bb.au:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18IPSubnetOfFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEENSA_INS0_10IPAddressTELb1EEEEEEJSC_SE_EEEE7iterateIJNS1_12VectorReaderISC_EENSJ_ISE_EEEEEvRNSH_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSR_.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %_ZN8facebook5velox6StatusD2Ev.exit24

_ZN8facebook5velox6StatusD2Ev.exit24:             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18IPSubnetOfFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEENSA_INS0_10IPAddressTELb1EEEEEEJSC_SE_EEEE7iterateIJNS1_12VectorReaderISC_EENSJ_ISE_EEEEEvRNSH_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSR_.exit, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18IPSubnetOfFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEENSC_INS0_10IPAddressTELb1EEEEEEJSE_SG_EEEE7iterateIJNS1_12VectorReaderISE_EENSL_ISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit

bb.av:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit22
  %i.go = call ptr @__cxa_begin_catch(ptr %i.gj) #34
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !742 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 144
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !7  ; 4 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 152
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !16
  %i.gv = icmp eq i64 %i.gu, 4
  br i1 %i.gv, label %.lr.ph.i.i.i.preheader.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader.i.preheader:               ; preds = %bb.av
  %i.gw = load i8, ptr %i.gs, align 1, !tbaa !26
  %or.cond.not.i.i.i = icmp eq i8 %i.gw, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.preheader.i.preheader
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gs, i64 1
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !26
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.gy, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gs, i64 2
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !26
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.ha, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gs, i64 3
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !26
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.hc, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %5) #34
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.ak, i32 noundef %i.at, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.bd unwind label %bb.bf

.loopexit:                                        ; preds = %bb.av, %.lr.ph.i.i.i.preheader.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #37
          to label %bb.bj unwind label %bb.bc

bb.aw:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit22
  %i.hd = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #34
  %i.he = icmp eq i32 %i.gk, %i.hd
  br i1 %i.he, label %bb.ax, label %.loopexit34

bb.ax:                                            ; preds = %bb.aw
  %i.hf = call ptr @__cxa_begin_catch(ptr %i.gj) #34 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %4) #34
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.ak, i32 noundef %i.at, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.ay unwind label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.hg = load ptr, ptr %4, align 8, !tbaa !369
  %.not.i25 = icmp eq ptr %i.hg, null
  br i1 %.not.i25, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #34
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.ay, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18IPSubnetOfFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEENSC_INS0_10IPAddressTELb1EEEEEEJSE_SG_EEEE7iterateIJNS1_12VectorReaderISE_EENSL_ISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit

bb.ba:                                            ; preds = %bb.ax
  %i.hh = landingpad { ptr, i32 }
          cleanup
  %i.hi = load ptr, ptr %4, align 8, !tbaa !369
  %.not.i26 = icmp eq ptr %i.hi, null
  br i1 %.not.i26, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit27, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #34
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit27

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit27: ; preds = %bb.ba, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  invoke void @__cxa_end_catch()
          to label %.loopexit34 unwind label %bb.bi

bb.bc:                                            ; preds = %.loopexit
  %i.hj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bd:                                            ; preds = %tailrecurse.i.i.i.i.3
  %i.hk = load ptr, ptr %5, align 8, !tbaa !369
  %.not.i28 = icmp eq ptr %i.hk, null
  br i1 %.not.i28, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit29, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #34
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit29

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit29: ; preds = %bb.bd, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18IPSubnetOfFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEENSC_INS0_10IPAddressTELb1EEEEEEJSE_SG_EEEE7iterateIJNS1_12VectorReaderISE_EENSL_ISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit

bb.bf:                                            ; preds = %tailrecurse.i.i.i.i.3
  %i.hl = landingpad { ptr, i32 }
          cleanup
  %i.hm = load ptr, ptr %5, align 8, !tbaa !369
  %.not.i30 = icmp eq ptr %i.hm, null
  br i1 %.not.i30, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit31, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #34
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit31

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit31: ; preds = %bb.bf, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %bb.bh

bb.bh:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit31, %bb.bc
  %.pn.i = phi { ptr, i32 } [ %i.hl, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit31 ], [ %i.hj, %bb.bc ]
  invoke void @__cxa_end_catch()
          to label %.loopexit34 unwind label %bb.bi

.loopexit34:                                      ; preds = %bb.aw, %bb.bh, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit27
  %.merged.i = phi { ptr, i32 } [ %i.hh, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit27 ], [ %.pn.i, %bb.bh ], [ %.pn.i4, %bb.aw ]
  resume { ptr, i32 } %.merged.i

bb.bi:                                            ; preds = %bb.bh, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit27
  %i.hn = landingpad { ptr, i32 }
          catch ptr null
  %i.ho = extractvalue { ptr, i32 } %i.hn, 0
  call void @__clang_call_terminate(ptr %i.ho) #38
  unreachable

bb.bj:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18IPSubnetOfFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEENSC_INS0_10IPAddressTELb1EEEEEEJSE_SG_EEEE7iterateIJNS1_12VectorReaderISE_EENSL_ISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit29
  %9 = phi ptr [ %8, %_ZN8facebook5velox6StatusD2Ev.exit24 ], [ %.pre, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit ], [ %.pre, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit29 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit33, label %bb.i, !llvm.loop !4916

bb.bk:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.hp = load ptr, ptr %0, align 8, !tbaa !513
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !727
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ht = load i32, ptr %i.hs, align 8, !tbaa !729
  tail call void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18IPSubnetOfFunctionINS3_10VectorExecEEESB_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEENSE_INS0_10IPAddressTELb1EEEEEEJSG_SI_EEEE7iterateIJNS3_12VectorReaderISG_EENSN_ISI_EEEEEvRNSL_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_(ptr noundef %i.hp, i32 noundef %i.hr, i32 noundef %i.ht, i1 noundef zeroext true, ptr noundef nonnull byval(%class.anon.2544) align 8 %1)
  br label %.loopexit33

.loopexit33:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18IPSubnetOfFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEENSC_INS0_10IPAddressTELb1EEEEEEJSE_SG_EEEE7iterateIJNS1_12VectorReaderISE_EENSL_ISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit, %bb.h, %bb.bk
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18IPSubnetOfFunctionINS3_10VectorExecEEESB_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEENSE_INS0_10IPAddressTELb1EEEEEEJSG_SI_EEEE7iterateIJNS3_12VectorReaderISG_EENSN_ISI_EEEEEvRNSL_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef byval(%class.anon.2544) align 8 %4) local_unnamed_addr #0 comdat {
bb.a:
  %5 = alloca %class.anon.2546, align 8           ; 6 uses
  %6 = alloca %class.anon.2545, align 8           ; 8 uses
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
  br i1 %.not.i, label %bb.b, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18IPSubnetOfFunctionINS4_10VectorExecEEESC_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEENSF_INS0_10IPAddressTELb1EEEEEEJSH_SJ_EEEE7iterateIJNS4_12VectorReaderISH_EENSO_ISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISX_EEvRKNS0_17SelectivityVectorESW_EUlSW_E_EEvS11_SW_T0_EUlSW_E_EEvPKmiibSW_EUlimE_ZNS3_IS14_EEvS16_iibSW_EUliE_EEviiSW_S13_.exit

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
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18IPSubnetOfFunctionINS3_10VectorExecEEESB_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEENSE_INS0_10IPAddressTELb1EEEEEEJSG_SI_EEEE7iterateIJNS3_12VectorReaderISG_EENSN_ISI_EEEEEvRNSL_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.g, i64 noundef %i.q)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18IPSubnetOfFunctionINS4_10VectorExecEEESC_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEENSF_INS0_10IPAddressTELb1EEEEEEJSH_SJ_EEEE7iterateIJNS4_12VectorReaderISH_EENSO_ISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISX_EEvRKNS0_17SelectivityVectorESW_EUlSW_E_EEvS11_SW_T0_EUlSW_E_EEvPKmiibSW_EUlimE_ZNS3_IS14_EEvS16_iibSW_EUliE_EEviiSW_S13_.exit

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
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18IPSubnetOfFunctionINS3_10VectorExecEEESB_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEENSE_INS0_10IPAddressTELb1EEEEEEJSG_SI_EEEE7iterateIJNS3_12VectorReaderISG_EENSN_ISI_EEEEEvRNSL_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.r, i64 noundef %i.x)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = add nsw i32 %i.d, 64                     ; 2 uses
  %.not3337.i = icmp sgt i32 %i.y, %i.e
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.not34.i = icmp eq i32 %2, %i.e
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18IPSubnetOfFunctionINS4_10VectorExecEEESC_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEENSF_INS0_10IPAddressTELb1EEEEEEJSH_SJ_EEEE7iterateIJNS4_12VectorReaderISH_EENSO_ISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISX_EEvRKNS0_17SelectivityVectorESW_EUlSW_E_EEvS11_SW_T0_EUlSW_E_EEvPKmiibSW_EUlimE_ZNS3_IS14_EEvS16_iibSW_EUliE_EEviiSW_S13_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.z = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.d, %bb.f ]
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18IPSubnetOfFunctionINS3_10VectorExecEEESB_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEENSE_INS0_10IPAddressTELb1EEEEEEJSG_SI_EEEE7iterateIJNS3_12VectorReaderISG_EENSN_ISI_EEEEEvRNSL_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !4917

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i36.i = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask.i36.i, -1
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18IPSubnetOfFunctionINS3_10VectorExecEEESB_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEENSE_INS0_10IPAddressTELb1EEEEEEJSG_SI_EEEE7iterateIJNS3_12VectorReaderISG_EENSN_ISI_EEEEEvRNSL_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.ac, i64 noundef %i.af)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18IPSubnetOfFunctionINS4_10VectorExecEEESC_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEENSF_INS0_10IPAddressTELb1EEEEEEJSH_SJ_EEEE7iterateIJNS4_12VectorReaderISH_EENSO_ISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISX_EEvRKNS0_17SelectivityVectorESW_EUlSW_E_EEvS11_SW_T0_EUlSW_E_EEvPKmiibSW_EUlimE_ZNS3_IS14_EEvS16_iibSW_EUliE_EEviiSW_S13_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18IPSubnetOfFunctionINS4_10VectorExecEEESC_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEENSF_INS0_10IPAddressTELb1EEEEEEJSH_SJ_EEEE7iterateIJNS4_12VectorReaderISH_EENSO_ISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISX_EEvRKNS0_17SelectivityVectorESW_EUlSW_E_EEvS11_SW_T0_EUlSW_E_EEvPKmiibSW_EUlimE_ZNS3_IS14_EEvS16_iibSW_EUliE_EEviiSW_S13_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18IPSubnetOfFunctionINS3_10VectorExecEEESB_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEENSE_INS0_10IPAddressTELb1EEEEEEJSG_SI_EEEE7iterateIJNS3_12VectorReaderISG_EENSN_ISI_EEEEEvRNSL_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.facebook::velox::Status", align 8 ; 10 uses
  %4 = alloca %"class.facebook::velox::Status", align 8 ; 8 uses
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !4918, !range !104, !noundef !105
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !4920
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !159
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit38, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18IPSubnetOfFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEENSC_INS0_10IPAddressTELb1EEEEEEJSE_SG_EEEE7iterateIJNS1_12VectorReaderISE_EENSL_ISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit
  %.045 = phi i64 [ %i.k, %.preheader ], [ %i.gy, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18IPSubnetOfFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9IPPrefixTELb0EEENSC_INS0_10IPAddressTELb1EEEEEEJSE_SG_EEEE7iterateIJNS1_12VectorReaderISE_EENSL_ISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit ] ; 3 uses
  %i.o = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.045, i1 true) ; 2 uses
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = or disjoint i32 %i.m, %i.p               ; 6 uses
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !4899 ; 2 uses
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !4901, !nonnull !105, !align !608 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.t = sext i32 %i.q to i64                     ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !4902, !nonnull !105, !align !608 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !4905, !nonnull !105, !align !608 ; 2 uses
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !4572, !nonnull !105, !align !608 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 58
  %i.aa = load i8, ptr %i.z, align 2, !tbaa !1306, !range !104, !noundef !105
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %.noexc12, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 59
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !1307, !range !104, !noundef !105
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !1308
  br label %.noexc12

bb.e:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1309
  %i.aj = shl nsw i64 %i.t, 2
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !3
  br label %.noexc12

.noexc12:                                         ; preds = %bb.e, %bb.d, %bb.b
  %.0.i.i = phi i32 [ %i.al, %bb.e ], [ %i.ag, %bb.d ], [ %i.q, %bb.b ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.an = load ptr, ptr %i.x, align 8, !tbaa !3671, !noalias !4921, !nonnull !105, !align !608 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1305, !noalias !4921
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 58
  %i.ar = load i8, ptr %i.aq, align 2, !tbaa !1306, !range !104, !noalias !4921, !noundef !105
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i, label %bb.f

bb.f:                                             ; preds = %.noexc12
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 59
  %i.au = load i8, ptr %i.at, align 1, !tbaa !1307, !range !104, !noalias !4921, !noundef !105
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !1308, !noalias !4921
  br label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i
end_hunk_2
