Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ARMISelLowering?download=true
inline.NumInlined: 20230
inline.NumDeleted: 4242
loop-unroll.NumCompletelyUnrolled: 128
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 150
begin_hunk_0_@_ZL29PerformVECTOR_REG_CASTCombinePN4llvm6SDNodeERNS_12SelectionDAGEPKNS_12ARMSubtargetE:bb.a
  store i32 %i.j, ptr %i.h, align 8, !tbaa !766
  %i.k = trunc nuw i8 %.553.val to i1
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %.sroa.05.0.copyload, ptr %4, align 8, !tbaa !374
  %.sroa.11.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x i32> %i.e, ptr %.sroa.11.0..sroa_idx13, align 8
  %i.l = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 248, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %4) #38 ; 2 uses
  %.fca.0.extract17 = extractvalue { ptr, i32 } %i.l, 0
  %.fca.1.extract18 = extractvalue { ptr, i32 } %i.l, 1
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !352
  %i.o = zext i32 %.sroa.11.0.copyload to i64
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.o ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.p, align 8, !tbaa !58
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !353
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i
  %i.q = icmp eq ptr %.sroa.21.0.copyload.i.i, %.sroa.21.0.copyload.i
  %.not4.i = select i1 %.not.i.i, i1 %i.q, i1 false
  br i1 %.not4.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !355  ; 2 uses
  %i.t = add i32 %i.s, -53
  %spec.select.i.i = icmp ult i32 %i.t, 2
  br i1 %spec.select.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.u = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i) #38 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  %.fca.0.extract7 = extractvalue { ptr, i32 } %i.u, 0
  %.fca.1.extract8 = extractvalue { ptr, i32 } %i.u, 1
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.v = icmp eq i32 %i.s, 633
  br i1 %i.v, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !696  ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !602  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !737 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !352
  %i.ad = zext i32 %i.aa to i64
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.ad ; 2 uses
  %.sroa.0.0.copyload.i.i35 = load i16, ptr %i.ae, align 8, !tbaa !58
  %.sroa.21.0..sroa_idx.i.i36 = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.21.0.copyload.i.i37 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i36, align 8, !tbaa !353
  %.not.i.i40 = icmp eq i16 %.sroa.0.0.copyload.i.i35, %.sroa.0.0.copyload.i
  %i.af = icmp eq ptr %.sroa.21.0.copyload.i.i37, %.sroa.21.0.copyload.i
  %.not4.i41 = select i1 %.not.i.i40, i1 %i.af, i1 false
  br i1 %.not4.i41, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 633, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.x) #38 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ag, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ag, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.c, %bb.h, %bb.e, %bb.b
  %.sroa.8.0 = phi i32 [ %.fca.1.extract18, %bb.b ], [ %.sroa.11.0.copyload, %bb.c ], [ %.fca.1.extract8, %bb.e ], [ 0, %bb.f ], [ %.fca.1.extract, %bb.h ], [ %i.aa, %bb.g ]
  %.sroa.021.0 = phi ptr [ %.fca.0.extract17, %bb.b ], [ %.sroa.05.0.copyload, %bb.c ], [ %.fca.0.extract7, %bb.e ], [ null, %bb.f ], [ %.fca.0.extract, %bb.h ], [ %i.y, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.021.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.8.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL18PerformVCMPCombinePN4llvm6SDNodeERNS_12SelectionDAGEPKNS_12ARMSubtargetE(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(920) %1, i8 %.395.val) unnamed_addr #3 {
bb.a:
  %2 = alloca %"struct.llvm::EVT", align 8        ; 7 uses
  %3 = alloca %"class.llvm::SDLoc", align 8       ; 9 uses
  %4 = alloca %"class.llvm::SDValue", align 8     ; 4 uses
  %5 = alloca %"class.llvm::SDValue", align 8     ; 4 uses
  %6 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %7 = alloca %"class.llvm::SDValue", align 8     ; 4 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 4 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %i.a = trunc nuw i8 %.395.val to i1
  br i1 %i.a, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !352  ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.c, align 8, !tbaa !58 ; 6 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !353 ; 2 uses
  store i16 %.sroa.0.0.copyload.i, ptr %2, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store ptr %.sroa.21.0.copyload.i, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !696  ; 7 uses
  %.sroa.014.0.copyload = load ptr, ptr %i.f, align 8, !tbaa !374 ; 5 uses
  %.sroa.717.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.717.0.copyload = load i32, ptr %.sroa.717.0..sroa_idx, align 8, !tbaa !324 ; 2 uses
  %.sroa.822.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %.sroa.822.0.copyload = load i32, ptr %.sroa.822.0..sroa_idx, align 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.03.0.copyload = load ptr, ptr %i.g, align 8, !tbaa !374 ; 5 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !324 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !602
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !795  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.n = load i32, ptr %i.m, align 8, !tbaa !698
  %i.o = icmp ult i32 %i.n, 65
  %i.p = load ptr, ptr %i.l, align 8
  %spec.select.i.i.i.i = select i1 %i.o, ptr %i.l, ptr %i.p
  %.0.i.i.i.i = load i64, ptr %spec.select.i.i.i.i, align 8, !tbaa !204 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load i64, ptr %i.q, align 8, !tbaa !764
  store i64 %i.r, ptr %3, align 8, !tbaa !764
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.u = load i32, ptr %i.t, align 4, !tbaa !765
  store i32 %i.u, ptr %i.s, align 8, !tbaa !766
  %i.v = tail call noundef zeroext i1 @_ZN4llvm3ISD21isBuildVectorAllZerosEPKNS_6SDNodeE(ptr noundef %.sroa.03.0.copyload) #38
  br i1 %i.v, label %_ZL12isZeroVectorN4llvm7SDValueE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 24 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !355
  %i.y = icmp eq i32 %i.x, 656
  br i1 %i.y, label %_ZL12isZeroVectorN4llvm7SDValueE.exit, label %_ZL12isZeroVectorN4llvm7SDValueE.exit.thread29

_ZL12isZeroVectorN4llvm7SDValueE.exit:            ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !696 ; 2 uses
  %.sroa.0.0.copyload.i45 = load ptr, ptr %i.aa, align 8, !tbaa !374
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !324
  %i.ab = tail call noundef zeroext i1 @_ZN4llvm14isNullConstantENS_7SDValueE(ptr %.sroa.0.0.copyload.i45, i32 %.sroa.2.0.copyload.i) #38
  br i1 %i.ab, label %_ZL12isZeroVectorN4llvm7SDValueE.exit.thread, label %_ZL12isZeroVectorN4llvm7SDValueE.exit.thread29

_ZL12isZeroVectorN4llvm7SDValueE.exit.thread:     ; preds = %bb.b, %_ZL12isZeroVectorN4llvm7SDValueE.exit
  store ptr %.sroa.014.0.copyload, ptr %4, align 8, !tbaa !374
  %.sroa.717.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.sroa.717.0.copyload, ptr %.sroa.717.0..sroa_idx18, align 8, !tbaa !324
  %.sroa.822.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %.sroa.822.0.copyload, ptr %.sroa.822.0..sroa_idx23, align 4
  %i.ac = load ptr, ptr %i.e, align 8, !tbaa !696
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %i.ae = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 628, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %4, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.ad) #38 ; 2 uses
  %.fca.0.extract23 = extractvalue { ptr, i32 } %i.ae, 0
  %.fca.1.extract24 = extractvalue { ptr, i32 } %i.ae, 1
  br label %_ZL14isValidMVECondjb.exit.thread31

