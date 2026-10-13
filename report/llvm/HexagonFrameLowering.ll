Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonFrameLowering?download=true
inline.NumInlined: 5341
inline.NumDeleted: 2406
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNK4llvm20HexagonFrameLowering12emitPrologueERNS_15MachineFunctionERNS_17MachineBasicBlockE:bb.a
  br label %_ZN4llvm9BitVectorD2Ev.exit

_ZN4llvm9BitVectorD2Ev.exit:                      ; preds = %_ZN4llvm9BitVectorC2Ejb.exit83, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  %i.lr = load ptr, ptr %14, align 8, !tbaa !46   ; 2 uses
  %i.ls = icmp eq ptr %i.lr, %i.lm
  br i1 %i.ls, label %_ZN4llvm9BitVectorD2Ev.exit84, label %bb.z

bb.z:                                             ; preds = %_ZN4llvm9BitVectorD2Ev.exit
  call void @free(ptr noundef %i.lr) #27
  br label %_ZN4llvm9BitVectorD2Ev.exit84

_ZN4llvm9BitVectorD2Ev.exit84:                    ; preds = %_ZN4llvm9BitVectorD2Ev.exit, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  %i.lt = load ptr, ptr %13, align 8, !tbaa !46   ; 2 uses
  %i.lu = icmp eq ptr %i.lt, %i.kf
  br i1 %i.lu, label %_ZN4llvm9BitVectorD2Ev.exit85, label %bb.aa

bb.aa:                                            ; preds = %_ZN4llvm9BitVectorD2Ev.exit84
  call void @free(ptr noundef %i.lt) #27
  br label %_ZN4llvm9BitVectorD2Ev.exit85

_ZN4llvm9BitVectorD2Ev.exit85:                    ; preds = %_ZN4llvm9BitVectorD2Ev.exit84, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvm9BitVectorD2Ev.exit85, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm20HexagonFrameLowering22insertCSRSpillsInBlockERNS_17MachineBasicBlockERKSt6vectorINS_15CalleeSavedInfoESaIS4_EERKNS_19HexagonRegisterInfoERb(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(316) %3, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %4) local_unnamed_addr #3 align 2 {
bb.a:
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %6 = alloca %"class.llvm::MachineOperand", align 8 ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !366
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !366
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !295  ; 13 uses
  store i8 0, ptr %4, align 1, !tbaa !321
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !313  ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !174, !nonnull !43, !align !175 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef ptr %i.m(ptr noundef nonnull align 8 dereferenceable(519600) %i.j) #27 ; 3 uses
  %i.o = tail call noundef zeroext i1 @_ZNK4llvm20HexagonFrameLowering15shouldInlineCSRERKNS_15MachineFunctionERKSt6vectorINS_15CalleeSavedInfoESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(1065) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(24) %2)
  %.pre150 = load ptr, ptr %2, align 8, !tbaa !366 ; 3 uses
  %.pre152 = load ptr, ptr %i.b, align 8, !tbaa !366 ; 3 uses
  br i1 %i.o, label %_ZNK4llvm20HexagonFrameLowering16useSpillFunctionERKNS_15MachineFunctionERKSt6vectorINS_15CalleeSavedInfoESaIS5_EE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = ptrtoint ptr %.pre152 to i64
  %i.q = ptrtoint ptr %.pre150 to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = sdiv exact i64 %i.r, 12
  %i.t = trunc i64 %i.s to i32                    ; 2 uses
  %i.u = icmp ult i32 %i.t, 2
  br i1 %i.u, label %_ZNK4llvm20HexagonFrameLowering16useSpillFunctionERKNS_15MachineFunctionERKSt6vectorINS_15CalleeSavedInfoESaIS5_EE.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val.i = load ptr, ptr %i.h, align 8, !tbaa !186 ; 3 uses
  %i.v = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %.val.i, i32 noundef 51) #27
  br i1 %i.v, label %_ZL9isOptSizeRKN4llvm15MachineFunctionE.exit.i, label %_ZNK4llvm8Function10hasOptSizeEv.exit.i.i

_ZNK4llvm8Function10hasOptSizeEv.exit.i.i:        ; preds = %bb.d
  %i.w = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %.val.i, i32 noundef 19) #27
  br i1 %i.w, label %_ZL9isOptSizeRKN4llvm15MachineFunctionE.exit.i, label %_ZNK4llvm20HexagonFrameLowering16useSpillFunctionERKNS_15MachineFunctionERKSt6vectorINS_15CalleeSavedInfoESaIS5_EE.exit

_ZL9isOptSizeRKN4llvm15MachineFunctionE.exit.i:   ; preds = %_ZNK4llvm8Function10hasOptSizeEv.exit.i.i, %bb.d
  %i.x = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %.val.i, i32 noundef 19) #27
  %spec.select.i = select i1 %i.x, ptr getelementptr inbounds nuw (i8, ptr @_ZL18SpillFuncThreshold, i64 120), ptr getelementptr inbounds nuw (i8, ptr @_ZL20SpillFuncThresholdOs, i64 120)
  br label %_ZNK4llvm20HexagonFrameLowering16useSpillFunctionERKNS_15MachineFunctionERKSt6vectorINS_15CalleeSavedInfoESaIS5_EE.exit

_ZNK4llvm20HexagonFrameLowering16useSpillFunctionERKNS_15MachineFunctionERKSt6vectorINS_15CalleeSavedInfoESaIS5_EE.exit: ; preds = %_ZNK4llvm8Function10hasOptSizeEv.exit.i.i, %_ZL9isOptSizeRKN4llvm15MachineFunctionE.exit.i
  %i.y = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZL18SpillFuncThreshold, i64 120), %_ZNK4llvm8Function10hasOptSizeEv.exit.i.i ], [ %spec.select.i, %_ZL9isOptSizeRKN4llvm15MachineFunctionE.exit.i ]
  %i.z = load i32, ptr %i.y, align 8, !tbaa !372
  %i.aa = icmp ult i32 %i.z, %i.t
  %.pre151 = load ptr, ptr %2, align 8, !tbaa !366 ; 5 uses
  %.pre153 = load ptr, ptr %i.b, align 8, !tbaa !366 ; 3 uses
  br i1 %i.aa, label %bb.e, label %_ZNK4llvm20HexagonFrameLowering16useSpillFunctionERKNS_15MachineFunctionERKSt6vectorINS_15CalleeSavedInfoESaIS5_EE.exit.thread

bb.e:                                             ; preds = %_ZNK4llvm20HexagonFrameLowering16useSpillFunctionERKNS_15MachineFunctionERKSt6vectorINS_15CalleeSavedInfoESaIS5_EE.exit
  store i8 1, ptr %4, align 1, !tbaa !321
  %i.ab = ptrtoint ptr %.pre153 to i64
  %i.ac = ptrtoint ptr %.pre151 to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = sdiv exact i64 %i.ad, 12                ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.val75 = load ptr, ptr %i.ag, align 8          ; 2 uses
  %i.ah = icmp ne ptr %.pre153, %.pre151
  tail call void @llvm.assume(i1 %i.ah)
  %.sroa.0.0.copyload.i.i = load i32, ptr %.pre151, align 4, !tbaa !196 ; 4 uses
  %i.ai = add i32 %.sroa.0.0.copyload.i.i, -73
  %or.cond.i.i = icmp ult i32 %i.ai, -16
  br i1 %or.cond.i.i, label %_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = zext nneg i32 %.sroa.0.0.copyload.i.i to i64
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !294, !noalias !827
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %.val75, i64 %i.an ; 2 uses
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !276, !noalias !827 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %i.ap, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit.i, label %_ZN4llvm16MCSubRegIteratorppEv.exit.preheader.i.i

_ZN4llvm16MCSubRegIteratorppEv.exit.preheader.i.i: ; preds = %bb.f
  %i.aq = zext i16 %i.ap to i32
  %i.ar = add nuw nsw i32 %.sroa.0.0.copyload.i.i, %i.aq
  br label %_ZN4llvm16MCSubRegIteratorppEv.exit.i.i

