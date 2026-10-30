Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/Lowering?download=true
inline.NumInlined: 1539
inline.NumDeleted: 776
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6hermes16LowerAllocObject13runOnFunctionEPNS_8FunctionE:bb.a
bb.ap:                                            ; preds = %bb.ao
  call void @free(ptr noundef %i.km) #12
  br label %_ZN4llvh11SmallVectorIPN6hermes23StoreNewOwnPropertyInstELj4EED2Ev.exit

_ZN4llvh11SmallVectorIPN6hermes23StoreNewOwnPropertyInstELj4EED2Ev.exit: ; preds = %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.074.0123, i64 32 ; 3 uses
  %.not5.i3.i = icmp eq ptr %i.ko, %.pn12.i
  br i1 %.not5.i3.i, label %_ZN4llvh16DenseMapIteratorIPN6hermes15AllocObjectInstENS_8DenseMapIPNS1_10BasicBlockENS_11SmallVectorIPNS1_23StoreNewOwnPropertyInstELj4EEENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_SA_EEEENSB_IS3_EENSE_IS3_SG_EELb0EEppEv.exit, label %.lr.ph.i4.i

.lr.ph.i4.i:                                      ; preds = %_ZN4llvh11SmallVectorIPN6hermes23StoreNewOwnPropertyInstELj4EED2Ev.exit, %.critedge2.i6.i
  %.sroa.074.1 = phi ptr [ %i.kq, %.critedge2.i6.i ], [ %i.ko, %_ZN4llvh11SmallVectorIPN6hermes23StoreNewOwnPropertyInstELj4EED2Ev.exit ] ; 3 uses
  %i.kp = load ptr, ptr %.sroa.074.1, align 8, !tbaa !144
  %magicptr.i5.i = ptrtoint ptr %i.kp to i64
  switch i64 %magicptr.i5.i, label %_ZN4llvh16DenseMapIteratorIPN6hermes15AllocObjectInstENS_8DenseMapIPNS1_10BasicBlockENS_11SmallVectorIPNS1_23StoreNewOwnPropertyInstELj4EEENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_SA_EEEENSB_IS3_EENSE_IS3_SG_EELb0EEppEv.exit [
    i64 -8, label %.critedge2.i6.i
    i64 -16, label %.critedge2.i6.i
  ]

.critedge2.i6.i:                                  ; preds = %.lr.ph.i4.i, %.lr.ph.i4.i
  %i.kq = getelementptr inbounds nuw i8, ptr %.sroa.074.1, i64 32 ; 3 uses
  %.not.i7.i27 = icmp eq ptr %i.kq, %.pn12.i
  br i1 %.not.i7.i27, label %_ZN4llvh16DenseMapIteratorIPN6hermes15AllocObjectInstENS_8DenseMapIPNS1_10BasicBlockENS_11SmallVectorIPNS1_23StoreNewOwnPropertyInstELj4EEENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_SA_EEEENSB_IS3_EENSE_IS3_SG_EELb0EEppEv.exit, label %.lr.ph.i4.i, !llvm.loop !220

_ZN4llvh16DenseMapIteratorIPN6hermes15AllocObjectInstENS_8DenseMapIPNS1_10BasicBlockENS_11SmallVectorIPNS1_23StoreNewOwnPropertyInstELj4EEENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_SA_EEEENSB_IS3_EENSE_IS3_SG_EELb0EEppEv.exit: ; preds = %.lr.ph.i4.i, %.critedge2.i6.i, %_ZN4llvh11SmallVectorIPN6hermes23StoreNewOwnPropertyInstELj4EED2Ev.exit
  %.sroa.074.2 = phi ptr [ %i.ko, %_ZN4llvh11SmallVectorIPN6hermes23StoreNewOwnPropertyInstELj4EED2Ev.exit ], [ %i.kq, %.critedge2.i6.i ], [ %.sroa.074.1, %.lr.ph.i4.i ] ; 2 uses
  %.not93 = icmp eq ptr %.sroa.074.2, %i.q
  br i1 %.not93, label %._crit_edge126, label %bb.ao
}

