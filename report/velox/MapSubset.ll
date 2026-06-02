inline.NumInlined: 38214
inline.NumDeleted: 10273
begin_hunk_0_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS3_10VectorExecENS0_9TimestampEEESB_NS0_3MapISC_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSJ_NS0_5ArrayISC_EEEEEJSJ_SM_EEEE8applyUdfIZNKSP_7iterateIJNS3_12VectorReaderISJ_EENSS_ISM_EEEEEvRNSP_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSW_S10_EUlS10_E_ZNKSQ_IS15_EEvSW_S10_EUlS10_E0_EEvRKS1_S10_S12_EUlS10_E_EEvS10_:bb.a

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
  %i.cb = getelementptr inbounds [16 x i8], ptr %i.bl, i64 %i.ca
  %5 = load <2 x i64>, ptr %i.cb, align 8, !tbaa !117, !noalias !10514 ; 6 uses
  %i.cc = load i64, ptr %i.al, align 8, !tbaa !476 ; 2 uses
  %i.cd = lshr i64 %i.cc, 8
  switch i64 %i.cd, label %bb.q [
    i64 0, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread
    i64 1, label %bb.p
  ]

bb.p:                                             ; preds = %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit
  %i.ce = load i64, ptr %i.ay, align 8, !tbaa !10418
  %i.cf = and i64 %i.ce, -16
  %i.cg = inttoptr i64 %i.cf to ptr
  %6 = load <2 x i64>, ptr %i.cg, align 16
  %7 = icmp eq <2 x i64> %5, %6                   ; 2 uses
  %8 = extractelement <2 x i1> %7, i64 0
  %9 = extractelement <2 x i1> %7, i64 1
  %i.ch = select i1 %8, i1 %9, i1 false
  br i1 %i.ch, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread77, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread

bb.q:                                             ; preds = %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit
  %10 = extractelement <2 x i64> %5, i64 0        ; 2 uses
  %11 = extractelement <2 x i64> %5, i64 1
  %i.ci = xor i64 %11, %10
  %i.cj = mul i64 %i.ci, -7070675565921424023     ; 2 uses
  %i.ck = lshr i64 %i.cj, 47
  %i.cl = xor i64 %10, %i.ck
  %i.cm = xor i64 %i.cl, %i.cj
  %i.cn = mul i64 %i.cm, -7070675565921424023     ; 2 uses
  %i.co = lshr i64 %i.cn, 47
  %i.cp = xor i64 %i.co, %i.cn
  %i.cq = mul i64 %i.cp, -7070675565921424023     ; 2 uses
  %i.cr = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.cq) ; 2 uses
  %i.cs = lshr i64 %i.cr, 24
  %i.ct = or i64 %i.cs, 128                       ; 2 uses
  %i.cu = add i64 %i.cr, %i.cq
  %i.cv = shl nuw nsw i64 %i.ct, 1
  %i.cw = or disjoint i64 %i.cv, 1
  %i.cx = trunc nuw i64 %i.ct to i8
  %i.cy = insertelement <16 x i8> poison, i8 %i.cx, i64 0
  %i.cz = shufflevector <16 x i8> %i.cy, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.da = and i64 %i.cc, 255                      ; 2 uses
  %i.db = shl nuw i64 1, %i.da
  %i.dc = load ptr, ptr %i.ak, align 8, !tbaa !10339
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.u
  %.0.i.i104 = phi i64 [ %i.cu, %bb.q ], [ %i.dw, %bb.u ] ; 2 uses
  %.023.i.i103 = phi i64 [ %i.db, %bb.q ], [ %i.dv, %bb.u ]
  %i.dd = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i104, i64 range(i64 0, 256) %i.da)
  %i.de = getelementptr inbounds nuw [256 x i8], ptr %i.dc, i64 %i.dd ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 144
  call void @llvm.prefetch.p0(ptr nonnull %i.dg, i32 0, i32 3, i32 1)
  %i.dh = load <16 x i8>, ptr %i.de, align 16     ; 2 uses
  %i.di = icmp eq <16 x i8> %i.dh, %i.cz
  %i.dj = bitcast <16 x i1> %i.di to i16
  %i.dk = and i16 %i.dj, 16383
  %i.dl = zext nneg i16 %i.dk to i32
  %i.dm = icmp ne ptr %i.de, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.dn = extractelement <16 x i8> %i.dh, i64 15
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.s, %bb.r
  %.sroa.049.0 = phi i32 [ %i.dl, %bb.r ], [ %i.dq, %bb.s ] ; 4 uses
  %.not = icmp eq i32 %.sroa.049.0, 0
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.critedge.i.i
  %i.do = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.049.0, i1 true)
  %i.dp = add nsw i32 %.sroa.049.0, -1
  %i.dq = and i32 %i.dp, %.sroa.049.0
  %i.dr = zext nneg i32 %i.do to i64
  call void @llvm.assume(i1 %i.dm)
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.df, i64 %i.dr
  %12 = load <2 x i64>, ptr %i.ds, align 8
  %13 = icmp eq <2 x i64> %5, %12                 ; 2 uses
  %14 = extractelement <2 x i1> %13, i64 0
  %15 = extractelement <2 x i1> %13, i64 1
  %i.dt = select i1 %14, i1 %15, i1 false
  br i1 %i.dt, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread77, label %.critedge.i.i, !prof !232, !llvm.loop !10411