_ZN4llvm16MCSubRegIteratorppEv.exit.i.i:          ; preds = %_ZN4llvm16MCSubRegIteratorppEv.exit.i.i, %_ZN4llvm16MCSubRegIteratorppEv.exit.preheader.i.i
  %.sroa.013.018.i.i = phi i32 [ %spec.select15.i.i, %_ZN4llvm16MCSubRegIteratorppEv.exit.i.i ], [ 0, %_ZN4llvm16MCSubRegIteratorppEv.exit.preheader.i.i ]
  %.sroa.02.017.i.i = phi i32 [ %i.av, %_ZN4llvm16MCSubRegIteratorppEv.exit.i.i ], [ %i.ar, %_ZN4llvm16MCSubRegIteratorppEv.exit.preheader.i.i ] ; 2 uses
  %.sroa.53.016.pn.i.i = phi ptr [ %.sroa.53.016.i.i, %_ZN4llvm16MCSubRegIteratorppEv.exit.i.i ], [ %i.ao, %_ZN4llvm16MCSubRegIteratorppEv.exit.preheader.i.i ]
  %.sroa.53.016.i.i = getelementptr inbounds nuw i8, ptr %.sroa.53.016.pn.i.i, i64 2 ; 2 uses
  %i.as = and i32 %.sroa.02.017.i.i, 65535
  %spec.select15.i.i = tail call i32 @llvm.umax.i32(i32 %.sroa.013.018.i.i, i32 %i.as) ; 2 uses
  %i.at = load i16, ptr %.sroa.53.016.i.i, align 2, !tbaa !276 ; 2 uses
  %i.au = zext i16 %i.at to i32
  %i.av = add i32 %.sroa.02.017.i.i, %i.au
  %.not.i.i.i.i = icmp eq i16 %i.at, 0
  br i1 %.not.i.i.i.i, label %_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit.i, label %_ZN4llvm16MCSubRegIteratorppEv.exit.i.i

_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit.i: ; preds = %_ZN4llvm16MCSubRegIteratorppEv.exit.i.i, %bb.f, %bb.e
  %.sroa.013.2.i.i = phi i32 [ %.sroa.0.0.copyload.i.i, %bb.e ], [ 0, %bb.f ], [ %spec.select15.i.i, %_ZN4llvm16MCSubRegIteratorppEv.exit.i.i ] ; 2 uses
  %i.aw = and i64 %i.ae, 4294967294
  %.not.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i, label %_ZL20getMaxCalleeSavedRegN4llvm8ArrayRefINS_15CalleeSavedInfoEEERKNS_18TargetRegisterInfoE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit.i
  %wide.trip.count.i = and i64 %i.ae, 4294967295
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit21.thread.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit21.thread.i ] ; 2 uses
  %.sroa.07.010.i = phi i32 [ %.sroa.013.2.i.i, %.lr.ph.preheader.i ], [ %.sroa.07.1.i, %_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit21.thread.i ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [12 x i8], ptr %.pre151, i64 %indvars.iv.i
  %.sroa.0.0.copyload.i9.i = load i32, ptr %i.ax, align 4, !tbaa !196 ; 4 uses
  %i.ay = add i32 %.sroa.0.0.copyload.i9.i, -73
  %or.cond.i10.i = icmp ult i32 %i.ay, -16
  br i1 %or.cond.i10.i, label %_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit21.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.az = zext nneg i32 %.sroa.0.0.copyload.i9.i to i64
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !294, !noalias !828
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %.val75, i64 %i.bd ; 2 uses
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !276, !noalias !828 ; 2 uses
  %.not.i.i.i.i.i11.i = icmp eq i16 %i.bf, 0
  br i1 %.not.i.i.i.i.i11.i, label %_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit21.thread.i, label %_ZN4llvm16MCSubRegIteratorppEv.exit.preheader.i12.i

_ZN4llvm16MCSubRegIteratorppEv.exit.preheader.i12.i: ; preds = %bb.g
  %i.bg = zext i16 %i.bf to i32
  %i.bh = add nuw nsw i32 %.sroa.0.0.copyload.i9.i, %i.bg
  br label %_ZN4llvm16MCSubRegIteratorppEv.exit.i13.i

_ZN4llvm16MCSubRegIteratorppEv.exit.i13.i:        ; preds = %_ZN4llvm16MCSubRegIteratorppEv.exit.i13.i, %_ZN4llvm16MCSubRegIteratorppEv.exit.preheader.i12.i
  %.sroa.013.018.i14.i = phi i32 [ %spec.select15.i18.i, %_ZN4llvm16MCSubRegIteratorppEv.exit.i13.i ], [ 0, %_ZN4llvm16MCSubRegIteratorppEv.exit.preheader.i12.i ]
  %.sroa.02.017.i15.i = phi i32 [ %i.bl, %_ZN4llvm16MCSubRegIteratorppEv.exit.i13.i ], [ %i.bh, %_ZN4llvm16MCSubRegIteratorppEv.exit.preheader.i12.i ] ; 2 uses
  %.sroa.53.016.pn.i16.i = phi ptr [ %.sroa.53.016.i17.i, %_ZN4llvm16MCSubRegIteratorppEv.exit.i13.i ], [ %i.be, %_ZN4llvm16MCSubRegIteratorppEv.exit.preheader.i12.i ]
  %.sroa.53.016.i17.i = getelementptr inbounds nuw i8, ptr %.sroa.53.016.pn.i16.i, i64 2 ; 2 uses
  %i.bi = and i32 %.sroa.02.017.i15.i, 65535
  %spec.select15.i18.i = tail call i32 @llvm.umax.i32(i32 %.sroa.013.018.i14.i, i32 %i.bi) ; 2 uses
  %i.bj = load i16, ptr %.sroa.53.016.i17.i, align 2, !tbaa !276 ; 2 uses
  %i.bk = zext i16 %i.bj to i32
  %i.bl = add i32 %.sroa.02.017.i15.i, %i.bk
  %.not.i.i.i19.i = icmp eq i16 %i.bj, 0
  br i1 %.not.i.i.i19.i, label %_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit21.i, label %_ZN4llvm16MCSubRegIteratorppEv.exit.i13.i

_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit21.i: ; preds = %_ZN4llvm16MCSubRegIteratorppEv.exit.i13.i, %.lr.ph.i
  %.sroa.013.2.i20.i = phi i32 [ %.sroa.0.0.copyload.i9.i, %.lr.ph.i ], [ %spec.select15.i18.i, %_ZN4llvm16MCSubRegIteratorppEv.exit.i13.i ]
  %spec.select.i76 = tail call i32 @llvm.umax.i32(i32 %.sroa.013.2.i20.i, i32 %.sroa.07.010.i)
  br label %_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit21.thread.i

_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit21.thread.i: ; preds = %_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit21.i, %bb.g
  %.sroa.07.1.i = phi i32 [ %.sroa.07.010.i, %bb.g ], [ %spec.select.i76, %_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit21.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZL20getMaxCalleeSavedRegN4llvm8ArrayRefINS_15CalleeSavedInfoEEERKNS_18TargetRegisterInfoE.exit, label %.lr.ph.i, !llvm.loop !6

_ZL20getMaxCalleeSavedRegN4llvm8ArrayRefINS_15CalleeSavedInfoEEERKNS_18TargetRegisterInfoE.exit: ; preds = %_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit21.thread.i, %_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit.i
  %.sroa.07.2.i = phi i32 [ %.sroa.013.2.i.i, %_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit.i ], [ %.sroa.07.1.i, %_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit21.thread.i ]
  %i.bm = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL23EnableStackOVFSanitizer, i64 120), align 8, !tbaa !320, !range !42, !noundef !43
  %i.bn = trunc nuw i8 %i.bm to i1                ; 2 uses
  %..sroa.sel.i = select i1 %i.bn, ptr @__const._ZL19getSpillFunctionForN4llvm8RegisterE9SpillKindb.V4SpillToMemoryStkchkFunctions, ptr @__const._ZL19getSpillFunctionForN4llvm8RegisterE9SpillKindb.V4SpillToMemoryFunctions ; 6 uses
  switch i32 %.sroa.07.2.i, label %_ZL20getMaxCalleeSavedRegN4llvm8ArrayRefINS_15CalleeSavedInfoEEERKNS_18TargetRegisterInfoE.exit.thread [
    i32 135, label %_ZL19getSpillFunctionForN4llvm8RegisterE9SpillKindb.exit
    i32 137, label %bb.h
    i32 139, label %bb.i
    i32 141, label %bb.j
    i32 143, label %bb.k
    i32 145, label %bb.l
  ]

bb.h:                                             ; preds = %_ZL20getMaxCalleeSavedRegN4llvm8ArrayRefINS_15CalleeSavedInfoEEERKNS_18TargetRegisterInfoE.exit
  %7 = getelementptr inbounds nuw i8, ptr %..sroa.sel.i, i64 8
  br label %_ZL19getSpillFunctionForN4llvm8RegisterE9SpillKindb.exit

bb.i:                                             ; preds = %_ZL20getMaxCalleeSavedRegN4llvm8ArrayRefINS_15CalleeSavedInfoEEERKNS_18TargetRegisterInfoE.exit
  %8 = getelementptr inbounds nuw i8, ptr %..sroa.sel.i, i64 16
  br label %_ZL19getSpillFunctionForN4llvm8RegisterE9SpillKindb.exit

bb.j:                                             ; preds = %_ZL20getMaxCalleeSavedRegN4llvm8ArrayRefINS_15CalleeSavedInfoEEERKNS_18TargetRegisterInfoE.exit
  %9 = getelementptr inbounds nuw i8, ptr %..sroa.sel.i, i64 24
  br label %_ZL19getSpillFunctionForN4llvm8RegisterE9SpillKindb.exit

bb.k:                                             ; preds = %_ZL20getMaxCalleeSavedRegN4llvm8ArrayRefINS_15CalleeSavedInfoEEERKNS_18TargetRegisterInfoE.exit
  %10 = getelementptr inbounds nuw i8, ptr %..sroa.sel.i, i64 32
  br label %_ZL19getSpillFunctionForN4llvm8RegisterE9SpillKindb.exit

bb.l:                                             ; preds = %_ZL20getMaxCalleeSavedRegN4llvm8ArrayRefINS_15CalleeSavedInfoEEERKNS_18TargetRegisterInfoE.exit
  %11 = getelementptr inbounds nuw i8, ptr %..sroa.sel.i, i64 40
  br label %_ZL19getSpillFunctionForN4llvm8RegisterE9SpillKindb.exit

_ZL20getMaxCalleeSavedRegN4llvm8ArrayRefINS_15CalleeSavedInfoEEERKNS_18TargetRegisterInfoE.exit.thread: ; preds = %_ZL20getMaxCalleeSavedRegN4llvm8ArrayRefINS_15CalleeSavedInfoEEERKNS_18TargetRegisterInfoE.exit
  unreachable

_ZL19getSpillFunctionForN4llvm8RegisterE9SpillKindb.exit: ; preds = %_ZL20getMaxCalleeSavedRegN4llvm8ArrayRefINS_15CalleeSavedInfoEEERKNS_18TargetRegisterInfoE.exit, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.09.in.i = phi ptr [ %11, %bb.l ], [ %7, %bb.h ], [ %8, %bb.i ], [ %9, %bb.j ], [ %10, %bb.k ], [ %..sroa.sel.i, %_ZL20getMaxCalleeSavedRegN4llvm8ArrayRefINS_15CalleeSavedInfoEEERKNS_18TargetRegisterInfoE.exit ]
  %.09.i = load ptr, ptr %.09.in.i, align 8, !tbaa !50
  %i.bo = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !373, !nonnull !43, !align !175
  %i.bq = tail call noundef zeroext i1 @_ZNK4llvm13TargetMachine21isPositionIndependentEv(ptr noundef nonnull align 8 dereferenceable(1728) %i.bp) #27 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.j, i64 348
  %i.bs = load i8, ptr %i.br, align 4, !tbaa !455, !range !42, !noundef !43
  %i.bt = trunc nuw i8 %i.bs to i1
  %i.bu = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL21EnableSaveRestoreLong, i64 120), align 8, !range !42
  %i.bv = trunc nuw i8 %i.bu to i1
  %i.bw = select i1 %i.bt, i1 true, i1 %i.bv      ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.not = icmp eq ptr %i.f, %i.bx
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZL19getSpillFunctionForN4llvm8RegisterE9SpillKindb.exit
  %i.by = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !322
  %i.ca = inttoptr i64 %i.bz to ptr
  br label %bb.n