declare noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(132)) local_unnamed_addr #2

declare noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132), i32 noundef) local_unnamed_addr #2

declare void @_ZN6hermes13DominanceInfoC1EPNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes16LowerAllocObject22lowerAllocObjectBufferEPNS_15AllocObjectInstERKN4llvh11SmallVectorIPNS_23StoreNewOwnPropertyInstELj4EEEj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.hermes::IRBuilder", align 8 ; 12 uses
  %5 = alloca %"class.llvh::SmallVector.64", align 8 ; 12 uses
  %6 = alloca %"class.llvh::SmallVector.64", align 8 ; 8 uses
  %i.a = alloca [2 x ptr], align 8                ; 5 uses
  %i.b = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 1) #12
  %i.c = load ptr, ptr %2, align 8, !tbaa !17     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !18   ; 2 uses
  %i.f = zext i32 %i.e to i64
  %.idx.i = shl nuw nsw i64 %i.f, 3
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i
  %.not47.i = icmp eq i32 %i.e, 0
  br i1 %.not47.i, label %_ZN6hermes16LowerAllocObject31estimateBestNumElemsToSerializeERKN4llvh11SmallVectorIPNS_23StoreNewOwnPropertyInstELj4EEEb.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.h = load i8, ptr %i.b, align 8, !tbaa !32
  %.not71 = icmp eq i8 %i.h, 121
  %spec.select.i = select i1 %.not71, i32 -8, i32 -12
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.preheader.i
  %.02153.i = phi ptr [ %i.y, %bb.f ], [ %i.c, %.lr.ph.preheader.i ] ; 2 uses
  %.02252.i = phi i32 [ %i.j, %bb.f ], [ 0, %.lr.ph.preheader.i ]
  %.02351.i = phi i32 [ %.2.ph.i, %bb.f ], [ 0, %.lr.ph.preheader.i ] ; 4 uses
  %.02450.i = phi i32 [ %.226.ph.i, %bb.f ], [ 0, %.lr.ph.preheader.i ] ; 4 uses
  %.02749.i = phi i32 [ %.229.ph.i, %bb.f ], [ 0, %.lr.ph.preheader.i ] ; 4 uses
  %.13148.i = phi i32 [ %.333.ph.i, %bb.f ], [ %spec.select.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.i = load ptr, ptr %.02153.i, align 8, !tbaa !137 ; 2 uses
  %i.j = add nuw i32 %.02252.i, 1                 ; 2 uses
  %i.k = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.i, i32 noundef 0) #12 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.l = load i8, ptr %i.k, align 8, !tbaa !32
  %i.m = icmp eq i8 %i.l, 27
  br i1 %i.m, label %_ZN4llvh16dyn_cast_or_nullIN6hermes16HBCLoadConstInstENS1_5ValueEEENS_10cast_rettyIT_PT0_E8ret_typeES7_.exit.i.i, label %bb.c

_ZN4llvh16dyn_cast_or_nullIN6hermes16HBCLoadConstInstENS1_5ValueEEENS_10cast_rettyIT_PT0_E8ret_typeES7_.exit.i.i: ; preds = %bb.b
  %i.n = getelementptr inbounds i8, ptr %i.k, i64 -16
  %i.o = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.n, i32 noundef 0) #12
  %i.p = load i8, ptr %i.o, align 8, !tbaa !32
  switch i8 %i.p, label %bb.c [
    i8 113, label %_ZL12canSerializePN6hermes5ValueE.exit.i
    i8 117, label %_ZL12canSerializePN6hermes5ValueE.exit.i
    i8 114, label %_ZL12canSerializePN6hermes5ValueE.exit.i
    i8 116, label %_ZL12canSerializePN6hermes5ValueE.exit.i
  ]

