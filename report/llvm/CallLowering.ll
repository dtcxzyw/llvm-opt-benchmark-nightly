Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CallLowering?download=true
inline.NumInlined: 2502
inline.NumDeleted: 930
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK4llvm12CallLowering26insertSRetIncomingArgumentERKNS_8FunctionERNS_15SmallVectorImplINS0_7ArgInfoEEERNS_8RegisterERNS_19MachineRegisterInfoERKNS_10DataLayoutE:bb.a
  store i64 0, ptr %7, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i8 0, ptr %.sroa.2.0..sroa_idx, align 8
  call void @_ZN4llvm15ComputeValueVTsERKNS_14TargetLoweringERKNS_10DataLayoutEPNS_4TypeERNS_15SmallVectorImplINS_3EVTEEEPSA_PNS8_INS_8TypeSizeEEESD_(ptr noundef nonnull align 8 dereferenceable(518435) %i.u, ptr noundef nonnull align 8 dereferenceable(912) %5, ptr noundef %i.p, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef null, ptr noundef null, ptr noundef nonnull byval(%"class.llvm::TypeSize") align 8 %7) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.v = load ptr, ptr %6, align 8, !tbaa !84
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !267, !nonnull !216, !align !217
  %i.x = call noundef ptr @_ZNK4llvm3EVT13getTypeForEVTERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.w) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  call void @_ZN4llvm12CallLowering7ArgInfoC2ENS_8ArrayRefINS_8RegisterEEEPNS_4TypeEjNS2_INS_3ISD10ArgFlagsTyEEEPKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(156) %8, ptr nonnull %3, i64 1, ptr noundef %i.x, i32 noundef -1, ptr noundef nonnull byval(%"class.llvm::ArrayRef.264") align 8 %9, ptr noundef null)
  call void @_ZNK4llvm12CallLowering11setArgFlagsINS_8FunctionEEEvRNS0_7ArgInfoEjRKNS_10DataLayoutERKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(156) %8, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(912) %5, ptr noundef nonnull align 8 dereferenceable(140) %1)
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !84   ; 2 uses
  %i.aa = load i64, ptr %i.z, align 4
  %i.ab = or i64 %i.aa, 16
  store i64 %i.ab, ptr %i.z, align 4
  %i.ac = load ptr, ptr %2, align 8, !tbaa !84
  %i.ad = call noundef ptr @_ZN4llvm15SmallVectorImplINS_12CallLowering7ArgInfoEE15insert_one_implIRKS2_EEPS2_S7_OT_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.ac, ptr noundef nonnull align 8 dereferenceable(156) %8) ; 0 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 120
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !84 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 136
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @free(ptr noundef %i.af) #17
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !84 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 104
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit.i
  call void @free(ptr noundef %i.aj) #17
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit.i: ; preds = %bb.c, %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit.i
  %i.am = load ptr, ptr %i.y, align 8, !tbaa !84  ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZN4llvm12CallLowering7ArgInfoD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit.i
  call void @free(ptr noundef %i.am) #17
  br label %_ZN4llvm12CallLowering7ArgInfoD2Ev.exit

_ZN4llvm12CallLowering7ArgInfoD2Ev.exit:          ; preds = %_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %i.ap = load ptr, ptr %6, align 8, !tbaa !84    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.q
  br i1 %i.aq, label %_ZN4llvm11SmallVectorINS_3EVTELj1EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12CallLowering7ArgInfoD2Ev.exit
  call void @free(ptr noundef %i.ap) #17
  br label %_ZN4llvm11SmallVectorINS_3EVTELj1EED2Ev.exit

_ZN4llvm11SmallVectorINS_3EVTELj1EED2Ev.exit:     ; preds = %_ZN4llvm12CallLowering7ArgInfoD2Ev.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  ret void
}