bb.n:                                             ; preds = %_ZL19getSpillFunctionForN4llvm8RegisterE9SpillKindb.exit, %bb.m
  %.sroa.0119.0 = phi ptr [ %i.ca, %bb.m ], [ null, %_ZL19getSpillFunctionForN4llvm8RegisterE9SpillKindb.exit ]
  br i1 %i.bn, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  br i1 %i.bw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.neg = select i1 %i.bq, i64 -2622, i64 -2621
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit

bb.q:                                             ; preds = %bb.o
  %.neg127 = select i1 %i.bq, i64 -2623, i64 -2620
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit

bb.r:                                             ; preds = %bb.n
  br i1 %i.bw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %.neg128 = select i1 %i.bq, i64 -2625, i64 -2624
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit

bb.t:                                             ; preds = %bb.r
  %.neg129 = select i1 %i.bq, i64 -2626, i64 -2619
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit: ; preds = %bb.q, %bb.p, %bb.t, %bb.s
  %.074.neg = phi i64 [ %.neg, %bb.p ], [ %.neg127, %bb.q ], [ %.neg128, %bb.s ], [ %.neg129, %bb.t ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !324
  %i.cd = getelementptr inbounds [32 x i8], ptr %i.cc, i64 %.074.neg
  %i.ce = load ptr, ptr %i.g, align 8, !tbaa !313 ; 2 uses
  %i.cf = tail call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.ce, ptr noundef nonnull align 8 dereferenceable(32) %i.cd, ptr %.sroa.0119.0, i1 noundef zeroext false) #27 ; 8 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef %i.cf) #27
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8
  %i.ch = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.ci = inttoptr i64 %i.ch to ptr
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr %i.f, ptr %i.cj, align 8, !tbaa !295
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i = load i64, ptr %i.cf, align 8
  %i.ck = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i, 7
  %i.cl = or disjoint i64 %i.ck, %i.ch
  store i64 %i.cl, ptr %i.cf, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr %i.cf, ptr %i.cm, align 8, !tbaa !295
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i = load i64, ptr %i.f, align 8
  %i.cn = ptrtoint ptr %i.cf to i64
  %i.co = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i, 7
  %i.cp = or disjoint i64 %i.co, %i.cn
  store i64 %i.cp, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.cq, align 8, !tbaa !327, !alias.scope !829
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %.09.i, ptr %i.cr, align 8, !tbaa !311, !alias.scope !829
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 0, ptr %i.cs, align 4, !tbaa !311, !alias.scope !829
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 0, ptr %i.ct, align 8, !tbaa !311, !alias.scope !829
  store i32 9, ptr %6, align 8, !alias.scope !829
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cf, ptr noundef nonnull align 8 dereferenceable(1065) %i.ce, ptr noundef nonnull align 8 dereferenceable(32) %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.cu = load ptr, ptr %2, align 8, !tbaa !366   ; 2 uses
  %i.cv = load ptr, ptr %i.b, align 8, !tbaa !366 ; 2 uses
  %.not10.i = icmp eq ptr %i.cu, %i.cv
  br i1 %.not10.i, label %.loopexit, label %.lr.ph.i77

.lr.ph.i77:                                       ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph.i77
  %.sroa.07.011.i = phi ptr [ %i.cu, %.lr.ph.i77 ], [ %i.cz, %bb.u ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %.sroa.0.0.copyload.i.i78 = load i32, ptr %.sroa.07.011.i, align 4, !tbaa !196
  store ptr null, ptr %i.cw, align 8, !tbaa !327, !alias.scope !830
  store i32 %.sroa.0.0.copyload.i.i78, ptr %i.cx, align 4, !tbaa !311, !alias.scope !830
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, i8 0, i64 16, i1 false), !alias.scope !830
  store i32 100663296, ptr %5, align 8, !alias.scope !830
  call void @_ZN4llvm12MachineInstr10addOperandERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cf, ptr noundef nonnull align 8 dereferenceable(32) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.07.011.i, i64 12 ; 2 uses
  %.not.i79 = icmp eq ptr %i.cz, %i.cv
  br i1 %.not.i79, label %_ZNK4llvm20HexagonFrameLowering34addCalleeSaveRegistersAsImpOperandEPNS_12MachineInstrERKSt6vectorINS_15CalleeSavedInfoESaIS4_EEbb.exit, label %bb.u