_ZL12canSerializePN6hermes5ValueE.exit.i:         ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes16HBCLoadConstInstENS1_5ValueEEENS_10cast_rettyIT_PT0_E8ret_typeES7_.exit.i.i, %_ZN4llvh16dyn_cast_or_nullIN6hermes16HBCLoadConstInstENS1_5ValueEEENS_10cast_rettyIT_PT0_E8ret_typeES7_.exit.i.i, %_ZN4llvh16dyn_cast_or_nullIN6hermes16HBCLoadConstInstENS1_5ValueEEENS_10cast_rettyIT_PT0_E8ret_typeES7_.exit.i.i, %_ZN4llvh16dyn_cast_or_nullIN6hermes16HBCLoadConstInstENS1_5ValueEEENS_10cast_rettyIT_PT0_E8ret_typeES7_.exit.i.i
  %i.q = add nsw i32 %.13148.i, 6                 ; 3 uses
  %i.r = icmp sgt i32 %i.q, %.02749.i
  %spec.select36.i = tail call i32 @llvm.smax.i32(i32 %i.q, i32 %.02749.i)
  %spec.select37.i = select i1 %i.r, i32 %i.j, i32 %.02450.i
  br label %bb.f

bb.c:                                             ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes16HBCLoadConstInstENS1_5ValueEEENS_10cast_rettyIT_PT0_E8ret_typeES7_.exit.i.i, %bb.b, %.lr.ph.i
  %i.s = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.i, i32 noundef 2) #12
  %i.t = load i8, ptr %i.s, align 8, !tbaa !32
  %i.u = icmp eq i8 %i.t, 114
  br i1 %i.u, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = icmp eq i32 %.02351.i, 3
  br i1 %i.v, label %_ZN6hermes16LowerAllocObject31estimateBestNumElemsToSerializeERKN4llvh11SmallVectorIPNS_23StoreNewOwnPropertyInstELj4EEEb.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = add i32 %.02351.i, 1
  %i.x = add nsw i32 %.13148.i, -2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %_ZL12canSerializePN6hermes5ValueE.exit.i
  %.333.ph.i = phi i32 [ %i.q, %_ZL12canSerializePN6hermes5ValueE.exit.i ], [ %i.x, %bb.e ], [ %.13148.i, %bb.c ]
  %.229.ph.i = phi i32 [ %spec.select36.i, %_ZL12canSerializePN6hermes5ValueE.exit.i ], [ %.02749.i, %bb.e ], [ %.02749.i, %bb.c ]
  %.226.ph.i = phi i32 [ %spec.select37.i, %_ZL12canSerializePN6hermes5ValueE.exit.i ], [ %.02450.i, %bb.e ], [ %.02450.i, %bb.c ] ; 2 uses
  %.2.ph.i = phi i32 [ %.02351.i, %_ZL12canSerializePN6hermes5ValueE.exit.i ], [ %i.w, %bb.e ], [ %.02351.i, %bb.c ]
  %i.y = getelementptr inbounds nuw i8, ptr %.02153.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.y, %i.g
  br i1 %.not.i, label %_ZN6hermes16LowerAllocObject31estimateBestNumElemsToSerializeERKN4llvh11SmallVectorIPNS_23StoreNewOwnPropertyInstELj4EEEb.exit, label %.lr.ph.i