declare void @_ZN4llvm15ComputeValueVTsERKNS_14TargetLoweringERKNS_10DataLayoutEPNS_4TypeERNS_15SmallVectorImplINS_3EVTEEEPSA_PNS8_INS_8TypeSizeEEESD_(ptr noundef nonnull align 8 dereferenceable(518435), ptr noundef nonnull align 8 dereferenceable(912), ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, ptr noundef byval(%"class.llvm::TypeSize") align 8) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm12CallLowering11checkReturnERNS_7CCStateERNS_15SmallVectorImplINS0_11BaseArgInfoEEEPFbjNS_3MVTES7_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeES2_E(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(420) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !85   ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %i.b to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !84
  %i.e = getelementptr inbounds nuw [88 x i8], ptr %i.d, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !83
  %i.g = tail call i16 @_ZN4llvm3MVT5getVTEPNS_4TypeEb(ptr noundef %i.f, i1 noundef zeroext false) #17 ; 2 uses
  %i.h = load ptr, ptr %2, align 8, !tbaa !84
  %i.i = getelementptr inbounds nuw [88 x i8], ptr %i.h, i64 %indvars.iv ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !84   ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.k, align 4, !tbaa !236
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 4
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !83
  %i.m = trunc nuw i64 %indvars.iv to i32
  %i.n = tail call noundef zeroext i1 %3(i32 noundef %i.m, i16 %i.g, i16 %i.g, i32 noundef 0, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef %i.l, ptr noundef nonnull align 8 dereferenceable(420) %1) #17 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %or.cond = select i1 %i.n, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !458

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.lcssa.ph = xor i1 %i.n, true
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ %.lcssa.ph, %._crit_edge.loopexit ]
  ret i1 %.lcssa
}

declare i16 @_ZN4llvm3MVT5getVTEPNS_4TypeEb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm12CallLowering26checkReturnTypeForCallConvERNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.259", align 8 ; 10 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !215, !nonnull !216, !align !217 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !311
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !273
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.h = load i16, ptr %i.g, align 2, !tbaa !219
  %i.i = lshr i16 %i.h, 4
  %i.j = and i16 %i.i, 1023
  %i.k = zext nneg i16 %i.j to i32                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !84
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.m, align 8, !tbaa !85
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 4, ptr %i.n, align 4, !tbaa !86
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %.sroa.0.0.copyload.i = load ptr, ptr %i.o, align 8, !tbaa !16
  %i.p = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %1) #17
  call void @_ZNK4llvm12CallLowering13getReturnInfoEjPNS_4TypeENS_13AttributeListERNS_15SmallVectorImplINS0_11BaseArgInfoEEERKNS_10DataLayoutE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.k, ptr noundef %i.f, ptr %.sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(912) %i.p)
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i32, ptr %i.r, align 8
  %i.t = icmp ugt i32 %i.s, 255
  %i.u = load ptr, ptr %0, align 8, !tbaa !222
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1, i32 noundef %i.k, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext %i.t) #17
  %i.y = load ptr, ptr %2, align 8, !tbaa !84     ; 3 uses
  %i.z = load i32, ptr %i.m, align 8, !tbaa !85   ; 2 uses
  %.not4.i.i = icmp eq i32 %i.z, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_12CallLowering11BaseArgInfoELb0EE13destroy_rangeEPS2_S4_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %i.aa = zext i32 %i.z to i64
  %.idx.i = mul nuw nsw i64 %i.aa, 88
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm12CallLowering11BaseArgInfoD2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.ac, %_ZN4llvm12CallLowering11BaseArgInfoD2Ev.exit.i.i ], [ %i.ab, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.ac = getelementptr inbounds i8, ptr %.05.i.i, i64 -88 ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %.05.i.i, i64 -80
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !84 ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %.05.i.i, i64 -64
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZN4llvm12CallLowering11BaseArgInfoD2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  call void @free(ptr noundef %i.ae) #17
  br label %_ZN4llvm12CallLowering11BaseArgInfoD2Ev.exit.i.i

_ZN4llvm12CallLowering11BaseArgInfoD2Ev.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %i.y, %i.ac
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_12CallLowering11BaseArgInfoELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !0

_ZN4llvm23SmallVectorTemplateBaseINS_12CallLowering11BaseArgInfoELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i: ; preds = %_ZN4llvm12CallLowering11BaseArgInfoD2Ev.exit.i.i
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !84
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_12CallLowering11BaseArgInfoELb0EE13destroy_rangeEPS2_S4_.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_12CallLowering11BaseArgInfoELb0EE13destroy_rangeEPS2_S4_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_12CallLowering11BaseArgInfoELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i, %bb.a
  %i.ah = phi ptr [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseINS_12CallLowering11BaseArgInfoELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i ], [ %i.y, %bb.a ] ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.l
  br i1 %i.ai, label %_ZN4llvm11SmallVectorINS_12CallLowering11BaseArgInfoELj4EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_12CallLowering11BaseArgInfoELb0EE13destroy_rangeEPS2_S4_.exit.i
  call void @free(ptr noundef %i.ah) #17
  br label %_ZN4llvm11SmallVectorINS_12CallLowering11BaseArgInfoELj4EED2Ev.exit

_ZN4llvm11SmallVectorINS_12CallLowering11BaseArgInfoELj4EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_12CallLowering11BaseArgInfoELb0EE13destroy_rangeEPS2_S4_.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret i1 %i.x
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm12CallLowering20parametersInCSRMatchERKNS_19MachineRegisterInfoEPKjRKNS_15SmallVectorImplINS_11CCValAssignEEERKNS6_INS0_7ArgInfoEEE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(520) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %4) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !85   ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %i.d = phi i32 [ %i.af, %bb.f ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = phi i64 [ %indvars.iv.next, %bb.f ], [ 0, %bb.a ] ; 3 uses
  %i.f = load ptr, ptr %3, align 8, !tbaa !84
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.e ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i8, ptr %i.h, align 8, !tbaa !345
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %_ZNK4llvm11CCValAssign9getLocRegEv.exit, label %bb.f

_ZNK4llvm11CCValAssign9getLocRegEv.exit:          ; preds = %.lr.ph
  %.sroa.0.0.copyload.i = load i32, ptr %i.g, align 8, !tbaa !234 ; 3 uses
  %i.k = lshr i32 %.sroa.0.0.copyload.i, 5
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !234
  %i.o = and i32 %.sroa.0.0.copyload.i, 31
  %i.p = shl nuw i32 1, %i.o
  %i.q = and i32 %i.p, %i.n
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %_ZNK4llvm11CCValAssign9getLocRegEv.exit
  %i.r = load ptr, ptr %4, align 8, !tbaa !84
  %i.s = getelementptr inbounds nuw [160 x i8], ptr %i.r, i64 %i.e ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  %i.u = load i32, ptr %i.t, align 8, !tbaa !85
  %i.v = icmp ugt i32 %i.u, 1
  br i1 %i.v, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 88
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !84
  %.sroa.0.0.copyload = load i32, ptr %i.x, align 4, !tbaa !234
  %i.y = tail call noundef ptr @_ZN4llvm20getDefIgnoringCopiesENS_8RegisterERKNS_19MachineRegisterInfoE(i32 %.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(520) %1) #17 ; 3 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 52
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !460
  %.not28 = icmp eq i32 %i.aa, 20
  br i1 %.not28, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !253
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 36
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !236
  %.not32 = icmp eq i32 %i.ae, %.sroa.0.0.copyload.i
  br i1 %.not32, label %._crit_edge, label %.thread

._crit_edge:                                      ; preds = %bb.e
  %.pre = load i32, ptr %i.a, align 8, !tbaa !85
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %.lr.ph, %_ZNK4llvm11CCValAssign9getLocRegEv.exit
  %i.af = phi i32 [ %.pre, %._crit_edge ], [ %i.d, %.lr.ph ], [ %i.d, %_ZNK4llvm11CCValAssign9getLocRegEv.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %i.e, 1      ; 2 uses
  %i.ag = zext i32 %i.af to i64
  %.not42 = icmp samesign ult i64 %indvars.iv.next, %i.ag
  br i1 %.not42, label %.lr.ph, label %.thread, !llvm.loop !459

.thread:                                          ; preds = %bb.f, %bb.b, %bb.c, %bb.d, %bb.e, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ true, %bb.f ]
  ret i1 %.lcssa
}