_ZNK4llvm20HexagonFrameLowering34addCalleeSaveRegistersAsImpOperandEPNS_12MachineInstrERKSt6vectorINS_15CalleeSavedInfoESaIS4_EEbb.exit: ; preds = %bb.u
  %.pre = load ptr, ptr %2, align 8, !tbaa !366   ; 2 uses
  %.pre147 = load ptr, ptr %i.b, align 8, !tbaa !366 ; 2 uses
  %.not130137 = icmp eq ptr %.pre, %.pre147
  br i1 %.not130137, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4llvm20HexagonFrameLowering34addCalleeSaveRegistersAsImpOperandEPNS_12MachineInstrERKSt6vectorINS_15CalleeSavedInfoESaIS4_EEbb.exit
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 3 uses
  %.pre148 = load ptr, ptr %i.db, align 8, !tbaa !328
  %.pre149 = load ptr, ptr %i.dc, align 8, !tbaa !329
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph, %_ZN4llvm17MachineBasicBlock9addLiveInENS_10MCRegisterENS_11LaneBitmaskE.exit
  %i.dd = phi ptr [ %.pre149, %.lr.ph ], [ %i.ea, %_ZN4llvm17MachineBasicBlock9addLiveInENS_10MCRegisterENS_11LaneBitmaskE.exit ] ; 5 uses
  %i.de = phi ptr [ %.pre148, %.lr.ph ], [ %i.eb, %_ZN4llvm17MachineBasicBlock9addLiveInENS_10MCRegisterENS_11LaneBitmaskE.exit ] ; 4 uses
  %.sroa.0111.0138 = phi ptr [ %.pre, %.lr.ph ], [ %i.ec, %_ZN4llvm17MachineBasicBlock9addLiveInENS_10MCRegisterENS_11LaneBitmaskE.exit ] ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %.sroa.0111.0138, align 4, !tbaa !196 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.de, %i.dd
  br i1 %.not.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i32 %.sroa.0.0.copyload.i, ptr %i.de, align 8, !tbaa !196
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store i64 -1, ptr %.sroa.57.0..sroa_idx.i, align 8, !tbaa !52
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16 ; 2 uses
  store ptr %i.df, ptr %i.db, align 8, !tbaa !328
  br label %_ZN4llvm17MachineBasicBlock9addLiveInENS_10MCRegisterENS_11LaneBitmaskE.exit

bb.x:                                             ; preds = %bb.v
  %i.dg = load ptr, ptr %i.da, align 8, !tbaa !330 ; 5 uses
  %i.dh = ptrtoint ptr %i.dd to i64
  %i.di = ptrtoint ptr %i.dg to i64               ; 2 uses
  %i.dj = sub i64 %i.dh, %i.di                    ; 3 uses
  %i.dk = icmp eq i64 %i.dj, 9223372036854775792
  br i1 %i.dk, label %bb.y, label %_ZNKSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.y:                                             ; preds = %bb.x
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #28
  unreachable

_ZNKSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.x
  %i.dl = ashr exact i64 %i.dj, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dl, i64 1)
  %i.dm = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.dl ; 2 uses
  %i.dn = icmp ult i64 %i.dm, %i.dl
  %i.do = call i64 @llvm.umin.i64(i64 %i.dm, i64 576460752303423487)
  %i.dp = select i1 %i.dn, i64 576460752303423487, i64 %i.do ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.dp, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.dq = shl nuw nsw i64 %i.dp, 4
  %i.dr = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dq) #29 ; 5 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dj ; 2 uses
  store i32 %.sroa.0.0.copyload.i, ptr %i.ds, align 8, !tbaa !196
  %.sroa.57.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store i64 -1, ptr %.sroa.57.0..sroa_idx8.i, align 8, !tbaa !52
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.dg, %i.dd
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNKSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.du, %.lr.ph.i.i.i.i.i.i.i ], [ %i.dr, %_ZNKSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.dt, %.lr.ph.i.i.i.i.i.i.i ], [ %i.dg, %_ZNKSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !331, !alias.scope !831
  %i.dt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dt, %i.dd
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !5

_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.dr, %_ZNKSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.du, %.lr.ph.i.i.i.i.i.i.i ]
  %i.dv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i
  %i.dw = load ptr, ptr %i.dc, align 8, !tbaa !329
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = sub i64 %i.dx, %i.di
  call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef %i.dy) #30
  br label %_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i: ; preds = %bb.z, %_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i
  store ptr %i.dr, ptr %i.da, align 8, !tbaa !330
  store ptr %i.dv, ptr %i.db, align 8, !tbaa !328
end_hunk_0
begin_hunk_1_@_ZNK4llvm20HexagonFrameLowering16updateEntryPathsERNS_15MachineFunctionERNS_17MachineBasicBlockE:bb.a
.loopexit.i:                                      ; preds = %bb.p, %bb.o, %.lr.ph55
  %.lcssa30.sink.i.ph.i = phi ptr [ %i.cp, %bb.o ], [ null, %.lr.ph55 ], [ %i.cy, %bb.p ]
  %i.di = load i32, ptr %i.ac, align 8, !tbaa !496, !noalias !923
  %i.dj = shl i32 %i.di, 2
  %i.dk = add i32 %i.dj, 4
  %i.dl = mul i32 %i.ck, 3
  %.not.i.i35 = icmp ult i32 %i.dk, %i.dl
  br i1 %.not.i.i35, label %.loopexit, label %bb.q, !prof !267

bb.q:                                             ; preds = %.loopexit.i
  %i.dm = shl i32 %i.ck, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E4growEj(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.dm), !noalias !923
  %i.dn = load ptr, ptr %3, align 8, !tbaa !494, !noalias !924 ; 5 uses
  %i.do = load ptr, ptr %i.aa, align 8, !tbaa !495, !noalias !924 ; 5 uses
  %i.dp = load i32, ptr %i.ab, align 4, !tbaa !493, !noalias !924 ; 2 uses
  %i.dq = icmp ne i32 %i.dp, 0
  call void @llvm.assume(i1 %i.dq)
  %i.dr = add i32 %i.dp, -1                       ; 2 uses
  %i.ds = mul i32 %i.ch, 37
  %.024.i = and i32 %i.dr, %i.ds                  ; 3 uses
  %i.dt = zext i32 %.024.i to i64                 ; 2 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.dt ; 2 uses
  %i.dv = lshr i64 %i.dt, 5
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !196, !noalias !923
  %i.dy = and i32 %.024.i, 31
  %i.dz = lshr i32 %i.dx, %i.dy
  %i.ea = trunc i32 %i.dz to i1
  br i1 %i.ea, label %.lr.ph.i, label %.loopexit, !prof !264

bb.r:                                             ; preds = %.lr.ph.i
  %i.eb = add nuw i32 %.025.i, 1
  %.0.i = and i32 %i.eb, %i.dr                    ; 3 uses
  %i.ec = zext i32 %.0.i to i64                   ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.ec ; 2 uses
  %i.ee = lshr i64 %i.ec, 5
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !196, !noalias !923
  %i.eh = and i32 %.0.i, 31
  %i.ei = lshr i32 %i.eg, %i.eh
  %i.ej = trunc i32 %i.ei to i1
  br i1 %i.ej, label %.lr.ph.i, label %.loopexit, !prof !265, !llvm.loop !8

.lr.ph.i:                                         ; preds = %bb.q, %bb.r
  %i.ek = phi ptr [ %i.ed, %bb.r ], [ %i.du, %bb.q ] ; 2 uses
  %.025.i = phi i32 [ %.0.i, %bb.r ], [ %.024.i, %bb.q ]
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !196, !noalias !923
  %i.em = icmp eq i32 %i.ch, %i.el
  br i1 %i.em, label %.loopexit, label %bb.r, !prof !267