_ZL12isZeroVectorN4llvm7SDValueE.exit.thread29:   ; preds = %bb.c, %_ZL12isZeroVectorN4llvm7SDValueE.exit
  %i.af = trunc i64 %.0.i.i.i.i to i32
  %i.ag = icmp ult i32 %i.af, 14
  br i1 %i.ag, label %switch.lookup, label %_ZN4llvm5ARMCCL19getSwappedConditionENS0_9CondCodesE.exit

switch.lookup:                                    ; preds = %_ZL12isZeroVectorN4llvm7SDValueE.exit.thread29
  %i.ah = and i64 %.0.i.i.i.i, 15
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZL18PerformVCMPCombinePN4llvm6SDNodeERNS_12SelectionDAGEPKNS_12ARMSubtargetE, i64 %i.ah
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %_ZN4llvm5ARMCCL19getSwappedConditionENS0_9CondCodesE.exit

_ZN4llvm5ARMCCL19getSwappedConditionENS0_9CondCodesE.exit: ; preds = %switch.lookup, %_ZL12isZeroVectorN4llvm7SDValueE.exit.thread29
  %.0.i = phi i32 [ 14, %_ZL12isZeroVectorN4llvm7SDValueE.exit.thread29 ], [ %switch.ext, %switch.lookup ] ; 3 uses
  %.not.i = icmp eq i16 %.sroa.0.0.copyload.i, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm5ARMCCL19getSwappedConditionENS0_9CondCodesE.exit
  %i.ai = add i16 %.sroa.0.0.copyload.i, -12
  %or.cond.i.i = icmp ult i16 %i.ai, 7
  %i.aj = add i16 %.sroa.0.0.copyload.i, -105
  %or.cond3.i.i = icmp ult i16 %i.aj, 58
  %or.cond4.i.i = or i1 %or.cond.i.i, %or.cond3.i.i
  %i.ak = add i16 %.sroa.0.0.copyload.i, -195
  %spec.select.i.i = icmp ult i16 %i.ak, 21
  %i.al = or i1 %spec.select.i.i, %or.cond4.i.i
  br label %_ZNK4llvm3EVT15isFloatingPointEv.exit