declare noundef ptr @_ZN4llvm20getDefIgnoringCopiesENS_8RegisterERKNS_19MachineRegisterInfoE(i32, ptr noundef nonnull align 8 dereferenceable(520)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm12CallLowering17resultsCompatibleERNS0_16CallLoweringInfoERNS_15MachineFunctionERNS_15SmallVectorImplINS0_7ArgInfoEEERNS0_13ValueAssignerESA_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(5424) %1, ptr noundef nonnull align 8 dereferenceable(1065) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(33) %4, ptr noundef nonnull align 8 dereferenceable(33) %5) local_unnamed_addr #1 align 2 {
bb.a:
  %6 = alloca %"class.llvm::SmallVector.299", align 8 ; 9 uses
  %7 = alloca %"class.llvm::CCState", align 8     ; 12 uses
  %8 = alloca %"class.llvm::SmallVector.299", align 8 ; 9 uses
  %9 = alloca %"class.llvm::CCState", align 8     ; 12 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !215, !nonnull !216, !align !217 ; 4 uses
  %i.b = load i32, ptr %1, align 8, !tbaa !82     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.d = load i16, ptr %i.c, align 2, !tbaa !219
  %i.e = lshr i16 %i.d, 4
  %i.f = and i16 %i.e, 1023
  %i.g = zext nneg i16 %i.f to i32                ; 2 uses
  %i.h = icmp eq i32 %i.b, %i.g
  br i1 %i.h, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.i, ptr %6, align 8, !tbaa !84
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 0, ptr %i.j, align 8, !tbaa !85
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 16, ptr %i.k, align 4, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 5387
  %i.m = load i8, ptr %i.l, align 1, !tbaa !262, !range !223, !noundef !216
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %i.a) #17
  call void @_ZN4llvm7CCStateC1EjbRNS_15MachineFunctionERNS_15SmallVectorImplINS_11CCValAssignEEERNS_11LLVMContextEb(ptr noundef nonnull align 8 dereferenceable(420) %7, i32 noundef %i.b, i1 noundef zeroext %i.n, ptr noundef nonnull align 8 dereferenceable(1065) %2, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.o, i1 noundef zeroext false) #17
  %i.p = call noundef zeroext i1 @_ZNK4llvm12CallLowering20determineAssignmentsERNS0_13ValueAssignerERNS_15SmallVectorImplINS0_7ArgInfoEEERNS_7CCStateE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(33) %4, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(420) %7)
  br i1 %i.p, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.q, ptr %8, align 8, !tbaa !84
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i32 0, ptr %i.r, align 8, !tbaa !85
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 16, ptr %i.s, align 4, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !32
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 8
  %i.x = icmp ugt i32 %i.w, 255
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %i.a) #17
  call void @_ZN4llvm7CCStateC1EjbRNS_15MachineFunctionERNS_15SmallVectorImplINS_11CCValAssignEEERNS_11LLVMContextEb(ptr noundef nonnull align 8 dereferenceable(420) %9, i32 noundef %i.g, i1 noundef zeroext %i.x, ptr noundef nonnull align 8 dereferenceable(1065) %2, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.y, i1 noundef zeroext false) #17
  %i.z = call noundef zeroext i1 @_ZNK4llvm12CallLowering20determineAssignmentsERNS0_13ValueAssignerERNS_15SmallVectorImplINS0_7ArgInfoEEERNS_7CCStateE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(33) %5, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(420) %9)
  br i1 %i.z, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.aa = load i32, ptr %i.j, align 8, !tbaa !85  ; 3 uses
  %i.ab = load i32, ptr %i.r, align 8, !tbaa !85
  %.not = icmp eq i32 %i.aa, %i.ab
  br i1 %.not, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.d
  %.not3956 = icmp eq i32 %i.aa, 0
  br i1 %.not3956, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ac = load ptr, ptr %6, align 8, !tbaa !84
  %i.ad = load ptr, ptr %8, align 8, !tbaa !84
  %wide.trip.count = zext i32 %i.aa to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %select.unfold
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %select.unfold ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %indvars.iv ; 3 uses
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.ad, i64 %indvars.iv ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !345 ; 2 uses
  %i.ai = icmp eq i8 %i.ah, 0                     ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !345 ; 2 uses
  %i.al = icmp eq i8 %i.ak, 0                     ; 2 uses
  %i.am = xor i1 %i.ai, %i.al
  br i1 %i.am, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %i.ai, label %_ZNK4llvm11CCValAssign9getLocRegEv.exit, label %bb.h