.loopexit:                                        ; preds = %bb.r, %.lr.ph.i, %.loopexit.i, %bb.q
  %i.en = phi ptr [ %i.ci, %.loopexit.i ], [ %i.dn, %bb.q ], [ %i.dn, %.lr.ph.i ], [ %i.dn, %bb.r ]
  %i.eo = phi ptr [ %i.cj, %.loopexit.i ], [ %i.do, %bb.q ], [ %i.do, %.lr.ph.i ], [ %i.do, %bb.r ]
  %i.ep = phi ptr [ %.lcssa30.sink.i.ph.i, %.loopexit.i ], [ %i.du, %bb.q ], [ %i.ed, %bb.r ], [ %i.ek, %.lr.ph.i ] ; 2 uses
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = ptrtoint ptr %i.en to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = ashr exact i64 %i.es, 2                 ; 2 uses
  %i.eu = trunc i64 %i.et to i32
  %i.ev = and i32 %i.eu, 31
  %i.ew = shl nuw i32 1, %i.ev
  %i.ex = lshr i64 %i.et, 5
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %i.ex ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !196, !noalias !923
  %i.fa = or i32 %i.ew, %i.ez
  store i32 %i.fa, ptr %i.ey, align 4, !tbaa !196, !noalias !923
  %i.fb = load i32, ptr %i.ac, align 8, !tbaa !496, !noalias !923
  %i.fc = add i32 %i.fb, 1
  store i32 %i.fc, ptr %i.ac, align 8, !tbaa !496, !noalias !923
  store i32 %i.ch, ptr %i.ep, align 4, !tbaa !196, !noalias !923
  %i.fd = load i32, ptr %i.d, align 8, !tbaa !203 ; 2 uses
  %i.fe = load i32, ptr %i.e, align 4, !tbaa !204
  %.not.i.i33 = icmp ult i32 %i.fd, %i.fe
  br i1 %.not.i.i33, label %bb.t, label %bb.s, !prof !267

bb.s:                                             ; preds = %.loopexit
  call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i32 noundef %i.ch)
  br label %_ZN4llvm9SetVectorIjNS_11SmallVectorIjLj0EEENS_8DenseSetIjNS_12DenseMapInfoIjvEEEELj0EE6insertERKj.exit34

bb.t:                                             ; preds = %.loopexit
  %i.ff = zext i32 %i.fd to i64
  %i.fg = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.ff
  store i32 %i.ch, ptr %i.fh, align 1
  %i.fi = load i32, ptr %i.d, align 8, !tbaa !203
  %i.fj = add i32 %i.fi, 1
  store i32 %i.fj, ptr %i.d, align 8, !tbaa !203
  br label %_ZN4llvm9SetVectorIjNS_11SmallVectorIjLj0EEENS_8DenseSetIjNS_12DenseMapInfoIjvEEEELj0EE6insertERKj.exit34

_ZN4llvm9SetVectorIjNS_11SmallVectorIjLj0EEENS_8DenseSetIjNS_12DenseMapInfoIjvEEEELj0EE6insertERKj.exit34: ; preds = %.lr.ph.i.i, %bb.s, %bb.t
  %i.fk = getelementptr inbounds nuw i8, ptr %.053, i64 8 ; 2 uses
  %.not30 = icmp eq ptr %i.fk, %i.ce
  br i1 %.not30, label %.loopexit48, label %.lr.ph55

.loopexit48:                                      ; preds = %_ZN4llvm9SetVectorIjNS_11SmallVectorIjLj0EEENS_8DenseSetIjNS_12DenseMapInfoIjvEEEELj0EE6insertERKj.exit34, %bb.n, %._crit_edge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fl = load i32, ptr %i.d, align 8, !tbaa !203
  %i.fm = zext i32 %i.fl to i64
  %i.fn = icmp samesign ult i64 %indvars.iv.next, %i.fm
  br i1 %i.fn, label %bb.g, label %._crit_edge58, !llvm.loop !919
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm20HexagonFrameLowering24insertCSRRestoresInBlockERNS_17MachineBasicBlockERKSt6vectorINS_15CalleeSavedInfoESaIS4_EERKNS_19HexagonRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(316) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 8 uses
  %6 = alloca %"class.llvm::MachineOperand", align 8 ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !366
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !366
  %i.d = icmp ne ptr %i.a, %i.c                   ; 2 uses
  br i1 %i.d, label %bb.b, label %_ZNK4llvm20HexagonFrameLowering34addCalleeSaveRegistersAsImpOperandEPNS_12MachineInstrERKSt6vectorINS_15CalleeSavedInfoESaIS4_EEbb.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @_ZN4llvm17MachineBasicBlock18getFirstTerminatorEv(ptr noundef nonnull align 8 dereferenceable(360) %1) #27 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !313  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !174, !nonnull !43, !align !175 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !34
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(519600) %i.i) #27 ; 4 uses
  %i.n = tail call noundef zeroext i1 @_ZNK4llvm20HexagonFrameLowering18useRestoreFunctionERKNS_15MachineFunctionERKSt6vectorINS_15CalleeSavedInfoESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(1065) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br i1 %i.n, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.o = tail call ptr @_ZN4llvm17MachineBasicBlock20getLastNonDebugInstrEb(ptr noundef nonnull align 8 dereferenceable(360) %1, i1 noundef zeroext true) #27 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZL11hasTailCallRKN4llvm17MachineBasicBlockE.exit.thread, label %_ZL11hasTailCallRKN4llvm17MachineBasicBlockE.exit

_ZL11hasTailCallRKN4llvm17MachineBasicBlockE.exit: ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 52
  %i.s = load i32, ptr %i.r, align 4, !tbaa !309
  %i.t = and i32 %i.s, -2
  %i.u = icmp eq i32 %i.t, 482
  br i1 %i.u, label %_ZL9hasReturnRKN4llvm17MachineBasicBlockE.exit, label %_ZL11hasTailCallRKN4llvm17MachineBasicBlockE.exit.thread

_ZL11hasTailCallRKN4llvm17MachineBasicBlockE.exit.thread: ; preds = %bb.c, %_ZL11hasTailCallRKN4llvm17MachineBasicBlockE.exit
  %i.v = tail call ptr @_ZN4llvm17MachineBasicBlock18getFirstTerminatorEv(ptr noundef nonnull align 8 dereferenceable(360) %1) #27 ; 2 uses
  %.not14.not.i = icmp eq ptr %i.v, %i.p
  br i1 %.not14.not.i, label %_ZL9hasReturnRKN4llvm17MachineBasicBlockE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZL11hasTailCallRKN4llvm17MachineBasicBlockE.exit.thread, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i
  %.sroa.09.015.i = phi ptr [ %i.ar, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i ], [ %i.v, %_ZL11hasTailCallRKN4llvm17MachineBasicBlockE.exit.thread ] ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.09.015.i, i64 44 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !305  ; 2 uses
  %i.y = and i32 %i.x, 12
  %i.z = icmp eq i32 %i.y, 0
  %i.aa = and i32 %i.x, 4
  %i.ab = icmp ne i32 %i.aa, 0
  %or.cond.i.i.i = or i1 %i.z, %i.ab
  br i1 %or.cond.i.i.i, label %.split.i, label %_ZNK4llvm12MachineInstr8isReturnENS0_9QueryTypeE.exit.i

.split.i:                                         ; preds = %.lr.ph.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.09.015.i, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !306
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !308
  %i.ag = and i64 %i.af, 32
  %.not13.i = icmp eq i64 %i.ag, 0
  br i1 %.not13.i, label %bb.d, label %_ZL9hasReturnRKN4llvm17MachineBasicBlockE.exit