bb.e:                                             ; preds = %_ZN4llvm5ARMCCL19getSwappedConditionENS0_9CondCodesE.exit
  %i.am = call noundef zeroext i1 @_ZNK4llvm3EVT23isExtendedFloatingPointEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #39
  br label %_ZNK4llvm3EVT15isFloatingPointEv.exit

_ZNK4llvm3EVT15isFloatingPointEv.exit:            ; preds = %bb.d, %bb.e
  %i.an = phi i1 [ %i.al, %bb.d ], [ %i.am, %bb.e ]
  switch i32 %.0.i, label %_ZL14isValidMVECondjb.exit.thread31 [
    i32 0, label %_ZL14isValidMVECondjb.exit.thread
    i32 1, label %_ZL14isValidMVECondjb.exit.thread
    i32 13, label %_ZL14isValidMVECondjb.exit.thread
    i32 12, label %_ZL14isValidMVECondjb.exit.thread
    i32 10, label %_ZL14isValidMVECondjb.exit.thread
    i32 11, label %_ZL14isValidMVECondjb.exit.thread
    i32 2, label %_ZL14isValidMVECondjb.exit
    i32 8, label %_ZL14isValidMVECondjb.exit
  ]

_ZL14isValidMVECondjb.exit:                       ; preds = %_ZNK4llvm3EVT15isFloatingPointEv.exit, %_ZNK4llvm3EVT15isFloatingPointEv.exit
  br i1 %i.an, label %_ZL14isValidMVECondjb.exit.thread31, label %_ZL14isValidMVECondjb.exit.thread

_ZL14isValidMVECondjb.exit.thread:                ; preds = %_ZNK4llvm3EVT15isFloatingPointEv.exit, %_ZNK4llvm3EVT15isFloatingPointEv.exit, %_ZNK4llvm3EVT15isFloatingPointEv.exit, %_ZNK4llvm3EVT15isFloatingPointEv.exit, %_ZNK4llvm3EVT15isFloatingPointEv.exit, %_ZNK4llvm3EVT15isFloatingPointEv.exit, %_ZL14isValidMVECondjb.exit
  %i.ao = call noundef zeroext i1 @_ZN4llvm3ISD21isBuildVectorAllZerosEPKNS_6SDNodeE(ptr noundef %.sroa.014.0.copyload) #38
  br i1 %i.ao, label %_ZL12isZeroVectorN4llvm7SDValueE.exit50.thread, label %bb.f

bb.f:                                             ; preds = %_ZL14isValidMVECondjb.exit.thread
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.014.0.copyload, i64 24 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !355 ; 2 uses
  %i.ar = icmp eq i32 %i.aq, 656
  br i1 %i.ar, label %_ZL12isZeroVectorN4llvm7SDValueE.exit50, label %_ZL12isZeroVectorN4llvm7SDValueE.exit50.thread33