_ZNK4llvm11CCValAssign9getLocRegEv.exit:          ; preds = %bb.f
  br i1 %i.al, label %_ZNK4llvm11CCValAssign9getLocRegEv.exit43, label %bb.g

bb.g:                                             ; preds = %_ZNK4llvm11CCValAssign9getLocRegEv.exit
  call void @abort() #18
  unreachable

_ZNK4llvm11CCValAssign9getLocRegEv.exit43:        ; preds = %_ZNK4llvm11CCValAssign9getLocRegEv.exit
  %.sroa.0.0.copyload.i = load i32, ptr %i.ae, align 8, !tbaa !234
  %.sroa.0.0.copyload.i42 = load i32, ptr %i.af, align 8, !tbaa !234
  %.not55 = icmp eq i32 %.sroa.0.0.copyload.i, %.sroa.0.0.copyload.i42
  br i1 %.not55, label %select.unfold, label %.thread

bb.h:                                             ; preds = %bb.f
  %.not.i.i.i44 = icmp eq i8 %i.ah, 1
  br i1 %.not.i.i.i44, label %_ZNK4llvm11CCValAssign15getLocMemOffsetEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @abort() #18
  unreachable

_ZNK4llvm11CCValAssign15getLocMemOffsetEv.exit:   ; preds = %bb.h
  %.not.i.i.i45 = icmp eq i8 %i.ak, 1
  br i1 %.not.i.i.i45, label %_ZNK4llvm11CCValAssign15getLocMemOffsetEv.exit46, label %bb.j