_ZNK4llvm12MachineInstr8isReturnENS0_9QueryTypeE.exit.i: ; preds = %.lr.ph.i
  %i.ah = tail call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.09.015.i, i64 noundef 32, i32 noundef 1) #27
  br i1 %i.ah, label %_ZL9hasReturnRKN4llvm17MachineBasicBlockE.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm12MachineInstr8isReturnENS0_9QueryTypeE.exit.i, %.split.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.09.015.i) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.09.015.i, align 8
  %i.ai = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i: ; preds = %bb.d
  %i.aj = load i32, ptr %i.w, align 4, !tbaa !305
  %i.ak = and i32 %i.aj, 8
  %.not34.i.i.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not34.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.am, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i ], [ %.sroa.09.015.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !295 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 44
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !305
  %i.ap = and i32 %i.ao, 8
  %.not3.i.i.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not3.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i, !llvm.loop !3

_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i, %bb.d
  %.sroa.0.1.i.i.i.i = phi ptr [ %.sroa.09.015.i, %bb.d ], [ %.sroa.09.015.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i ], [ %i.am, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !295 ; 2 uses
  %.not.not.i = icmp eq ptr %i.ar, %i.p
  br i1 %.not.not.i, label %_ZL9hasReturnRKN4llvm17MachineBasicBlockE.exit, label %.lr.ph.i

_ZL9hasReturnRKN4llvm17MachineBasicBlockE.exit:   ; preds = %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i, %_ZNK4llvm12MachineInstr8isReturnENS0_9QueryTypeE.exit.i, %.split.i, %_ZL11hasTailCallRKN4llvm17MachineBasicBlockE.exit.thread, %_ZL11hasTailCallRKN4llvm17MachineBasicBlockE.exit
  %i.as = phi i1 [ true, %_ZL11hasTailCallRKN4llvm17MachineBasicBlockE.exit ], [ true, %_ZL11hasTailCallRKN4llvm17MachineBasicBlockE.exit.thread ], [ true, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i ], [ false, %_ZNK4llvm12MachineInstr8isReturnENS0_9QueryTypeE.exit.i ], [ false, %.split.i ] ; 2 uses
  %i.at = load ptr, ptr %2, align 8, !tbaa !497   ; 4 uses
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !498 ; 2 uses
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = sdiv exact i64 %i.ax, 12                ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.val65 = load ptr, ptr %i.ba, align 8          ; 2 uses
  %i.bb = icmp ne ptr %i.au, %i.at
  tail call void @llvm.assume(i1 %i.bb)
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.at, align 4, !tbaa !196 ; 4 uses
  %i.bc = add i32 %.sroa.0.0.copyload.i.i, -73
  %or.cond.i.i = icmp ult i32 %i.bc, -16
  br i1 %or.cond.i.i, label %_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZL9hasReturnRKN4llvm17MachineBasicBlockE.exit
  %i.bd = zext nneg i32 %.sroa.0.0.copyload.i.i to i64
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !294, !noalias !935
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %.val65, i64 %i.bh ; 2 uses
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !276, !noalias !935 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %i.bj, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit.i, label %_ZN4llvm16MCSubRegIteratorppEv.exit.preheader.i.i

_ZN4llvm16MCSubRegIteratorppEv.exit.preheader.i.i: ; preds = %bb.e
  %i.bk = zext i16 %i.bj to i32
  %i.bl = add nuw nsw i32 %.sroa.0.0.copyload.i.i, %i.bk
  br label %_ZN4llvm16MCSubRegIteratorppEv.exit.i.i

_ZN4llvm16MCSubRegIteratorppEv.exit.i.i:          ; preds = %_ZN4llvm16MCSubRegIteratorppEv.exit.i.i, %_ZN4llvm16MCSubRegIteratorppEv.exit.preheader.i.i
  %.sroa.013.018.i.i = phi i32 [ %spec.select15.i.i, %_ZN4llvm16MCSubRegIteratorppEv.exit.i.i ], [ 0, %_ZN4llvm16MCSubRegIteratorppEv.exit.preheader.i.i ]
  %.sroa.02.017.i.i = phi i32 [ %i.bp, %_ZN4llvm16MCSubRegIteratorppEv.exit.i.i ], [ %i.bl, %_ZN4llvm16MCSubRegIteratorppEv.exit.preheader.i.i ] ; 2 uses
  %.sroa.53.016.pn.i.i = phi ptr [ %.sroa.53.016.i.i, %_ZN4llvm16MCSubRegIteratorppEv.exit.i.i ], [ %i.bi, %_ZN4llvm16MCSubRegIteratorppEv.exit.preheader.i.i ]
  %.sroa.53.016.i.i = getelementptr inbounds nuw i8, ptr %.sroa.53.016.pn.i.i, i64 2 ; 2 uses
  %i.bm = and i32 %.sroa.02.017.i.i, 65535
  %spec.select15.i.i = tail call i32 @llvm.umax.i32(i32 %.sroa.013.018.i.i, i32 %i.bm) ; 2 uses
  %i.bn = load i16, ptr %.sroa.53.016.i.i, align 2, !tbaa !276 ; 2 uses
  %i.bo = zext i16 %i.bn to i32
  %i.bp = add i32 %.sroa.02.017.i.i, %i.bo
  %.not.i.i.i.i66 = icmp eq i16 %i.bn, 0
  br i1 %.not.i.i.i.i66, label %_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit.i, label %_ZN4llvm16MCSubRegIteratorppEv.exit.i.i

_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit.i: ; preds = %_ZN4llvm16MCSubRegIteratorppEv.exit.i.i, %bb.e, %_ZL9hasReturnRKN4llvm17MachineBasicBlockE.exit
  %.sroa.013.2.i.i = phi i32 [ %.sroa.0.0.copyload.i.i, %_ZL9hasReturnRKN4llvm17MachineBasicBlockE.exit ], [ 0, %bb.e ], [ %spec.select15.i.i, %_ZN4llvm16MCSubRegIteratorppEv.exit.i.i ] ; 2 uses
  %i.bq = and i64 %i.ay, 4294967294
  %.not.i = icmp eq i64 %i.bq, 0
  br i1 %.not.i, label %_ZL20getMaxCalleeSavedRegN4llvm8ArrayRefINS_15CalleeSavedInfoEEERKNS_18TargetRegisterInfoE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit.i
  %wide.trip.count.i = and i64 %i.ay, 4294967295
  br label %.lr.ph.i67

.lr.ph.i67:                                       ; preds = %_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit21.thread.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit21.thread.i ] ; 2 uses
  %.sroa.07.010.i = phi i32 [ %.sroa.013.2.i.i, %.lr.ph.preheader.i ], [ %.sroa.07.1.i, %_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit21.thread.i ] ; 2 uses
  %i.br = getelementptr inbounds nuw [12 x i8], ptr %i.at, i64 %indvars.iv.i
  %.sroa.0.0.copyload.i9.i = load i32, ptr %i.br, align 4, !tbaa !196 ; 4 uses
  %i.bs = add i32 %.sroa.0.0.copyload.i9.i, -73
  %or.cond.i10.i = icmp ult i32 %i.bs, -16
  br i1 %or.cond.i10.i, label %_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit21.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i67
  %i.bt = zext nneg i32 %.sroa.0.0.copyload.i9.i to i64
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !294, !noalias !936
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %.val65, i64 %i.bx ; 2 uses
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !276, !noalias !936 ; 2 uses
  %.not.i.i.i.i.i11.i = icmp eq i16 %i.bz, 0
  br i1 %.not.i.i.i.i.i11.i, label %_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit21.thread.i, label %_ZN4llvm16MCSubRegIteratorppEv.exit.preheader.i12.i

_ZN4llvm16MCSubRegIteratorppEv.exit.preheader.i12.i: ; preds = %bb.f
  %i.ca = zext i16 %i.bz to i32
  %i.cb = add nuw nsw i32 %.sroa.0.0.copyload.i9.i, %i.ca
  br label %_ZN4llvm16MCSubRegIteratorppEv.exit.i13.i

_ZN4llvm16MCSubRegIteratorppEv.exit.i13.i:        ; preds = %_ZN4llvm16MCSubRegIteratorppEv.exit.i13.i, %_ZN4llvm16MCSubRegIteratorppEv.exit.preheader.i12.i
  %.sroa.013.018.i14.i = phi i32 [ %spec.select15.i18.i, %_ZN4llvm16MCSubRegIteratorppEv.exit.i13.i ], [ 0, %_ZN4llvm16MCSubRegIteratorppEv.exit.preheader.i12.i ]
  %.sroa.02.017.i15.i = phi i32 [ %i.cf, %_ZN4llvm16MCSubRegIteratorppEv.exit.i13.i ], [ %i.cb, %_ZN4llvm16MCSubRegIteratorppEv.exit.preheader.i12.i ] ; 2 uses
  %.sroa.53.016.pn.i16.i = phi ptr [ %.sroa.53.016.i17.i, %_ZN4llvm16MCSubRegIteratorppEv.exit.i13.i ], [ %i.by, %_ZN4llvm16MCSubRegIteratorppEv.exit.preheader.i12.i ]
  %.sroa.53.016.i17.i = getelementptr inbounds nuw i8, ptr %.sroa.53.016.pn.i16.i, i64 2 ; 2 uses
  %i.cc = and i32 %.sroa.02.017.i15.i, 65535
  %spec.select15.i18.i = tail call i32 @llvm.umax.i32(i32 %.sroa.013.018.i14.i, i32 %i.cc) ; 2 uses
  %i.cd = load i16, ptr %.sroa.53.016.i17.i, align 2, !tbaa !276 ; 2 uses
  %i.ce = zext i16 %i.cd to i32
  %i.cf = add i32 %.sroa.02.017.i15.i, %i.ce
  %.not.i.i.i19.i = icmp eq i16 %i.cd, 0
  br i1 %.not.i.i.i19.i, label %_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit21.i, label %_ZN4llvm16MCSubRegIteratorppEv.exit.i13.i

_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit21.i: ; preds = %_ZN4llvm16MCSubRegIteratorppEv.exit.i13.i, %.lr.ph.i67
  %.sroa.013.2.i20.i = phi i32 [ %.sroa.0.0.copyload.i9.i, %.lr.ph.i67 ], [ %spec.select15.i18.i, %_ZN4llvm16MCSubRegIteratorppEv.exit.i13.i ]
  %spec.select.i = tail call i32 @llvm.umax.i32(i32 %.sroa.013.2.i20.i, i32 %.sroa.07.010.i)
  br label %_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit21.thread.i

_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit21.thread.i: ; preds = %_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit21.i, %bb.f
  %.sroa.07.1.i = phi i32 [ %.sroa.07.010.i, %bb.f ], [ %spec.select.i, %_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit21.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZL20getMaxCalleeSavedRegN4llvm8ArrayRefINS_15CalleeSavedInfoEEERKNS_18TargetRegisterInfoE.exit, label %.lr.ph.i67, !llvm.loop !6

_ZL20getMaxCalleeSavedRegN4llvm8ArrayRefINS_15CalleeSavedInfoEEERKNS_18TargetRegisterInfoE.exit: ; preds = %_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit21.thread.i, %_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit.i
  %.sroa.07.2.i = phi i32 [ %.sroa.013.2.i.i, %_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit.i ], [ %.sroa.07.1.i, %_ZL22getMax32BitSubRegisterN4llvm8RegisterERKNS_18TargetRegisterInfoEb.exit21.thread.i ]
  %spec.select = select i1 %i.as, ptr @__const._ZL19getSpillFunctionForN4llvm8RegisterE9SpillKindb.V4SpillFromMemoryTailcallFunctions, ptr @__const._ZL19getSpillFunctionForN4llvm8RegisterE9SpillKindb.V4SpillFromMemoryFunctions ; 6 uses
  switch i32 %.sroa.07.2.i, label %_ZL20getMaxCalleeSavedRegN4llvm8ArrayRefINS_15CalleeSavedInfoEEERKNS_18TargetRegisterInfoE.exit.thread [
    i32 135, label %_ZL19getSpillFunctionForN4llvm8RegisterE9SpillKindb.exit
    i32 137, label %bb.g
    i32 139, label %bb.h
    i32 141, label %bb.i
    i32 143, label %bb.j
    i32 145, label %bb.k
  ]

bb.g:                                             ; preds = %_ZL20getMaxCalleeSavedRegN4llvm8ArrayRefINS_15CalleeSavedInfoEEERKNS_18TargetRegisterInfoE.exit
  %7 = getelementptr inbounds nuw i8, ptr %spec.select, i64 8
  br label %_ZL19getSpillFunctionForN4llvm8RegisterE9SpillKindb.exit

bb.h:                                             ; preds = %_ZL20getMaxCalleeSavedRegN4llvm8ArrayRefINS_15CalleeSavedInfoEEERKNS_18TargetRegisterInfoE.exit
  %8 = getelementptr inbounds nuw i8, ptr %spec.select, i64 16
  br label %_ZL19getSpillFunctionForN4llvm8RegisterE9SpillKindb.exit

bb.i:                                             ; preds = %_ZL20getMaxCalleeSavedRegN4llvm8ArrayRefINS_15CalleeSavedInfoEEERKNS_18TargetRegisterInfoE.exit
  %9 = getelementptr inbounds nuw i8, ptr %spec.select, i64 24
  br label %_ZL19getSpillFunctionForN4llvm8RegisterE9SpillKindb.exit

bb.j:                                             ; preds = %_ZL20getMaxCalleeSavedRegN4llvm8ArrayRefINS_15CalleeSavedInfoEEERKNS_18TargetRegisterInfoE.exit
  %10 = getelementptr inbounds nuw i8, ptr %spec.select, i64 32
  br label %_ZL19getSpillFunctionForN4llvm8RegisterE9SpillKindb.exit

bb.k:                                             ; preds = %_ZL20getMaxCalleeSavedRegN4llvm8ArrayRefINS_15CalleeSavedInfoEEERKNS_18TargetRegisterInfoE.exit
  %11 = getelementptr inbounds nuw i8, ptr %spec.select, i64 40
  br label %_ZL19getSpillFunctionForN4llvm8RegisterE9SpillKindb.exit

_ZL20getMaxCalleeSavedRegN4llvm8ArrayRefINS_15CalleeSavedInfoEEERKNS_18TargetRegisterInfoE.exit.thread: ; preds = %_ZL20getMaxCalleeSavedRegN4llvm8ArrayRefINS_15CalleeSavedInfoEEERKNS_18TargetRegisterInfoE.exit
  unreachable

_ZL19getSpillFunctionForN4llvm8RegisterE9SpillKindb.exit: ; preds = %_ZL20getMaxCalleeSavedRegN4llvm8ArrayRefINS_15CalleeSavedInfoEEERKNS_18TargetRegisterInfoE.exit, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.09.in.i = phi ptr [ %11, %bb.k ], [ %7, %bb.g ], [ %8, %bb.h ], [ %9, %bb.i ], [ %10, %bb.j ], [ %spec.select, %_ZL20getMaxCalleeSavedRegN4llvm8ArrayRefINS_15CalleeSavedInfoEEERKNS_18TargetRegisterInfoE.exit ]
  %.09.i = load ptr, ptr %.09.in.i, align 8, !tbaa !50 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !373, !nonnull !43, !align !175
  %i.ci = tail call noundef zeroext i1 @_ZNK4llvm13TargetMachine21isPositionIndependentEv(ptr noundef nonnull align 8 dereferenceable(1728) %i.ch) #27 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.i, i64 348
  %i.ck = load i8, ptr %i.cj, align 4, !tbaa !455, !range !42, !noundef !43
  %i.cl = trunc nuw i8 %i.ck to i1
  %i.cm = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL21EnableSaveRestoreLong, i64 120), align 8, !range !42
  %i.cn = trunc nuw i8 %i.cm to i1
  %i.co = select i1 %i.cl, i1 true, i1 %i.cn      ; 2 uses
  %.not105 = icmp eq ptr %i.e, %i.p
  br i1 %.not105, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZL19getSpillFunctionForN4llvm8RegisterE9SpillKindb.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %.sroa.018.0.copyload = load ptr, ptr %i.cp, align 8, !tbaa !322
  br label %bb.n

bb.m:                                             ; preds = %_ZL19getSpillFunctionForN4llvm8RegisterE9SpillKindb.exit
  %i.cq = tail call ptr @_ZN4llvm17MachineBasicBlock12findDebugLocENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(360) %1, ptr nonnull %i.p) #27
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.018.0 = phi ptr [ %.sroa.018.0.copyload, %bb.l ], [ %i.cq, %bb.m ] ; 2 uses
  br i1 %i.as, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit79

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit: ; preds = %bb.n
  %.neg107 = select i1 %i.ci, i64 -2135, i64 -2134
  %.neg108 = select i1 %i.ci, i64 -2136, i64 -2133
  %.063.neg = select i1 %i.co, i64 %.neg107, i64 %.neg108
  %i.cr = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !324
  %i.ct = getelementptr inbounds [32 x i8], ptr %i.cs, i64 %.063.neg
  %i.cu = load ptr, ptr %i.f, align 8, !tbaa !313 ; 2 uses
  %i.cv = tail call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.cu, ptr noundef nonnull align 8 dereferenceable(32) %i.ct, ptr %.sroa.018.0, i1 noundef zeroext false) #27 ; 8 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.cw, ptr noundef %i.cv) #27
  %.0.copyload.i.i.i.i.i.i.i.i.i.i69 = load i64, ptr %i.e, align 8
  %i.cx = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i69, -8 ; 2 uses
  %i.cy = inttoptr i64 %i.cx to ptr
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store ptr %i.e, ptr %i.cz, align 8, !tbaa !295
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i = load i64, ptr %i.cv, align 8
  %i.da = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i, 7
  %i.db = or disjoint i64 %i.da, %i.cx
  store i64 %i.db, ptr %i.cv, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr %i.cv, ptr %i.dc, align 8, !tbaa !295
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.dd = ptrtoint ptr %i.cv to i64
  %i.de = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i, 7
  %i.df = or disjoint i64 %i.de, %i.dd
  store i64 %i.df, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.dg = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.dg, align 8, !tbaa !327, !alias.scope !937
  %i.dh = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %.09.i, ptr %i.dh, align 8, !tbaa !311, !alias.scope !937
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 0, ptr %i.di, align 4, !tbaa !311, !alias.scope !937
  %i.dj = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 0, ptr %i.dj, align 8, !tbaa !311, !alias.scope !937
  store i32 9, ptr %6, align 8, !alias.scope !937
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cv, ptr noundef nonnull align 8 dereferenceable(1065) %i.cu, ptr noundef nonnull align 8 dereferenceable(32) %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.o

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit79: ; preds = %bb.n
  %i.dk = tail call ptr @_ZN4llvm17MachineBasicBlock18getFirstTerminatorEv(ptr noundef nonnull align 8 dereferenceable(360) %1) #27 ; 5 uses
  %.neg = select i1 %i.ci, i64 -2139, i64 -2138
  %.neg106 = select i1 %i.ci, i64 -2140, i64 -2137
  %.062.neg = select i1 %i.co, i64 %.neg, i64 %.neg106
  %i.dl = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !324
  %i.dn = getelementptr inbounds [32 x i8], ptr %i.dm, i64 %.062.neg
  %i.do = load ptr, ptr %i.f, align 8, !tbaa !313 ; 2 uses
  %i.dp = tail call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.do, ptr noundef nonnull align 8 dereferenceable(32) %i.dn, ptr %.sroa.018.0, i1 noundef zeroext false) #27 ; 9 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.dq, ptr noundef %i.dp) #27
  %.0.copyload.i.i.i.i.i.i.i.i.i.i71 = load i64, ptr %i.dk, align 8
  %i.dr = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i71, -8 ; 2 uses
  %i.ds = inttoptr i64 %i.dr to ptr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store ptr %i.dk, ptr %i.dt, align 8, !tbaa !295
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i72 = load i64, ptr %i.dp, align 8
  %i.du = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i72, 7
  %i.dv = or disjoint i64 %i.du, %i.dr
  store i64 %i.dv, ptr %i.dp, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store ptr %i.dp, ptr %i.dw, align 8, !tbaa !295
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i73 = load i64, ptr %i.dk, align 8
  %i.dx = ptrtoint ptr %i.dp to i64
  %i.dy = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i73, 7
  %i.dz = or disjoint i64 %i.dy, %i.dx
  store i64 %i.dz, ptr %i.dk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.ea, align 8, !tbaa !327, !alias.scope !938
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %.09.i, ptr %i.eb, align 8, !tbaa !311, !alias.scope !938
  %i.ec = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.ec, align 4, !tbaa !311, !alias.scope !938
  %i.ed = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 0, ptr %i.ed, align 8, !tbaa !311, !alias.scope !938
  store i32 9, ptr %5, align 8, !alias.scope !938
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.dp, ptr noundef nonnull align 8 dereferenceable(1065) %i.do, ptr noundef nonnull align 8 dereferenceable(32) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @_ZN4llvm12MachineInstr15copyImplicitOpsERNS_15MachineFunctionERKS0_(ptr noundef nonnull align 8 dereferenceable(80) %i.dp, ptr noundef nonnull align 8 dereferenceable(1065) %i.g, ptr noundef nonnull align 8 dereferenceable(80) %i.dk) #27
  br label %bb.o