_ZL12isZeroVectorN4llvm7SDValueE.exit50:          ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.014.0.copyload, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !696 ; 2 uses
  %.sroa.0.0.copyload.i47 = load ptr, ptr %i.at, align 8, !tbaa !374
  %.sroa.2.0..sroa_idx.i48 = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.2.0.copyload.i49 = load i32, ptr %.sroa.2.0..sroa_idx.i48, align 8, !tbaa !324
  %i.au = call noundef zeroext i1 @_ZN4llvm14isNullConstantENS_7SDValueE(ptr %.sroa.0.0.copyload.i47, i32 %.sroa.2.0.copyload.i49) #38
  br i1 %i.au, label %_ZL12isZeroVectorN4llvm7SDValueE.exit50.thread, label %_ZL12isZeroVectorN4llvm7SDValueE.exit50._ZL12isZeroVectorN4llvm7SDValueE.exit50.thread33_crit_edge

_ZL12isZeroVectorN4llvm7SDValueE.exit50._ZL12isZeroVectorN4llvm7SDValueE.exit50.thread33_crit_edge: ; preds = %_ZL12isZeroVectorN4llvm7SDValueE.exit50
  %.pre = load i32, ptr %i.ap, align 8, !tbaa !355
  br label %_ZL12isZeroVectorN4llvm7SDValueE.exit50.thread33

_ZL12isZeroVectorN4llvm7SDValueE.exit50.thread:   ; preds = %_ZL14isValidMVECondjb.exit.thread, %_ZL12isZeroVectorN4llvm7SDValueE.exit50
  %.sroa.016.0.copyload = load i16, ptr %2, align 8, !tbaa !58
  %.sroa.218.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !353
  store ptr %.sroa.03.0.copyload, ptr %5, align 8, !tbaa !374
  %.sroa.7.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx6, align 8, !tbaa !324
  %.sroa.8.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 %.sroa.8.0.copyload, ptr %.sroa.8.0..sroa_idx10, align 4
  %i.av = zext nneg i32 %.0.i to i64
  %i.aw = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %1, i64 noundef %i.av, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract12 = extractvalue { ptr, i32 } %i.aw, 0
  %.fca.1.extract13 = extractvalue { ptr, i32 } %i.aw, 1
  store ptr %.fca.0.extract12, ptr %6, align 8
  %.sroa.215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.fca.1.extract13, ptr %.sroa.215.0..sroa_idx, align 8
  %i.ax = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 628, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.016.0.copyload, ptr %.sroa.218.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6) #38 ; 2 uses
  %.fca.0.extract8 = extractvalue { ptr, i32 } %i.ax, 0
  %.fca.1.extract9 = extractvalue { ptr, i32 } %i.ax, 1
  br label %_ZL14isValidMVECondjb.exit.thread31

_ZL12isZeroVectorN4llvm7SDValueE.exit50.thread33: ; preds = %_ZL12isZeroVectorN4llvm7SDValueE.exit50._ZL12isZeroVectorN4llvm7SDValueE.exit50.thread33_crit_edge, %bb.f
  %i.ay = phi i32 [ %.pre, %_ZL12isZeroVectorN4llvm7SDValueE.exit50._ZL12isZeroVectorN4llvm7SDValueE.exit50.thread33_crit_edge ], [ %i.aq, %bb.f ]
  %i.az = icmp eq i32 %i.ay, 631
  br i1 %i.az, label %bb.g, label %_ZL14isValidMVECondjb.exit.thread31