_ZN6hermes16LowerAllocObject31estimateBestNumElemsToSerializeERKN4llvh11SmallVectorIPNS_23StoreNewOwnPropertyInstELj4EEEb.exit: ; preds = %bb.d, %bb.f
  %.024.lcssa.i = phi i32 [ %.226.ph.i, %bb.f ], [ %.02450.i, %bb.d ] ; 2 uses
  %.not72 = icmp eq i32 %.024.lcssa.i, 0
  br i1 %.not72, label %_ZN6hermes16LowerAllocObject31estimateBestNumElemsToSerializeERKN4llvh11SmallVectorIPNS_23StoreNewOwnPropertyInstELj4EEEb.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZN6hermes16LowerAllocObject31estimateBestNumElemsToSerializeERKN4llvh11SmallVectorIPNS_23StoreNewOwnPropertyInstELj4EEEb.exit
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !47
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !88
  store ptr %i.ae, ptr %4, align 8, !tbaa !92
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.ag, ptr %5, align 8, !tbaa !17
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 11 uses
  store i32 0, ptr %i.ah, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  store i32 4, ptr %i.ai, align 4, !tbaa !19
  %.not76 = icmp eq i32 %3, 0
  br i1 %.not76, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %.024.lcssa.i, i32 %3)
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 24
  %wide.trip.count = zext i32 %.sroa.speculated to i64
  br label %bb.j

._crit_edge:                                      ; preds = %bb.q, %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.am = load <2 x ptr>, ptr %i.al, align 8, !tbaa !93
  %i.an = shufflevector <2 x ptr> %i.am, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.an, ptr %i.ak, align 8, !tbaa !93
  call void @_ZN6hermes9IRBuilder17setInsertionPointEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull %1) #12
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.ao, ptr %6, align 8, !tbaa !17
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 0, ptr %i.ap, align 8, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 4, ptr %i.aq, align 4, !tbaa !19
  %i.ar = load i32, ptr %i.ah, align 8, !tbaa !18 ; 4 uses
  %.not.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i, label %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralES4_ELj4EEC2ERKS6_.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.as = zext i32 %i.ar to i64                   ; 2 uses
  %i.at = icmp ugt i32 %i.ar, 4
  br i1 %i.at, label %_ZSt4copyIPKSt4pairIPN6hermes7LiteralES3_EPS4_ET0_T_S9_S8_.exit35.i.i, label %_ZSt4copyIPKSt4pairIPN6hermes7LiteralES3_EPS4_ET0_T_S9_S8_.exit35.i.thread.i

_ZSt4copyIPKSt4pairIPN6hermes7LiteralES3_EPS4_ET0_T_S9_S8_.exit35.i.i: ; preds = %bb.h
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %6, ptr noundef nonnull %i.ao, i64 noundef %i.as, i64 noundef 16) #12
  %.pre.i.i = load i32, ptr %i.ah, align 8, !tbaa !18 ; 2 uses
  %.not.i.i.i42 = icmp eq i32 %.pre.i.i, 0
  br i1 %.not.i.i.i42, label %.sink.split.i.i, label %_ZSt4copyIPKSt4pairIPN6hermes7LiteralES3_EPS4_ET0_T_S9_S8_.exit35.i.i._ZSt4copyIPKSt4pairIPN6hermes7LiteralES3_EPS4_ET0_T_S9_S8_.exit35.i.thread.i_crit_edge

_ZSt4copyIPKSt4pairIPN6hermes7LiteralES3_EPS4_ET0_T_S9_S8_.exit35.i.i._ZSt4copyIPKSt4pairIPN6hermes7LiteralES3_EPS4_ET0_T_S9_S8_.exit35.i.thread.i_crit_edge: ; preds = %_ZSt4copyIPKSt4pairIPN6hermes7LiteralES3_EPS4_ET0_T_S9_S8_.exit35.i.i
  %.pre37.i.i = zext i32 %.pre.i.i to i64
  %.pre = load ptr, ptr %6, align 8, !tbaa !17
  br label %_ZSt4copyIPKSt4pairIPN6hermes7LiteralES3_EPS4_ET0_T_S9_S8_.exit35.i.thread.i