bb.o:                                             ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit79, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit
  %.064 = phi ptr [ %i.cv, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit ], [ %i.dp, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit79 ]
  %i.ee = load ptr, ptr %2, align 8, !tbaa !366   ; 2 uses
  %i.ef = load ptr, ptr %i.b, align 8, !tbaa !366 ; 2 uses
  %.not10.i = icmp eq ptr %i.ee, %i.ef
  br i1 %.not10.i, label %_ZNK4llvm20HexagonFrameLowering34addCalleeSaveRegistersAsImpOperandEPNS_12MachineInstrERKSt6vectorINS_15CalleeSavedInfoESaIS4_EEbb.exit, label %.lr.ph.i80

.lr.ph.i80:                                       ; preds = %bb.o
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.i80
  %.sroa.07.011.i = phi ptr [ %i.ee, %.lr.ph.i80 ], [ %i.ej, %bb.p ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %.sroa.0.0.copyload.i.i81 = load i32, ptr %.sroa.07.011.i, align 4, !tbaa !196
  store ptr null, ptr %i.eg, align 8, !tbaa !327, !alias.scope !939
  store i32 %.sroa.0.0.copyload.i.i81, ptr %i.eh, align 4, !tbaa !311, !alias.scope !939
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ei, i8 0, i64 16, i1 false), !alias.scope !939
  store i32 50331648, ptr %4, align 8, !alias.scope !939
  call void @_ZN4llvm12MachineInstr10addOperandERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %.064, ptr noundef nonnull align 8 dereferenceable(32) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.07.011.i, i64 12 ; 2 uses
  %.not.i82 = icmp eq ptr %i.ej, %i.ef
  br i1 %.not.i82, label %_ZNK4llvm20HexagonFrameLowering34addCalleeSaveRegistersAsImpOperandEPNS_12MachineInstrERKSt6vectorINS_15CalleeSavedInfoESaIS4_EEbb.exit, label %bb.p