bb.g:                                             ; preds = %_ZL12isZeroVectorN4llvm7SDValueE.exit50.thread33
  %i.ba = load i32, ptr %i.w, align 8, !tbaa !355
  %.not = icmp eq i32 %i.ba, 631
  br i1 %.not, label %_ZL14isValidMVECondjb.exit.thread31, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.05.0.copyload = load i16, ptr %2, align 8, !tbaa !58
  %.sroa.27.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !353
  store ptr %.sroa.03.0.copyload, ptr %7, align 8, !tbaa !374
  %.sroa.7.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx8, align 8, !tbaa !324
  %.sroa.8.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %.sroa.8.0.copyload, ptr %.sroa.8.0..sroa_idx12, align 4
  store ptr %.sroa.014.0.copyload, ptr %8, align 8, !tbaa !374
  %.sroa.717.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.sroa.717.0.copyload, ptr %.sroa.717.0..sroa_idx20, align 8, !tbaa !324
  %.sroa.822.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 %.sroa.822.0.copyload, ptr %.sroa.822.0..sroa_idx25, align 4
  %i.bb = zext nneg i32 %.0.i to i64
  %i.bc = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %1, i64 noundef %i.bb, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract1 = extractvalue { ptr, i32 } %i.bc, 0
  %.fca.1.extract2 = extractvalue { ptr, i32 } %i.bc, 1
  store ptr %.fca.0.extract1, ptr %9, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.fca.1.extract2, ptr %.sroa.24.0..sroa_idx, align 8
  %i.bd = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 627, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.05.0.copyload, ptr %.sroa.27.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9) #38 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.bd, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.bd, 1
  br label %_ZL14isValidMVECondjb.exit.thread31