_ZSt4copyIPKSt4pairIPN6hermes7LiteralES3_EPS4_ET0_T_S9_S8_.exit35.i.thread.i: ; preds = %_ZSt4copyIPKSt4pairIPN6hermes7LiteralES3_EPS4_ET0_T_S9_S8_.exit35.i.i._ZSt4copyIPKSt4pairIPN6hermes7LiteralES3_EPS4_ET0_T_S9_S8_.exit35.i.thread.i_crit_edge, %bb.h
  %i.au = phi ptr [ %.pre, %_ZSt4copyIPKSt4pairIPN6hermes7LiteralES3_EPS4_ET0_T_S9_S8_.exit35.i.i._ZSt4copyIPKSt4pairIPN6hermes7LiteralES3_EPS4_ET0_T_S9_S8_.exit35.i.thread.i_crit_edge ], [ %i.ao, %bb.h ]
  %.pre-phi.i8.i = phi i64 [ %.pre37.i.i, %_ZSt4copyIPKSt4pairIPN6hermes7LiteralES3_EPS4_ET0_T_S9_S8_.exit35.i.i._ZSt4copyIPKSt4pairIPN6hermes7LiteralES3_EPS4_ET0_T_S9_S8_.exit35.i.thread.i_crit_edge ], [ %i.as, %bb.h ]
  %i.av = load ptr, ptr %5, align 8, !tbaa !17
  %gepdiff.i.i = shl nuw nsw i64 %.pre-phi.i8.i, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr align 8 %i.av, i64 %gepdiff.i.i, i1 false)
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %_ZSt4copyIPKSt4pairIPN6hermes7LiteralES3_EPS4_ET0_T_S9_S8_.exit35.i.thread.i, %_ZSt4copyIPKSt4pairIPN6hermes7LiteralES3_EPS4_ET0_T_S9_S8_.exit35.i.i
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !18
  br label %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralES4_ELj4EEC2ERKS6_.exit

_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralES4_ELj4EEC2ERKS6_.exit: ; preds = %._crit_edge, %.sink.split.i.i
  %i.aw = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 0) #12
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !236 ; 3 uses
  %7 = fcmp ule double %i.ay, f0x41EFFFFFFFE00000
  %8 = fcmp oge double %i.ay, 0.000000e+00
  call void @llvm.assume(i1 %7)
  call void @llvm.assume(i1 %8)
  %i.az = fptoui double %i.ay to i32
  %i.ba = call noundef ptr @_ZN6hermes9IRBuilder34createHBCAllocObjectFromBufferInstEN4llvh11SmallVectorISt4pairIPNS_7LiteralES5_ELj4EEEj(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull %6, i32 noundef %i.az) #12 ; 4 uses
  %i.bb = load ptr, ptr %6, align 8, !tbaa !17    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.ao
  br i1 %i.bc, label %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralES4_ELj4EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralES4_ELj4EEC2ERKS6_.exit
  call void @free(ptr noundef %i.bb) #12
  br label %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralES4_ELj4EED2Ev.exit

_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralES4_ELj4EED2Ev.exit: ; preds = %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralES4_ELj4EEC2ERKS6_.exit, %bb.i
  %i.bd = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 1) #12
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !32
  %i.bf = icmp eq i8 %i.be, 121
  br i1 %i.bf, label %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralES4_ELj4EED2Ev.exit._crit_edge, label %bb.r

bb.j:                                             ; preds = %.lr.ph, %bb.q
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.q ] ; 2 uses
  %i.bg = load ptr, ptr %2, align 8, !tbaa !17
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !137 ; 10 uses
  %i.bj = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.bi, i32 noundef 2) #12 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !32
  %.not = icmp eq i8 %i.bk, 114
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bl = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.bi, i32 noundef 2) #12
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %storemerge = phi ptr [ %i.bl, %bb.k ], [ %i.bj, %bb.j ] ; 3 uses
  %i.bm = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.bi, i32 noundef 0) #12 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !32
  %.not74 = icmp eq i8 %i.bn, 27
  %i.bo = getelementptr inbounds i8, ptr %i.bm, i64 -16 ; 2 uses
  br i1 %.not74, label %_ZN4llvh16dyn_cast_or_nullIN6hermes16HBCLoadConstInstENS1_5ValueEEENS_10cast_rettyIT_PT0_E8ret_typeES7_.exit.i, label %bb.n