bb.t:                                             ; preds = %.critedge.i.i
  %i.du = icmp eq i8 %i.dn, 0
  br i1 %i.du, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread, label %bb.u, !prof !232

bb.u:                                             ; preds = %bb.t
  %i.dv = add i64 %.023.i.i103, -1                ; 2 uses
  %i.dw = add i64 %i.cw, %.0.i.i104
  %.not.i.i = icmp eq i64 %i.dv, 0
  br i1 %.not.i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread, label %bb.r, !llvm.loop !10412

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread77: ; preds = %bb.s, %bb.p
  %i.dx = load ptr, ptr %i.au, align 8, !tbaa !562, !nonnull !57, !align !179 ; 5 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !735 ; 4 uses
  %.not.i.i.i25 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i25, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread, label %bb.v

bb.v:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread77
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 58
  %i.eb = load i8, ptr %i.ea, align 2, !tbaa !458, !range !56, !noundef !57
  %i.ec = trunc nuw i8 %i.eb to i1
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dx, i64 57
  %i.ee = load i8, ptr %i.ed, align 1, !range !56
  %i.ef = trunc nuw i8 %i.ee to i1
  %or.cond.i.i.i = select i1 %i.ec, i1 true, i1 %i.ef
  br i1 %or.cond.i.i.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.eg = lshr i64 %indvars.iv, 6
  %i.eh = and i64 %i.eg, 67108863
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.eh
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !117
  %i.ek = and i64 %indvars.iv, 63
  %i.el = shl nuw i64 1, %i.ek
  %i.em = and i64 %i.ej, %i.el
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit

bb.x:                                             ; preds = %bb.v
  %i.en = getelementptr inbounds nuw i8, ptr %i.dx, i64 59
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !459, !range !56, !noundef !57
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.eq = load i64, ptr %i.dz, align 8, !tbaa !117
  %i.er = and i64 %i.eq, 1
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit

bb.z:                                             ; preds = %bb.x
  %i.es = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !461
  %i.eu = shl nsw i64 %indvars.iv, 2
  %i.ev = getelementptr inbounds i8, ptr %i.et, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !3
  %i.ex = zext i32 %i.ew to i64                   ; 2 uses
  %i.ey = lshr i64 %i.ex, 6
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.ey
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !117
  %i.fb = and i64 %i.ex, 63
  %i.fc = shl nuw i64 1, %i.fb
  %i.fd = and i64 %i.fc, %i.fa
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit: ; preds = %bb.w, %bb.y, %bb.z
  %.0.i.i.i.in = phi i64 [ %i.em, %bb.w ], [ %i.er, %bb.y ], [ %i.fd, %bb.z ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %bb.aa, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread

bb.aa:                                            ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit
  %i.fe = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
  store <2 x i64> %5, ptr %i.fe, align 8, !tbaa !117
  br label %bb.ad

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread: ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread77, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit
  %i.ff = load i32, ptr %i.az, align 8, !tbaa !10446, !noalias !10519 ; 2 uses
  %i.fg = add nsw i32 %i.ff, 1                    ; 2 uses
  %i.fh = load i8, ptr %i.ba, align 1, !tbaa !10458, !range !56, !noalias !10519, !noundef !57
  %i.fi = trunc nuw i8 %i.fh to i1
  br i1 %i.fi, label %bb.ab, label %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i

bb.ab:                                            ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread
  %i.fj = load ptr, ptr %i.bb, align 8, !tbaa !10459, !noalias !10519 ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !46, !noalias !10519
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !noalias !10519
  call void %i.fm(ptr noundef nonnull align 8 dereferenceable(96) %i.fj, i1 noundef zeroext true), !noalias !10519, !inline_history !10522
  store i8 0, ptr %i.ba, align 1, !tbaa !10458, !noalias !10519
  br label %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i

_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i: ; preds = %bb.ab, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread
  %i.fn = load i32, ptr %i.bc, align 4, !tbaa !10447, !noalias !10519 ; 2 uses
  %i.fo = add nsw i32 %i.fn, %i.fg                ; 2 uses
  %i.fp = load i32, ptr %i.bd, align 8, !tbaa !10470, !noalias !10519
  %i.fq = icmp sgt i32 %i.fo, %i.fp
  br i1 %i.fq, label %bb.ac, label %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE8add_itemEv.exit, !prof !15

bb.ac:                                            ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i
  %i.fr = sitofp i32 %i.fo to double
  %i.fs = call noundef double @log2(double noundef %i.fr) #35, !tbaa !3, !noalias !10519
  %i.ft = call double @llvm.ceil.f64(double %i.fs)
  %exp2.i.i.i = call double @exp2(double %i.ft), !noalias !10519
  %i.fu = fptosi double %exp2.i.i.i to i32        ; 3 uses
  %i.fv = load ptr, ptr %i.be, align 8, !tbaa !10467, !noalias !10519 ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !46, !noalias !10519
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.fy = load ptr, ptr %i.fx, align 8, !noalias !10519
  call void %i.fy(ptr noundef nonnull align 8 dereferenceable(32) %i.fv, i32 noundef %i.fu), !noalias !10519, !inline_history !10523
  %i.fz = load ptr, ptr %i.bb, align 8, !tbaa !10459, !noalias !10519 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !46, !noalias !10519
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.gc = load ptr, ptr %i.gb, align 8, !noalias !10519
  call void %i.gc(ptr noundef nonnull align 8 dereferenceable(96) %i.fz, i32 noundef %i.fu), !noalias !10519, !inline_history !10523
  store i32 %i.fu, ptr %i.bd, align 8, !tbaa !10470, !noalias !10519
  %.pre.i = load i32, ptr %i.bc, align 4, !tbaa !10447, !noalias !10519
  br label %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE8add_itemEv.exit

_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE8add_itemEv.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i, %bb.ac
  %i.gd = phi i32 [ %i.fn, %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i ], [ %.pre.i, %bb.ac ]
  store i32 %i.fg, ptr %i.az, align 8, !tbaa !10446, !noalias !10519
  %i.ge = add i32 %i.gd, %i.ff                    ; 2 uses
  %i.gf = load ptr, ptr %i.be, align 8, !tbaa !10467, !noalias !10519
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !7496, !noalias !10519
  %i.gi = sext i32 %i.ge to i64
  %i.gj = getelementptr inbounds [16 x i8], ptr %i.gh, i64 %i.gi
  store i8 1, ptr %i.ba, align 1, !tbaa !10458, !noalias !10519
  %i.gk = load ptr, ptr %i.bb, align 8, !tbaa !10459, !noalias !10519 ; 2 uses
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !46, !noalias !10519
  %i.gm = load ptr, ptr %i.gl, align 8, !noalias !10519
  call void %i.gm(ptr noundef nonnull align 8 dereferenceable(96) %i.gk, i32 noundef %i.ge), !noalias !10519, !inline_history !10524
  %i.gn = load ptr, ptr %i.bb, align 8, !tbaa !10459, !noalias !10519
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  store <2 x i64> %5, ptr %i.gj, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !10525)
  call void @llvm.experimental.noalias.scope.decl(metadata !10528)
  %i.gp = load ptr, ptr %i.au, align 8, !tbaa !562, !noalias !10531, !nonnull !57, !align !179
  store ptr %i.gp, ptr %4, align 8, !tbaa !509, !alias.scope !10531
  store <2 x ptr> %i.bf, ptr %i.bg, align 8, !tbaa !38, !alias.scope !10531
  store i32 %i.bp, ptr %i.bh, align 8, !tbaa !8188, !alias.scope !10531
  call void @_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.go, ptr noundef nonnull align 8 dereferenceable(28) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE8add_itemEv.exit, %bb.aa
  %i.gq = add nsw i64 %.0107, -1                  ; 2 uses
  %i.gr = icmp eq i64 %i.gq, 0
  br i1 %i.gr, label %.loopexit, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread: ; preds = %bb.t, %bb.u, %bb.p, %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit, %bb.ad
  %.1.ph = phi i64 [ %i.gq, %bb.ad ], [ %.0107, %bb.p ], [ %.0107, %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit ], [ %.0107, %bb.u ], [ %.0107, %bb.t ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.gs = trunc nsw i64 %indvars.iv.next to i32
  %i.gt = icmp eq i32 %i.av, %i.gs
  br i1 %i.gt, label %.loopexit, label %bb.l

.loopexit:                                        ; preds = %bb.ad, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread, %bb.k, %bb.j, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !10446 ; 2 uses
  %i.c = add nsw i32 %i.b, 1                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !10458, !range !56, !noundef !57
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !10459 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !46
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(96) %i.h, i1 noundef zeroext true), !inline_history !10532
  store i8 0, ptr %i.d, align 1, !tbaa !10458
  br label %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i