bb.q:                                             ; preds = %bb.b
  %i.ek = load ptr, ptr %2, align 8, !tbaa !366   ; 2 uses
  %i.el = load ptr, ptr %i.b, align 8, !tbaa !366 ; 2 uses
  %.not110 = icmp eq ptr %i.ek, %i.el
  br i1 %.not110, label %_ZNK4llvm20HexagonFrameLowering34addCalleeSaveRegistersAsImpOperandEPNS_12MachineInstrERKSt6vectorINS_15CalleeSavedInfoESaIS4_EEbb.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.q, %.lr.ph
  %.sroa.085.0111 = phi ptr [ %i.ev, %.lr.ph ], [ %i.ek, %bb.q ] ; 3 uses
  %.sroa.0.0.copyload.i = load i32, ptr %.sroa.085.0111, align 4, !tbaa !196 ; 2 uses
  %i.em = load ptr, ptr %3, align 8, !tbaa !34
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 32
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = tail call noundef ptr %i.eo(ptr noundef nonnull align 8 dereferenceable(316) %3, i32 %.sroa.0.0.copyload.i) #27
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.085.0111, i64 4
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !311
  %i.es = load ptr, ptr %i.m, align 8, !tbaa !34
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 512
  %i.eu = load ptr, ptr %i.et, align 8
  tail call void %i.eu(ptr noundef nonnull align 8 dereferenceable(440) %i.m, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr %i.e, i32 %.sroa.0.0.copyload.i, i32 noundef %i.er, ptr noundef %i.ep, i32 0, i32 noundef 0, i32 noundef 0) #27
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.085.0111, i64 12 ; 2 uses
  %.not = icmp eq ptr %i.ev, %i.el
  br i1 %.not, label %_ZNK4llvm20HexagonFrameLowering34addCalleeSaveRegistersAsImpOperandEPNS_12MachineInstrERKSt6vectorINS_15CalleeSavedInfoESaIS4_EEbb.exit, label %.lr.ph

_ZNK4llvm20HexagonFrameLowering34addCalleeSaveRegistersAsImpOperandEPNS_12MachineInstrERKSt6vectorINS_15CalleeSavedInfoESaIS4_EEbb.exit: ; preds = %.lr.ph, %bb.p, %bb.q, %bb.o, %bb.a
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm20HexagonFrameLowering21insertEpilogueInBlockERNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(360) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %3 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %4 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %6 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %7 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %8 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %9 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %10 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %11 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %12 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %13 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %14 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %15 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %16 = alloca %"class.llvm::MachineInstrBundleIterator", align 8 ; 5 uses
  %17 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %18 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %19 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %20 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %21 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !313  ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !174, !nonnull !43, !align !175 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 128
end_hunk_1