_ZN4llvh16dyn_cast_or_nullIN6hermes16HBCLoadConstInstENS1_5ValueEEENS_10cast_rettyIT_PT0_E8ret_typeES7_.exit.i: ; preds = %bb.l
  %i.bp = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.bo, i32 noundef 0) #12
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !32
  switch i8 %i.bq, label %bb.n [
    i8 113, label %_ZL12canSerializePN6hermes5ValueE.exit
    i8 117, label %_ZL12canSerializePN6hermes5ValueE.exit
    i8 114, label %_ZL12canSerializePN6hermes5ValueE.exit
    i8 116, label %_ZL12canSerializePN6hermes5ValueE.exit
  ]

_ZL12canSerializePN6hermes5ValueE.exit:           ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes16HBCLoadConstInstENS1_5ValueEEENS_10cast_rettyIT_PT0_E8ret_typeES7_.exit.i, %_ZN4llvh16dyn_cast_or_nullIN6hermes16HBCLoadConstInstENS1_5ValueEEENS_10cast_rettyIT_PT0_E8ret_typeES7_.exit.i, %_ZN4llvh16dyn_cast_or_nullIN6hermes16HBCLoadConstInstENS1_5ValueEEENS_10cast_rettyIT_PT0_E8ret_typeES7_.exit.i, %_ZN4llvh16dyn_cast_or_nullIN6hermes16HBCLoadConstInstENS1_5ValueEEENS_10cast_rettyIT_PT0_E8ret_typeES7_.exit.i
  %i.br = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.bo, i32 noundef 0) #12
  %i.bs = load i32, ptr %i.ah, align 8, !tbaa !18 ; 2 uses
  %i.bt = load i32, ptr %i.ai, align 4, !tbaa !19
  %.not.i46 = icmp ult i32 %i.bs, %i.bt
  br i1 %.not.i46, label %_ZN4llvh23SmallVectorTemplateBaseISt4pairIPN6hermes7LiteralES4_ELb1EE9push_backERKS5_.exit, label %bb.m, !prof !33

bb.m:                                             ; preds = %_ZL12canSerializePN6hermes5ValueE.exit
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %i.ag, i64 noundef 0, i64 noundef 16) #12
  %.pre.i = load i32, ptr %i.ah, align 8, !tbaa !18
  br label %_ZN4llvh23SmallVectorTemplateBaseISt4pairIPN6hermes7LiteralES4_ELb1EE9push_backERKS5_.exit

_ZN4llvh23SmallVectorTemplateBaseISt4pairIPN6hermes7LiteralES4_ELb1EE9push_backERKS5_.exit: ; preds = %_ZL12canSerializePN6hermes5ValueE.exit, %bb.m
  %i.bu = phi i32 [ %.pre.i, %bb.m ], [ %i.bs, %_ZL12canSerializePN6hermes5ValueE.exit ]
  %i.bv = load ptr, ptr %5, align 8, !tbaa !17
  %i.bw = zext i32 %i.bu to i64
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %i.bw ; 2 uses
  store ptr %storemerge, ptr %i.bx, align 1
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr %i.br, ptr %.sroa.459.0..sroa_idx, align 1
  %i.by = load i32, ptr %i.ah, align 8, !tbaa !18
  %i.bz = add i32 %i.by, 1
  store i32 %i.bz, ptr %i.ah, align 8, !tbaa !18
  br label %.sink.split