bb.j:                                             ; preds = %_ZNK4llvm11CCValAssign15getLocMemOffsetEv.exit
  call void @abort() #18
  unreachable

_ZNK4llvm11CCValAssign15getLocMemOffsetEv.exit46: ; preds = %_ZNK4llvm11CCValAssign15getLocMemOffsetEv.exit
  %i.an = load i64, ptr %i.ae, align 8, !tbaa !229
  %i.ao = load i64, ptr %i.af, align 8, !tbaa !229
  %.not38 = icmp eq i64 %i.an, %i.ao
  br i1 %.not38, label %select.unfold, label %.thread

select.unfold:                                    ; preds = %_ZNK4llvm11CCValAssign15getLocMemOffsetEv.exit46, %_ZNK4llvm11CCValAssign9getLocRegEv.exit43
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %bb.e, !llvm.loop !461

.thread:                                          ; preds = %_ZNK4llvm11CCValAssign9getLocRegEv.exit43, %bb.e, %_ZNK4llvm11CCValAssign15getLocMemOffsetEv.exit46, %select.unfold, %.preheader, %bb.d, %bb.c
  %.3 = phi i1 [ false, %bb.c ], [ false, %bb.d ], [ true, %.preheader ], [ false, %_ZNK4llvm11CCValAssign15getLocMemOffsetEv.exit46 ], [ false, %bb.e ], [ false, %_ZNK4llvm11CCValAssign9getLocRegEv.exit43 ], [ true, %select.unfold ]
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 368
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !84 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 384
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZN4llvm11SmallVectorINS_7CCState9ByValInfoELj4EED2Ev.exit.i, label %bb.k

bb.k:                                             ; preds = %.thread
  call void @free(ptr noundef %i.aq) #17
  br label %_ZN4llvm11SmallVectorINS_7CCState9ByValInfoELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_7CCState9ByValInfoELj4EED2Ev.exit.i: ; preds = %bb.k, %.thread
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 288
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !84 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 304
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZN4llvm11SmallVectorINS_3ISD10ArgFlagsTyELj4EED2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm11SmallVectorINS_7CCState9ByValInfoELj4EED2Ev.exit.i
  call void @free(ptr noundef %i.au) #17
  br label %_ZN4llvm11SmallVectorINS_3ISD10ArgFlagsTyELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_3ISD10ArgFlagsTyELj4EED2Ev.exit.i: ; preds = %bb.l, %_ZN4llvm11SmallVectorINS_7CCState9ByValInfoELj4EED2Ev.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 144
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !84 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 160
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZN4llvm11SmallVectorINS_11CCValAssignELj4EED2Ev.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm11SmallVectorINS_3ISD10ArgFlagsTyELj4EED2Ev.exit.i
  call void @free(ptr noundef %i.ay) #17
  br label %_ZN4llvm11SmallVectorINS_11CCValAssignELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_11CCValAssignELj4EED2Ev.exit.i: ; preds = %bb.m, %_ZN4llvm11SmallVectorINS_3ISD10ArgFlagsTyELj4EED2Ev.exit.i
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !84 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZN4llvm7CCStateD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm11SmallVectorINS_11CCValAssignELj4EED2Ev.exit.i
  call void @free(ptr noundef %i.bc) #17
  br label %_ZN4llvm7CCStateD2Ev.exit

_ZN4llvm7CCStateD2Ev.exit:                        ; preds = %_ZN4llvm11SmallVectorINS_11CCValAssignELj4EED2Ev.exit.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %i.bf = load ptr, ptr %8, align 8, !tbaa !84    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.q
  br i1 %i.bg, label %_ZN4llvm11SmallVectorINS_11CCValAssignELj16EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN4llvm7CCStateD2Ev.exit
  call void @free(ptr noundef %i.bf) #17
  br label %_ZN4llvm11SmallVectorINS_11CCValAssignELj16EED2Ev.exit

_ZN4llvm11SmallVectorINS_11CCValAssignELj16EED2Ev.exit: ; preds = %_ZN4llvm7CCStateD2Ev.exit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.p

bb.p:                                             ; preds = %bb.b, %_ZN4llvm11SmallVectorINS_11CCValAssignELj16EED2Ev.exit
  %.4 = phi i1 [ %.3, %_ZN4llvm11SmallVectorINS_11CCValAssignELj16EED2Ev.exit ], [ false, %bb.b ]
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 368
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !84 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 384
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZN4llvm11SmallVectorINS_7CCState9ByValInfoELj4EED2Ev.exit.i47, label %bb.q
end_hunk_0