_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i: ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !10447 ; 2 uses
  %i.n = add nsw i32 %i.m, %i.c                   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !10470
  %i.q = icmp sgt i32 %i.n, %i.p
  br i1 %i.q, label %bb.c, label %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE6resizeEi.exit, !prof !15

bb.c:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i
  %i.r = sitofp i32 %i.n to double
  %i.s = tail call noundef double @log2(double noundef %i.r) #35, !tbaa !3
  %i.t = tail call double @llvm.ceil.f64(double %i.s)
  %exp2.i.i = tail call double @exp2(double %i.t)
  %i.u = fptosi double %exp2.i.i to i32           ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !10467 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !46
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(32) %i.w, i32 noundef %i.u), !inline_history !10533
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !10459 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !46
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(96) %i.ab, i32 noundef %i.u), !inline_history !10533
  store i32 %i.u, ptr %i.o, align 8, !tbaa !10470
  %.pre = load i32, ptr %i.l, align 4, !tbaa !10447
  br label %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE6resizeEi.exit

_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE6resizeEi.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i, %bb.c
  %i.af = phi i32 [ %i.m, %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i ], [ %.pre, %bb.c ]
  store i32 %i.c, ptr %i.a, align 8, !tbaa !10446
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !10469 ; 2 uses
  %i.ai = add i32 %i.af, %i.b
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !46
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 144
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(94) %i.ah, i32 noundef %i.ai, i1 noundef zeroext true)
  %i.am = load i32, ptr %i.l, align 4, !tbaa !10447
  %i.an = load i32, ptr %i.a, align 8, !tbaa !10446
  %i.ao = add i32 %i.am, -1
  %i.ap = add i32 %i.ao, %i.an
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !10467
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !7496
  %i.au = sext i32 %i.ap to i64
  %i.av = getelementptr inbounds [16 x i8], ptr %i.at, i64 %i.au
  ret ptr %i.av
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS3_10VectorExecENS0_9TimestampEEESB_NS0_3MapISC_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSJ_NS0_5ArrayISC_EEEEEJSJ_SM_EEEE8applyUdfIZNKSP_7iterateIJNS3_12VectorReaderISJ_EENSS_ISM_EEEEEvRNSP_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSW_S10_EUlS10_E_ZNKSQ_IS15_EEvSW_S10_EUlS10_E0_EEvRKNS0_17SelectivityVectorES10_S12_EUlS10_E_EEvPKmiibS10_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef byval(%class.anon.3045) align 8 %4) local_unnamed_addr #0 comdat {
bb.a:
  %5 = alloca %class.anon.3051, align 8           ; 6 uses
  %6 = alloca %class.anon.3050, align 8           ; 8 uses
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
  br i1 %.not.i, label %bb.b, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS4_10VectorExecENS0_9TimestampEEESC_NS0_3MapISD_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSK_NS0_5ArrayISD_EEEEEJSK_SN_EEEE8applyUdfIZNKSQ_7iterateIJNS4_12VectorReaderISK_EENST_ISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSX_S11_EUlS11_E_ZNKSR_IS16_EEvSX_S11_EUlS11_E0_EEvRKNS0_17SelectivityVectorES11_S13_EUlS11_E_EEvPKmiibS11_EUlimE_ZNS3_IS1C_EEvS1E_iibS11_EUliE_EEviiS11_S13_.exit

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
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS3_10VectorExecENS0_9TimestampEEESB_NS0_3MapISC_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSJ_NS0_5ArrayISC_EEEEEJSJ_SM_EEEE8applyUdfIZNKSP_7iterateIJNS3_12VectorReaderISJ_EENSS_ISM_EEEEEvRNSP_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSW_S10_EUlS10_E_ZNKSQ_IS15_EEvSW_S10_EUlS10_E0_EEvRKNS0_17SelectivityVectorES10_S12_EUlS10_E_EEvPKmiibS10_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.g, i64 noundef %i.q)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS4_10VectorExecENS0_9TimestampEEESC_NS0_3MapISD_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSK_NS0_5ArrayISD_EEEEEJSK_SN_EEEE8applyUdfIZNKSQ_7iterateIJNS4_12VectorReaderISK_EENST_ISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSX_S11_EUlS11_E_ZNKSR_IS16_EEvSX_S11_EUlS11_E0_EEvRKNS0_17SelectivityVectorES11_S13_EUlS11_E_EEvPKmiibS11_EUlimE_ZNS3_IS1C_EEvS1E_iibS11_EUliE_EEviiS11_S13_.exit

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
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS3_10VectorExecENS0_9TimestampEEESB_NS0_3MapISC_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSJ_NS0_5ArrayISC_EEEEEJSJ_SM_EEEE8applyUdfIZNKSP_7iterateIJNS3_12VectorReaderISJ_EENSS_ISM_EEEEEvRNSP_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSW_S10_EUlS10_E_ZNKSQ_IS15_EEvSW_S10_EUlS10_E0_EEvRKNS0_17SelectivityVectorES10_S12_EUlS10_E_EEvPKmiibS10_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.r, i64 noundef %i.x)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = add nsw i32 %i.d, 64                     ; 2 uses
  %.not3337.i = icmp sgt i32 %i.y, %i.e
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.not34.i = icmp eq i32 %2, %i.e
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS4_10VectorExecENS0_9TimestampEEESC_NS0_3MapISD_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSK_NS0_5ArrayISD_EEEEEJSK_SN_EEEE8applyUdfIZNKSQ_7iterateIJNS4_12VectorReaderISK_EENST_ISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSX_S11_EUlS11_E_ZNKSR_IS16_EEvSX_S11_EUlS11_E0_EEvRKNS0_17SelectivityVectorES11_S13_EUlS11_E_EEvPKmiibS11_EUlimE_ZNS3_IS1C_EEvS1E_iibS11_EUliE_EEviiS11_S13_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.z = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.d, %bb.f ]
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS3_10VectorExecENS0_9TimestampEEESB_NS0_3MapISC_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSJ_NS0_5ArrayISC_EEEEEJSJ_SM_EEEE8applyUdfIZNKSP_7iterateIJNS3_12VectorReaderISJ_EENSS_ISM_EEEEEvRNSP_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSW_S10_EUlS10_E_ZNKSQ_IS15_EEvSW_S10_EUlS10_E0_EEvRKNS0_17SelectivityVectorES10_S12_EUlS10_E_EEvPKmiibS10_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !10534

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i36.i = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask.i36.i, -1
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS3_10VectorExecENS0_9TimestampEEESB_NS0_3MapISC_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSJ_NS0_5ArrayISC_EEEEEJSJ_SM_EEEE8applyUdfIZNKSP_7iterateIJNS3_12VectorReaderISJ_EENSS_ISM_EEEEEvRNSP_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSW_S10_EUlS10_E_ZNKSQ_IS15_EEvSW_S10_EUlS10_E0_EEvRKNS0_17SelectivityVectorES10_S12_EUlS10_E_EEvPKmiibS10_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.ac, i64 noundef %i.af)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS4_10VectorExecENS0_9TimestampEEESC_NS0_3MapISD_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSK_NS0_5ArrayISD_EEEEEJSK_SN_EEEE8applyUdfIZNKSQ_7iterateIJNS4_12VectorReaderISK_EENST_ISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSX_S11_EUlS11_E_ZNKSR_IS16_EEvSX_S11_EUlS11_E0_EEvRKNS0_17SelectivityVectorES11_S13_EUlS11_E_EEvPKmiibS11_EUlimE_ZNS3_IS1C_EEvS1E_iibS11_EUliE_EEviiS11_S13_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS4_10VectorExecENS0_9TimestampEEESC_NS0_3MapISD_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSK_NS0_5ArrayISD_EEEEEJSK_SN_EEEE8applyUdfIZNKSQ_7iterateIJNS4_12VectorReaderISK_EENST_ISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSX_S11_EUlS11_E_ZNKSR_IS16_EEvSX_S11_EUlS11_E0_EEvRKNS0_17SelectivityVectorES11_S13_EUlS11_E_EEvPKmiibS11_EUlimE_ZNS3_IS1C_EEvS1E_iibS11_EUliE_EEviiS11_S13_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapSubsetPrimitiveFunctionINS3_10VectorExecENS0_9TimestampEEESB_NS0_3MapISC_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSJ_NS0_5ArrayISC_EEEEEJSJ_SM_EEEE8applyUdfIZNKSP_7iterateIJNS3_12VectorReaderISJ_EENSS_ISM_EEEEEvRNSP_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSW_S10_EUlS10_E_ZNKSQ_IS15_EEvSW_S10_EUlS10_E0_EEvRKNS0_17SelectivityVectorES10_S12_EUlS10_E_EEvPKmiibS10_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.facebook::velox::exec::ArrayView.3001", align 8 ; 5 uses
  %4 = alloca %"class.facebook::velox::exec::MapView.2998", align 8 ; 7 uses
  %5 = alloca %"class.facebook::velox::Status", align 8 ; 8 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %7 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !10535, !range !56, !noundef !57
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10537
end_hunk_0