bb.n:                                             ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes16HBCLoadConstInstENS1_5ValueEEENS_10cast_rettyIT_PT0_E8ret_typeES7_.exit.i, %bb.l
  %i.ca = load i8, ptr %storemerge, align 8, !tbaa !32
  %i.cb = icmp eq i8 %i.ca, 116
  br i1 %i.cb, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.cc = call noundef ptr @_ZN6hermes9IRBuilder14getLiteralNullEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #12
  %i.cd = load i32, ptr %i.ah, align 8, !tbaa !18 ; 2 uses
  %i.ce = load i32, ptr %i.ai, align 4, !tbaa !19
  %.not.i47 = icmp ult i32 %i.cd, %i.ce
  br i1 %.not.i47, label %_ZN4llvh23SmallVectorTemplateBaseISt4pairIPN6hermes7LiteralES4_ELb1EE9push_backERKS5_.exit49, label %bb.p, !prof !33

bb.p:                                             ; preds = %bb.o
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %i.ag, i64 noundef 0, i64 noundef 16) #12
  %.pre.i48 = load i32, ptr %i.ah, align 8, !tbaa !18
  br label %_ZN4llvh23SmallVectorTemplateBaseISt4pairIPN6hermes7LiteralES4_ELb1EE9push_backERKS5_.exit49

_ZN4llvh23SmallVectorTemplateBaseISt4pairIPN6hermes7LiteralES4_ELb1EE9push_backERKS5_.exit49: ; preds = %bb.o, %bb.p
  %i.cf = phi i32 [ %.pre.i48, %bb.p ], [ %i.cd, %bb.o ]
  %i.cg = load ptr, ptr %5, align 8, !tbaa !17
  %i.ch = zext i32 %i.cf to i64
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.cg, i64 %i.ch ; 2 uses
  store ptr %storemerge, ptr %i.ci, align 1
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr %i.cc, ptr %.sroa.456.0..sroa_idx, align 1
  %i.cj = load i32, ptr %i.ah, align 8, !tbaa !18
  %i.ck = add i32 %i.cj, 1
  store i32 %i.ck, ptr %i.ah, align 8, !tbaa !18
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bi, i64 112
  %i.cm = load <2 x ptr>, ptr %i.cl, align 8, !tbaa !93
  %i.cn = shufflevector <2 x ptr> %i.cm, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.cn, ptr %i.aj, align 8, !tbaa !93
  call void @_ZN6hermes9IRBuilder17setInsertionPointEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull %i.bi) #12
  %i.co = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.bi, i32 noundef 0) #12
  %i.cp = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.bi, i32 noundef 1) #12
  %i.cq = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.bi, i32 noundef 2) #12
  %i.cr = call noundef ptr @_ZN6hermes9IRBuilder23createStorePropertyInstEPNS_5ValueES2_S2_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %i.co, ptr noundef %i.cp, ptr noundef %i.cq) #12 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.ct = icmp eq ptr %i.cr, null
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %spec.select1 = select i1 %i.ct, ptr null, ptr %i.cu
  call void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.cs, ptr noundef %spec.select1) #12
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN4llvh23SmallVectorTemplateBaseISt4pairIPN6hermes7LiteralES4_ELb1EE9push_backERKS5_.exit, %_ZN4llvh23SmallVectorTemplateBaseISt4pairIPN6hermes7LiteralES4_ELb1EE9push_backERKS5_.exit49
  call void @_ZN6hermes11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(132) %i.bi) #12
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %bb.n
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.j, !llvm.loop !232

bb.r:                                             ; preds = %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralES4_ELj4EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.cv = icmp eq ptr %i.ba, null
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %spec.select2 = select i1 %i.cv, ptr null, ptr %i.cw
  store ptr %spec.select2, ptr %i.a, align 8, !tbaa !151
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cy = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 1) #12
  store ptr %i.cy, ptr %i.cx, align 8, !tbaa !151
  %i.cz = call noundef ptr @_ZN6hermes9IRBuilder21createCallBuiltinInstENS_13BuiltinMethod4EnumEN4llvh8ArrayRefIPNS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 noundef zeroext 37, ptr nonnull %i.a, i64 2) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralES4_ELj4EED2Ev.exit._crit_edge