_ZL14isValidMVECondjb.exit.thread31:              ; preds = %_ZNK4llvm3EVT15isFloatingPointEv.exit, %_ZL14isValidMVECondjb.exit, %bb.g, %_ZL12isZeroVectorN4llvm7SDValueE.exit50.thread33, %_ZL12isZeroVectorN4llvm7SDValueE.exit50.thread, %bb.h, %_ZL12isZeroVectorN4llvm7SDValueE.exit.thread
  %.sroa.828.0 = phi i32 [ %.fca.1.extract24, %_ZL12isZeroVectorN4llvm7SDValueE.exit.thread ], [ %.fca.1.extract9, %_ZL12isZeroVectorN4llvm7SDValueE.exit50.thread ], [ %.fca.1.extract, %bb.h ], [ 0, %_ZL14isValidMVECondjb.exit ], [ 0, %_ZL12isZeroVectorN4llvm7SDValueE.exit50.thread33 ], [ 0, %bb.g ], [ 0, %_ZNK4llvm3EVT15isFloatingPointEv.exit ]
  %.sroa.027.0 = phi ptr [ %.fca.0.extract23, %_ZL12isZeroVectorN4llvm7SDValueE.exit.thread ], [ %.fca.0.extract8, %_ZL12isZeroVectorN4llvm7SDValueE.exit50.thread ], [ %.fca.0.extract, %bb.h ], [ null, %_ZL14isValidMVECondjb.exit ], [ null, %_ZL12isZeroVectorN4llvm7SDValueE.exit50.thread33 ], [ null, %bb.g ], [ null, %_ZNK4llvm3EVT15isFloatingPointEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_ZL14isValidMVECondjb.exit.thread31
  %.sroa.828.1 = phi i32 [ %.sroa.828.0, %_ZL14isValidMVECondjb.exit.thread31 ], [ 0, %bb.a ]
  %.sroa.027.1 = phi ptr [ %.sroa.027.0, %_ZL14isValidMVECondjb.exit.thread31 ], [ null, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.027.1, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.828.1, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL27PerformVECREDUCE_ADDCombinePN4llvm6SDNodeERNS_12SelectionDAGEPKNS_12ARMSubtargetE(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(920) %1, i8 %.395.val) unnamed_addr #3 {
bb.a:
  %2 = alloca %"struct.llvm::EVT", align 8        ; 27 uses
  %3 = alloca %"class.llvm::SDValue", align 8     ; 13 uses
  %4 = alloca %"class.llvm::SDLoc", align 8       ; 43 uses
  %5 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %6 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %7 = alloca %class.anon.1024, align 1           ; 6 uses
  %8 = alloca %class.anon.1026, align 8           ; 8 uses
  %9 = alloca %class.anon.1027, align 8           ; 12 uses
  %10 = alloca %class.anon.1028, align 8          ; 12 uses
  %11 = alloca %class.anon.1029, align 8          ; 12 uses
  %12 = alloca %class.anon.1030, align 8          ; 12 uses
  %13 = alloca %"class.llvm::SDValue", align 8    ; 26 uses
  %14 = alloca %"class.llvm::SDValue", align 8    ; 26 uses
  %15 = alloca %"class.llvm::SDValue", align 8    ; 26 uses
  %16 = alloca [2 x %"class.llvm::MVT"], align 2  ; 5 uses
  %17 = alloca [2 x %"class.llvm::MVT"], align 2  ; 5 uses
  %18 = alloca [3 x %"class.llvm::MVT"], align 2  ; 6 uses
  %19 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 5 uses
  %20 = alloca [3 x %"class.llvm::MVT"], align 2  ; 6 uses
  %21 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 5 uses
  %22 = alloca [1 x %"class.llvm::MVT"], align 2  ; 4 uses
  %23 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %24 = alloca [1 x %"class.llvm::MVT"], align 2  ; 4 uses
  %25 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %26 = alloca [2 x %"class.llvm::MVT"], align 2  ; 5 uses
  %27 = alloca [2 x %"class.llvm::MVT"], align 2  ; 5 uses
  %28 = alloca [2 x %"class.llvm::MVT"], align 2  ; 5 uses
  %29 = alloca [3 x %"class.llvm::SDValue"], align 8 ; 6 uses
  %30 = alloca [2 x %"class.llvm::MVT"], align 2  ; 5 uses
  %31 = alloca [3 x %"class.llvm::SDValue"], align 8 ; 6 uses
  %32 = alloca [1 x %"class.llvm::MVT"], align 2  ; 4 uses
  %33 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %34 = alloca [1 x %"class.llvm::MVT"], align 2  ; 4 uses
  %35 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %36 = alloca [2 x %"class.llvm::MVT"], align 2  ; 5 uses
  %37 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %38 = alloca [2 x %"class.llvm::MVT"], align 2  ; 5 uses
  %39 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %40 = alloca [1 x %"class.llvm::MVT"], align 2  ; 4 uses
  %41 = alloca [1 x %"class.llvm::SDValue"], align 8 ; 5 uses
  %42 = alloca [1 x %"class.llvm::MVT"], align 2  ; 4 uses
  %43 = alloca [1 x %"class.llvm::SDValue"], align 8 ; 5 uses
  %44 = alloca [1 x %"class.llvm::MVT"], align 2  ; 4 uses
  %45 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %46 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %47 = alloca [1 x %"class.llvm::MVT"], align 2  ; 4 uses
  %48 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %49 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %50 = alloca [2 x %"class.llvm::MVT"], align 2  ; 5 uses
  %51 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %52 = alloca [2 x %"class.llvm::MVT"], align 2  ; 5 uses
  %53 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %54 = alloca [1 x %"class.llvm::MVT"], align 2  ; 4 uses
  %55 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 6 uses
  %56 = alloca [1 x %"class.llvm::MVT"], align 2  ; 4 uses
  %57 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 6 uses
  %58 = alloca [1 x %"class.llvm::MVT"], align 2  ; 4 uses
  %59 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %60 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %61 = alloca [1 x %"class.llvm::MVT"], align 2  ; 4 uses
  %62 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %63 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %64 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %65 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %66 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %i.a = trunc nuw i8 %.395.val to i1
  br i1 %i.a, label %bb.b, label %bb.ax

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !352  ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.c, align 8, !tbaa !58 ; 2 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !353 ; 2 uses
  store i16 %.sroa.0.0.copyload.i, ptr %2, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 20 uses
  store ptr %.sroa.21.0.copyload.i, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !696
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !736
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load i64, ptr %i.g, align 8, !tbaa !764
  store i64 %i.h, ptr %4, align 8, !tbaa !764
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.k = load i32, ptr %i.j, align 4, !tbaa !765
  store i32 %i.k, ptr %i.i, align 8, !tbaa !766
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i, 7
  %i.l = icmp eq ptr %.sroa.21.0.copyload.i, null
  %.not4.i = select i1 %.not.i.i, i1 %i.l, i1 false
  br i1 %.not4.i, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %3, align 8, !tbaa !602    ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !355
end_hunk_0