_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralES4_ELj4EED2Ev.exit._crit_edge: ; preds = %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralES4_ELj4EED2Ev.exit, %bb.r
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.db = icmp eq ptr %i.ba, null
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %spec.select3 = select i1 %i.db, ptr null, ptr %i.dc
  call void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.da, ptr noundef %spec.select3) #12
  call void @_ZN6hermes11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(132) %1) #12
  %i.dd = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.ag
  br i1 %i.de, label %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralES4_ELj4EED2Ev.exit52, label %bb.s

bb.s:                                             ; preds = %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralES4_ELj4EED2Ev.exit._crit_edge
  call void @free(ptr noundef %i.dd) #12
  br label %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralES4_ELj4EED2Ev.exit52

_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralES4_ELj4EED2Ev.exit52: ; preds = %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralES4_ELj4EED2Ev.exit._crit_edge, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %_ZN6hermes16LowerAllocObject31estimateBestNumElemsToSerializeERKN4llvh11SmallVectorIPNS_23StoreNewOwnPropertyInstELj4EEEb.exit.thread

_ZN6hermes16LowerAllocObject31estimateBestNumElemsToSerializeERKN4llvh11SmallVectorIPNS_23StoreNewOwnPropertyInstELj4EEEb.exit.thread: ; preds = %bb.a, %_ZN6hermes16LowerAllocObject31estimateBestNumElemsToSerializeERKN4llvh11SmallVectorIPNS_23StoreNewOwnPropertyInstELj4EEEb.exit, %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralES4_ELj4EED2Ev.exit52
  %i.df = phi i1 [ true, %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralES4_ELj4EED2Ev.exit52 ], [ false, %_ZN6hermes16LowerAllocObject31estimateBestNumElemsToSerializeERKN4llvh11SmallVectorIPNS_23StoreNewOwnPropertyInstELj4EEEb.exit ], [ false, %bb.a ]
  ret i1 %i.df
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN6hermes16LowerAllocObject31estimateBestNumElemsToSerializeERKN4llvh11SmallVectorIPNS_23StoreNewOwnPropertyInstELj4EEEb(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !17     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %i.d = zext i32 %i.c to i64
  %.idx = shl nuw nsw i64 %i.d, 3
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  %.not47 = icmp eq i32 %i.c, 0
  br i1 %.not47, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %spec.select = select i1 %2, i32 -12, i32 -8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %.02153 = phi ptr [ %i.v, %bb.f ], [ %i.a, %.lr.ph.preheader ] ; 2 uses
  %.02252 = phi i32 [ %i.g, %bb.f ], [ 0, %.lr.ph.preheader ]
  %.02351 = phi i32 [ %.2.ph, %bb.f ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %.02450 = phi i32 [ %.226.ph, %bb.f ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %.02749 = phi i32 [ %.229.ph, %bb.f ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %.13148 = phi i32 [ %.333.ph, %bb.f ], [ %spec.select, %.lr.ph.preheader ] ; 3 uses
  %i.f = load ptr, ptr %.02153, align 8, !tbaa !137 ; 2 uses
  %i.g = add nuw i32 %.02252, 1                   ; 2 uses
  %i.h = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.f, i32 noundef 0) #12 ; 3 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = load i8, ptr %i.h, align 8, !tbaa !32
  %i.j = icmp eq i8 %i.i, 27
  br i1 %i.j, label %_ZN4llvh16dyn_cast_or_nullIN6hermes16HBCLoadConstInstENS1_5ValueEEENS_10cast_rettyIT_PT0_E8ret_typeES7_.exit.i, label %bb.c

_ZN4llvh16dyn_cast_or_nullIN6hermes16HBCLoadConstInstENS1_5ValueEEENS_10cast_rettyIT_PT0_E8ret_typeES7_.exit.i: ; preds = %bb.b
  %i.k = getelementptr inbounds i8, ptr %i.h, i64 -16
end_hunk_0
